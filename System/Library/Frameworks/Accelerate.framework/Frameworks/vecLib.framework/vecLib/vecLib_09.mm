uint64_t sub_236723DC0(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v82 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v86 = v12 + a8;
    v13 = v12 + a9;
    v14 = *(a2 + 12);
    v15 = 16 * v13 - 16 * v12;
    while (1)
    {
      v16 = v13 - v12;
      if (v13 < v12)
      {
        break;
      }

      v17 = a4[1];
      v18 = v17 - a4[19];
      v19 = __OFSUB__(v13, v18);
      v20 = v13 - v18;
      if (v20 < 0 != v19)
      {
        result = ((v13 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v13 - v12) / a7)) * a7);
      }

      else
      {
        if (v13 >= v17)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v20);
      }

LABEL_14:
      v21 = *(a12 + 4 * result);
      if (v21 < v14)
      {
        result = a4[4];
        if (result < v12)
        {
          v22 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v23 = a4 + 10;
          }

          else
          {
            v23 = a4 + 6;
          }

          if (v16 >= 0)
          {
            v24 = a4 + 12;
          }

          else
          {
            v24 = a4 + 8;
          }

          v25 = *v23;
          v26 = *v24;
          do
          {
            if (result < 0)
            {
              v28 = 0x7FFFFFFF;
            }

            else
            {
              v27 = *(a4 + 7);
              if (v27)
              {
                v28 = *(v27 + 4 * result);
              }

              else
              {
                v28 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v29 = *(a11 + 4 * v28);
            if (v16 >= 0)
            {
              v30 = result;
            }

            else
            {
              v30 = v13;
            }

            if (v16 >= 0)
            {
              v31 = v13 - v12;
            }

            else
            {
              v31 = result;
            }

            *(v22 + 16 * v29) = vaddq_f64(*(v25 + 16 * v26 * v30 + 16 * v31), *(v22 + 16 * v29));
            ++result;
          }

          while (v12 != result);
        }

        v32 = *a4;
        if (v86 < v32)
        {
          v33 = a4[18];
          v34 = v32 - v33;
          v35 = v12 + v33 - v32;
          result = 4 * v33 - 4 * v32;
          v36 = 16 * v86 - 16 * v12;
          v37 = a8;
          v38 = v86;
          while (2)
          {
            if (v35 + v37 >= 0 && (*(*(a5 + 32) + (v35 + v37)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v38 >= v12)
            {
              if (v38 >= v34)
              {
                v40 = *(*(a4 + 10) + result + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }
              }

              else
              {
                v40 = v37 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v37 / a7)) * a7;
                if (v16 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v38 < 0)
            {
              v40 = 0x7FFFFFFF;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v39 = *(a4 + 7);
              if (v39)
              {
                v40 = *(v39 + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }

LABEL_46:
                if (v38 >= v12)
                {
                  v41 = (*(a5 + 96) + v15 * *(a5 + 16) + v36);
                }

                else
                {
                  v41 = (*(a4 + 5) + 16 * *(a4 + 6) * v38 + 16 * v16);
                }

LABEL_51:
                v42 = *(a11 + 4 * v40);
                v43 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
                *(v43 + 16 * v42) = vaddq_f64(*v41, *(v43 + 16 * v42));
LABEL_52:
                ++v38;
                ++v37;
                v36 += 16;
                if (v38 >= v32)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v40 = v12 + v37 + *(a6[22] + 4 * a3) * a7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v41 = (*(a4 + 3) + 16 * *(a4 + 4) * v13 + 16 * v38);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v13;
      v15 += 16;
      if (v13 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v13);
      }

      else
      {
        result = (v13 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v44 = a4[19];
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = a4[1];
    v48 = *(a5 + 48);
    v84 = v12 + a8;
    result = v47 - v44;
    v49 = 16 * result - 16 * v12;
    v50 = result;
    v83 = result;
    do
    {
      if ((*(v48 + v45) & 1) == 0)
      {
        v51 = v50 - v12;
        if (v50 >= v12)
        {
          v52 = v50 >= result ? *(*(a4 + 11) + 4 * (v50 - result)) : (v50 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v50 - v12) / a7)) * a7;
        }

        else if (v50 < 0)
        {
          v52 = 0x7FFFFFFF;
        }

        else
        {
          v52 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v50) : v50 + *(a6[22] + 4 * a3) * a7;
        }

        v53 = *(a12 + 4 * v52);
        if (*(a2 + 12) > v53)
        {
          v54 = v53;
          if ((v53 & 0x80000000) != 0)
          {
            v55 = 0x7FFFFFFF;
          }

          else
          {
            v55 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v53) : v53 + *(a6[22] + 4 * v82) * a7;
          }

          if (v55 == v52)
          {
            v56 = a4[4];
            if (v56 < v12)
            {
              v57 = *(a2 + 24) + 16 * *(a2 + 32) * v54;
              v58 = a4 + 10;
              if (v51 >= 0)
              {
                v59 = a4 + 12;
              }

              else
              {
                v58 = a4 + 6;
                v59 = a4 + 8;
              }

              v60 = *v58;
              v61 = *v59;
              do
              {
                if (v56 < 0)
                {
                  v63 = 0x7FFFFFFF;
                }

                else
                {
                  v62 = *(a4 + 7);
                  if (v62)
                  {
                    v63 = *(v62 + 4 * v56);
                  }

                  else
                  {
                    v63 = v56 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v64 = *(a11 + 4 * v63);
                if (v51 >= 0)
                {
                  v65 = v56;
                }

                else
                {
                  v65 = v50;
                }

                if (v51 >= 0)
                {
                  v66 = v50 - v12;
                }

                else
                {
                  v66 = v56;
                }

                *(v57 + 16 * v64) = vaddq_f64(*(v60 + 16 * v61 * v65 + 16 * v66), *(v57 + 16 * v64));
                ++v56;
              }

              while (v12 != v56);
            }

            v67 = *a4;
            if (v84 < v67)
            {
              v68 = a4[18];
              v69 = v67 - v68;
              v70 = v12 + v68 - v67;
              v71 = 4 * v68 - 4 * v67;
              v72 = 16 * v84 - 16 * v12;
              v73 = a8;
              v74 = v12 + a8;
              while (2)
              {
                if (v70 + v73 >= 0 && (*(*(a5 + 32) + (v70 + v73)) & 1) != 0)
                {
                  goto LABEL_116;
                }

                if (v74 >= v12)
                {
                  if (v74 >= v69)
                  {
                    v76 = *(*(a4 + 10) + v71 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_112;
                  }

                  v77 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v73 / a7));
                  v78 = v73 % a7;
                }

                else
                {
                  if (v74 < 0)
                  {
                    v76 = 0x7FFFFFFF;
                    if ((v51 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }

LABEL_107:
                    v79 = (*(a4 + 3) + 16 * *(a4 + 4) * v50 + 16 * v74);
                    goto LABEL_115;
                  }

                  v75 = *(a4 + 7);
                  if (v75)
                  {
                    v76 = *(v75 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

LABEL_112:
                    if (v74 >= v12)
                    {
                      v79 = (*(a5 + 96) + v49 * *(a5 + 16) + v72);
                    }

                    else
                    {
                      v79 = (*(a4 + 5) + 16 * *(a4 + 6) * v74 + 16 * v51);
                    }

LABEL_115:
                    v80 = *(a11 + 4 * v76);
                    v81 = *(a2 + 24) + 16 * *(a2 + 32) * v54;
                    *(v81 + 16 * v80) = vaddq_f64(*v79, *(v81 + 16 * v80));
LABEL_116:
                    ++v74;
                    ++v73;
                    v72 += 16;
                    if (v74 >= v67)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v77 = *(a6[22] + 4 * a3);
                  v78 = v12 + v73;
                }

                break;
              }

              v76 = v78 + v77 * a7;
              if (v51 < 0)
              {
                goto LABEL_107;
              }

              goto LABEL_112;
            }

LABEL_117:
            *(v48 + v45) = 1;
            ++v46;
            result = v83;
          }
        }
      }

      ++v50;
      ++v45;
      v49 += 16;
    }

    while (v50 < v47);
    if (v46 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v46, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_236724410(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v91 = a3[4];
  if (v91 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v90 = *(a3 + 8);
    v89 = *(result + 24);
    v88 = *(result + 32);
    v14 = a3[4];
    v15 = 16 * v91 - 16 * v10;
    while (1)
    {
      v16 = v91;
      v17 = *(a10 + 4 * *(v90 + 4 * v14));
      v18 = v14 - v10;
      v19 = v14 >= v10 ? a3 + 10 : a3 + 6;
      v20 = v14 >= v10 ? a3 + 12 : a3 + 8;
      v21 = *v19;
      v22 = *v20;
      do
      {
        if (v18 >= 0)
        {
          v24 = v16;
        }

        else
        {
          v24 = v14;
        }

        if (v18 >= 0)
        {
          v25 = v14 - v10;
        }

        else
        {
          v25 = v16;
        }

        v23 = *(a9 + 4 * *(v13 + 4 * v16));
        *(v89 + 16 * v88 * v17 + 16 * v23) = vaddq_f64(*(v21 + 16 * v22 * v24 + 16 * v25), *(v89 + 16 * v88 * v17 + 16 * v23));
        ++v16;
      }

      while (v10 != v16);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v14;
      v15 += 16;
      if (v14 == v10)
      {
        goto LABEL_40;
      }
    }

    v26 = a3[18];
    v27 = v12 - v26;
    v28 = v10 - v12 + v26;
    v29 = -4 * v12 + 4 * v26;
    v30 = 16 * v11 - 16 * v10;
    v31 = a7;
    v32 = v10 + a7;
    while (1)
    {
      if (v28 + v31 >= 0 && (*(a4[4] + (v28 + v31)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v32 >= v10)
      {
        break;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = *(a3 + 7);
        if (!v33)
        {
          v34 = *(a5[22] + 4 * a2);
          v35 = v10 + v31;
          goto LABEL_27;
        }

LABEL_30:
        v36 = *(v33 + 4 * v32);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v36 = 0x7FFFFFFF;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v32 >= v10)
        {
          v37 = (a4[12] + v15 * a4[2] + v30);
        }

        else
        {
          v37 = (*(a3 + 5) + 16 * *(a3 + 6) * v32 + 16 * v18);
        }

        goto LABEL_34;
      }

LABEL_28:
      v37 = (*(a3 + 3) + 16 * *(a3 + 4) * v14 + 16 * v32);
LABEL_34:
      v38 = *(a9 + 4 * v36);
      v39 = *(result + 24) + 16 * *(result + 32) * v17;
      *(v39 + 16 * v38) = vaddq_f64(*v37, *(v39 + 16 * v38));
LABEL_35:
      ++v32;
      ++v31;
      v30 += 16;
      if (v32 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v32 < v27)
    {
      v34 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v31 / a6));
      v35 = v31 % a6;
LABEL_27:
      v36 = v35 + v34 * a6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v33 = *(a3 + 10) + v29;
    goto LABEL_30;
  }

LABEL_40:
  v40 = v10 + a8;
  v41 = a3[1];
  if (v10 + a8 < v41)
  {
    v42 = a3[19];
    v43 = v42 - v41;
    v44 = v40;
    v45 = v41 - v42;
    for (i = 16 * v40 - 16 * v10; ; i += 16)
    {
      if (v43 + v44 < 0 || (*(a4[6] + (v43 + v44)) & 1) == 0)
      {
        v47 = v44 - v10;
        if (v44 >= v10)
        {
          v48 = v44 >= v45 ? *(*(a3 + 11) + 4 * (v44 - v45)) : (v44 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v44 - v10) / a6)) * a6;
        }

        else if (v44 < 0)
        {
          v48 = 0x7FFFFFFF;
        }

        else
        {
          v48 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v44) : v44 + *(a5[22] + 4 * a2) * a6;
        }

        v49 = *(a10 + 4 * v48);
        if (v49 < *(result + 12))
        {
          if (v91 < v10)
          {
            v50 = *(a3 + 7);
            v51 = *(result + 24) + 16 * *(result + 32) * v49;
            v52 = 10;
            if (v47 < 0)
            {
              v52 = 6;
            }

            v53 = 12;
            if (v47 < 0)
            {
              v53 = 8;
            }

            v54 = *&a3[v52];
            v55 = *&a3[v53];
            v56 = v91;
            do
            {
              if (v47 >= 0)
              {
                v58 = v56;
              }

              else
              {
                v58 = v44;
              }

              if (v47 >= 0)
              {
                v59 = v44 - v10;
              }

              else
              {
                v59 = v56;
              }

              v57 = *(a9 + 4 * *(v50 + 4 * v56));
              *(v51 + 16 * v57) = vaddq_f64(*(v54 + 16 * v55 * v58 + 16 * v59), *(v51 + 16 * v57));
              ++v56;
            }

            while (v10 != v56);
          }

          v60 = *a3;
          v61 = a3[18];
          v62 = v60 - v61;
          if (v10 + a7 < v60 - v61)
          {
            v63 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v64 = *(result + 24) + 16 * *(result + 32) * v49;
            v65 = a4[12] - 16 * v10 + a4[2] * i;
            v66 = a7;
            v67 = v10 + a7;
            do
            {
              v68 = *(a9 + 4 * (v66 % a6 + *(v63 + 4 * (v66 / a6)) * a6));
              *(v64 + 16 * v68) = vaddq_f64(*(v65 + 16 * v67++), *(v64 + 16 * v68));
              ++v66;
            }

            while (v67 < v62);
          }

          if (v61 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v44 >= v41)
      {
        return result;
      }
    }

    v69 = 0;
    v70 = v62;
    v71 = a4[4];
    v72 = v60 - v10 - v61;
    v73 = 4 * v60 - 4 * v61;
    v74 = 16 * (v60 - v10 - v61);
    v75 = v62;
    v76 = v60 - v61;
    while ((*(v71 + v69) & 1) != 0)
    {
LABEL_90:
      ++v75;
      ++v69;
      ++v72;
      v74 += 16;
      if (v70 + v69 >= v60)
      {
        goto LABEL_91;
      }
    }

    v77 = v70 + v69;
    if (v70 + v69 >= v10)
    {
      if (v77 >= v70)
      {
        v79 = *(a3 + 10);
LABEL_80:
        v82 = *(v79 + 4 * v69);
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v83 = (*(a3 + 3) + 16 * *(a3 + 4) * v44 + 16 * v75);
LABEL_89:
        v84 = *(a9 + 4 * v82);
        v85 = *(result + 24) + 16 * *(result + 32) * v49;
        *(v85 + 16 * v84) = vaddq_f64(*v83, *(v85 + 16 * v84));
        goto LABEL_90;
      }

      v80 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v72 / a6));
      v81 = v72 % a6;
    }

    else
    {
      if (v77 < 0)
      {
        v82 = 0x7FFFFFFF;
        if (v47 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v78 = *(a3 + 7);
      if (v78)
      {
        v79 = v78 + v73;
        goto LABEL_80;
      }

      v80 = *(a5[22] + 4 * a2);
      v81 = v76 + v69;
    }

    v82 = v81 + v80 * a6;
    if (v47 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v77 >= v10)
    {
      v83 = (a4[12] + i * a4[2] + v74);
    }

    else
    {
      v83 = (*(a3 + 5) + 16 * *(a3 + 6) * v77 + 16 * v47);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_236724994(uint64_t *__return_ptr a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X2>, uint64_t a5@<X3>, _DWORD *a6@<X4>, unint64_t a7@<X5>, _DWORD *a8@<X6>, signed int a9, void *a10, int a11, int a12, _DWORD *a13, int *a14, int a15, uint64_t a16)
{
  v19 = a12;
  if (a12 | a9)
  {
    __src = a2;
    v20 = a16;
    v21 = a10;
    v22 = a3 + a9 + a12;
    v40 = a1;
    v36 = a16;
    if (v22 <= a7)
    {
      v39 = a4;
      v25 = a8;
      v24 = a6;
    }

    else
    {
      v23 = 4 * v22;
      v24 = (*(a16 + 24))(4 * v22);
      v25 = (*(v20 + 24))(v23);
      memcpy(v24, __src, 4 * a3);
      memcpy(v25, a4, 4 * a5);
      v21 = a10;
      v39 = v25;
      __src = v24;
    }

    memcpy(&v24[a3], v21, 4 * a9);
    std::__sort<std::__less<int,int> &,int *>();
    memset_pattern4(&v25[a5], &a11, 4 * a9);
    v26 = a9;
    if (v19 >= 1)
    {
      v28 = a13;
      v27 = a14;
      v26 = a9;
      v29 = a15;
      do
      {
        if (*v27 > v29)
        {
          v24[a3 + v26] = *v28;
          v25[a5 + v26++] = *v27;
        }

        ++v28;
        ++v27;
        --v19;
      }

      while (v19);
    }

    if (v26)
    {
      sub_236724C1C(&v24[a3], v26, &v25[a5], v26, a9);
      sub_236724C1C(v24, a3 + v26, v25, a5 + v26, a3);
      if ((a3 + v26) < 2)
      {
        a5 = 1;
        v35 = a6;
        v34 = a8;
      }

      else
      {
        v30 = v25 + 1;
        v31 = v24 + 1;
        v32 = a3 + v26 - 1;
        v33 = 1;
        v35 = a6;
        v34 = a8;
        do
        {
          if (*(v31 - 1) != *v31)
          {
            v24[v33] = *v31;
            v25[v33++] = *v30;
          }

          ++v31;
          ++v30;
          --v32;
        }

        while (v32);
        a5 = v33;
      }

      if (v24 == v35)
      {
        v34 = v25;
      }

      else
      {
        memcpy(v35, v24, 4 * a5);
        memcpy(v34, v25, 4 * a5);
        (*(v36 + 32))(v24);
        (*(v36 + 32))(v25);
      }

      a1 = v40;
      *v40 = v35;
      v40[1] = a5;
      v40[2] = v34;
    }

    else
    {
      a1 = v40;
      *v40 = __src;
      v40[1] = a3;
      v40[2] = v39;
    }
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
  }

  a1[3] = a5;
}

uint64_t sub_236724C1C(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a5 - 1;
  if (a5 >= 1 && a2 > a5)
  {
    v6 = a2;
    do
    {
      --v6;
      v7 = *(result + 4 * v5);
      v8 = *(result + 4 * v6);
      if (v7 > v8)
      {
        *(result + 4 * v5) = v8;
        *(result + 4 * v6) = v7;
        v9 = *(a3 + 4 * v5);
        *(a3 + 4 * v5) = *(a3 + 4 * v6);
        *(a3 + 4 * v6) = v9;
        if (a5 >= 2)
        {
          v10 = a5 - 1;
          do
          {
            v11 = v10 - 1;
            v12 = *(result + 4 * (v10 - 1));
            v13 = *(result + 4 * v10);
            if (v12 <= v13)
            {
              break;
            }

            *(result + 4 * v11) = v13;
            *(result + 4 * v10) = v12;
            v14 = *(a3 + 4 * v11);
            *(a3 + 4 * v11) = *(a3 + 4 * v10);
            *(a3 + 4 * v10--) = v14;
          }

          while (v10 > 0);
        }
      }
    }

    while (v6 > a5);
  }

  return result;
}

uint64_t *sub_236724CB4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_236724D2C(a1, a2);
  }

  return a1;
}

void sub_236724D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_236724D2C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_236724D68(a1, a2);
  }

  sub_2366FB858();
}

void sub_236724D68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_236724DB0();
}

void sub_236724DB0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_236724DE4(uint64_t a1, int *a2, const void *a3, int a4, const void *a5, int a6, char *a7, int a8, uint64_t a9)
{
  v9 = a7;
  *a1 = a9;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1] - v13;
  *(a1 + 8) = v15;
  v16 = v14 - v13;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 28) = v16;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a2[3] != a2[4];
  v17 = a2[18];
  if (v17 >= 1)
  {
    v19 = &a7[(v17 + 7) & 0xFFFFFFF8];
    *(a1 + 32) = a7;
    *(a1 + 40) = v17;
    bzero(a7, v17);
    v20 = a2[18];
    v9 = &v19[(4 * v20 + 7) & 0xFFFFFFFFFFFFFFF8];
    *(a1 + 64) = v19;
    *(a1 + 72) = v20 & 0x3FFFFFFFFFFFFFFFLL;
    memcpy(v19, a3, 4 * v20);
    *(a1 + 112) = 1;
  }

  v21 = a2[19];
  if (v21 >= 1)
  {
    v22 = &v9[(v21 + 7) & 0xFFFFFFF8];
    *(a1 + 48) = v9;
    *(a1 + 56) = v21;
    bzero(v9, v21);
    v23 = a2[19];
    *(a1 + 80) = v22;
    *(a1 + 88) = v23 & 0x3FFFFFFFFFFFFFFFLL;
    memcpy(v22, a5, 4 * v23);
    *(a1 + 112) = 1;
  }

  return a1;
}

void *sub_236724F10(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (*(a2 + 112) == 1)
  {
    v3 = (a2 + 113);
    while ((atomic_exchange_explicit(v3, 1u, memory_order_acquire) & 1) != 0)
    {
      v6 = 1;
      v5 = &v6;
      v10 = 0;
      v8[0] = v3;
      v8[1] = &v6;
      v9 = 0;
      v7[0] = v3;
      v7[1] = &v10;
      v7[2] = &v5;
      sub_236724FB0(v7, v8, 0);
    }
  }

  return a1;
}

BOOL sub_236724FB0(uint64_t a1, void **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = 0;
  while (1)
  {
    v8 = *a1;
    v9 = **(a1 + 8);
    if ((v9 - 1) >= 2)
    {
      explicit = v9 == 5 ? atomic_load(v8) : *v8;
    }

    else
    {
      explicit = atomic_load_explicit(v8, memory_order_acquire);
    }

    v11 = explicit & 1;
    v12 = ***(a1 + 16);
    if (v12 != v11)
    {
      break;
    }

    if (v7 <= 0x3F)
    {
      ++v7;
    }

    else
    {
      v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_;
      if (a3 && v13.__d_.__rep_ > a3 || sub_236725080(a2, v13.__d_.__rep_))
      {
        return v12 != v11;
      }
    }
  }

  return v12 != v11;
}

uint64_t sub_236725080(void **a1, uint64_t a2)
{
  if (a2 < 4001)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v4 = *a1;
  if (sub_2367250E4(a1, *a1, v6))
  {
    return 1;
  }

  std::__libcpp_atomic_wait(v4, v6[0]);
  return 0;
}

BOOL sub_2367250E4(uint64_t a1, void *a2, std::__cxx_contention_t *a3)
{
  *a3 = std::__libcpp_atomic_monitor(a2);
  v4 = *a1;
  v5 = *(a1 + 16);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      explicit = atomic_load(v4);
    }

    else
    {
      explicit = *v4;
    }
  }

  else
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
  }

  return **(a1 + 8) != (explicit & 1);
}

uint64_t sub_236725158(uint64_t result, int *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_2366FB858();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v13 = result + 24;
    v21[4] = v3 + 24;
    if (v12)
    {
      v14 = sub_23672A7E0(v13, v12);
      v7 = *v3;
      v8 = *(v3 + 8) - *v3;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 4 * v9);
    v16 = v14 + 4 * v12;
    v17 = *a2;
    v18 = &v15[-(v8 >> 2)];
    *v15 = v17;
    v6 = v15 + 1;
    memcpy(v18, v7, v8);
    v19 = *v3;
    *v3 = v18;
    *(v3 + 8) = v6;
    v20 = *(v3 + 16);
    *(v3 + 16) = v16;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = sub_23672A940(v21);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_23672524C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void **a9, void **a10, void *a11, void *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = a5;
  v18 = a4;
  v473 = *(a4 + 56);
  v533 = 0;
  v532 = 0u;
  v20 = (4 * v473 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v531 = 0u;
  v530 = 0u;
  if (a3 == 83)
  {
    v23 = *(*(a6 + 72) + 4 * a1);
    v24 = *(*(a6 + 80) + 4 * a1);
    v25 = *(*(a6 + 88) + 4 * a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = v21 + v20;
  v27 = *(*(a6 + 112) + 8 * v22) + 8;
  *(&v530 + 1) = v27;
  v534 = v24;
  v535 = v25;
  v504 = v22 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * (v22 + 1)) - *(*(a4 + 176) + 4 * v22)) * v17;
  v528 = v23;
  v529 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  i = v26 + v20;
  LODWORD(v530) = v29;
  v485 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v504) - *(*(a4 + 200) + 8 * v22)) * v17;
  v526 = v28 + v24 + (*(*(a4 + 184) + 8 * v504) - *(*(a4 + 184) + 8 * v22)) * v17;
  v527 = v28 + v25 + v31;
  v514 = v527;
  v510 = v526;
  *&v531 = v526;
  *(&v531 + 1) = v27 + 16 * v526 * v28;
  v32 = v31 + v25;
  *&v532 = v32;
  v474 = (4 * v473 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 16 * v526 * v28 + 16 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v532 + 1) = v34;
    v533 = v33;
  }

  v494 = v29;
  v506 = v34;
  v35 = v34 + 4 * v28;
  if (v24 <= 0)
  {
    v35 = 0;
  }

  v497 = v33;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v488 = v35;
  v490 = v36;
  v536 = v35;
  v537 = v36;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v501 = v26 + v20;
  v520 = v17;
  v505 = v21 + v20;
  v509 = v22;
  v470 = v25;
  if (v38 < *(v37 + 8 * v504))
  {
    v487 = 0;
    v39 = v526 - v24;
    v40 = v527 - v25;
    while (1)
    {
      v41 = *(*(v18 + 248) + 4 * v38);
      if ((*(*(v18 + 256) + v38) & 2) != 0)
      {
        v42 = *a7 + 32 * v41;
        v43 = *v42;
        v44 = *(v42 + 8);
        if (v44 != *v42)
        {
          if ((v487 & 1) == 0)
          {
            sub_23672A9A0(a1, &v526, a4, v17, v26);
            v22 = v509;
            v26 = v505;
            v17 = v520;
            v45 = *a7 + 32 * v41;
            v43 = *v45;
            v44 = *(v45 + 8);
          }

          while (v43 != v44)
          {
            v525 = *v43;
            v46 = *(v26 + 4 * v525);
            if (v46 < v510)
            {
              if (v46 >= v28)
              {
                if (v46 >= v39)
                {
                  v47 = *(v488 + 4 * (v46 - v39));
                }

                else
                {
                  v47 = (v46 - v28) % v17 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v46 - v28) / v17)) * v17;
                }
              }

              else if ((v46 & 0x80000000) != 0)
              {
                v47 = 0x7FFFFFFF;
              }

              else if (v506)
              {
                v47 = v506[v46];
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * v17;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v525 == v47)
              {
                sub_236725158(*a7 + 32 * v22, &v525);
                v22 = v509;
                v26 = v505;
                v17 = v520;
              }
            }

            ++v43;
          }

          LOBYTE(v487) = 1;
        }

        v18 = a4;
      }

      if (*(*(v18 + 256) + v38))
      {
        v48 = *a8 + 32 * v41;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v487 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v526, a4, v17, v501);
            v22 = v509;
            v26 = v505;
            v17 = v520;
            v51 = *a8 + 32 * v41;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          for (i = v501; v49 != v50; ++v49)
          {
            v525 = *v49;
            v52 = *(v501 + 4 * v525);
            if (v52 < v514)
            {
              if (v52 >= v28)
              {
                if (v52 >= v40)
                {
                  v53 = *(v490 + 4 * (v52 - v40));
                }

                else
                {
                  v53 = (v52 - v28) % v17 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v52 - v28) / v17)) * v17;
                }
              }

              else if ((v52 & 0x80000000) != 0)
              {
                v53 = 0x7FFFFFFF;
              }

              else if (v506)
              {
                v53 = v497[v52];
              }

              else
              {
                v53 = v52 + *(*(a4 + 176) + 4 * v22) * v17;
              }

              if (v53 < 0)
              {
                v53 = -v53;
              }

              if (v525 == v53)
              {
                sub_236725158(*a8 + 32 * v22, &v525);
                v22 = v509;
                v26 = v505;
                v17 = v520;
              }
            }
          }

          BYTE4(v487) = 1;
          v18 = a4;
          goto LABEL_60;
        }

        v18 = a4;
      }

      i = v501;
