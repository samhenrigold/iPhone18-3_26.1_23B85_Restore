unint64_t sub_10013B084(char *a1, unint64_t a2, char *a3, unint64_t a4, char *__b, int a6)
{
  result = 0;
  if (!HIDWORD(a4) && (a6 - 32) >= 0xFFFFFFE1)
  {
    if ((a2 & 0x8000000000000000) != 0 || a2 < 4)
    {
      return 0;
    }

    else
    {
      *a1 = a4;
      v9 = a1 + 4;
      v80 = a1;
      if (a4)
      {
        v10 = __b;
        v12 = __b + 279520;
        v13 = (__b + 213488);
        v82 = &a1[a2];
        v14 = __b + 0x20000;
        v83 = a6 - 1;
        v84 = a4;
        __dst = __b + 147456;
        v81 = a4 + a3;
        v15 = a4;
        v16 = a3;
        v91 = __b + 279520;
        v90 = __b + 0x10000;
        while (1)
        {
          v87 = v15;
          if (v15 >= 0x1000)
          {
            v17 = 4096;
          }

          else
          {
            v17 = v15;
          }

          v18 = *(v12 + 1);
          if (v18 > 0x7F || (*(v12 + 2) ^ v18) != 0xE11CCA)
          {
            v18 = 0;
            *(v12 + 1) = 0;
          }

          v88 = v18;
          __src = v16;
          v19 = v16 - a3;
          if (((v16 - a3) & 0x7FFFFFFF) == 0)
          {
            result = memset(v10, (v19 >> 24) - 2, 0x10000uLL);
          }

          v20 = (v17 + v19);
          if (v20 > v19)
          {
            v21 = v19;
            v22 = v81 - v16;
            do
            {
              v23 = &v14[4 * (v21 & 0xFFF)];
              *v23 = 0;
              v24 = (v84 - v21);
              if (v24 >= 4)
              {
                v25 = *&v10[4 * ((-1640531535 * *&a3[v21]) >> 18)];
                v26 = v21 - v25;
                v27 = (v21 - v25) >> 14;
                if (!v27)
                {
                  v28 = 64;
                  while (v28)
                  {
                    result = 0;
                    --v28;
                    v29 = 1;
                    while (1)
                    {
                      v30 = v29;
                      if (result + 16 > v24)
                      {
                        break;
                      }

                      v31 = veorq_s8(*&a3[v25 + result], *&a3[v21 + result]);
                      if (*&v31 != 0)
                      {
                        v33 = (__clz(__rbit64(v31.u64[1])) >> 3) + 8;
                        v34 = __clz(__rbit64(v31.u64[0])) >> 3;
                        if (v31.i64[0])
                        {
                          v33 = v34;
                        }

                        result = v33 + result;
                        if (result >= 0x1F)
                        {
                          LODWORD(v32) = 31;
                        }

                        else
                        {
                          LODWORD(v32) = result;
                        }

                        goto LABEL_40;
                      }

                      v29 = 0;
                      result = 16;
                      if ((v30 & 1) == 0)
                      {
LABEL_33:
                        LODWORD(v32) = 31;
                        goto LABEL_40;
                      }
                    }

                    if (result <= v22)
                    {
                      v32 = v22;
                    }

                    else
                    {
                      v32 = result;
                    }

                    while (v32 != result)
                    {
                      if (a3[(v21 + result)] != a3[v25 + result])
                      {
                        LODWORD(v32) = result;
                        break;
                      }

                      if (++result == 31)
                      {
                        goto LABEL_33;
                      }
                    }

LABEL_40:
                    if (v32 > v27)
                    {
                      *v23 = v32;
                      *(v23 + 1) = v26;
                      if (v32 == 31)
                      {
                        v27 = 31;
                        break;
                      }

                      v27 = v32;
                    }

                    v25 = *&v90[4 * (v25 & 0x3FFF)];
                    v26 = v21 - v25;
                    if (v21 - v25 >= 0x4000)
                    {
                      break;
                    }
                  }

                  if (v20 - v21 < v27)
                  {
                    *v23 = v17 + v19 - v21;
                  }
                }

                if (v21 >= 0x1F)
                {
                  v35 = (-1640531535 * *&a3[(v21 - 31)]) >> 18;
                  *&v90[4 * ((v21 - 31) & 0x3FFF)] = *&v10[4 * v35];
                  *&v10[4 * v35] = v21 - 31;
                }
              }

              ++v21;
              --v22;
            }

            while (v21 != v20);
          }

          v36 = 0;
          v37 = 128;
          v38 = v88;
LABEL_52:
          v39 = v38;
          while (v36 < v37)
          {
            result = memset(v13, 255, (16 * v17 + 496));
            v40 = 0;
            v41 = 0;
            *v13 = -0.0;
            *(v13 + 4) = 7936;
            while (1)
            {
              v42 = &v13[2 * v41];
              v43 = *(v42 + 1);
              if (v40 > v43)
              {
                *v42 = v43;
                *(v42 + 8) = *(v42 + 9);
                *(v42 + 10) = 0;
                *(v42 + 6) = 0;
                v40 = v43;
              }

              if (v41 == v17)
              {
                break;
              }

              v44 = *(v42 + 9);
              if (v44 != 31 && *(v42 + 5) > v43 + 4)
              {
                *(v42 + 5) = v43 + 4;
                *(v42 + 25) = v44 + 1;
              }

              v45 = v39 + 136 + v40;
              v46 = 31;
              do
              {
                v47 = &v42[2 * v46];
                if (*(v47 + 1) <= v45)
                {
                  break;
                }

                *(v47 + 1) = v45;
                *(v47 + 9) = v46;
                v45 -= 4;
                --v46;
              }

              while (v46);
              v48 = &v14[4 * v41];
              v49 = v43 + v39;
              v50 = *v48;
              v51 = &v42[2 * v50];
              result = *v51;
              if (result > v49)
              {
                *v51 = v49;
                *(v51 + 8) = v44;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
                v40 = *v42;
                result = v49;
              }

              v52 = v39 + 12 + v40;
              if (result > v52)
              {
                *v51 = v52;
                *(v51 + 8) = 0;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
              }

              ++v41;
              v40 = LODWORD(v13[2 * v41]);
            }

            v53 = 0;
            v54 = 0;
            v55 = v17;
            do
            {
              if (v55 > 0x1000)
              {
                goto LABEL_91;
              }

              v56 = &v13[2 * v55];
              v57 = *(v56 + 8);
              v54 += v57 + 3;
              v53 += a6;
              v55 -= v57 + *(v56 + 10);
            }

            while (v55);
            if (v53 <= v83 + v17)
            {
              result = memcpy(__dst, v13, (16 * v17 + 16));
              *v91 = v54;
              goto LABEL_77;
            }

            v36 = v39 + 1;
            if (v39 == *(v91 + 1))
            {
              v39 = (2 * v39) | 1u;
              if (v36 + v37 > 2 * v39)
              {
                continue;
              }
            }

            v39 = v37;
LABEL_77:
            v38 = (v39 + v36) >> 1;
            v37 = v39;
            goto LABEL_52;
          }

          *(v91 + 1) = v36;
          *(v91 + 2) = v36 ^ 0xE11CCA;
          if (v36 == 128)
          {
            break;
          }

          v58 = *v91;
          v59 = v82 - v9;
          v10 = __b;
          if (v58 >= v17 + 2)
          {
            if (v59 < (v17 + 2))
            {
              return 0;
            }

            *v9 = 0;
            v79 = v9 + 2;
            v78 = __src;
            result = memcpy(v79, __src, v17);
            v12 = v91;
            v9 = &v79[v17];
          }

          else
          {
            if (v59 < v58 + 1)
            {
              return 0;
            }

            v60 = &__dst[16 * v17];
            v61 = *v60;
            v62 = v60[8];
            v63 = v60[9];
            v64 = v60[10];
            v92 = *(v60 + 11);
            v93 = v60[15];
            v65 = v17;
            do
            {
              v65 -= v64 + v62;
              v66 = &__dst[16 * v65];
              v67 = *v66;
              v68 = v66[8];
              v69 = v66[9];
              v70 = v66[10];
              v71 = *(v66 + 11);
              v72 = v66[15];
              *v66 = v61;
              v66[8] = v62;
              v66[9] = v63;
              v66[10] = v64;
              *(v66 + 11) = v92;
              v66[15] = v93;
              v93 = v72;
              v92 = v71;
              v64 = v70;
              v63 = v69;
              v62 = v68;
              v61 = v67;
            }

            while (v65);
            v73 = 0;
            do
            {
              v74 = &__dst[16 * v73];
              v75 = v74[8];
              *v9 = v75 + 32 * v74[10] + (*(v74 + 6) << 10);
              v76 = v9 + 3;
              result = memcpy(v76, &__src[v73], v75);
              v77 = v74[8];
              v9 = &v76[v77];
              v73 += v77 + v74[10];
            }

            while (v73 < v17);
            v12 = v91;
            v78 = __src;
            v10 = __b;
          }

          v16 = &v78[v17];
          v15 = v87 - v17;
          if (v87 == v17)
          {
            return v9 - v80;
          }
        }

LABEL_91:
        __break(1u);
      }

      else
      {
        return v9 - v80;
      }
    }
  }

  return result;
}

uint64_t lzfse_decode_buffer_output_size(char *__src, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = __src;
    v3 = 0;
    v4 = &__src[a2];
    do
    {
      v5 = (v2 + 4);
      if (v2 + 4 > v4)
      {
        return 0;
      }

      v6 = *v2;
      if (*v2 > 846755425)
      {
        if (v6 == 846755426)
        {
          goto LABEL_13;
        }

        if (v6 != 1853388386)
        {
          return 0;
        }

        if (v2 + 12 > v4)
        {
          return 0;
        }

        v7 = *(v2 + 2);
        if (&v2[v7 + 12] > v4)
        {
          return 0;
        }

        v8 = *v5;
        v9 = v7 + 12;
      }

      else
      {
        if (v6 != 762869346)
        {
          if (v6 != 829978210)
          {
            if (v6 == 611874402)
            {
              return v3;
            }

            return 0;
          }

LABEL_13:
          memset(v13, 0, 512);
          if (v6 == 846755426)
          {
            if (v2 + 32 > v4)
            {
              return 0;
            }

            v10 = *(v2 + 3);
            if ((v10 & 0xFFFFFFE0) == 0 || &v2[v10] > v4 || sub_10013B8F8(v13, v2, v4))
            {
              return 0;
            }

            v11 = v10;
          }

          else
          {
            if (v2 + 772 > v4)
            {
              return 0;
            }

            memcpy(v13, v2, 0x304uLL);
            v11 = 772;
          }

          if (&v2[v11 + DWORD2(v13[0])] > v4)
          {
            return 0;
          }

          v8 = DWORD1(v13[0]);
          v9 = v11 + DWORD2(v13[0]);
          goto LABEL_26;
        }

        if (v2 + 8 > v4)
        {
          return 0;
        }

        v8 = *v5;
        if (&v2[v8 + 8] > v4)
        {
          return 0;
        }

        v9 = v8 + 8;
      }

LABEL_26:
      v2 += v9;
      v3 += v8;
    }

    while (v2 < v4);
  }

  return 0;
}

uint64_t sub_10013B8F8(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  bzero(a1, 0x304uLL);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 4);
  *a1 = 829978210;
  a1[1] = v8;
  v9 = v7 >> 10;
  v10 = v7 >> 20;
  v11 = v7 >> 30;
  v12 = (v7 >> 40) & 0xFFFFF;
  v13 = (v7 >> 60) & 7;
  LOWORD(v14) = v7;
  v15 = *(a2 + 24);
  WORD2(v14) = v10;
  v16 = (v6 >> 20) & 0xFFFFF;
  LOWORD(v14) = v14 & 0x3FF;
  WORD1(v14) = v9 & 0x3FF;
  WORD2(v14) &= 0x3FFu;
  HIWORD(v14) = v11 & 0x3FF;
  *(a1 + 4) = v14;
  a1[4] = (v6 >> 40) & 0xFFFFF;
  a1[5] = v16;
  a1[6] = v12;
  a1[7] = ((v6 >> 60) & 7) - 7;
  a1[10] = v13 - 7;
  *(a1 + 22) = WORD2(v15) & 0x3FF;
  *(a1 + 23) = (v15 >> 42) & 0x3FF;
  *(a1 + 24) = (v15 >> 52) & 0x3FF;
  a1[2] = v12 + v16;
  a1[3] = v6 & 0xFFFFF;
  if (v15 == 32)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (v15 >= 0x20)
  {
    v18 = a2 + v15;
    if (v18 <= a3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = (a2 + 32);
      do
      {
        if (v22 >= v18 || v20 > 24)
        {
          v23 = v20;
        }

        else
        {
          do
          {
            v23 = v20 + 8;
            v24 = *v22++;
            v21 |= v24 << v20;
            if (v22 >= v18)
            {
              break;
            }

            v25 = v20 < 17;
            v20 += 8;
          }

          while (v25);
        }

        v26 = byte_1003E27A4[v21 & 0x1F];
        if (v26 == 14)
        {
          v27 = ((v21 >> 4) & 0x3FF) + 24;
        }

        else if (v26 == 8)
        {
          LOWORD(v27) = (v21 >> 4) + 8;
        }

        else
        {
          LOWORD(v27) = byte_1003E27C4[v21 & 0x1F];
        }

        v28 = v26;
        *(a1 + v19 + 25) = v27;
        v20 = v23 - v26;
        if (v23 < v28)
        {
          return 0xFFFFFFFFLL;
        }

        v21 >>= v28;
        ++v19;
      }

      while (v19 != 360);
      v30 = v20 > 7 || v22 != v18;
      return (v30 << 31 >> 31);
    }
  }

  return result;
}

char *lzfse_decode_buffer_iboot(char *a1, uint64_t a2, char *a3, uint64_t a4, char **a5)
{
  bzero(a5 + 7, 0x1F60uLL);
  result = 0;
  *a5 = a3;
  a5[1] = a3;
  v16 = &a3[a4];
  a5[3] = a1;
  v196 = a5 + 3;
  a5[2] = &a3[a4];
  a5[5] = a1;
  a5[6] = 0;
  a5[4] = &a1[a2];
  if ((a1 & 3) != 0 || ((a1 + a2) & 3) != 0 || a4 < 4)
  {
    return result;
  }

  v17 = a3 + 4;
  v18 = a5 + 110;
  v19 = a5 + 150;
  v20 = a5 + 190;
  v21 = a5 + 318;
  v22 = a5 + 106;
  v195 = a5 + 490;
  v194 = a5 + 1006;
  v193 = a5 + 1002;
  while (1)
  {
    result = 0;
    v23 = *a3;
    *(a5 + 14) = *a3;
    if (v23 <= 846755425)
    {
      break;
    }

    if (v23 == 846755426)
    {
      goto LABEL_13;
    }

    if (v23 != 1853388386)
    {
      return result;
    }

    if ((sub_10013C684(a5) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = *a5;
LABEL_131:
    result = 0;
    v16 = a5[2];
    if (a3 < v16)
    {
      v17 = a3 + 4;
      if (a3 + 4 <= v16)
      {
        continue;
      }
    }

    return result;
  }

  if (v23 == 762869346)
  {
    v114 = (a3 + 8);
    if (a3 + 8 > v16)
    {
      return 0;
    }

    v115 = *v17;
    if (&v114[v115] > v16 || (sub_10013C850(v196, v115, v114, v10, v11, v12, v13, v14) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = &(*a5)[v115 + 8];
    goto LABEL_130;
  }

  if (v23 != 829978210)
  {
    if (v23 == 611874402)
    {
      *a5 = v17;
      if (*(a5 + 13))
      {
        v187 = a5[5];
        *v187 = *(a5 + 12);
        v188 = *(a5 + 13);
      }

      else
      {
        v188 = 0;
        v187 = a5[5];
      }

      return (&v187[v188] - *v196);
    }

    return result;
  }

LABEL_13:
  *(a5 + 208) = 0;
  if (v23 == 846755426)
  {
    if (a3 + 32 > v16)
    {
      return 0;
    }

    result = 0;
    v24 = *(a3 + 3);
    *(a5 + 208) = v24;
    if (v24 < 0x20 || &a3[v24] > v16)
    {
      return result;
    }

    if (sub_10013B8F8(a5 + 15, a3, v16))
    {
      return 0;
    }
  }

  else
  {
    if (a3 + 772 > v16)
    {
      return 0;
    }

    memcpy(a5 + 60, a3, 0x304uLL);
    *(a5 + 208) = 772;
  }

  v25 = 0;
  for (i = 110; i != 150; i += 2)
  {
    v25 += *(a5 + i);
  }

  v27 = 0;
  v28 = 150;
  v10 = 512;
  v11 = byte_1003E2664;
  v12 = dword_1003E26A4;
  v13 = byte_1003E2600;
  v14 = dword_1003E2614;
  do
  {
    v27 += *(a5 + v28);
    v28 += 2;
  }

  while (v28 != 190);
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  do
  {
    v33 = *(a5 + v28);
    v34 = vmovl_u16(*v33.i8);
    v35 = vmovl_high_u16(v33);
    v32 = vaddw_high_u32(v32, v35);
    v31 = vaddw_u32(v31, *v35.i8);
    v30 = vaddw_high_u32(v30, v34);
    v29 = vaddw_u32(v29, *v34.i8);
    v28 += 16;
  }

  while (v28 != 318);
  v36 = vaddvq_s64(vaddq_s64(vaddq_s64(v29, v31), vaddq_s64(v30, v32)));
  v37 = 0uLL;
  v38 = 318;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  do
  {
    v42 = *(a5 + v38);
    v43 = vmovl_u16(*v42.i8);
    v44 = vmovl_high_u16(v42);
    v41 = vaddw_high_u32(v41, v44);
    v40 = vaddw_u32(v40, *v44.i8);
    v39 = vaddw_high_u32(v39, v43);
    v37 = vaddw_u32(v37, *v43.i8);
    v38 += 16;
  }

  while (v38 != 830);
  v45 = vbicq_s8(xmmword_1003E27F0, vmovl_s16(vcgt_u16(0x400040004000400, *(a5 + 92))));
  v46 = vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
  v47 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v37, v40), vaddq_s64(v39, v41))) > 0x400) << 13) | ((v36 > 0x100) << 12);
  v48 = ((*(a5 + 54) > 0xFFu) << 9) | ((*(a5 + 53) > 0x3Fu) << 8) | ((v27 > 0x40) << 11) | ((v25 > 0x40) << 10);
  if (*(a5 + 15) == 829978210)
  {
    v49 = v47;
  }

  else
  {
    v49 = v47 + 1;
  }

  if (v46.i32[0] | v46.i32[1] | (2 * (*(a5 + 18) > 0x9C40u)) | ((*(a5 + 52) > 0x3Fu) << 7) | (4 * (*(a5 + 19) > 0x2710u)) | v48 | v49 || &(*a5)[*(a5 + 208) + *(a5 + 17)] > a5[2])
  {
    return 0;
  }

  v192 = *(a5 + 17);
  v50 = 0;
  v51 = 0;
  v52 = a5 + 490;
  do
  {
    v53 = *&v21[2 * v50];
    if (*&v21[2 * v50])
    {
      v51 += v53;
      if (v51 > 1024)
      {
        return 0;
      }

      v54 = 0;
      v55 = __clz(v53);
      v56 = v55 - 21;
      v57 = 0x800u >> (v55 - 21);
      v58 = v57 - v53;
      v59 = v55 - 22;
      v60 = v53 - v57;
      do
      {
        v61 = (v60 + v54) << v59;
        if (v54 < v58)
        {
          v62 = v56;
        }

        else
        {
          v62 = v59;
        }

        if (v54 < v58)
        {
          LOWORD(v61) = ((v53 + v54) << v56) - 1024;
        }

        *v52 = v62;
        *(v52 + 1) = v50;
        *(v52 + 1) = v61;
        v52 = (v52 + 4);
        ++v54;
      }

      while (v53 != v54);
    }

    ++v50;
  }

  while (v50 != 256);
  v63 = 0;
  v64 = v22;
  do
  {
    v65 = *&v18[2 * v63];
    if (*&v18[2 * v63])
    {
      v66 = 0;
      v67 = __clz(v65);
      v68 = v67 - 25;
      v69 = 0x80u >> (v67 - 25);
      v70 = v69 - v65;
      v71 = byte_1003E259C[v63];
      v72 = dword_1003E25B0[v63];
      v73 = v67 - 26;
      v74 = v65 - v69;
      do
      {
        v75 = (v74 + v66) << v73;
        if (v66 < v70)
        {
          v76 = v68;
        }

        else
        {
          v76 = v73;
        }

        if (v66 < v70)
        {
          LOWORD(v75) = ((v65 + v66) << v68) - 64;
        }

        *v64 = v71 + v76;
        *(v64 + 1) = v71;
        *(v64 + 1) = v75;
        *(v64++ + 1) = v72;
        ++v66;
      }

      while (v65 != v66);
    }

    ++v63;
  }

  while (v63 != 20);
  v77 = 0;
  v78 = a5 + 170;
  do
  {
    v79 = *&v19[2 * v77];
    if (*&v19[2 * v77])
    {
      v80 = 0;
      v81 = __clz(v79);
      v82 = v81 - 25;
      v83 = 0x80u >> (v81 - 25);
      v84 = v83 - v79;
      v85 = byte_1003E2600[v77];
      v86 = dword_1003E2614[v77];
      v87 = v81 - 26;
      v88 = v79 - v83;
      do
      {
        v89 = (v88 + v80) << v87;
        if (v80 < v84)
        {
          v90 = v82;
        }

        else
        {
          v90 = v87;
        }

        if (v80 < v84)
        {
          LOWORD(v89) = ((v79 + v80) << v82) - 64;
        }

        *v78 = v85 + v90;
        *(v78 + 1) = v85;
        *(v78 + 1) = v89;
        *(v78++ + 1) = v86;
        ++v80;
      }

      while (v79 != v80);
    }

    ++v77;
  }

  while (v77 != 20);
  v91 = 0;
  v92 = a5 + 234;
  do
  {
    v93 = *&v20[2 * v91];
    if (*&v20[2 * v91])
    {
      v94 = 0;
      v95 = __clz(v93);
      v96 = v95 - 23;
      v97 = 0x200u >> (v95 - 23);
      v98 = v97 - v93;
      v99 = byte_1003E2664[v91];
      v100 = dword_1003E26A4[v91];
      v101 = v95 - 24;
      v102 = v93 - v97;
      do
      {
        v103 = (v102 + v94) << v101;
        if (v94 < v98)
        {
          v104 = v96;
        }

        else
        {
          v104 = v101;
        }

        if (v94 < v98)
        {
          LOWORD(v103) = ((v93 + v94) << v96) - 256;
        }

        *v92 = v99 + v104;
        *(v92 + 1) = v99;
        *(v92 + 1) = v103;
        *(v92++ + 1) = v100;
        ++v94;
      }

      while (v93 != v94);
    }

    ++v91;
  }

  while (v91 != 64);
  *(a5 + 210) = *(a5 + 18);
  v105 = *a5;
  v106 = *(a5 + 208);
  v107 = &(*a5)[v106 + *(a5 + 20)];
  a5[1008] = v107;
  v108 = a5[2];
  if (v107 > v108)
  {
    return 0;
  }

  a5[1010] = 0;
  v109 = *(a5 + 92);
  a5[1009] = v109;
  v110 = *(a5 + 22);
  v111 = a5[1];
  if (v110)
  {
    if (v107 < v111 + 8)
    {
      return 0;
    }

    a5[1008] = v107 - 8;
    v112 = *(v107 - 1);
    a5[1006] = v112;
    v113 = v110 + 64;
    *(a5 + 2014) = v110 + 64;
    if (v110 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v107 < v111 + 7)
    {
      return 0;
    }

    a5[1008] = v107 - 7;
    v116 = *(v107 - 7);
    *(a5 + 8051) = *(v107 - 1);
    *v194 = v116;
    v112 = a5[1006] & 0xFFFFFFFFFFFFFFLL;
    a5[1006] = v112;
    v113 = 56;
    *(a5 + 2014) = 56;
  }

  v118 = v112 >> v113 == 0;
  v117 = vaddv_s16(vand_s8(vcgt_u16(v109, 0xFC00FC00FC00FC00), 0x8000400020001)) & 0xF;
  v118 = v118 && v117 == 0;
  if (!v118)
  {
    return 0;
  }

  v119 = *(a5 + 19);
  *(a5 + 209) = v119;
  v120 = &v107[*(a5 + 21)];
  a5[1004] = v120;
  if (v120 > v108)
  {
    return 0;
  }

  v121 = *(a5 + 52);
  *(a5 + 4020) = v121;
  v122 = *(a5 + 53);
  *(a5 + 4021) = v122;
  v123 = *(a5 + 54);
  *(a5 + 4022) = v123;
  v124 = *(a5 + 25);
  if (v124)
  {
    if (v120 < v111 + 8)
    {
      return 0;
    }

    a5[1004] = v120 - 8;
    v125 = *(v120 - 1);
    a5[1002] = v125;
    v126 = v124 + 64;
    *(a5 + 2006) = v124 + 64;
    if (v124 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v120 < v111 + 7)
    {
      return 0;
    }

    a5[1004] = v120 - 7;
    v127 = *(v120 - 7);
    *(a5 + 8019) = *(v120 - 1);
    *v193 = v127;
    v125 = a5[1002] & 0xFFFFFFFFFFFFFFLL;
    a5[1002] = v125;
    v126 = 56;
    *(a5 + 2006) = 56;
  }

  result = 0;
  if (v125 >> v126)
  {
    return result;
  }

  if (v121 > 0x3F)
  {
    return result;
  }

  if (v122 > 0x3F)
  {
    return result;
  }

  v128 = __OFSUB__(v123, 255);
  if (v123 > 0xFF)
  {
    return result;
  }

  if (!v119)
  {
LABEL_129:
    a3 = (v105 + (v106 + v192));
LABEL_130:
    *a5 = a3;
    goto LABEL_131;
  }

  v129 = 0;
  v130 = 0;
  v189 = v22;
  while (1)
  {
    v131 = *(a5 + 2006);
    v132 = 63 - v131;
    v133 = (63 - v131) & 0xFFFFFFF8;
    v191 = v129;
    if ((v132 < 0) ^ v128 | ((v132 & 0xFFFFFFF8) == 0))
    {
      v135 = *v193;
    }

    else
    {
      v134 = &a5[1004][-(v132 >> 3)];
      if (v134 < a5[1])
      {
        return 0;
      }

      a5[1004] = v134;
      v135 = (qword_1003E2808[v133] & *v134 | (a5[1002] << v133));
      a5[1002] = v135;
      v131 += v133;
      *(a5 + 2006) = v131;
    }

    result = 0;
    v136 = &v22[*(a5 + 4020)];
    v137 = *v136;
    v138 = *(v136 + 1);
    v139 = *(v136 + 1);
    v140 = *(v136 + 1);
    v141 = v131 - v137;
    *(a5 + 2006) = v141;
    v142 = v135 >> v141;
    v143 = qword_1003E2808[v141] & v135;
    a5[1002] = v143;
    v144 = v139 + ((v135 >> v141) >> v138);
    v145 = v144;
    *(a5 + 4020) = v144;
    v146 = qword_1003E2808[v138];
    v147 = &a5[*(a5 + 4021) + 170];
    v148 = *v147;
    v149 = *(v147 + 1);
    v150 = *(v147 + 1);
    v190 = *(v147 + 1);
    LODWORD(v147) = v141 - v148;
    *(a5 + 2006) = v141 - v148;
    v151 = v143 >> (v141 - v148);
    v152 = qword_1003E2808[v141 - v148] & v143;
    a5[1002] = v152;
    v153 = v150 + (v151 >> v149);
    *(a5 + 4021) = v150 + (v151 >> v149);
    v154 = qword_1003E2808[v149];
    v155 = &a5[*(a5 + 4022) + 234];
    v156 = *(v155 + 1);
    LODWORD(v147) = v147 - *v155;
    *(a5 + 2006) = v147;
    v157 = v152 >> v147;
    v158 = (qword_1003E2808[v147] & v152);
    v159 = *(v155 + 1);
    v160 = *(v155 + 1);
    a5[1002] = v158;
    *(a5 + 4022) = v159 + (v157 >> v156);
    if (v160 + (qword_1003E2808[v156] & v157))
    {
      v130 = v160 + (qword_1003E2808[v156] & v157);
    }

    if (v145 > 0x3F || v153 > 0x3Fu || (v159 + (v157 >> v156)) > 0xFFu)
    {
      return result;
    }

    v161 = v140 + (v146 & v142);
    if (v161)
    {
      v162 = *(a5 + 2021);
      do
      {
        if (v162)
        {
          v163 = *(a5 + 2020);
        }

        else
        {
          v164 = *(a5 + 210);
          v166 = __OFSUB__(v164, 4);
          v165 = v164 >= 4;
          v167 = v164 - 4;
          if (!v165)
          {
            return 0;
          }

          *(a5 + 2020) = 0;
          v168 = *(a5 + 2014);
          v169 = 63 - v168;
          v170 = (63 - v168) & 0xFFFFFFF8;
          if ((v169 < 0) ^ v166 | ((v169 & 0xFFFFFFF8) == 0))
          {
            v172 = *v194;
          }

          else
          {
            v171 = &a5[1008][-(v169 >> 3)];
            if (v171 < a5[1])
            {
              return 0;
            }

            a5[1008] = v171;
            v172 = (qword_1003E2808[v170] & *v171 | (a5[1006] << v170));
            v168 += v170;
            *(a5 + 2014) = v168;
          }

          v173 = *(v195 + *(a5 + 4036));
          v174 = v168 - v173;
          *(a5 + 2014) = v174;
          v175 = v172 >> v174;
          v176 = qword_1003E2808[v174] & v172;
          *(a5 + 4036) = v175 + HIWORD(v173);
          *(a5 + 2020) = BYTE1(v173);
          LODWORD(v175) = *(v195 + *(a5 + 4037));
          v177 = v174 - v175;
          *(a5 + 2014) = v177;
          v178 = v176 >> v177;
          v179 = qword_1003E2808[v177] & v176;
          *(a5 + 4037) = v178 + WORD1(v175);
          LODWORD(v178) = v175 & 0xFF00 | BYTE1(v173);
          *(a5 + 2020) = v178;
          v180 = *(v195 + *(a5 + 4038));
          v181 = v177 - v180;
          *(a5 + 2014) = v181;
          v182 = v179 >> v181;
          v183 = qword_1003E2808[v181] & v179;
          *(a5 + 4038) = v182 + HIWORD(v180);
          LODWORD(v178) = v178 & 0xFF00FFFF | (BYTE1(v180) << 16);
          *(a5 + 2020) = v178;
          v184 = *(v195 + *(a5 + 4039));
          v185 = v181 - v184;
          *(a5 + 2014) = v185;
          a5[1006] = (qword_1003E2808[v185] & v183);
          *(a5 + 4039) = (v183 >> v185) + HIWORD(v184);
          v163 = v178 & 0xFFFFFF | (BYTE1(v184) << 24);
          *(a5 + 2020) = v163;
          *(a5 + 2021) = 4;
          *(a5 + 210) = v167;
        }

        if ((sub_10013C938(v196, v163) & 0x80000000) != 0)
        {
          return 0;
        }

        *(a5 + 2020) >>= 8;
        v162 = *(a5 + 2021) - 1;
        *(a5 + 2021) = v162;
      }

      while (--v161);
    }

    if ((sub_10013C988(v196, v190 + (v154 & v151), v130) & 0x80000000) != 0)
    {
      return 0;
    }

    v129 = v191 + 1;
    v186 = *(a5 + 209);
    v128 = __OFSUB__(v191 + 1, v186);
    v22 = v189;
    if (v191 + 1 >= v186)
    {
      LODWORD(v106) = *(a5 + 208);
      v105 = *a5;
      goto LABEL_129;
    }
  }
}