LABEL_60:
      if (++v38 >= *(*(v18 + 240) + 8 * v504))
      {
        goto LABEL_63;
      }
    }
  }

  v487 = 0;
LABEL_63:
  if (!v494)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v55 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v55[1] == *v55)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v54, v54[1]);
  v472 = v55;
  if (v56 != v54[1])
  {
    v54[1] = v56;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v57 = sub_23672AB6C(*v55, v55[1]);
  v59 = v55[1];
  if (v57 != v59)
  {
    v58 = v55[1];
    v59 = v57;
    v55[1] = v57;
  }

  if (v506)
  {
    if (v494 >= 1)
    {
      v60 = 0;
      v61 = v506;
      v62 = v497;
      do
      {
        v63 = *v61++;
        *(a17 + 4 * v63) = v60;
        v64 = *v62++;
        *(v21 + 4 * v64) = v60--;
      }

      while (-v494 != v60);
    }
  }

  else if (v494 >= 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = *(v18 + 176);
    do
    {
      *(a17 + 4 * (v66 + *(v67 + 4 * v509) * v520)) = v65;
      *(v21 + 4 * (v66 + *(v67 + 4 * v509) * v520)) = v65;
      ++v66;
      --v65;
    }

    while (v494 != v66);
  }

  v68 = *v54;
  v69 = v54[1];
  v70 = v69 - *v54;
  if (v69 != *v54)
  {
    v71 = 0;
    v72 = v70 >> 2;
    if ((v70 >> 2) <= 1)
    {
      v72 = 1;
    }

    do
    {
      *(a17 + 4 * v68[v71]) = v71;
      ++v71;
    }

    while (v72 != v71);
  }

  v73 = *v55;
  v74 = v59 - *v55;
  if (v59 != *v55)
  {
    v75 = 0;
    v76 = v74 >> 2;
    if ((v74 >> 2) <= 1)
    {
      v76 = 1;
    }

    do
    {
      *(v21 + 4 * v73[v75]) = v75;
      ++v75;
    }

    while (v76 != v75);
  }

  v524 = (i + v474);
  v77 = v74 >> 2;
  v464 = v70;
  v468 = v74;
  v78 = (v494 * (v70 >> 2));
  v481 = 16 * v78;
  if (a9[1] < v78)
  {
    if (*a9)
    {
      (*(v18 + 32))(*a9, v58);
    }

    *a9 = (*(v18 + 24))(v481, v58);
    a9[1] = v78;
  }

  v79 = &v524[v473];
  v80 = v494 * v77;
  v503 = v79;
  if (a10[1] >= v80)
  {
    v477 = 16 * v80;
  }

  else
  {
    if (*a10)
    {
      (*(v18 + 32))();
    }

    v477 = 16 * v80;
    *a10 = (*(v18 + 24))();
    a10[1] = v80;
    v79 = &v524[v473];
  }

  v489 = &v79[v473];
  bzero(*a9, v481);
  bzero(*a10, v477);
  v81 = *v54;
  v82 = v54[1] - *v54;
  v83 = *v55;
  v84 = v55[1] - *v55;
  v478 = *a10;
  v482 = *a9;
  v85 = *(a6 + 96);
  v86 = *(a2 + 28);
  v87 = (v86 * v86);
  v88 = v494;
  v89 = v82 <= 0 || v494 <= 0;
  v90 = !v89;
  if (v85)
  {
    v91 = *(a6 + 104);
    if (v90)
    {
      v92 = 0;
      v515 = *(v18 + 160);
      v491 = *(a2 + 8);
      v93 = 16 * v87;
      do
      {
        if (v497)
        {
          v94 = v497[v92];
        }

        else
        {
          v94 = v92 + *(*(v18 + 176) + 4 * v509) * v86;
        }

        v95 = (v491 + 8 * *(v515 + 4 * (v94 / v86)));
        v96 = *v95;
        v97 = v95[1];
        if (*v95 < v97)
        {
          v98 = *(a2 + 16);
          v99 = v93 * v96 + 16 * v94 % v86 * v86;
          do
          {
            v100 = *(v98 + 4 * v96);
            if ((v100 & 0x80000000) == 0 && v100 < *a2 && v86 != 0)
            {
              v102 = *(*(a4 + 136) + 4 * v100) * v86;
              v103 = (v85 + 8 * v102);
              v104 = (a17 + 4 * v102);
              v105 = v86;
              v106 = v99;
              do
              {
                v108 = *v104++;
                v107 = v108;
                if (v108 < v82 && v102 == v81[v107])
                {
                  v482[v92 * v82 + v107] = vmulq_n_f64(vmulq_n_f64(*(*(a2 + 32) + v106), *v103), *(v91 + 8 * v94));
                }

                v106 += 16;
                ++v103;
                ++v102;
                --v105;
              }

              while (v105);
            }

            ++v96;
            v99 += v93;
          }

          while (v96 != v97);
        }

        ++v92;
        v18 = a4;
        i = v501;
        v88 = v494;
      }

      while (v92 != v494);
    }

    if (v84 >= 1 && v88 >= 1)
    {
      v109 = 0;
      v516 = *(v18 + 312);
      v110 = v88;
      do
      {
        if (v506)
        {
          v111 = v506[v109];
        }

        else
        {
          v111 = v109 + *(*(v18 + 176) + 4 * v509) * v86;
        }

        v112 = (v516 + 8 * (v111 / v86));
        v113 = *v112;
        v114 = v112[1];
        if (v113 < v114)
        {
          v115 = *(a4 + 320);
          do
          {
            v116 = *(v115 + 4 * v113) * v86;
            v117 = (v91 + 8 * v116);
            v118 = (a17 + v474 + 4 * v116);
            v119 = v86;
            v120 = 16 * (v111 % v86);
            do
            {
              v122 = *v118++;
              v121 = v122;
              if (v122 < v84 && v116 == v83[v121])
              {
                v478[v109 * v84 + v121] = vmulq_n_f64(vmulq_n_f64(*(*(a2 + 32) + 16 * *(*(a4 + 328) + 8 * v113) * v87 + v120), *(v85 + 8 * v111)), *v117);
              }

              v120 += 16 * v86;
              ++v117;
              ++v116;
              --v119;
            }

            while (v119);
            ++v113;
          }

          while (v113 != v114);
        }

        ++v109;
        v18 = a4;
        i = v501;
        v88 = v494;
      }

      while (v109 != v110);
    }
  }

  else
  {
    if (v90)
    {
      v123 = 0;
      v124 = 16 * v87;
      do
      {
        if (v497)
        {
          v125 = v497[v123];
        }

        else
        {
          v125 = v123 + *(*(v18 + 176) + 4 * v509) * v86;
        }

        v126 = *(*(v18 + 160) + 4 * (v125 / v86));
        v127 = *(a2 + 8);
        v128 = (v127 + 8 * v126);
        v129 = *v128;
        if (*v128 < v128[1])
        {
          v130 = v124 * v129 + 16 * v125 % v86 * v86;
          do
          {
            v131 = *(*(a2 + 16) + 4 * v129);
            if ((v131 & 0x80000000) == 0 && v131 < *a2 && v86 != 0)
            {
              v133 = *(*(v18 + 136) + 4 * v131) * v86;
              v134 = (a17 + 4 * v133);
              v135 = v86;
              v136 = v130;
              do
              {
                v138 = *v134++;
                v137 = v138;
                if (v138 < v82 && v133 == v81[v137])
                {
                  v482[v123 * v82 + v137] = *(*(a2 + 32) + v136);
                }

                v136 += 16;
                ++v133;
                --v135;
              }

              while (v135);
              v127 = *(a2 + 8);
            }

            ++v129;
            v130 += v124;
          }

          while (v129 < *(v127 + 8 * v126 + 8));
        }

        ++v123;
      }

      while (v123 < v494);
    }

    if (v84 >= 1)
    {
      if (v494 >= 1)
      {
        for (j = 0; j < v494; ++j)
        {
          if (v506)
          {
            v140 = v506[j];
          }

          else
          {
            v140 = j + *(*(v18 + 176) + 4 * v509) * v86;
          }

          v141 = (*(v18 + 312) + 8 * (v140 / v86));
          v142 = *v141;
          if (*v141 < v141[1])
          {
            do
            {
              v143 = *(*(v18 + 320) + 4 * v142) * v86;
              v144 = (a17 + v474 + 4 * v143);
              v145 = v86;
              v146 = 16 * (v140 % v86);
              do
              {
                v148 = *v144++;
                v147 = v148;
                if (v148 < v84 && v143 == v83[v147])
                {
                  v478[j * v84 + v147] = *(*(a2 + 32) + 16 * *(*(v18 + 328) + 8 * v142) * v87 + v146);
                }

                v146 += 16 * v86;
                ++v143;
                --v145;
              }

              while (v145);
              ++v142;
            }

            while (v142 < *(*(v18 + 312) + 8 * (v140 / v86) + 8));
          }
        }
      }

      if (v470 >= 1 && v494 < v514)
      {
        v149 = v514 - v470;
        v150 = v494;
        do
        {
          if (v150 >= v28)
          {
            if (v150 >= v149)
            {
              v151 = *(v490 + 4 * (v150 - v149));
            }

            else
            {
              v151 = (v150 - v28) % v86 + *(*(v18 + 208) + 4 * *(*(v18 + 200) + 8 * v509) + 4 * ((v150 - v28) / v86)) * v86;
            }
          }

          else if (v150 < 0)
          {
            v151 = 0x7FFFFFFF;
          }

          else if (v506)
          {
            v151 = v497[v150];
          }

          else
          {
            v151 = v150 + *(*(v18 + 176) + 4 * v509) * v86;
          }

          if (v151 < 0)
          {
            v151 = -v151;
          }

          v152 = *(v21 + 4 * v151);
          if (v152 < v84 && v83[v152] == v151 && (v150 < v28 || v151 < *(*(v18 + 176) + 4 * v509) * v86))
          {
            v153 = *(*(v18 + 160) + 4 * (v151 / v86));
            v154 = *(a2 + 8);
            v155 = (v154 + 8 * v153);
            v156 = *v155;
            if (*v155 < v155[1])
            {
              v157 = &v478[v152];
              v158 = v151 % v86 * v86;
              do
              {
                v159 = *(*(a2 + 16) + 4 * v156);
                if ((v159 & 0x80000000) == 0 && v159 < *a2 && v86 != 0)
                {
                  v161 = 0;
                  v162 = *(*(v18 + 136) + 4 * v159) * v86;
                  v163 = (a17 + 4 * v162);
                  v164 = v86;
                  do
                  {
                    v166 = *v163++;
                    v165 = v166;
                    v167 = -v166;
                    if (v166 <= 0 && v494 > v167)
                    {
                      v169 = v506 ? v506[v167] : *(*(v18 + 176) + 4 * v509) * v86 - v165;
                      if (v162 == v169)
                      {
                        v157[v167 * v84] = *(*(a2 + 32) + 16 * v156 * v87 + 16 * v161 + 16 * v158);
                      }
                    }

                    ++v161;
                    ++v162;
                    --v164;
                  }

                  while (v164);
                  v154 = *(a2 + 8);
                }

                ++v156;
              }

              while (v156 < *(v154 + 8 * v153 + 8));
            }
          }

          ++v150;
        }

        while (v150 < v514);
      }
    }
  }

  if (v54[1] == *v54)
  {
    v287 = 0;
    v288 = a14;
    goto LABEL_375;
  }

  sub_23672AB18(a14);
  v170 = *(v18 + 240);
  v171 = *(v170 + 8 * v509);
  v172 = *(v170 + 8 * v504);
  v173 = a9;
  if (v171 >= v172)
  {
    v518 = 0;
    goto LABEL_363;
  }

  v174 = 0;
  v175 = *(v18 + 256);
  v176 = *a14;
  v177 = v520;
  v178 = a6;
  LODWORD(v179) = a3;
  v180 = v489;
  do
  {
    if ((*(v175 + v171) & 2) != 0)
    {
      v181 = *(*(v18 + 248) + 4 * v171);
      v489[v174++] = v181;
      *(v176 + 4 * v181) = *(a14 + 4);
    }

    ++v171;
  }

  while (v172 != v171);
  if (v174 < 1)
  {
    v518 = v174;
    goto LABEL_363;
  }

  do
  {
    v182 = v174 - 1;
    v183 = v180[v182];
    if (v179 == 83)
    {
      v184 = *(v178[9] + 4 * v183);
      LODWORD(v185) = *(v178[10] + 4 * v183);
      LODWORD(v186) = *(v178[11] + 4 * v183);
    }

    else
    {
      v184 = 0;
      LODWORD(v185) = 0;
      LODWORD(v186) = 0;
    }

    v187 = *(v18 + 176);
    v188 = v183 + 1;
    v189 = v184 + (*(v187 + 4 * (v183 + 1)) - *(v187 + 4 * v183)) * v177;
    v190 = v189;
    if (v179 == 83)
    {
      v190 = *(v178[8] + 4 * v183);
    }

    v511 = v190;
    v191 = v178[14];
    v192 = *(v18 + 184);
    v193 = *(v192 + 8 * v188);
    v194 = *(v192 + 8 * v183);
    v195 = *(v18 + 200);
    v196 = *(v195 + 8 * v188);
    v197 = *(v195 + 8 * v183);
    v498 = *(v191 + 8 * v183) + 8;
    v198 = (v187 + 4 * v509);
    v517 = v182;
    v507 = v180[v182];
    v492 = v186 + (v196 - v197) * v177;
    v495 = v498 + 16 * (v189 + v185 + (v193 - v194) * v177) * v189;
    v479 = v189 + v185 + (v193 - v194) * v177;
    if (v179 == 81)
    {
      v199 = 0;
      v475 = 0;
      if (v185 <= 0)
      {
        v200 = 0;
      }

      else
      {
        v200 = v189;
      }

      v201 = 4 * v200;
      if (v186 <= 0)
      {
        v202 = 0;
      }

      else
      {
        v202 = v189;
      }

      v203 = (4 * v202);
    }

    else
    {
      v199 = v498 + 16 * (v189 + v185 + (v193 - v194) * v177) * v189 + 16 * (v186 + (v196 - v197) * v177) * v189;
      if (v185 <= 0)
      {
        v201 = 0;
      }

      else
      {
        v201 = v199 + 4 * v189;
      }

      v475 = v199 + 4 * v189 + 4 * v185;
      v203 = (v475 + 4 * v189);
      if (v186 <= 0)
      {
        v203 = 0;
      }

      if (v179 == 83)
      {
        v204 = v178[8];
        v205 = *(v178[9] + 4 * v509);
        v206 = *(v178[10] + 4 * v509);
        v207 = *(v178[11] + 4 * v509);
        v208 = v205 + (*(v187 + 4 * v504) - *v198) * v177;
        v209 = *(v204 + 4 * v509);
        goto LABEL_238;
      }
    }

    v207 = 0;
    v206 = 0;
    v208 = (*(v187 + 4 * v504) - *v198) * v177;
    v209 = v208;
LABEL_238:
    v210 = *v54;
    v211 = (v54[1] - *v54) >> 2;
    v483 = *v173;
    v212 = *(v191 + 8 * v509) + 16 * (v206 + v208 + (*(v192 + 8 * v504) - *(v192 + v485)) * v177) * v208 + 16 * (v207 + (*(v195 + 8 * v504) - *(v195 + v485)) * v177) * v208 + 4 * v208 + 4 * v206 + 8;
    if (a3 == 81)
    {
      v213 = 0;
    }

    else
    {
      v213 = v212;
    }

    if (v511 >= v189)
    {
      v214 = 0;
      v224 = v511;
    }

    else
    {
      v214 = 0;
      v215 = v511 - v189;
      v216 = (v199 + 4 * v511);
      v217 = v511;
      do
      {
        v219 = *v216++;
        v218 = v219;
        if (v219 >= 0)
        {
          v220 = v218;
        }

        else
        {
          v220 = -v218;
        }

        v221 = *(a17 + 4 * v220);
        if ((v221 & 0x80000000) == 0 && v221 < v211 && v210[v221] == v220)
        {
          v222 = &v524[v214];
          *v222 = v217;
          *(v222 + 1) = v221;
          ++v214;
        }

        ++v217;
        v223 = __CFADD__(v215++, 1);
      }

      while (!v223);
      v224 = v189;
    }

    if (v193 > v194)
    {
      v225 = *(a4 + 192);
      do
      {
        if (v177 >= 1)
        {
          v226 = *(v225 + 4 * v194) * v177;
          v227 = v226 + v177;
          do
          {
            v228 = *(a17 + 4 * v226);
            if ((v228 & 0x80000000) == 0 && v228 < v211 && v226 == v210[v228])
            {
              v229 = &v524[v214++];
              *v229 = v224;
              v229[1] = v228;
            }

            ++v226;
            ++v224;
          }

          while (v226 < v227);
        }

        ++v194;
      }

      while (v194 != v193);
    }

    if (v185 < 1)
    {
      v18 = a4;
    }

    else
    {
      v185 = v185;
      v18 = a4;
      do
      {
        v230 = *v201;
        v201 += 4;
        v194 = v230;
        v193 = *(a17 + 4 * v230);
        if ((v193 & 0x80000000) == 0 && v193 < v211 && v210[v193] == v194)
        {
          v194 = &v524[v214];
          *v194 = v224;
          *(v194 + 4) = v193;
          ++v214;
        }

        ++v224;
        --v185;
      }

      while (v185);
    }

    v179 = a3;
    v231 = &v524[v473];
    v232 = v511;
    if (v214)
    {
      if (v511 >= v189)
      {
        v233 = 0;
        v240 = v511;
      }

      else
      {
        v233 = 0;
        v234 = v511 - v189;
        v235 = (v475 + 4 * v511);
        v236 = v511;
        do
        {
          v238 = *v235++;
          v237 = v238;
          if (v238 >= 0)
          {
            v193 = v237;
          }

          else
          {
            v193 = -v237;
          }

          v194 = *(v21 + 4 * v193);
          v201 = -v194;
          if (v194 <= 0 && v209 > v201)
          {
            if (v179 == 81)
            {
              v194 = (*v198 * v177 - v194);
              v179 = a3;
            }

            else
            {
              v194 = *(v212 + 4 * v201);
            }

            if (v194 == v193)
            {
              v193 = &v503[v233];
              v194 = (v233 + 1);
              *v193 = v236;
              *(v193 + 4) = v201;
              ++v233;
            }
          }

          ++v236;
          v223 = __CFADD__(v234++, 1);
        }

        while (!v223);
        v240 = v189;
      }

      if (v196 > v197)
      {
        v241 = *(v18 + 208);
        do
        {
          if (v177 >= 1)
          {
            v242 = *(v241 + 4 * v197) * v177;
            v201 = v242 + v177;
            do
            {
              v194 = *(v21 + 4 * v242);
              v193 = -v194;
              if (v194 <= 0 && v209 > v193)
              {
                if (v179 == 81)
                {
                  v194 = (*v198 * v177 - v194);
                }

                else
                {
                  v194 = *(v212 + 4 * v193);
                }

                if (v242 == v194)
                {
                  v194 = &v503[v233];
                  *v194 = v240;
                  *(v194 + 4) = v193;
                  ++v233;
                }

                v179 = a3;
              }

              ++v242;
              ++v240;
            }

            while (v242 < v201);
          }

          ++v197;
        }

        while (v197 != v196);
      }

      if (v186 >= 1)
      {
        v186 = v186;
        do
        {
          v245 = *v203++;
          v244 = v245;
          v246 = *(v21 + 4 * v245);
          v247 = -v246;
          v248 = v246 > 0 || v209 <= v247;
          if (!v248 && *(v213 + 4 * v247) == v244)
          {
            v249 = &v503[v233];
            *v249 = v240;
            v249[1] = v247;
            ++v233;
          }

          ++v240;
          --v186;
        }

        while (v186);
      }

      if (v233)
      {
        v250 = v214 * v511;
        if (a11[1] < (v214 * v511))
        {
          if (*a11)
          {
            (*(v18 + 32))(*a11, v201, v193, v194, v179, v511);
          }

          *a11 = (*(v18 + 24))(16 * v250);
          a11[1] = v250;
          v231 = &v524[v473];
          v232 = v511;
        }

        v251 = v232;
        v253 = v495;
        v252 = v498;
        v254 = v492;
        if (v232 >= 1)
        {
          v255 = 0;
          for (k = 0; k != v232; ++k)
          {
            if (v214 >= 1)
            {
              v257 = v524;
              v258 = v255;
              v259 = v214;
              do
              {
                v260 = *v257++;
                *(*a11 + v258) = *(v498 + 16 * k * v479 + 16 * v260);
                v258 += 16;
                --v259;
              }

              while (v259);
            }

            v255 += 16 * v214;
          }
        }

        v261 = v233 * v232;
        if (a12[1] < (v233 * v232))
        {
          v262 = a4;
          if (*a12)
          {
            (*(a4 + 32))(*a12, v495, v492);
            v262 = a4;
          }

          *a12 = (*(v262 + 24))(16 * v261, v253, v254);
          a12[1] = v261;
          v231 = &v524[v473];
          v232 = v511;
          v253 = v495;
          v252 = v498;
          v254 = v492;
        }

        v263 = v233;
        v18 = a4;
        if (v232 >= 1)
        {
          v264 = 0;
          v265 = 0;
          do
          {
            if (v233 >= 1)
            {
              v266 = v231;
              v267 = v264;
              v268 = v233;
              do
              {
                v269 = *v266++;
                v270 = v253 + 16 * v265 * v254 + 16 * (v269 - v189);
                v271 = (v252 + 16 * v265 + 16 * v269 * v479);
                if (v269 >= v189)
                {
                  v271 = v270;
                }

                *(*a12 + v267) = *v271;
                v267 += 16;
                --v268;
              }

              while (v268);
            }

            ++v265;
            v264 += 16 * v233;
          }

          while (v265 != v251);
        }

        v272 = v233 * v214;
        v273 = *a13;
        if (a13[1] < (v233 * v214))
        {
          if (v273)
          {
            (*(a4 + 32))(v273, v253, v254, v233);
          }

          *a13 = (*(a4 + 24))(16 * v272, v253, v254, v263);
          a13[1] = v272;
        }

        cblas_zgemm_NEWLAPACK();
        v177 = v520;
        LODWORD(v179) = a3;
        if (v233 >= 1)
        {
          v274 = 0;
          v275 = *a13;
          do
          {
            if (v214 >= 1)
            {
              v276 = v483 + 16 * SHIDWORD(v503[v274]) * (v464 >> 2);
              v277 = v524;
              v278 = v275;
              v279 = v214;
              do
              {
                v280 = *v278++;
                *(v276 + 16 * *(v277 + 1)) = vaddq_f64(v280, *(v276 + 16 * *(v277 + 1)));
                ++v277;
                --v279;
              }

              while (v279);
            }

            ++v274;
            v275 += v214;
          }

          while (v274 != v233);
        }
      }
    }

    v281 = (*(v18 + 240) + 8 * v507);
    v282 = *v281;
    v283 = v281[1];
    if (v282 >= v283)
    {
      v178 = a6;
      v173 = a9;
      v180 = v489;
      v174 = v517;
    }

    else
    {
      v284 = *(v18 + 256);
      v285 = *a14;
      v178 = a6;
      v173 = a9;
      v180 = v489;
      v174 = v517;
      do
      {
        if ((*(v284 + v282) & 2) != 0)
        {
          v286 = *(*(v18 + 248) + 4 * v282);
          if (*(v285 + 4 * v286) < *(a14 + 4))
          {
            v489[v174++] = v286;
            *(v285 + 4 * v286) = *(a14 + 4);
          }
        }

        ++v282;
      }

      while (v283 != v282);
    }
  }

  while (v174 >= 1);
  v518 = v174;
  v88 = v530;
LABEL_363:
  cblas_ztrsm_NEWLAPACK();
  if (v88 < 1)
  {
    v294 = 0.0;
  }

  else
  {
    v289 = 0;
    v512 = v54[1];
    v508 = *v54;
    v290 = v512 - *v54;
    v291 = *v173;
    if (v290 <= 1)
    {
      v290 = 1;
    }

    v499 = v290;
    v292 = v88;
    v293 = (v291 + 8);
    v294 = 0.0;
    do
    {
      v295 = v499;
      v296 = v293;
      if (v512 != v508)
      {
        do
        {
          v297 = hypot(*(v296 - 1), *v296);
          if (v297 >= v294)
          {
            v294 = v297;
          }

          v296 += 2;
          --v295;
        }

        while (v295);
      }

      ++v289;
      v293 += 2 * (v464 >> 2);
    }

    while (v289 != v292);
  }

  v18 = a4;
  i = v501;
  v288 = a14;
  v287 = v518;
  if (v294 > 1.0 / *(a6 + 16))
  {
    *(a15 + v509) = 1;
    v311 = *(a4 + 168);
    if (v504 >= v311)
    {
      return;
    }

    while (1)
    {
      if ((*(a15 + v504) & 1) == 0)
      {
        v312 = (*(a4 + 240) + 8 * v504);
        v314 = *v312;
        v313 = v312[1];
        v89 = v313 <= v314;
        v315 = v313 - v314;
        if (!v89)
        {
          v316 = (*(a4 + 248) + 4 * v314);
          while (1)
          {
            v317 = *v316++;
            if (*(a15 + v317) == 1)
            {
              break;
            }

            if (!--v315)
            {
              goto LABEL_390;
            }
          }

          *(a15 + v504) = 1;
        }
      }

LABEL_390:
      if (v311 == ++v504)
      {
        return;
      }
    }
  }

LABEL_375:
  v298 = (v468 >> 2);
  if (v472[1] == *v472)
  {
    goto LABEL_534;
  }

  v299 = v288;
  sub_23672AB18(v288);
  v300 = *(v18 + 240);
  v301 = v509;
  v302 = *(v300 + 8 * v509);
  v471 = v300;
  v303 = *(v300 + 8 * v504);
  if (v302 >= v303)
  {
    v306 = v520;
    v307 = a3;
    v308 = v489;
    LODWORD(v309) = v287;
  }

  else
  {
    v304 = *(v18 + 256);
    v305 = *v299;
    v306 = v520;
    v307 = a3;
    v308 = v489;
    LODWORD(v309) = v287;
    do
    {
      if (*(v304 + v302))
      {
        v310 = *(*(v18 + 248) + 4 * v302);
        v489[v309] = v310;
        LODWORD(v309) = v309 + 1;
        *(v305 + 4 * v310) = *(v299 + 16);
      }

      ++v302;
    }

    while (v303 != v302);
  }

  while (2)
  {
    if (v309 >= 1)
    {
      v318 = v309 - 1;
      v319 = v308[v318];
      if (v307 == 83)
      {
        v320 = a6;
        v321 = *(*(a6 + 72) + 4 * v319);
        LODWORD(v322) = *(*(a6 + 80) + 4 * v319);
        v323 = *(*(a6 + 88) + 4 * v319);
      }

      else
      {
        v321 = 0;
        LODWORD(v322) = 0;
        v323 = 0;
        v320 = a6;
      }

      v519 = v318;
      v324 = *(v18 + 176);
      v325 = v319 + 1;
      v326 = v321 + (*(v324 + 4 * (v319 + 1)) - *(v324 + 4 * v319)) * v306;
      v327 = v326;
      if (v307 == 83)
      {
        v327 = *(v320[8] + 4 * v319);
      }

      v513 = v327;
      v328 = v320[14];
      v329 = *(v18 + 184);
      v330 = *(v329 + 8 * v325);
      v331 = *(v329 + 8 * v319);
      v332 = *(v18 + 200);
      v333 = *(v332 + 8 * v325);
      v496 = v319;
      v334 = *(v332 + 8 * v319);
      v467 = v326 + v322 + (v330 - v331) * v306;
      v476 = *(v328 + 8 * v319) + 8;
      v335 = v323 + (v333 - v334) * v306;
      v336 = (v324 + 4 * v301);
      v500 = v335;
      v484 = v323;
      if (v307 == 81)
      {
        v337 = 0;
        v465 = 0;
        if (v322 <= 0)
        {
          v338 = 0;
        }

        else
        {
          v338 = v326;
        }

        v339 = (4 * v338);
        if (v323 <= 0)
        {
          v340 = 0;
        }

        else
        {
          v340 = v326;
        }

        v341 = (4 * v340);
      }

      else
      {
        v337 = v476 + 16 * v467 * v326 + 16 * v335 * v326;
        v342 = v337 + 4 * v326;
        if (v322 <= 0)
        {
          v339 = 0;
        }

        else
        {
          v339 = (v337 + 4 * v326);
        }

        v465 = v342 + 4 * v322;
        if (v323 <= 0)
        {
          v341 = 0;
        }

        else
        {
          v341 = (v342 + 4 * v322 + 4 * v326);
        }

        if (v307 == 83)
        {
          v343 = *(v320[10] + 4 * v509);
          v344 = *(v320[11] + 4 * v509);
          v345 = *(v320[9] + 4 * v509) + (*(v324 + 4 * v504) - *v336) * v306;
          v346 = *(v320[8] + 4 * v509);
          v307 = a3;
          goto LABEL_415;
        }
      }

      v344 = 0;
      v343 = 0;
      v345 = (*(v324 + 4 * v504) - *v336) * v306;
      v346 = v345;
LABEL_415:
      v347 = 0;
      v348 = *(v328 + 8 * v509);
      v349 = *v472;
      v480 = v472[1];
      v469 = *a10;
      v350 = v348 + 16 * (v343 + v345 + (*(v329 + 8 * v504) - *(v329 + v485)) * v306) * v345 + 16 * (v344 + (*(v332 + 8 * v504) - *(v332 + v485)) * v306) * v345;
      v351 = v350 + 8;
      if (v307 == 81)
      {
        v352 = 0;
      }

      else
      {
        v352 = v350 + 8;
      }

      v353 = v513;
      if (v513 < v326)
      {
        v347 = 0;
        v354 = v513 - v326;
        v355 = (v337 + 4 * v513);
        v356 = v513;
        do
        {
          v358 = *v355++;
          v357 = v358;
          if (v358 >= 0)
          {
            v359 = v357;
          }

          else
          {
            v359 = -v357;
          }

          v360 = *(a17 + 4 * v359);
          v361 = -v360;
          if (v360 <= 0 && v346 > v361)
          {
            if (v307 == 81)
            {
              v307 = a3;
              v363 = *v336 * v520 - v360;
            }

            else
            {
              v363 = *(v351 + 4 * v361);
            }

            if (v363 == v359)
            {
              v364 = &v524[v347++];
              *v364 = v356;
              v364[1] = v361;
            }
          }

          ++v356;
          v223 = __CFADD__(v354++, 1);
        }

        while (!v223);
        v353 = v326;
        v306 = v520;
      }

      if (v330 > v331)
      {
        v365 = *(a4 + 192);
        do
        {
          if (v306 >= 1)
          {
            v366 = *(v365 + 4 * v331) * v306;
            v367 = v366 + v306;
            v368 = v366;
            do
            {
              v369 = *(a17 + 4 * v368);
              v370 = -v369;
              if (v369 <= 0 && v346 > v370)
              {
                if (v307 == 81)
                {
                  v372 = *v336 * v520 - v369;
                  v307 = a3;
                }

                else
                {
                  v372 = *(v351 + 4 * v370);
                }

                if (v368 == v372)
                {
                  v373 = &v524[v347++];
                  *v373 = v353;
                  v373[1] = v370;
                }
              }

              ++v368;
              ++v353;
            }

            while (v368 < v367);
          }

          ++v331;
          v306 = v520;
        }

        while (v331 != v330);
      }

      if (v322 >= 1)
      {
        v322 = v322;
        do
        {
          v375 = *v339++;
          v374 = v375;
          v376 = *(a17 + 4 * v375);
          v377 = -v376;
          v378 = v376 > 0 || v346 <= v377;
          if (!v378 && *(v352 + 4 * v377) == v374)
          {
            v379 = &v524[v347++];
            *v379 = v353;
            v379[1] = v377;
          }

          ++v353;
          --v322;
        }

        while (v322);
      }

      v18 = a4;
      if (v347)
      {
        v380 = (v480 - v349) >> 2;
        v381 = &v524[v473];
        v308 = v489;
        v309 = v519;
        v382 = 0;
        if (v513 >= v326)
        {
          v392 = v513;
          v386 = v476 + 16 * v467 * v326;
          v387 = v500;
        }

        else
        {
          v383 = v513 - v326;
          v384 = (v465 + 4 * v513);
          v385 = v513;
          v386 = v476 + 16 * v467 * v326;
          v387 = v500;
          do
          {
            v389 = *v384++;
            v388 = v389;
            if (v389 < 0)
            {
              v388 = -v388;
            }

            v390 = *(v21 + 4 * v388);
            if ((v390 & 0x80000000) == 0 && v390 < v380)
            {
              v331 = v349[v390];
              if (v331 == v388)
              {
                v391 = &v503[v382++];
                *v391 = v385;
                v391[1] = v390;
              }
            }

            ++v385;
            v223 = __CFADD__(v383++, 1);
          }

          while (!v223);
          v392 = v326;
        }

        if (v333 > v334)
        {
          v393 = *(a4 + 208);
          do
          {
            if (v306 >= 1)
            {
              v394 = *(v393 + 4 * v334) * v306;
              v395 = v394;
              v396 = v394 + v306;
              do
              {
                v331 = *(v21 + 4 * v395);
                if ((v331 & 0x80000000) == 0 && v331 < v380 && v395 == v349[v331])
                {
                  v397 = &v503[v382++];
                  *v397 = v392;
                  v397[1] = v331;
                }

                ++v395;
                ++v392;
              }

              while (v395 < v396);
            }

            ++v334;
          }

          while (v334 != v333);
        }

        if (v484 >= 1)
        {
          v398 = v484;
          v301 = v509;
          do
          {
            v400 = *v341++;
            v399 = v400;
            v401 = *(v21 + 4 * v400);
            if ((v401 & 0x80000000) == 0 && v401 < v380 && v349[v401] == v399)
            {
              v402 = &v503[v382++];
              *v402 = v392;
              v402[1] = v401;
            }

            ++v392;
            --v398;
          }

          while (v398);
          if (!v382)
          {
            goto LABEL_523;
          }

          goto LABEL_493;
        }

        v301 = v509;
        if (v382)
        {
LABEL_493:
          v403 = v513;
          v404 = v513 * v347;
          if (a11[1] < (v513 * v347))
          {
            if (*a11)
            {
              (*(a4 + 32))(*a11, v331, v503, v489, v307, v519);
            }

            *a11 = (*(a4 + 24))(16 * v404);
            a11[1] = v404;
            v381 = &v524[v473];
            v403 = v513;
            v386 = v476 + 16 * v467 * v326;
            v387 = v500;
          }

          v405 = v403;
          v406 = v476;
          if (v403 >= 1)
          {
            v407 = 0;
            v408 = 0;
            do
            {
              v409 = v524;
              v410 = v407;
              v411 = v347;
              do
              {
                v412 = *v409++;
                *(*a11 + v410) = *(v476 + 16 * v408 * v467 + 16 * v412);
                v410 += 16;
                --v411;
              }

              while (v411);
              ++v408;
              v407 += 16 * v347;
            }

            while (v408 != v405);
          }

          v413 = v513;
          v414 = v513 * v382;
          if (a12[1] < (v513 * v382))
          {
            v415 = a4;
            if (*a12)
            {
              (*(a4 + 32))(*a12, v331, v381, v308, v307, v309);
              v415 = a4;
              v414 = v513 * v382;
            }

            v493 = v414;
            *a12 = (*(v415 + 24))(16 * v414);
            a12[1] = v493;
            v381 = &v524[v473];
            v413 = v513;
            v406 = v476;
            v386 = v476 + 16 * v467 * v326;
            v387 = v500;
          }

          if (v413 >= 1)
          {
            v416 = 0;
            v417 = 0;
            do
            {
              v418 = v381;
              v419 = v416;
              v420 = v382;
              do
              {
                v421 = *v418++;
                v422 = v386 + 16 * v417 * v387 + 16 * (v421 - v326);
                v423 = (v406 + 16 * v417 + 16 * v421 * v467);
                if (v421 >= v326)
                {
                  v423 = v422;
                }

                *(*a12 + v419) = *v423;
                v419 += 16;
                --v420;
              }

              while (v420);
              ++v417;
              v416 += 16 * v382;
            }

            while (v417 != v405);
          }

          v424 = v382 * v347;
          v425 = *a13;
          if (a13[1] >= v424)
          {
            v426 = a13;
          }

          else
          {
            if (v425)
            {
              (*(a4 + 32))(v425, v331, v381, v308, v307, v309);
            }

            v426 = a13;
            *a13 = (*(a4 + 24))(16 * v424);
            a13[1] = v424;
          }

          cblas_zgemm_NEWLAPACK();
          v427 = 0;
          v428 = *v426;
          v18 = a4;
          v306 = v520;
          v307 = a3;
          v301 = v509;
          v308 = v489;
          LODWORD(v309) = v519;
          do
          {
            v429 = &v469[16 * SHIDWORD(v503[v427])];
            v430 = v524;
            v431 = v428;
            v432 = v347;
            do
            {
              v433 = *(v430 + 1) * v298;
              v434 = *v431++;
              *&v429[16 * v433] = vaddq_f64(v434, *&v429[16 * v433]);
              ++v430;
              --v432;
            }

            while (v432);
            ++v427;
            v428 += v347;
          }

          while (v427 != v382);
          v471 = *(a4 + 240);
        }
      }

      else
      {
        v301 = v509;
        v308 = v489;
        LODWORD(v309) = v519;
      }

LABEL_523:
      v435 = (v471 + 8 * v496);
      v436 = *v435;
      v437 = v435[1];
      if (*v435 >= v437)
      {
        i = v501;
      }

      else
      {
        v438 = *(v18 + 256);
        v439 = *a14;
        i = v501;
        do
        {
          if (*(v438 + v436))
          {
            v440 = *(*(v18 + 248) + 4 * v436);
            if (*(v439 + 4 * v440) < *(a14 + 4))
            {
              v308[v309] = v440;
              LODWORD(v309) = v309 + 1;
              *(v439 + 4 * v440) = *(a14 + 4);
            }
          }

          ++v436;
        }

        while (v437 != v436);
      }

      continue;
    }

    break;
  }

  if (v530 > 1)
  {
    cblas_ztrsm_NEWLAPACK();
  }

LABEL_534:
  if ((v487 & 1) == 0 && v54[1] != *v54)
  {
    sub_23672A9A0(a1, &v526, v18, v520, v505);
  }

  v441 = v530;
  if (v530 >= 1)
  {
    v442 = 0;
    v443 = 0;
    v444 = *(&v530 + 1);
    v445 = v531;
    v446 = *v54;
    v447 = v54[1];
    do
    {
      if (v447 == v446)
      {
        v447 = v446;
      }

      else
      {
        v448 = 0;
        v449 = v442;
        do
        {
          *(v444 + 16 * v445 * v443 + 16 * *(v505 + 4 * v446[v448++])) = *(*a9 + v449);
          v446 = *v54;
          v447 = v54[1];
          v449 += 16;
        }

        while (v448 < v447 - *v54);
      }

      ++v443;
      v442 += 16 * (v464 >> 2);
    }

    while (v443 != v441);
  }

  if ((v487 & 0x100000000) == 0 && v472[1] != *v472)
  {
    sub_23672AA5C(a1, &v526, v18, v520, i);
  }

  if (v441 >= 1)
  {
    v450 = 0;
    v451 = 0;
    v452 = v529;
    v453 = *(&v531 + 1);
    v454 = v532;
    v455 = *(&v530 + 1);
    v456 = v531;
    v457 = *v472;
    v458 = v472[1];
    do
    {
      if (v458 == v457)
      {
        v458 = v457;
      }

      else
      {
        v459 = 0;
        v460 = v450;
        do
        {
          v461 = *(i + 4 * v457[v459]);
          v89 = v461 < v452;
          v462 = v453 + 16 * v454 * v451 + 16 * (v461 - v452);
          v463 = (v455 + 16 * v451 + 16 * v456 * v461);
          if (!v89)
          {
            v463 = v462;
          }

          *v463 = *(*a10 + v460);
          ++v459;
          v457 = *v472;
          v458 = v472[1];
          v460 += 16;
        }

        while (v459 < v458 - *v472);
      }

      ++v451;
      v450 += 16 * v298;
    }

    while (v451 != v441);
  }
}