uint64_t sub_10013C684(void *a1)
{
  v1 = *a1 + 12;
  v2 = a1[2];
  if (v1 <= v2)
  {
    v3 = *(*a1 + 8);
    if (v1 + v3 <= v2)
    {
      if (v3)
      {
        __asm { BRAA            X9, X17 }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_10013C830()
{
  if (v2 >= 8)
  {
    *v0 += v1 + 12;
    JUMPOUT(0x10013C814);
  }

  JUMPOUT(0x10013C810);
}

uint64_t sub_10013C850(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (*(a1 + 16) + a2 <= *(a1 + 8))
  {
    if (a2)
    {
      while (*(a1 + 28))
      {
        if ((sub_10013C938(a1, *a3) & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        ++a3;
        if (!--v9)
        {
          return 0;
        }
      }

      if (v9 < 4)
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 16) + 4;
      do
      {
        v12 = *a3;
        a3 += 4;
        *(v11 - 4) = v12;
        *(a1 + 16) = v11;
        v9 -= 4;
        v11 += 4;
      }

      while (v9 > 3);
      if (v9)
      {
LABEL_15:
        while ((sub_10013C938(a1, *a3) & 0x80000000) == 0)
        {
          ++a3;
          if (!--v9)
          {
            return 0;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  while ((sub_10013C938(a1, *a3) & 0x80000000) == 0)
  {
    ++a3;
    if (!--v9)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013C938(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 28);
  v4 = (a2 << (8 * v3++)) | *(a1 + 24);
  *(a1 + 24) = v4;
  *(a1 + 28) = v3;
  if (v3 != 4)
  {
    return 0;
  }

  v5 = 0;
  *v2 = v4;
  *(a1 + 16) = v2 + 1;
  *(a1 + 24) = 0;
  return v5;
}

uint64_t sub_10013C988(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a2 != 0;
  if (a3 && a2)
  {
    v6 = 0;
    v7 = a3;
    v8 = (a1 + 24);
    while (1)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 28);
      v11 = v9 - v7 - *a1;
      v13 = &v11[v10];
      v12 = &v11[v10] < 0;
      v14 = (v11 + v10) & 3;
      v15 = (*a1 + (v13 & 0xFFFFFFFFFFFFFFFCLL));
      if (v12 || v15 >= v9)
      {
        v16 = v15 != v9 || v14 >= v10;
        v15 = v8;
        if (v16)
        {
          break;
        }
      }

      if ((sub_10013C938(a1, (*v15 >> (8 * v14))) & 0x80000000) != 0)
      {
        break;
      }

      if (++v6 >= a2)
      {
        v3 = 0;
        return (v3 << 31 >> 31);
      }
    }

    v3 = 1;
  }

  return (v3 << 31 >> 31);
}

uint64_t sub_10013CA54(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = 0;
  v8[0] = -1;
  while (1)
  {
    while (1)
    {
      v5 = a2 + 8 * a1;
      a1 = *(v5 + 4);
      if ((a1 & 0x80000000) == 0)
      {
        break;
      }

      *(a3 + *(v5 + 6)) = v4;
      if ((v4 & 0x80000000) != 0)
      {
        return 1;
      }

      while (1)
      {
        a1 = v8[v4];
        if (a1 != -1)
        {
          break;
        }

        v6 = v4 <= 0;
        LODWORD(v4) = v4 - 1;
        if (v6)
        {
          return 1;
        }
      }

      v8[v4] = -1;
    }

    if (v4 >= a4)
    {
      break;
    }

    v4 = v4 + 1;
    v8[v4] = *(v5 + 6);
  }

  return 0;
}

uint64_t sub_10013CB14(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v46 = a2 - 1;
  v10 = a4 + 8;
  for (i = 1; ; i *= 2)
  {
    if (!a2)
    {
      goto LABEL_21;
    }

    v12 = 0;
    v13 = v46;
    do
    {
      v14 = *(v9 + 4 * v13);
      if (v14)
      {
        if (v14 <= i)
        {
          v14 = i;
        }

        v15 = a4 + 8 * v12;
        *v15 = v14;
        ++v12;
        *(v15 + 4) = -1;
        *(v15 + 6) = v13;
      }

      --v13;
    }

    while (v13 != -1);
    if (v12 == 1)
    {
      break;
    }

    if (v12 > 0xC)
    {
      v25 = 2 * (v12 < 0x39);
      while (1)
      {
        v26 = qword_1003E2A10[v25];
        if (v26 >= v12)
        {
          goto LABEL_35;
        }

        v27 = 0;
        v28 = qword_1003E2A10[v25];
        do
        {
          v29 = *(a4 + 8 * v28);
          v30 = v28;
          if (v28 < v26)
          {
            goto LABEL_34;
          }

          v31 = v27;
          v32 = v28;
          while (1)
          {
            v33 = *(a4 + v31);
            if (v33 != v29)
            {
              break;
            }

            if (*(a4 + v31 + 6) >= SHIWORD(v29))
            {
              goto LABEL_33;
            }

LABEL_31:
            v30 = v32 - v26;
            *(a4 + 8 * v32) = *(a4 + v31);
            v31 -= 8 * v26;
            v32 = v30;
            if (v30 < v26)
            {
              goto LABEL_34;
            }
          }

          if (v33 > v29)
          {
            goto LABEL_31;
          }

LABEL_33:
          v30 = v32;
LABEL_34:
          *(a4 + 8 * v30) = v29;
          ++v28;
          v27 += 8;
        }

        while (v28 != v12);
LABEL_35:
        if (++v25 == 6)
        {
          goto LABEL_36;
        }
      }
    }

    if (v12)
    {
      v16 = 0;
      for (j = 1; j != v12; ++j)
      {
        v18 = *(a4 + 8 * j);
        v19 = v16;
        v20 = j;
        do
        {
          v21 = *(a4 + v19);
          if (v21 == v18)
          {
            if (*(a4 + v19 + 6) >= SHIWORD(v18))
            {
              break;
            }
          }

          else if (v21 <= v18)
          {
            break;
          }

          *(a4 + 8 * v20) = *(a4 + v19);
          v19 -= 8;
          --v20;
        }

        while (v20);
        *(a4 + 8 * v20) = v18;
        v16 += 8;
      }

LABEL_36:
      *&v34 = -1;
      *(&v34 + 1) = -1;
      *(a4 + 8 * v12) = v34;
      v23 = v12 - 1;
      v24 = v12 + 1;
      goto LABEL_37;
    }

LABEL_21:
    v12 = 0;
    *&v22 = -1;
    *(&v22 + 1) = -1;
    *a4 = v22;
    v23 = -1;
    v24 = 1;
LABEL_37:
    v35 = 0;
    v36 = (v10 - 8 * v23 + 16 * v12);
    do
    {
      v37 = *(a4 + 8 * v35);
      v38 = *(a4 + 8 * v24);
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v40 = v35;
      }

      else
      {
        v40 = v35 + 1;
      }

      if (v39)
      {
        v41 = v24 + 1;
      }

      else
      {
        v41 = v24;
      }

      v42 = *(a4 + 8 * v40);
      v43 = *(a4 + 8 * v41);
      if (!v39)
      {
        v24 = v35;
      }

      v44 = v42 > v43;
      if (v42 > v43)
      {
        v45 = v41;
      }

      else
      {
        v45 = v40;
      }

      *(v36 - 2) = *(a4 + 8 * v45) + *(a4 + 8 * v24);
      *(v36 - 2) = v24;
      if (v44)
      {
        v35 = v40;
      }

      else
      {
        v35 = v40 + 1;
      }

      if (v44)
      {
        v24 = v41 + 1;
      }

      else
      {
        v24 = v41;
      }

      *(v36 - 1) = v45;
      *v36++ = -1;
      --v23;
    }

    while (v23);
    result = sub_10013CA54(2 * v12 - 1, a4, a5, a3);
    if (result)
    {
      return result;
    }
  }

  *(a5 + *(a4 + 6)) = 1;
  return result;
}

void sub_10013CDD0(size_t a1, int *a2, char *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = 0;
    v7 = 0;
    do
    {
      if (a2[v6])
      {
        ++v7;
      }

      ++v6;
    }

    while (a1 != v6);
    if (v7 >= 0x10)
    {
      v8 = a2 - 1;
      while (!v8[v5])
      {
        if (!--v5)
        {
          return;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0x40000000;
      do
      {
        v12 = v9;
        v13 = a2[v10];
        if (v11 >= v13)
        {
          v14 = a2[v10];
        }

        else
        {
          v14 = v11;
        }

        if (v13)
        {
          ++v9;
          v11 = v14;
        }

        ++v10;
      }

      while (v5 != v10);
      if (v9 >= 5)
      {
        if (v13)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = v5 - v15;
        if (v11 <= 3 && v16 <= 5 && v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = a2 + 1;
          v20 = v5 - 2;
          do
          {
            if (*(v19 - 1) && !*v19 && v19[1])
            {
              *v19 = 1;
            }

            ++v19;
            --v20;
          }

          while (v20);
        }

        if (v9 >= 0x1C)
        {
          bzero(a3, v5);
          v21 = 0;
          v22 = 0;
          v23 = *a2;
          do
          {
            if (v5 == v22 || a2[v22] != v23)
            {
              if (!v23 && v21 > 4 || v23 && v21 >= 7)
              {
                memset(&a3[v22 - v21], 1, v21);
              }

              if (v5 != v22)
              {
                v23 = a2[v22];
              }

              v21 = 1;
            }

            else
            {
              ++v21;
            }

            v24 = v22++ >= v5;
          }

          while (!v24);
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = vdupq_n_s64(4uLL);
          v29 = ((a2[1] + *a2 + a2[2]) << 8) / 3u + 420;
          do
          {
            if (v5 == v25 || a3[v25] || v25 && a3[v25 - 1] || (v42 = a2[v25], (v42 << 8) - v29 - 1240 <= 0xFFFFFFFFFFFFF64FLL))
            {
              v30 = &a2[v25];
              if (v27 > 3 || v27 == 3 && !v26)
              {
                v31 = 0;
                v32 = v26 + (v27 >> 1);
                if (v27 > v32)
                {
                  v33 = 1;
                }

                else
                {
                  v33 = v32 / v27;
                }

                if (v26)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = 0;
                }

                v35 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v36 = vdupq_n_s64(v27 - 1);
                v37 = v8;
                v38 = xmmword_1003772E0;
                v39 = xmmword_10037C710;
                do
                {
                  v40 = vmovn_s64(vcgeq_u64(v36, v38));
                  if (vuzp1_s16(v40, 2).u8[0])
                  {
                    *v37 = v34;
                  }

                  if (vuzp1_s16(v40, 2).i8[2])
                  {
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFELL] = v34;
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v36, *&v39))).i32[1])
                  {
                    v30[v31 ^ 0xFFFFFFFFFFFFFFFDLL] = v34;
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFCLL] = v34;
                  }

                  v31 += 4;
                  v39 = vaddq_s64(v39, v28);
                  v38 = vaddq_s64(v38, v28);
                  v37 -= 4;
                }

                while (v35 != v31);
              }

              if (v25 >= v5 - 2)
              {
                if (v25 >= v5)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = a2[v25] << 8;
                }
              }

              else
              {
                v41 = ((v30[1] + *v30 + v30[2]) << 8) / 3u + 420;
              }

              v29 = v41;
              if (v5 == v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = a2[v25];
              }

              v27 = 1;
            }

            else
            {
              ++v27;
              v26 += v42;
              if (v27 >= 4)
              {
                v29 = ((v26 << 8) + (v27 >> 1)) / v27;
                if (v27 == 4)
                {
                  v29 += 120;
                }
              }
            }

            ++v8;
            v24 = v25++ >= v5;
          }

          while (!v24);
        }
      }
    }
  }
}

uint64_t sub_10013D158(uint64_t result, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return result;
  }

  v5 = -a2;
  v6 = result - 1;
  while (!*(v6 + a2))
  {
    --v6;
    if (__CFADD__(v5++, 1))
    {
      if (a2 <= 0x32)
      {
        return result;
      }

LABEL_28:
      v8 = 0;
      v11 = 0;
      v9 = 0;
      v23 = 2;
      v22 = 2;
      goto LABEL_29;
    }
  }

  v8 = -v5;
  if (a2 <= 0x32)
  {
    v24 = 0;
    v25 = 0;
    if (!v5)
    {
      return result;
    }

LABEL_32:
    v26 = 0;
    v27 = 8;
    while (1)
    {
      v28 = *(result + v26);
      if ((*(result + v26) == 0 || !v24) && (*(result + v26) != 0 || !v25))
      {
        break;
      }

      if (v26 + 1 >= v8)
      {
        break;
      }

      v29 = 1;
      while (*(result + v26 + v29) == v28)
      {
        if (v8 - v26 == ++v29)
        {
          v29 = v8 - v26;
          break;
        }
      }

      if (*(result + v26))
      {
        goto LABEL_44;
      }

      if (v29 == 11)
      {
        *(a4 + *a3) = 0;
        *(a5 + *a3) = 0;
        v30 = *a3 + 1;
        *a3 = v30;
        v29 = 11;
        v31 = 7;
LABEL_70:
        *(a4 + v30) = 17;
        *(a5 + *a3) = v31 & 7;
        v44 = *a3;
        v45 = *a3 + 1;
        *a3 = v45;
        if (v31 >= 8)
        {
          do
          {
            v31 = (v31 >> 3) - 1;
            *(a4 + v45) = 17;
            *(a5 + *a3) = v31 & 7;
            v44 = *a3;
            v45 = *a3 + 1;
            *a3 = v45;
          }

          while (v31 > 7);
        }

        if (v44 > v30)
        {
          v46 = v30;
          do
          {
            v47 = *(a4 + v46);
            *(a4 + v46) = *(a4 + v44);
            *(a4 + v44) = v47;
            ++v46;
            --v44;
          }

          while (v46 < v44);
          v45 = *a3;
        }

        for (i = v45 - 1; v30 < i; --i)
        {
          v49 = *(a5 + v30);
          *(a5 + v30) = *(a5 + i);
          *(a5 + i) = v49;
          ++v30;
        }

        goto LABEL_67;
      }

      v31 = v29 - 3;
      if (v29 >= 3)
      {
        v30 = *a3;
        goto LABEL_70;
      }

      if (v29)
      {
LABEL_65:
        v42 = *a3;
        v43 = v29;
        do
        {
          *(a4 + v42) = 0;
          *(a5 + *a3) = 0;
          v42 = *a3 + 1;
          *a3 = v42;
          --v43;
        }

        while (v43);
      }

LABEL_67:
      v26 += v29;
      if (v26 >= v8)
      {
        return result;
      }
    }

    v29 = 1;
    if (!*(result + v26))
    {
      goto LABEL_65;
    }

LABEL_44:
    v32 = v29;
    if (v27 != v28)
    {
      *(a4 + *a3) = v28;
      *(a5 + (*a3)++) = 0;
      v32 = v29 - 1;
    }

    if (v32 == 7)
    {
      *(a4 + *a3) = v28;
      *(a5 + *a3) = 0;
      v33 = *a3 + 1;
      *a3 = v33;
      v34 = 3;
    }

    else
    {
      v34 = v32 - 3;
      if (v32 < 3)
      {
        if (v32)
        {
          v35 = *a3;
          do
          {
            *(a4 + v35) = v28;
            *(a5 + *a3) = 0;
            v35 = *a3 + 1;
            *a3 = v35;
            --v32;
          }

          while (v32);
        }

        goto LABEL_62;
      }

      v33 = *a3;
    }

    *(a4 + v33) = 16;
    *(a5 + *a3) = v34 & 3;
    v36 = *a3;
    v37 = *a3 + 1;
    *a3 = v37;
    if (v34 >= 4)
    {
      do
      {
        v34 = (v34 >> 2) - 1;
        *(a4 + v37) = 16;
        *(a5 + *a3) = v34 & 3;
        v36 = *a3;
        v37 = *a3 + 1;
        *a3 = v37;
      }

      while (v34 > 3);
    }

    if (v36 > v33)
    {
      v38 = v33;
      do
      {
        v39 = *(a4 + v38);
        *(a4 + v38) = *(a4 + v36);
        *(a4 + v36) = v39;
        ++v38;
        --v36;
      }

      while (v38 < v36);
      v37 = *a3;
    }

    for (j = v37 - 1; v33 < j; --j)
    {
      v41 = *(a5 + v33);
      *(a5 + v33) = *(a5 + j);
      *(a5 + j) = v41;
      ++v33;
    }

LABEL_62:
    v27 = v28;
    goto LABEL_67;
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -v5;
  v13 = 1;
  v14 = 1;
  do
  {
    v15 = *(result + v10);
    if (v10 + 1 >= v8)
    {
      ++v10;
      v16 = 1;
    }

    else
    {
      v16 = 1;
      while (*(result + v10 + v16) == v15)
      {
        if (v12 - v10 == ++v16)
        {
          v16 = v12 - v10;
          break;
        }
      }

      v10 += v16;
    }

    v17 = v15 == 0;
    v18 = !v17;
    v19 = (v16 > 2) & v17;
    v14 += v19;
    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v9 += v20;
    v21 = (v16 > 3) & v18;
    if (((v16 > 3) & v18) == 0)
    {
      v16 = 0;
    }

    v11 += v16;
    v13 += v21;
  }

  while (v10 < v8);
  v22 = 2 * v13;
  v23 = 2 * v14;
LABEL_29:
  v24 = v11 > v22;
  v25 = v9 > v23;
  if (v8)
  {
    goto LABEL_32;
  }

  return result;
}

unsigned __int8 *sub_10013D55C(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v3 = result;
    v4 = a2;
    do
    {
      v5 = *v3++;
      ++*(v14 + v5);
      --v4;
    }

    while (v4);
  }

  v6 = 0;
  v7 = 0;
  LOWORD(v14[0]) = 0;
  do
  {
    v7 = 2 * (v7 + *(v14 + v6));
    *&v13[v6 + 2] = v7;
    v6 += 2;
  }

  while (v6 != 30);
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = result[i];
      if (result[i])
      {
        v10 = *&v13[2 * v9];
        *&v13[2 * v9] = v10 + 1;
        v11 = qword_1003E2A40[v10 & 0xF];
        if (v9 >= 5)
        {
          for (j = 4; j < v9; j += 4)
          {
            v10 >>= 4;
            v11 = qword_1003E2A40[v10] | (16 * v11);
          }
        }

        *(a3 + 2 * i) = v11 >> (-v9 & 3);
      }
    }
  }

  return result;
}

uint64_t sub_10013D67C(int32x4_t *a1, unint64_t a2, char *a3, unint64_t a4, char *__b)
{
  v7 = a3;
  v24 = a3;
  memset_pattern8(__b, &unk_1003E2408, 0x8000uLL);
  v22 = a1;
  if (a4)
  {
    v10 = v7;
    v11 = a1;
    while (1)
    {
      if (a2 < 0xC)
      {
        return 0;
      }

      v12 = a4 >= 0x10000 ? 0x10000 : a4;
      v13 = (&v11->u64[1] + 4);
      v23 = (&v11->u64[1] + 4);
      lz4_encode_2gb(&v23, a2 - 12, &v24, v10, v12, __b, 0);
      if (v24 - v7 < v12)
      {
        break;
      }

      if (v23 == v13)
      {
        goto LABEL_12;
      }

      v14 = v23 - v13;
      v15 = v23 - v11;
      if (v23 - v11 >= v12 + 8)
      {
        goto LABEL_12;
      }

      v11->i32[0] = 825521762;
      v11->i32[1] = v12;
      v11->i32[2] = v14;
      v11 = v23;
      v7 = v24;
      a2 -= v15;
LABEL_15:
      if (&v7[-v10] >= 1610612736)
      {
        for (i = 0; i != 0x8000; i += 8)
        {
          v19 = *&__b[i];
          if (v19 != 0x80000000)
          {
            if (v19 >> 30)
            {
              v20 = v19 - 0x40000000;
            }

            else
            {
              v20 = 0x80000000;
            }

            *&__b[i] = v20;
          }
        }

        v10 += 0x40000000;
      }

      a4 -= v12;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    v23 = (&v11->u64[1] + 4);
    v24 = &v7[v12];
LABEL_12:
    v11->i32[0] = 758412898;
    v11->i32[1] = v12;
    v16 = a2 - 8 >= v12;
    a2 = a2 - 8 - v12;
    if (!v16)
    {
      return 0;
    }

    v17 = &v11->u64[1];
    v7 = v24;
    memcpy(v17, &v24[-v12], v12);
    v11 = (v17 + v12);
    goto LABEL_15;
  }

  v11 = a1;
LABEL_27:
  if (a2 < 4)
  {
    return 0;
  }

  v11->i32[0] = 607417954;
  return v11 - v22 + 4;
}

_DWORD *sub_10013D848(_DWORD *result, char *__src, unint64_t a3, int a4, unsigned int *a5, char *__dst, uint64_t a7, unsigned int a8, unint64_t *a9, uint64_t a10)
{
  v13 = *a9;
  v14 = __clz(a8) ^ 0x1F;
  if (v14 > 12)
  {
    if (v14 <= 14)
    {
      if (v14 == 13)
      {
        result = sub_100140460(result, __src, a3, a5, __dst, a7, a9, a10);
      }

      else
      {
        result = sub_100140C9C(result, __src, a3, a5, __dst, a7, a9, a10);
      }
    }

    else
    {
      switch(v14)
      {
        case 15:
          result = sub_1001414D8(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 16:
          result = sub_100141D14(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 17:
          result = sub_10014265C(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
      }
    }
  }

  else if (v14 <= 9)
  {
    if (v14 == 8)
    {
      result = sub_10013DB34(result, __src, a3, a5, __dst, a7, a9, a10);
    }

    else if (v14 == 9)
    {
      result = sub_10013E370(result, __src, a3, a5, __dst, a7, a9, a10);
    }
  }

  else if (v14 == 10)
  {
    result = sub_10013EBAC(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else if (v14 == 11)
  {
    result = sub_10013F3E8(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else
  {
    result = sub_10013FC24(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  if (*a9 - v13 > 8 * a3 + 31)
  {
    *(a10 + (v13 >> 3)) &= ~(-1 << (v13 & 7));
    *a9 = v13;
    sub_1001294F4(a3, 1u, a9, a10);
    v15 = (*a9 + 7) & 0xFFFFFFF8;
    *a9 = v15;
    result = memcpy((a10 + (v15 >> 3)), __src, a3);
    v16 = *a9 + 8 * a3;
    *a9 = v16;
    *(a10 + (v16 >> 3)) = 0;
  }

  if (a4)
  {
    v17 = *a9;
    *(a10 + (*a9 >> 3)) = (1 << (*a9 & 7)) | *(a10 + (*a9 >> 3));
    *a9 = v17 + 1;
    *(a10 + ((v17 + 1) >> 3)) = (1 << ((v17 + 1) & 7)) | *(a10 + ((v17 + 1) >> 3));
    *a9 = (v17 + 9) & 0xFFFFFFF8;
  }

  return result;
}

_DWORD *sub_10013DB34(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 56;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 54) & 0x3FC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 54) & 0x3FC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_10013E370(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 55;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 53) & 0x7FC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 53) & 0x7FC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_10013EBAC(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 54;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 52) & 0xFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 52) & 0xFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_10013F3E8(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 53;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 51) & 0x1FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 51) & 0x1FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_10013FC24(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 52;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 50) & 0x3FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 50) & 0x3FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_100140460(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 51;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 49) & 0x7FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 49) & 0x7FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_100140C9C(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 50;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 48) & 0xFFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 48) & 0xFFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_1001414D8(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (v85[6])
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = (v16 + 1);
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 49;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (v29[v34] == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 8;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = (v22 + v45);
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 47) & 0x1FFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 1);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 = (v16 + v63);
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 47) & 0x1FFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

_DWORD *sub_100141D14(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 48;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 48;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 46) & 0x3FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 46) & 0x3FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 46) & 0x3FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 46) & 0x3FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (sub_100142FA4(v11, v12, v15 - v9))
        {
          break;
        }

        sub_1001294F4(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      sub_1001294F4(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = sub_100143150(v91);
      if (v91[6])
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

_DWORD *sub_10014265C(_DWORD *result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 47;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 47;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 45) & 0x7FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 45) & 0x7FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 45) & 0x7FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 45) & 0x7FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (sub_100142FA4(v11, v12, v15 - v9))
        {
          break;
        }

        sub_1001294F4(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      sub_1001294F4(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = sub_100143150(v91);
      if (v91[6])
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

BOOL sub_100142FA4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (a2 * 0.98 > a3)
  {
    return 1;
  }

  bzero(v20, 0x400uLL);
  if (a2)
  {
    v7 = 0;
    do
    {
      ++v20[*(a1 + v7)];
      v7 += 43;
    }

    while (v7 < a2);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = v3 * 8.0 * 0.98 / 43.0;
  do
  {
    v12 = v20[v8];
    if (v12 > 0xFF)
    {
      v14 = v12;
      v13 = log2(v12);
    }

    else
    {
      v13 = dbl_1003EDA70[v12];
      v14 = v12;
    }

    v15 = v20[v8 + 1];
    if (v15 > 0xFF)
    {
      v16 = log2(v15);
    }

    else
    {
      v16 = dbl_1003EDA70[v15];
    }

    v8 += 2;
    v9 += v12 + v15;
    v10 = v10 - v14 * v13 - v15 * v16;
  }

  while ((v8 * 4 - 8) < 0x3F8);
  v17 = v9;
  if (v9)
  {
    if (v9 > 0xFF)
    {
      v18 = log2(v9);
    }

    else
    {
      v18 = dbl_1003EDA70[v9];
    }

    v10 = v10 + v17 * v18;
  }

  if (v10 >= v17)
  {
    v19 = v10;
  }

  else
  {
    v19 = v9;
  }

  return v19 < v11;
}

uint64_t sub_100143150(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  bzero(v56, 0x400uLL);
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  memset(v51, 0, sizeof(v51));
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  if (v11)
  {
    v15 = v13;
    v16 = v11;
    do
    {
      v17 = *v15++;
      ++v56[v17];
      --v16;
    }

    while (v16);
  }

  result = sub_10016D708(v14, v56, v11, 8, v58, v57, v5, v3);
  if (!*(v14 + 24))
  {
    if (v7)
    {
      v19 = v9;
      v20 = v7;
      do
      {
        v21 = *v19;
        v19 += 4;
        ++*(v37 + v21);
        --v20;
      }

      while (v20);
      v22 = vadd_s32(*(v37 + 4), 0x100000001);
      v23 = LODWORD(v38[0]) + 1;
      v24 = v39 + 1;
    }

    else
    {
      v22 = 0x100000001;
      v24 = 1;
      v23 = 1;
    }

    *(v37 + 4) = v22;
    LODWORD(v38[0]) = v23;
    LODWORD(v39) = v24;
    bzero(v64, 0x280uLL);
    sub_10013CB14(v37, 64, 15, v65, &v52);
    sub_10013CB14(v38, 64, 14, v65, v55);
    *v60 = *(v53 + 8);
    *&v60[16] = *(&v53[1] + 1);
    *&v61 = v52;
    *(&v61 + 1) = v54;
    *&v62 = *(&v52 + 1);
    v25 = v53;
    *(&v62 + 1) = *(&v54 + 1);
    v63 = *&v53[0];
    sub_10013D55C(v60, 64, v59);
    v50[0] = v59[3];
    v50[1] = v59[5];
    v50[2] = v59[7];
    v50[3] = v59[0];
    v50[4] = v59[1];
    v50[5] = v59[2];
    v50[6] = v59[4];
    v50[7] = v59[6];
    sub_10013D55C(v55, 64, v51);
    v62 = 0u;
    v61 = 0u;
    *&v60[8] = 0u;
    v63 = 0;
    *v60 = *(&v53[0] + 1);
    v64[8] = *(&v53[1] + 1);
    v64[0] = *&v53[1];
    v64[40] = *(&v54 + 1);
    v64[16] = v54;
    for (i = 256; i != 320; i += 8)
    {
      v27 = &v60[i];
      *(v27 - 128) = *(v25 - 16);
      *v27 = *(v25 - 8);
      v28 = *v25++;
      v27[192] = v28;
    }

    sub_10016D458(v60, 0x2C0uLL, v65, v5, v3);
    result = sub_10016D458(v55, 0x40uLL, v65, v5, v3);
    if (v7)
    {
      v29 = 0;
      v30 = *v5;
      do
      {
        v31 = *&v9[4 * v29];
        v32 = *(&v53[-1] + v31);
        v33 = *&v9[4 * v29] >> 8;
        *(v3 + (v30 >> 3)) = (*(v50 + v31) << (v30 & 7)) | *(v3 + (v30 >> 3));
        v34 = v30 + v32;
        result = dword_1003E2AD0[v31];
        *v5 = v34;
        *(v3 + (v34 >> 3)) = (v33 << (v34 & 7)) | *(v3 + (v34 >> 3));
        v30 = v34 + result;
        *v5 = v30;
        if (v31 <= 0x17)
        {
          for (j = dword_1003E2CD0[v31] + v33; j; --j)
          {
            v36 = *v13++;
            result = v58[v36];
            *(v3 + (v30 >> 3)) = (v57[v36] << (v30 & 7)) | *(v3 + (v30 >> 3));
            v30 += result;
            *v5 = v30;
          }
        }

        ++v29;
      }

      while (v29 != v7);
    }
  }

  return result;
}

unint64_t sub_10014356C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 15;
  if (a2 > 0xF)
  {
    v8 = a2;
  }

  v9 = a5 + 5120;
  v10 = a5 + 4096;
  v11 = a5 + 5121;
  v12 = a5 + 8;
  v13 = 0uLL;
  v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v88 = a2;
  v89 = a4;
  v87 = a3;
  v85 = a1 + v8 - 15;
LABEL_4:
  if (v7 + 256 > a4)
  {
    if (v6 != a2)
    {
      return 0;
    }
  }

  else
  {
    v15 = (a3 + v7);
    v93 = 0;
    v16 = -32;
    v91 = v13;
    v92 = v13;
    do
    {
      v17 = *v15++;
      v94.val[0] = vandq_s8(v17, v14);
      v94.val[1] = vshrq_n_u8(v17, 4uLL);
      v18 = &a5[v16 + 5152];
      vst2q_s8(v18, v94);
      v16 += 32;
    }

    while (v16 < 0x1E0);
    v19 = 0;
    do
    {
      v20 = &v91 + 2 * v11[v19 - 1];
      ++*(v20 + 1);
      v21 = &v91 + 2 * v11[v19];
      ++*(v21 + 1);
      v22 = &v91 + 2 * v11[v19 + 1];
      ++*(v22 + 1);
      v23 = &v91 + 2 * v11[v19 + 2];
      ++*(v23 + 1);
      v24 = v19 >= 0x1FC;
      v19 += 4;
    }

    while (!v24);
    v25 = 0;
    WORD1(v91) = 0;
    for (i = 4; i != 34; i += 2)
    {
      v25 += *(&v91 + i);
      *(&v91 + i) = v25;
    }

    v27 = 0;
    LOWORD(v91) = v93;
    do
    {
      v28 = v9[v27];
      v29 = *(&v91 + v28);
      *(&v91 + v28) = v29 + 1;
      *&v10[2 * v29] = v28 + 16 * v27++;
    }

    while (v27 != 512);
    v30 = HIWORD(v92);
    if (HIWORD(v92))
    {
      v90 = v7 + 256;
      bzero(a5, 0x800uLL);
      v31 = 0x8000;
      v32 = 1024;
      while (1)
      {
        v33 = v31;
        v34 = *&v10[2 * v30 - 2];
        v35 = v34 & 0xF;
        v31 += -1 << (v34 & 0xF ^ 0xF);
        if (v31 < 0)
        {
          break;
        }

        v36 = v31 >> 5;
        if (v35 > 0xA)
        {
          v46 = *&a5[2 * v36];
          if (!*&a5[2 * v36])
          {
            v47 = v35 | (16 * v32);
            *&a5[2 * v36] = v47;
            v32 += (1 << (v35 - 10));
            if (v32 > 0x800)
            {
              return 0;
            }

            v46 = v47;
          }

          v48 = 0;
          v49 = (v31 >> (v46 & 0xF ^ 0xF)) & ~(-1 << ((v46 & 0xF) - 10));
          v50 = (1 << ((v46 & 0xF) - v35)) + (v46 >> 4) + v49;
          v51 = (v46 >> 4) + v49;
          if (v50 <= v51 + 1)
          {
            v50 = v51 + 1;
          }

          v52 = v50 - v51;
          v53 = vdupq_n_s64(v52 - 1);
          v54 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = &v12[2 * v51];
          do
          {
            v56 = vdupq_n_s64(v48);
            v57 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_1003772E0)));
            if (vuzp1_s8(vuzp1_s16(v57, *v53.i8), *v53.i8).u8[0])
            {
              *(v55 - 4) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(v57, *&v53), *&v53).i8[1])
            {
              *(v55 - 3) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037C710)))), *&v53).i8[2])
            {
              *(v55 - 2) = v34;
              *(v55 - 1) = v34;
            }

            v58 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037D3A0)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i32[1])
            {
              *v55 = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i8[5])
            {
              *(v55 + 1) = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037D390))))).i8[6])
            {
              *(v55 + 2) = v34;
              *(v55 + 3) = v34;
            }

            v48 += 8;
            v55 += 16;
          }

          while (v54 != v48);
        }

        else
        {
          v37 = v33 >> 5;
          if (v36 < v33 >> 5)
          {
            v38 = 0;
            v39 = (v37 + ~v36);
            v40 = (v39 + 8) & 0x1FFFFFFF8;
            v41 = vdupq_n_s64(v39);
            v42 = &v12[2 * v36];
            do
            {
              v43 = vdupq_n_s64(v38);
              v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_1003772E0)));
              if (vuzp1_s8(vuzp1_s16(v44, *v41.i8), *v41.i8).u8[0])
              {
                *(v42 - 4) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(v44, *&v41), *&v41).i8[1])
              {
                *(v42 - 3) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037C710)))), *&v41).i8[2])
              {
                *(v42 - 2) = v34;
                *(v42 - 1) = v34;
              }

              v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037D3A0)));
              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i32[1])
              {
                *v42 = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i8[5])
              {
                *(v42 + 1) = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037D390))))).i8[6])
              {
                *(v42 + 2) = v34;
                *(v42 + 3) = v34;
              }

              v38 += 8;
              v42 += 16;
            }

            while (v40 != v38);
          }
        }

        v77 = v30-- <= 1;
        if (v77)
        {
          if (v31)
          {
            return 0;
          }

          v59 = v7 + 258;
          a4 = v89;
          if (v7 + 258 > v89)
          {
            return 0;
          }

          v7 += 260;
          if (v7 > v89)
          {
            return 0;
          }

          a3 = v87;
          a2 = v88;
          v60 = *(v87 + v59) | (*(v87 + v90) << 16);
          if (v6 + 0x10000 >= v88)
          {
            v61 = v88;
          }

          else
          {
            v61 = v6 + 0x10000;
          }

          v62 = 16;
          if (v6 < v61)
          {
            v13 = 0uLL;
            v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            while (1)
            {
              v63 = *&a5[2 * (v60 >> 22)];
              if (v63 >= 0x4000)
              {
                v63 = *&a5[2 * (v60 << 10 >> (42 - (v63 & 0xF))) + 2 * (v63 >> 4)];
              }

              v64 = v60 << (v63 & 0xF);
              v62 -= v63 & 0xF;
              if (v62 < 0)
              {
                if (v7 + 2 > v89)
                {
                  return 0;
                }

                v64 |= *(v87 + v7) << -v62;
                v62 += 16;
                v7 += 2;
              }

              v65 = v63 >> 4;
              if (v63 > 0xFFF)
              {
                if (v65 == 256 && v7 == v89)
                {
                  return v6;
                }

                v67 = v63 >> 4;
                if (v67 == 15)
                {
                  if (v7 >= v89)
                  {
                    return 0;
                  }

                  v68 = v7 + 1;
                  v69 = *(v87 + v7);
                  if (v69 == 255)
                  {
                    v70 = v7 + 3;
                    if (v7 + 3 > v89)
                    {
                      return 0;
                    }

                    v71 = *(v87 + v68);
                    if (!*(v87 + v68))
                    {
                      if (v7 + 7 > v89)
                      {
                        return 0;
                      }

                      v71 = *(v87 + v70);
                      v70 = v7 + 7;
                    }

                    v24 = v71 >= 0xF;
                    v69 = v71 - 15;
                    if (!v24)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v70 = v7 + 1;
                  }

                  v67 = v69 + 15;
                  v7 = v70;
                }

                v72 = (v63 >> 8) & 0xF;
                v60 = v64 << v72;
                v62 -= v72;
                if (v62 < 0)
                {
                  if (v7 + 2 > v89)
                  {
                    return 0;
                  }

                  v60 |= *(v87 + v7) << -v62;
                  v62 += 16;
                  v7 += 2;
                }

                v73 = (HIWORD(v64) >> (16 - v72)) | (1 << v72);
                if (v6 < v73)
                {
                  return 0;
                }

                v74 = v67 + 3;
                v75 = (a1 + v6);
                v76 = a1 + v6 + v67 + 3;
                v77 = v73 < 0x10 || v76 > v85;
                if (v77)
                {
                  if (v74 > v88 - v6)
                  {
                    return 0;
                  }

                  v78 = -v73;
                  do
                  {
                    *v75 = v75[v78];
                    ++v75;
                  }

                  while (v75 < v76);
                }

                else
                {
                  v79 = -v73;
                  do
                  {
                    *v75 = *&v75[v79];
                    v75 += 16;
                  }

                  while (v75 < v76);
                }

                v6 += v74;
              }

              else
              {
                *(a1 + v6++) = v65;
                v60 = v64;
              }

              if (v6 >= v61)
              {
                goto LABEL_103;
              }
            }
          }

          v13 = 0uLL;
          v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
          v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
LABEL_103:
          v80 = *&a5[2 * (v60 >> 22)];
          if (v80 >= 0x4000)
          {
            LOWORD(v80) = *&a5[2 * (v60 << 10 >> (42 - (v80 & 0xF))) + 2 * (v80 >> 4)];
          }

          v81 = v80 & 0xFFF0;
          v82 = v80 & 0xF;
          if (v81 == 4096 && v62 < v82)
          {
            v7 += 2;
            if (v7 > v89)
            {
              return 0;
            }
          }

          if (v7 != v89)
          {
            goto LABEL_4;
          }

          return v6;
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100143C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v5 = a5;
  v150 = a5 + 170338;
  v143 = a5 + 162144;
  bzero(a5, 0x10006uLL);
  v8 = a3;
  result = 0;
  v10 = 0;
  v11 = v5 + 152928;
  v160 = v5 + 65542;
  v12 = (v5 + 167264);
  v13 = v5 + 169312;
  v155 = (v5 + 171362);
  v147 = v5 + 171364;
  v148 = v5 + 167776;
  v145 = (v5 + 171876);
  v146 = v5 + 171878;
  v163 = v5 + 161116;
  v14 = (v5 + 165216);
  v15 = v5 + 168288;
  v159 = v8 + 1;
  v144 = v5 + 161118;
  v154 = v5;
  v153 = v8;
  v157 = v5 + 152928;
  v149 = v5 + 161120;
  do
  {
    if (v10 >= a4)
    {
      return result;
    }

    v158 = result;
    if (v10 + 0x10000 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v10 + 0x10000;
    }

    if (v16 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v16;
    }

    v161 = v10;
    v18 = v10 + 1;
    bzero(v11, 0x2000uLL);
    if (v18 < v16)
    {
      v19 = 0;
      v20 = v17 - 8;
      v21 = 1;
      v22 = v18;
      v23 = v153;
      while (1)
      {
        if (v22 + 4 <= a4)
        {
          v24 = 0;
          v25 = 0;
          v26 = &v5[2 * ((-1640531535 * (*(v153 + v22) & 0xFFFFFFu)) >> 17)];
          v27 = v22 & 0xFFFF0000;
          v28 = 2;
          LOWORD(v29) = v22;
          do
          {
            v30 = *&v26[2 * v24];
            *&v26[2 * v24] = v29;
            v29 = v27 | v30;
            if (v22 != (v27 | v30))
            {
              v31 = v29 - 0x10000;
              if (v29 < v22)
              {
                v31 = v29;
              }

              if (v22 >= v20)
              {
                LODWORD(v32) = 0;
              }

              else
              {
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  v34 = *(v153 + v22 + v32);
                  v32 = *(v153 + v31 + v32);
                  if (v34 != v32)
                  {
                    break;
                  }

                  v33 += 8;
                  v32 = v33;
                  if (v22 + v33 >= v20)
                  {
                    goto LABEL_24;
                  }
                }

                LODWORD(v32) = v33 + (__clz(__rbit64(v32 ^ v34)) >> 3);
              }

LABEL_24:
              v35 = v28 >= v32;
              if (v28 <= v32)
              {
                v28 = v32;
              }

              if (!v35)
              {
                v25 = v31;
              }
            }

            ++v24;
          }

          while (v24 != 3);
          if (v28 >= 4)
          {
            LOWORD(v37) = v22 - v25;
            v36 = v159;
LABEL_34:
            *&v157[4 * (v21 >> 5)] |= 1 << v21;
            v38 = v19 + 1;
            v39 = &v160[4 * v19];
            *v39 = v37;
            *(v39 + 1) = v28;
            v40 = v22 + v28;
            v18 = v22 + 1;
            if (v22 + 1 >= v40)
            {
              v19 = v38;
            }

            else
            {
              v41 = v28 - 1;
              do
              {
                v42 = v22 + 1;
                if (v22 + 5 <= a4)
                {
                  v43 = &v5[2 * ((-1640531535 * (*(v36 + v22) & 0xFFFFFFu)) >> 17)];
                  v44 = *v43;
                  *v43 = v42;
                  *(v43 + 2) = v44;
                }

                v22 = v42;
                --v41;
              }

              while (v41);
              v19 = v38;
              v18 = v40;
            }

            goto LABEL_41;
          }

          v36 = v159;
          if (v28 == 3)
          {
            v37 = v22 - v25;
            if (v37 < 0x100)
            {
              goto LABEL_34;
            }
          }
        }

        v18 = v22 + 1;
LABEL_41:
        ++v21;
        v22 = v18;
        if (v18 >= v16)
        {
          goto LABEL_44;
        }
      }
    }

    v21 = 1;
    v23 = v153;
LABEL_44:
    v156 = v18;
    v164 = a1 + v158;
    v162 = v23 + v161;
    bzero(v12, 0x400uLL);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 2176;
    do
    {
      if ((*&v157[4 * (v45 >> 5)] >> v45))
      {
        v49 = &v160[4 * v46++];
        v50 = *v49;
        v51 = *(v49 + 1);
        v52 = 31 - __clz(v50);
        v53 = v51 - 3;
        if (v51 - 3 >= 0xF)
        {
          v53 = 15;
        }

        v54 = v53 | (16 * v52);
        v47 += v51;
        v55 = v48 + v52;
        ++v148[v54];
        if (v51 <= 0x110)
        {
          v56 = 8;
        }

        else
        {
          v56 = 24;
        }

        v57 = v55 + v56;
        if (v51 >= 0x12)
        {
          v48 = v57;
        }

        else
        {
          v48 = v55;
        }
      }

      else
      {
        v58 = *(v162 + v47++);
        ++v12[v58];
      }

      ++v45;
    }

    while (v21 != v45);
    if (!*v148)
    {
      *v148 = 1;
    }

    bzero(v155, 0x404uLL);
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = v12[v59];
      if (v12[v59])
      {
        ++*&v147[2 * v12[v59]];
        ++*&v146[(v61 >> 7) & 0x1FE];
        *&v13[2 * v60++] = v59;
      }

      ++v59;
    }

    while (v59 != 512);
    v62 = *v155;
    v63 = *v145;
    v64 = v147;
    v65 = 255;
    do
    {
      v62 += *v64;
      *v64 = v62;
      v63 += *(v64 + 257);
      *(v64 + 257) = v63;
      v64 += 2;
      --v65;
    }

    while (v65);
    v66 = v60;
    if (v60 >= 1)
    {
      v67 = v13;
      v68 = v60;
      do
      {
        v69 = *v67;
        v67 += 2;
        v70 = LOBYTE(v12[v69]);
        v71 = v155[v70];
        v155[v70] = v71 + 1;
        *&v150[2 * v71] = v69;
        --v68;
      }

      while (v68);
      v72 = v150;
      v73 = v60;
      do
      {
        v74 = *v72;
        v72 += 2;
        v75 = HIBYTE(v12[v74]);
        v76 = v145[v75];
        v145[v75] = v76 + 1;
        *&v13[2 * v76] = v74;
        --v73;
      }

      while (v73);
    }

    memcpy(v14, v12, 0x400uLL);
    *(v154 + 83120) = -1;
    *&v13[2 * v60] = 512;
    v77 = (v60 + 511);
    if (v77 <= 513)
    {
      v78 = 513;
    }

    else
    {
      v78 = v60 + 511;
    }

    if (v60 > 1)
    {
      v122 = 0;
      v123 = (v78 + 1);
      v124 = 513;
      v125 = 513;
      v11 = v157;
      v79 = 0uLL;
      while (1)
      {
        do
        {
          v14[v124] = -1;
          v126 = *&v13[2 * v122];
          v127 = v14[*&v13[2 * v122]];
          v128 = v14[v125];
          v129 = v127 > v128;
          if (v127 <= v128)
          {
            v130 = v125;
          }

          else
          {
            v130 = v125 + 1;
          }

          if (v129)
          {
            v126 = v125;
          }

          else
          {
            ++v122;
          }

          v131 = v14[*&v13[2 * v122]];
          v132 = v14[v130];
          v133 = v131 > v132;
          if (v131 <= v132)
          {
            v125 = v130;
          }

          else
          {
            v125 = v130 + 1;
          }

          if (!v133)
          {
            v130 = *&v13[2 * v122];
          }

          v14[v124] = v14[v130] + v14[v126];
          if (!v133)
          {
            ++v122;
          }

          v134 = &v163[4 * v124];
          *v134 = v126;
          *(v134 + 1) = v130;
          ++v124;
        }

        while (v124 != v123);
        v135 = 0;
        v15[30] = 0uLL;
        v15[31] = 0uLL;
        v15[28] = 0uLL;
        v15[29] = 0uLL;
        v15[26] = 0uLL;
        v15[27] = 0uLL;
        v15[24] = 0uLL;
        v15[25] = 0uLL;
        v15[22] = 0uLL;
        v15[23] = 0uLL;
        v15[20] = 0uLL;
        v15[21] = 0uLL;
        v15[18] = 0uLL;
        v15[19] = 0uLL;
        v15[16] = 0uLL;
        v15[17] = 0uLL;
        v15[14] = 0uLL;
        v15[15] = 0uLL;
        v15[12] = 0uLL;
        v15[13] = 0uLL;
        v15[10] = 0uLL;
        v15[11] = 0uLL;
        v15[8] = 0uLL;
        v15[9] = 0uLL;
        v15[6] = 0uLL;
        v15[7] = 0uLL;
        v15[4] = 0uLL;
        v15[5] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v136 = v15 + v77;
        v137 = &v144[4 * v77];
        v138 = v60 + 512;
        *v15 = 0uLL;
        v15[1] = 0uLL;
        *(v15 + v77) = 0;
        do
        {
          v135 |= 2 << *v136;
          *(v15 + *(v137 - 1)) = *v136 + 1;
          v139 = *v136--;
          v140 = v139 + 1;
          v141 = *v137;
          v137 -= 4;
          *(v15 + v141) = v140;
          --v138;
        }

        while (v138 > 513);
        if (v135 < 0x10000)
        {
          break;
        }

        for (i = 0; i != 512; i += 8)
        {
          *&v14[i] = vsubq_s16(*&v14[i], vshrq_n_u16(*&v14[i], 1uLL));
        }

        v122 = 0;
        v124 = 513;
        v125 = 513;
      }
    }

    else
    {
      v79 = 0uLL;
      v15[30] = 0u;
      v15[31] = 0u;
      v15[28] = 0u;
      v15[29] = 0u;
      v15[26] = 0u;
      v15[27] = 0u;
      v15[24] = 0u;
      v15[25] = 0u;
      v15[22] = 0u;
      v15[23] = 0u;
      v15[20] = 0u;
      v15[21] = 0u;
      v15[18] = 0u;
      v15[19] = 0u;
      v15[16] = 0u;
      v15[17] = 0u;
      v15[14] = 0u;
      v15[15] = 0u;
      v15[12] = 0u;
      v15[13] = 0u;
      v15[10] = 0u;
      v15[11] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      *v15 = 0u;
      v15[1] = 0u;
      *(v15 + v77) = 0;
      v11 = v157;
    }

    v80 = 0;
    v167[0] = v79;
    v167[1] = v79;
    v166 = 0;
    v165[0] = v79;
    v165[1] = v79;
    do
    {
      v81 = *(v15 + v80);
      *(v167 + v81) += v12[v80];
      ++*(v165 + v81 + 1);
      ++v80;
    }

    while (v80 != 512);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    WORD1(v165[0]) = 0;
    do
    {
      v85 = v165 + 2 * v82;
      v84 += (v82 + 1) * *(v167 + v82 + 1);
      v83 += *(v85 + 2);
      *(v85 + 2) = v83;
      ++v82;
    }

    while (v82 != 15);
    v86 = 0;
    LOWORD(v165[0]) = v166;
    do
    {
      v87 = *(v15 + v86);
      v88 = *(v165 + v87);
      *(v165 + v87) = v88 + 1;
      *&v13[2 * v88] = v86++;
    }

    while (v86 != 512);
    if (v60 >= 1)
    {
      LOWORD(v89) = 0;
      v90 = v13;
      do
      {
        v91 = *v90;
        v90 += 2;
        v92 = *(v15 + v91);
        v93 = &v149[4 * v91];
        *v93 = v89 >> (15 - v92);
        *(v93 + 1) = v92;
        v89 = (1 << (15 - v92)) + v89;
        --v66;
      }

      while (v66);
    }

    if (a2 - v158 < (v84 + v48) >> 3)
    {
      break;
    }

    v94 = 0;
    v95 = (a1 + v158);
    do
    {
      v96 = &v15[v94];
      v168 = vld2q_s8(v96);
      *v95++ = vorrq_s8(vshlq_n_s8(v168.val[1], 4uLL), v168.val[0]);
      v35 = v94 >= 30;
      v94 += 2;
    }

    while (!v35);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 16;
    v102 = 260;
    v103 = 258;
    v104 = 256;
    v5 = v154;
    do
    {
      if ((*&v157[4 * (v99 >> 5)] >> v99))
      {
        v105 = &v160[4 * v98];
        v106 = *v105;
        v107 = *(v105 + 1);
        v108 = __clz(v106);
        v109 = 31 - v108;
        if ((v107 - 3) >= 0xF)
        {
          v110 = 15;
        }

        else
        {
          v110 = v107 - 3;
        }

        v111 = &v149[4 * (v110 | (16 * v109))];
        v112 = *(v111 + 513);
        v113 = *(v111 + 512);
        if (v112 <= v101)
        {
          v113 += v100 << v112;
        }

        else
        {
          v114 = (v113 >> (v112 - v101)) + (v100 << v101);
          v101 += 16;
          *(v164 + v104) = v114;
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }

        if (v107 >= 0x12)
        {
          if (v107 > 0x110)
          {
            *(v164 + v102) = ((v107 - 3) << 8) | 0xFF;
            v102 += 3;
          }

          else
          {
            *(v164 + v102++) = v107 - 18;
          }
        }

        ++v98;
        v115 = v97 + v107;
        v119 = v101 - v112;
        v100 = v106 - (0x80000000 >> v108);
        v101 = v101 - v112 - v109;
        if (v119 >= v109)
        {
          v100 += v113 << v109;
        }

        else
        {
          v101 = v108 + v119 - 15;
          *(v164 + v104) = (v113 << v119) + (v100 >> (v109 - v119));
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }
      }

      else
      {
        v115 = v97 + 1;
        v116 = &v149[4 * *(v162 + v97)];
        v117 = *(v116 + 1);
        v118 = *v116;
        if (v101 >= v117)
        {
          v100 = v118 + (v100 << v117);
          v101 -= v117;
        }

        else
        {
          *(v164 + v104) = (v118 >> (v117 - v101)) + (v100 << v101);
          v101 = v101 - v117 + 16;
          v104 = v103;
          v103 = v102;
          v102 += 2;
          v100 = v118;
        }
      }

      ++v99;
      v97 = v115;
    }

    while (v21 != v99);
    v10 = v156;
    if (v156 == a4)
    {
      v120 = *(v143 + 1);
      v121 = *v143;
      if (v101 >= v120)
      {
        v100 = v121 + (v100 << v120);
        LOBYTE(v101) = v101 - v120;
      }

      else
      {
        *(v164 + v104) = (v121 >> (v120 - v101)) + (v100 << v101);
        LOBYTE(v101) = v101 - v120 + 16;
        v104 = v103;
        v103 = v102;
        v102 += 2;
        v100 = v121;
      }

      v10 = v156;
    }

    *(v164 + v104) = v100 << v101;
    *(v164 + v103) = 0;
    result = v102 + v158;
  }

  while (v102);
  return 0;
}