uint64_t sub_236727534(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, uint64_t *a12, void *a13, float64x2_t **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a5;
  v666 = *MEMORY[0x277D85DE8];
  v30 = *(a5 + 56);
  v31 = 4 * v30;
  v603 = *(&off_28499C270 + a4 - 81);
  v604 = 4 * v30 + 7;
  v653 = a23 + (v604 & 0xFFFFFFFFFFFFFFF8);
  v613 = v653 + (v604 & 0xFFFFFFFFFFFFFFF8);
  v610 = (v613 + 8 * v30);
  v32 = &v610[v30];
  v33 = (v32 + (v604 & 0xFFFFFFFFFFFFFFF8) + (v604 & 0xFFFFFFFFFFFFFFF8));
  v663 = 0u;
  v664 = 0u;
  v661 = 0u;
  v662 = 0u;
  v659 = 0u;
  v660 = 0u;
  v657 = a1;
  v34 = a1 + 1;
  v35 = *(a5 + 184);
  v36 = *(*(a5 + 176) + 4 * v34) - *(*(a5 + 176) + 4 * a1);
  v37 = v36 * a6;
  HIDWORD(v659) = v36 * a6;
  v38 = 8 * a1;
  *(&v660 + 1) = *(a7[14] + v38) + 8;
  v612 = v34;
  v39 = 8 * v34;
  LODWORD(v35) = *(v35 + 8 * v34) - *(v35 + v38);
  v40 = *(a5 + 168);
  LODWORD(v659) = (v36 + v35) * a6;
  v41 = (*(*(a5 + 200) + v39) - *(*(a5 + 200) + v38)) * a6;
  DWORD1(v659) = v41 + v36 * a6;
  v614 = v33 + (v604 & 0xFFFFFFFFFFFFFFF8) + (v604 & 0xFFFFFFFFFFFFFFF8);
  v605 = v40;
  *&v661 = v659;
  *(&v661 + 1) = *(&v660 + 1) + 16 * v659 * (v36 * a6);
  v628 = v614 + 8 * v40;
  v616 = v628 + (v604 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v31 = 0;
  }

  v602 = v31;
  if (a4 == 82)
  {
    v42 = v616 + (v604 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v42 = 0;
  }

  v601 = v42;
  *&v662 = v41;
  v654 = a6;
  v606 = v30;
  if (a4 != 81)
  {
    v43 = *(&v660 + 1) + 16 * v659 * v37 + 16 * v41 * v37;
    *(&v662 + 1) = v43;
    *&v663 = v43 + 4 * v37;
    if (a4 == 83)
    {
      v45 = v30 & 0x3FFFFFFFFFFFFFFFLL;
      sub_236722FDC(v665, a1, 1, 83, a5, a6, a7, a10, (v32 + (v604 & 0xFFFFFFFFFFFFFFF8)), v30 & 0x3FFFFFFFFFFFFFFFLL, (v33 + (v604 & 0xFFFFFFFFFFFFFFF8)), v30 & 0x3FFFFFFFFFFFFFFFLL);
      v46 = v665[0];
      v599 = v665[1];
      sub_236722FDC(v665, a1, 2, 83, a5, v654, a7, a10, v32, v45, v33, v45);
      v47 = 0;
      v48 = v665[0];
      v598 = v665[1];
      v49 = a7;
      *(a7[10] + 4 * v657) = DWORD2(v665[0]);
      *(a7[11] + 4 * v657) = DWORD2(v46);
      v50 = a7[9];
      *(v50 + 4 * v657) = 0;
      v51 = *(a5 + 240);
      v52 = *(v51 + 8 * v657);
      v53 = *(v51 + 8 * v612);
      a6 = v654;
      if (v52 < v53)
      {
        v47 = 0;
        v54 = *(a5 + 256);
        do
        {
          if (*(v54 + v52) == 3)
          {
            v55 = *(*(a5 + 248) + 4 * v52);
            v47 += *(v50 + 4 * v55) + (*(*(a5 + 176) + 4 * v55 + 4) - *(*(a5 + 176) + 4 * v55)) * v654 - *(a7[8] + 4 * v55);
            *(v50 + 4 * v657) = v47;
          }

          ++v52;
        }

        while (v53 != v52);
      }

      if (v47 > 0 || *(&v46 + 1) || *(&v48 + 1))
      {
        v56 = SHIDWORD(v659);
        v57 = HIDWORD(v659) + v47;
        v58 = v47 + DWORD2(v48) + v659;
        v59 = v47 + DWORD2(v46) + DWORD1(v659);
        v60 = 4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v57) + 16 * (v59 * v57 + (v58 * v57)) + 8;
        v61 = a7[14];
        v62 = *(v61 + 8 * v657);
        if (v60 > *v62)
        {
          v640 = SHIDWORD(v659);
          if (*v62)
          {
            (*(a5 + 32))();
          }

          v63 = (*(a5 + 24))(4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v57) + 16 * (v59 * v57 + (v58 * v57)) + 8);
          v49 = a7;
          *(a7[14] + 8 * v657) = v63;
          v61 = a7[14];
          v62 = *(v61 + 8 * v657);
          if (!v62)
          {
            v584 = *(a5 + 40);
            if (!v584)
            {
              v585 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v585)
              {
                sub_23672B14C(v585, v586, v587, v588, v589, v590, v591, v592);
              }

              _SparseTrap();
            }

            memset(&v665[14] + 10, 0, 22);
            *(&v665[13] + 10) = 0u;
            *(&v665[12] + 10) = 0u;
            *(&v665[11] + 10) = 0u;
            *(&v665[10] + 10) = 0u;
            *(&v665[9] + 10) = 0u;
            *(&v665[8] + 10) = 0u;
            *(&v665[7] + 10) = 0u;
            *(&v665[6] + 10) = 0u;
            memset(&v665[3] + 10, 0, 48);
            strcpy(v665, "Failed to allocate additional storage for delayed pivots\n");
            v584(v665);
            return 4294967293;
          }

          *v62 = v60;
          v50 = a7[9];
          v47 = *(v50 + 4 * v657);
          v56 = v640;
        }

        v64 = &v62[2 * (v58 - v57 + v59) * v57 + 1];
        v65 = (v64 + 4 * v57);
        v66 = &v65[4 * *(&v48 + 1)];
        if (v47 >= 1)
        {
          v67 = *(a5 + 240);
          v68 = *(v67 + 8 * v657);
          v69 = *(v67 + 8 * v612);
          if (v68 < v69)
          {
            v70 = &v66[4 * v56];
            v71 = *(a5 + 256);
            v72 = v64 + 4 * v56;
            do
            {
              if (*(v71 + v68) == 3)
              {
                v73 = *(*(a5 + 248) + 4 * v68);
                v74 = *(v50 + 4 * v73) + (*(*(a5 + 176) + 4 * (v73 + 1)) - *(*(a5 + 176) + 4 * v73)) * v654;
                v75 = *(v49[8] + 4 * v73);
                if (v75 < v74)
                {
                  v76 = 0;
                  v77 = 8 * (v73 + 1);
                  v78 = *(v49[10] + 4 * v73);
                  v79 = *(v49[11] + 4 * v73) + (*(*(a5 + 200) + v77) - *(*(a5 + 200) + 8 * v73)) * v654;
                  v80 = v78 + v74 + (*(*(a5 + 184) + v77) - *(*(a5 + 184) + 8 * v73)) * v654;
                  v81 = v74;
                  v82 = *(v61 + 8 * v73) + 8;
                  v83 = 16 * v80 + 16 * v79;
                  v84 = v82 + v83 * v74 + 4 * v75;
                  v85 = v82 + (v83 | 4) * v81 + 4 * v75 + 4 * v78;
                  v86 = v75 - v81;
                  do
                  {
                    v87 = *(v84 + v76);
                    if (v87 < 0)
                    {
                      v87 = -v87;
                    }

                    *(v72 + v76) = v87;
                    v88 = *(v85 + v76);
                    if (v88 < 0)
                    {
                      v88 = -v88;
                    }

                    *&v70[v76] = v88;
                    v76 += 4;
                    v89 = __CFADD__(v86++, 1);
                  }

                  while (!v89);
                  v72 += v76;
                  v70 += v76;
                }
              }

              ++v68;
            }

            while (v68 != v69);
          }
        }

        if (*(&v48 + 1))
        {
          memcpy(v65, v48, 4 * *(&v48 + 1));
          v49 = a7;
        }

        if (*(&v46 + 1))
        {
          memcpy(&v66[4 * v57], v46, 4 * *(&v46 + 1));
          v49 = a7;
        }

        v27 = a5;
        v90 = *(v49[9] + 4 * v657);
        v91 = *(v49[10] + 4 * v657);
        v92 = *(v49[11] + 4 * v657);
        v93 = *(v49[14] + 8 * v657) + 8;
        v94 = v90 + (*(*(a5 + 176) + 4 * v612) - *(*(a5 + 176) + 4 * v657)) * v654;
        v95 = *(v49[8] + 4 * v657);
        v96 = (*(*(a5 + 200) + v39) - *(*(a5 + 200) + 8 * v657)) * v654;
        v97 = v94 + v92 + v96;
        v98 = (v94 + v91 + (*(*(a5 + 184) + v39) - *(*(a5 + 184) + 8 * v657)) * v654);
        v99 = v93 + 16 * v98 * v94;
        v100 = v96 + v92;
        v43 = v99 + 16 * v100 * v94;
        v101 = v43 + 4 * v94;
        LODWORD(v659) = v94 + v91 + (*(*(a5 + 184) + v39) - *(*(a5 + 184) + 8 * v657)) * v654;
        DWORD1(v659) = v97;
        if (v91 <= 0)
        {
          v102 = 0;
        }

        else
        {
          v102 = v43 + 4 * v94;
        }

        *(&v659 + 1) = __PAIR64__(v94, v90);
        v103 = v101 + 4 * v91 + 4 * v94;
        if (v92 <= 0)
        {
          v103 = 0;
        }

        *&v660 = v95;
        *(&v660 + 1) = v93;
        *&v661 = v98;
        *(&v661 + 1) = v93 + 16 * v98 * v94;
        *&v662 = v100;
        *(&v662 + 1) = v99 + 16 * v100 * v94;
        *&v663 = v101 + 4 * v91;
        *(&v663 + 1) = __PAIR64__(v92, v91);
        *&v664 = v102;
        *(&v664 + 1) = v103;
      }

      else
      {
        v43 = *(&v662 + 1);
        if (!*(&v662 + 1))
        {
          v44 = 1;
          v27 = a5;
          goto LABEL_54;
        }

        v27 = a5;
      }
    }

    else
    {
      v599 = 0uLL;
      v598 = 0uLL;
    }

    if (SHIDWORD(v659) <= SDWORD2(v659))
    {
      v44 = 0;
      a6 = v654;
    }

    else
    {
      v104 = 0;
      v105 = v27[22];
      v106 = v663;
      a6 = v654;
      do
      {
        *(v43 + 4 * v104) = v104 + *(v105 + 4 * v657) * v654;
        *(v106 + 4 * v104) = v104 + *(v105 + 4 * v657) * v654;
        ++v104;
      }

      while (v104 < SHIDWORD(v659) - SDWORD2(v659));
      v44 = 0;
    }

    goto LABEL_54;
  }

  v599 = 0uLL;
  v598 = 0uLL;
  v43 = 0;
  v44 = 1;