uint64_t sub_100144738(uint64_t a1, void *(*a2)(int a1, size_t __size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = sub_100134FA4;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = sub_100134FAC;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  if (a2)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 56) = v7;
  *(a1 + 116) = 0;
  sub_1001352C0(a1 + 8);
  v8 = *(a1 + 664);
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 336) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 664) = v8 & 0xFFC0 | 0x10;
  *(a1 + 668) = 0;
  *(a1 + 100) = xmmword_1003E2D30;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 84) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 384) = 63;
  *(a1 + 696) = sub_100135240();
  *(a1 + 704) = sub_1001329F8();
  return 1;
}

double sub_10014481C(uint64_t a1)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = xmmword_1003E2D40;
  *(a1 + 288) = xmmword_1003E2D50;
  *(a1 + 304) = xmmword_1003E2D60;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 680) = 0u;
  return result;
}

uint64_t sub_100144868(uint64_t a1)
{
  (*(a1 + 48))(*(a1 + 56), *(a1 + 688));
  *(a1 + 688) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 680));
  *(a1 + 680) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 336));
  *(a1 + 336) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 168));
  *(a1 + 168) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 192));
  *(a1 + 192) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 216));
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_1001448E8(uint64_t a1)
{
  sub_100144868(a1);
  (*(a1 + 48))(*(a1 + 56), *(a1 + 120));
  *(a1 + 120) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 240));
  *(a1 + 240) = 0;
  return result;
}

BOOL sub_10014492C(uint64_t a1, uint64_t a2, __int16 a3, int a4, unsigned int a5)
{
  v6 = a4;
  v9 = (*(a1 + 40))(*(a1 + 56), (4 * (a4 + 376) + 8) * a5);
  *(a2 + 16) = a3;
  *(a2 + 18) = v6;
  *(a2 + 20) = a5;
  *a2 = v9;
  *(a2 + 8) = v9 + 8 * a5;
  return v9 != 0;
}

uint64_t sub_10014499C(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned int a4, int8x16_t a5)
{
  v6 = a2;
  if (!a2)
  {
    return v6;
  }

  v8 = 0;
  v9 = -a2;
  v10 = 8;
  v11 = &unk_1003EBA20;
  v12 = xmmword_1003E2380;
  v5.i32[0] = -1;
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v14.i64[0] = 0x800000008;
  v14.i64[1] = 0x800000008;
  v15 = 1;
  v16 = (a3 + a4);
  do
  {
    v17 = &a3->i8[5];
    if (&a3->u8[5] > v16)
    {
      return 0;
    }

    v18 = (a3->i64 + 4);
    v19 = a3->u32[0];
    v20 = v19 >> 16;
    v21 = a3->i32[0];
    if (v21 == 0xFFFF && !v18->i8[0])
    {
      if (v19 < 0x10000)
      {
        break;
      }

      if (&v17[v20] <= v16)
      {
        v87 = v16;
        if (v20 + v8 <= v6)
        {
          v83 = HIWORD(a3->i32[0]);
        }

        else
        {
          v83 = v6 - v8;
        }

        v84 = v10;
        v85 = v11;
        v88 = v5;
        v89 = v12;
        memcpy((a1 + v8), v17, v83);
        v14.i64[0] = 0x800000008;
        v14.i64[1] = 0x800000008;
        v13.i64[0] = -1;
        v13.i64[1] = -1;
        v5 = v88;
        v12 = v89;
        v11 = v85;
        v10 = v84;
        v8 = v8 + v83;
        a3 = &v17[v83];
        v16 = v87;
        continue;
      }

      return 0;
    }

    a5.i32[0] = a3->i32[0];
    *a5.i8 = vcnt_s8(*a5.i8);
    a5.i16[0] = vaddlv_u8(*a5.i8);
    v22 = (v18 + a5.u32[0]);
    if (v8 + 128 > v6 || (a3[11].i64 + 4) > v16)
    {
      a5.i32[0] = HIWORD(a3->i32[0]);
      *a5.i8 = vcnt_s8(*a5.i8);
      a5.i16[0] = vaddlv_u8(*a5.i8);
      a3 = (v22 + (2 * a5.i32[0]));
      if (a3 > v16)
      {
        return 0;
      }

      v72 = 1;
      while (1)
      {
        v73 = v8;
        if ((v72 & v20) != 0)
        {
          v74 = v22->u16[0];
          v22 = (v22 + 2);
          v10 = v74;
        }

        if ((v72 & v21) != 0)
        {
          v76 = v18->u8[0];
          v18 = (v18 + 1);
          v75 = v76;
        }

        else
        {
          v75 = 0;
        }

        a5.i32[0] = v75;
        *a5.i8 = vcnt_s8(*a5.i8);
        a5.i16[0] = vaddlv_u8(*a5.i8);
        if (&a3->i8[a5.u32[0]] > v16 || v8 < v10 && v75 != 255)
        {
          return 0;
        }

        v77 = 0;
        v78 = v8 - v10;
        v79 = v9 + v8;
        while (1)
        {
          LODWORD(v8) = v73 + v77;
          if (v77 == 8)
          {
            break;
          }

          v80 = 1 << v77;
          v81 = v77 + 1;
          v82 = (a1 + (v78 + v77));
          if ((v80 & v75) != 0)
          {
            v82 = a3;
            a3 = (a3 + 1);
          }

          *(a1 + v8) = v82->i8[0];
          v77 = v81;
          if (!(v79 + v81))
          {
            return v6;
          }
        }

        v72 *= 2;
        if (v72 >= 0x10000)
        {
          v8 = (v73 + 8);
          goto LABEL_56;
        }
      }
    }

    v23 = vcntq_s8(vdupq_n_s16(v20));
    v24 = vaddq_s8(v23, v23).u16[0];
    a5 = vorrq_s8(vandq_s8(vdupq_n_s16(v10), vcltzq_s8(v11[BYTE2(v19)])), vqtbl1q_s8(*v22, v11[BYTE2(v19)]));
    v25 = *(v22 + v24);
    a3 = (v22 + ((v24 + HIBYTE(v24)) & 0x3E));
    v26 = vorrq_s8(vandq_s8(vdupq_laneq_s16(a5, 7), vcltzq_s8(*(v11 + ((v19 >> 20) & 0xFF0)))), vqtbl1q_s8(v25, *(v11 + ((v19 >> 20) & 0xFF0))));
    v10 = v26.u16[7];
    if (v6 <= v8)
    {
      continue;
    }

    v27 = 0;
    *v28.i8 = qword_1003EAA20[v19];
    v25.i32[0] = v19;
    v29 = vcnt_s8(*v25.i8);
    v29.i16[0] = vaddlv_u8(v29);
    v28.u64[1] = vqadd_u8(qword_1003EAA20[BYTE1(v19)], vdup_lane_s8(v29, 0));
    v30 = vqtbl1q_s8(*v18, v28);
    v31 = vextq_s8(v26, v26, 8uLL).u64[0];
    v32 = vextq_s8(v30, v30, 8uLL).u64[0];
    v33 = vzip2_s8(v32, *a5.i8);
    *v25.i8 = vzip1_s8(v32, *a5.i8);
    v34 = vextq_s8(a5, a5, 8uLL).u64[0];
    v35 = vzip2_s8(*v30.i8, *a5.i8);
    v36 = vzip1_s8(*v30.i8, *a5.i8);
    do
    {
      if (v27 > 1)
      {
        v37 = *v26.i8;
        v38 = *v25.i8;
        if (v27 != 2)
        {
          v37 = v31;
          v38 = v33;
        }
      }

      else
      {
        v37 = *a5.i8;
        v38 = v36;
        if (v27)
        {
          v37 = v34;
          v38 = v35;
        }
      }

      v39 = vdupq_n_s32(v8);
      v40 = vaddq_s32(v39, v12);
      v41 = vceq_s16((*&v38 & 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
      v42 = vmovl_s16(vbic_s8(vmovn_s32(vcgtq_u32(vmovl_u16(v37), v40)), v41));
      v42.i32[0] = vmaxvq_u32(v42);
      v43 = v42.i32[0];
      if (v42.i32[0] < 0)
      {
        return 0;
      }

      v44 = vuzp1_s8(v38, *a5.i8);
      v91 = v44.i32[0];
      v44.i16[2] = v44.i16[1];
      v45 = vandq_s8(vandq_s8(vsubw_u16(v40, v37), vmovl_s16(vmvn_s8(v41))), vdupq_lane_s32(*&vcgtq_s32(v42, v5), 0));
      v46 = v44.u16[1];
      v44.i32[0] = v44.u16[0];
      v47 = vcnt_s8(v44);
      v47.i16[0] = vaddlv_u8(v47);
      v48 = qword_1003EAA20[BYTE1(v91)];
      v49 = v47.i32[0];
      *v50.i8 = qword_1003EAA20[v91];
      v47.i32[0] = v91;
      v51 = vcnt_s8(v47);
      v51.i16[0] = vaddlv_u8(v51);
      v50.u64[1] = vqadd_u8(v48, vdup_lane_s8(v51, 0));
      *v52.i8 = qword_1003EAA20[v46];
      v53 = vqtbl1q_s8(*a3, v50);
      v48.i32[0] = v46;
      v54 = vcnt_s8(v48);
      v54.i16[0] = vaddlv_u8(v54);
      v55 = vdup_lane_s8(v54, 0);
      v56 = vceqq_s8(v50, v13);
      v52.u64[1] = vqadd_u8(qword_1003EAA20[HIBYTE(v46)], v55);
      v57 = vqtbl1q_s8(*(a3 + v49), v52);
      v58 = vceqq_s8(v52, v13);
      if ((vminvq_u32(vcgeq_u32(v39, vaddq_s32(v45, v14))) & 0x80000000) != 0)
      {
        v68.i64[0] = *(a1 + v45.u32[0]);
        v69.i64[0] = *(a1 + v45.u32[2]);
        v68.i64[1] = *(a1 + v45.u32[1]);
        v69.i64[1] = *(a1 + v45.u32[3]);
        v67 = vorrq_s8(vandq_s8(v69, v58), v57);
        v70 = (a1 + v8);
        *v70 = vorrq_s8(vandq_s8(v68, v56), v53);
        v70[1] = v67;
        v8 = (v8 + 32);
        goto LABEL_29;
      }

      v59 = 0;
      v60 = vextq_s8(v57, v57, 8uLL).u64[0];
      v61 = vextq_s8(v58, v58, 8uLL).u64[0];
      v62 = vextq_s8(v53, v53, 8uLL).u64[0];
      v63 = vextq_s8(v56, v56, 8uLL).u64[0];
      while (1)
      {
        v90 = v45;
        v64 = *(a1 + *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))));
        if (v59 > 1)
        {
          break;
        }

        if (v59)
        {
          v65 = *&v63;
        }

        else
        {
          v65 = *v56.i64;
        }

        if (v59)
        {
          v66 = *&v62;
        }

        else
        {
          v66 = *v53.i64;
        }

LABEL_26:
        *(a1 + v8) = vorr_s8(vand_s8(v64, *&v65), *&v66);
        LODWORD(v8) = v8 + 8;
        ++v59;
      }

      v65 = *v58.i64;
      v66 = *v57.i64;
      if (v59 == 2)
      {
        goto LABEL_26;
      }

      *v67.i8 = vorr_s8(vand_s8(v64, v61), v60);
      *(a1 + v8) = v67.i64[0];
      v8 = (v8 + 8);
LABEL_29:
      v15 &= ~(v43 >> 31);
      v67.i32[0] = v46;
      v71 = vcnt_s8(*v67.i8);
      v71.i16[0] = vaddlv_u8(v71);
      a3 = (a3 + v71.i32[0] + v49);
      if (v27 > 2)
      {
        break;
      }

      ++v27;
    }

    while (v8 < v6);
LABEL_56:
    ;
  }

  while (v8 < v6);
  v6 = v8;
  if (!v15)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_100144EF0(char *__dst, size_t __n, unsigned __int8 *a3, unint64_t a4)
{
  v18 = a3;
  v19 = __dst;
  v5 = __dst;
  if (!__n)
  {
    return v5 - __dst;
  }

  v7 = __n;
  v5 = __dst;
  while (1)
  {
    if (a4 < 4)
    {
      return 0;
    }

    v8 = *a3;
    if (*a3 == 758412898)
    {
      break;
    }

    if (v8 != 825521762)
    {
      if (v8 == 607417954)
      {
        return v5 - __dst;
      }

      else
      {
        return 0;
      }
    }

    v9 = a4 - 12;
    if (a4 < 0xC)
    {
      return 0;
    }

    v11 = *(a3 + 1);
    v10 = *(a3 + 2);
    v12 = a3 + 12;
    v18 = a3 + 12;
    a4 = v9 - v10;
    if (v9 < v10 || v7 >= 0x81 && v10 >= 0x81 && lz4_decode_asm(&v19, __dst, &v5[v7 - 128], &v18, &v10[v12 - 128]))
    {
      return 0;
    }

    if (sub_10036CFC8(&v19, __dst, &v5[v7], &v18, &v10[v12]))
    {
      return 0;
    }

    v13 = v19;
    v14 = v19 - v5;
    if (v19 - v5 == v7)
    {
      return v13 - __dst;
    }

    result = 0;
    if (v14 != v11)
    {
      return result;
    }

    a3 = v18;
    if ((v18 - v12) != v10)
    {
      return result;
    }

    v5 = v19;
LABEL_20:
    v7 -= v14;
    if (!v7)
    {
      return v5 - __dst;
    }
  }

  v16 = a4 - 8;
  if (a4 < 8)
  {
    return 0;
  }

  v14 = *(a3 + 1);
  v17 = a3 + 8;
  v18 = a3 + 8;
  a4 = v16 - v14;
  if (v16 < v14)
  {
    return 0;
  }

  if (v7 > v14)
  {
    memcpy(v5, v17, v14);
    v5 = &v19[v14];
    a3 = &v18[v14];
    v18 += v14;
    v19 += v14;
    goto LABEL_20;
  }

  memcpy(v5, v17, v7);
  v13 = &v19[v7];
  return v13 - __dst;
}

__n128 sub_1001450A0(__n128 *a1, void *__b)
{
  memset_pattern16(__b, &unk_1003E2EB0, 0x7580uLL);
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  *a1 = result;
  a1[1].n128_u64[0] = __b;
  a1[1].n128_u8[13] = 0;
  return result;
}

uint64_t sub_10014513C(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 2 && a1)
  {
    v3 = dword_1003E2F10[a2];
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 80) = v3;
    *(a1 + 84) = a2;
    if (a2)
    {
      v4 = 18;
    }

    else
    {
      v4 = 15;
    }

    v5 = 2 << v4;
    *(a1 + 88) = v4;
    *(a1 + 92) = (2 << v4) + 16;
    v6 = ((v3 & 1) << 14) + 0x4000;
    *(a1 + 96) = v6;
    *(a1 + 100) = 0x30000000002;
    v7 = (v3 >> 2) & 1 | 0xC;
    v8 = v6 >> 2;
    *(a1 + 108) = v7;
    *(a1 + 112) = v6 >> 2;
    v9 = (v6 >> 2) | 3;
    *(a1 + 116) = v9;
    v10 = (a1 + 199) & 0xFFFFFFFFFFFFFFC0;
    v11 = (v10 + (v5 + 79)) & 0xFFFFFFFFFFFFFFC0;
    *a1 = v10;
    *(a1 + 8) = v11;
    v12 = v11 + (v6 >> 2) + 66;
    v13 = (v12 + (v6 >> 2)) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 16) = v12 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 24) = v13;
    *(a1 + 32) = (v13 + 3135) & 0xFFFFFFFFFFFFFFC0;
    return (v5 + v8 + v9 + 5080);
  }

  return v2;
}