LABEL_54:
  v107 = v659;
  if (v659 >= 1)
  {
    v108 = 0;
    v109 = v664;
    do
    {
      if (v108 >= SHIDWORD(v659))
      {
        v111 = v107 - SDWORD2(v663);
        if (v108 >= v111)
        {
          v110 = *(v109 - 4 * v111 + 4 * v108);
        }

        else
        {
          v110 = (v108 - HIDWORD(v659)) % a6 + *(v27[24] + 4 * *(v27[23] + 8 * v657) + 4 * ((v108 - HIDWORD(v659)) / a6)) * a6;
        }
      }

      else if (v44)
      {
        v110 = v108 + *(v27[22] + 4 * v657) * a6;
      }

      else
      {
        v110 = *(v43 + 4 * v108);
      }

      if (v110 < 0)
      {
        v110 = -v110;
      }

      *(a23 + 4 * v110) = v108++;
      v107 = v659;
    }

    while (v108 < v659);
  }

  v112 = a15;
  v113 = DWORD1(v659);
  if (SDWORD1(v659) >= 1)
  {
    v114 = 0;
    v115 = *(&v664 + 1);
    v116 = v663;
    do
    {
      if (v114 >= SHIDWORD(v659))
      {
        v118 = v113 - SHIDWORD(v663);
        if (v114 >= v118)
        {
          v117 = *(v115 - 4 * v118 + 4 * v114);
        }

        else
        {
          v117 = (v114 - HIDWORD(v659)) % a6 + *(v27[26] + 4 * *(v27[25] + 8 * v657) + 4 * ((v114 - HIDWORD(v659)) / a6)) * a6;
        }
      }

      else if (v44)
      {
        v117 = v114 + *(v27[22] + 4 * v657) * a6;
      }

      else
      {
        v117 = *(v116 + 4 * v114);
      }

      if (v117 < 0)
      {
        v117 = -v117;
      }

      *(v653 + 4 * v117) = v114++;
      v113 = SDWORD1(v659);
    }

    while (v114 < SDWORD1(v659));
  }

  v119 = 16 * SHIDWORD(v659);
  bzero(*(&v660 + 1), v119 * v661);
  bzero(*(&v661 + 1), v119 * v662);
  v120 = a7;
  v121 = a21;
  sub_2367234E4(a2, a1, SHIDWORD(v659), a3, v27, *(&v660 + 1), v661, *(&v661 + 1), v662, a23, v653, a7[12], a7[13]);
  v122 = a19;
  v123 = v654;
  if (*(&v659 + 4) > 0)
  {
    v124 = (v27[30] + 8 * v657);
    v125 = *v124;
    if (*v124 < v124[1])
    {
      v126 = v113;
      v623 = v113;
      do
      {
        if (*(v27[32] + v125) == 3)
        {
          v127 = *(v27[31] + 4 * v125);
          if ((*(a17 + v127) & 1) == 0)
          {
            if (a4 == 83)
            {
              v128 = *(v120[9] + 4 * v127);
              v129 = *(v120[10] + 4 * v127);
              v130 = *(v120[11] + 4 * v127);
            }

            else
            {
              v128 = 0;
              v129 = 0;
              v130 = 0;
            }

            v646 = v27[22];
            v131 = v128 + (*(v646 + 4 * (v127 + 1)) - *(v646 + 4 * v127)) * v123;
            v132 = v131;
            if (a4 == 83)
            {
              v132 = *(v120[8] + 4 * v127);
            }

            v133 = v27[23];
            v134 = 8 * (v127 + 1);
            v135 = *(v120[14] + 8 * v127) + 8;
            v136 = 8 * v127;
            v137 = v131 + v129 + (*(v133 + v134) - *(v133 + v136)) * v654;
            v138 = v27[25];
            LODWORD(v134) = *(v138 + v134);
            LODWORD(v136) = *(v138 + v136);
            v123 = v654;
            v139 = v135 + 16 * v137 * v131 + 16 * (v130 + (v134 - v136) * v654) * v131;
            v140 = v139 + 4 * v131 + 4 * v129;
            if (a4 == 81)
            {
              v141 = 0;
            }

            else
            {
              v141 = v139;
            }

            if (a4 == 81)
            {
              v142 = 0;
            }

            else
            {
              v142 = v140;
            }

            v620 = v142;
            if (v132 != v131)
            {
              v617 = v131;
              v143 = *(a3 + 28);
              v638 = v120[12];
              v641 = (v143 * v143);
              if (v638)
              {
                v611 = v120[13];
                v607 = v125;
                if (v132 >= v131)
                {
                  sub_23672AB18(v112);
                  v176 = v623;
                }

                else
                {
                  v593 = v132;
                  v595 = v141;
                  v144 = v132;
                  do
                  {
                    v624 = v144;
                    LODWORD(v145) = *(v620 + 4 * v144);
                    if (v145 >= 0)
                    {
                      v145 = v145;
                    }

                    else
                    {
                      v145 = -v145;
                    }

                    if (*(v121 + 4 * v145) >= a1)
                    {
                      v146 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v145 / v143)));
                      v147 = *v146;
                      v148 = v146[1];
                      if (v147 < v148)
                      {
                        v629 = *(v653 + 4 * v145);
                        v149 = v145 % v143;
                        v150 = *(a3 + 16);
                        v151 = v611 + 8 * (v145 * v143);
                        v152 = v659;
                        do
                        {
                          v153 = *(v150 + 4 * v147);
                          if ((v153 & 0x80000000) == 0 && v153 < *a3 && v143 != 0)
                          {
                            v155 = 0;
                            v156 = *(*(a5 + 136) + 4 * v153) * v143;
                            v157 = HIDWORD(v659);
                            v158 = v152 - DWORD2(v663);
                            v159 = v664;
                            v160 = *(&v662 + 1);
                            v161 = *(&v660 + 1) + 16 * v661 * v629;
                            v162 = (v638 + 8 * v143 * v156);
                            v163 = (a19 + 4 * v156);
                            v164 = (a23 + 4 * v156);
                            v165 = v143;
                            do
                            {
                              v167 = *v164++;
                              v166 = v167;
                              if (v167 < v152)
                              {
                                v168 = v166;
                                if (v166 >= v157)
                                {
                                  v169 = v166 >= v158 ? *(v159 + 4 * (v166 - v158)) : (v166 - v157) % v143 + *(*(a5 + 192) + 4 * *(v133 + 8 * v657) + 4 * ((v166 - v157) / v143)) * v143;
                                }

                                else if ((v166 & 0x80000000) != 0)
                                {
                                  v169 = 0x7FFFFFFF;
                                }

                                else
                                {
                                  v169 = v160 ? *(v160 + 4 * v166) : v166 + *(v646 + 4 * v657) * v143;
                                }

                                if (v156 == v169 && *v163 >= a1)
                                {
                                  *(v161 + 16 * v168) = vmulq_n_f64(vmulq_n_f64(*(*(a3 + 32) + 16 * v147 * v641 + 16 * v155 + 16 * v149 * v143), *v162), *(v151 + 8 * v149));
                                }
                              }

                              ++v155;
                              v162 += v143 + 1;
                              ++v163;
                              LODWORD(v156) = v156 + 1;
                              --v165;
                            }

                            while (v165);
                          }

                          ++v147;
                        }

                        while (v147 != v148);
                      }
                    }

                    ++v144;
                    v121 = a21;
                  }

                  while (v624 + 1 != v617);
                  v112 = a15;
                  sub_23672AB18(a15);
                  v170 = *a15;
                  v171 = *(a15 + 4);
                  v172 = v593 - v617;
                  v173 = (v595 + 4 * v593);
                  do
                  {
                    v175 = *v173++;
                    v174 = v175;
                    if (v175 < 0)
                    {
                      v174 = -v174;
                    }

                    *(v170 + 4 * v174) = v171;
                    v89 = __CFADD__(v172++, 1);
                  }

                  while (!v89);
                  v126 = DWORD1(v659);
                  v176 = DWORD1(v659);
                  v125 = v607;
                }

                v623 = v176;
                if (v176 < 1)
                {
                  v120 = a7;
                  v27 = a5;
                  v123 = v654;
                  v122 = a19;
                }

                else
                {
                  v597 = v126;
                  v211 = 0;
                  v212 = SHIDWORD(v659);
                  v647 = SHIDWORD(v659) - SDWORD2(v659);
                  v213 = v176;
                  v630 = v176 - SHIDWORD(v663);
                  v618 = *(&v664 + 1);
                  v626 = *(&v662 + 1);
                  v621 = v663;
                  v214 = 16 * v641;
                  do
                  {
                    if (v211 >= v212 || v211 < v647)
                    {
                      if (v211 >= v212)
                      {
                        v215 = a21;
                        v216 = v211 >= v630 ? *(v618 + 4 * (v211 - v630)) : (v211 - v212) % v143 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v657) + 4 * ((v211 - v212) / v143)) * v143;
                      }

                      else
                      {
                        v215 = a21;
                        v216 = v626 ? *(v621 + 4 * v211) : v211 + *(*(a5 + 176) + 4 * v657) * v143;
                      }

                      if (*(v215 + 4 * v216) >= a1)
                      {
                        v217 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v216 / v143)));
                        v218 = *v217;
                        v219 = v217[1];
                        if (*v217 < v219)
                        {
                          v220 = v216 % v143;
                          v221 = *(a3 + 16);
                          v222 = v611 + 8 * v216 * v143;
                          v223 = v214 * v218 + 16 * v216 % v143 * v143;
                          do
                          {
                            v224 = *(v221 + 4 * v218);
                            if ((v224 & 0x80000000) == 0 && v224 < *a3 && v143 != 0)
                            {
                              v226 = 0;
                              v227 = *(*(a5 + 136) + 4 * v224) * v143;
                              v228 = *(a15 + 4);
                              v229 = v662;
                              v230 = *(&v661 + 1) + 16 * (v211 - v212);
                              v231 = *(&v660 + 1) + 16 * v661 * v211;
                              v232 = *a15 + 4 * v227;
                              v233 = (v638 + 8 * v143 * v227);
                              do
                              {
                                if (*(a19 + 4 * v227 + 4 * v226) >= a1 && v227 + v226 < *(*(a5 + 176) + 4 * v657) * v143 && *(v232 + 4 * v226) >= v228)
                                {
                                  v234 = *(a23 + 4 * v227 + 4 * v226);
                                  v235 = (v231 + 16 * v234);
                                  v236 = (v230 + 16 * v229 * v234);
                                  if (v211 >= v212)
                                  {
                                    v235 = v236;
                                  }

                                  *v235 = vmulq_n_f64(vmulq_n_f64(*(*(a3 + 32) + v223 + 16 * v226), *v233), *(v222 + 8 * v220));
                                }

                                ++v226;
                                v233 += v143 + 1;
                              }

                              while (v143 != v226);
                            }

                            ++v218;
                            v223 += v214;
                          }

                          while (v218 != v219);
                        }
                      }
                    }

                    ++v211;
                  }

                  while (v211 != v213);
                  v120 = a7;
                  v27 = a5;
                  v123 = v654;
                  v122 = a19;
                  v121 = a21;
                  v112 = a15;
                  v125 = v607;
                  v126 = v597;
                }
              }

              else
              {
                if (v132 >= v131)
                {
                  sub_23672AB18(v112);
                  v123 = v654;
                }

                else
                {
                  v596 = v141;
                  v608 = v125;
                  v177 = v132;
                  v178 = v659;
                  v179 = HIDWORD(v659);
                  v180 = v659 - DWORD2(v663);
                  v181 = v664;
                  v182 = *(&v662 + 1);
                  v183 = *(&v660 + 1);
                  v184 = v661;
                  v185 = v132;
                  do
                  {
                    v186 = *(v620 + 4 * v185);
                    if (v186 >= 0)
                    {
                      v187 = v186;
                    }

                    else
                    {
                      v187 = -v186;
                    }

                    if (*(a21 + 4 * v187) >= a1)
                    {
                      v188 = *(v27[20] + 4 * (v187 / v143));
                      v189 = *(a3 + 8);
                      v190 = (v189 + 8 * v188);
                      v191 = *v190;
                      if (*v190 < v190[1])
                      {
                        v192 = *(v653 + 4 * v187);
                        v193 = v187 % v143 * v143;
                        v194 = v183 + 16 * v184 * v192;
                        do
                        {
                          v195 = *(*(a3 + 16) + 4 * v191);
                          if ((v195 & 0x80000000) == 0 && v195 < *a3 && v143 != 0)
                          {
                            v197 = 0;
                            v198 = *(v27[17] + 4 * v195) * v143;
                            v199 = (v122 + 4 * v198);
                            v200 = (a23 + 4 * v198);
                            v201 = v143;
                            do
                            {
                              v203 = *v200++;
                              v202 = v203;
                              if (v203 < v178)
                              {
                                if (v202 >= v179)
                                {
                                  v204 = v202 >= v180 ? *(v181 + 4 * (v202 - v180)) : (v202 - v179) % v143 + *(v27[24] + 4 * *(v27[23] + 8 * v657) + 4 * ((v202 - v179) / v143)) * v143;
                                }

                                else if ((v202 & 0x80000000) != 0)
                                {
                                  v204 = 0x7FFFFFFF;
                                }

                                else
                                {
                                  v204 = v182 ? *(v182 + 4 * v202) : v202 + *(v27[22] + 4 * v657) * v143;
                                }

                                if (v198 == v204 && *v199 >= a1)
                                {
                                  *(v194 + 16 * v202) = *(*(a3 + 32) + 16 * v191 * v641 + 16 * v197 + 16 * v193);
                                }
                              }

                              ++v197;
                              ++v199;
                              ++v198;
                              --v201;
                            }

                            while (v201);
                            v189 = *(a3 + 8);
                            v112 = a15;
                          }

                          ++v191;
                        }

                        while (v191 < *(v189 + 8 * v188 + 8));
                      }
                    }

                    ++v185;
                  }

                  while (v185 != v617);
                  sub_23672AB18(v112);
                  v205 = *v112;
                  v206 = *(v112 + 4);
                  v207 = v177 - v617;
                  v208 = (v596 + 4 * v177);
                  do
                  {
                    v210 = *v208++;
                    v209 = v210;
                    if (v210 < 0)
                    {
                      v209 = -v209;
                    }

                    *(v205 + 4 * v209) = v206;
                    v89 = __CFADD__(v207++, 1);
                  }

                  while (!v89);
                  v126 = DWORD1(v659);
                  v123 = v654;
                  v121 = a21;
                  v125 = v608;
                }

                v120 = a7;
                v122 = a19;
                if (v126 < 1)
                {
                  v623 = v126;
                }

                else
                {
                  v237 = 0;
                  v238 = SHIDWORD(v659);
                  v623 = DWORD1(v659);
                  v239 = SHIDWORD(v659) - SDWORD2(v659);
                  v240 = SHIDWORD(v663);
                  v648 = *(&v664 + 1);
                  v241 = *(&v662 + 1);
                  v242 = v663;
                  v243 = 16 * v641;
                  do
                  {
                    if (v237 >= v238 || v237 < v239)
                    {
                      if (v237 >= v238)
                      {
                        v245 = v126 - v240;
                        v244 = v237 >= v245 ? *(v648 + 4 * (v237 - v245)) : (v237 - v238) % v143 + *(v27[26] + 4 * *(v27[25] + 8 * v657) + 4 * ((v237 - v238) / v143)) * v143;
                      }

                      else
                      {
                        v244 = v241 ? *(v242 + 4 * v237) : v237 + *(v27[22] + 4 * v657) * v143;
                      }

                      if (*(v121 + 4 * v244) >= a1)
                      {
                        v246 = *(v27[20] + 4 * (v244 / v143));
                        v247 = *(a3 + 8);
                        v248 = (v247 + 8 * v246);
                        v249 = *v248;
                        if (*v248 < v248[1])
                        {
                          v250 = v243 * v249 + 16 * v244 % v143 * v143;
                          do
                          {
                            v251 = *(*(a3 + 16) + 4 * v249);
                            if ((v251 & 0x80000000) == 0 && v251 < *a3 && v143 != 0)
                            {
                              v253 = *(v27[17] + 4 * v251) * v143;
                              v254 = v143;
                              v255 = v250;
                              do
                              {
                                if (*(a19 + 4 * v253) >= a1 && v253 < *(v27[22] + 4 * v657) * v143 && *(*v112 + 4 * v253) >= *(v112 + 4))
                                {
                                  v256 = *(a23 + 4 * v253);
                                  v257 = v256;
                                  v258 = &v661;
                                  if (v237 < v238)
                                  {
                                    v257 = v237;
                                  }

                                  else
                                  {
                                    v258 = &v662;
                                    v256 = v237 - v238;
                                  }

                                  v259 = &v660 + 8;
                                  if (v237 >= v238)
                                  {
                                    v259 = &v661 + 8;
                                  }

                                  *(*v259 + 16 * *v258 * v257 + 16 * v256) = *(*(a3 + 32) + v255);
                                }

                                v255 += 16;
                                ++v253;
                                --v254;
                              }

                              while (v254);
                              v247 = *(a3 + 8);
                            }

                            ++v249;
                            v250 += v243;
                          }

                          while (v249 < *(v247 + 8 * v246 + 8));
                          LODWORD(v126) = v623;
                        }
                      }
                    }

                    ++v237;
                    v123 = v654;
                  }

                  while (v237 < v126);
                  v126 = v623;
                }
              }
            }
          }
        }

        ++v125;
      }

      while (v125 < *(v27[30] + 8 * v657 + 8));
    }
  }

  if (SHIDWORD(v663) >= 1)
  {
    v260 = a7[12];
    v261 = *(a3 + 28);
    v262 = (v261 * v261);
    v649 = SDWORD1(v659);
    v263 = DWORD1(v659) - HIDWORD(v663);
    if (v260)
    {
      v642 = a7[13];
      v264 = *(&v664 + 1);
      if (v261 <= 1)
      {
        v265 = 1;
      }

      else
      {
        v265 = *(a3 + 28);
      }

      v266 = v263;
      v267 = 16 * v262;
      v268 = 8 * *(a3 + 28);
      v269 = v263;
      do
      {
        v270 = *(v264 + 4 * (v269 - v266));
        if (*(v121 + 4 * v270) >= a1)
        {
          v271 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v270 / v261)));
          v272 = *v271;
          v273 = v271[1];
          if (v272 < v273)
          {
            v274 = v270 % v261;
            v275 = *(a3 + 16);
            v276 = v642 + 8 * v270 * v261;
            v277 = v267 * v272 + 16 * v270 % v261 * v261;
            do
            {
              v278 = *(v275 + 4 * v272);
              if ((v278 & 0x80000000) == 0 && v278 < *a3)
              {
                v279 = *(*(a5 + 136) + 4 * v278) * v261;
                v280 = HIDWORD(v659);
                v281 = v662;
                v282 = *(&v661 + 1) + 16 * (v269 - HIDWORD(v659));
                v283 = (v260 + v268 * v279);
                v284 = (a23 + 4 * v279);
                v285 = (a19 + 4 * v279);
                v286 = v265;
                v287 = v277;
                do
                {
                  v288 = *v285++;
                  if (v288 >= a1)
                  {
                    v289 = *v284;
                    if ((v289 & 0x80000000) == 0 && v289 < v280 && v279 == *(*(&v281 + 1) + 4 * v289))
                    {
                      *(v282 + 16 * v281 * v289) = vmulq_n_f64(vmulq_n_f64(*(*(a3 + 32) + v287), *v283), *(v276 + 8 * v274));
                    }
                  }

                  v287 += 16;
                  v283 = (v283 + v268 + 8);
                  LODWORD(v279) = v279 + 1;
                  ++v284;
                  --v286;
                }

                while (v286);
              }

              ++v272;
              v277 += v267;
            }

            while (v272 != v273);
          }
        }

        ++v269;
        v121 = a21;
      }

      while (v269 < v649);
    }

    else
    {
      if (v261 <= 1)
      {
        v290 = 1;
      }

      else
      {
        v290 = *(a3 + 28);
      }

      v291 = v263;
      v292 = HIDWORD(v659);
      v293 = *(&v664 + 1);
      v294 = v662;
      v295 = 16 * v262;
      v296 = v291;
      v297 = *(&v661 + 1);
      do
      {
        v298 = *(v293 + 4 * (v296 - v291));
        if (*(v121 + 4 * v298) >= a1)
        {
          v299 = *(*(a5 + 160) + 4 * (v298 / v261));
          v300 = *(a3 + 8);
          v301 = (v300 + 8 * v299);
          v302 = *v301;
          if (*v301 < v301[1])
          {
            v303 = v295 * v302 + 16 * v298 % v261 * v261;
            do
            {
              v304 = *(*(a3 + 16) + 4 * v302);
              if ((v304 & 0x80000000) == 0 && v304 < *a3)
              {
                v305 = *(*(a5 + 136) + 4 * v304) * v261;
                v306 = (a23 + 4 * v305);
                v307 = (a19 + 4 * v305);
                v308 = v290;
                v309 = v303;
                do
                {
                  v310 = *v307++;
                  if (v310 >= a1)
                  {
                    v311 = *v306;
                    if ((v311 & 0x80000000) == 0 && v311 < v292 && v305 == *(*(&v294 + 1) + 4 * v311))
                    {
                      *(v297 + 16 * (v296 - v292) + 16 * v294 * v311) = *(*(a3 + 32) + v309);
                    }
                  }

                  v309 += 16;
                  ++v305;
                  ++v306;
                  --v308;
                }

                while (v308);
                v300 = *(a3 + 8);
              }

              ++v302;
              v303 += v295;
            }

            while (v302 < *(v300 + 8 * v299 + 8));
          }
        }

        ++v296;
      }

      while (v296 < v649);
    }
  }

  v650 = DWORD2(v663);
  if (SDWORD2(v663) >= 1)
  {
    v312 = a7[12];
    v313 = *(a3 + 28);
    v314 = (v313 * v313);
    v315 = *(a5 + 176);
    v316 = (v315 + 4 * v657);
    v317 = v316[1];
    v318 = *v316;
    v319 = *v316 * v313;
    v320 = v317 * v313;
    if (v312)
    {
      if (v319 < v320)
      {
        v321 = 0;
        v643 = a7[13];
        if (v313 <= 1)
        {
          v322 = 1;
        }

        else
        {
          v322 = v313;
        }

        v323 = ((v317 - v318) * v313);
        v324 = 16 * v314;
        v325 = 8 * v313;
        do
        {
          if (*(v121 + 4 * v319) >= a1)
          {
            v326 = (*(a3 + 8) + 8 * *(*(a5 + 160) + 4 * (v319 / v313)));
            v327 = *v326;
            v328 = v326[1];
            if (*v326 < v328)
            {
              v329 = *(a3 + 16);
              v330 = v659;
              v331 = v659 - v650;
              v332 = v324 * v327 + 16 * v319 % v313 * v313;
              do
              {
                v333 = *(v329 + 4 * v327);
                if ((v333 & 0x80000000) == 0 && v333 < *a3)
                {
                  v334 = *(*(a5 + 136) + 4 * v333) * v313;
                  v335 = v664;
                  v336 = *(&v660 + 1) + 16 * v661 * v321;
                  v337 = (v312 + v325 * v334);
                  v338 = (a19 + 4 * v334);
                  v339 = (a23 + 4 * v334);
                  v340 = v322;
                  v341 = v332;
                  do
                  {
                    v343 = *v339++;
                    v342 = v343;
                    v344 = v343 >= v330 || v342 < v331;
                    if (!v344 && v334 == *(v335 + 4 * (v342 - v331)) && *v338 >= a1)
                    {
                      *(v336 + 16 * v342) = vmulq_n_f64(vmulq_n_f64(*(*(a3 + 32) + v341), *v337), *(v643 + 8 * v319 * v313 + 8 * (v319 % v313)));
                    }

                    v341 += 16;
                    v337 = (v337 + v325 + 8);
                    ++v338;
                    LODWORD(v334) = v334 + 1;
                    --v340;
                  }

                  while (v340);
                }

                ++v327;
                v332 += v324;
              }

              while (v327 != v328);
            }
          }

          ++v319;
          ++v321;
          v121 = a21;
        }

        while (v321 != v323);
      }
    }

    else if (v319 < v320)
    {
      v345 = 0;
      if (v313 <= 1)
      {
        v346 = 1;
      }

      else
      {
        v346 = v313;
      }

      v319 = v319;
      v347 = v659;
      v348 = v659 - DWORD2(v663);
      v349 = v664;
      v350 = *(&v660 + 1);
      v351 = v661;
      v352 = 16 * v314;
      do
      {
        if (*(v121 + 4 * v319) >= a1)
        {
          v353 = *(*(a5 + 160) + 4 * (v319 / v313));
          v354 = *(a3 + 8);
          v355 = (v354 + 8 * v353);
          v356 = *v355;
          if (*v355 < v355[1])
          {
            v357 = v352 * v356 + 16 * v319 % v313 * v313;
            do
            {
              v358 = *(*(a3 + 16) + 4 * v356);
              if ((v358 & 0x80000000) == 0 && v358 < *a3)
              {
                v359 = *(*(a5 + 136) + 4 * v358) * v313;
                v360 = (a19 + 4 * v359);
                v361 = (a23 + 4 * v359);
                v362 = v346;
                v363 = v357;
                do
                {
                  v365 = *v361++;
                  v364 = v365;
                  v366 = v365 >= v347 || v364 < v348;
                  if (!v366 && v359 == *(v349 + 4 * (v364 - v348)) && *v360 >= a1)
                  {
                    *(v350 + 16 * v351 * v345 + 16 * v364) = *(*(a3 + 32) + v363);
                  }

                  v363 += 16;
                  ++v360;
                  ++v359;
                  --v362;
                }

                while (v362);
                v354 = *(a3 + 8);
              }

              ++v356;
              v357 += v352;
            }

            while (v356 < *(v354 + 8 * v353 + 8));
            v315 = *(a5 + 176);
          }
        }

        ++v319;
        ++v345;
      }

      while (v319 < *(v315 + 4 * v657 + 4) * v313);
    }
  }

  sub_23672AB18(a15);
  v367 = a5;
  v368 = *(a5 + 240);
  v369 = *(v368 + 8 * v657);
  v370 = *(v368 + 8 * v612);
  v371 = v604 >> 3;
  v372 = v370 - v369;
  if (v370 <= v369)
  {
    v372 = 0;
    v381 = v654;
    v376 = v605;
    v375 = v606;
  }

  else
  {
    v373 = *a15;
    v374 = *(a15 + 4);
    v376 = v605;
    v375 = v606;
    v377 = (48 * v371 + 16 * v606 + a23 + 4);
    v378 = (*(a5 + 256) + v369);
    v379 = (*(a5 + 248) + 4 * v369);
    v380 = v372;
    v381 = v654;
    do
    {
      v383 = *v379++;
      v382 = v383;
      LOBYTE(v383) = *v378++;
      *(v377 - 1) = v382;
      *v377 = v383;
      v377 += 8;
      *(v373 + 4 * v382) = v374;
      --v380;
    }

    while (v380);
  }

  v384 = a16;
  v385 = 8 * v376;
  v386 = v659;
  if (v659 < 1)
  {
    LODWORD(v387) = 0;
  }

  else
  {
    v387 = 0;
    v388 = v664;
    v389 = *(&v662 + 1);
    do
    {
      v390 = v387;
      if (v387 >= SHIDWORD(v659))
      {
        v392 = v386 - SDWORD2(v663);
        if (v387 >= v392)
        {
          v391 = *(v388 - 4 * v392 + 4 * v387);
        }

        else
        {
          v391 = (v387 - HIDWORD(v659)) % v381 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v657) + 4 * ((v387 - HIDWORD(v659)) / v381)) * v381;
        }
      }

      else if (v389)
      {
        v391 = *(v389 + 4 * v387);
      }

      else
      {
        v391 = v387 + *(*(a5 + 176) + 4 * v657) * v381;
      }

      ++v387;
      *(a23 + v385 + 48 * v371 + 16 * v375 + 4 * v390) = v391;
      v386 = v659;
    }

    while (v390 + 1 < v659);
  }

  v393 = DWORD1(v659);
  if (SDWORD1(v659) < 1)
  {
    v609 = 0;
  }

  else
  {
    v394 = 0;
    v395 = *(&v664 + 1);
    v396 = *(&v662 + 1);
    v397 = v663;
    v398 = a23 + v385 + 56 * v371 + 16 * v375;
    do
    {
      v399 = v394;
      if (v394 >= SHIDWORD(v659))
      {
        v401 = v393 - SHIDWORD(v663);
        if (v394 >= v401)
        {
          v400 = *(v395 - 4 * v401 + 4 * v394);
        }

        else
        {
          v400 = (v394 - HIDWORD(v659)) % v381 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v657) + 4 * ((v394 - HIDWORD(v659)) / v381)) * v381;
        }
      }

      else if (v396)
      {
        v400 = *(v397 + 4 * v394);
      }

      else
      {
        v400 = v394 + *(*(a5 + 176) + 4 * v657) * v381;
      }

      ++v394;
      *(v398 + 4 * v399) = v400;
      v393 = DWORD1(v659);
    }

    while (v399 + 1 < SDWORD1(v659));
    v609 = v399 + 1;
  }

  sub_23672AB18(a16);
  v402 = v614;
  v403 = a7;
  if (v372)
  {
    v633 = *(&v660 + 1);
    v631 = v661;
    v619 = v662;
    v622 = *(&v661 + 1);
    do
    {
      while (1)
      {
        --v372;
        v404 = *(v402 + 8 * v372);
        v405 = *(v384 + 16);
        if (*(*v384 + 4 * v404) < v405)
        {
          break;
        }

LABEL_491:
        if (!v372)
        {
          goto LABEL_494;
        }
      }

      *(*v384 + 4 * v404) = v405;
      v651 = v404;
      if ((*(a17 + v404) & 1) == 0)
      {
        v406 = v403[8];
        if (!v406 || *(v406 + 4 * v404) >= 1)
        {
          if (a4 == 83)
          {
            v407 = v404;
            v408 = *(v403[9] + 4 * v404);
            v409 = *(v403[10] + 4 * v404);
            v410 = *(v403[11] + 4 * v404);
            v411 = v654;
          }

          else
          {
            v408 = 0;
            v409 = 0;
            v410 = 0;
            v411 = v654;
            v407 = v404;
          }

          v412 = v404 << 32;
          v413 = *(v367 + 176);
          v414 = v412 + 0x100000000;
          v415 = (*(v413 + (v414 >> 30)) - *(v413 + 4 * v407)) * v411;
          v416 = v415 + v408;
          v417 = v415 + v408;
          if (a4 == 83)
          {
            v417 = *(v406 + 4 * v407);
          }

          v418 = v414 >> 32;
          v419 = *(v367 + 184);
          v418 *= 8;
          v420 = *(v419 + 8 * v407);
          v421 = v416 + v409 + (*(v419 + v418) - v420) * v411;
          v422 = *(v367 + 200);
          v423 = *(v422 + v418);
          v424 = *(v422 + 8 * v407);
          v425 = (v423 - v424) * v411;
          v634 = *(v403[14] + 8 * v407) + 8;
          v625 = v425 + v410;
          v627 = v634 + 16 * v421 * v416;
          if (a4 == 81)
          {
            v426 = 0;
            v427 = 0;
            v428 = 0;
            v429 = v409 <= 0 ? 0 : v416;
            v430 = 4 * v429;
            v431 = v410 <= 0 ? 0 : v416;
            v635 = 4 * v431;
          }

          else
          {
            v426 = v634 + 16 * v421 * v416 + 16 * (v425 + v410) * v416;
            v427 = v426 + 4 * v416 + 4 * v409;
            if (v409 <= 0)
            {
              v430 = 0;
            }

            else
            {
              v430 = v426 + 4 * v416;
            }

            v432 = v427 + 4 * v416;
            if (v410 <= 0)
            {
              v432 = 0;
            }

            v635 = v432;
            v428 = a4 == 83 ? *(v403[9] + 4 * v657) : 0;
          }

          v433 = v421;
          if (v417 < v421)
          {
            v434 = 0;
            v637 = 0;
            v639 = 0;
            v435 = v416 + v410 + v425;
            v436 = v428 + (*(v413 + 4 * v657 + 4) - *(v413 + 4 * v657)) * v654;
            v437 = v433 - v409;
            v644 = v417;
            v438 = v430 + 4 * (v417 + v409 - v433);
            do
            {
              v439 = v417 + v434;
              if (v439 >= v416)
              {
                if (v439 >= v437)
                {
                  v440 = *(v438 + 4 * v434);
                }

                else
                {
                  v440 = (v417 - v415 - v408 + v434) % v654 + *(*(v367 + 192) + 4 * v420 + 4 * ((v417 - v415 - v408 + v434) / v654)) * v654;
                }
              }

              else if (v439 < 0)
              {
                v440 = 0x7FFFFFFF;
              }

              else if (v426)
              {
                v440 = *(v426 + 4 * v417 + 4 * v434);
              }

              else
              {
                v440 = v417 + v434 + *(v413 + 4 * v651) * v654;
              }

              if (v440 >= 0)
              {
                v441 = v440;
              }

              else
              {
                v441 = -v440;
              }

              v442 = *(a23 + 4 * v441);
              if (v442 < v387 && *(v628 + 4 * v442) == v441 && *(a19 + 4 * v441) >= a1)
              {
                v443 = (v613 + 8 * v639);
                *v443 = v417 + v434;
                v443[1] = v442;
                v367 = a5;
                if (v442 >= v436)
                {
                  v444 = v637;
                }

                else
                {
                  v444 = v637 + 1;
                }

                v637 = v444;
                v639 = (v639 + 1);
              }

              ++v434;
            }

            while (v417 - v433 + v434);
            v445 = (v653 + (v604 & 0xFFFFFFFFFFFFFFF8));
            v446 = v610;
            v384 = a16;
            if (v639)
            {
              if (v417 < v435)
              {
                v447 = 0;
                v448 = 0;
                v449 = 0;
                v450 = v435 - v410;
                v451 = v427 + 4 * v417;
                v452 = v417 - v415 - v408;
                v453 = v417 - v435;
                v454 = v635 + 4 * (v417 + v410 - v435);
                do
                {
                  v455 = v417 + v447;
                  if (v455 >= v416)
                  {
                    if (v455 >= v450)
                    {
                      v456 = *(v454 + 4 * v447);
                    }

                    else
                    {
                      v456 = (v452 + v447) % v654 + *(*(v367 + 208) + 4 * v424 + 4 * ((v452 + v447) / v654)) * v654;
                    }
                  }

                  else if (v455 < 0)
                  {
                    v456 = 0x7FFFFFFF;
                  }

                  else if (v426)
                  {
                    v456 = *(v451 + 4 * v447);
                  }

                  else
                  {
                    v456 = v417 + v447 + *(v413 + 4 * v651) * v654;
                  }

                  if (v456 >= 0)
                  {
                    v457 = v456;
                  }

                  else
                  {
                    v457 = -v456;
                  }

                  v458 = *(v653 + 4 * v457);
                  if (v458 < v609 && *(v616 + 4 * v458) == v457)
                  {
                    v457 = *(a21 + 4 * v457);
                    if (v457 >= a1)
                    {
                      v457 = &v610[v449];
                      *v457 = v417 + v447;
                      *(v457 + 4) = v458;
                      if (v458 < v436)
                      {
                        ++v448;
                      }

                      ++v449;
                    }
                  }

                  ++v447;
                }

                while (v453 + v447);
                v460 = v639;
                v459 = v417;
                if (v449)
                {
                  if (v637 | v448)
                  {
                    v461 = v634;
                    v462 = v625;
                    if (v637 >= 1)
                    {
                      v463 = 0;
                      v464 = v653 + (v604 & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v465 = (v613 + 8 * v463);
                        v466 = v465[1];
                        if (v466 >= v436)
                        {
                          v467 = v464;
                          v468 = v463;
                          while (++v468 < v639)
                          {
                            v469 = (v467 + 8);
                            v470 = *(v467 + 12);
                            v467 += 8;
                            if (v470 < v436)
                            {
                              v471 = *v469;
                              *v469 = *v465;
                              *v465 = v471;
                              v469[1] = v466;
                              v465[1] = v470;
                              break;
                            }
                          }
                        }

                        ++v463;
                        v464 += 8;
                      }

                      while (v463 != v637);
                    }

                    v472 = a12;
                    if (v448 >= 1)
                    {
                      v473 = 0;
                      v474 = v610;
                      do
                      {
                        v475 = &v610[v473];
                        v476 = v475[1];
                        if (v476 >= v436)
                        {
                          v477 = v474;
                          v478 = v473;
                          while (++v478 < v449)
                          {
                            v479 = (v477 + 1);
                            v480 = *(v477++ + 3);
                            if (v480 < v436)
                            {
                              v481 = *v479;
                              *v479 = *v475;
                              *v475 = v481;
                              v479[1] = v476;
                              v475[1] = v480;
                              break;
                            }
                          }
                        }

                        ++v473;
                        ++v474;
                      }

                      while (v473 != v448);
                    }

                    v482 = v639 * v644;
                    v636 = v449;
                    if (a12[1] < (v639 * v644))
                    {
                      if (*a12)
                      {
                        (*(v367 + 32))(*a12, v457, v644, v639, v634, v613);
                      }

                      v483 = (*(v367 + 24))(16 * v482);
                      v472 = a12;
                      *a12 = v483;
                      a12[1] = v482;
                      v403 = a7;
                      v445 = (v653 + (v604 & 0xFFFFFFFFFFFFFFF8));
                      v446 = v610;
                      v460 = v639;
                      v459 = v644;
                      v462 = v625;
                      v461 = v634;
                    }

                    if (v459 >= 1)
                    {
                      v484 = 0;
                      for (i = 0; i != v459; ++i)
                      {
                        if (v460 >= 1)
                        {
                          v486 = v445;
                          v487 = v484;
                          v488 = v460;
                          do
                          {
                            v489 = *v486++;
                            *(*v472 + v487) = *(v461 + 16 * i * v433 + 16 * v489);
                            v487 += 16;
                            --v488;
                          }

                          while (v488);
                        }

                        v484 += 16 * v460;
                      }
                    }

                    v594 = v460;
                    v490 = v449 * v459;
                    if (a13[1] < (v449 * v459))
                    {
                      v491 = v462;
                      if (*a13)
                      {
                        (*(v367 + 32))(*a13, v457, v459, v460, v461, v445);
                      }

                      *a13 = (*(v367 + 24))(16 * v490);
                      a13[1] = v490;
                      v403 = a7;
                      v446 = v610;
                      LODWORD(v460) = v639;
                      v459 = v644;
                      v462 = v491;
                      v461 = v634;
                      v449 = v636;
                    }

                    v492 = a13;
                    if (v459 >= 1)
                    {
                      v493 = 0;
                      for (j = 0; j != v459; ++j)
                      {
                        if (v449 >= 1)
                        {
                          v495 = v446;
                          v496 = v493;
                          v497 = v449;
                          do
                          {
                            v498 = *v495++;
                            v499 = v627 + 16 * j * v462 + 16 * (v498 - v416);
                            v500 = (v461 + 16 * j + 16 * v498 * v433);
                            if (v498 >= v416)
                            {
                              v500 = v499;
                            }

                            *(*a13 + v496) = *v500;
                            v496 += 16;
                            --v497;
                          }

                          while (v497);
                        }

                        v493 += 16 * v449;
                      }
                    }

                    if (v448 * v460 <= (v449 - v448) * v637)
                    {
                      v501 = (v449 - v448) * v637;
                    }

                    else
                    {
                      v501 = v448 * v460;
                    }

                    if (a14[1] < v501)
                    {
                      if (*a14)
                      {
                        (*(v367 + 32))(*a14, a13);
                      }

                      *a14 = (*(v367 + 24))(16 * v501, v492);
                      a14[1] = v501;
                      v403 = a7;
                    }

                    v384 = a16;
                    if (v448 >= 1)
                    {
                      cblas_zgemm_NEWLAPACK();
                      v403 = a7;
                      v502 = 0;
                      v503 = *a14;
                      do
                      {
                        if (v639 >= 1)
                        {
                          v504 = v633 + 16 * SHIDWORD(v610[v502]) * v631;
                          v505 = v653 + (v604 & 0xFFFFFFFFFFFFFFF8);
                          v506 = v503;
                          v507 = v594;
                          do
                          {
                            v508 = *v506++;
                            *(v504 + 16 * *(v505 + 4)) = vaddq_f64(v508, *(v504 + 16 * *(v505 + 4)));
                            v505 += 8;
                            --v507;
                          }

                          while (v507);
                        }

                        ++v502;
                        v503 += v639;
                      }

                      while (v502 != v448);
                    }

                    if (v637 >= 1)
                    {
                      cblas_zgemm_NEWLAPACK();
                      v403 = a7;
                      if (v449 > v448)
                      {
                        v509 = v448;
                        v510 = *a14;
                        do
                        {
                          v511 = v622 + 16 * (HIDWORD(v610[v509]) - v436);
                          v512 = v653 + (v604 & 0xFFFFFFFFFFFFFFF8);
                          v513 = v510;
                          v514 = v637;
                          do
                          {
                            v515 = *v513++;
                            *(v511 + 16 * *(v512 + 4) * v619) = vaddq_f64(v515, *(v511 + 16 * *(v512 + 4) * v619));
                            v512 += 8;
                            --v514;
                          }

                          while (v514);
                          ++v509;
                          v510 += v637;
                        }

                        while (v509 != v449);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v516 = (*(v367 + 240) + 8 * v651);
      v517 = *v516;
      v518 = v516[1];
      if (v517 < v518)
      {
        v519 = *(v367 + 248);
        v520 = *a15;
        v402 = v614;
        do
        {
          v521 = *(v519 + 4 * v517);
          v522 = *(a15 + 4);
          if (*(v520 + 4 * v521) < v522)
          {
            v523 = *(*(v367 + 256) + v517);
            v524 = v614 + 8 * v372;
            *v524 = v521;
            ++v372;
            *(v524 + 4) = v523;
            *(v520 + 4 * v521) = v522;
          }

          ++v517;
        }

        while (v518 != v517);
        goto LABEL_491;
      }

      v402 = v614;
    }

    while (v372);
  }

LABEL_494:
  v525 = HIDWORD(v659);
  if (a4 == 83 && SHIDWORD(v659) >= 1)
  {
    v526 = 0;
    v527 = *(&v662 + 1);
    v528 = v663;
    do
    {
      *(a19 + 4 * *(v527 + 4 * v526)) = -1;
      *(a21 + 4 * *(v528 + 4 * v526++)) = -1;
      v525 = HIDWORD(v659);
    }

    while (v526 < SHIDWORD(v659));
  }

  if ((DWORD1(v659) - v525) * (v659 - v525) < 1)
  {
    v530 = 0;
  }

  else
  {
    v529 = 5 * (SHIDWORD(v663) + SDWORD2(v663));
    v530 = (*(v367 + 24))(v529 + 152);
    sub_236724DE4(v530, &v659, v598, SDWORD2(v598), v599, SDWORD2(v599), (v530 + 120), v529 + 32, v367);
    v531 = *(v530 + 16) * *(v530 + 8);
    v532 = (*(*v530 + 24))(16 * v531);
    *(v530 + 96) = v532;
    *(v530 + 104) = v531;
    bzero(v532, 16 * v531);
    v403 = a7;
    v367 = a5;
  }

  *(a10 + 8 * v657) = v530;
  v533 = *(v367 + 240);
  v534 = *(v533 + 8 * v657);
  v535 = v612;
  v536 = v654;
  if (v534 < *(v533 + 8 * v612))
  {
    v655 = v530;
    while (1)
    {
      v537 = *(*(v367 + 248) + 4 * v534);
      if (*(a17 + v537) == 1)
      {
        break;
      }

LABEL_543:
      if (++v534 >= *(v533 + 8 * v535))
      {
        goto LABEL_544;
      }
    }

    memset(&v665[1], 0, 56);
    if (a4 == 83)
    {
      v538 = *(v403[9] + 4 * v537);
      v539 = *(v403[10] + 4 * v537);
      v540 = *(v403[11] + 4 * v537);
    }

    else
    {
      v538 = 0;
      v539 = 0;
      v540 = 0;
    }

    v541 = *(v403[14] + 8 * v537) + 8;
    DWORD2(v665[0]) = v538;
    *(&v665[1] + 1) = v541;
    *(&v665[4] + 1) = __PAIR64__(v540, v539);
    HIDWORD(v665[0]) = v538 + (*(*(v367 + 176) + 4 * (v537 + 1)) - *(*(v367 + 176) + 4 * v537)) * v536;
    v542 = HIDWORD(v665[0]);
    if (a4 == 83)
    {
      v542 = *(v403[8] + 4 * v537);
    }

    LODWORD(v665[1]) = v542;
    v543 = 8 * (v537 + 1);
    LODWORD(v665[0]) = HIDWORD(v665[0]) + v539 + (*(*(v367 + 184) + v543) - *(*(v367 + 184) + 8 * v537)) * v536;
    v544 = (*(*(v367 + 200) + v543) - *(*(v367 + 200) + 8 * v537)) * v536;
    DWORD1(v665[0]) = HIDWORD(v665[0]) + v540 + v544;
    v545 = v541 + 16 * SLODWORD(v665[0]) * SHIDWORD(v665[0]);
    *&v665[2] = SLODWORD(v665[0]);
    *(&v665[2] + 1) = v545;
    *&v665[3] = v544 + v540;
    if (a4 == 81)
    {
      v546 = 0;
      v547 = 0;
    }

    else
    {
      v547 = v545 + 16 * (v544 + v540) * SHIDWORD(v665[0]);
      v546 = v547 + 4 * SHIDWORD(v665[0]) + 4 * v539;
      *(&v665[3] + 1) = v547;
      *&v665[4] = v546;
    }

    v548 = v547 + 4 * SHIDWORD(v665[0]);
    if (v539 <= 0)
    {
      v549 = 0;
    }

    else
    {
      v549 = v548;
    }

    v550 = v546 + 4 * SHIDWORD(v665[0]);
    if (v540 <= 0)
    {
      v551 = 0;
    }

    else
    {
      v551 = v550;
    }

    *&v665[5] = v549;
    *(&v665[5] + 1) = v551;
    v552 = *(a10 + 8 * v537);
    if (!v552)
    {
LABEL_542:
      v367 = a5;
      v533 = *(a5 + 240);
      goto LABEL_543;
    }

    v553 = *(*(a5 + 264) + 4 * v534) * v536;
    v554 = *(*(a5 + 272) + 4 * v534) * v536;
    v555 = *(*(a5 + 256) + v534);
    switch(v555)
    {
      case 3:
        v567 = a5;
        v575 = sub_236724410(&v659, v537, v665, v552, a5, v536, v553, v554, a23, v653);
        v530 = v655;
        sub_23671CEF0(v575, &v659, v655, v537, v665, v552, a5, v536, v553, v554, a23, v653);
        v564 = *(a10 + 8 * v537);
        v566 = v564 + 12;
        v576 = v564[12];
        if (!v576)
        {
          goto LABEL_541;
        }

        (*(*v564 + 32))(v576);
        goto LABEL_538;
      case 2:
        v568 = *(*(a5 + 280) + 4 * v534);
        sub_236724F10(&v658, *(a10 + 8 * v537));
        v569 = v568 * v654;
        sub_236723DC0(a1, &v659, v537, v665, v552, a5, v654, v553, v554, v568 * v654, a23, v653);
        v530 = v655;
        sub_23671C5FC(a1, &v659, v655, v537, v665, v552, a5, v654, v553, v554, v568 * v654, a23, v653);
        add_explicit = atomic_fetch_add_explicit((v552 + 24), -(v568 * v654), memory_order_release);
        if (*(v658 + 112) == 1)
        {
          v571 = (v658 + 113);
          atomic_store(0, (v658 + 113));
          std::__cxx_atomic_notify_one(v571);
        }

        v403 = a7;
        v536 = v654;
        v535 = v612;
        if (add_explicit != v569)
        {
          goto LABEL_542;
        }

        v572 = *(*v552 + 32);
        v574 = *(v552 + 96);
        v573 = (v552 + 96);
        v572(v574);
        *v573 = 0;
        v573[1] = 0;
        v403 = a7;
        v536 = v654;
        v535 = v612;
        if (HIDWORD(v665[0]) != LODWORD(v665[1]) || *(&v665[4] + 1))
        {
          goto LABEL_542;
        }

        v564 = *(a10 + 8 * v537);
        v566 = v564 + 12;
        v565 = v564[12];
        if (v565)
        {
LABEL_528:
          (*(*v564 + 32))(v565);
          v567 = a5;
LABEL_538:
          *v566 = 0;
          v566[1] = 0;
          v564 = *(a10 + 8 * v537);
LABEL_541:
          (*(v567 + 32))(v564);
          v403 = a7;
          *(a10 + 8 * v537) = 0;
          v536 = v654;
          v535 = v612;
          goto LABEL_542;
        }

        break;
      case 1:
        v556 = *(*(a5 + 280) + 4 * v534);
        sub_236724F10(&v658, *(a10 + 8 * v537));
        v557 = v553;
        v652 = v553;
        v558 = v556 * v654;
        sub_23672392C(a1, &v659, v537, v665, v552, a5, v654, v557, v554, v556 * v654, a23, v653);
        v530 = v655;
        sub_23671BEAC(a1, &v659, v655, v537, v665, v552, a5, v654, v652, v554, v556 * v654, a23, v653);
        v559 = atomic_fetch_add_explicit((v552 + 28), -(v556 * v654), memory_order_release);
        if (*(v658 + 112) == 1)
        {
          v560 = (v658 + 113);
          atomic_store(0, (v658 + 113));
          std::__cxx_atomic_notify_one(v560);
        }

        v403 = a7;
        v536 = v654;
        v535 = v612;
        if (v559 != v558)
        {
          goto LABEL_542;
        }

        v561 = *(*v552 + 32);
        v563 = *(v552 + 96);
        v562 = (v552 + 96);
        v561(v563);
        *v562 = 0;
        v562[1] = 0;
        v403 = a7;
        v536 = v654;
        v535 = v612;
        if (HIDWORD(v665[0]) != LODWORD(v665[1]) || *(&v665[4] + 1))
        {
          goto LABEL_542;
        }

        v564 = *(a10 + 8 * v537);
        v566 = v564 + 12;
        v565 = v564[12];
        if (v565)
        {
          goto LABEL_528;
        }

        break;
      default:
        goto LABEL_542;
    }

    v567 = a5;
    goto LABEL_541;
  }

LABEL_544:
  if (v530)
  {
    v577 = *(v530 + 96);
    v578 = *(v530 + 16);
  }

  else
  {
    v577 = 0;
    v578 = 0;
  }

  if (a27)
  {
    v579 = a27 + 64;
  }

  else
  {
    v579 = 0;
  }

  v580 = v603(v659, DWORD1(v659), HIDWORD(v659), *(&v660 + 1), v661, *(&v661 + 1), v662, v577, v578, *(&v662 + 1), v663, v367, v403, v601, v602, a25, a26, v579);
  v581 = *a8;
  if (*a8 <= v580)
  {
    v581 = v580;
  }

  *a8 = v581;
  v582 = *a9;
  if (*a9 <= SDWORD1(v659))
  {
    v582 = DWORD1(v659);
  }

  *a9 = v582;
  if (a4 == 83)
  {
    *(a7[8] + 4 * v657) = v580;
    return 0;
  }

  if (v580 == HIDWORD(v659))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_23672A160(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23672A17C(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(v3 + 64);
  v5 = *(v4 + 2);
  v6 = *(v5 + 344);
  v7 = *(v6 + 4 * a2);
  v52 = (a2 << 32) + 0x100000000;
  v8 = *(v6 + (v52 >> 30));
  v9 = a1[5];
  v10 = *(v3 + 48);
  v54 = *(v5 + 168);
  v55 = *(v4 + 5);
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v11 = *(v5 + 56);
  v12 = (4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = &v9[v12];
  v59[0] = v9;
  v59[1] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v60 = 1;
  bzero(v9, 4 * v11);
  v14 = *(*(v4 + 2) + 168);
  v57[0] = v13;
  v57[1] = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v58 = 1;
  v15 = 4 * v14;
  bzero(v13, 4 * v14);
  v16 = 0;
  v56 = 0;
  if (v7 < v8)
  {
    v17 = v10;
    v18 = v7;
    v19 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = &v13[v19];
    v21 = v17 - (v12 + v19);
    v16 = 1;
    v22 = (32 * v7) | 8;
    while (1)
    {
      v23 = *(v4 + 14);
      if (*(v23 + v18) & 1) != 0 || (sub_23672524C(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v65, v64, v63, v62, v61, v59, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_236727534(v7, SHIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v56 + 1, &v56, v55, v54, v63, v62, v61, v59, v57, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
        if (v25)
        {
          break;
        }
      }

      v16 = ++v18 < v8;
      v7 = (v7 + 1);
      v22 += 32;
      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    _X2 = 0;
    v27 = a1[1];
    atomic_store(v25, (v27 + 16));
    atomic_store(1u, (v27 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      __ulock_wake();
    }
  }

LABEL_10:
  (*(*(v4 + 2) + 32))(v65[0]);
  (*(*(v4 + 2) + 32))(v64[0]);
  (*(*(v4 + 2) + 32))(v63[0]);
  (*(*(v4 + 2) + 32))(v62[0]);
  result = (*(*(v4 + 2) + 32))(v61[0]);
  if (!v16)
  {
    v35 = v52 >> 32;
    v36 = *(*(v4 + 4) + 136);
    v37 = HIDWORD(v56);
    while (1)
    {
      v38 = *(v4 + 4);
      if (v37 <= v36)
      {
        break;
      }

      v39 = v36;
      atomic_compare_exchange_strong_explicit((v38 + 136), &v39, v37, memory_order_relaxed, memory_order_relaxed);
      _ZF = v39 == v36;
      v36 = v39;
      if (_ZF)
      {
        v38 = *(v4 + 4);
        break;
      }
    }

    v40 = *(v38 + 140);
    v41 = v56;
    do
    {
      if (v41 <= v40)
      {
        break;
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit((*(v4 + 4) + 140), &v42, v41, memory_order_relaxed, memory_order_relaxed);
      _ZF = v42 == v40;
      v40 = v42;
    }

    while (!_ZF);
    v43 = *(v4 + 2);
    v44 = *(v43 + 352);
    v45 = *(v44 + 8 * a2);
    if (v45 < *(v44 + 8 * v35))
    {
      do
      {
        v46 = (*(v4 + 7) + 40 * *(*(v43 + 360) + 4 * v45));
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v47 = a1[2];
          if (v47)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v47 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v47 + 32) = 0;
              _X2 = _X4 & 1 | v47;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          a1[2] = v46;
          a1[3] = 0;
        }

        ++v45;
        v43 = *(v4 + 2);
      }

      while (v45 < *(*(v43 + 352) + 8 * v35));
    }
  }

  return result;
}

uint64_t *sub_23672A590(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = *a4;
  if (a2)
  {
    sub_23672A658(a1, a2);
    v7 = a1[1];
    v8 = &v7[4 * a2];
    v9 = 32 * a2;
    do
    {
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = *(a3 + 24);
      sub_23672A718(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v7 += 4;
      v9 -= 32;
    }

    while (v9);
    a1[1] = v8;
  }

  return a1;
}

uint64_t sub_23672A658(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    sub_2366FB858();
  }

  result = sub_23672A69C((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 32 * a2;
  return result;
}

uint64_t sub_23672A69C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_array_new_length::bad_array_new_length(exception);
    v5 = MEMORY[0x277D82778];
    v6 = MEMORY[0x277D82620];
    goto LABEL_6;
  }

  result = (*(*a1 + 24))(32 * a2);
  if (!result)
  {
    v7 = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(v7);
    v5 = MEMORY[0x277D82788];
    v6 = MEMORY[0x277D826E0];
LABEL_6:
    __cxa_throw(v4, v5, v6);
  }

  return result;
}

uint64_t *sub_23672A718(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_23672A79C(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

uint64_t sub_23672A79C(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_2366FB858();
  }

  result = sub_23672A7E0((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 4 * a2;
  return result;
}

uint64_t sub_23672A7E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_array_new_length::bad_array_new_length(exception);
    v5 = MEMORY[0x277D82778];
    v6 = MEMORY[0x277D82620];
    goto LABEL_6;
  }

  result = (*(*a1 + 24))(4 * a2);
  if (!result)
  {
    v7 = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(v7);
    v5 = MEMORY[0x277D82788];
    v6 = MEMORY[0x277D826E0];
LABEL_6:
    __cxa_throw(v4, v5, v6);
  }

  return result;
}

uint64_t sub_23672A85C(uint64_t **a1)
{
  v1 = *a1;
  result = **a1;
  if (result)
  {
    v1[1] = result;
    return (*(v1[3] + 32))();
  }

  return result;
}

uint64_t *sub_23672A890(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_23672A8D8(result, *result);
    return (*((*a1)[3] + 32))(**a1);
  }

  return result;
}

uint64_t sub_23672A8D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 32);
      v5 -= 32;
      result = v6;
      if (v6)
      {
        *(v4 - 24) = result;
        result = (*(*(v4 - 8) + 32))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_23672A940(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (*a1)
  {
    (*(**(a1 + 32) + 32))();
  }

  return a1;
}

uint64_t sub_23672A9A0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  LODWORD(v5) = *(a2 + 16);
  if (v5 < *(a2 + 12))
  {
    v5 = v5;
    v6 = *(a2 + 56);
    do
    {
      v7 = *(v6 + 4 * v5);
      if (v7 < 0)
      {
        v7 = -v7;
      }

      *(a5 + 4 * v7) = v5++;
    }

    while (v5 < *(a2 + 12));
  }

  v8 = (*(a3 + 184) + 8 * result);
  v9 = *v8;
  v10 = v8[1];
  if (v9 < v10)
  {
    v11 = *(a3 + 192);
    do
    {
      if (a4 >= 1)
      {
        v12 = (a5 + 4 * (*(v11 + 4 * v9) * a4));
        v13 = a4;
        do
        {
          *v12++ = v5;
          LODWORD(v5) = v5 + 1;
          --v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  if (*(a2 + 72) >= 1)
  {
    v14 = 0;
    v15 = *(a2 + 80);
    do
    {
      *(a5 + 4 * *(v15 + 4 * v14)) = v5 + v14;
      ++v14;
    }

    while (v14 < *(a2 + 72));
  }

  return result;
}

uint64_t sub_23672AA5C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  LODWORD(v5) = *(a2 + 16);
  if (v5 < *(a2 + 12))
  {
    v5 = v5;
    v6 = *(a2 + 64);
    do
    {
      v7 = *(v6 + 4 * v5);
      if (v7 < 0)
      {
        v7 = -v7;
      }

      *(a5 + 4 * v7) = v5++;
    }

    while (v5 < *(a2 + 12));
  }

  v8 = (*(a3 + 200) + 8 * result);
  v9 = *v8;
  v10 = v8[1];
  if (v9 < v10)
  {
    v11 = *(a3 + 208);
    do
    {
      if (a4 >= 1)
      {
        v12 = (a5 + 4 * (*(v11 + 4 * v9) * a4));
        v13 = a4;
        do
        {
          *v12++ = v5;
          LODWORD(v5) = v5 + 1;
          --v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  if (*(a2 + 76) >= 1)
  {
    v14 = 0;
    v15 = *(a2 + 88);
    do
    {
      *(a5 + 4 * *(v15 + 4 * v14)) = v5 + v14;
      ++v14;
    }

    while (v14 < *(a2 + 76));
  }

  return result;
}

void sub_23672AB18(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2147483631)
  {
    *(a1 + 16) = 1;
    bzero(*a1, 4 * *(a1 + 8));
    v2 = *(a1 + 16);
  }

  *(a1 + 16) = v2 + 1;
}

int *sub_23672AB6C(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void sub_23672ABE8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_23672AC58()
{
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23672AD84()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_23672B098()
{
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_23672B188(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 16 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++v13[v18];
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = 16 * v5;
    LODWORD(v25) = v5;
    v26 = v5;
    do
    {
      v27 = v23;
      v28 = v11[v23++];
      if (v28 < v11[v23])
      {
        do
        {
          v29 = *(*(a1 + 2) + 4 * v28);
          if ((v29 & 0x80000000) == 0 && v29 < *a1)
          {
            v30 = v19[v29];
            v19[v29] = v30 + 1;
            *(v12 + 4 * v30) = v27;
            if (v26)
            {
              v31 = 0;
              v32 = *(a1 + 4) + 16 * v28 * v6;
              v33 = v10 + 8 + 16 * v6 * v30;
              do
              {
                if (v25)
                {
                  v34 = 0;
                  v35 = v33;
                  do
                  {
                    v36 = v32 + 16 * v31 + 16 * (v34 * v25);
                    v37 = -*(v36 + 8);
                    *(v35 - 1) = *v36;
                    *v35 = v37;
                    ++v34;
                    v25 = *(a1 + 28);
                    v35 += 2;
                    LODWORD(v5) = *(a1 + 28);
                  }

                  while (v34 < v25);
                }

                else
                {
                  v25 = v5;
                }

                ++v31;
                v33 += v24;
                v38 = v31 >= v25;
                LODWORD(v25) = v5;
              }

              while (!v38);
              v11 = *(a1 + 1);
              LODWORD(v25) = v5;
              v26 = v5;
            }
          }

          ++v28;
        }

        while (v28 < v11[v23]);
        LODWORD(v7) = a1[1];
      }
    }

    while (v23 < v7);
  }
}

int *_SparseNumericFactorQR_Complex_Double@<X0>(__int128 *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, char *a6@<X4>)
{
  v6 = a6;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v12 = a1[2];
  *(a5 + 56) = a1[3];
  *(a5 + 40) = v12;
  v13 = *a1;
  *(a5 + 24) = a1[1];
  v14 = *(a1 + 17);
  v16 = *a2;
  v15 = a2[1];
  v17 = *(a2 + 28);
  *a5 = -3;
  *(a5 + 8) = v13;
  *(a5 + 72) = 1;
  *(a5 + 88) = 0;
  v18 = (a5 + 88);
  *(a5 + 96) = 0;
  v19 = (a5 + 96);
  *(a5 + 80) = 0;
  v20 = *(a1 + 3);
  atomic_fetch_add((v20 + 48), 1u);
  if (*(a1 + 17) == 40)
  {
    if (a2[1] <= *a2)
    {
      v21 = *a2;
    }

    else
    {
      v21 = a2[1];
    }

    v27 = v15;
    v28 = v14;
    sub_236731F04(v21 * *(a2 + 28), *(a1 + 3), v18, v19);
    v15 = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = a6;
    v23 = *v19 + 16 * *(a2 + 28) * v22;
  }

  else
  {
    *v18 = 0;
    v23 = 32 * a2[1] * *(a2 + 28);
  }

  if (v16 >= v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v16;
  }

  *(a5 + 96) = v23;
  *(a5 + 80) = sub_23672B528(v14, v24 * v17, v20, 2 * *(a1 + 7), v20, a3, a4);

  return _SparseRefactorQR_Complex_Double(a2, a5, v25, v6);
}

uint64_t sub_23672B528(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  if (!a7)
  {
    a7 = (*(a5 + 24))(a4);
    if (!a7)
    {
      return a7;
    }
  }

  v14 = a7 + a4;
  v15 = (a7 + 71);
  v16 = (a7 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (a7 + a4 < v16 || (v17 = a6[1], *a7 = *a6, *(a7 + 16) = v17, *(a7 + 40) = 0, v15 = (a7 + 40), *(a7 + 32) = 1, *(a7 + 48) = 0, *(a7 + 56) = 0, v7 = *(a3 + 88), v18 = v16 + 8 * v7, v18 > v14) || (*v15 = v16, v8 = v18 + 16 * a2, v8 > v14))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 48) = v18;
  if (a1 == 40)
  {
    v19 = (v8 + 16 * *(*(a3 + 104) + 8 * v7)) & 0xFFFFFFFFFFFFFFF8;
    if (v14 >= v19)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v19 = v8;
  v8 = 0;
LABEL_10:
  *(a7 + 56) = v8;
  if (v7 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = (*(a3 + 120) + 8 * v20);
      v22 = (*(a3 + 104) + 8 * v20);
      v23 = (*(a3 + 96) + 4 * v20);
      *(*v15 + 8 * v20) = v19;
      v24 = v20 + 1;
      v25 = v22[1] - *v22;
      v26 = v23[1] - *v23;
      v27 = v21[1] - *v21;
      if (a1 != 40)
      {
        v27 = v26;
      }

      v19 += 16 * v25 * v27;
      v20 = v24;
    }

    while (v7 != v24);
  }

  return a7;
}

int *_SparseRefactorQR_Complex_Double(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = a1;
  *a2 = -3;
  v7 = *(a2 + 32);
  v8 = (*(a1 + 12) >> 2) & 7;
  if (v8 <= 1)
  {
    if (v8)
    {
      result = sub_23672D794(a1, *(a2 + 32));
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (*(v7 + 53) != 1)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = *(a1 + 1);
      v16 = *a1;
      v17 = v11;
      v18 = *(a1 + 4);
      result = sub_23672D480(&v16, v7);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    v9 = *(a2 + 32);
    if (v8 == 2)
    {
      result = sub_23672DAF8(a1, v9);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_23672DEEC(a1, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  v6 = result;
  v12 = 1;
LABEL_13:
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(v7 + 52))
  {
    v13 = *(v6 + 1);
    v16 = *v6;
    v17 = v13;
    v18 = *(v6 + 4);
    v14 = a4;
  }

  else
  {
    sub_23672B188(v6, a4, &v16);
    v15 = *(*(v6 + 1) + 8 * v6[1]);
    v14 = (&a4[8 * *v6 + 31 + 4 * v15 + v15 * 16 * BYTE12(v17) * BYTE12(v17)] & 0xFFFFFFFFFFFFFFF8);
  }

  result = sub_23672E594(*(a2 + 25), &v16, v7, *(a2 + 80), v14, a4 - v14 + 2 * *(a2 + 48));
  *a2 = result;
  if (v12)
  {
    return (*(v7 + 32))(v6);
  }

  return result;
}

uint64_t _SparseFactorQR_Complex_Double@<X0>(unsigned int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v413 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 12);
  if (v10 & 0x20) == 0 && (v10)
  {
    v11 = *(a3 + 40);
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EBF0();
      }

      _SparseTrap();
    }

    memset(&__str[68], 0, 188);
    strcpy(__str, "QR factorization can only factor matrix or its conjugate transpose\n");
    v11(__str);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = -3;
  v12 = *a2;
  v13 = a2[1];
  *(a5 + 8) = -3;
  *(a5 + 12) = v12;
  *(a5 + 16) = v13;
  v14 = *(a2 + 12);
  *(a5 + 20) = a2[6] & 1;
  *(a5 + 24) = *(a2 + 28);
  v15 = (v14 >> 2) & 7;
  *(a5 + 25) = a1;
  if (v15 <= 1)
  {
    if (v15)
    {
      result = sub_23672D794(a2, v6);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v17 = *(a2 + 1);
      *__str = *a2;
      *&__str[16] = v17;
      *&__str[32] = *(a2 + 4);
      result = sub_23672D480(__str, v6);
      if (!result)
      {
        return result;
      }
    }
  }

  else if (v15 == 2)
  {
    result = sub_23672DAF8(a2, v6);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_23672DEEC(a2, v6);
    if (!result)
    {
      return result;
    }
  }

  v18 = result;
  v19 = 8 * v12 + 16;
  v20 = v19 + 4 * *(*(result + 8) + 8 * v13);
  v21 = (*(v6 + 24))(v20);
  if (v21)
  {
    v22 = v21;
    v383 = v13;
    v384 = a4;
    v385 = a1;
    v396 = a5;
    v409 = 0u;
    v410 = 0u;
    v23 = v18[1];
    *__str = *v18;
    *&__str[16] = v23;
    _SparseFromStructureComplex(__str, &v409);
    v24 = DWORD1(v409);
    v25 = v409;
    v403 = DWORD1(v409);
    v404 = v409;
    v26 = &v22[v409 + 1];
    v405 = v22;
    v406 = v26;
    v407 = DWORD2(v410);
    v408 = BYTE12(v410);
    if (v409 >= 1)
    {
      bzero(v22 + 2, 8 * v409);
    }

    if (v24 >= 1)
    {
      v27 = 0;
      v28 = *(&v409 + 1);
      v29 = v410;
      v30 = **(&v409 + 1);
      do
      {
        ++v27;
        v31 = *(v28 + 8 * v27);
        while (v30 < v31)
        {
          v32 = *(v29 + 4 * v30);
          if ((v32 & 0x80000000) == 0 && v32 < v25)
          {
            ++v22[v32 + 2];
            v31 = *(v28 + 8 * v27);
          }

          ++v30;
        }

        v30 = v31;
      }

      while (v27 != v24);
    }

    v22[1] = 0;
    v33 = v22 + 1;
    *v22 = 0;
    if (v25 > 1)
    {
      v34 = 0;
      v35 = v25 - 1;
      v36 = v22 + 2;
      do
      {
        v34 += *v36;
        *v36++ = v34;
        --v35;
      }

      while (v35);
    }

    if (v24 >= 1)
    {
      v37 = 0;
      v38 = *(&v409 + 1);
      v39 = v410;
      v40 = **(&v409 + 1);
      do
      {
        v41 = v37++;
        v42 = *(v38 + 8 * v37);
        if (v40 < v42)
        {
          do
          {
            v43 = *(v39 + 4 * v40);
            if ((v43 & 0x80000000) == 0 && v43 < v409)
            {
              v44 = v33[v43];
              v33[v43] = v44 + 1;
              *(v26 + 4 * v44) = v41;
              v42 = *(v38 + 8 * v37);
            }

            ++v40;
          }

          while (v40 < v42);
          LODWORD(v24) = DWORD1(v409);
        }

        v40 = v42;
      }

      while (v37 < v24);
    }

    v398 = v22;
    v399 = v6;
    v382 = v19;
    v45 = BYTE12(v410);
    v46 = DWORD2(v410);
    if (BYTE8(v410))
    {
      v47 = DWORD1(v409);
    }

    else
    {
      v47 = v409;
    }

    if (BYTE8(v410))
    {
      v48 = v409;
    }

    else
    {
      v48 = DWORD1(v409);
    }

    v49 = BYTE12(v410) * v47;
    v50 = BYTE12(v410) * v48;
    if (*(v6 + 16))
    {
      v51 = v50 + v49 + 4 * (v50 + v49 + v409 + DWORD1(v409) + 2) + 48;
      v52 = (*(v6 + 24))(v51);
      if (!v52)
      {
        if (!*(v6 + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672EC38();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v51);
        (*(v6 + 40))(__str);
        v84 = v22;
        *v396 = -3;
        goto LABEL_233;
      }

      v53 = v52;
      v54 = &v52[v51];
      v55 = (&v52[v49 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v55)
      {
        goto LABEL_466;
      }

      v392 = v18;
      v56 = (v55 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v56)
      {
        goto LABEL_466;
      }

      v376 = a2;
      v57 = (v56 + 4 * v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v57)
      {
        goto LABEL_466;
      }

      v58 = (v57 + 4 * v50 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v58)
      {
        goto LABEL_466;
      }

      v59 = (v58 + 4 * v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v59 || v54 < ((v59 + 4 * v48 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      v60 = BYTE12(v410);
      v46 = DWORD2(v410);
      if (BYTE8(v410))
      {
        v61 = DWORD1(v409);
      }

      else
      {
        v61 = v409;
      }

      if (BYTE8(v410))
      {
        v62 = v409;
      }

      else
      {
        v62 = DWORD1(v409);
      }

      v50 = BYTE12(v410) * v62;
      if (*(v399 + 16))
      {
        v388 = v62;
        v390 = *(v399 + 16);
        v393 = BYTE12(v410) * v61;
        bzero(v52, BYTE12(v410) * v61);
        bzero(v55, v50);
        if (v61 >= 1)
        {
          v63 = (v61 + 3) & 0xFFFFFFFC;
          v64 = vdupq_n_s64(v61 - 1);
          v65 = xmmword_23681F910;
          v66 = xmmword_23681F920;
          v67 = (v58 + 8);
          v68 = vdupq_n_s64(4uLL);
          do
          {
            v69 = vmovn_s64(vcgeq_u64(v64, v66));
            if (vuzp1_s16(v69, *v64.i8).u8[0])
            {
              *(v67 - 2) = v60;
            }

            if (vuzp1_s16(v69, *&v64).i8[2])
            {
              *(v67 - 1) = v60;
            }

            if (vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v65))).i32[1])
            {
              *v67 = v60;
              v67[1] = v60;
            }

            v65 = vaddq_s64(v65, v68);
            v66 = vaddq_s64(v66, v68);
            v67 += 4;
            v63 -= 4;
          }

          while (v63);
        }

        if (v388 >= 1)
        {
          v70 = (v388 + 3) & 0xFFFFFFFC;
          v71 = vdupq_n_s64(v388 - 1);
          v72 = xmmword_23681F910;
          v73 = xmmword_23681F920;
          v74 = (v59 + 8);
          v75 = vdupq_n_s64(4uLL);
          do
          {
            v76 = vmovn_s64(vcgeq_u64(v71, v73));
            if (vuzp1_s16(v76, *v71.i8).u8[0])
            {
              *(v74 - 2) = v60;
            }

            if (vuzp1_s16(v76, *&v71).i8[2])
            {
              *(v74 - 1) = v60;
            }

            if (vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, *&v72))).i32[1])
            {
              *v74 = v60;
              v74[1] = v60;
            }

            v72 = vaddq_s64(v72, v75);
            v73 = vaddq_s64(v73, v75);
            v74 += 4;
            v70 -= 4;
          }

          while (v70);
        }

        v77 = *v390;
        if (*v390 < 0)
        {
          v79 = 0;
          v78 = 0;
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = v390 + 1;
          do
          {
            v81 = v77 - v393;
            if (v77 >= v393)
            {
              *(v57 + 4 * v79++) = v81;
              *(v55 + v81) = 1;
              v82 = (v59 + 4 * (v81 / v60));
            }

            else
            {
              *(v56 + 4 * v78++) = v77;
              v53[v77] = 1;
              v82 = (v58 + 4 * (v77 / v60));
            }

            --*v82;
            v83 = *v80++;
            v77 = v83;
          }

          while ((v83 & 0x80000000) == 0);
        }

        if (BYTE8(v410))
        {
          if (v404 >= 1)
          {
            v85 = 0;
            v86 = 0;
            v87 = v405;
            v88 = v406;
            do
            {
              if (*(v59 + 4 * v86))
              {
                v89 = &v87[v86];
                v91 = *v89;
                v90 = v89[1];
                v162 = v90 <= v91;
                v92 = v90 - v91;
                if (v162)
                {
LABEL_108:
                  *(v59 + 4 * v86) = 0;
                  if (v60)
                  {
                    v96 = v85;
                    v97 = v60;
                    do
                    {
                      if ((*(v55 + v96) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v96;
                      }

                      *(v55 + v96++) = 1;
                      --v97;
                    }

                    while (v97);
                  }
                }

                else
                {
                  v93 = (v88 + 4 * v91);
                  while (1)
                  {
                    v95 = *v93++;
                    v94 = v95;
                    if ((v95 & 0x80000000) == 0 && v94 < v403 && *(v58 + 4 * v94))
                    {
                      break;
                    }

                    if (!--v92)
                    {
                      goto LABEL_108;
                    }
                  }
                }
              }

              ++v86;
              v85 += v60;
            }

            while (v86 < v404);
          }

          if (SDWORD1(v409) >= 1)
          {
            v98 = 0;
            v99 = 0;
            v100 = *(&v409 + 1);
            v101 = v410;
            do
            {
              if (*(v58 + 4 * v99))
              {
                v102 = (v100 + 8 * v99);
                v104 = *v102;
                v103 = v102[1];
                v162 = v103 <= v104;
                v105 = v103 - v104;
                if (v162)
                {
LABEL_123:
                  *(v58 + 4 * v99) = 0;
                  if (v60)
                  {
                    v109 = v98;
                    v110 = v60;
                    do
                    {
                      if ((v53[v109] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v109;
                      }

                      v53[v109++] = 1;
                      --v110;
                    }

                    while (v110);
                  }
                }

                else
                {
                  v106 = (v101 + 4 * v104);
                  while (1)
                  {
                    v108 = *v106++;
                    v107 = v108;
                    if ((v108 & 0x80000000) == 0 && v107 < v409 && *(v59 + 4 * v107))
                    {
                      break;
                    }

                    if (!--v105)
                    {
                      goto LABEL_123;
                    }
                  }
                }
              }

              ++v99;
              v98 += v60;
            }

            while (v99 < SDWORD1(v409));
          }
        }

        else
        {
          if (SDWORD1(v409) >= 1)
          {
            v111 = 0;
            v112 = 0;
            v113 = *(&v409 + 1);
            v114 = v410;
            do
            {
              if (*(v59 + 4 * v112))
              {
                v115 = (v113 + 8 * v112);
                v117 = *v115;
                v116 = v115[1];
                v162 = v116 <= v117;
                v118 = v116 - v117;
                if (v162)
                {
LABEL_139:
                  *(v59 + 4 * v112) = 0;
                  if (v60)
                  {
                    v122 = v111;
                    v123 = v60;
                    do
                    {
                      if ((*(v55 + v122) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v122;
                      }

                      *(v55 + v122++) = 1;
                      --v123;
                    }

                    while (v123);
                  }
                }

                else
                {
                  v119 = (v114 + 4 * v117);
                  while (1)
                  {
                    v121 = *v119++;
                    v120 = v121;
                    if ((v121 & 0x80000000) == 0 && v120 < v409 && *(v58 + 4 * v120))
                    {
                      break;
                    }

                    if (!--v118)
                    {
                      goto LABEL_139;
                    }
                  }
                }
              }

              ++v112;
              v111 += v60;
            }

            while (v112 < SDWORD1(v409));
          }

          if (v404 >= 1)
          {
            v124 = 0;
            v125 = 0;
            v126 = v405;
            v127 = v406;
            do
            {
              if (*(v58 + 4 * v125))
              {
                v128 = &v126[v125];
                v130 = *v128;
                v129 = v128[1];
                v162 = v129 <= v130;
                v131 = v129 - v130;
                if (v162)
                {
LABEL_154:
                  *(v58 + 4 * v125) = 0;
                  if (v60)
                  {
                    v135 = v124;
                    v136 = v60;
                    do
                    {
                      if ((v53[v135] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v135;
                      }

                      v53[v135++] = 1;
                      --v136;
                    }

                    while (v136);
                  }
                }

                else
                {
                  v132 = (v127 + 4 * v130);
                  while (1)
                  {
                    v134 = *v132++;
                    v133 = v134;
                    if ((v134 & 0x80000000) == 0 && v133 < v403 && *(v59 + 4 * v133))
                    {
                      break;
                    }

                    if (!--v131)
                    {
                      goto LABEL_154;
                    }
                  }
                }
              }

              ++v125;
              v124 += v60;
            }

            while (v125 < v404);
          }
        }

        LODWORD(v49) = v393 - v78;
        LODWORD(v50) = v50 - v79;
        *(v56 + 4 * v78) = -1;
        *(v57 + 4 * v79) = -1;
        v46 = DWORD2(v410);
      }

      else
      {
        LODWORD(v49) = BYTE12(v410) * v61;
      }
    }

    else
    {
      v376 = a2;
      v392 = v18;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v58 = 0;
      v55 = 0;
      v53 = 0;
    }

    v137 = (v46 ^ (v49 < v50)) & 1;
    if (v49 < v50)
    {
      v138 = v50;
    }

    else
    {
      v138 = v49;
    }

    if (v49 < v50)
    {
      v139 = v49;
    }

    else
    {
      v139 = v50;
    }

    if (v49 < v50)
    {
      v140 = v53;
    }

    else
    {
      v140 = v55;
    }

    if (v49 < v50)
    {
      v141 = v59;
    }

    else
    {
      v141 = v58;
    }

    v379 = v141;
    __src = v140;
    if (v49 < v50)
    {
      v142 = v58;
    }

    else
    {
      v142 = v59;
    }

    if (v49 < v50)
    {
      v143 = v56;
    }

    else
    {
      v143 = v57;
    }

    if (v49 < v50)
    {
      v56 = v57;
    }

    v144 = &v403;
    if (v137)
    {
      v145 = &v409;
    }

    else
    {
      v145 = &v403;
    }

    if (v137)
    {
      v146 = &v403;
    }

    else
    {
      v146 = &v409;
    }

    v389 = v138;
    v391 = v139;
    if (v138 < v139)
    {
      goto LABEL_466;
    }

    v386 = v146;
    v387 = *v146;
    v394 = v137;
    if (!v137)
    {
      v144 = &v409;
    }

    *v397 = *(v144 + 1);
    v147 = v397[0] * v45;
    v148 = v147 + 8;
    v149 = v399;
    if (!*(v399 + 16))
    {
      v148 = 0;
    }

    v150 = v148 + 4 * v147 + 224;
    v151 = (*(v399 + 24))(v150);
    if (!v151)
    {
      if (!*(v399 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v150);
      (*(v399 + 40))(__str);
      v152 = 0;
      *v396 = -3;
LABEL_351:
      if (*(v149 + 16))
      {
        (*(v149 + 32))(v53);
      }

      v302 = *(v149 + 32);
      v182 = (v149 + 32);
      v302(v398);
      if (v152)
      {
        v303 = *(v392 + 28);
        if (*v392 >= *(v392 + 1))
        {
          v304 = *(v392 + 1);
        }

        else
        {
          v304 = *v392;
        }

        v305 = v409;
        v306 = BYTE12(v410);
        if (*(v152 + 52))
        {
          v307 = 0;
          v308 = 0;
        }

        else
        {
          v310 = 8 * (v409 + 2);
          v311 = v310 + 8;
          v312 = v310 >= 0xFFFFFFFFFFFFFFF8;
          if ((v409 + 2) >> 61 || v312)
          {
            goto LABEL_374;
          }

          v305 = DWORD1(v409);
          v313 = *(*(&v409 + 1) + 8 * SDWORD1(v409));
          v308 = v311 + 4 * v313;
          v314 = __CFADD__(v311, 4 * v313);
          if (v313 >> 62 || v314 || !is_mul_ok(v313, 16 * BYTE12(v410) * BYTE12(v410)))
          {
            goto LABEL_374;
          }

          v307 = v313 * 16 * BYTE12(v410) * BYTE12(v410);
        }

        if (v385 == 40)
        {
          v309 = 0;
        }

        else
        {
          v309 = *(v152 + 168);
        }

        v315 = *(v152 + 184);
        v316 = v315 + v309;
        if (!__CFADD__(v315, v309))
        {
          *__str = 1;
          LODWORD(v400) = -1;
          v411 = 10000;
          v318 = ilaenv_NEWLAPACK();
          v319 = v385 == 40 ? v318 : v318 + 1;
          v320 = *(v152 + 176);
          v321 = !is_mul_ok(v319, v320);
          v322 = v319 * v320;
          v323 = __CFADD__(v316, v322);
          v324 = v316 + v322;
          v325 = v323;
          if (!v321 && !v325)
          {
            v323 = __CFADD__(v324, v307);
            v326 = v324 + v307;
            if (!v323)
            {
              v327 = v305 * v306;
              v328 = v308 + 4 * v327;
              v329 = __CFADD__(v308, 4 * v327);
              if (!(v327 >> 62) && !v329)
              {
                v330 = *(v152 + 88);
                v323 = __CFADD__(v328, 8 * v330);
                v331 = v328 + 8 * v330;
                v332 = v323;
                if ((v330 & 0x80000000) == 0 && !v332)
                {
                  v323 = __CFADD__(v331, 40);
                  v333 = v331 + 40;
                  if (!v323)
                  {
                    if ((v320 & 0x80000000) == 0)
                    {
                      v334 = *(v152 + 176);
                    }

                    else
                    {
                      v334 = -v320;
                    }

                    v335 = 2 * v334;
                    if ((v320 & 0x80000000) != 0)
                    {
                      v335 = -v335;
                    }

                    v323 = __CFADD__(v333, v335);
                    v336 = v333 + v335;
                    v337 = v323;
                    if ((v320 & 0x80000000) == 0 && !v337)
                    {
                      v338 = __CFADD__(v336, 4 * v326);
                      *(v396 + 40) = v336 + 4 * v326;
                      if (!(v326 >> 62) && !v338)
                      {
                        v339 = v336 + 8 * v326;
                        v340 = __CFADD__(v336, 8 * v326);
                        *(v396 + 48) = v339;
                        if (!(v326 >> 61) && !v340)
                        {
                          if (v385 == 40)
                          {
                            v341 = (v152 + 72);
                            v342 = *(v152 + 88);
                            v343 = *(*(v152 + 104) + 8 * v342);
                          }

                          else
                          {
                            v343 = 0;
                            v341 = (v152 + 80);
                            LODWORD(v342) = *(v152 + 88);
                          }

                          v344 = v342 + 1;
                          if (v342 >= -1)
                          {
                            v345 = v342 + 1;
                          }

                          else
                          {
                            v345 = -v344;
                          }

                          v346 = 8 * v345;
                          if (v342 < -1)
                          {
                            v346 = -8 * v345;
                          }

                          v323 = __CFADD__(v346, 96);
                          v347 = v346 + 96;
                          v348 = v323;
                          if (v342 >= -1 && !(v345 >> 61) && !v348)
                          {
                            v349 = 8 * v344 + 96;
                            if ((8 * v344) < 0xFFFFFFFFFFFFFFA0)
                            {
                              v350 = v303 * v304;
                              v351 = *v341;
                              v323 = __CFADD__(v351, v343);
                              v352 = v351 + v343;
                              v353 = v323;
                              v323 = __CFADD__(v350, v352);
                              v354 = v350 + v352;
                              v355 = v323;
                              if (!v353 && !v355)
                              {
                                v356 = *(v152 + 176);
                                if (v356 >= 0)
                                {
                                  v357 = *(v152 + 176);
                                }

                                else
                                {
                                  v357 = -v356;
                                }

                                v358 = 2 * v357;
                                if (v356 < 0)
                                {
                                  v358 = -v358;
                                }

                                v323 = __CFADD__(v354, v358);
                                v359 = v354 + v358;
                                v360 = v323;
                                if ((v356 & 0x80000000) == 0 && !v360)
                                {
                                  v323 = __CFADD__(v347, 4 * v359);
                                  v361 = v347 + 4 * v359;
                                  v362 = v323;
                                  *(v396 + 56) = v361;
                                  if (!(v359 >> 62) && !v362)
                                  {
                                    v363 = v349 + 8 * v359;
                                    v364 = __CFADD__(v349, 8 * v359);
                                    *(v396 + 64) = v363;
                                    if (!(v359 >> 61) && !v364)
                                    {
                                      *(v396 + 32) = v152;
                                      *(v396 + 8) = 0;
                                      v365 = 2 * v339;
                                      v366 = (*(v399 + 24))(2 * v339);
                                      if (v366)
                                      {
                                        v367 = v366;
                                        v402 = 0;
                                        v400 = 0u;
                                        v401 = 0u;
                                        if (*(v152 + 52))
                                        {
                                          v400 = *v392;
                                          v401 = v392[1];
                                          v402 = *(v392 + 4);
                                          v368 = v366;
                                        }

                                        else
                                        {
                                          sub_23672B188(v392, v366, &v400);
                                          v369 = *(*(v392 + 1) + 8 * v383);
                                          v368 = (&v367[2 * v369 * BYTE12(v401) * BYTE12(v401) + 1] + 4 * v369 + v382 + 7) & 0xFFFFFFFFFFFFFFF8;
                                        }

                                        v370 = sub_23672B528(v385, v350, v152, 2 * v363, v152, v384, 0);
                                        *(v396 + 80) = v370;
                                        if (v370)
                                        {
                                          *v396 = sub_23672E594(v385, &v400, v152, v370, v368, v367 + v365 - v368);
                                          if (v385 == 40)
                                          {
                                            if (*(v392 + 1) <= *v392)
                                            {
                                              v371 = *v392;
                                            }

                                            else
                                            {
                                              v371 = *(v392 + 1);
                                            }

                                            sub_236731F04(v371 * *(v392 + 28), v152, (v396 + 88), (v396 + 96));
                                            *(v396 + 96) += 16 * *(v376 + 28) * (2 * v371);
                                          }

                                          else
                                          {
                                            *(v396 + 88) = 0;
                                            *(v396 + 96) = 16 * *(v392 + 1) * *(v392 + 28);
                                          }
                                        }

                                        else
                                        {
                                          if (!*(v399 + 40))
                                          {
                                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                            {
                                              sub_23672ECA8();
                                            }

                                            _SparseTrap();
                                          }

                                          memset(__str, 0, 256);
                                          snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", 2 * v363);
                                          (*(v399 + 40))(__str);
                                        }

                                        (*v182)(v367);
                                      }

                                      else
                                      {
                                        if (!*(v399 + 40))
                                        {
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                          {
                                            sub_23672ED18();
                                          }

                                          _SparseTrap();
                                        }

                                        memset(__str, 0, 256);
                                        snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.", v365);
                                        (*(v399 + 40))(__str);
                                      }

                                      return (*v182)(v392);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_374:
        v317 = *(v399 + 40);
        if (!v317)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672ED88();
          }

          _SparseTrap();
        }

        memset(&__str[70], 0, 186);
        strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
        v317(__str);
        (*v182)(v152);
        return (*v182)(v392);
      }

      v18 = v392;
      return (*v182)(v18);
    }

    v152 = v151;
    v153 = v151 + v150;
    v154 = (v151 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v151 + v150 < v154)
    {
      goto LABEL_466;
    }

    v155 = (v154 + 4 * v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v153 < v155)
    {
      goto LABEL_466;
    }

    v377 = v145;
    if (*(v399 + 16))
    {
      if (v153 < ((v155 + v147 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }
    }

    else
    {
      v155 = 0;
    }

    v156 = *v399;
    v157 = *(v399 + 32);
    *(v151 + 16) = *(v399 + 16);
    *(v151 + 32) = v157;
    *v151 = v156;
    *(v151 + 48) = 1;
    *(v151 + 52) = v394;
    *(v151 + 56) = v389;
    *(v151 + 60) = v391;
    *(v151 + 96) = 0u;
    v375 = (v151 + 96);
    *(v151 + 72) = 0;
    *(v151 + 80) = 0;
    *(v151 + 64) = v154;
    *(v151 + 88) = 0;
    v158 = 5 * v397[0] + 2 * v387;
    *(v151 + 112) = 0u;
    v159 = v387 - v397[0] + 8 * v397[0];
    v160 = v159 + 5;
    v161 = v159 + 2;
    *(v151 + 128) = 0;
    *(v151 + 136) = v387 * v45;
    v162 = v158 <= v160;
    if (v158 > v160)
    {
      v163 = v158 + 1;
    }

    else
    {
      v163 = v161;
    }

    v164 = 56;
    if (!v162)
    {
      v164 = 40;
    }

    *(v151 + 144) = 0uLL;
    v374 = (v151 + 144);
    *(v151 + 160) = 0uLL;
    *(v151 + 176) = 0;
    *(v151 + 184) = 0;
    *(v151 + 192) = 0;
    *(v151 + 200) = v155;
    v378 = v164 + 4 * v163;
    v165 = v378 + 12 * v397[0] + 24;
    v166 = (*(v399 + 24))(v165);
    if (v166)
    {
      v167 = v166;
      v372 = v56;
      v168 = v166 + v165;
      v169 = (v166 + 4 * v397[0] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 + v165 < v169)
      {
        goto LABEL_466;
      }

      v170 = 4 * v397[0];
      v171 = (v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v168 < v171)
      {
        goto LABEL_466;
      }

      v373 = ((v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      v172 = ((v171 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v168 < v172 || v168 < (&v172[v378 + 7] & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      if (*(v399 + 16))
      {
        memcpy(*(v152 + 200), __src, v147);
      }

      v173 = 1 << *(v399 + 4);
      if ((v173 & 0x2C) != 0)
      {
        memset(__str, 0, 32);
        v149 = v399;
        sub_236752DB4(0, v386, v399, __str);
        v174 = *(v152 + 64);
        v400 = *__str;
        v401 = *&__str[16];
        v175 = sub_2367E3E64(v385, &v400, 0, v167, v174, v399);
        (*(v399 + 32))(*&__str[8]);
        if (!v175)
        {
          v176 = *(v152 + 64);
          goto LABEL_252;
        }
      }

      else
      {
        if ((v173 & 0x11) == 0)
        {
          v183 = *(v399 + 8);
          v176 = *(v152 + 64);
          if (v183)
          {
            if (v397[0] < 1)
            {
              goto LABEL_252;
            }

            v184 = 0;
            do
            {
              *(v176 + 4 * *(v183 + 4 * v184)) = v184;
              ++v184;
            }

            while (v397[0] != v184);
          }

          else
          {
            if (v397[0] < 1)
            {
              goto LABEL_252;
            }

            v185 = 0;
            v186 = vdupq_n_s64(v397[0] - 1);
            v187 = xmmword_23681F910;
            v188 = xmmword_23681F920;
            v189 = (v176 + 8);
            v190 = vdupq_n_s64(4uLL);
            do
            {
              v191 = vmovn_s64(vcgeq_u64(v186, v188));
              if (vuzp1_s16(v191, *v186.i8).u8[0])
              {
                *(v189 - 2) = v185;
              }

              if (vuzp1_s16(v191, *&v186).i8[2])
              {
                *(v189 - 1) = v185 + 1;
              }

              if (vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, *&v187))).i32[1])
              {
                *v189 = v185 + 2;
                v189[1] = v185 + 3;
              }

              v185 += 4;
              v187 = vaddq_s64(v187, v190);
              v188 = vaddq_s64(v188, v190);
              v189 += 4;
            }

            while (((v397[0] + 3) & 0xFFFFFFFC) != v185);
          }

          v192 = 0;
          do
          {
            *&v167[4 * *(v176 + 4 * v192)] = v192;
            ++v192;
          }

          while (v397[0] != v192);
LABEL_252:
          v193 = *(v386 + 16);
          *__str = *v386;
          *&__str[16] = v193;
          sub_236768978(__str, v379, v142, v167, v176, v373, v172, &v172[4 * v397[0]]);
          sub_236750DDC(*v397, v373, v167, *(v152 + 64), v172);
          v194 = *(v152 + 64);
          v195 = v377[1];
          *__str = *v377;
          *&__str[16] = v195;
          sub_2366EE0E8(__str, v379, v142, v167, v194, v373, v169, v172, &v172[16 * v397[0]]);
          v196 = sub_236768200(v386, v379, v142, v167, *(v152 + 64), v373, v169, v172, v399, &v172[4 * v397[0] + 4]);
          *(v152 + 88) = v196;
          *(v152 + 80) = 0;
          if (v397[0] < 1)
          {
            v197 = 0;
            v200 = v389;
          }

          else
          {
            v197 = 0;
            v198 = v397[0];
            v199 = v169;
            v200 = v389;
            do
            {
              v201 = *v199++;
              v197 += v201;
              --v198;
            }

            while (v198);
            *(v152 + 80) = v197;
          }

          if (v196 < 1)
          {
            v202 = 0;
          }

          else
          {
            v202 = 0;
            v203 = v196;
            v204 = (v172 + 4);
            v205 = *v172;
            v206 = v169;
            do
            {
              v208 = *v206++;
              v207 = v208;
              v209 = *v204++;
              v202 += v207 * v45;
              v197 += v207 * (v209 - v205);
              v205 = v209;
              --v203;
            }

            while (v203);
            *(v152 + 80) = v197;
          }

          __srca = v200;
          v395 = 8 * (v200 - v391 + v202);
          v210 = v395 + 12 * v196 + 8 * (v202 + 2 * v196 + 2) + 44;
          v211 = (*(v399 + 24))(v210);
          if (v211)
          {
            v212 = v211 + v210;
            v213 = *(v152 + 88);
            v214 = v213 + 1;
            v215 = (v211 + 4 * (v213 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v211 + v210 >= v215)
            {
              *v375 = v211;
              v216 = v215 + 8 * v214;
              if (v216 <= v212)
              {
                *(v152 + 104) = v215;
                v217 = (v216 + 4 * v202 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v212 >= v217)
                {
                  *(v152 + 112) = v216;
                  v218 = (v217 + 4 * v202 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v212 >= v218)
                  {
                    *v374 = v217;
                    v219 = v218 + 8 * v214;
                    if (v219 <= v212)
                    {
                      *(v152 + 120) = v218;
                      v220 = v219 + v395;
                      if (v219 + v395 <= v212)
                      {
                        *(v152 + 128) = v219;
                        v221 = (v220 + 4 * v213 + 15) & 0xFFFFFFFFFFFFFFF8;
                        if (v212 >= v221)
                        {
                          *(v152 + 152) = v220;
                          if (v212 >= ((v221 + 4 * v213 + 7) & 0xFFFFFFFFFFFFFFF8))
                          {
                            *(v152 + 160) = v221;
                            if ((v213 & 0x80000000) == 0)
                            {
                              v222 = 0;
                              do
                              {
                                *(v211 + 4 * v222) = *&v172[4 * v222];
                                v162 = v222++ < *(v152 + 88);
                              }

                              while (v162);
                              v213 = *(v152 + 88);
                            }

                            sub_236812888(v213, v373, v220, v221);
                            v223 = *(v152 + 88);
                            if (v223 < 1)
                            {
                              v225 = 0;
                              v228 = v387 * v45;
                            }

                            else
                            {
                              v224 = 0;
                              v225 = 0;
                              v226 = *(v152 + 152);
                              v227 = *v226;
                              v228 = v387 * v45;
                              do
                              {
                                v229 = v226[++v224];
                                v230 = __srca;
                                if (v227 < v229)
                                {
                                  v231 = v229 - v227;
                                  v232 = (*(v152 + 160) + 4 * v227);
                                  v233 = v389;
                                  do
                                  {
                                    v234 = *v232++;
                                    v233 += (*(v169 + 4 * v234) - *(*(v152 + 96) + 4 * v234 + 4) + *(*(v152 + 96) + 4 * v234)) * v45;
                                    --v231;
                                  }

                                  while (v231);
                                  v230 = v233;
                                }

                                if (v225 <= v230)
                                {
                                  v225 = v230;
                                }

                                v227 = v226[v224];
                              }

                              while (v224 != v223);
                            }

                            v235 = *(v399 + 16);
                            if (v235)
                            {
                              v236 = (v152 + 184);
                              if ((v223 & 0x80000000) == 0)
                              {
                                v237 = 0;
                                v238 = *v375;
                                do
                                {
                                  *&v172[4 * v237] = v238[v237];
                                  v239 = *(v152 + 88);
                                  v162 = v237++ < v239;
                                }

                                while (v162);
                                if ((v239 & 0x80000000) == 0)
                                {
                                  v240 = 0;
                                  v241 = 0;
                                  do
                                  {
                                    v238[v240] = v241;
                                    v242 = *&v172[4 * v240];
                                    v243 = *&v172[4 * v240 + 4];
                                    if (v242 < v243)
                                    {
                                      v244 = v243 - v242;
                                      v245 = (*(v152 + 64) + 4 * v242);
                                      do
                                      {
                                        v246 = *v245++;
                                        v241 += v142[v246];
                                        --v244;
                                      }

                                      while (v244);
                                    }

                                    v162 = v240++ < *(v152 + 88);
                                  }

                                  while (v162);
                                }
                              }

                              if (v397[0] >= 1)
                              {
                                v247 = *(v152 + 64);
                                v248 = v247;
                                v249 = v172;
                                v250 = v397[0];
                                do
                                {
                                  v251 = *v248++;
                                  *v249 = v251;
                                  v249 += 4;
                                  --v250;
                                }

                                while (v250);
                                v252 = 0;
                                v253 = 0;
                                v254 = v397[0] * v45 - 1;
                                do
                                {
                                  if (v45)
                                  {
                                    v255 = 0;
                                    v256 = *(v152 + 200);
                                    do
                                    {
                                      v257 = *&v172[4 * v252] * v45;
                                      v258 = v255 + v257;
                                      v259 = *(v256 + v257);
                                      if (v259)
                                      {
                                        v260 = v254;
                                      }

                                      else
                                      {
                                        v260 = v253;
                                      }

                                      v254 -= v259;
                                      v253 += v259 ^ 1;
                                      v247[v260] = v258;
                                      ++v255;
                                      ++v256;
                                    }

                                    while (v45 != v255);
                                  }

                                  ++v252;
                                }

                                while (v252 != v397[0]);
                              }
                            }

                            else
                            {
                              v236 = (v152 + 184);
                              if (v45 < 2)
                              {
LABEL_322:
                                if (v235)
                                {
                                  v271 = v228 + 8;
                                }

                                else
                                {
                                  v271 = 0;
                                }

                                __b = v172;
                                if (v378 < 8 * v225 + 4 * (v225 + v387 + 2 * v45 * v397[0]) + v271 + 32)
                                {
                                  __b = (*(v399 + 24))();
                                }

                                sub_23679A9A8(v386, v377, v152, *(v152 + 152), *(v152 + 160), v225, v372, v143, __b);
                                if (__b != v172)
                                {
                                  (*(v399 + 32))(__b);
                                }

                                *(v152 + 168) = 0;
                                *(v152 + 176) = 0;
                                *(v152 + 72) = 0;
                                *v236 = 0;
                                v236[1] = 0;
                                v273 = *(v152 + 88);
                                if (v273 >= 1)
                                {
                                  v274 = 0;
                                  v275 = 0;
                                  v276 = 0;
                                  v277 = 0;
                                  v278 = 0;
                                  v279 = 0;
                                  v280 = 0;
                                  v281 = 0;
                                  v282 = *(v152 + 96);
                                  v283 = *(v152 + 104);
                                  v284 = *(v152 + 120);
                                  while (1)
                                  {
                                    v285 = v279 + 1;
                                    v286 = *(v282 + 4 * (v279 + 1)) - *(v282 + 4 * v279);
                                    v287 = *(v284 + 8 * (v279 + 1)) - *(v284 + 8 * v279);
                                    if (v287 < v286)
                                    {
                                      break;
                                    }

                                    v288 = *(v283 + 8 * v285) - *(v283 + 8 * v279);
                                    v289 = v288;
                                    v290 = v287 * v288;
                                    if (v290 > v278)
                                    {
                                      *(v152 + 168) = v290;
                                      v278 = v287 * v288;
                                    }

                                    if (v277 < v288)
                                    {
                                      *(v152 + 176) = v288;
                                      v277 = v288;
                                    }

                                    v276 += v290;
                                    *(v152 + 72) = v276;
                                    v291 = *(v152 + 152);
                                    v292 = *(v291 + 4 * v279);
                                    v293 = *(v291 + 4 * v285);
                                    if (v292 < v293)
                                    {
                                      v294 = v293 - v292;
                                      v295 = (*(v152 + 160) + 4 * v292);
                                      do
                                      {
                                        v296 = *v295++;
                                        v297 = *(v282 + 4 * (v296 + 1)) - *(v282 + 4 * v296);
                                        v298 = *(v283 + 8 * (v296 + 1)) - *(v283 + 8 * v296);
                                        v299 = *(v284 + 8 * (v296 + 1)) - *(v284 + 8 * v296);
                                        if (v299 >= v298)
                                        {
                                          v299 = v298;
                                        }

                                        v300 = v299 - v297;
                                        v281 += v300 * (v297 - v298);
                                        v280 -= v300;
                                        --v294;
                                      }

                                      while (v294);
                                    }

                                    if (v287 >= v289)
                                    {
                                      v287 = v289;
                                    }

                                    v301 = v287 - v286;
                                    v281 += v301 * (v289 - v286);
                                    if (v281 > v275)
                                    {
                                      *v236 = v281;
                                      v275 = v281;
                                    }

                                    v280 += v301;
                                    if (v280 > v274)
                                    {
                                      *(v152 + 192) = v280;
                                      v274 = v280;
                                    }

                                    v279 = v285;
                                    if (v285 == v273)
                                    {
                                      goto LABEL_350;
                                    }
                                  }

                                  *v396 = -2;
                                  (*(v399 + 32))();
                                  (*(v399 + 32))(v152);
                                  v152 = 0;
                                }

LABEL_350:
                                v149 = v399;
                                (*(v399 + 32))(v167);
                                goto LABEL_351;
                              }

                              if (v397[0] >= 1)
                              {
                                v261 = *(v152 + 64);
                                v262 = v261;
                                v263 = v167;
                                v264 = v397[0];
                                do
                                {
                                  v265 = *v262++;
                                  *v263 = v265;
                                  v263 += 4;
                                  --v264;
                                }

                                while (v264);
                                v266 = 0;
                                LODWORD(v267) = 0;
                                do
                                {
                                  v268 = 0;
                                  v267 = v267;
                                  do
                                  {
                                    v261[v267++] = v268++ + *&v167[4 * v266] * v45;
                                  }

                                  while (v45 != v268);
                                  ++v266;
                                }

                                while (v266 != v397[0]);
                                LODWORD(v223) = *(v152 + 88);
                              }

                              if ((v223 & 0x80000000) == 0)
                              {
                                v269 = *v375;
                                v270 = -1;
                                do
                                {
                                  *v269++ *= v45;
                                  ++v270;
                                }

                                while (v270 < *(v152 + 88));
                              }
                            }

                            *(v152 + 80) *= (v45 * v45);
                            goto LABEL_322;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_466:
            __break(1u);
          }

          (*(v399 + 32))(v167);
          (*(v399 + 32))(v152);
          v18 = v392;
          v6 = v399;
          goto LABEL_226;
        }

        v177 = &v409;
        if (v394)
        {
          v177 = &v403;
        }

        v178 = _SparseCOLAMDWorkspaceSize(v387, v397[0], *(*(v177 + 1) + 8 * v397[0]), v391);
        v149 = v399;
        v179 = (*(v399 + 24))(v178);
        if (v179)
        {
          v180 = v179;
          _SparseCOLAMD(v386, v377, v142, 0, *(v152 + 64), v179);
          (*(v399 + 32))(v180);
          v176 = *(v152 + 64);
          if (v397[0] >= 1)
          {
            v181 = 0;
            do
            {
              *&v167[4 * *(v176 + 4 * v181)] = v181;
              ++v181;
            }

            while (v397[0] != v181);
          }

          goto LABEL_252;
        }
      }

      (*(v149 + 32))(v167);
    }

    (*(v149 + 32))(v152);
    v18 = v392;
    v6 = v149;
LABEL_226:
    v84 = v398;
LABEL_233:
    (*(v6 + 32))(v84);
    v182 = (v6 + 32);
    return (*v182)(v18);
  }

  if (!*(v6 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v20);
  (*(v6 + 40))(__str);
  return (*(v6 + 32))(v18);
}

uint64_t sub_23672D480(int *a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v38 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v8 = *(*(a1 + 1) + 8 * v7);
  v37 = *(a1 + 28);
  v9 = v37 * v37;
  v10 = 8 * v7 + 8;
  v11 = v10 + 4 * v8 + 16 * v8 * v9 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v35 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v10, v15 + v10 > v14) || (v17 = (v16 + 4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v17 + 16 * v8 * v9 > v14)
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 16 * v37 * v37;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v38 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 16 * v22 * v9), (*(a1 + 4) + 16 * v26 * v9), 16 * v9);
                ++v22;
              }

              else if (v37)
              {
                v29 = (*(v13 + 32) + 16 * *(v38 + 8 * v28) * v9);
                v30 = (*(a1 + 4) + v27);
                v31 = v37 * v37;
                do
                {
                  v32 = *v30++;
                  *v29 = vaddq_f64(v32, *v29);
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v23 = *(a1 + 1);
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v35 + 32))(v38);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *__str = 0u;
    v40 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v10 + 4 * v8 + 16 * v8 * v9 + 64);
    (*(a2 + 40))(__str);
  }

  return v13;
}

uint64_t sub_23672D794(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(a1 + 28);
  v7 = 8 * v4 + 8;
  v41 = (v6 * v6);
  v42 = v4;
  v8 = v7 + 4 * v5 + 16 * v5 * v41 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v7, v11 + v7 > v10) || (v13 = (v12 + 4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v13 + 16 * v5 * v41 > v10)
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v42;
    *result = v42;
    *(result + 4) = v42;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v6;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFE3;
    if (v42 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v6 * v6);
      __n = 16 * v41;
      v40 = result;
      v19 = *(a1 + 8);
      v20 = 16 * v6;
      v21 = 16 * v6 + 16;
      v22 = 16 * v6 * v6;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v43 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 16 * v17 * v18);
        v44 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v6)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v40;
              v15 = v42;
              v23 = v43;
              v17 = v44;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[16 * v38] = *(v37 + 16 * v38);
                  ++v38;
                }

                while (v36 + v38 < v6);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v6);
              goto LABEL_33;
            }
          }

          else if (v6)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v40;
            v15 = v42;
            v23 = v43;
            v17 = v44;
            do
            {
              v35 = 0;
              do
              {
                *&v31[16 * v35] = *(v33 + 16 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v6);
LABEL_33:
            v18 = (v6 * v6);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 16 * v24 * v18), __n);
        }

        result = v40;
        v18 = (v6 * v6);
        v15 = v42;
        v23 = v43;
        v17 = v44;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *__str = 0u;
    v46 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    return 0;
  }

  return result;
}

void *sub_23672DAF8(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v55 = v4;
  v56 = (v5 * v5);
  v7 = *(*(a1 + 8) + 8 * v4) + v4;
  v8 = v6 + 4 * v7 + 16 * v7 * v56 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v55, v12 + v6 > v11) || (v15 = (v13 + 4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v15 + 16 * v7 * v56 > v11)
    {
      __break(1u);
    }

    v16 = *(a1 + 24);
    *v9 = v55;
    *(v9 + 4) = v55;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFE3;
    if (v55 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 16 * v56;
      v19 = 16 * v5;
      v20 = 16 * v5 + 16;
      v21 = 16 * v5 * v5;
      v57 = v9;
      do
      {
        v22 = v17;
        v23 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v23 + 4 * v18) = v17;
        v24 = v18;
        v25 = (v10[4] + 16 * v18 * v56);
        bzero(v25, __n);
        v26 = v5;
        if (v5)
        {
          do
          {
            *v25 = xmmword_23681FBD0;
            v25 = (v25 + v20);
            --v26;
          }

          while (v26);
        }

        v18 = v24 + 1;
        v27 = *(a1 + 8);
        v28 = *(v27 + 8 * v22);
        v17 = v22 + 1;
        if (v28 >= *(v27 + 8 * (v22 + 1)))
        {
          v14 = v55;
        }

        else
        {
          v29 = v21 * v28;
          v30 = v21 * v28 + 16;
          v14 = v55;
          do
          {
            v31 = *(*(a1 + 16) + 4 * v28);
            v32 = *(a1 + 24);
            if ((v32 & 2) == 0 || v22 <= v31)
            {
              v33 = v22 >= v31 || (v32 >> 1) & 1;
              if (v33 && v31 < v14)
              {
                v35 = *(a1 + 32);
                if (v22 == v31)
                {
                  v36 = v57[4];
                  v37 = *(v57[1] + 8 * v22);
                  if ((v32 & 2) != 0)
                  {
                    if (v5)
                    {
                      v38 = 0;
                      v39 = v36 + v21 * v37 + 16;
                      v40 = (v35 + v30);
                      v41 = v5 - 1;
                      do
                      {
                        if (++v38 < v5)
                        {
                          v42 = v41;
                          v43 = v40;
                          v44 = v39;
                          do
                          {
                            v45 = *v43++;
                            *v44++ = v45;
                            --v42;
                          }

                          while (v42);
                        }

                        v39 += v20;
                        v40 = (v40 + v20);
                        --v41;
                      }

                      while (v38 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v49 = 0;
                    v50 = v36 + 16 * v37 * v56;
                    v51 = v35 + v29;
                    do
                    {
                      if (v49)
                      {
                        for (i = 0; i != v49; ++i)
                        {
                          *(v50 + 16 * i) = *(v51 + 16 * i);
                        }
                      }

                      ++v49;
                      v50 += v19;
                      v51 += v19;
                    }

                    while (v49 != v5);
                  }
                }

                else
                {
                  *(v57[2] + 4 * v18) = v31;
                  v46 = v22;
                  v47 = v21;
                  v48 = v17;
                  memcpy((v57[4] + 16 * v18 * v56), (v35 + 16 * v28 * v56), __n);
                  v17 = v48;
                  v21 = v47;
                  v22 = v46;
                  v19 = 16 * v5;
                  v14 = v55;
                  ++v18;
                }
              }
            }

            ++v28;
            v29 += v21;
            v30 += v21;
          }

          while (v28 < *(*(a1 + 8) + 8 * v17));
        }

        v10 = v57;
      }

      while (v17 != v14);
      v12 = v57[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *__str = 0u;
    v59 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  return v10;
}

uint64_t sub_23672DEEC(__int128 *a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v87 = v4;
  v8 = 8 * (v4 + v7) + 16;
  v9 = v8 + 32 * v7 * v6 + 72;
  v10 = (*(a2 + 24))(v9);
  if (!v10)
  {
    if (*(a2 + 40))
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      *__str = 0u;
      v91 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v8 + 32 * v7 * v6 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v11 = v10;
  v86 = a2;
  v12 = v10 + v9;
  v13 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + v9 < v13)
  {
    goto LABEL_99;
  }

  v14 = (v13 + 32 * v7 * v6);
  if (v14 > v12)
  {
    goto LABEL_99;
  }

  v15 = *(a1 + 28);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 28) = v15;
  *(v10 + 29) = 0;
  *(v10 + 31) = 0;
  *(v10 + 32) = v13;
  v16 = 16 * v7;
  v17 = (*(a2 + 24))(v16);
  if (!v17)
  {
    if (*(a2 + 40))
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      *__str = 0u;
      v91 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v16);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_96:
      sub_23672EEB0();
    }

LABEL_97:
    _SparseTrap();
  }

  v18 = v17;
  v19 = v14 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    v21 = a1[1];
    v88 = *a1;
    v89 = v21;
    _SparseFromStructureComplex(&v88, __str);
    if (v19 <= v12)
    {
      sub_2367861D0(__str, 0, v14, v18, 0, &v88);
      goto LABEL_15;
    }

LABEL_99:
    __break(1u);
  }

  v20 = a1[1];
  v88 = *a1;
  v89 = v20;
  _SparseFromStructureComplex(&v88, __str);
  if (v19 > v12)
  {
    goto LABEL_99;
  }

  sub_236785FB0(__str, 0, v14, v18, 0, &v88);
LABEL_15:
  _SparseToStructureComplex(&v88, __str);
  v25 = v91;
  *v11 = *__str;
  *(v11 + 16) = v25;
  v26 = v87;
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    if (v87 >= 1)
    {
      v62 = 0;
      v63 = *(v11 + 8);
      v64 = 16 * v5 * v5;
      v65 = 16 * v5;
      v66 = 16 * v5 + 16;
      do
      {
        v67 = v62;
        v68 = *(v63 + 8 * v62++);
        if (v68 < *(v63 + 8 * v62))
        {
          v69 = v64 * v68;
          do
          {
            v70 = *(v18 + 8 * v68);
            v71 = *(a1 + 4);
            if (v70 >= 0)
            {
              v23 = *(v18 + 8 * v68);
            }

            else
            {
              v23 = -v70;
            }

            v22 = *(v11 + 32);
            if (v67 == *(*(v11 + 16) + 4 * v68))
            {
              if ((*(a1 + 24) & 2) != 0)
              {
                if (v5)
                {
                  v81 = 0;
                  v82 = v22 + v69;
                  if (((v70 & 0x4000000000000000) != 0) ^ __OFSUB__(v70, -v70) | (v70 == -v70))
                  {
                    v70 = -v70;
                  }

                  v83 = v71 + v64 * (v70 - 1);
                  do
                  {
                    v84 = 0;
                    v22 = 0;
                    do
                    {
                      *(v82 + 16 * v84) = *(v83 + 16 * v84);
                      *(v82 + v22) = *(v83 + 16 * v84);
                      v22 += v65;
                      ++v84;
                      v23 = v81 + v84;
                    }

                    while (v81 + v84 < v5);
                    ++v81;
                    v82 += v66;
                    v83 += v66;
                  }

                  while (v81 != v5);
                }
              }

              else if (v5)
              {
                v72 = 0;
                v73 = v22 + v69;
                if (((v70 & 0x4000000000000000) != 0) ^ __OFSUB__(v70, -v70) | (v70 == -v70))
                {
                  v70 = -v70;
                }

                v74 = v71 + v64 * (v70 - 1);
                v75 = (v22 + v69);
                v22 = 1;
                do
                {
                  v23 = 0;
                  v24 = v75;
                  do
                  {
                    *v24 = *(v74 + 16 * v23);
                    *(v73 + 16 * v23) = *(v74 + 16 * v23);
                    ++v23;
                    v24 = (v24 + v65);
                  }

                  while (v22 != v23);
                  ++v72;
                  ++v22;
                  v75 += 2;
                  v73 += v65;
                  v74 += v65;
                }

                while (v72 != v5);
              }
            }

            else if (v5)
            {
              v76 = 0;
              v77 = 0;
              v78 = v71 + 16 * (v23 - 1) * v6;
              v22 += v69;
              do
              {
                v23 = v5;
                v24 = v77;
                v79 = v76;
                do
                {
                  if (v70 >= 0)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = v24;
                  }

                  *(v22 + 16 * v79++) = *(v78 + 16 * v80);
                  v24 = (v24 + v5);
                  --v23;
                }

                while (v23);
                v77 = (v77 + 1);
                v76 += v5;
              }

              while (v77 != v5);
            }

            ++v68;
            v63 = *(v11 + 8);
            v69 += v64;
          }

          while (v68 < *(v63 + 8 * v62));
          v26 = v87;
        }
      }

      while (v62 != v26);
    }
  }

  else if (v87 >= 1)
  {
    v27 = 0;
    v28 = *(v11 + 8);
    v29 = 16 * v5 * v5;
    v30 = 16 * v5;
    v31 = 16 * v5 + 16;
    do
    {
      v32 = v27;
      v33 = *(v28 + 8 * v27++);
      if (v33 < *(v28 + 8 * v27))
      {
        v34 = v29 * v33;
        v35 = v29 * v33 + 8;
        do
        {
          v36 = *(v18 + 8 * v33);
          v24 = *(a1 + 4);
          if (v36 >= 0)
          {
            v22 = *(v18 + 8 * v33);
          }

          else
          {
            v22 = -v36;
          }

          v23 = *(v11 + 32);
          if (v32 == *(*(v11 + 16) + 4 * v33))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v55 = 0;
                v56 = (v23 + v35);
                v22 = v23 + v34;
                if (((v36 & 0x4000000000000000) != 0) ^ __OFSUB__(v36, -v36) | (v36 == -v36))
                {
                  v36 = -v36;
                }

                v57 = v24 + v29 * (v36 - 1);
                do
                {
                  v23 = v57;
                  v24 = v22;
                  v58 = v56;
                  v59 = v55;
                  do
                  {
                    *v24 = *v23;
                    v24 += 2;
                    v60 = *v23;
                    v61 = *(v23 + 8);
                    v23 += 16;
                    *(v58 - 1) = v60;
                    *v58 = -v61;
                    ++v59;
                    v58 = (v58 + v30);
                  }

                  while (v59 < v5);
                  ++v55;
                  v56 = (v56 + v31);
                  v22 += v31;
                  v57 += v31;
                }

                while (v55 != v5);
              }
            }

            else if (v5)
            {
              v37 = 0;
              v38 = (v23 + v35);
              v22 = v23 + v34;
              if (((v36 & 0x4000000000000000) != 0) ^ __OFSUB__(v36, -v36) | (v36 == -v36))
              {
                v36 = -v36;
              }

              v39 = v24 + v29 * (v36 - 1);
              v23 = 16;
              do
              {
                v24 = 0;
                v40 = v38;
                do
                {
                  v41 = -*(v24 + v39 + 8);
                  *(v40 - 1) = *(v24 + v39);
                  *v40 = v41;
                  *(v24 + v22) = *(v24 + v39);
                  v24 += 2;
                  v40 = (v40 + v30);
                }

                while (v23 != v24);
                ++v37;
                v23 += 16;
                v38 += 2;
                v22 += v30;
                v39 += v30;
              }

              while (v37 != v5);
            }
          }

          else if (v5)
          {
            v42 = 0;
            v43 = 0;
            v22 = &v24[2 * (v22 - 1) * v6];
            v23 += 16 * v33 * v6;
            if (((v36 & 0x4000000000000000) != 0) ^ __OFSUB__(v36, -v36) | (v36 == -v36))
            {
              v44 = -v36;
            }

            else
            {
              v44 = *(v18 + 8 * v33);
            }

            v24 = (v24 + v29 * (v44 - 1));
            v45 = v24 + 1;
            do
            {
              v46 = 0;
              v47 = v5;
              v48 = v45;
              v49 = v24;
              v50 = v42;
              do
              {
                if (v36 < 0)
                {
                  v53 = (v22 + 16 * v43 + 16 * v46 * v5);
                  v52 = -*v48;
                  v51 = v50;
                }

                else
                {
                  v51 = v46 + v43 * v5;
                  v52 = v49[1];
                  v53 = v49;
                }

                v54 = v23 + 16 * v51;
                ++v46;
                *v54 = *v53;
                *(v54 + 8) = v52;
                ++v50;
                v49 += 2;
                v48 = (v48 + v30);
                --v47;
              }

              while (v47);
              ++v43;
              v42 += v5;
              v24 = (v24 + v30);
              v45 += 2;
            }

            while (v43 != v5);
          }

          ++v33;
          v28 = *(v11 + 8);
          v35 += v29;
          v34 += v29;
        }

        while (v33 < *(v28 + 8 * v27));
        v26 = v87;
      }
    }

    while (v27 != v26);
  }

  (*(v86 + 32))(v18, v22, v23, v24);
  return v11;
}