int *sub_10014521C(int *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  result = sub_10014513C(a5, a6);
  if (result)
  {
    result = 0;
    *(a5 + 56) = a4;
    *(a5 + 40) = a3;
    *(a5 + 48) = a1 + a2 - 31;
    if (a1)
    {
      if (a2 >= 0x23)
      {
        v12 = a1 + 1;
        *a1 = (*(a5 + 80) << 24) | 0x4D425A;
        v13 = *a5;
        v14 = *(a5 + 92);
        *&v15 = 0x8000800080008;
        *(&v15 + 1) = 0x8000800080008;
        v24[0] = v15;
        v24[1] = v15;
        if (v14 >= 0x20)
        {
          v17 = 0;
          do
          {
            v18 = (v13 + v17);
            *v18 = v15;
            v18[1] = v15;
            v16 = v17 + 32;
            v19 = v17 + 64;
            v17 += 32;
          }

          while (v19 <= v14);
        }

        else
        {
          v16 = 0;
        }

        memcpy((v13 + v16), v24, v14 - v16);
        if (a4)
        {
          v20 = 0;
          v21 = *(a5 + 96);
          while (1)
          {
            v22 = a4 - v20 >= v21 ? v21 : a4 - v20;
            result = sub_10014535C(a5, v12, v20, v22);
            if (!result)
            {
              break;
            }

            v12 = result;
            v21 = *(a5 + 96);
            v20 += v21;
            if (v20 >= a4)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v23 = sub_10014535C(a5, v12, 0, 0);
          if (v23)
          {
            return (v23 - a1);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *sub_10014535C(uint64_t *a1, uint64_t a2, unsigned int a3, size_t __n)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = a1[6];
    v8 = (a2 + 6);
    if (a2 + 6 <= v7)
    {
      v9 = __n;
      v10 = a3;
      if (__n < 0x91)
      {
        goto LABEL_174;
      }

      v344 = (a2 + 15);
      if (a2 + 15 > v7)
      {
        goto LABEL_174;
      }

      v11 = *(a1 + 26);
      if (v11)
      {
        v12 = 0;
        v13 = a1[3];
        v14 = xmmword_10037C0E0;
        v15 = xmmword_10037C0F0;
        v16.i64[0] = 0x800000008;
        v16.i64[1] = 0x800000008;
        do
        {
          *v13 = v15;
          v13[1] = v14;
          v13 += 2;
          v12 += 8;
          v15 = vaddq_s32(v15, v16);
          v14 = vaddq_s32(v14, v16);
        }

        while (v12 < v11);
      }

      v17 = *(a1 + 21);
      v327 = __n;
      v325 = (a2 + 6);
      switch(v17)
      {
        case 2:
          v34 = a1[5];
          v36 = a1[2];
          v35 = a1[3];
          v338 = a1[1];
          v37 = *(a1 + 14) - 16;
          if (v9 + v10 < v37)
          {
            v37 = v9 + v10;
          }

          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v386 = 0u;
          v387 = 0u;
          v324 = v37;
          if (v10 + 128 > v37)
          {
            v38 = 0;
            v39 = 0;
            v40 = 8;
            v41 = v10;
LABEL_77:
            v196 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v39 + v196 - v41 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v41 < v196; v41 += 8)
            {
              v197 = 0;
              v198 = 0;
              v199 = (v41 - v10) >> 3;
              v36[v199] = 0;
              do
              {
                if (v41 + v198 < *(v6 + 14))
                {
                  v200 = *(v34 + v41 + v198);
                  if (v200 != *(v34 + v41 - v40 + v198))
                  {
                    *(v344 + v39) = v200;
                    v197 = (v36[v199] | (1 << v198));
                    v36[v199] |= 1 << v198;
                    ++v39;
                  }
                }

                ++v198;
              }

              while (v198 != 8);
              v35[v197] += 0x10000;
            }

            v111 = v39;
            *(v6 + 30) = v39;
            *(v6 + 31) = v38;
LABEL_116:
            v257 = v344 + v111;
            break;
          }

          v39 = 0;
          v38 = 0;
          v322 = v5 + 143;
          v112 = 8;
          v113 = vdupq_n_s32(0x9E3779B1);
          v114.i64[0] = 0x202020202020202;
          v114.i64[1] = 0x202020202020202;
          v115.i64[0] = 0x8000800080008;
          v115.i64[1] = 0x8000800080008;
          v41 = v10;
          v331 = v35;
          v334 = v34;
          v329 = v36;
          while (v322 + v39 <= v6[6])
          {
            v116 = 0;
            v117 = &v346;
            v118 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v389 = *(v34 + v41 + v116);
              *v117 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23A0), v113), v118);
              v117[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23B0), v113), v118);
              v117[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23C0), v113), v118);
              v117[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v389, xmmword_1003E23D0), v113), v118);
              v117 += 4;
              v49 = v116 >= 0x70;
              v116 += 16;
            }

            while (!v49);
            if (!v41)
            {
              *v36 = 255;
              v35[255] += 0x10000;
              *v344 = *v34;
              v39 = 8;
              v41 = 8;
            }

            for (i = v41 == 8; i != 16; ++i)
            {
              v120 = v41;
              v121 = (v34 + v41);
              v122 = *v121;
              v123 = (v41 - v10) >> 3;
              v124 = (&v346 + 2 * i);
              if (v121->i64[0] == *(v121->i64 - v112))
              {
                v36[v123] = 0;
                *v35 += 0x10000;
                v125 = *v6;
                *(v125 + 2 * v124[1]) = (v120 + 1) | (*(*v6 + 2 * v124[1]) << 16);
                *(v125 + 2 * v124[2]) = (v120 + 2) | (*(v125 + 2 * v124[2]) << 16);
                *(v125 + 2 * v124[3]) = (v120 + 3) | (*(v125 + 2 * v124[3]) << 16);
                *(v125 + 2 * v124[5]) = (v120 + 5) | (*(v125 + 2 * v124[5]) << 16);
                *(v125 + 2 * v124[6]) = (v120 + 6) | (*(v125 + 2 * v124[6]) << 16);
                *(v125 + 2 * v124[7]) = (v120 + 7) | (*(v125 + 2 * v124[7]) << 16);
                *(v125 + 2 * v124[4]) = (v120 + 4) | (*(v125 + 2 * v124[4]) << 16);
                *(v125 + 2 * *v124) = v120 | (*(v125 + 2 * *v124) << 16);
              }

              else
              {
                v342 = v39;
                v126 = *v6;
                v127 = 2 * *v124;
                v128 = *(*v6 + v127);
                v129 = 2 * v124[4];
                v130 = *(*v6 + v129);
                v131 = 2 * v124[2];
                v132 = *(*v6 + v131);
                v133 = 2 * v124[3];
                v134 = *(*v6 + v133);
                v135 = 2 * v124[1];
                v136 = *(*v6 + v135);
                v137 = 2 * v124[5];
                v138 = *(*v6 + v137);
                v139 = 2 * v124[6];
                v140 = *(*v6 + v139);
                v141 = 2 * v124[7];
                v142 = *(*v6 + v141);
                *(v126 + v135) = (v120 + 1) | (v136 << 16);
                *(v126 + v131) = (v120 + 2) | (*(v126 + v131) << 16);
                *(v126 + v133) = (v120 + 3) | (*(v126 + v133) << 16);
                *(v126 + v137) = (v120 + 5) | (*(v126 + v137) << 16);
                *(v126 + v139) = (v120 + 6) | (*(v126 + v139) << 16);
                *(v126 + v141) = (v120 + 7) | (*(v126 + v141) << 16);
                *(v126 + v129) = (v120 + 4) | (*(v126 + v129) << 16);
                *(v126 + v127) = v120 | (*(v126 + v127) << 16);
                v382.i16[0] = v120 - v128;
                v382.i16[1] = v120 + 4 - v130;
                v382.i16[2] = v120 + 2 - v132;
                v382.i16[3] = v120 + 3 - v134;
                v382.i16[4] = v120 + 1 - v136;
                v382.i16[5] = v120 + 5 - v138;
                v382.i16[6] = v120 + 6 - v140;
                v382.i16[7] = v120 + 7 - v142;
                v143 = *(v121 - (v120 - v128));
                v144 = *(v121 - v382.u16[1]);
                v145 = *(v121 - v382.u16[2]);
                v146 = *(v121 - v382.u16[3]);
                v147 = *(v121 - v382.u16[4]);
                v148 = *(v121 - v382.u16[5]);
                v149 = *(v121 - v382.u16[6]);
                v150 = *(v121 - v382.u16[7]);
                v383.i16[0] = v120 - HIWORD(v128);
                v151 = *(v121 - (v120 - HIWORD(v128)));
                v383.i16[1] = v120 + 4 - HIWORD(v130);
                v152 = *(v121 - v383.u16[1]);
                v383.i16[2] = v120 + 2 - HIWORD(v132);
                v153 = *(v121 - v383.u16[2]);
                v383.i16[3] = v120 + 3 - HIWORD(v134);
                v154 = *(v121 - v383.u16[3]);
                v383.i16[4] = v120 + 1 - HIWORD(v136);
                v155 = *(v121 - v383.u16[4]);
                v383.i16[5] = v120 + 5 - HIWORD(v138);
                v156 = *(v121 - v383.u16[5]);
                v383.i16[6] = v120 + 6 - HIWORD(v140);
                v157 = *(v121 - v383.u16[6]);
                v383.i16[7] = v120 + 7 - HIWORD(v142);
                v158 = vceqzq_s8(vuzp2q_s8(v382, v383));
                v159 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v143, v122)))));
                v160 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v144, v122)))));
                v161 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v145, v122)))));
                v162 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v146, v122)))));
                v163 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v147, v122)))));
                v164 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v148, v122)))));
                v165 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v149, v122)))));
                v166.i64[0] = vzip2q_s32(v159, v160).u64[0];
                v167.i64[0] = vzip2q_s32(v163, v164).u64[0];
                v166.i64[1] = __PAIR64__(v162.u32[2], v161.u32[2]);
                v167.i32[2] = v165.i32[2];
                v168 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v150, v122)))));
                v167.i32[3] = v168.i32[2];
                v159.i64[0] = vzip1q_s32(v159, v160).u64[0];
                v164.i64[0] = vzip1q_s32(v163, v164).u64[0];
                v159.i64[1] = __PAIR64__(v162.u32[0], v161.u32[0]);
                v164.i64[1] = __PAIR64__(v168.u32[0], v165.u32[0]);
                v169 = vuzp1q_s16(v159, v164);
                v170 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v151, v122)))));
                v171 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v152, v122)))));
                v172 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v153, v122)))));
                v173 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v154, v122)))));
                v174 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v155, v122)))));
                v175 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v156, v122)))));
                v176 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v157, v122)))));
                v177 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v121 - v383.u16[7]), v122)))));
                v164.i64[0] = vzip2q_s32(v170, v171).u64[0];
                v163.i64[0] = vzip2q_s32(v174, v175).u64[0];
                v164.i64[1] = __PAIR64__(v173.u32[2], v172.u32[2]);
                v163.i64[1] = __PAIR64__(v177.u32[2], v176.u32[2]);
                v171.i64[0] = vzip1q_s32(v170, v171).u64[0];
                v175.i64[0] = vzip1q_s32(v174, v175).u64[0];
                v385 = 0;
                v384 = v112;
                v386 = vsubq_s8(vbicq_s8(v114, v158), v158);
                v380 = 0;
                v381 = 0;
                v171.i64[1] = __PAIR64__(v173.u32[0], v172.u32[0]);
                v175.i64[1] = __PAIR64__(v177.u32[0], v176.u32[0]);
                v178 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v121 - v112), v122)))));
                LOBYTE(v126) = v178.i8[0];
                v179 = v178.i16[0] & 0xFF00 | (v178.i16[4] << 8);
                v380 = (v178.i16[0] | (v178.i16[4] << 8));
                v379 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v164, v163), 8uLL), vorrq_s8(vuzp1q_s16(v171, v175), vcgtq_u16(v115, v383)));
                v378 = vorrq_s8(vorrq_s8(vshlq_n_s16(vuzp1q_s16(v166, v167), 8uLL), v169), vcgtq_u16(v115, v382));
                v180 = vcntq_s8(v378);
                v181 = vcntq_s8(v379);
                v182 = vaddq_s8(vshlq_n_s8(vaddq_s8(vuzp1q_s8(v180, v181), v386), 2uLL), vuzp2q_s8(v180, v181));
                v345 = v182;
                v183 = vceqzq_s16(v379);
                v184 = vminvq_u16(vbicq_s8(vtstq_s16(v378, v378), v183));
                v183.i32[0] = v126;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                LODWORD(v126) = v183.i32[0];
                v183.i32[0] = v179;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                v185 = v183.i32[0] + 4 * v126;
                if ((v184 & 0x8000) != 0)
                {
                  v191 = vminvq_s16(vminq_s16(vzip1q_s8(xmmword_1003E2EF0, v182), vzip2q_s8(xmmword_1003E2EF0, v182)));
                  v188 = v191;
                  if (v185 <= v191 >> 8)
                  {
                    v188 = 16;
                  }

                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                }

                else
                {
                  v186 = 0;
                  v187 = 0;
                  v188 = 16;
                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                  do
                  {
                    v190 = v345.u8[v186] - v187;
                    if (v185 > v190)
                    {
                      v187 = 4 * (v378.i16[v186] == 0);
                      v185 = v190;
                      v188 = v186;
                    }

                    ++v186;
                  }

                  while (v186 != 16);
                }

                v112 = v382.u16[v188];
                v192 = v378.u8[2 * v188];
                *(v338 + v38) = v112;
                v193 = v386.u8[v188];
                v38 += v193;
                *(v344 + v189) = vqtbl1_s8(v122, qword_1003EB220[*&v192]);
                v194 = v192.i32[0] | (v193 << 8);
                v195 = vcnt_s8(v192);
                v195.i16[0] = vaddlv_u8(v195);
                v36[v123] = v194;
                v39 = v189 + v195.i32[0];
                v35[v194] += 0x10000;
              }

              v41 = v120 + 8;
            }

            if (v120 + 136 > v324)
            {
              v40 = v112;
              v9 = v327;
              v5 = a2;
              goto LABEL_77;
            }
          }

          v257 = 0;
          v9 = v327;
          v5 = a2;
          break;
        case 1:
          v26 = a1[5];
          v27 = a1[2];
          v28 = a1[3];
          v337 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v29 = *(a1 + 14) - 16;
          }

          else
          {
            v29 = __n + a3;
          }

          v30 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v321 = 8;
          v383 = 0uLL;
          v333 = v29;
          if (a3 + 128 > v29)
          {
            v31 = 0;
            v32 = 0;
            v33 = a3;
LABEL_45:
            v106 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v32 + v106 - v33 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v33 < v106; v33 += 8)
            {
              v107 = 0;
              v108 = 0;
              v109 = (v33 - v10) >> 3;
              v27[v109] = 0;
              do
              {
                if (v33 + v108 < *(v6 + 14))
                {
                  v110 = *(v26 + v33 + v108);
                  if (v110 != *(v26 + v33 - v321 + v108))
                  {
                    *(v344 + v32++) = v110;
                    v107 = (v27[v109] | (1 << v108));
                    v27[v109] |= 1 << v108;
                  }
                }

                ++v108;
              }

              while (v108 != 8);
              v28[v107] += 0x10000;
            }

            v111 = v32;
            *(v6 + 30) = v32;
            *(v6 + 31) = v31;
            goto LABEL_116;
          }

          v32 = 0;
          v31 = 0;
          v330 = a2 + 143;
          v328 = -a3;
          v42 = vdupq_n_s32(0x9E3779B1);
          v43.i64[0] = 0xFF00FF00FF00FFLL;
          v43.i64[1] = 0xFF00FF00FF00FFLL;
          v44.i64[0] = 0x8000800080008;
          v44.i64[1] = 0x8000800080008;
          v33 = a3;
          v45 = 8;
          while (v330 + v32 <= v6[6])
          {
            v46 = 0;
            v47 = &v346;
            v48 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v390 = *(v26 + v33 + v46);
              *v47 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23A0), v42), v48);
              v47[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23B0), v42), v48);
              v47[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23C0), v42), v48);
              v47[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v390, xmmword_1003E23D0), v42), v48);
              v47 += 4;
              v49 = v46 >= 0x70;
              v46 += 16;
            }

            while (!v49);
            if (!v33)
            {
              *v27 = 255;
              v28[255] += 0x10000;
              *v344 = *v26;
              v32 = 8;
              v33 = 8;
            }

            v50 = v328 + v33;
            v51 = (&v347 + 2 * (v33 == 8));
            if (v33 == 8)
            {
              v52 = -15;
            }

            else
            {
              v52 = -16;
            }

            do
            {
              v53 = (v26 + v33);
              v54 = *v53;
              if (v53->i64[0] == *(v53->i64 - v45))
              {
                v27[v50 >> 3] = 0;
                *v28 += 0x10000;
                v55 = *v6;
                *(*v6 + 2 * *(v51 - 3)) = v33 + 1;
                *(v55 + 2 * *(v51 - 2)) = v33 + 2;
                *(v55 + 2 * *(v51 - 1)) = v33 + 3;
                *(v55 + 2 * v51[1]) = v33 + 5;
                *(v55 + 2 * v51[2]) = v33 + 6;
                *(v55 + 2 * v51[3]) = v33 + 7;
                *(v55 + 2 * *v51) = v33 + 4;
                *(v55 + 2 * *(v51 - 4)) = v33;
              }

              else
              {
                v56 = *v6;
                v58 = *(v51 - 4);
                v57 = *(v51 - 3);
                v59 = *(*v6 + 2 * v58);
                v60 = *v51;
                v61 = v51[1];
                v62 = v31;
                v63 = *(v56 + 2 * v60);
                v64 = v28;
                v65 = v26;
                v66 = v27;
                v67 = *(v51 - 2);
                v68 = *(v51 - 1);
                v69 = *(v56 + 2 * v67);
                v70 = *(v56 + 2 * v68);
                v71 = *(v56 + 2 * v57);
                v72 = *(v56 + 2 * v61);
                v341 = v45;
                v73 = v51[2];
                v74 = v51[3];
                v75 = *(v56 + 2 * v73);
                v76 = *(v56 + 2 * v74);
                *(v56 + 2 * v57) = v33 + 1;
                *(v56 + 2 * v67) = v33 + 2;
                *(v56 + 2 * v68) = v33 + 3;
                *(v56 + 2 * v61) = v33 + 5;
                *(v56 + 2 * v73) = v33 + 6;
                *(v56 + 2 * v74) = v33 + 7;
                *(v56 + 2 * v60) = v33 + 4;
                *(v56 + 2 * v58) = v33;
                v378.i16[0] = v33 - v59;
                v27 = v66;
                v26 = v65;
                v28 = v64;
                v378.i16[1] = v33 + 4 - v63;
                v378.i16[2] = v33 + 2 - v69;
                v378.i16[3] = v33 + 3 - v70;
                v378.i16[4] = v33 + 1 - v71;
                v378.i16[5] = v33 + 5 - v72;
                v378.i16[6] = v33 + 6 - v75;
                v378.i16[7] = v33 + 7 - v76;
                v77 = *(v53 - (v33 - v59));
                v78 = *(v53 - v378.u16[1]);
                v79 = *(v53 - v378.u16[2]);
                v80 = *(v53 - v378.u16[3]);
                v81 = *(v53 - v378.u16[4]);
                v82 = *(v53 - v378.u16[5]);
                v379 = v341;
                v83 = vmovn_s16(vcgtq_u16(v378, v43));
                v84 = vand_s8(v83, 0x202020202020202);
                v85 = vmvn_s8(v83);
                v86 = vextq_s8(v30, v30, 8uLL).u64[0];
                *v30.i8 = vsub_s8(v84, v85);
                v87 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v77, v54)))));
                v88 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v78, v54)))));
                v89 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v79, v54)))));
                v90 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v80, v54)))));
                v91 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v81, v54)))));
                v92 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v82, v54)))));
                v93 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v378.u16[6]), v54)))));
                v94 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v378.u16[7]), v54)))));
                v95.i64[0] = vzip2q_s32(v87, v88).u64[0];
                v96.i64[0] = vzip2q_s32(v91, v92).u64[0];
                v95.i64[1] = __PAIR64__(v90.u32[2], v89.u32[2]);
                v96.i64[1] = __PAIR64__(v94.u32[2], v93.u32[2]);
                v87.i64[0] = vzip1q_s32(v87, v88).u64[0];
                v88.i64[0] = vzip1q_s32(v91, v92).u64[0];
                v87.i64[1] = __PAIR64__(v90.u32[0], v89.u32[0]);
                v88.i64[1] = __PAIR64__(v94.u32[0], v93.u32[0]);
                v97 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v95, v96), 8uLL), vorrq_s8(vuzp1q_s16(v87, v88), vcgtq_u16(v44, v378)));
                v98 = vcntq_s8(v97);
                v30.i64[1] = v86;
                v387 = 0uLL;
                v6 = a1;
                v99 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v341), v54)))));
                LOBYTE(v56) = v99.i8[0];
                v100 = v99.i16[0] & 0xFF00 | (v99.i16[4] << 8);
                *&v387 = (v99.i16[0] | (v99.i16[4] << 8));
                v386 = v97;
                v99.i64[0] = vuzp2q_s8(v98, xmmword_1003E23A0).u64[0];
                *v97.i8 = vadd_s8(vshl_n_s8(vadd_s8(vmovn_s16(v98), *v30.i8), 2uLL), *v99.i8);
                v99.i32[0] = v56;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                LODWORD(v56) = v99.i32[0];
                v99.i32[0] = v100;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                v101 = vminvq_s16(vzip1q_s8(xmmword_1003E2F00, v97));
                if (v99.i32[0] + 4 * v56 <= v101 >> 8)
                {
                  v102 = 8;
                }

                else
                {
                  v102 = v101;
                }

                v45 = v378.u16[v102];
                v103 = v386.u8[2 * v102];
                *(v337 + v62) = v45;
                v382 = v30;
                v104 = v382.u8[v102];
                *(v344 + v32) = vqtbl1_s8(v54, qword_1003EB220[*&v103]);
                v27[v50 >> 3] = v103.i16[0] | (v104 << 8);
                v64[v103.i32[0] | (v104 << 8)] += 0x10000;
                v31 = v62 + v104;
                v105 = vcnt_s8(v103);
                v105.i16[0] = vaddlv_u8(v105);
                v32 += v105.i32[0];
              }

              v33 += 8;
              v50 += 8;
              v51 += 8;
              v49 = __CFADD__(v52++, 1);
            }

            while (!v49);
            v9 = v327;
            v5 = a2;
            if (v33 + 128 > v333)
            {
              v321 = v45;
              v10 = a3;
              goto LABEL_45;
            }
          }

          v257 = 0;
          v10 = a3;
          break;
        case 0:
          v18 = a1[5];
          v19 = a1[2];
          v20 = a1[3];
          v340 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v21 = *(a1 + 14) - 16;
          }

          else
          {
            v21 = __n + a3;
          }

          v22 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v323 = 8;
          v383 = 0uLL;
          v336 = v21;
          if (a3 + 128 <= v21)
          {
            v24 = 0;
            v23 = 0;
            v335 = a2 + 143;
            v332 = -a3;
            v201 = vdupq_n_s32(0x9E3779B1);
            v202.i64[0] = 0xFF00FF00FF00FFLL;
            v202.i64[1] = 0xFF00FF00FF00FFLL;
            v203.i64[0] = 0x8000800080008;
            v203.i64[1] = 0x8000800080008;
            v25 = a3;
            v204 = 8;
            while (v335 + v24 <= v6[6])
            {
              v205 = 0;
              v206 = &v346;
              v207 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
              do
              {
                v391 = *(v18 + v25 + v205);
                *v206 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23A0), v201), v207);
                v206[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23B0), v201), v207);
                v208 = vshlq_u32(vmulq_s32(vqtbl2q_s8(v391, xmmword_1003E23D0), v201), v207);
                v206[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23C0), v201), v207);
                v206[3] = v208;
                v206 += 4;
                v49 = v205 >= 0x70;
                v205 += 16;
              }

              while (!v49);
              if (!v25)
              {
                *v19 = 255;
                v20[255] += 0x10000;
                *v344 = *v18;
                v24 = 8;
                v25 = 8;
              }

              v209 = v332 + v25;
              v210 = (&v347 + 2 * (v25 == 8));
              if (v25 == 8)
              {
                v211 = -15;
              }

              else
              {
                v211 = -16;
              }

              do
              {
                v212 = (v18 + v25);
                v213 = *v212;
                if (v212->i64[0] == *(v212->i64 - v204))
                {
                  v19[v209 >> 3] = 0;
                  *v20 += 0x10000;
                  v214 = *v6;
                  *(*v6 + 2 * *(v210 - 3)) = v25 + 1;
                  *(v214 + 2 * *(v210 - 2)) = v25 + 2;
                  *(v214 + 2 * *(v210 - 1)) = v25 + 3;
                  *(v214 + 2 * v210[1]) = v25 + 5;
                  *(v214 + 2 * v210[2]) = v25 + 6;
                  *(v214 + 2 * v210[3]) = v25 + 7;
                  *(v214 + 2 * *v210) = v25 + 4;
                  *(v214 + 2 * *(v210 - 4)) = v25;
                }

                else
                {
                  v215 = *v6;
                  v217 = *(v210 - 4);
                  v216 = *(v210 - 3);
                  v218 = *(*v6 + 2 * v217);
                  v219 = v20;
                  v220 = v18;
                  v221 = v23;
                  v222 = v19;
                  v224 = *v210;
                  v223 = v210[1];
                  v225 = *(v215 + 2 * v224);
                  v226 = *(v210 - 2);
                  v227 = *(v210 - 1);
                  v228 = *(v215 + 2 * v226);
                  v229 = *(v215 + 2 * v227);
                  v230 = *(v215 + 2 * v216);
                  v231 = *(v215 + 2 * v223);
                  v232 = v24;
                  v234 = v210[2];
                  v233 = v210[3];
                  v235 = *(v215 + 2 * v234);
                  v236 = *(v215 + 2 * v233);
                  *(v215 + 2 * v216) = v25 + 1;
                  *(v215 + 2 * v226) = v25 + 2;
                  *(v215 + 2 * v227) = v25 + 3;
                  *(v215 + 2 * v223) = v25 + 5;
                  *(v215 + 2 * v234) = v25 + 6;
                  *(v215 + 2 * v233) = v25 + 7;
                  *(v215 + 2 * v224) = v25 + 4;
                  *(v215 + 2 * v217) = v25;
                  v378.i16[0] = v25 - v218;
                  v19 = v222;
                  v237 = v221;
                  v18 = v220;
                  v20 = v219;
                  v378.i16[1] = v25 + 4 - v225;
                  v378.i16[2] = v25 + 2 - v228;
                  v378.i16[3] = v25 + 3 - v229;
                  v378.i16[4] = v25 + 1 - v230;
                  v378.i16[5] = v25 + 5 - v231;
                  v378.i16[6] = v25 + 6 - v235;
                  v378.i16[7] = v25 + 7 - v236;
                  v208.i64[0] = *(v212->i64 - (v25 - v218));
                  v238 = *&v212->i8[-v378.u16[5]];
                  v239 = *&v212->i8[-v378.u16[4]];
                  v240 = *&v212->i8[-v378.u16[3]];
                  v241.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[6]], *v213.i8)))));
                  v241.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[7]], *v213.i8)))));
                  v379 = v204;
                  v242 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v238, *v213.i8)))));
                  v243.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v239, *v213.i8)))));
                  v243.i64[1] = v242;
                  v244 = vmovn_s16(vcgtq_u16(v378, v202));
                  *v243.i8 = vqtbl1_s8(v243, 0xFFFF0800FFFFFFFFLL);
                  v243.i16[3] = vqtbl1_s8(v241, 0x800FFFFFFFFFFFFLL).i16[3];
                  v6 = a1;
                  v245.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[2]], *v213.i8)))));
                  v245.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v240, *v213.i8)))));
                  v208.i16[0] = vzip1_s8(vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*v208.i8, *v213.i8))))), vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[1]], *v213.i8)))))).u16[0];
                  v246 = vextq_s8(v22, v22, 8uLL).u64[0];
                  v208.i16[1] = vqtbl1_s8(v245, -4160684033).i16[1];
                  v208.i32[1] = v243.i32[1];
                  *v22.i8 = vsub_s8(vand_s8(v244, 0x202020202020202), vmvn_s8(v244));
                  v247 = vorr_s8(*v208.i8, vmovn_s16(vcgtq_u16(v203, v378)));
                  *v208.i8 = vadd_s8(vcnt_s8(v247), *v22.i8);
                  v22.i64[1] = v246;
                  v382 = v22;
                  v386.i64[1] = 0;
                  v386.i8[8] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v204], *v213.i8)))));
                  *v386.i8 = v247;
                  v248 = vzip1q_s8(xmmword_1003E2F00, v208);
                  v208.i32[0] = v386.u8[8];
                  v249 = vcnt_s8(*v208.i8);
                  v249.i16[0] = vaddlv_u8(v249);
                  v250 = vminvq_s16(v248);
                  if (v249.i32[0] <= v250 >> 8)
                  {
                    v251 = 8;
                  }

                  else
                  {
                    v251 = v250;
                  }

                  v204 = v378.u16[v251];
                  v252 = v386.u8[v251];
                  v253 = v382.u8[v251];
                  *(v340 + v237) = v204;
                  v254 = vqtbl1_s8(v213, qword_1003EB220[v252]);
                  *(v344 + v232) = v254;
                  v19[v209 >> 3] = v252 | (v253 << 8);
                  v219[v252 | (v253 << 8)] += 0x10000;
                  v23 = v237 + v253;
                  v254.i32[0] = v252;
                  v255 = vcnt_s8(v254);
                  v255.i16[0] = vaddlv_u8(v255);
                  v24 = v255.i32[0] + v232;
                }

                v25 += 8;
                v209 += 8;
                v210 += 8;
                v49 = __CFADD__(v211++, 1);
              }

              while (!v49);
              v9 = v327;
              v5 = a2;
              v10 = a3;
              if (v25 + 128 > v336)
              {
                v323 = v204;
                goto LABEL_106;
              }
            }

            goto LABEL_107;
          }

          v23 = 0;
          v24 = 0;
          v25 = a3;
LABEL_106:
          v256 = ((v9 + 63) & 0xFFFFFFC0) + v10;
          if (v344 + v24 + v256 - v25 > v6[6])
          {
LABEL_107:
            v257 = 0;
            break;
          }

          for (; v25 < v256; v25 += 8)
          {
            v258 = 0;
            v259 = 0;
            v260 = (v25 - v10) >> 3;
            v19[v260] = 0;
            do
            {
              if (v25 + v259 < *(v6 + 14))
              {
                v261 = *(v18 + v25 + v259);
                if (v261 != *(v18 + v25 - v323 + v259))
                {
                  *(v344 + v24++) = v261;
                  v258 = (v19[v260] | (1 << v259));
                  v19[v260] |= 1 << v259;
                }
              }

              ++v259;
            }

            while (v259 != 8);
            v20[v258] += 0x10000;
          }

          v111 = v24;
          *(v6 + 30) = v24;
          *(v6 + 31) = v23;
          goto LABEL_116;
        default:
LABEL_174:
          v4 = &v8[v9];
          if (v4 <= v6[6])
          {
            memcpy(v8, (v6[5] + v10), v9);
          }

          else
          {
            v4 = 0;
          }

LABEL_177:
          *v5 = (v4 - v5) | (v9 << 24);
          *(v5 + 4) = v9 >> 8;
          return v4;
      }

      v8 = v325;
      if (v257)
      {
        v262 = *(v6 + 31);
        v263 = &v257[v262];
        if (&v257[v262] <= v6[6])
        {
          memcpy(v257, v6[1], v262);
          v264 = 0;
          v265 = 0;
          do
          {
            v266 = 0;
            v267 = vdupq_n_s32(65537 * v265 + 16777472);
            v268 = v6[4] + 2 * v264;
            do
            {
              v269 = (v268 + v266);
              *v269 = v267;
              v269[1] = v267;
              v266 += 32;
            }

            while (v266 < 0x1E1);
            ++v265;
            v264 += 256;
          }

          while (v265 <= *(v6 + 25));
          v270 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v271 = v6[3];
          v273 = *(v6 + 26);
          v272 = *(v6 + 27);
          v274 = 0;
          if (!v273)
          {
            goto LABEL_147;
          }

          v275 = v6[3];
          do
          {
            v276 = *v275++;
            *(v271 + 4 * v274) = v276;
            if ((v276 & 0xFFFF0000) != 0)
            {
              ++v274;
            }

            --v273;
          }

          while (v273);
          if (v274 > v272)
          {
            v277 = 0;
            v10 = a3;
            do
            {
              v278 = v277;
              v279 = *(v271 + 4 * v277);
              v280 = v274 - 1;
              v281 = *(v271 + 4 * (v274 - 1));
              if (v279 > v281)
              {
                *(v271 + 4 * v277) = v281;
                *(v271 + 4 * v280) = v279;
                v281 = v279;
              }

              v282 = (v277 + v274) >> 1;
              v283 = *(v271 + 4 * v282);
              if (v283 > v281)
              {
                *(v271 + 4 * v282) = v281;
                *(v271 + 4 * v280) = v283;
                v283 = *(v271 + 4 * v282);
              }

              v284 = *(v271 + 4 * v277);
              if (v283 > v284)
              {
                *(v271 + 4 * v278) = v283;
                *(v271 + 4 * v282) = v284;
                v284 = *(v271 + 4 * v278);
              }

              v285 = v278 - 1;
              v286 = v274;
              while (1)
              {
                do
                {
                  v287 = *(v271 + 4 * ++v285);
                }

                while (v287 > v284);
                v288 = v286 + 1;
                do
                {
                  v289 = v288 - 2;
                  v290 = *(v271 + 4 * (v288 - 2));
                  --v288;
                }

                while (v290 < v284);
                v286 = v288 - 1;
                if (v285 >= v288 - 1)
                {
                  break;
                }

                *(v271 + 4 * v289) = v287;
                *(v271 + 4 * v285) = v290;
              }

              if (v288 < v272)
              {
                v277 = v288;
              }

              else
              {
                v274 = v288;
                v277 = v278;
              }
            }

            while (v272 != v288);
          }

          else
          {
LABEL_147:
            bzero((v271 + 4 * v274), 4 * (v272 - v274));
            v10 = a3;
          }

          *(v6 + 60) = 0;
          v291 = v6 + 60;
          *(v6 + 68) = 0;
          *(v6 + 19) = 0;
          LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v8 = v325;
          if (*(v6 + 27))
          {
            v293 = 0;
            v294 = 0;
            v295 = v6[3];
            LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
            do
            {
              if (*(v295 + 4 * v294) < 0x10000u)
              {
                break;
              }

              v296 = *(v295 + 4 * v294);
              *&v291[(v293 >> 3) & 0x1FFFFFFE] |= v296 << (v293 & 0xE);
              *(v6[4] + 2 * v296) = v294 + *(v6 + 25) + 1;
              v8 = v325;
              LODWORD(v292) = v292 - *(v295 + 4 * v294++ + 2);
              v293 += 10;
            }

            while (v294 < *(v6 + 27));
          }

          *(v6 + 32) = v292;
          v297 = v6[6];
          if (&v263[v292] <= v297)
          {
            if (v270)
            {
              v298 = 0;
              v299 = v6[4];
              v300 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
              v302 = v6[1];
              v301 = v6[2];
              do
              {
                v303 = *(v299 + 2 * *v301);
                *v302++ = v303;
                v304 = *v301;
                v301 += 2;
                v263[v298] = v304;
                v298 += v303 >> 8;
                --v300;
              }

              while (v300);
              v292 = *(v6 + 32);
              v297 = v6[6];
              v8 = v325;
            }

            else
            {
              v292 = v292;
            }

            v305 = &v263[v292];
            if (&v263[v292 + (v270 >> 1)] <= v297)
            {
              if ((v6[10] & 4) != 0)
              {
                v306 = v6[1];
              }

              else
              {
                v306 = v6[2];
                v270 = sub_10014AC30(v306, v6[1], v270);
              }

              if (v270 >= 0x20)
              {
                v308 = 32;
                v309 = v306;
                v310 = v305;
                do
                {
                  v388 = vld2q_s8(v309);
                  v309 += 32;
                  *v310++ = vorrq_s8(vshlq_n_s8(v388.val[1], 4uLL), v388.val[0]);
                  v308 += 32;
                }

                while (v308 <= v270);
                v307 = v270 & 0xFFFFFFE0;
              }

              else
              {
                v307 = 0;
              }

              bzero(&v305->i8[v307 >> 1], (v270 + 1 - v307) >> 1);
              if (v307 < v270)
              {
                v311 = v270 - v307;
                v312 = 4 * v307;
                v313 = (v306 + v307);
                do
                {
                  v314 = *v313++;
                  *(v305->i32 + ((v312 >> 3) & 0x1FFFFFFE)) |= v314 << (v312 & 0xC);
                  v312 += 4;
                  --v311;
                }

                while (v311);
              }

              v315 = &v305->i8[(v270 + 1) >> 1];
              v6 = a1;
              v4 = v315 + 17;
              v10 = a3;
              v8 = v325;
              if ((v315 + 17) <= a1[6])
              {
                v316 = *v291;
                v315[16] = v291[16];
                *v315 = v316;
                v317 = (*(a1 + 30) + 15);
                v318 = (*(a1 + 31) + v317);
                v319 = (*(a1 + 32) + v318);
                *(v5 + 6) = v317 + (v318 << 24) + (v319 << 48);
                *(v5 + 14) = BYTE2(v319);
                if (&v4[-v5] < v9 + 6)
                {
                  goto LABEL_177;
                }
              }
            }
          }
        }
      }

      goto LABEL_174;
    }
  }

  return v4;
}