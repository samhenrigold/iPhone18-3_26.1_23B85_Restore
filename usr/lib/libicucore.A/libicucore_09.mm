uint64_t sub_19523D648(void *a1, int *a2)
{
  v44 = 0;
  v43 = 0;
  v6 = a1 + 1;
  result = a1[1];
  v5 = v6[1];
  v42 = v5;
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(result + 16);
  v10 = (v9 + 92);
  if (*(v9 + 104))
  {
    LOBYTE(v11) = v5;
    goto LABEL_33;
  }

  v12 = *(result + 64) != 1 || v5 >= v7;
  if (!v12 && v8 < a1[5])
  {
    LODWORD(v13) = *(result + 65);
    *(result + 64) = 0;
LABEL_40:
    v24 = *v5;
    v25 = v24 | (v13 << 8);
    if (((v13 - 33) & 0xFEu) > 0x5D || (v24 - 33) > 0x5Du)
    {
      result = 0xFFFFLL;
      if ((v24 - 33) >= 0x5Eu && (v24 > 0x1F || ((1 << v24) & 0x800C000) == 0))
      {
        v42 = ++v5;
        LODWORD(v13) = v25 | 0x10000;
      }
    }

    else
    {
      v42 = ++v5;
      v26 = *(v10 + *(v9 + 96));
      if (v26 < 32)
      {
        v27 = *(v9 + 8 * v26);
        v29 = 2;
        v28 = v13;
      }

      else
      {
        v27 = *(v9 + 24);
        v28 = v26 + 96;
        v44 = v24;
        v29 = 3;
        LOBYTE(v24) = v13;
      }

      LOBYTE(v43) = v28;
      HIBYTE(v43) = v24;
      result = sub_1952505B4(v27, &v43, v29);
      LODWORD(v13) = v25;
    }

    if (*(v9 + 96) >= 2)
    {
      *(v9 + 96) = *(v9 + 97);
    }

    goto LABEL_52;
  }

  while (1)
  {
LABEL_10:
    if (v5 >= v7)
    {
      goto LABEL_30;
    }

    v16 = a1[5];
    v17 = v7 - v5;
    v11 = v5;
    while (1)
    {
      if (v8 >= v16)
      {
        v20 = 15;
LABEL_29:
        *a2 = v20;
LABEL_30:
        a1[4] = v8;
        a1[2] = v5;
        return result;
      }

      v13 = *v11;
      v18 = *v11;
      if (*v11 <= 0xEu)
      {
        if (v13 == 14)
        {
          if (*(v9 + 93))
          {
            *(v9 + 96) = 1;
            *(v9 + 112) = 1;
            goto LABEL_19;
          }

          v5 = v11 + 1;
          v42 = v11 + 1;
          *(v9 + 112) = 0;
          result = 0xFFFFLL;
          LODWORD(v13) = 14;
LABEL_52:
          if (result <= 0xFFFD)
          {
            v30 = a1[6];
            if (v30)
            {
              if (v13 >= 0x100)
              {
                v31 = -2;
              }

              else
              {
                v31 = -1;
              }

              *(v30 + 2 * (v8 - a1[4])) = v31 + v5 - *(a1 + 4);
            }

            *v8++ = result;
            goto LABEL_10;
          }

          if (result >= 0x10000)
          {
            *v8 = ((result + 67043328) >> 10) - 10240;
            v32 = a1[6];
            if (v32)
            {
              if (v13 >= 0x100)
              {
                v33 = -2;
              }

              else
              {
                v33 = -1;
              }

              v34 = v33 + v5 - *(a1 + 4);
              v35 = a1[4];
              v36 = a1[5];
              *(v32 + 2 * (v8 - v35)) = v34;
              v37 = v8 + 1;
              if ((v8 + 1) < v36)
              {
                *v37 = result & 0x3FF | 0xDC00;
                *(v32 + 2 * (v37 - v35)) = v34;
LABEL_68:
                v8 += 2;
                goto LABEL_10;
              }
            }

            else
            {
              v37 = v8 + 1;
              if ((v8 + 1) < a1[5])
              {
                *v37 = result & 0x3FF | 0xDC00;
                goto LABEL_68;
              }
            }

            v14 = a1[1];
            v15 = *(v14 + 93);
            *(v14 + 93) = v15 + 1;
            *(v14 + 2 * v15 + 144) = result & 0x3FF | 0xDC00;
            v8 = v37;
            goto LABEL_10;
          }

          v39 = a1[1];
          if (v13 < 0x100)
          {
            v40 = 1;
          }

          else
          {
            v39[66] = v13;
            LODWORD(v13) = v13 >> 8;
            v40 = 2;
          }

          v39[65] = v13;
          v39[64] = v40;
          if (result == 65534)
          {
            v20 = 10;
          }

          else
          {
            v20 = 12;
          }

          goto LABEL_29;
        }

        if (v13 == 10 || v13 == 13)
        {
          v42 = v11 + 1;
          *v10 = 0;
          *(v9 + 96) = 0;
          *(v9 + 112) = 0;
        }

        else
        {
LABEL_38:
          v5 = v11 + 1;
          v42 = v11 + 1;
          v23 = *(v9 + 96);
          *(v9 + 112) = 0;
          if (v23)
          {
            if (v5 >= v7)
            {
              *(a1[1] + 65) = v18;
              *(a1[1] + 64) = 1;
              goto LABEL_30;
            }

            goto LABEL_40;
          }

          result = 0xFFFFLL;
          if (v13 < 0)
          {
            goto LABEL_52;
          }
        }

        v5 = v11 + 1;
        result = v13;
        goto LABEL_52;
      }

      if (v13 != 15)
      {
        break;
      }

      *(v9 + 96) = 0;
      if (*(v9 + 112))
      {
        *(v9 + 112) = 0;
        *a2 = 18;
        v38 = a1[1];
        *(v38 + 284) = 2;
        *(v38 + 65) = 15;
        *(a1[1] + 64) = 1;
        a1[4] = v8;
        a1[2] = v11 + 1;
        return result;
      }

LABEL_19:
      ++v11;
      if (!--v17)
      {
        v5 = v7;
        goto LABEL_30;
      }
    }

    if (v13 != 27)
    {
      goto LABEL_38;
    }

    v42 = v11;
    result = a1[1];
LABEL_33:
    v21 = *(result + 64);
    result = sub_19523C934(result, &v42, v7, 3, a2);
    v22 = *a2;
    if (!*(v9 + 104))
    {
      break;
    }

LABEL_36:
    v5 = v42;
    if (v22 >= 1)
    {
      goto LABEL_77;
    }
  }

  if (v22 <= 0)
  {
    if (!*(v9 + 112))
    {
      goto LABEL_36;
    }

    *a2 = 18;
    v41 = a1[1];
    *(v41 + 284) = 2;
    *(v41 + 64) = v21 + v42 - v11;
  }

  v5 = v42;
LABEL_77:
  a1[4] = v8;
  a1[2] = v5;
  *(v9 + 112) = 0;
  return result;
}

unint64_t sub_19523DAC0(unint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v7 = result;
  v8 = 0;
  v9 = 0;
  v91[1] = *MEMORY[0x1E69E9840];
  v11 = *(result + 8);
  v10 = *(result + 16);
  v13 = *(result + 24);
  v12 = *(result + 32);
  v14 = *(result + 40);
  v89 = *(result + 48);
  v91[0] = 0;
  memset(v88, 0, 3);
  v15 = *(v11 + 16);
  v16 = v15 + 98;
  v17 = *(v11 + 84);
  if (v17)
  {
    v18 = v12 >= v14;
  }

  else
  {
    v18 = 1;
  }

  v78 = result;
  v75 = v15 + 98;
  v76 = v11;
  v73 = v13;
  v74 = v14;
  v85 = *(v11 + 16);
  if (v18)
  {
    goto LABEL_6;
  }

  while (2)
  {
    if (v10 >= v13)
    {
      *(v11 + 84) = v17;
LABEL_139:
      if (*v6 <= 0 && *(v15 + 102) && *(v7 + 2) && v10 >= v13 && !*(v11 + 84))
      {
        *(v15 + 102) = 0;
        v70 = *(v7 + 16);
        v71 = (v10 - v70) >> 1;
        v72 = v71 - 1;
        if (v71 < 1)
        {
          v72 = -1;
        }

        else if ((*(v70 + 2 * v72) & 0xFC00) == 0xDC00 && (v71 == 1 || (*(v70 + 2 * (v71 - 2)) & 0xFC00) == 0xD800))
        {
          v72 = v71 - 2;
        }

        v90 = v12;
        result = sub_195240168(v11, byte_195479C64, 1, &v90, v14, &v89, v72, v6);
        v12 = v90;
      }

      goto LABEL_150;
    }

    v20 = *v10;
    if ((v20 & 0xFC00) != 0xDC00)
    {
LABEL_38:
      *v6 = 12;
      *(v11 + 84) = v17;
      goto LABEL_150;
    }

    ++v10;
    v17 = v20 + (v17 << 10) - 56613888;
    *(v11 + 84) = 0;
LABEL_13:
    if (v17 <= 127)
    {
      if (v17 > 31 || ((1 << v17) & 0x800C000) == 0)
      {
        v22 = 1;
        v23 = v17;
        if (*(v15 + 102))
        {
          v8 = 0;
          BYTE1(v91[0]) = v17;
          *(v15 + 102) = 0;
          v22 = 2;
          v23 = 15;
        }

        LOBYTE(v91[0]) = v23;
        if (v17 == 13 || v17 == 10)
        {
          v8 = 0;
          *(v16 + 4) = 0;
          *v16 = 0;
        }

        goto LABEL_121;
      }

      goto LABEL_38;
    }

    v80 = v10;
    if (v8)
    {
      v81 = v8;
    }

    else
    {
      v24 = *(v15 + 99);
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = *(v15 + 99);
      }

      LOBYTE(v88[0]) = v25;
      v26 = *(v15 + 108);
      if (v26 == 1)
      {
        if (v25 == 2)
        {
          v28 = 8449;
        }

        else if (v25 == 1)
        {
          v28 = 545;
        }

        else
        {
          v28 = 513;
        }

        *(v88 + 1) = v28;
        v29 = 3;
      }

      else
      {
        if (v26)
        {
          goto LABEL_137;
        }

        if (v24 > 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 33;
        }

        HIBYTE(v88[0]) = v27;
        v29 = 2;
      }

      v81 = v29;
    }

    v79 = v12;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = *(v11 + 63);
    v86 = (v17 >> 4) & 0x3F;
    v87 = v17 >> 10;
    v34 = 0x10000 << (v17 & 0xF);
    v84 = v17 - 57344;
    v82 = v17 - 983040;
    v35 = v88;
    v36 = 1;
    v37 = v81;
    do
    {
      v39 = *v35++;
      v38 = v39;
      if (v39 < 1)
      {
        goto LABEL_101;
      }

      v40 = v38;
      LODWORD(v90) = 0;
      if (v38 < 0x20u)
      {
        v47 = *(v15 + 8 * v38);
        if (v17 >= 0x10000 && (*(v47 + 253) & 1) == 0)
        {
          goto LABEL_87;
        }

        v48 = *(*(v47 + 232) + 2 * (v17 & 0xF | (16 * *(*(v47 + 88) + 4 * (v86 + *(*(v47 + 88) + 2 * v87))))));
        if (v48 >= 0x100)
        {
          result = 4294967294;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((*(*(v47 + 88) + 4 * (v86 + *(*(v47 + 88) + 2 * v87))) & v34) != 0)
        {
          LODWORD(v90) = *(*(v47 + 232) + 2 * (v17 & 0xF | (16 * *(*(v47 + 88) + 4 * (v86 + *(*(v47 + 88) + 2 * v87))))));
          if (v48 < 0x100)
          {
            goto LABEL_101;
          }

LABEL_89:
          v32 = 2;
LABEL_96:
          v33 = 0;
          v30 = 1;
          v9 = v90;
          v31 = v40;
          goto LABEL_101;
        }

        if ((v33 || v84 >> 8 < 0x19 || !(v82 >> 17)) && *(*(v47 + 232) + 2 * (v17 & 0xF | (16 * *(*(v47 + 88) + 4 * (v86 + *(*(v47 + 88) + 2 * v87)))))))
        {
          LODWORD(v90) = *(*(v47 + 232) + 2 * (v17 & 0xF | (16 * *(*(v47 + 88) + 4 * (v86 + *(*(v47 + 88) + 2 * v87))))));
        }

        else
        {
LABEL_87:
          result = *(v47 + 288);
          if (!result)
          {
            goto LABEL_101;
          }

          v53 = v31;
          v83 = v32;
          v54 = v9;
          v55 = v33;
          result = sub_1952429FC(result, v17, &v90, v33);
          v31 = v53;
          v37 = v81;
          v15 = v85;
          v33 = v55;
          v9 = v54;
          v34 = 0x10000 << (v17 & 0xF);
          v32 = v83;
          if (result == 2)
          {
            goto LABEL_89;
          }
        }

        if (result == -2 && v32 == 0)
        {
          v32 = -2;
          goto LABEL_96;
        }

        goto LABEL_101;
      }

      v41 = *(v15 + 24);
      if (v17 >= 0x10000 && (*(v41 + 253) & 1) == 0)
      {
LABEL_69:
        result = *(v41 + 288);
        if (!result)
        {
          goto LABEL_101;
        }

        v49 = v31;
        v50 = v9;
        v51 = v33;
        result = sub_1952429FC(result, v17, &v90, v33);
        v31 = v49;
        v37 = v81;
        v15 = v85;
        v33 = v51;
        v9 = v50;
LABEL_71:
        if (result == 3)
        {
          v32 = 2;
          goto LABEL_79;
        }

        goto LABEL_73;
      }

      v42 = v17 & 0xF | (16 * *(*(v41 + 88) + 4 * (v86 + *(*(v41 + 88) + 2 * v87))));
      v43 = (*(v41 + 232) + v42 + 2 * v42);
      LODWORD(v42) = *v43;
      v44 = (v42 << 16) | (v43[1] << 8);
      v45 = v44 | v43[2];
      if (v42)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      if (v44)
      {
        result = v46;
      }

      else
      {
        result = 1;
      }

      if ((*(*(v41 + 88) + 4 * (v86 + *(*(v41 + 88) + 2 * v87))) & v34) != 0)
      {
        LODWORD(v90) = v45;
        goto LABEL_71;
      }

      if (!v33 && v84 >> 8 >= 0x19 && v82 >> 17 || !v45)
      {
        goto LABEL_69;
      }

      LODWORD(v90) = v45;
      result = -result;
LABEL_73:
      if (result == -3 && v32 == 0)
      {
        v33 = 0;
        v32 = -2;
LABEL_79:
        v9 = v90;
        if (BYTE2(v90) == 129)
        {
          v30 = 1;
          v31 = 33;
        }

        else if (BYTE2(v90) == 130)
        {
          v30 = 2;
          v31 = 34;
        }

        else
        {
          v31 = (v90 >> 16) - 96;
          if (*(v15 + 108) == 1)
          {
            v30 = 3;
          }

          else
          {
            v32 = 0;
          }
        }
      }

LABEL_101:
      if (v36 >= v37)
      {
        break;
      }

      ++v36;
    }

    while (v32 < 1);
    v6 = a2;
    v7 = v78;
    v16 = v75;
    v11 = v76;
    v12 = v79;
    if (!v32)
    {
LABEL_137:
      *v6 = 10;
      *(v11 + 84) = v17;
      v10 = v80;
      goto LABEL_150;
    }

    if (*(v75 + v30) == v31)
    {
      v57 = 0;
      v58 = v30;
      v14 = v74;
      v8 = v81;
    }

    else
    {
      if (v31 >= 3)
      {
        v59 = v31 - 30;
      }

      else
      {
        v59 = v31;
      }

      LODWORD(v91[0]) = **(&off_1E7403C60 + v59);
      *(v75 + v30) = v31;
      v8 = v81;
      if (v30 == 1)
      {
        v8 = 0;
      }

      v57 = 4;
      v58 = v30;
      v14 = v74;
    }

    v13 = v73;
    if (*(v15 + 102) == v58)
    {
      v10 = v80;
      goto LABEL_120;
    }

    v60 = v57 | 1;
    v10 = v80;
    if (v58 == 2)
    {
      *(v91 | v57) = 27;
      v57 |= 2u;
      v61 = (v91 | v60);
      v62 = 78;
    }

    else
    {
      if (v58 == 1)
      {
        *(v91 | v57) = 14;
        *(v15 + 102) = 1;
        v57 |= 1u;
        goto LABEL_120;
      }

      *(v91 | v57) = 27;
      v57 |= 2u;
      v61 = (v91 | v60);
      v62 = 79;
    }

    *v61 = v62;
LABEL_120:
    v22 = v57 + 2;
    *(v91 | v57) = bswap32(v9) >> 16;
LABEL_121:
    if (v22 == 2)
    {
      if ((v12 + 1) > v14)
      {
        goto LABEL_126;
      }

      *v12 = v91[0];
      v67 = v89;
      if (v89)
      {
        if (v17 >= 0x10000)
        {
          v68 = -2;
        }

        else
        {
          v68 = -1;
        }

        v69 = ((v10 - *(v7 + 16)) >> 1) + v68;
        *v89 = v69;
        v89 = v67 + 2;
        v67[1] = v69;
      }

      ++v12;
LABEL_6:
      if (v10 >= v13)
      {
        goto LABEL_139;
      }

      if (v12 >= v14)
      {
        *v6 = 15;
        goto LABEL_150;
      }

      v19 = *v10++;
      v17 = v19;
      if ((v19 & 0xF800) == 0xD800)
      {
        if ((v17 & 0x400) == 0)
        {
          continue;
        }

        goto LABEL_38;
      }

      goto LABEL_13;
    }

    break;
  }

  if (v22 == 1)
  {
    *v12 = v91[0];
    v12 = (v12 + 1);
    v63 = v89;
    if (v89)
    {
      *v89 = ((v10 - *(v7 + 16)) >> 1) - 1;
      v89 = v63 + 1;
    }

    goto LABEL_6;
  }

LABEL_126:
  v64 = (v10 - *(v7 + 16)) >> 1;
  if (v17 >= 0x10000)
  {
    v65 = -2;
  }

  else
  {
    v65 = -1;
  }

  v90 = v12;
  v66 = v9;
  result = sub_195240168(v11, v91, v22, &v90, v14, &v89, v64 + v65, v6);
  v9 = v66;
  v15 = v85;
  v12 = v90;
  if (*v6 < 1)
  {
    goto LABEL_6;
  }

LABEL_150:
  *(v7 + 16) = v10;
  *(v7 + 32) = v12;
  return result;
}

BOOL sub_19523E2C8()
{
  ucnv_flushCache();
  if (qword_1EAEC9870 && !uhash_count(qword_1EAEC9870))
  {
    uhash_close(qword_1EAEC9870);
    qword_1EAEC9870 = 0;
  }

  word_1EAEC9878 = 0;
  if (qword_1EAEC9880)
  {
    free(qword_1EAEC9880);
    qword_1EAEC9880 = 0;
  }

  atomic_store(0, &dword_1EAEC9888);
  return qword_1EAEC9870 == 0;
}

_BYTE *ucnv_load(uint64_t a1, UErrorCode *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 && *v5)
  {

    return sub_19523E418(a1, a2);
  }

  else if (qword_1EAEC9870 && (result = uhash_get(qword_1EAEC9870, *(a1 + 24))) != 0)
  {
    ++*(result + 1);
  }

  else
  {
    v6 = sub_19523E418(a1, a2);
    result = 0;
    if (v6 && *a2 <= 0)
    {
      if (!*(a1 + 8))
      {
        sub_19523E590(v6);
      }

      return v6;
    }
  }

  return result;
}

_BYTE *sub_19523E418(uint64_t a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = udata_openChoice(*(a1 + 16), "cnv", *(a1 + 24), sub_19523FC34, 0, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = v4;
  Memory = udata_getMemory(v4);
  if (*a2 > 0)
  {
LABEL_17:
    udata_close(v5);
    return 0;
  }

  v7 = Memory;
  v8 = *(Memory + 69);
  if ((v8 & 0xFFFEu) > 0x21 || ((0x203uLL >> v8) & 1) != 0 || (v9 = qword_1E7403CB0[*(Memory + 69)], !*(v9 + 25)) || *(v9 + 4) != 1 || *Memory != 100)
  {
    v13 = 13;
LABEL_16:
    *a2 = v13;
    goto LABEL_17;
  }

  v10 = malloc_type_malloc(0x128uLL, 0x10F004011E042ADuLL);
  if (!v10)
  {
    v13 = 7;
    goto LABEL_16;
  }

  v11 = v10;
  memcpy(v10, v9, 0x128uLL);
  v11[24] = 0;
  *(v11 + 1) = v5;
  *(v11 + 2) = v7;
  v12 = *(*(v11 + 4) + 8);
  if (!v12)
  {
    goto LABEL_13;
  }

  v12(v11, a1, &v7[*v7], a2);
  if (*a2 >= 1)
  {
    free(v11);
    v11 = 0;
LABEL_13:
    if (*a2 < 1)
    {
      return v11;
    }

    goto LABEL_17;
  }

  return v11;
}

void sub_19523E590(uint64_t a1)
{
  v4 = 0;
  v2 = qword_1EAEC9870;
  if (qword_1EAEC9870)
  {
    goto LABEL_2;
  }

  v3 = ucnv_io_countKnownConverters(&v4);
  qword_1EAEC9870 = uhash_openSize(uhash_hashChars, uhash_compareChars, 0, 2 * v3, &v4);
  sub_1952376A4(22, sub_19523E2C8);
  if (v4 <= 0)
  {
    v2 = qword_1EAEC9870;
LABEL_2:
    *(a1 + 24) = 1;
    uhash_put(v2, *(a1 + 16) + 4, a1, &v4);
  }
}

void ucnv_unload(void *result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (!v1 || (v2 = v1 - 1, (*(result + 1) = v2) == 0))
    {
      if (!*(result + 24))
      {
        sub_19523E678(result);
      }
    }
  }
}

void sub_19523E678(void *a1)
{
  if (!*(a1 + 1))
  {
    v3 = *(a1[4] + 16);
    if (v3)
    {
      v3(a1);
    }

    v4 = a1[1];
    if (v4)
    {
      udata_close(v4);
    }

    free(a1);
  }
}

void sub_19523E6D8(uint64_t result)
{
  if (result && *(result + 25))
  {
    umtx_lock(&unk_1EAEC9890);
    ucnv_unload(result);

    umtx_unlock(&unk_1EAEC9890);
  }
}

void sub_19523E73C(uint64_t result)
{
  if (result && *(result + 25))
  {
    umtx_lock(&unk_1EAEC9890);
    ++*(result + 4);

    umtx_unlock(&unk_1EAEC9890);
  }
}

_BYTE *sub_19523E7A4(char *a1, char *a2, __int128 *a3, UErrorCode *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v22 = 1;
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (a2)
  {
    v8 = a2 + 60;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3)
    {
      result = 0;
      *a4 = U_INTERNAL_PROGRAM_ERROR;
      return result;
    }

    v8 = &v27[3] + 12;
    v7 = v27;
  }

  v26 = 0;
  v24 = 0uLL;
  v25 = 0uLL;
  LODWORD(v24) = 40;
  v6 = &v24;
LABEL_11:
  memset(v27, 0, sizeof(v27));
  *v7 = 0;
  v7[60] = 0;
  *(v7 + 55) = 0;
  *(v6 + 3) = a1;
  *(v6 + 4) = v8;
  *(v6 + 3) = 0;
  if (!a1)
  {
    goto LABEL_23;
  }

  v9 = *a1;
  if (v9 != 117)
  {
    if (v9 != 85 || a1[1] != 84 || a1[2] != 70)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (a1[1] == 116 && a1[2] == 102)
  {
LABEL_19:
    v10 = a1[3];
    if (v10 == 56)
    {
      if (a1[4])
      {
        goto LABEL_25;
      }
    }

    else if (v10 != 45 || a1[4] != 56 || a1[5])
    {
      goto LABEL_25;
    }

LABEL_23:
    *(v6 + 3) = "UTF-8";
    return &unk_1E7405B80;
  }

LABEL_25:
  sub_19523EAAC(a1, v7, v6, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  ConverterName = ucnv_io_getConverterName(*(v6 + 3), &v22, &v23);
  *(v6 + 3) = ConverterName;
  if (v23 <= 0 && (v12 = ConverterName) != 0)
  {
    if (v23 == -122)
    {
      *a4 = U_AMBIGUOUS_ALIAS_WARNING;
    }
  }

  else
  {
    *(v6 + 3) = v7;
    v12 = v7;
  }

  if (v22 && v12 != v7)
  {
    sub_19523EAAC(v12, v7, v6, a4);
    v12 = *(v6 + 3);
  }

  memset(__s1, 0, 60);
  ucnv_io_stripASCIIForCompare(__s1, v12);
  v13 = 0;
  v14 = 34;
  v15 = 17;
  while (1)
  {
    v16 = &(&off_1E7403DC0)[2 * v15];
    v17 = strcmp(__s1, *v16);
    v18 = v15;
    if ((v17 & 0x80000000) == 0)
    {
      v13 = v15;
      v18 = v14;
      if (!v17)
      {
        break;
      }
    }

    v19 = v15 == (v18 + v13) >> 1;
    v15 = (v18 + v13) >> 1;
    v14 = v18;
    if (v19)
    {
      goto LABEL_42;
    }
  }

  v20 = *(v16 + 2);
  if (((0x203uLL >> v20) & 1) == 0)
  {
    return qword_1E7403CB0[v20];
  }

LABEL_42:
  *(v6 + 1) = 1;
  *(v6 + 2) = 0;
  umtx_lock(&unk_1EAEC9890);
  v21 = ucnv_load(v6, a4);
  umtx_unlock(&unk_1EAEC9890);
  result = 0;
  if (*a4 <= 0 && v21)
  {
    return v21;
  }

  return result;
}

_BYTE *sub_19523EAAC(_BYTE *__s1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = 0;
  v8 = (a2 + 60);
  *(a3 + 24) = __s1;
  *(a3 + 32) = a2 + 60;
  *(a3 + 12) = *(a2 + 220);
  while (1)
  {
    v9 = *__s1;
    if (!*__s1 || v9 == 44)
    {
      break;
    }

    if (v7 == 59)
    {
      *a4 = 1;
      *a2 = 0;
      return __s1;
    }

    *(a2 + v7) = v9;
    ++__s1;
    ++v7;
  }

  *(a2 + v7) = 0;
  *(a3 + 24) = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_7:
        if (*__s1 == 44)
        {
          v10 = __s1 + 1;
        }

        else
        {
          v10 = __s1;
          if (!*__s1)
          {
            return __s1;
          }
        }

        if (strncmp(v10, "locale=", 7uLL))
        {
          break;
        }

        __s1 = v10 + 7;
        for (i = 60; ; ++i)
        {
          v14 = *__s1;
          if (!*__s1 || v14 == 44)
          {
            *(a2 + i) = 0;
            if (!v14)
            {
              goto LABEL_7;
            }

            goto LABEL_30;
          }

          ++__s1;
          if (i == 216)
          {
            break;
          }

          *(a2 + i) = v14;
        }

        *a4 = 1;
        *v8 = 0;
        if (!v14)
        {
          continue;
        }

LABEL_30:
        if (v14 != 44)
        {
          return __s1;
        }
      }

      if (!strncmp(v10, "version=", 8uLL))
      {
        break;
      }

      if (!strncmp(v10, "swaplfnl", 8uLL))
      {
        __s1 = v10 + 8;
        v17 = *(a2 + 220) | 0x10;
        *(a2 + 220) = v17;
        *(a3 + 12) = v17;
      }

      else
      {
        __s1 = v10;
        while (1)
        {
          v12 = *__s1++;
          v11 = v12;
          if (v12 == 44)
          {
            break;
          }

          if (!v11)
          {
            return __s1;
          }
        }
      }
    }

    __s1 = v10 + 8;
    if (!v10[8])
    {
      break;
    }

    v15 = v10[8] - 48;
    if ((v15 & 0xFEu) <= 9)
    {
      v16 = *(a2 + 220) & 0xFFFFFFF0 | v15;
      *(a2 + 220) = v16;
      *(a3 + 12) = v16;
      __s1 = v10 + 9;
    }
  }

  v18 = *(a2 + 220) & 0xFFFFFFF0;
  *(a2 + 220) = v18;
  *(a3 + 12) = v18;
  return __s1;
}

_OWORD *ucnv_createConverter(_OWORD *a1, char *a2, UErrorCode *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  LODWORD(v7[0]) = 40;
  if (*a3 > 0)
  {
    return 0;
  }

  memset(v9, 0, sizeof(v9));
  v5 = sub_19523E7A4(a2, v9, v7, a3);
  result = sub_19523ED60(a1, v5, v7, a3);
  if (*a3 >= 1)
  {
    return 0;
  }

  return result;
}

_OWORD *sub_19523ED60(_OWORD *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = a1;
  if (*a4 >= 1)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v5 = malloc_type_malloc(0x120uLL, 0x10F0040CC9E9754uLL);
    if (!v5)
    {
      *a4 = 7;
LABEL_2:
      sub_19523E6D8(a2);
      return v5;
    }

    v9 = 0;
  }

  v5[16] = 0u;
  v5[17] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  *(v5 + 61) = v9;
  *(v5 + 6) = a2;
  *(v5 + 14) = *(a3 + 12);
  if (!*(a3 + 8))
  {
    *(v5 + 52) = -1;
    *(v5 + 1) = UCNV_TO_U_CALLBACK_SUBSTITUTE;
    *v5 = UCNV_FROM_U_CALLBACK_SUBSTITUTE;
    *(v5 + 18) = *(a2 + 40);
    v10 = *(a2 + 16);
    *(v5 + 88) = v10[71];
    *(v5 + 94) = v10[80];
    v11 = v10[76];
    *(v5 + 89) = v11;
    *(v5 + 5) = v5 + 136;
    memcpy(v5 + 136, v10 + 72, v11);
    *(v5 + 71) = 1;
  }

  v12 = *(*(a2 + 32) + 24);
  if (v12)
  {
    v12(v5, a3, a4);
    if (*a4 >= 1 && !*(a3 + 8))
    {
      ucnv_close(v5);
      return 0;
    }
  }

  return v5;
}

BOOL sub_19523EECC(char *a1, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  LODWORD(v5[0]) = 40;
  if (*a2 > 0)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  BYTE8(v5[0]) = 1;
  v4 = sub_19523E7A4(a1, v7, v5, a2);
  sub_19523ED60(v8, v4, v5, a2);
  sub_19523E6D8(v4);
  return *a2 < U_ILLEGAL_ARGUMENT_ERROR;
}

_OWORD *sub_19523EFD4(_OWORD *a1, unsigned int a2, uint64_t a3, int a4, int *a5)
{
  v8 = 0;
  v9 = 0;
  v7 = 40;
  if (a2 >= 0x22 || ((0x203uLL >> a2) & 1) != 0 || (v5 = qword_1E7403CB0[a2], *(v5 + 25)))
  {
    result = 0;
    *a5 = 1;
  }

  else
  {
    HIDWORD(v8) = a4;
    v10 = "";
    v11 = a3;
    return sub_19523ED60(a1, v5, &v7, a5);
  }

  return result;
}

void *ucnv_openPackage_0(uint64_t a1, char *__s1, UErrorCode *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v7[0] = 40;
  if (*a3 <= 0)
  {
    v19 = 0uLL;
    memset(v20, 0, sizeof(v20));
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v14 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v11 = 0uLL;
    memset(v10, 0, sizeof(v10));
    LOBYTE(v10[0]) = 0;
    BYTE12(v11) = 0;
    v21 = 0;
    sub_19523EAAC(__s1, v10, v7, a3);
    if (*a3 <= 0)
    {
      v7[1] = 1;
      *(&v8 + 1) = a1;
      v5 = sub_19523E418(v7, a3);
      if (*a3 <= 0)
      {
        result = sub_19523ED60(0, v5, v7, a3);
        if (*a3 < 1)
        {
          return result;
        }

        ucnv_close(result);
      }
    }
  }

  return 0;
}

uint64_t ucnv_flushCache()
{
  u_flushDefaultConverter();
  if (!qword_1EAEC9870)
  {
    return 0;
  }

  umtx_lock(&unk_1EAEC9890);
  v0 = 0;
  v1 = 1;
  do
  {
    v8 = -1;
    v2 = uhash_nextElement(qword_1EAEC9870, &v8);
    if (!v2)
    {
      break;
    }

    v3 = v2;
    v4 = 0;
    do
    {
      v5 = *(v3 + 8);
      if (*(v5 + 4))
      {
        ++v4;
      }

      else
      {
        v0 = (v0 + 1);
        uhash_removeElement(qword_1EAEC9870, v3);
        *(v5 + 24) = 0;
        sub_19523E678(v5);
      }

      v3 = uhash_nextElement(qword_1EAEC9870, &v8);
    }

    while (v3);
    v6 = v1 & (v4 > 0);
    v1 = 0;
  }

  while ((v6 & 1) != 0);
  umtx_unlock(&unk_1EAEC9890);
  return v0;
}

uint64_t sub_19523F254(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9888, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9888))
    {
      if (dword_1EAEC988C >= 1)
      {
        *a1 = dword_1EAEC988C;
      }
    }

    else
    {
      sub_19523FCA4(a1);
      dword_1EAEC988C = *a1;
      icu::umtx_initImplPostInit(&dword_1EAEC9888);
    }
  }

  if (*a1 <= 0)
  {
    return word_1EAEC9878;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19523F2F0(unsigned int a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9888, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9888))
  {
    v5 = dword_1EAEC988C;
    if (dword_1EAEC988C >= 1)
    {
      result = 0;
LABEL_8:
      *a2 = v5;
      return result;
    }
  }

  else
  {
    sub_19523FCA4(a2);
    dword_1EAEC988C = *a2;
    icu::umtx_initImplPostInit(&dword_1EAEC9888);
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (word_1EAEC9878 <= a1)
  {
    result = 0;
    v5 = 8;
    goto LABEL_8;
  }

  return *(qword_1EAEC9880 + 8 * a1);
}

uint64_t ucnv_swap(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, int *a5)
{
  v7 = a3;
  v10 = udata_swapDataHeader(a1, a2, a3, a4, a5);
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (__PAIR64__(*(a2 + 13), *(a2 + 12)) != 0x6E00000063 || *(a2 + 14) != 118 || *(a2 + 15) != 116 || *(a2 + 16) != 6 || *(a2 + 17) <= 1u)
  {
    udata_printError(a1, "ucnv_swap(): data format %02x.%02x.%02x.%02x (format version %02x.%02x) is not recognized as an ICU .cnv conversion table\n");
LABEL_18:
    result = 0;
    v17 = 16;
    goto LABEL_19;
  }

  v12 = v10;
  v13 = a2 + v10;
  if (a4)
  {
    v14 = a4 + v10;
  }

  else
  {
    v14 = 0;
  }

  if (v7 < 0)
  {
    v18 = (*(a1 + 16))(*v13);
    v19 = v18;
    v20 = &v14[v18];
  }

  else
  {
    v15 = v7 - v10;
    if (v7 - v10 < 100 || (v16 = (*(a1 + 16))(*v13), v7 = v15 - v16, v15 < v16))
    {
      udata_printError(a1, "ucnv_swap(): too few bytes (%d after header) for an ICU .cnv conversion table\n");
LABEL_16:
      result = 0;
      v17 = 8;
LABEL_19:
      *a5 = v17;
      return result;
    }

    v18 = v16;
    if (v13 != v14)
    {
      memcpy(v14, v13, v16);
    }

    (*(a1 + 56))(a1, v13, 4, v14, a5);
    (*(a1 + 56))(a1, v13 + 64, 4, v14 + 64, a5);
    v22 = strlen(v13 + 4);
    (*(a1 + 72))(a1, v13 + 4, v22, v14 + 4, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "ucnv_swap(): error swapping converter name\n");
      return 0;
    }

    v19 = v18;
    v20 = &v14[v18];
  }

  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v13[69] != 2)
  {
    udata_printError(a1, "ucnv_swap(): unknown conversionType=%d!=UCNV_MBCS\n");
    goto LABEL_18;
  }

  if (v7 <= 0x27)
  {
LABEL_26:
    udata_printError(a1, "ucnv_swap(): too few bytes (%d after headers) for an ICU MBCS .cnv conversion table\n");
    goto LABEL_16;
  }

  v23 = &v13[v19];
  v24 = v13[v19];
  if (v24 == 5)
  {
    if (v23[1] >= 3u)
    {
      v25 = (*(a1 + 16))(*(v23 + 8));
      if ((v25 & 0xFF80) == 0)
      {
        v67 = (v25 >> 6) & 1;
        v62 = 4 * (v25 & 0x3F);
        v64 = v23[1];
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if (v24 != 4 || !v23[1])
  {
LABEL_39:
    udata_printError(a1, "ucnv_swap(): unsupported _MBCSHeader.version %d.%d\n");
    goto LABEL_18;
  }

  v64 = v23[1];
  v67 = 0;
  v62 = 32;
LABEL_41:
  v60 = v23[2];
  v57 = (*(a1 + 16))(*(v23 + 1));
  v56 = (*(a1 + 16))(*(v23 + 2));
  v58 = (*(a1 + 16))(*(v23 + 3));
  v59 = (*(a1 + 16))(*(v23 + 4));
  v63 = (*(a1 + 16))(*(v23 + 5));
  v26 = (*(a1 + 16))(*(v23 + 6));
  v27 = (*(a1 + 16))(*(v23 + 7));
  v66 = v26;
  if (v67 && !v26)
  {
    udata_printError(a1, "ucnv_swap(): unsupported combination of makeconv --small with SBCS\n");
    goto LABEL_18;
  }

  v55 = v27;
  if (v26 > 0xEu || ((1 << v26) & 0x530F) == 0)
  {
    udata_printError(a1, "ucnv_swap(): unsupported MBCS output type 0x%x\n");
    goto LABEL_18;
  }

  v53 = v26;
  if (v64 >= 3 && v26)
  {
    v28 = ((v60 << 8) + 256) >> 5;
    if (!v60)
    {
      v28 = 0;
    }

    if (v26 == 14)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v54 = v29;
  }

  else
  {
    v54 = 0;
  }

  v61 = v26 >> 8;
  if (v26 > 0xFF)
  {
    if ((v7 & 0x80000000) == 0 && v7 < (v61 + 128))
    {
      udata_printError(a1, "ucnv_swap(): too few bytes (%d after headers) for an ICU MBCS .cnv conversion table with extension data\n");
      goto LABEL_16;
    }

    v52 = &v23[v61];
    v31 = udata_readInt32(a1, v52[31]) + v61;
  }

  else
  {
    v52 = 0;
    v30 = v27;
    if (v67)
    {
      v30 = 0;
    }

    v31 = v30 + v63 + v54;
  }

  v65 = v31;
  if ((v7 & 0x80000000) == 0)
  {
    if (v7 < v31)
    {
      goto LABEL_26;
    }

    if (v23 != v21)
    {
      memcpy(v21, v23, v31);
    }

    (*(a1 + 56))(a1, v23 + 4, v62 - 4, v21 + 4, a5);
    if (v26 == 14)
    {
      v32 = strlen(&v23[v62]);
      (*(a1 + 72))(a1, &v23[v62], v32, &v21[v62], a5);
      goto LABEL_87;
    }

    (*(a1 + 56))(a1, &v23[v62], (v57 << 10), &v21[v62], a5);
    (*(a1 + 56))(a1, &v23[v62 & 0x3FF | (v57 << 10)], (8 * v56), &v21[v62 & 0x3FF | (v57 << 10)], a5);
    v33 = (a1 + 48);
    (*(a1 + 48))(a1, &v23[v58], (v59 - v58), &v21[v58], a5);
    if (!v53)
    {
      (*(a1 + 48))(a1, &v23[v59], v63 - v59 + v55, &v21[v59], a5);
LABEL_87:
      if (v66 >= 0x100)
      {
        v36 = &v23[v61];
        v37 = &v21[v61];
        Int32 = udata_readInt32(a1, v52[1]);
        v39 = udata_readInt32(a1, v52[2]);
        (*(a1 + 56))(a1, &v36[Int32], (4 * v39), &v37[Int32], a5);
        v40 = udata_readInt32(a1, v52[3]);
        v41 = udata_readInt32(a1, v52[4]);
        (*(a1 + 48))(a1, &v36[v40], (2 * v41), &v37[v40], a5);
        v42 = udata_readInt32(a1, v52[5]);
        v43 = udata_readInt32(a1, v52[7]);
        (*(a1 + 48))(a1, &v36[v42], (2 * v43), &v37[v42], a5);
        v44 = udata_readInt32(a1, v52[6]);
        (*(a1 + 56))(a1, &v36[v44], (4 * v43), &v37[v44], a5);
        v45 = udata_readInt32(a1, v52[10]);
        v46 = udata_readInt32(a1, v52[12]);
        (*(a1 + 48))(a1, &v36[v45], (2 * v46), &v37[v45], a5);
        v47 = udata_readInt32(a1, v52[13]);
        v48 = udata_readInt32(a1, v52[14]);
        (*(a1 + 48))(a1, &v36[v47], (2 * v48), &v37[v47], a5);
        v49 = udata_readInt32(a1, v52[15]);
        v50 = udata_readInt32(a1, v52[16]);
        (*(a1 + 56))(a1, &v36[v49], (4 * v50), &v37[v49], a5);
        v51 = udata_readInt32(a1, *v52);
        (*(a1 + 56))(a1, v36, (4 * v51), v37, a5);
      }

      return v18 + v12 + v65;
    }

    if (v13[79])
    {
      v34 = 2176;
    }

    else
    {
      v34 = 128;
    }

    (*(a1 + 48))(a1, &v23[v59], v34, &v21[v59], a5);
    (*(a1 + 56))(a1, &v23[(v34 + v59)], (v63 - (v34 + v59)), &v21[(v34 + v59)], a5);
    if (v67)
    {
      v35 = 0;
    }

    else
    {
      v35 = v55;
    }

    if (v66 > 7u)
    {
      if (v66 != 8 && v66 != 12)
      {
LABEL_85:
        if (v54)
        {
          (*(a1 + 48))(a1, &v23[(v35 + v63)], v54, &v21[(v35 + v63)], a5);
        }

        goto LABEL_87;
      }
    }

    else if (v66 != 1)
    {
      if (v66 != 3)
      {
        goto LABEL_85;
      }

      v33 = (a1 + 56);
    }

    (*v33)(a1, &v23[v63], v35, &v21[v63], a5);
    goto LABEL_85;
  }

  return v18 + v12 + v65;
}

void sub_19523FCA4(UErrorCode *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_1952376A4(22, sub_19523E2C8);
  v2 = ucnv_openAllNames(a1);
  v3 = uenum_count(v2, a1);
  if (*a1 <= 0)
  {
    v4 = v3;
    qword_1EAEC9880 = malloc_type_malloc(8 * v3, 0x10040436913F5uLL);
    if (qword_1EAEC9880)
    {
      v8 = 0;
      memset(v9, 0, sizeof(v9));
      Converter = ucnv_createConverter(v9, 0, &v8);
      ucnv_close(Converter);
      word_1EAEC9878 = 0;
      if (v4 >= 1)
      {
        do
        {
          v8 = 0;
          v6 = uenum_next(v2, 0, &v8);
          if (sub_19523EECC(v6, &v8))
          {
            v7 = word_1EAEC9878++;
            *(qword_1EAEC9880 + 8 * v7) = v6;
          }

          --v4;
        }

        while (v4);
      }

      uenum_close(v2);
    }

    else
    {
      *a1 = U_MEMORY_ALLOCATION_ERROR;
    }
  }
}

void *ucnv_cbFromUWriteBytes(void *result, char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    return sub_195240168(result[1], a2, a3, result + 4, result[5], result + 6, a4, a5);
  }

  return result;
}

uint64_t ucnv_cbFromUWriteUChars(uint64_t result, unint64_t *a2, unint64_t a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v20[9] = v5;
    v20[10] = v6;
    v11 = result;
    v12 = (result + 32);
    v13 = *(result + 32);
    result = ucnv_fromUnicode(*(result + 8), (result + 32), *(result + 40), a2, a3, 0, 0, a5);
    v14 = v12[2];
    if (v14)
    {
      v15 = *v12;
      if (*v12 != v13)
      {
        do
        {
          *v14++ = a4;
          ++v13;
        }

        while (v13 != v15);
        *(v11 + 48) = v14;
      }
    }

    if (*a5 == 15)
    {
      v19 = 0;
      result = *(v11 + 8);
      v16 = *(result + 91);
      v20[0] = result + v16 + 104;
      if (v16 > 31 || (v17 = result + 136, *(result + 91) = 0, result = ucnv_fromUnicode(result, v20, (result + 136), a2, a3, 0, 0, &v19), v18 = v20[0], *(*(v11 + 8) + 91) = LOBYTE(v20[0]) - *(v11 + 8) - 104, v18 >= v17) || v19 == 15)
      {
        *a5 = 5;
      }
    }
  }

  return result;
}

void *ucnv_cbFromUWriteSub(void *result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    v6 = result[1];
    v7 = *(v6 + 89);
    if (*(v6 + 89))
    {
      if (v7 < 0)
      {
        v15[1] = v3;
        v15[2] = v4;
        return ucnv_cbFromUWriteUChars(result, v15, *(v6 + 40) - 2 * v7, a2, a3);
      }

      else
      {
        v9 = *(*(*(v6 + 48) + 32) + 104);
        if (v9)
        {

          return v9();
        }

        else
        {
          v10 = (v6 + 94);
          if (*(v6 + 94) && *(v6 + 140) <= 0xFFu)
          {
            v11 = result[5];
            v12 = result + 4;
            v13 = result + 6;
            v14 = result[1];
            v7 = 1;
          }

          else
          {
            v10 = *(v6 + 40);
            v11 = result[5];
            v12 = result + 4;
            v13 = result + 6;
            v14 = result[1];
          }

          return sub_195240168(v14, v10, v7, v12, v11, v13, a2, a3);
        }
      }
    }
  }

  return result;
}

uint64_t ucnv_cbToUWriteUChars(uint64_t result, __int16 *a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    return sub_195240210(*(result + 8), a2, a3, (result + 32), *(result + 40), (result + 48), a4, a5);
  }

  return result;
}

uint64_t ucnv_cbToUWriteSub(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  result = *(a1 + 8);
  if (*(result + 90) == 1 && *(result + 94))
  {
    if (*a3 < 1)
    {
      v6 = &unk_195479CFE;
      return sub_195240210(result, v6, 1, (a1 + 32), *(a1 + 40), (a1 + 48), v3, a3);
    }
  }

  else if (*a3 <= 0)
  {
    v6 = &unk_195479D00;
    return sub_195240210(result, v6, 1, (a1 + 32), *(a1 + 40), (a1 + 48), v3, a3);
  }

  return result;
}

uint64_t sub_195240114(uint64_t a1, uint64_t *a2)
{
  (a2[2])(*a2, 0, 55295);
  v3 = a2[2];
  v4 = *a2;

  return v3(v4, 57344, 1114111);
}

uint64_t sub_195240168(uint64_t result, char *a2, int a3, void *a4, unint64_t a5, void *a6, int a7, _DWORD *a8)
{
  v8 = *a4;
  if (a6 && (v9 = *a6) != 0)
  {
    if (a3 >= 1)
    {
      do
      {
        if (v8 >= a5)
        {
          break;
        }

        v10 = a3;
        v11 = *a2++;
        *v8++ = v11;
        *v9++ = a7;
        --a3;
      }

      while (v10 >= 2);
    }

    *a6 = v9;
  }

  else if (a3 >= 1)
  {
    do
    {
      if (v8 >= a5)
      {
        break;
      }

      v12 = a3;
      v13 = *a2++;
      *v8++ = v13;
      --a3;
    }

    while (v12 >= 2);
  }

  *a4 = v8;
  if (a3 >= 1)
  {
    if (result)
    {
      v14 = (result + 104);
      *(result + 91) = a3;
      v15 = a3 + 1;
      do
      {
        v16 = *a2++;
        *v14++ = v16;
        --v15;
      }

      while (v15 > 1);
    }

    *a8 = 15;
  }

  return result;
}

uint64_t sub_195240210(uint64_t result, __int16 *a2, int a3, _WORD **a4, unint64_t a5, void *a6, int a7, _DWORD *a8)
{
  v8 = *a4;
  if (a6 && (v9 = *a6) != 0)
  {
    if (a3 >= 1)
    {
      do
      {
        if (v8 >= a5)
        {
          break;
        }

        v10 = a3;
        v11 = *a2++;
        *v8++ = v11;
        *v9++ = a7;
        --a3;
      }

      while (v10 >= 2);
    }

    *a6 = v9;
  }

  else if (a3 >= 1)
  {
    do
    {
      if (v8 >= a5)
      {
        break;
      }

      v12 = a3;
      v13 = *a2++;
      *v8++ = v13;
      --a3;
    }

    while (v12 >= 2);
  }

  *a4 = v8;
  if (a3 >= 1)
  {
    if (result)
    {
      v14 = (result + 144);
      *(result + 93) = a3;
      v15 = a3 + 1;
      do
      {
        v16 = *a2++;
        *v14++ = v16;
        --v15;
      }

      while (v15 > 1);
    }

    *a8 = 15;
  }

  return result;
}

uint64_t sub_1952402B8(uint64_t result, unsigned int a2, unint64_t *a3, unint64_t a4, _DWORD **a5, int a6, _DWORD *a7)
{
  v7 = *a3;
  v8 = *a3;
  if (*a3 >= a4)
  {
    goto LABEL_13;
  }

  if (a2 < 0x10000)
  {
    v9 = 0;
    *v8 = a2;
    a2 = -1;
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  *v8 = (a2 >> 10) - 10304;
  v10 = v8 + 1;
  if (v10 >= a4)
  {
    v9 = 0;
    a2 = a2 & 0x3FF | 0xDC00;
    goto LABEL_7;
  }

  *v10 = a2 & 0x3FF | 0xDC00;
  v9 = 1;
  a2 = -1;
  v11 = 2;
LABEL_8:
  v8 = &v7[v11];
  if (a5)
  {
    v12 = *a5;
    if (*a5)
    {
      *v12 = a6;
      v13 = v12 + 1;
      if (v9)
      {
        v13 = v12 + 2;
        v12[1] = a6;
      }

      *a5 = v13;
    }
  }

LABEL_13:
  *a3 = v8;
  if ((a2 & 0x80000000) == 0)
  {
    if (result)
    {
      if (HIWORD(a2))
      {
        v15 = a2 & 0x3FF | 0xDC00;
        a2 = (a2 >> 10) - 10304;
        *(result + 146) = v15;
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      *(result + 144) = a2;
      *(result + 93) = v14;
    }

    *a7 = 15;
  }

  return result;
}

void sub_19524038C(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_malloc(0xA8uLL, 0x1020040AED791A8uLL);
  *(a1 + 16) = v6;
  if (v6)
  {
    v7 = v6;
    memset(v10, 0, sizeof(v10));
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    LODWORD(v8[0]) = 40;
    *v6 = 0;
    v6[1] = sub_19523E7A4("icu-internal-compound-s1", v10, v8, a3);
    v7[2] = sub_19523E7A4("icu-internal-compound-s2", v10, v8, a3);
    v7[3] = sub_19523E7A4("icu-internal-compound-s3", v10, v8, a3);
    v7[4] = sub_19523E7A4("icu-internal-compound-d1", v10, v8, a3);
    v7[5] = sub_19523E7A4("icu-internal-compound-d2", v10, v8, a3);
    v7[6] = sub_19523E7A4("icu-internal-compound-d3", v10, v8, a3);
    v7[7] = sub_19523E7A4("icu-internal-compound-d4", v10, v8, a3);
    v7[8] = sub_19523E7A4("icu-internal-compound-d5", v10, v8, a3);
    v7[9] = sub_19523E7A4("icu-internal-compound-d6", v10, v8, a3);
    v7[10] = sub_19523E7A4("icu-internal-compound-d7", v10, v8, a3);
    v7[11] = sub_19523E7A4("icu-internal-compound-t", v10, v8, a3);
    v7[12] = sub_19523E7A4("ibm-915_P100-1995", v10, v8, a3);
    v7[13] = sub_19523E7A4("ibm-916_P100-1995", v10, v8, a3);
    v7[14] = sub_19523E7A4("ibm-914_P100-1995", v10, v8, a3);
    v7[15] = sub_19523E7A4("ibm-874_P100-1995", v10, v8, a3);
    v7[16] = sub_19523E7A4("ibm-912_P100-1995", v10, v8, a3);
    v7[17] = sub_19523E7A4("ibm-913_P100-2000", v10, v8, a3);
    v7[18] = sub_19523E7A4("iso-8859_14-1998", v10, v8, a3);
    v7[19] = sub_19523E7A4("ibm-923_P100-1998", v10, v8, a3);
    if (*a3 > 0 || *(a2 + 8))
    {
      sub_195240694(a1);
    }

    else
    {
      *(v7 + 40) = 0;
    }
  }

  else
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }
}

void sub_195240694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = 0; i != 160; i += 8)
    {
      v4 = *(v1 + i);
      if (v4)
      {
        sub_19523E6D8(v4);
      }
    }

    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1952406F0(void *__src, int *a2)
{
  v5 = __src[3];
  v4 = __src[4];
  v6 = __src[2];
  v7 = *(__src[1] + 16);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  __dst = 0u;
  if (*__src >= 0x38u)
  {
    v8 = 56;
  }

  else
  {
    v8 = *__src;
  }

  result = memcpy(&__dst, __src, v8);
  LOWORD(__dst) = v8;
  v33 = v7;
  v10 = *(v7 + 160);
  while (1)
  {
LABEL_5:
    if (v6 >= v5)
    {
      goto LABEL_52;
    }

    v11 = __src[5];
    if (v4 >= v11)
    {
      v27 = 15;
      goto LABEL_51;
    }

    v12 = __src[1];
    v13 = *(v12 + 64);
    v14 = v13 <= 0 ? v6 : (v12 + 65);
    if (*v14 == 27)
    {
      break;
    }

LABEL_25:
    if (v10)
    {
      if (v6 < v5)
      {
        v21 = v5 - v6;
        if (v5 - v6 > 1)
        {
          v22 = 1;
          while (v6[v22] != 27)
          {
            if ((v21 & 0x7FFFFFFF) == ++v22)
            {
              goto LABEL_39;
            }
          }

          v21 = v22;
        }

LABEL_39:
        *&v35 = v6;
        *(&v35 + 1) = &v6[v21];
        *&v36 = v4;
        v25 = *(*(&__dst + 1) + 48);
        *(*(&__dst + 1) + 48) = *(v33 + 8 * v10);
        result = sub_19524F568(&__dst, a2);
        v26 = *(&__dst + 1);
        v6 = v35;
        *(*(&__dst + 1) + 48) = v25;
        v4 = v36;
        if (*a2 >= 1)
        {
          if (*a2 == 15)
          {
            v32 = *(v26 + 93);
            if (v32 >= 1)
            {
              result = memcpy((__src[1] + 144), (v26 + 144), v32);
              LOBYTE(v32) = *(v26 + 93);
            }

            *(__src[1] + 93) = v32;
            *(v26 + 93) = 0;
          }

          goto LABEL_52;
        }
      }
    }

    else if (v6 < v5)
    {
      v23 = v5 - v6;
      while (1)
      {
        v24 = *v6;
        if (v24 == 27)
        {
          break;
        }

        if (v4 >= v11)
        {
          *a2 = 15;
          goto LABEL_5;
        }

        ++v6;
        *v4++ = v24;
        if (!--v23)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v15 = 0;
  v16 = &v6[-v13];
  v17 = &unk_195479D69;
  while (2)
  {
    v18 = 0;
    v19 = 27;
    while (v18 < v13)
    {
      v20 = *(v12 + 65 + v18);
LABEL_17:
      if (v20 != v19)
      {
        goto LABEL_21;
      }

      v19 = v17[v18++];
      if (!v19)
      {
        if (*a2 != 11)
        {
          result = strlen(&unk_195479D68 + 5 * v15);
          v6 += result - v13;
          *(v12 + 64) = 0;
          v10 = v15;
          goto LABEL_25;
        }

        goto LABEL_44;
      }
    }

    if (&v16[v18] < v5)
    {
      v20 = v16[v18];
      goto LABEL_17;
    }

    *a2 = 11;
LABEL_21:
    ++v15;
    v17 += 5;
    if (v15 != 20)
    {
      continue;
    }

    break;
  }

  if (*a2 == 11)
  {
LABEL_44:
    if (v6 < v5)
    {
      v28 = v5 - v6;
      do
      {
        v29 = *v6++;
        v30 = __src[1];
        v31 = *(v30 + 64);
        *(v30 + 64) = v31 + 1;
        *(v30 + v31 + 65) = v29;
        --v28;
      }

      while (v28);
    }

    *a2 = 0;
    goto LABEL_52;
  }

  if (!v13)
  {
    ++v6;
  }

  v27 = 12;
LABEL_51:
  *a2 = v27;
LABEL_52:
  *(v33 + 160) = v10;
  __src[4] = v4;
  __src[2] = v6;
  return result;
}

uint64_t sub_1952409C4(uint64_t result, _DWORD *a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(result + 40);
  v6 = *(result + 8);
  v5 = *(result + 16);
  v7 = *(result + 24);
  v8 = *(v6 + 63);
  v63 = 0;
  memset(v64, 0, 7);
  v9 = *(v6 + 16);
  v10 = *(v9 + 160);
  v11 = *(v6 + 84);
  if (v11)
  {
    v12 = v3 >= v4;
  }

  else
  {
    v12 = 1;
  }

  v60 = v6;
  v61 = a2;
  v58 = v7;
  v59 = v4;
  if (v12)
  {
    goto LABEL_6;
  }

  while (v5 < v7)
  {
    v14 = *v5;
    if ((v14 & 0xFC00) != 0xDC00)
    {
LABEL_73:
      *a2 = 12;
      break;
    }

    ++v5;
    v11 = v14 + (v11 << 10) - 56613888;
    *(v6 + 84) = 0;
    do
    {
      v15 = 0;
      if (v11 > 0xA || ((1 << v11) & 0x601) == 0)
      {
        v15 = 0;
        if ((v11 & 0xFFFFFF60) - 32 >= 0x60)
        {
          if ((v11 - 258) >= 0x10 || (v15 = 16, ((0xFC3Fu >> (v11 - 2)) & 1) == 0))
          {
            v37 = v11 & 0xFFFFFFFC;
            v15 = 16;
            if ((v11 & 0xFFFFFFFC) != 0x118 && (v11 & 0xFFFFFFFB) - 313 >= 2)
            {
              if ((v11 - 321) >= 0x15 || (v15 = 16, ((0x19804Fu >> (v11 - 65)) & 1) == 0))
              {
                v15 = 16;
                if (v37 != 344)
                {
                  v38 = v11 & 0xFFFFFFFE;
                  if ((v11 & 0xFFFFFFFE) != 0x15E)
                  {
                    v15 = 16;
                    if (((v11 - 352) > 0x1E || ((1 << (v11 - 96)) & 0x7E03C03F) == 0) && ((v11 - 711) > 0x16 || ((1 << (v11 + 57)) & 0x560001) == 0))
                    {
                      v15 = 17;
                      if (v37 != 264)
                      {
                        v15 = 17;
                        if ((v11 - 284) >= 6)
                        {
                          if (v37 == 292)
                          {
                            goto LABEL_17;
                          }
                        }

                        else if (v37 == 292 || ((0x33u >> (v11 - 28)) & 1) != 0)
                        {
                          goto LABEL_17;
                        }

                        if ((v11 - 308) > 0x39 || (v15 = 17, ((1 << (v11 - 52)) & 0x300030000000003) == 0))
                        {
                          v15 = 18;
                          if (v37 != 372)
                          {
                            v15 = 18;
                            if (v11 <= 7765)
                            {
                              if ((v11 - 7690) <= 0x37 && ((1 << (v11 - 10)) & 0xC0000000300003) != 0)
                              {
                                goto LABEL_17;
                              }

                              v56 = v7;
                              v57 = a2;
                              if ((v11 - 338) <= 0x26 && ((1 << (v11 - 82)) & 0x4000000003) != 0)
                              {
LABEL_91:
                                v15 = 19;
LABEL_92:
                                a2 = v57;
                                v7 = v56;
                                goto LABEL_17;
                              }
                            }

                            else
                            {
                              if ((v11 - 7766) <= 0x2F && ((1 << (v11 - 86)) & 0xFC0000300C03) != 0 || (v11 - 7922) < 2)
                              {
                                goto LABEL_17;
                              }

                              v56 = v7;
                              v57 = a2;
                              if (v11 == 8364)
                              {
                                goto LABEL_91;
                              }
                            }

                            v15 = 15;
                            if ((v11 - 3585) < 0x3A)
                            {
                              goto LABEL_92;
                            }

                            a2 = v57;
                            v7 = v56;
                            if ((v11 - 3647) >= 0x1D)
                            {
                              if ((v11 - 256) > 0x23 || (v15 = 14, ((1 << v11) & 0xC00CC0003) == 0))
                              {
                                v62 = v5;
                                v15 = 14;
                                if (v37 == 296)
                                {
                                  goto LABEL_124;
                                }

                                v6 = v60;
                                a2 = v61;
                                v7 = v58;
                                v4 = v59;
                                if (v38 != 302)
                                {
                                  if ((v11 - 310) > 0x3D || (v15 = 14, ((1 << (v11 - 54)) & 0x303F000300F18067) == 0))
                                  {
                                    v15 = 2;
                                    if (v38 != 700)
                                    {
                                      v15 = 2;
                                      if (v11 == 8213)
                                      {
                                        goto LABEL_124;
                                      }

                                      v6 = v60;
                                      a2 = v61;
                                      v7 = v58;
                                      v4 = v59;
                                      if ((v11 - 900) >= 0x4B)
                                      {
                                        if ((v11 - 1548) > 0x13 || (v15 = 3, ((1 << (v11 - 12)) & 0x88001) == 0))
                                        {
                                          v15 = 3;
                                          if ((v11 - 1569) < 0x1A)
                                          {
                                            goto LABEL_124;
                                          }

                                          v6 = v60;
                                          a2 = v61;
                                          v7 = v58;
                                          v4 = v59;
                                          if ((v11 - 1600) < 0x13)
                                          {
                                            goto LABEL_17;
                                          }

                                          v15 = 3;
                                          if (v11 == 8203)
                                          {
                                            goto LABEL_124;
                                          }

                                          v6 = v60;
                                          a2 = v61;
                                          v7 = v58;
                                          v4 = v59;
                                          if ((v11 - 1632) < 0xE)
                                          {
                                            goto LABEL_17;
                                          }

                                          if ((v11 - 65136) >= 5)
                                          {
                                            v15 = 3;
                                            v6 = v60;
                                            a2 = v61;
                                            v7 = v58;
                                            v4 = v59;
                                            if ((v11 - 65142) < 0x49)
                                            {
                                              goto LABEL_17;
                                            }
                                          }

                                          else
                                          {
                                            v15 = 3;
                                            if ((v11 - 65142) < 0x49)
                                            {
                                              goto LABEL_124;
                                            }

                                            v6 = v60;
                                            a2 = v61;
                                            v7 = v58;
                                            v4 = v59;
                                            if ((0x17u >> (v11 - 112)))
                                            {
                                              goto LABEL_17;
                                            }
                                          }

                                          v15 = 13;
                                          if ((v11 - 1488) < 0x1B)
                                          {
                                            goto LABEL_17;
                                          }

                                          v15 = 13;
                                          if (v11 == 8215)
                                          {
                                            goto LABEL_124;
                                          }

                                          v6 = v60;
                                          a2 = v61;
                                          v7 = v58;
                                          v4 = v59;
                                          if (v11 == 8254)
                                          {
                                            goto LABEL_17;
                                          }

                                          v15 = 12;
                                          if (v11 == 8470)
                                          {
LABEL_124:
                                            v6 = v60;
                                            a2 = v61;
                                            v7 = v58;
                                            v4 = v59;
                                            goto LABEL_17;
                                          }

                                          v6 = v60;
                                          a2 = v61;
                                          v7 = v58;
                                          v4 = v59;
                                          if ((v11 - 1025) >= 0x5F)
                                          {
                                            if ((v11 - 286) > 0x13 || (v15 = 1, ((1 << (v11 - 30)) & 0xC0003) == 0))
                                            {
                                              v15 = 1;
                                              if (v37 != 536)
                                              {
                                                LODWORD(v17) = 0;
LABEL_23:
                                                v22 = v10;
                                                v23 = v10;
                                                v24 = 1;
                                                v25 = &byte_195479D6E;
                                                while (1)
                                                {
                                                  result = sub_195251CF8(*(v9 + 8 * v24), v11, &v63, v8);
                                                  if (result >= 1)
                                                  {
                                                    break;
                                                  }

                                                  ++v24;
                                                  v25 += 5;
                                                  if (v24 == 12)
                                                  {
                                                    v10 = v23;
                                                    v6 = v60;
                                                    a2 = v61;
                                                    v7 = v58;
                                                    v4 = v59;
                                                    goto LABEL_32;
                                                  }
                                                }

                                                if (v22 == v24)
                                                {
                                                  v10 = v22;
                                                  a2 = v61;
                                                  v5 = v62;
                                                  v7 = v58;
                                                }

                                                else
                                                {
                                                  v39 = *(v25 - 1);
                                                  v40 = &v64[v17];
                                                  a2 = v61;
                                                  v5 = v62;
                                                  v7 = v58;
                                                  do
                                                  {
                                                    *v40++ = v39;
                                                    v41 = *v25++;
                                                    v39 = v41;
                                                    LODWORD(v17) = v17 + 1;
                                                  }

                                                  while (v41);
                                                  v10 = v24;
                                                }

                                                v42 = v63;
                                                v43 = &v64[v17];
                                                v44 = result + 1;
                                                v45 = 8 * result - 8;
                                                v4 = v59;
                                                v6 = v60;
                                                do
                                                {
                                                  *v43++ = v42 >> v45;
                                                  LODWORD(v17) = v17 + 1;
                                                  --v44;
                                                  v45 -= 8;
                                                }

                                                while (v44 > 1);
                                                goto LABEL_58;
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
                }
              }
            }
          }
        }
      }

LABEL_17:
      LODWORD(v17) = 0;
      if (v10 != v15)
      {
        v17 = 0;
        v18 = &unk_195479D68 + 5 * v15;
        v21 = *v18;
        v19 = v18 + 1;
        LOBYTE(v20) = v21;
        do
        {
          v64[v17] = v20;
          v20 = v19[v17++];
        }

        while (v20);
        v10 = v15;
      }

      if (!v10)
      {
        v64[v17] = v11;
        LODWORD(v17) = v17 + 1;
        goto LABEL_58;
      }

      v62 = v5;
      if (v10 == -1)
      {
        goto LABEL_23;
      }

      v26 = v4;
      v27 = v8;
      v28 = v6;
      v29 = a2;
      v30 = v10;
      v31 = v11;
      v32 = v27;
      result = sub_195251CF8(*(v9 + 8 * v10), v31, &v63, v27);
      if (result >= 1)
      {
        v33 = v63;
        v34 = &v64[v17];
        v35 = result + 1;
        v36 = 8 * result - 8;
        LODWORD(v17) = result + v17;
        do
        {
          *v34++ = v33 >> v36;
          --v35;
          v36 -= 8;
        }

        while (v35 > 1);
      }

      v10 = v30;
      a2 = v29;
      v6 = v28;
      v8 = v32;
      v4 = v26;
LABEL_32:
      v5 = v62;
LABEL_58:
      if (v17 >= 1)
      {
        v46 = v4 - v3;
        if (v4 < v3)
        {
          v46 = 0;
        }

        v47 = v17;
        v48 = v64;
        v49 = v46;
        while (v49)
        {
          v50 = *v48++;
          *v3++ = v50;
          --v49;
          if (!--v47)
          {
            LODWORD(v46) = v17;
            goto LABEL_66;
          }
        }

        *a2 = 15;
LABEL_69:
        if (v46 < v17)
        {
          v51 = &v64[v46];
          v52 = v17 - v46;
          do
          {
            v53 = *v51++;
            v54 = v2[1];
            v55 = *(v54 + 91);
            *(v54 + 91) = v55 + 1;
            *(v54 + v55 + 104) = v53;
            --v52;
          }

          while (v52);
        }

        goto LABEL_6;
      }

      LODWORD(v46) = 0;
LABEL_66:
      if (*a2 == 15)
      {
        goto LABEL_69;
      }

LABEL_6:
      if (v5 >= v7)
      {
        goto LABEL_76;
      }

      if (v3 >= v4)
      {
        *a2 = 15;
        goto LABEL_76;
      }

      v13 = *v5++;
      v11 = v13;
    }

    while ((v13 & 0xF800) != 0xD800);
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_73;
    }
  }

  *(v6 + 84) = v11;
LABEL_76:
  *(v9 + 160) = v10;
  v2[2] = v5;
  v2[4] = v3;
  return result;
}

uint64_t sub_195241218(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(a1 + 16);
  for (i = 8; i != 160; i += 8)
  {
    sub_19524F554(*(v7 + i), a2, a3, a4);
  }

  (a2[1])(*a2, 0);
  (a2[1])(*a2, 9);
  (a2[1])(*a2, 10);
  (a2[2])(*a2, 32, 127);
  v9 = a2[2];
  v10 = *a2;

  return v9(v10, 160, 255);
}

void UCNV_FROM_U_CALLBACK_STOP(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, _DWORD *a7)
{
  if (!a6)
  {
    if (a5 <= 8202)
    {
      if (a5 > 6067)
      {
        if ((a5 - 6155) < 5)
        {
          goto LABEL_17;
        }

        v7 = -6068;
      }

      else
      {
        if (a5 <= 4446)
        {
          if (a5 == 173 || a5 == 847 || a5 == 1564)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        v7 = -4447;
      }

      if ((a5 + v7) < 2)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if ((a5 - 8203) <= 0x23 && ((1 << (a5 - 11)) & 0xF8000001FLL) != 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (a5 != 12644 && (a5 & 0xFFFFFFF0) != 0x2060 && (a5 & 0xFFFFF000) != 0xE0000 && (a5 - 119155) >= 8 && (a5 & 0xFFFFFFFC) != 0x1BCA0 && (a5 - 65520) >= 9 && a5 != 65440 && a5 != 65279 && (a5 & 0xFFFFFFF0) != 0xFE00)
    {
      return;
    }

LABEL_17:
    *a7 = 0;
  }
}

_BYTE *UCNV_FROM_U_CALLBACK_SKIP(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, _DWORD *a7)
{
  if (a6 <= 2)
  {
    if (a6)
    {
LABEL_3:
      if (result && (a6 || *result != 105))
      {
        return result;
      }

LABEL_21:
      *a7 = 0;
      return result;
    }

    if (a5 <= 8202)
    {
      if (a5 > 6067)
      {
        if ((a5 - 6155) < 5)
        {
          goto LABEL_21;
        }

        v7 = -6068;
      }

      else
      {
        if (a5 <= 4446)
        {
          if (a5 == 173 || a5 == 847 || a5 == 1564)
          {
            goto LABEL_21;
          }

LABEL_22:
          if (a5 == 12644 || (a5 & 0xFFFFFFF0) == 0x2060 || (a5 & 0xFFFFF000) == 0xE0000 || (a5 - 119155) < 8 || (a5 & 0xFFFFFFFC) == 0x1BCA0 || (a5 - 65520) < 9 || a5 == 65440 || a5 == 65279 || (a5 & 0xFFFFFFF0) == 0xFE00)
          {
            goto LABEL_21;
          }

          goto LABEL_3;
        }

        v7 = -4447;
      }

      if ((a5 + v7) < 2)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if ((a5 - 8203) <= 0x23 && ((1 << (a5 - 11)) & 0xF8000001FLL) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  return result;
}

_BYTE *UCNV_FROM_U_CALLBACK_SUBSTITUTE(_BYTE *result, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7)
{
  if (a6 > 2)
  {
    return result;
  }

  if (!a6)
  {
    if (a5 <= 8202)
    {
      if (a5 > 6067)
      {
        if ((a5 - 6155) < 5)
        {
          goto LABEL_22;
        }

        v7 = -6068;
      }

      else
      {
        if (a5 <= 4446)
        {
          if (a5 == 173 || a5 == 847 || a5 == 1564)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v7 = -4447;
      }

      if ((a5 + v7) < 2)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if ((a5 - 8203) <= 0x23 && ((1 << (a5 - 11)) & 0xF8000001FLL) != 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (a5 != 12644 && (a5 & 0xFFFFFFF0) != 0x2060 && (a5 & 0xFFFFF000) != 0xE0000 && (a5 - 119155) >= 8 && (a5 & 0xFFFFFFFC) != 0x1BCA0 && (a5 - 65520) >= 9 && a5 != 65440 && a5 != 65279 && (a5 & 0xFFFFFFF0) != 0xFE00)
    {
      goto LABEL_3;
    }

LABEL_22:
    *a7 = 0;
    return result;
  }

LABEL_3:
  if (!result || !a6 && *result == 105)
  {
    *a7 = 0;
    return ucnv_cbFromUWriteSub(a2, 0, a7);
  }

  return result;
}

unsigned __int8 *UCNV_FROM_U_CALLBACK_ESCAPE(unsigned __int8 *result, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, int a6, int *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v33 = 0;
  v31 = 0;
  if (a6 <= 2)
  {
    v8 = a5;
    LODWORD(v9) = a4;
    v12 = result;
    if (a6)
    {
LABEL_3:
      memset(v36, 0, sizeof(v36));
      v32 = 0;
      v30 = 0;
      result = ucnv_setFromUCallBack(*(a2 + 8), UCNV_FROM_U_CALLBACK_SUBSTITUTE, 0, &v33, &v32, &v34);
      v13 = v34;
      if (v34 <= 0)
      {
        if (!v12)
        {
          if (v9 < 1)
          {
            goto LABEL_54;
          }

          v17 = 0;
          v9 = v9;
          do
          {
            *(v36 + 2 * v17) = 5570597;
            v18 = *a3++;
            v17 += uprv_itou(v36 + v17 + 2, 46 - v17, v18, 0x10u, 4) + 2;
            --v9;
          }

          while (v9);
LABEL_64:
          v35 = v36;
          *a7 = 0;
          ucnv_cbFromUWriteUChars(a2, &v35, v36 + 2 * v17, 0, a7);
          result = ucnv_setFromUCallBack(*(a2 + 8), v33, v32, &v31, &v30, &v34);
          v13 = v34;
          if (v34 < 1)
          {
            return result;
          }

          goto LABEL_65;
        }

        v14 = *v12;
        if (v14 <= 0x52)
        {
          switch(v14)
          {
            case 'C':
              LOWORD(v36[0]) = 92;
              if (v9 == 2)
              {
                WORD1(v36[0]) = 85;
                v23 = v8;
                v24 = 8;
              }

              else
              {
                WORD1(v36[0]) = 117;
                v23 = *a3;
                v24 = 4;
              }

              v17 = uprv_itou(v36 + 2, 46, v23, 0x10u, v24) + 2;
              goto LABEL_64;
            case 'D':
              LODWORD(v36[0]) = 2293798;
              if (v9 != 2)
              {
                v8 = *a3;
              }

              v28 = uprv_itou(v36 + 2, 46, v8, 0xAu, 0);
              v17 = v28 + 3;
              *(v36 + v28 + 2) = 59;
              goto LABEL_64;
            case 'J':
              if (v9 >= 1)
              {
                v15 = 0;
                v9 = v9;
                do
                {
                  *(v36 + 2 * v15) = 7667804;
                  v16 = *a3++;
                  v15 += uprv_itou(v36 + v15 + 2, 46 - v15, v16, 0x10u, 4) + 2;
                  v17 = v15;
                  --v9;
                }

                while (v9);
                goto LABEL_64;
              }

LABEL_54:
              v17 = 0;
              goto LABEL_64;
          }

          goto LABEL_50;
        }

        switch(v14)
        {
          case 'S':
            LOWORD(v36[0]) = 92;
            v25 = uprv_itou(v36 + 1, 47, v8, 0x10u, 0);
            v17 = v25 + 2;
            *(v36 + v25 + 1) = 32;
            goto LABEL_64;
          case 'U':
            LODWORD(v36[0]) = 5570683;
            WORD2(v36[0]) = 43;
            if (v9 != 2)
            {
              v8 = *a3;
            }

            v29 = uprv_itou(v36 + 3, 45, v8, 0x10u, 4);
            v17 = v29 + 4;
            v21 = v36 + 2 * v29;
            v22 = 125;
            break;
          case 'X':
            LODWORD(v36[0]) = 2293798;
            WORD2(v36[0]) = 120;
            if (v9 != 2)
            {
              v8 = *a3;
            }

            v20 = uprv_itou(v36 + 3, 45, v8, 0x10u, 0);
            v17 = v20 + 4;
            v21 = v36 + 2 * v20;
            v22 = 59;
            break;
          default:
LABEL_50:
            if (v9 < 1)
            {
              goto LABEL_54;
            }

            v26 = 0;
            v9 = v9;
            do
            {
              *(v36 + 2 * v26) = 5570597;
              v27 = *a3++;
              v26 += uprv_itou(v36 + v26 + 2, 46 - v26, v27, 0x10u, 4) + 2;
              v17 = v26;
              --v9;
            }

            while (v9);
            goto LABEL_64;
        }

        *(v21 + 3) = v22;
        goto LABEL_64;
      }

LABEL_65:
      *a7 = v13;
      return result;
    }

    v13 = 0;
    if (a5 <= 8202)
    {
      if (a5 > 6067)
      {
        if ((a5 - 6155) < 5)
        {
          goto LABEL_65;
        }

        v19 = -6068;
      }

      else
      {
        if (a5 <= 4446)
        {
          if (a5 == 173 || a5 == 847 || a5 == 1564)
          {
            goto LABEL_65;
          }

LABEL_37:
          v13 = 0;
          if (a5 == 12644)
          {
            goto LABEL_65;
          }

          if ((a5 & 0xFFFFFFF0) == 0x2060)
          {
            goto LABEL_65;
          }

          v13 = 0;
          if ((a5 & 0xFFFFF000) == 0xE0000 || (a5 - 119155) < 8 || (a5 & 0xFFFFFFFC) == 0x1BCA0 || (a5 - 65520) < 9 || a5 == 65440 || a5 == 65279 || (a5 & 0xFFFFFFF0) == 0xFE00)
          {
            goto LABEL_65;
          }

          goto LABEL_3;
        }

        v19 = -4447;
      }

      if ((a5 + v19) < 2)
      {
        goto LABEL_65;
      }

      goto LABEL_37;
    }

    if ((a5 - 8203) <= 0x23 && ((1 << (a5 - 11)) & 0xF8000001FLL) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_37;
  }

  return result;
}

_BYTE *UCNV_TO_U_CALLBACK_SKIP(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  if (a5 <= 2 && (!result || !a5 && *result == 105))
  {
    *a6 = 0;
  }

  return result;
}

_BYTE *UCNV_TO_U_CALLBACK_SUBSTITUTE(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  if (a5 <= 2 && (!result || !a5 && *result == 105))
  {
    *a6 = 0;
    return ucnv_cbToUWriteSub(a2, 0, a6);
  }

  return result;
}

unsigned __int8 *UCNV_TO_U_CALLBACK_ESCAPE(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned int a4, int a5, int *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a5 <= 2)
  {
    memset(v31, 0, sizeof(v31));
    if (result)
    {
      v9 = *result;
      switch(v9)
      {
        case 'X':
          if (a4 >= 1)
          {
            v21 = 0;
            v22 = a4;
            do
            {
              v23 = v31 + 2 * v21;
              *v23 = 2293798;
              v24 = v21 + 3;
              *(v23 + 2) = 120;
              v25 = *a3++;
              v26 = uprv_itou(v31 + v24, 45 - v21, v25, 0x10u, 0);
              v21 = v26 + v24 + 1;
              *(v31 + v26 + v24) = 59;
              v13 = v21;
              --v22;
            }

            while (v22);
            goto LABEL_27;
          }

          break;
        case 'D':
          if (a4 >= 1)
          {
            v16 = 0;
            v17 = a4;
            do
            {
              *(v31 + 2 * v16) = 2293798;
              v18 = v16 + 2;
              v19 = *a3++;
              v20 = uprv_itou(v31 + v18, 46 - v16, v19, 0xAu, 0);
              v16 = v20 + v18 + 1;
              *(v31 + v20 + v18) = 59;
              v13 = v16;
              --v17;
            }

            while (v17);
            goto LABEL_27;
          }

          break;
        case 'C':
          if (a4 >= 1)
          {
            v10 = 0;
            v11 = a4;
            do
            {
              *(v31 + 2 * v10) = 7864412;
              v12 = *a3++;
              v10 += uprv_itou(v31 + v10 + 2, 46 - v10, v12, 0x10u, 2) + 2;
              v13 = v10;
              --v11;
            }

            while (v11);
            goto LABEL_27;
          }

          break;
        default:
          if (a4 >= 1)
          {
            v27 = 0;
            v28 = a4;
            v29 = v31 + 2;
            do
            {
              *(v29 - 1) = 5767205;
              v30 = *a3++;
              uprv_itou(v29, v27 + 46, v30, 0x10u, 2);
              v27 -= 4;
              v29 += 4;
              --v28;
            }

            while (v28);
            v13 = -v27;
            goto LABEL_27;
          }

          break;
      }
    }

    else if (a4 >= 1)
    {
      LODWORD(v13) = 0;
      v14 = a4;
      do
      {
        *(v31 + 2 * v13) = 5767205;
        v15 = *a3++;
        v13 = uprv_itou(v31 + v13 + 2, 46 - v13, v15, 0x10u, 2) + v13 + 2;
        --v14;
      }

      while (v14);
      goto LABEL_27;
    }

    v13 = 0;
LABEL_27:
    *a6 = 0;
    return ucnv_cbToUWriteUChars(a2, v31, v13, 0, a6);
  }

  return result;
}

uint64_t sub_195241EB0(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, int a5, unint64_t *a6, unint64_t a7, void *a8, int a9, unsigned __int8 a10, _DWORD *a11)
{
  v15 = a3;
  v29 = 0;
  v18 = *(*(a1 + 48) + 252);
  if (v18 == 12)
  {
    v19 = *(a1 + 76);
  }

  else if (v18 == 219)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  v20 = (a1 + 65);
  v21 = *a4;
  v22 = sub_195242054(a2, v19, a1 + 65, a3, *a4, a5 - *a4, &v29, a10);
  if (v22 < 1)
  {
    if ((v22 & 0x80000000) == 0)
    {
      return 0;
    }

    *(a1 + 283) = v15;
    if (v15 < 1)
    {
      v15 = 0;
    }

    else
    {
      v24 = v15;
      do
      {
        v20[185] = *v20;
        ++v20;
        --v24;
      }

      while (v24);
      v21 = *a4;
    }

    v25 = -v22;
    if (v15 < v25)
    {
      v26 = (a1 + v15 + 250);
      v27 = v25 - v15;
      do
      {
        v28 = *v21++;
        *v26++ = v28;
        --v27;
      }

      while (v27);
    }

    *a4 = v21;
    *(a1 + 282) = -v22;
  }

  else
  {
    *a4 = &v21[v22 - v15];
    if (v29 >> 20 > 2)
    {
      sub_195240210(a1, (a2 + *(a2 + 12) + 2 * (v29 & 0x3FFFF)), (v29 >> 18) - 12, a6, a7, a8, a9, a11);
    }

    else
    {
      sub_1952402B8(a1, v29 - 2031616, a6, a7, a8, a9, a11);
    }
  }

  return 1;
}

uint64_t sub_195242054(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int *a7, unsigned __int8 a8)
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (*(result + 8) < 1)
  {
    return 0;
  }

  v9 = *(result + 4);
  if (!a2)
  {
    if (a4 <= 1)
    {
      if (a6 >= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = a6;
      }

      if (a4 == 1)
      {
        a6 = 0;
      }

      else
      {
        a6 = v11;
      }

      v10 = 1;
      goto LABEL_15;
    }

    return 0;
  }

  v10 = a8;
LABEL_15:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  result = 0;
  v16 = v8 + v9;
  while (1)
  {
    v17 = (v16 + 4 * v15);
    v20 = *v17;
    v18 = v17 + 1;
    v19 = v20;
    v21 = v20 & 0xFFFFFF;
    if ((v20 & 0xFFFFFF) != 0)
    {
      if ((a2 < 0) | (a2 == 0) ^ (v14 + v13 != 1))
      {
        v12 = v21;
        result = (v14 + v13);
      }

      else
      {
        result = result;
      }
    }

    if (v13 >= a4)
    {
      break;
    }

    v22 = v13++;
    v23 = a3;
LABEL_24:
    v24 = *(v23 + v22);
    v25 = v19 >> 24;
    v26 = HIBYTE(v18[(v19 >> 24) - 1]);
    if (v24 < HIBYTE(*v18) || v26 < v24)
    {
      goto LABEL_55;
    }

    v28 = HIBYTE(*v18);
    if (v26 - v28 + 1 == v25)
    {
      v29 = v18[v24 - v28];
    }

    else
    {
      v30 = v19 >> 25;
      if (v30)
      {
        v30 = 0;
        v31 = v24 << 24;
        v32 = v25;
        while (v32 > 4)
        {
          if (((v24 << 24) | 0xFFFFFFu) < v18[(v30 + v25) / 2])
          {
            LODWORD(v25) = (v30 + v25) / 2;
          }

          else
          {
            v30 = (v30 + v25) / 2;
          }

          v32 = v25 - v30;
          if (v25 - v30 <= 1)
          {
            goto LABEL_46;
          }
        }

        if (v31 > v18[v30])
        {
          v33 = v30 + 1;
          if (v33 < v25 && v31 <= v18[v33] || (v33 = v30 + 2, v30 + 2 < v25) && v31 <= v18[v33])
          {
            v30 = v33;
          }

          else
          {
            v30 += 3;
          }
        }
      }

LABEL_46:
      if (v30 >= v25)
      {
        goto LABEL_55;
      }

      v29 = v18[v30];
      if (v24 != HIBYTE(v29))
      {
        goto LABEL_55;
      }
    }

    v15 = v29 & 0xFFFFFF;
    if (!v15)
    {
      goto LABEL_55;
    }

    if (v15 >= 0x1F0000)
    {
      v34 = v14 + v13;
      if ((a2 < 0) | (a2 == 0) ^ (v34 != 1))
      {
        v12 = v15;
        result = v34;
      }

      else
      {
        result = result;
      }

      goto LABEL_55;
    }
  }

  if (v14 < a6)
  {
    v22 = v14++;
    v23 = a5;
    goto LABEL_24;
  }

  if (!v10 && v14 + v13 <= 31)
  {
    return -(v14 + v13);
  }

LABEL_55:
  if (result)
  {
    *a7 = v12 & 0xFF7FFFFF;
  }

  return result;
}

uint64_t sub_19524227C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (a3 < 1)
  {
    return 0xFFFFLL;
  }

  v4 = sub_195242054(a1, -1, a2, a3, 0, 0, &v7, 1u);
  if (v7 < 0x300000 && v4 == a3)
  {
    return v7 - 2031616;
  }

  else
  {
    return 65534;
  }
}

uint64_t sub_1952422F0(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v29 = 0;
  v8 = *(a1 + 48);
  v9 = *(v8 + 252);
  if (v9 == 12)
  {
    v10 = *(a1 + 76);
  }

  else if (v9 == 219)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v11 = a1 + 250;
  v12 = *(a1 + 282);
  v13 = *(a2 + 16);
  result = sub_195242054(*(v8 + 288), v10, a1 + 250, v12, v13, *(a2 + 24) - v13, &v29, *(a2 + 2));
  if (result < 1)
  {
    if ((result & 0x80000000) != 0)
    {
      v25 = -result;
      if (v12 < v25)
      {
        v26 = (a1 + v12 + 250);
        v27 = v25 - v12;
        do
        {
          v28 = *v13++;
          *v26++ = v28;
          --v27;
        }

        while (v27);
      }

      *(a2 + 16) = v13;
      *(a1 + 282) = -result;
    }

    else
    {
      result = memcpy((a1 + 65), (a1 + 250), *(a1 + 283));
      v17 = *(a1 + 283);
      *(a1 + 64) = *(a1 + 283);
      v18 = *(a1 + 282);
      v19 = v18 - v17;
      if (v18 - v17 >= 1)
      {
        result = memmove((a1 + 250), (v11 + v17), (v18 - v17));
      }

      *(a1 + 282) = -v19;
      *a4 = 10;
    }
  }

  else
  {
    if (result >= v12)
    {
      LOBYTE(v16) = 0;
      *(a2 + 16) = &v13[result - v12];
    }

    else
    {
      v15 = v12 - result;
      memmove((a1 + 250), (v11 + result), v12 - result);
      v16 = -v15;
    }

    *(a1 + 282) = v16;
    if (v29 >> 20 > 2)
    {
      v22 = (*(v8 + 288) + *(*(v8 + 288) + 12) + 2 * (v29 & 0x3FFFF));
      v23 = (v29 >> 18) - 12;
      v24 = *(a2 + 40);

      return sub_195240210(a1, v22, v23, (a2 + 32), v24, (a2 + 48), a3, a4);
    }

    else
    {
      v20 = v29 - 2031616;
      v21 = *(a2 + 40);

      return sub_1952402B8(a1, v20, (a2 + 32), v21, (a2 + 48), a3, a4);
    }
  }

  return result;
}

uint64_t sub_195242514(uint64_t a1, unint64_t a2, uint64_t a3, __int16 **a4, uint64_t a5, void *a6, unint64_t a7, void *a8, int a9, char a10, _DWORD *a11)
{
  v15 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v18 = *a4;
  v19 = sub_195242768(a2, a3, 0, 0, *a4, (a5 - *a4) >> 1, &v32, *(a1 + 63), a10);
  if (v19 < 2)
  {
    if (v19 < 0)
    {
      *(a1 + 208) = v15;
      if (v19 <= 0xFFFFFFFD)
      {
        v29 = (a1 + 212);
        v30 = (-2 - v19);
        do
        {
          v31 = *v18++;
          *v29++ = v31;
          --v30;
        }

        while (v30);
      }

      *a4 = v18;
      *(a1 + 281) = -2 - v19;
      return 1;
    }

    if (v19 == 1)
    {
      result = 0;
      *(a1 + 95) = 1;
      return result;
    }

    return 0;
  }

  v20 = v32;
  if ((v32 & 0x1F000000) == 0x1000000 && *(*(a1 + 48) + 252) == 219)
  {
    return 0;
  }

  *a4 = &v18[v19 - 2];
  memset(v33, 0, sizeof(v33));
  v21 = HIBYTE(v20) & 0x1F;
  if (v21 > 3)
  {
    v22 = (a2 + *(a2 + 32) + (*&v20 & 0xFFFFFFLL));
  }

  else
  {
    v22 = v33 + 1;
    v23 = v33 + 1;
    if (v21 != 1)
    {
      v24 = v33 + 1;
      if (v21 != 2)
      {
        if (v21 != 3)
        {
          goto LABEL_16;
        }

        v24 = v33 + 2;
        BYTE1(v33[0]) = BYTE2(v20);
      }

      *v24 = BYTE1(v20);
      v23 = v24 + 1;
    }

    *v23 = v20;
  }

LABEL_16:
  v26 = *(a1 + 80);
  if (v26)
  {
    if (v21 == 1 && v26 > 1)
    {
      v27 = 15;
      v28 = 1;
LABEL_27:
      *(a1 + 80) = v28;
      LOBYTE(v33[0]) = v27;
      if (v22 != v33 + 1)
      {
        memcpy(v33 + 1, v22, v21);
      }

      LODWORD(v21) = v21 + 1;
      v22 = v33;
      goto LABEL_30;
    }

    if (v21 >= 2 && v26 == 1)
    {
      v27 = 14;
      v28 = 2;
      goto LABEL_27;
    }
  }

LABEL_30:
  sub_195240168(a1, v22, v21, a6, a7, a8, a9, a11);
  return 1;
}

unint64_t sub_195242768(unint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, _DWORD *a7, int a8, char a9)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (a2 >> 10 >= *(result + 44))
  {
    return 0;
  }

  v10 = *(result + *(result + 60) + 4 * *(result + *(result + 52) + 2 * ((a2 & 0xF) + 4 * *(result + *(result + 40) + 2 * (((a2 >> 4) & 0x3F) + *(result + *(result + 40) + 2 * (a2 >> 10)))))));
  if (!v10)
  {
    return 0;
  }

  if (v10 >> 16 <= 0x1E)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    result = 0;
    v14 = v9 + *(v9 + 20);
    v15 = v9 + *(v9 + 24);
    v16 = a2 - 57344;
    v17 = a2 - 983040;
    while (1)
    {
      v18 = (v15 + 4 * v10);
      v21 = *v18;
      v20 = v18 + 1;
      v19 = v21;
      if (v21)
      {
        v22 = (v19 & 0xC0000000) == 0 && a8 == 0;
        v23 = v22 && v16 >> 8 >= 0x19;
        v24 = v23 && v17 >= 0x20000;
        v25 = !v24;
        if ((v19 & 0x20000000) == 0)
        {
          if (v25)
          {
            v11 = v19;
            result = (v13 + v12 + 2);
          }

          else
          {
            result = result;
          }
        }
      }

      v26 = (v14 + 2 * v10);
      v29 = *v26;
      v27 = v26 + 1;
      v28 = v29;
      if (v12 >= a4)
      {
        if (v13 >= a6)
        {
          if (!a9 && v13 + v12 <= 19)
          {
            return (-2 - (v13 + v12));
          }

LABEL_82:
          v10 = v11;
          if (!result)
          {
            return result;
          }

LABEL_83:
          if (v10 == 2147483649)
          {
            return 1;
          }

          *a7 = v10;
          return result;
        }

        v30 = v13++;
        v31 = a5;
      }

      else
      {
        v30 = v12++;
        v31 = a3;
      }

      v32 = *(v31 + 2 * v30);
      if (v28 >= 2)
      {
        v33 = 0;
        v34 = v28;
        while (v34 > 4)
        {
          if (v27[(v33 + v28) / 2] > v32)
          {
            v28 = (v33 + v28) / 2;
          }

          else
          {
            v33 = (v33 + v28) / 2;
          }

          v34 = v28 - v33;
          if (v28 - v33 <= 1)
          {
            goto LABEL_43;
          }
        }

        if (v27[v33] < v32)
        {
          v35 = v33 + 1;
          if (v35 < v28 && v27[v35] >= v32 || (v35 = v33 + 2, v33 + 2 < v28) && v27[v35] >= v32)
          {
            v33 = v35;
          }

          else
          {
            v33 += 3;
          }
        }
      }

      else
      {
        v33 = 0;
      }

LABEL_43:
      if (v33 >= v28 || v33 < 0 || v27[v33] != v32)
      {
        goto LABEL_82;
      }

      v10 = v20[v33];
      if (HIBYTE(v20[v33]))
      {
        v39 = (v10 & 0xC0000000) != 0 || a8 != 0 || v16 >> 8 < 0x19 || v17 < 0x20000;
        if ((v10 & 0x20000000) == 0 && v39)
        {
          result = (v12 + v13 + 2);
          v11 = v20[v33];
        }

        goto LABEL_82;
      }
    }
  }

  result = 0;
  v43 = (v10 & 0xC0000000) != 0 || a8 != 0 || (a2 - 57344) >> 8 < 0x19 || a2 - 983040 < 0x20000;
  if ((v10 & 0x20000000) == 0 && v43)
  {
    result = 2;
    goto LABEL_83;
  }

  return result;
}

uint64_t sub_1952429FC(unint64_t a1, unsigned int a2, unsigned int *a3, int a4)
{
  v8 = 0;
  if (sub_195242768(a1, a2, 0, 0, 0, 0, &v8, a4, 1) < 2)
  {
    return 0;
  }

  v5 = v8;
  v6 = HIBYTE(v8) & 0x1F;
  if (v6 > 3)
  {
    return 0;
  }

  *a3 = v8 & 0xFFFFFF;
  if (v5 < 0)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

unint64_t sub_195242A7C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v8 = *(*(a1 + 48) + 288);
  v9 = *(a1 + 208);
  v10 = (a1 + 212);
  v11 = *(a1 + 281);
  v12 = *(a2 + 16);
  result = sub_195242768(v8, v9, a1 + 212, v11, v12, (*(a2 + 24) - v12) >> 1, &v30, *(a1 + 63), *(a2 + 2));
  v14 = result - 2;
  if (result >= 2)
  {
    v15 = v14 - v11;
    if (v14 >= v11)
    {
      LOBYTE(v17) = 0;
      *(a2 + 16) = &v12[v15];
    }

    else
    {
      v16 = v11 - v14;
      u_memmove(v10, &v10[v14], v11 - v14);
      v17 = -v16;
      v8 = *(*(a1 + 48) + 288);
    }

    *(a1 + 281) = v17;
    *(a1 + 208) = -1;
    v18 = v30;
    v19 = *(a2 + 40);
    memset(v31, 0, sizeof(v31));
    v20 = (v30 >> 24) & 0x1F;
    if (v20 > 3)
    {
      v21 = (v8 + (v30 & 0xFFFFFF) + *(v8 + 32));
    }

    else
    {
      v21 = v31 + 1;
      v22 = v31 + 1;
      if (v20 != 1)
      {
        v23 = v31 + 1;
        if (v20 != 2)
        {
          if (v20 != 3)
          {
            goto LABEL_17;
          }

          v23 = v31 + 2;
          BYTE1(v31[0]) = BYTE2(v30);
        }

        *v23 = BYTE1(v30);
        v22 = v23 + 1;
      }

      *v22 = v18;
    }

LABEL_17:
    v24 = *(a1 + 80);
    if (v24)
    {
      if (v20 == 1 && v24 > 1)
      {
        v25 = 15;
        v26 = 1;
LABEL_28:
        *(a1 + 80) = v26;
        LOBYTE(v31[0]) = v25;
        if (v21 != v31 + 1)
        {
          memcpy(v31 + 1, v21, v20);
        }

        LODWORD(v20) = v20 + 1;
        v21 = v31;
        return sub_195240168(a1, v21, v20, (a2 + 32), v19, (a2 + 48), a3, a4);
      }

      if (v20 >= 2 && v24 == 1)
      {
        v25 = 14;
        v26 = 2;
        goto LABEL_28;
      }
    }

    return sub_195240168(a1, v21, v20, (a2 + 32), v19, (a2 + 48), a3, a4);
  }

  if ((result & 0x80000000) != 0)
  {
    if (-2 - result > v11)
    {
      v27 = (a1 + 2 * v11 + 212);
      v28 = -2 - (v11 + result);
      do
      {
        v29 = *v12++;
        *v27++ = v29;
        --v28;
      }

      while (v28);
    }

    *(a2 + 16) = v12;
    *(a1 + 281) = -2 - result;
  }

  else
  {
    if (result == 1)
    {
      *(a1 + 95) = 1;
    }

    *(a1 + 84) = v9;
    *(a1 + 208) = -1;
    *(a1 + 281) = -v11;
    *a4 = 10;
  }

  return result;
}

uint64_t sub_195242D04(uint64_t result, uint64_t *a2, uint64_t a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(result + 288);
  if (v4)
  {
    v8 = *(v4 + 44);
    if (a4 == 2)
    {
      v9 = 3;
    }

    else
    {
      v10 = *(result + 252) != 219 && a4 == 0;
      v9 = v10 ? 1 : 2;
    }

    if (v8 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = v4 + *(v4 + 40);
      v14 = v4 + *(v4 + 60);
      v27 = *(v4 + 52);
      memset(v29, 0, sizeof(v29));
      v24 = v13;
      v25 = v8;
      while (1)
      {
        v26 = v11;
        v15 = *(v13 + 2 * v11);
        if (v8 < v15)
        {
          break;
        }

        v12 = (v12 + 1024);
LABEL_58:
        LODWORD(v8) = v25;
        v11 = v26 + 1;
        v13 = v24;
        if (v26 + 1 == v25)
        {
          return result;
        }
      }

      v16 = 0;
      v28 = v13 + 2 * v15;
      while (!*(v28 + 2 * v16))
      {
        v12 = (v12 + 16);
LABEL_55:
        if (++v16 == 64)
        {
          goto LABEL_58;
        }
      }

      v17 = v27 + 8 * *(v28 + 2 * v16);
      while (1)
      {
        v18 = *(v14 + 4 * *(v4 + v17));
        if (v18)
        {
          if (!HIBYTE(v18))
          {
            if (WORD1(v12))
            {
              v20 = (v12 >> 10) - 10304;
              *&v29[2] = v12 & 0x3FF | 0xDC00;
              v19 = 2;
            }

            else
            {
              v19 = 1;
              LOWORD(v20) = v12;
            }

            *v29 = v20;
            result = sub_195242FD0(v4, a2, a3, v9, v12, v29, v19, v18);
            goto LABEL_25;
          }

          if (a3)
          {
            if ((v18 & 0x20000000) != 0)
            {
              goto LABEL_25;
            }
          }

          else if ((v18 & 0xA0000000) != 0x80000000)
          {
            goto LABEL_25;
          }

          if ((HIBYTE(v18) & 0x1F) >= v9)
          {
            if (a4 > 3)
            {
              if (a4 == 4)
              {
                v23 = (v18 & 0x1F000000) != 0x2000000 || ((v18 + 24159) & 0xFFFEu) > 0x5D5D;
                if (v23 || ((v18 + 95) & 0xFEu) >= 0x5E)
                {
                  goto LABEL_25;
                }
              }

              else if (a4 == 5)
              {
                v22 = (v18 & 0x1F000000) != 0x2000000 || ((v18 + 24159) & 0xFFFEu) > 0x5C5D;
                if (v22 || ((v18 + 95) & 0xFEu) > 0x5D)
                {
                  goto LABEL_25;
                }
              }
            }

            else if (a4 == 2)
            {
              if ((v18 & 0x1F000000) != 0x3000000 || (v18 & 0xFF0000) >= 0x830000)
              {
                goto LABEL_25;
              }
            }

            else if (a4 == 3 && ((v18 & 0x1F000000) != 0x2000000 || (v18 & 0xFFFFFF) - 33088 >= 0x6EBD))
            {
              goto LABEL_25;
            }

            result = (a2[1])(*a2, v12);
          }
        }

LABEL_25:
        v12 = (v12 + 1);
        v17 += 2;
        if ((v12 & 0xF) == 0)
        {
          goto LABEL_55;
        }
      }
    }
  }

  return result;
}

uint64_t sub_195242FD0(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a7;
  v15 = result;
  v16 = *(result + 20);
  v17 = *(result + 24);
  v18 = *(result + v16 + 2 * a8);
  v19 = *(result + v17 + 4 * a8);
  if (a3)
  {
    if ((v19 & 0x20000000) != 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v19 & 0xA0000000) != 0x80000000)
  {
    goto LABEL_13;
  }

  if ((HIBYTE(v19) & 0x1F) >= a4)
  {
    v26 = *(result + 20);
    if (a5 < 0x10000)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = *a2;
    if (v20 == a7)
    {
      result = (a2[1])(v21, a5);
    }

    else
    {
      result = (a2[3])(v21, a6, a7);
    }

    v16 = v26;
  }

LABEL_13:
  if (v18)
  {
    v22 = a8;
    v23 = v17 + 4 * a8 + 4;
    v24 = v16 + 2 * v22 + 2;
    do
    {
      *(a6 + 2 * v9) = *(v15 + v24);
      v25 = *(v15 + v23);
      if (v25)
      {
        if (HIBYTE(v25))
        {
          if (a3)
          {
            if ((v25 & 0x20000000) == 0)
            {
              goto LABEL_22;
            }
          }

          else if ((v25 & 0xA0000000) == 0x80000000)
          {
LABEL_22:
            if ((HIBYTE(v25) & 0x1F) >= a4)
            {
              result = (a2[3])(*a2, a6, (v9 + 1));
            }
          }
        }

        else
        {
          result = sub_195242FD0(v15, a2, a3, a4, a5, a6, (v9 + 1), v25);
        }
      }

      v24 += 2;
      v23 += 4;
      --v18;
    }

    while (v18);
  }

  return result;
}

_BYTE *ucnv_io_stripASCIIForCompare(_BYTE *result, _BYTE *a2)
{
  v2 = *a2;
  v3 = result;
  if (!*a2)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v3 = result;
  do
  {
    v5 = v4 == 0;
    ++a2;
    while (1)
    {
      if ((v2 & 0x80) != 0 || (v6 = byte_195479DCC[v2]) == 0)
      {
        v2 = *a2;
        goto LABEL_12;
      }

      if (v6 != 1)
      {
        break;
      }

      if (!v5)
      {
        v4 = 1;
        goto LABEL_19;
      }

      if (*a2 < 0 || byte_195479DCC[*a2] - 1 > 1)
      {
        v4 = 0;
        goto LABEL_19;
      }

      v2 = *a2;
LABEL_12:
      ++a2;
      v5 = 1;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    if (v6 == 2)
    {
      v4 = 1;
    }

    else
    {
      LOBYTE(v2) = byte_195479DCC[v2];
      v4 = 0;
    }

LABEL_19:
    *v3++ = v2;
    v2 = *a2;
  }

  while (*a2);
LABEL_20:
  *v3 = 0;
  return result;
}

_BYTE *ucnv_io_stripEBCDICForCompare(_BYTE *result, _BYTE *a2)
{
  LOBYTE(v2) = *a2;
  v3 = result;
  if (!*a2)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v3 = result;
  do
  {
    v5 = v4 == 0;
    ++a2;
    while (1)
    {
      if ((v2 & 0x80) == 0 || (v6 = byte_195479E4C[v2 & 0x7F]) == 0)
      {
        v2 = *a2;
        goto LABEL_12;
      }

      if (v6 != 1)
      {
        break;
      }

      if (!v5)
      {
        v4 = 1;
        goto LABEL_19;
      }

      v7 = *a2;
      if ((v7 & 0x80000000) == 0 || byte_195479E4C[v7 & 0x7F] - 1 > 1)
      {
        v4 = 0;
        goto LABEL_19;
      }

      v2 = *a2;
LABEL_12:
      ++a2;
      v5 = 1;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    if (v6 == 2)
    {
      v4 = 1;
    }

    else
    {
      LOBYTE(v2) = byte_195479E4C[v2 & 0x7F];
      v4 = 0;
    }

LABEL_19:
    *v3++ = v2;
    LOBYTE(v2) = *a2;
  }

  while (*a2);
LABEL_20:
  *v3 = 0;
  return result;
}

uint64_t ucnv_compareNames(char *a1, char *a2)
{
  v2 = 0;
  v3 = 0;
  while (2)
  {
    v5 = *a1++;
    v4 = v5;
    if (v5)
    {
      v6 = v2 == 0;
      while (1)
      {
        if ((v4 & 0x80) != 0 || (v7 = byte_195479DCC[v4]) == 0)
        {
          v4 = *a1;
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 == 2)
            {
              v2 = 1;
            }

            else
            {
              v4 = byte_195479DCC[v4];
              v2 = 0;
            }

            break;
          }

          if (!v6)
          {
            v2 = 1;
            break;
          }

          if (*a1 < 0 || byte_195479DCC[*a1] - 1 > 1)
          {
LABEL_13:
            v2 = 0;
            break;
          }

          v4 = *a1;
        }

        ++a1;
        v6 = 1;
        if (!v4)
        {
          goto LABEL_13;
        }
      }
    }

    v9 = *a2++;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_34;
    }

    v10 = v3 == 0;
    while (1)
    {
      if ((v8 & 0x80) != 0 || (v11 = byte_195479DCC[v8]) == 0)
      {
        v8 = *a2;
        goto LABEL_28;
      }

      if (v11 != 1)
      {
        break;
      }

      if (!v10)
      {
        v3 = 1;
        goto LABEL_34;
      }

      if (*a2 < 0 || byte_195479DCC[*a2] - 1 > 1)
      {
LABEL_29:
        v3 = 0;
        goto LABEL_34;
      }

      v8 = *a2;
LABEL_28:
      ++a2;
      v10 = 1;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    if (v11 == 2)
    {
      v3 = 1;
    }

    else
    {
      v8 = byte_195479DCC[v8];
      v3 = 0;
    }

LABEL_34:
    if (v8 | v4)
    {
      v12 = (v4 - v8);
      if (v12)
      {
        return v12;
      }

      continue;
    }

    return 0;
  }
}

uint64_t ucnv_io_getConverterName(char *a1, _BYTE *a2, UErrorCode *a3)
{
  v3 = a3;
  v5 = 0;
  v29 = *MEMORY[0x1E69E9840];
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (v5)
    {
      if (*a1 != 120 || a1[1] != 45)
      {
        return 0;
      }

      a1 += 2;
    }

    if (*v3 > 0)
    {
      return 0;
    }

    if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
    {
      v8 = dword_1EAEC9954;
      if (dword_1EAEC9954 >= 1)
      {
        result = 0;
        goto LABEL_38;
      }
    }

    else
    {
      sub_195244FEC(v3);
      dword_1EAEC9954 = *v3;
      icu::umtx_initImplPostInit(&dword_1EAEC9950);
    }

    if (*v3 > 0)
    {
      return 0;
    }

    if (!a1)
    {
      result = 0;
      v8 = 1;
LABEL_38:
      *v3 = v8;
      return result;
    }

    if (!*a1)
    {
      return 0;
    }

    v9 = xmmword_1EAEC9910;
    v10 = *xmmword_1EAEC9910;
    memset(v28, 0, 60);
    v11 = a1;
    v27 = v7;
    if (!v10)
    {
      break;
    }

    if (strlen(a1) < 0x3C)
    {
      v11 = v28;
      ucnv_io_stripASCIIForCompare(v28, a1);
      break;
    }

    *v3 = U_BUFFER_OVERFLOW_ERROR;
LABEL_26:
    v3 = a3;
LABEL_34:
    v5 = 1;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = 0;
  v13 = DWORD1(xmmword_1EAEC9930);
  v14 = DWORD1(xmmword_1EAEC9930) >> 1;
  v15 = xmmword_1EAEC98F0;
  v16 = *(&xmmword_1EAEC9910 + 1);
  v17 = qword_1EAEC9920;
  while (1)
  {
    v18 = *(v15 + 2 * v14);
    v19 = v10 ? strcmp(v11, (v17 + 2 * v18)) : ucnv_compareNames(v11, (v16 + 2 * v18));
    v20 = v14;
    if ((v19 & 0x80000000) == 0)
    {
      v12 = v14;
      v20 = v13;
      if (!v19)
      {
        break;
      }
    }

    v21 = v14 == (v20 + v12) >> 1;
    v14 = (v20 + v12) >> 1;
    v13 = v20;
    if (v21)
    {
      goto LABEL_26;
    }
  }

  v22 = *(&xmmword_1EAEC98F0 + 1);
  v23 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v14);
  v3 = a3;
  if (v23 < 0)
  {
    *a3 = U_AMBIGUOUS_ALIAS_WARNING;
  }

  if (a2)
  {
    v23 = (v23 >> 14) & 1;
    if (!*(v9 + 2))
    {
      LOBYTE(v23) = 1;
    }

    *a2 = v23;
    LOWORD(v23) = *(v22 + 2 * v14);
  }

  if (dword_1EAEC9928 <= (v23 & 0xFFFu))
  {
    goto LABEL_34;
  }

  return v16 + 2 * *(xmmword_1EAEC98E0 + 2 * (v23 & 0xFFF));
}

void *ucnv_openStandardNames(char *a1, unsigned __int8 *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v8 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_195244FEC(a3);
    dword_1EAEC9954 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a3 <= 0)
  {
    if (!a1)
    {
      v3 = 0;
      v8 = 1;
      goto LABEL_9;
    }

    if (*a1)
    {
      v9 = sub_1952437C8(a1, a2, a3);
      if (v9 < HIDWORD(xmmword_1EAEC9930))
      {
        v10 = v9;
        v11 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
        v3 = v11;
        if (v11)
        {
          v12 = *&off_1F09342F8;
          *v11 = xmmword_1F09342E8;
          *(v11 + 1) = v12;
          *(v11 + 2) = xmmword_1F0934308;
          v11[6] = off_1F0934318;
          v13 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          if (v13)
          {
            *v13 = v10;
            v13[1] = 0;
            v3[1] = v13;
            return v3;
          }

          *a3 = U_MEMORY_ALLOCATION_ERROR;
          free(v3);
          return 0;
        }

        v8 = 7;
LABEL_9:
        *a3 = v8;
        return v3;
      }
    }
  }

  return 0;
}

uint64_t sub_1952437C8(char *a1, unsigned __int8 *a2, int *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = sub_1952452C8(a2);
  v6 = *xmmword_1EAEC9910;
  memset(v38, 0, 60);
  v7 = a1;
  if (v6)
  {
    if (strlen(a1) >= 0x3C)
    {
      v8 = 0;
      v9 = 15;
      v10 = -1;
LABEL_17:
      *a3 = v9;
      goto LABEL_18;
    }

    v7 = v38;
    ucnv_io_stripASCIIForCompare(v38, a1);
  }

  v36 = a3;
  v11 = 0;
  v12 = DWORD1(xmmword_1EAEC9930);
  v13 = DWORD1(xmmword_1EAEC9930) >> 1;
  v14 = xmmword_1EAEC98F0;
  v16 = *(&xmmword_1EAEC9910 + 1);
  v15 = qword_1EAEC9920;
  while (1)
  {
    v17 = *(v14 + 2 * v13);
    v18 = v6 ? strcmp(v7, (v15 + 2 * v17)) : ucnv_compareNames(v7, (v16 + 2 * v17));
    v19 = v13;
    if ((v18 & 0x80000000) == 0)
    {
      v11 = v13;
      v19 = v12;
      if (!v18)
      {
        break;
      }
    }

    v20 = v13 == (v19 + v11) >> 1;
    v13 = (v19 + v11) >> 1;
    v12 = v19;
    if (v20)
    {
      v8 = 0;
      v10 = -1;
      goto LABEL_18;
    }
  }

  v10 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v13) & 0xFFF;
  if ((*(*(&xmmword_1EAEC98F0 + 1) + 2 * v13) & 0x8000) != 0)
  {
    v9 = -122;
    v8 = 1;
    a3 = v36;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_18:
  if (v5 >= dword_1EAEC992C - 1 || v10 >= dword_1EAEC9928)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = qword_1EAEC9900;
  v35 = dword_1EAEC9928 * v5;
  v22 = *(qword_1EAEC9900 + 2 * (dword_1EAEC9928 * v5 + v10));
  if (v22)
  {
    if (*(qword_1EAEC9908 + 2 * v22 + 2))
    {
      LOBYTE(v8) = 0;
      result = v22;
    }

    else
    {
      result = 0;
    }

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v8)
  {
    return 0;
  }

  v24 = DWORD2(xmmword_1EAEC9930);
  if (!DWORD2(xmmword_1EAEC9930))
  {
    return 0;
  }

  v34 = dword_1EAEC9928;
  v25 = 0;
  v26 = *(&xmmword_1EAEC9910 + 1);
  v37 = qword_1EAEC9908;
  v33 = qword_1EAEC9908 + 2;
  while (1)
  {
    if (*(v21 + 2 * v25))
    {
      v27 = (v37 + 2 * *(v21 + 2 * v25));
      v28 = *v27;
      if (*v27)
      {
        v29 = 1;
        v30 = *v27;
        v31 = 1;
        do
        {
          if (v27[v29] && !ucnv_compareNames(a1, (v26 + 2 * v27[v29])))
          {
            break;
          }

          v31 = v29++ < v28;
          --v30;
        }

        while (v30);
        if (v31)
        {
          v32 = v25 % v34 + v35;
          result = *(v21 + 2 * v32);
          if (*(v21 + 2 * v32))
          {
            if (*(v33 + 2 * result))
            {
              break;
            }
          }
        }
      }
    }

    if (++v25 == v24)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ucnv_getStandard(unsigned int a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v5 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      result = 0;
LABEL_8:
      *a2 = v5;
      return result;
    }
  }

  else
  {
    sub_195244FEC(a2);
    dword_1EAEC9954 = *a2;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (dword_1EAEC992C - 1 <= a1)
  {
    result = 0;
    v5 = 8;
    goto LABEL_8;
  }

  return *(&xmmword_1EAEC9910 + 1) + 2 * *(*(&xmmword_1EAEC98E0 + 1) + 2 * a1);
}

uint64_t ucnv_getStandardName(char *a1, unsigned __int8 *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v7 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      result = 0;
LABEL_8:
      *a3 = v7;
      return result;
    }
  }

  else
  {
    sub_195244FEC(a3);
    dword_1EAEC9954 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a3 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    result = 0;
    v7 = 1;
    goto LABEL_8;
  }

  if (*a1)
  {
    v8 = sub_1952437C8(a1, a2, a3);
    if (v8)
    {
      if (v8 < HIDWORD(xmmword_1EAEC9930) && *(qword_1EAEC9908 + 2 * v8 + 2))
      {
        return *(&xmmword_1EAEC9910 + 1) + 2 * *(qword_1EAEC9908 + 2 * v8 + 2);
      }
    }
  }

  return 0;
}

uint64_t ucnv_countAliases(char *a1, UErrorCode *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v5 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      result = 0;
LABEL_9:
      *a2 = v5;
      return result;
    }
  }

  else
  {
    sub_195244FEC(a2);
    dword_1EAEC9954 = *a2;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    result = 0;
    v5 = 1;
    goto LABEL_9;
  }

  if (*a1)
  {
    v6 = *xmmword_1EAEC9910;
    memset(v20, 0, 60);
    if (v6)
    {
      if (strlen(a1) >= 0x3C)
      {
        *a2 = U_BUFFER_OVERFLOW_ERROR;
        return 0;
      }

      ucnv_io_stripASCIIForCompare(v20, a1);
      a1 = v20;
    }

    v7 = 0;
    v8 = DWORD1(xmmword_1EAEC9930);
    v9 = DWORD1(xmmword_1EAEC9930) >> 1;
    v10 = xmmword_1EAEC98F0;
    v12 = *(&xmmword_1EAEC9910 + 1);
    v11 = qword_1EAEC9920;
    while (1)
    {
      v13 = *(v10 + 2 * v9);
      v14 = v6 ? strcmp(a1, (v11 + 2 * v13)) : ucnv_compareNames(a1, (v12 + 2 * v13));
      v15 = v9;
      if ((v14 & 0x80000000) == 0)
      {
        v7 = v9;
        v15 = v8;
        if (!v14)
        {
          break;
        }
      }

      v16 = v9 == (v15 + v7) >> 1;
      v9 = (v15 + v7) >> 1;
      v8 = v15;
      if (v16)
      {
        return 0;
      }
    }

    v17 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v9);
    if (v17 < 0)
    {
      *a2 = U_AMBIGUOUS_ALIAS_WARNING;
    }

    v18 = v17 & 0xFFF;
    if (dword_1EAEC9928 > v18)
    {
      v19 = *(qword_1EAEC9900 + 2 * (v18 + (dword_1EAEC992C - 1) * dword_1EAEC9928));
      if (v19)
      {
        return *(qword_1EAEC9908 + 2 * v19);
      }
    }
  }

  return 0;
}

uint64_t ucnv_getAlias(char *a1, unsigned int a2, UErrorCode *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v7 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      result = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_195244FEC(a3);
    dword_1EAEC9954 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a3 <= 0)
  {
    if (!a1)
    {
      result = 0;
      v7 = 1;
      goto LABEL_9;
    }

    if (*a1)
    {
      v8 = *xmmword_1EAEC9910;
      memset(v23, 0, 60);
      if (v8)
      {
        if (strlen(a1) >= 0x3C)
        {
          *a3 = U_BUFFER_OVERFLOW_ERROR;
          return 0;
        }

        ucnv_io_stripASCIIForCompare(v23, a1);
        a1 = v23;
      }

      v9 = 0;
      v10 = DWORD1(xmmword_1EAEC9930);
      v11 = DWORD1(xmmword_1EAEC9930) >> 1;
      v12 = xmmword_1EAEC98F0;
      v13 = *(&xmmword_1EAEC9910 + 1);
      v14 = qword_1EAEC9920;
      while (1)
      {
        v15 = *(v12 + 2 * v11);
        v16 = v8 ? strcmp(a1, (v14 + 2 * v15)) : ucnv_compareNames(a1, (v13 + 2 * v15));
        v17 = v11;
        if ((v16 & 0x80000000) == 0)
        {
          v9 = v11;
          v17 = v10;
          if (!v16)
          {
            break;
          }
        }

        v18 = v11 == (v17 + v9) >> 1;
        v11 = (v17 + v9) >> 1;
        v10 = v17;
        if (v18)
        {
          return 0;
        }
      }

      v19 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v11);
      if (v19 < 0)
      {
        *a3 = U_AMBIGUOUS_ALIAS_WARNING;
      }

      v20 = v19 & 0xFFF;
      if (dword_1EAEC9928 <= v20)
      {
        return 0;
      }

      v21 = *(qword_1EAEC9900 + 2 * (v20 + (dword_1EAEC992C - 1) * dword_1EAEC9928));
      if (!v21)
      {
        return 0;
      }

      v22 = (qword_1EAEC9908 + 2 * v21);
      if (*v22 > a2)
      {
        return v13 + 2 * v22[a2 + 1];
      }

      result = 0;
      v7 = 8;
LABEL_9:
      *a3 = v7;
      return result;
    }
  }

  return 0;
}

void ucnv_getAliases(char *result, void *a2, UErrorCode *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
    {
      v6 = dword_1EAEC9954;
      if (dword_1EAEC9954 >= 1)
      {
LABEL_6:
        *a3 = v6;
        return;
      }
    }

    else
    {
      sub_195244FEC(a3);
      dword_1EAEC9954 = *a3;
      icu::umtx_initImplPostInit(&dword_1EAEC9950);
    }

    if (*a3 > 0)
    {
      return;
    }

    if (!result)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if (*result)
    {
      v7 = *xmmword_1EAEC9910;
      memset(v26, 0, 60);
      if (v7)
      {
        if (strlen(result) >= 0x3C)
        {
          v6 = 15;
          goto LABEL_6;
        }

        ucnv_io_stripASCIIForCompare(v26, result);
        result = v26;
      }

      v8 = 0;
      v9 = DWORD1(xmmword_1EAEC9930);
      v10 = DWORD1(xmmword_1EAEC9930) >> 1;
      v11 = xmmword_1EAEC98F0;
      v12 = *(&xmmword_1EAEC9910 + 1);
      v13 = qword_1EAEC9920;
      while (1)
      {
        v14 = *(v11 + 2 * v10);
        v15 = v7 ? strcmp(result, (v13 + 2 * v14)) : ucnv_compareNames(result, (v12 + 2 * v14));
        v16 = v10;
        if ((v15 & 0x80000000) == 0)
        {
          v8 = v10;
          v16 = v9;
          if (!v15)
          {
            break;
          }
        }

        v17 = v10 == (v16 + v8) >> 1;
        v10 = (v16 + v8) >> 1;
        v9 = v16;
        if (v17)
        {
          return;
        }
      }

      v18 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v10);
      if (v18 < 0)
      {
        *a3 = U_AMBIGUOUS_ALIAS_WARNING;
      }

      v19 = v18 & 0xFFF;
      if (dword_1EAEC9928 > v19)
      {
        v20 = *(qword_1EAEC9900 + 2 * (v19 + (dword_1EAEC992C - 1) * dword_1EAEC9928));
        if (v20)
        {
          v21 = (qword_1EAEC9908 + 2 * v20);
          v24 = *v21;
          v22 = v21 + 1;
          v23 = v24;
          if (v24)
          {
            do
            {
              v25 = *v22++;
              *a2++ = v12 + 2 * v25;
              --v23;
            }

            while (v23);
          }
        }
      }
    }
  }
}

uint64_t ucnv_countStandards()
{
  v2 = 0;
  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    if (dword_1EAEC9954 >= 1)
    {
      v2 = dword_1EAEC9954;
    }
  }

  else
  {
    sub_195244FEC(&v2);
    dword_1EAEC9954 = v2;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (v2 <= 0)
  {
    return (dword_1EAEC992C - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucnv_getCanonicalName(char *a1, unsigned __int8 *a2, UErrorCode *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v7 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      result = 0;
LABEL_8:
      *a3 = v7;
      return result;
    }
  }

  else
  {
    sub_195244FEC(a3);
    dword_1EAEC9954 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a3 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    result = 0;
    v7 = 1;
    goto LABEL_8;
  }

  if (!*a1)
  {
    return 0;
  }

  v8 = sub_1952452C8(a2);
  v9 = *xmmword_1EAEC9910;
  memset(v47, 0, 60);
  v10 = a1;
  if (v9)
  {
    if (strlen(a1) >= 0x3C)
    {
      v11 = 0;
      v12 = 15;
      v13 = -1;
      goto LABEL_30;
    }

    v10 = v47;
    ucnv_io_stripASCIIForCompare(v47, a1);
  }

  v44 = v8;
  v14 = 0;
  v15 = DWORD1(xmmword_1EAEC9930);
  v16 = DWORD1(xmmword_1EAEC9930) >> 1;
  v17 = xmmword_1EAEC98F0;
  v19 = *(&xmmword_1EAEC9910 + 1);
  v18 = qword_1EAEC9920;
  while (1)
  {
    v20 = *(v17 + 2 * v16);
    v21 = v9 ? strcmp(v10, (v18 + 2 * v20)) : ucnv_compareNames(v10, (v19 + 2 * v20));
    v22 = v16;
    if ((v21 & 0x80000000) == 0)
    {
      v14 = v16;
      v22 = v15;
      if (!v21)
      {
        break;
      }
    }

    v23 = v16 == (v22 + v14) >> 1;
    v16 = (v22 + v14) >> 1;
    v15 = v22;
    if (v23)
    {
      v11 = 0;
      v13 = -1;
LABEL_28:
      v8 = v44;
      goto LABEL_31;
    }
  }

  v13 = *(*(&xmmword_1EAEC98F0 + 1) + 2 * v16) & 0xFFF;
  if ((*(*(&xmmword_1EAEC98F0 + 1) + 2 * v16) & 0x8000) == 0)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v12 = -122;
  v11 = 1;
  v8 = v44;
LABEL_30:
  *a3 = v12;
LABEL_31:
  if (v8 >= dword_1EAEC992C - 1)
  {
    return 0;
  }

  v24 = dword_1EAEC9928;
  if (v13 >= dword_1EAEC9928)
  {
    return 0;
  }

  v25 = qword_1EAEC9900;
  v26 = dword_1EAEC9928 * v8;
  if (!*(qword_1EAEC9900 + 2 * (v26 + v13)) || (v27 = (qword_1EAEC9908 + 2 * *(qword_1EAEC9900 + 2 * (v26 + v13))), v28 = *v27, !*v27))
  {
    if (!v11)
    {
      return 0;
    }

    goto LABEL_46;
  }

  v41 = dword_1EAEC9928 * v8;
  v43 = dword_1EAEC9928;
  v45 = v8;
  v29 = *(&xmmword_1EAEC9910 + 1);
  v30 = 1;
  v31 = *v27;
  v32 = 1;
  do
  {
    if (v27[v30] && !ucnv_compareNames(a1, (v29 + 2 * v27[v30])))
    {
      break;
    }

    v32 = v30++ < v28;
    --v31;
  }

  while (v31);
  if (v32)
  {
    v33 = v13;
  }

  else
  {
    v33 = -1;
  }

  if (v32)
  {
LABEL_58:
    v24 = v43;
    goto LABEL_59;
  }

  v24 = v43;
  v8 = v45;
  v26 = v41;
  if (((v11 ^ 1) & 1) == 0)
  {
LABEL_46:
    v34 = v24 + v24 * v8;
    if (v26 < v34)
    {
      v43 = v24;
      v46 = qword_1EAEC9908;
      v29 = *(&xmmword_1EAEC9910 + 1);
      v42 = v26;
      v35 = v26;
      while (1)
      {
        if (*(v25 + 2 * v35))
        {
          v36 = (v46 + 2 * *(v25 + 2 * v35));
          v37 = *v36;
          if (*v36)
          {
            v38 = 1;
            v39 = *v36;
            v40 = 1;
            do
            {
              if (v36[v38] && !ucnv_compareNames(a1, (v29 + 2 * v36[v38])))
              {
                break;
              }

              v40 = v38++ < v37;
              --v39;
            }

            while (v39);
            if (v40)
            {
              break;
            }
          }
        }

        result = 0;
        if (++v35 == v34)
        {
          return result;
        }
      }

      v33 = v35 - v42;
      goto LABEL_58;
    }

    return 0;
  }

LABEL_59:
  if (v33 >= v24)
  {
    return 0;
  }

  return v29 + 2 * *(xmmword_1EAEC98E0 + 2 * v33);
}

void *ucnv_openAllNames(UErrorCode *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
  {
    v4 = dword_1EAEC9954;
    if (dword_1EAEC9954 >= 1)
    {
      v1 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_195244FEC(a1);
    dword_1EAEC9954 = *a1;
    icu::umtx_initImplPostInit(&dword_1EAEC9950);
  }

  if (*a1 <= 0)
  {
    v5 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v1 = v5;
    if (v5)
    {
      v6 = *&off_1F0934330;
      *v5 = xmmword_1F0934320;
      *(v5 + 1) = v6;
      *(v5 + 2) = xmmword_1F0934340;
      v5[6] = off_1F0934350;
      v7 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
      if (v7)
      {
        *v7 = 0;
        v1[1] = v7;
        return v1;
      }

      *a1 = U_MEMORY_ALLOCATION_ERROR;
      free(v1);
      return 0;
    }

    v4 = 7;
LABEL_9:
    *a1 = v4;
    return v1;
  }

  return 0;
}

uint64_t ucnv_io_countKnownConverters(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9950, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9950))
    {
      if (dword_1EAEC9954 >= 1)
      {
        *a1 = dword_1EAEC9954;
      }
    }

    else
    {
      sub_195244FEC(a1);
      dword_1EAEC9954 = *a1;
      icu::umtx_initImplPostInit(&dword_1EAEC9950);
    }
  }

  if (*a1 <= 0)
  {
    return dword_1EAEC9928;
  }

  else
  {
    return 0;
  }
}

uint64_t ucnv_swapAliases(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, int *a5)
{
  v7 = a3;
  v70 = *MEMORY[0x1E69E9840];
  v10 = udata_swapDataHeader(a1, a2, a3, a4, a5);
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  if (__PAIR64__(v13, v12) != 0x7600000043)
  {
    goto LABEL_13;
  }

  if (*(a2 + 14) != 65 || *(a2 + 15) != 108 || *(a2 + 16) != 3)
  {
    v13 = 118;
LABEL_13:
    udata_printError(a1, "ucnv_swapAliases(): data format %02x.%02x.%02x.%02x (format version %02x) is not an alias table\n", v12, v13, *(a2 + 14), *(a2 + 15), *(a2 + 16));
    result = 0;
    v18 = 16;
    goto LABEL_14;
  }

  v14 = v10;
  if ((v7 & 0x80000000) == 0)
  {
    v15 = v7 - v10;
    if (v7 - v10 <= 35)
    {
      goto LABEL_24;
    }
  }

  v69 = 0;
  v68 = 0u;
  v67 = 0u;
  v16 = (*(a1 + 16))(*(a2 + v10));
  v17 = v16;
  v66 = v16;
  if (v16 - 10 < 0xFFFFFFFE)
  {
    udata_printError(a1, "ucnv_swapAliases(): table of contents contains unsupported number of sections (%u sections)\n", v16);
    result = 0;
    v18 = 3;
LABEL_14:
    *a5 = v18;
    return result;
  }

  v19 = v14 + 4;
  v20 = &v67;
  v53 = v16 + 1;
  v56 = a2 + v14;
  v21 = v53 - 1;
  do
  {
    *v20 = (*(a1 + 16))(*(a2 + v19));
    v20 = (v20 + 4);
    v19 += 4;
    --v21;
  }

  while (v21);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v22 = 2 * v53;
  DWORD1(v63) = 2 * v53;
  if (v17 >= 2)
  {
    v25 = 0;
    v24 = a2 + v14;
    do
    {
      v22 += *(&v67 + v25);
      *(&v63 + v25++ + 2) = v22;
    }

    while (v53 - 2 != v25);
    v23 = v25 + 1;
  }

  else
  {
    v23 = 1;
    v24 = a2 + v14;
  }

  v26 = *(&v66 + v23) + *(&v63 + v23);
  v27 = 2 * v26;
  if ((v7 & 0x80000000) == 0)
  {
    v15 = v7 - v14;
    if (v7 - v14 < 2 * v26)
    {
LABEL_24:
      udata_printError(a1, "ucnv_swapAliases(): too few bytes (%d after header) for an alias table\n", v15);
      result = 0;
      v18 = 8;
      goto LABEL_14;
    }

    (*(a1 + 56))(a1, v24, (4 * v53), a4 + v14, a5);
    v28 = v65;
    v29 = &a4[v65] + v14;
    (*(a1 + 72))(a1, &v24[2 * v65], (2 * (v69 + HIDWORD(v68))), v29, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "ucnv_swapAliases().swapInvChars(charset names) failed\n");
      return 0;
    }

    v30 = *(a1 + 3);
    if (*(a1 + 1) == v30)
    {
      (*(a1 + 48))(a1, &v24[2 * DWORD1(v63)], (2 * (v28 - DWORD1(v63))), &a4[DWORD1(v63)] + v14, a5);
    }

    else
    {
      v50 = v28;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v31 = DWORD2(v67);
      v57 = v29;
      if (DWORD2(v67) > 0x1F4)
      {
        v33 = malloc_type_malloc((2 * DWORD2(v67)) + 4 * DWORD2(v67), 0x100004052888210uLL);
        v58 = v33;
        if (!v33)
        {
          udata_printError(a1, "ucnv_swapAliases(): unable to allocate memory for sorting tables (max length: %u)\n", v31);
          result = 0;
          v18 = 7;
          goto LABEL_14;
        }

        v32 = v33;
        v52 = a4 + v14;
        v49 = v27;
        v59 = &v33[4 * v31];
        v30 = *(a1 + 3);
      }

      else
      {
        v52 = a4 + v14;
        v49 = v27;
        v32 = v62;
        v58 = v62;
        v59 = v61;
      }

      if (v30)
      {
        v34 = ucnv_io_stripEBCDICForCompare;
      }

      else
      {
        v34 = ucnv_io_stripASCIIForCompare;
      }

      bzero(v62, 0x7D0uLL);
      bzero(v61, 0x3E8uLL);
      v60 = v34;
      v54 = v64;
      v51 = HIDWORD(v63);
      v35 = &v24[2 * HIDWORD(v63)];
      if (v31)
      {
        v36 = 0;
        v37 = v32 + 2;
        do
        {
          *(v37 - 1) = (*(a1 + 8))(*&v35[2 * v36]);
          *v37 = v36;
          v37 += 2;
          ++v36;
        }

        while (v31 != v36);
      }

      uprv_sortArray(v32, v31, 4, sub_195244F34, &v57, 0, a5);
      if (*a5 <= 0)
      {
        v38 = &v52[2 * v51];
        if (a2 == a4)
        {
          v43 = v59;
          if (v31)
          {
            v44 = 0;
            v45 = 2 * v31;
            do
            {
              (*(a1 + 48))(a1, &v35[2 * *(v58 + v44 + 1)], 2, &v43[v44], a5);
              v44 += 2;
            }

            while (v45 != v44);
            memcpy(v38, v43, 2 * v31);
            v46 = 2;
            v47 = v31;
            v48 = v43;
            do
            {
              (*(a1 + 48))(a1, &v56[2 * v54 + 2 * *(v58 + v46)], 2, v48, a5);
              v48 += 2;
              v46 += 4;
              --v47;
            }

            while (v47);
          }

          else
          {
            v45 = 0;
          }

          memcpy(&v52[2 * v54], v43, v45);
        }

        else
        {
          v39 = &v52[2 * v54];
          v55 = &v56[2 * v54];
          if (v31)
          {
            v40 = 2;
            v41 = v31;
            do
            {
              v42 = *(v58 + v40);
              (*(a1 + 48))(a1, &v35[2 * v42], 2, v38, a5);
              (*(a1 + 48))(a1, &v55[2 * v42], 2, v39, a5);
              v38 += 2;
              v39 += 2;
              v40 += 4;
              --v41;
            }

            while (v41);
          }
        }
      }

      if (v58 != v62)
      {
        free(v58);
      }

      if (*a5 >= 1)
      {
        udata_printError(a1, "ucnv_swapAliases().uprv_sortArray(%u items) failed\n");
        return 0;
      }

      (*(a1 + 48))(a1, &v56[2 * DWORD1(v63)], (2 * (v51 - DWORD1(v63))), &v52[2 * DWORD1(v63)], a5);
      (*(a1 + 48))(a1, &v56[2 * DWORD1(v64)], (2 * (v50 - DWORD1(v64))), &v52[2 * DWORD1(v64)], a5);
      v27 = v49;
    }
  }

  return (v27 + v14);
}

uint64_t sub_195244F34(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 60);
  memset(v9, 0, 60);
  v5 = *a1;
  v6 = (a1[3])(v10, *a1 + 2 * *a2);
  v7 = (a1[3])(v9, v5 + 2 * *a3);
  return strcmp(v6, v7);
}

double sub_195244FEC(UErrorCode *a1)
{
  sub_1952376A4(23, sub_195245208);
  v2 = udata_openChoice(0, "icu", "cnvalias", sub_195245264, 0, a1);
  if (*a1 <= 0)
  {
    v4 = v2;
    Memory = udata_getMemory(v2);
    Length = udata_getLength(v4);
    if (Length < 5)
    {
      goto LABEL_15;
    }

    v7 = *Memory;
    v8 = *Memory + 1;
    v9 = 4 * v8;
    if (*Memory < 8 || Length <= v9)
    {
      goto LABEL_15;
    }

    qword_1EAEC9958 = v4;
    v11 = Memory[1];
    dword_1EAEC9928 = v11;
    v12 = Memory[2];
    dword_1EAEC992C = v12;
    v13 = Memory[3];
    LODWORD(xmmword_1EAEC9930) = v13;
    v14 = Memory[4];
    DWORD1(xmmword_1EAEC9930) = v14;
    v15 = Memory[5];
    DWORD2(xmmword_1EAEC9930) = v15;
    v16 = Memory[6];
    HIDWORD(xmmword_1EAEC9930) = v16;
    v17 = Memory[7];
    dword_1EAEC9940 = v17;
    v18 = Memory[8];
    dword_1EAEC9944 = v18;
    if (v7 != 8)
    {
      dword_1EAEC9948 = Memory[9];
    }

    v19 = v8 <= 2 ? 2 : v8;
    v20 = Memory + 1;
    v21 = v19 - 1;
    do
    {
      v22 = *v20++;
      v9 += 2 * v22;
      --v21;
    }

    while (v21);
    if (Length < v9)
    {
LABEL_15:
      *a1 = U_INVALID_FORMAT_ERROR;

      return udata_close(v4);
    }

    else
    {
      v23 = &Memory[v8];
      v24 = v11 + 2 * v8;
      *&xmmword_1EAEC98E0 = v23;
      *(&xmmword_1EAEC98E0 + 1) = Memory + 2 * v24;
      v25 = v12 + v24;
      v26 = Memory + 2 * v25;
      v27 = v13 + v25;
      *&xmmword_1EAEC98F0 = v26;
      *(&xmmword_1EAEC98F0 + 1) = Memory + 2 * v27;
      v28 = v14 + v27;
      v29 = Memory + 2 * v28;
      v30 = v15 + v28;
      qword_1EAEC9900 = v29;
      qword_1EAEC9908 = Memory + 2 * v30;
      v31 = v16 + v30;
      if (v17 && (v32 = Memory + v31, v33 = *v32, *v32 < 2u))
      {
        v34 = v17 + v31;
        v35 = Memory + 2 * v34;
        *&xmmword_1EAEC9910 = v32;
        *(&xmmword_1EAEC9910 + 1) = v35;
        if (v33)
        {
          v35 = Memory + 2 * v18 + 2 * v34;
        }
      }

      else
      {
        v35 = Memory + 2 * v17 + 2 * v31;
        *&xmmword_1EAEC9910 = &unk_195479EDA;
        *(&xmmword_1EAEC9910 + 1) = v35;
      }

      qword_1EAEC9920 = v35;
    }
  }

  return result;
}

uint64_t sub_195245208()
{
  if (qword_1EAEC9958)
  {
    udata_close(qword_1EAEC9958);
    qword_1EAEC9958 = 0;
  }

  atomic_store(0, &dword_1EAEC9950);
  xmmword_1EAEC9930 = 0u;
  *&dword_1EAEC9940 = 0u;
  xmmword_1EAEC9910 = 0u;
  *&qword_1EAEC9920 = 0u;
  xmmword_1EAEC98F0 = 0u;
  *&qword_1EAEC9900 = 0u;
  xmmword_1EAEC98E0 = 0u;
  return 1;
}

uint64_t sub_1952452C8(unsigned __int8 *a1)
{
  if (*(&xmmword_1EAEC98E0 + 1))
  {
    v1 = dword_1EAEC992C == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  while (uprv_stricmp((*(&xmmword_1EAEC9910 + 1) + 2 * *(*(&xmmword_1EAEC98E0 + 1) + 2 * v3)), a1))
  {
    if (++v3 >= dword_1EAEC992C)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

void sub_195245348(void **a1)
{
  free(a1[1]);

  free(a1);
}

uint64_t sub_195245384(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1)
  {
    return *(qword_1EAEC9908 + 2 * v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1952453A8(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  if (v4 && (v5 = (qword_1EAEC9908 + 2 * v4), v6 = v3[1], v6 < *v5))
  {
    v7 = *(&xmmword_1EAEC9910 + 1);
    v3[1] = v6 + 1;
    v8 = v5[v6 + 1];
    v9 = v7 + 2 * v8;
    if (a2)
    {
      v10 = strlen((v7 + 2 * v8));
LABEL_7:
      *a2 = v10;
    }
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      v10 = 0;
      goto LABEL_7;
    }
  }

  return v9;
}

uint64_t sub_195245448(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  if (dword_1EAEC9928 <= v4)
  {
    v8 = 0;
    if (a2)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(&xmmword_1EAEC9910 + 1);
    v6 = xmmword_1EAEC98E0;
    *v3 = v4 + 1;
    v7 = *(v6 + 2 * v4);
    v8 = v5 + 2 * v7;
    if (a2)
    {
      v9 = strlen((v5 + 2 * v7));
LABEL_6:
      *a2 = v9;
    }
  }

  return v8;
}

void sub_1952454D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = 0; i != 160; i += 8)
    {
      v4 = *(v1 + i);
      if (v4)
      {
        sub_19523E6D8(v4);
      }
    }

    if (!*(a1 + 62))
    {
      free(*(a1 + 16));
      *(a1 + 16) = 0;
    }
  }
}

void *sub_195245538(void *result, int *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 < 1)
  {
    v21 = 0;
    __dst = 0;
    v6 = result[2];
    v7 = result[3];
    if (v7 <= v6)
    {
      return result;
    }

    v8 = result[2];
    while (1)
    {
      if (v3[5] <= v3[4])
      {
        v5 = 15;
        goto LABEL_5;
      }

      v9 = v3[1];
      v10 = *(v9 + 64);
      if (*(v9 + 64))
      {
        if (3 - v10 >= v7 - v8)
        {
          v11 = v7 - v8;
        }

        else
        {
          v11 = 3 - v10;
        }

        memcpy(&__dst, (v9 + 65), *(v9 + 64));
        v12 = &__dst + v10;
        memcpy(&__dst + v10, v8, v11);
        v3[2] = &__dst;
        v3[3] = &__dst + v10 + v11;
        v13 = v10 + v11;
        result = sub_195245FA0(v3, a2);
        v14 = v3[1];
        v15 = &v8[v3[2] - v12];
        v3[2] = v15;
        v3[3] = v7;
        v4 = *a2;
        if (*a2 == 11)
        {
          *(v14 + 64) = v13;
          result = memcpy((v14 + 65), &__dst, v13);
          v5 = 0;
          v3[2] = v3[3];
          goto LABEL_5;
        }

        *(v14 + 64) = 0;
        p_dst = &__dst;
      }

      else
      {
        result = sub_195245FA0(v3, a2);
        v15 = v3[2];
        v13 = v15 - v8;
        v4 = *a2;
        p_dst = v8;
      }

      if (v4 > 0)
      {
        break;
      }

      if (result > 0xFFFDu)
      {
        if (result == 65534)
        {
          v4 = 10;
        }

        else
        {
          v4 = 12;
        }

        *a2 = v4;
        break;
      }

      v17 = v3[4];
      *v17 = result;
      v3[4] = v17 + 1;
      v18 = v3[6];
      if (v18)
      {
        *v18 = v8 - v6;
        v3[6] = v18 + 1;
      }

      v7 = v3[3];
      v8 = v15;
      if (v7 <= v15)
      {
        return result;
      }
    }

    v19 = v3[1];
    *(v19 + 64) = v13;
    if (v13 >= 1)
    {
      result = memcpy((v19 + 65), p_dst, v13);
      v4 = *a2;
    }
  }

  else
  {
    *(result[1] + 64) = 0;
  }

  if (v4 == 11)
  {
    v5 = 0;
LABEL_5:
    *a2 = v5;
  }

  return result;
}

uint64_t sub_195245728(uint64_t result, int *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v2 = *(result + 16);
  if (v2 < *(result + 24))
  {
    v4 = result;
    v5 = 0;
    v6 = *(*(result + 8) + 16);
    v7 = &v38 + 1;
    v39 = 0;
    v38 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    do
    {
      if (*a2 > 0)
      {
        return result;
      }

      if (v4[4] >= v4[5])
      {
        *a2 = 15;
        return result;
      }

      v8 = *(v6 + 161);
      v9 = *v2;
      v40 = v9;
      if ((v9 & 0xFF80) == 0x80)
      {
        v10 = v9 - 167 > 0x30 || ((1 << (v9 + 89)) & 0x100000000A603) == 0;
        if (v10 && v9 != 247)
        {
          *(v6 + 161) = 1;
        }

        v11 = v9 - 128;
      }

      else
      {
        v11 = v9 - 128;
        if (((v9 - 128) >> 5) >= 0x7FDu)
        {
          LOBYTE(v38) = v9;
LABEL_39:
          result = 1;
          goto LABEL_40;
        }
      }

      v12 = &v38;
      if (v9 <= 0x19u && ((1 << v9) & 0x2002601) != 0)
      {
        LOBYTE(v38) = v9;
        v12 = v7;
      }

      if (v9 <= 0x19u && ((1 << v9) & 0x2002601) != 0)
      {
        goto LABEL_39;
      }

      v13 = &unk_19547A38E;
      do
      {
        v14 = *(v13 + 2);
        v13 += 6;
      }

      while (v14 < v9);
      if (*(v13 - 2) > v9)
      {
        goto LABEL_22;
      }

      v15 = *v13;
      if (v15 == 15)
      {
        if (v9 <= 0x1Fu)
        {
          *v12 = 15;
          LOBYTE(v9) = v9 | 0x20;
          goto LABEL_79;
        }

        if (v11 <= 0x20u)
        {
          *v12 = 15;
LABEL_79:
          *(v12++ + 1) = v9;
        }

        result = v12 - &v38;
        v15 = 15;
        goto LABEL_28;
      }

      if (v15 == 20)
      {
LABEL_22:
        v15 = 20;
        *v12 = 20;
        if (v9)
        {
          v16 = HIBYTE(v9);
        }

        else
        {
          v16 = -10;
        }

        if (!v9)
        {
          LOBYTE(v9) = HIBYTE(v9);
        }

        *(v12 + 1) = v16;
        *(v12 + 2) = v9;
        v12 = (v12 + 3);
        result = v12 - &v38;
      }

      else
      {
        if (v15 > 0x13)
        {
          goto LABEL_29;
        }

        result = sub_195246228(v6, *v13, v12, &v40, &v41, &v42);
      }

LABEL_28:
      if (result)
      {
        goto LABEL_40;
      }

LABEL_29:
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v17 = *(v6 + 160);
      if (v17 == 1 || (v15 != 128 || v17 >= 0x10) && v15 != 130 && (v15 != 129 || v17 < 0x10))
      {
        goto LABEL_30;
      }

      v26 = *(v6 + 161);
      if (v26 <= 0xF)
      {
        result = sub_195246228(v6, 1u, v12, &v40, &v41, &v42);
        if (result)
        {
          goto LABEL_40;
        }

        result = sub_195246228(v6, 0, v12, &v40, &v41, &v42);
        if (result)
        {
          goto LABEL_40;
        }

        v26 = *(v6 + 161);
      }

      result = sub_195246228(v6, v26, v12, &v40, &v41, &v42);
      if (!result)
      {
LABEL_30:
        v18 = *(v6 + 161);
        if (*(v6 + 161) && (v15 == 128 && v18 < 0x10 || v15 == 130 || v15 == 129 && v18 >= 0x10))
        {
          result = sub_195246228(v6, v18, v12, &v40, &v41, &v42);
          if (result)
          {
LABEL_75:
            if (!result)
            {
              goto LABEL_89;
            }

            goto LABEL_40;
          }
        }

        else
        {
          result = 0;
        }

        if (v41)
        {
          if (v15 != 128 || v41 >= 0x10u)
          {
            v27 = v15 == 129 && v41 > 0xFu;
            v28 = v27;
            if (v15 != 130 && !v28)
            {
LABEL_89:
              v37 = v7;
              if (v15 == 129)
              {
                v29 = 16;
              }

              else
              {
                v29 = 1;
              }

              if (((v15 + 127) & 0xFE) != 0)
              {
                v30 = 11;
              }

              else
              {
                v30 = 19;
              }

              do
              {
                v31 = v29;
                v32 = *(v6 + 8 * v29);
                if (v32)
                {
                  if (*(&v42 + v29))
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = sub_195246228(v6, v29, v12, &v40, &v41, &v42);
                  }
                }

                v29 = v31 + 1;
              }

              while (v30 >= (v31 + 1) && v32 == 0);
              if (v15 == 129)
              {
                v7 = v37;
              }

              else
              {
                v7 = v37;
                if (!v32)
                {
                  v32 = sub_195246228(v6, 0, v12, &v40, &v41, &v42);
                }
              }

              result = v32;
              if (!v32)
              {
                v34 = v40;
                v35 = HIBYTE(v40);
                *v12 = 20;
                if (v34)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = -10;
                }

                if (!v34)
                {
                  v34 = v35;
                }

                *(v12 + 1) = v36;
                *(v12 + 2) = v34;
                result = v12 - &v38 + 3;
              }

              goto LABEL_40;
            }
          }

          result = sub_195246228(v6, v41, v12, &v40, &v41, &v42);
        }

        goto LABEL_75;
      }

LABEL_40:
      v4[2] += 2;
      v19 = v4[4];
      if (v19 >= v4[5])
      {
        v20 = &v38;
LABEL_48:
        if (result >= 1)
        {
          v23 = v4[1];
          v24 = (v23 + 104);
          *a2 = 15;
          *(v23 + 91) = result;
          do
          {
            v25 = *v20++;
            *v24++ = v25;
            result = (result - 1);
          }

          while (result);
        }
      }

      else
      {
        v20 = &v38;
        while (result)
        {
          v21 = *v20++;
          v4[4] = v19 + 1;
          *v19 = v21;
          v22 = v4[6];
          if (v22)
          {
            *v22 = v5;
            v4[6] = v22 + 1;
          }

          v19 = v4[4];
          result = (result - 1);
          if (v19 >= v4[5])
          {
            goto LABEL_48;
          }
        }
      }

      ++v5;
      *(v6 + 161) = v8;
      v2 = v4[2];
    }

    while (v2 < v4[3]);
  }

  return result;
}

uint64_t sub_195245D0C(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v3 = 0;
    *a3 = 456;
  }

  else
  {
    v3 = a2;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = *v5;
    v7 = v5[2];
    *(a2 + 304) = v5[1];
    *(a2 + 320) = v7;
    *(a2 + 288) = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
    *(a2 + 368) = v5[5];
    *(a2 + 384) = v10;
    *(a2 + 336) = v8;
    *(a2 + 352) = v9;
    v11 = v5[7];
    v12 = v5[8];
    v13 = v5[9];
    *(a2 + 448) = *(v5 + 20);
    v14 = a2 + 288;
    *(a2 + 416) = v12;
    *(a2 + 432) = v13;
    *(a2 + 400) = v11;
    do
    {
      v15 = *(v5 + v4);
      if (v15)
      {
        sub_19523E73C(v15);
      }

      v4 += 8;
    }

    while (v4 != 160);
    *(v3 + 16) = v14;
    *(v3 + 62) = 1;
  }

  return v3;
}

void sub_195245DBC(uint64_t a1, uint64_t a2, UErrorCode *a3, char a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_malloc(0xA8uLL, 0x10200406A70E7A0uLL);
  *(a1 + 16) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    memset(v21, 0, sizeof(v21));
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    LODWORD(v19[0]) = 40;
    *v8 = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    v8[4] = 0u;
    v8[5] = 0u;
    v8[6] = 0u;
    v8[7] = 0u;
    v8[8] = 0u;
    v8[9] = 0u;
    *(v8 + 20) = 0;
    BYTE8(v19[0]) = *(a2 + 8);
    do
    {
      if (*a3 > 0)
      {
        goto LABEL_9;
      }

      if (((0xF680uLL >> v10) & 1) == 0)
      {
        *(v9 + v10) = sub_19523E7A4(off_1E7404EE8[v10], v21, v19, a3);
      }

      ++v10;
    }

    while (v10 != 20);
    if (*a3 > 0 || *(a2 + 8))
    {
LABEL_9:
      sub_1952454D8(a1);
      return;
    }

    *(v9 + 160) = a4;
    v11 = *(a2 + 32);
    if (v11 && (v12 = *v11, *v11))
    {
      v13 = "ar";
      v14 = &off_1E7404F98;
      do
      {
        v15 = *v13;
        if (v15 == v12)
        {
          v16 = strlen(v13);
          if (!strncmp(v13, v11, v16))
          {
            v18 = *(v14 - 8);
            goto LABEL_22;
          }
        }

        else if (v15 > v12)
        {
          break;
        }

        v17 = *v14;
        v14 += 2;
        v13 = v17;
      }

      while (v17);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

LABEL_22:
    *(v9 + 161) = v18;
  }

  else
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }
}

uint64_t sub_195245FA0(void *a1, _DWORD *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    *a2 = 1;
    return 0xFFFFLL;
  }

  v6 = v4 + 1;
  a1[2] = v4 + 1;
  v7 = *v4;
  result = *v4;
  if (*v4 > 31)
  {
    return result;
  }

  if (result <= 0x19)
  {
    if (((1 << result) & 0x2002601) != 0)
    {
      return result;
    }

    if (result == 15)
    {
      if ((v4 + 2) <= v3)
      {
        a1[2] = v4 + 2;
        v22 = *v6;
        if ((v22 & 0x80u) == 0)
        {
          return (v22 - 32);
        }

        else
        {
          return *v6;
        }
      }

      goto LABEL_22;
    }

    if (result == 20)
    {
      if ((v4 + 3) <= v3)
      {
        a1[2] = v4 + 2;
        v9 = v4[1];
        a1[2] = v4 + 3;
        v10 = v4[2];
        if (v9 == 246)
        {
          v9 = v4[2];
          v10 = 0;
        }

        return v10 | (v9 << 8);
      }

      goto LABEL_22;
    }
  }

  if (*v4 <= 0x20u)
  {
    if (*v4 > 0x13u || (v11 = *(a1[1] + 16), (v12 = v11[*v4]) == 0))
    {
      result = 0;
      *a2 = 10;
      return result;
    }

    if (*v4 >= 0x10u)
    {
      if ((v4 + 3) <= v3)
      {
        if (*v6 != result)
        {
          result = sub_1952505B4(v12, v6, 2);
          v21 = a1[2] + 2;
          goto LABEL_28;
        }

        v13 = (v4 + 2);
        a1[2] = v4 + 2;
        v14 = v12;
        v15 = 1;
LABEL_27:
        result = sub_1952505B4(v14, v13, v15);
        v21 = a1[2] + 1;
LABEL_28:
        a1[2] = v21;
        return result;
      }

      goto LABEL_22;
    }

    v25 = v4 + 2;
    if (v25 > v3)
    {
      goto LABEL_22;
    }

    a1[2] = v25;
    v26 = *v6;
    if ((v26 & 0x80000000) == 0)
    {
      v27 = *v11;
      v28[0] = v7;
      v28[1] = v26;
      return sub_1952505B4(v27, v28, 2);
    }

    v24 = *v6;
    v23 = *(v12 + 56);
    return *(v23 + 4 * v24);
  }

  v16 = *(a1[1] + 16);
  v17 = *(v16 + 160);
  v18 = *(v16 + 8 * v17);
  if (v17 < 0x10)
  {
    v23 = *(v18 + 56);
    v24 = v7;
    return *(v23 + 4 * v24);
  }

  v19 = sub_195251E08(*(v16 + 8 * v17), v7);
  v20 = a1[2];
  if (v19)
  {
    v3 = a1[3];
    if (v20 + 1 <= v3)
    {
      v13 = v20 - 1;
      v14 = v18;
      v15 = 2;
      goto LABEL_27;
    }

LABEL_22:
    *a2 = 11;
    a1[2] = v3;
    return 0xFFFFLL;
  }

  v3 = a1[3];
  if (v20 > v3)
  {
    goto LABEL_22;
  }

  return sub_1952505B4(v18, v20 - 1, 1);
}

uint64_t sub_195246228(uint64_t a1, unsigned int a2, _BYTE *a3, unsigned __int16 *a4, _BYTE *a5, uint64_t a6)
{
  v11 = *(a1 + 8 * a2);
  v18 = 0;
  v12 = a2;
  v13 = sub_195251CF8(v11, *a4, &v18, 0);
  if (v13 < 1)
  {
    result = 0;
    *(a6 + a2) = 1;
    return result;
  }

  v14 = v18;
  *a5 = v12;
  v15 = a3;
  if (a2)
  {
    v15 = a3;
    if (*(a1 + 160) != a2)
    {
      *a3 = a2;
      v15 = a3 + 1;
      if (a2 >= 0x10 && v13 == 1)
      {
        v15 = a3 + 2;
        a3[1] = a2;
      }
    }
  }

  if (v13 == 1 && (v14 & 0xE0) == 0)
  {
    return 0;
  }

  if (v13 <= 2)
  {
    if (v13 == 1)
    {
LABEL_21:
      *v15++ = v14;
      return v15 - a3;
    }

LABEL_20:
    *v15++ = BYTE1(v14);
    LOBYTE(v14) = v18;
    goto LABEL_21;
  }

  if (v13 == 3)
  {
LABEL_19:
    *v15++ = BYTE2(v14);
    BYTE1(v14) = BYTE1(v18);
    goto LABEL_20;
  }

  if (v13 == 4)
  {
    *v15++ = HIBYTE(v14);
    goto LABEL_19;
  }

  return v15 - a3;
}

uint64_t ucnv_getUnicodeSet(uint64_t result, icu::UnicodeSet *a2, uint64_t a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    v5 = result;
    if (result && a2 && a3 < 2)
    {
      if (*(*(*(result + 48) + 32) + 120))
      {
        v8[1] = *(&xmmword_1F0934A18 + 1);
        v9 = *&off_1F0934A28;
        v10 = xmmword_1F0934A38;
        v8[0] = a2;
        uset_clear(a2);
        return (*(*(*(v5 + 48) + 32) + 120))(v5, v8, a3, a4);
      }

      v7 = 16;
    }

    else
    {
      v7 = 1;
    }

    *a4 = v7;
  }

  return result;
}

_DWORD *sub_19524647C(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v3 = result[14];
  if ((v3 & 0xE) != 0)
  {
    *a3 = 1;
  }

  else
  {
    result[19] = (8 * (result[14] & 1)) ^ 8;
    if (v3)
    {
      result[20] = 1;
    }
  }

  return result;
}

_DWORD *sub_1952464B8(_DWORD *result, int a2)
{
  v2 = result[14] & 0xF;
  if (a2 > 1 || (result[19] = 8 * (v2 == 0), a2 != 1))
  {
    if (v2 == 1)
    {
      result[20] = 1;
    }
  }

  return result;
}

void *sub_1952464F4(void *result, int *a2)
{
  v2 = result[1];
  if (*(v2 + 76) <= 7)
  {
    return sub_195246DF0(result, a2);
  }

  v3 = result[2];
  v4 = result[3];
  v5 = v4 - v3;
  if (v4 != v3 || *(v2 + 72))
  {
    v6 = result[4];
    v7 = result[5];
    if (v6 >= v7)
    {
      *a2 = 15;
      return result;
    }

    v8 = (v7 - v6) >> 1;
    v9 = result[6];
    v10 = *(v2 + 72);
    if (v10)
    {
      v11 = 1;
      *(v2 + 64) = 1;
      v12 = (v2 + 64);
      *(v2 + 65) = v10;
      *(v2 + 72) = 0;
    }

    else
    {
      v12 = (v2 + 64);
      v11 = *(v2 + 64);
      if (!v11)
      {
        v34 = 0;
        v15 = 0;
        v19 = 0;
        goto LABEL_30;
      }
    }

    v13 = 0;
    v14 = v11;
    v15 = 4 - v11;
    v16 = v4 + v11 - v3 - 4;
    v17 = ~v3 + v4;
    while (1)
    {
      v18 = v13;
      *(v2 + 65 + (v14 + v13)) = *(v3 + v13);
      if (v14 + v13 == 1)
      {
        v19 = __rev16(*(v2 + 65));
        if ((v19 & 0xF800) != 0xD800)
        {
          *v6++ = v19;
          v15 = v13 + 1;
          if (v9)
          {
            *v9++ = -1;
          }

          v34 = 0;
          v19 = 0;
          LODWORD(v8) = v8 - 1;
          goto LABEL_29;
        }

        if ((v19 & 0x400) != 0)
        {
          v5 = v13 + 1;
LABEL_28:
          v34 = v14 + v18 + 1;
          v15 = v5;
LABEL_29:
          *v12 = v34;
          v3 += v18 + 1;
          v5 = v17;
LABEL_30:
          v23 = v5 & 0xFFFFFFFE;
          if (2 * v8 <= v5)
          {
            v23 = 2 * v8;
          }

          if (v19 || !v23)
          {
            goto LABEL_62;
          }

          v5 -= v23;
          v24 = v23 >> 1;
          LODWORD(v8) = v8 - (v23 >> 1);
          if (v9)
          {
            while (1)
            {
              v25 = (v3 + 2);
              v19 = __rev16(*v3);
              if ((v19 & 0xF800) == 0xD800)
              {
                if ((v19 & 0x400) != 0 || v24 < 2)
                {
                  goto LABEL_58;
                }

                v26 = *v25;
                if ((v26 & 0xFC) != 0xDC)
                {
                  goto LABEL_61;
                }

                v27 = *(v3 + 3) | (v26 << 8);
                v3 += 4;
                --v24;
                *v6 = v19;
                v6[1] = v27;
                v6 += 2;
                *v9 = v15;
                v28 = v9 + 1;
                v29 = 4;
                v30 = 8;
              }

              else
              {
                *v6++ = v19;
                v29 = 2;
                v30 = 4;
                v28 = v9;
                v3 += 2;
              }

              v9 = (v9 + v30);
              *v28 = v15;
              v15 += v29;
              if (!--v24)
              {
                goto LABEL_73;
              }
            }
          }

          while (1)
          {
            v25 = (v3 + 2);
            v19 = __rev16(*v3);
            if ((v19 & 0xF800) == 0xD800)
            {
              if ((v19 & 0x400) != 0 || v24 < 2)
              {
                v9 = 0;
LABEL_58:
                if (!v24)
                {
                  v3 = v25;
                  goto LABEL_73;
                }

LABEL_61:
                v5 = v5 + 2 * v24 - 2;
                LODWORD(v8) = v24 + v8;
                v3 = v25;
LABEL_62:
                if (!v19)
                {
                  goto LABEL_73;
                }

                *(v2 + 65) = BYTE1(v19);
                *(v2 + 66) = v19;
                v34 = 2;
                *(v2 + 64) = 2;
                if ((v19 & 0x400) == 0)
                {
                  v35 = v5 - 2;
                  if (v5 < 2)
                  {
                    v34 = 2;
                    goto LABEL_73;
                  }

                  if ((*v3 & 0xFC) == 0xDC)
                  {
                    v36 = _byteswap_ushort(*v3);
                    v3 += 2;
                    *v6++ = v19;
                    if (v9)
                    {
                      *v9++ = v15;
                    }

                    v34 = 0;
                    *(v2 + 144) = v36;
                    *(v2 + 93) = 1;
                    *(v2 + 64) = 0;
                    v37 = 15;
                    v5 = v35;
LABEL_72:
                    *a2 = v37;
LABEL_73:
                    if (v5 && *a2 <= 0)
                    {
                      if (v8)
                      {
                        v38 = *v3++;
                        *(v2 + 64) = v34 + 1;
                        *(v2 + v34 + 65) = v38;
                      }

                      else
                      {
                        *a2 = 15;
                      }
                    }

                    result[2] = v3;
LABEL_79:
                    result[4] = v6;
                    result[6] = v9;
                    return result;
                  }

                  v5 = 1;
                  v34 = 2;
                }

                v37 = 12;
                goto LABEL_72;
              }

              v31 = *v25;
              if ((v31 & 0xFC) != 0xDC)
              {
                v9 = 0;
                goto LABEL_61;
              }

              v32 = *(v3 + 3) | (v31 << 8);
              v3 += 4;
              --v24;
              *v6 = v19;
              v6[1] = v32;
              v6 += 2;
            }

            else
            {
              *v6++ = v19;
              v3 += 2;
            }

            if (!--v24)
            {
              v9 = 0;
              goto LABEL_73;
            }
          }
        }
      }

      else if (v14 + v13 == 3)
      {
        if ((*(v2 + 67) & 0xFC) != 0xDC)
        {
          *a2 = 12;
          if ((~v3 + result[2] - v13) < 2)
          {
            v33 = v3 + v13;
            *(v2 + 72) = *(v2 + 67) | 0x100;
          }

          else
          {
            v33 = v3 + v13 - 1;
          }

          *v12 = 2;
          result[2] = v33;
          goto LABEL_79;
        }

        v20 = _byteswap_ushort(*(v2 + 67));
        *v6 = bswap32(*(v2 + 65)) >> 16;
        v21 = v6 + 1;
        v22 = v8 >= 2;
        LODWORD(v8) = v8 - 2;
        if (v22)
        {
          v21 = v6 + 2;
          v6[1] = v20;
          if (v9)
          {
            *v9 = -1;
            v9 += 2;
          }

          v34 = 0;
          v19 = 0;
        }

        else
        {
          LODWORD(v8) = 0;
          v34 = 0;
          v19 = 0;
          *(v2 + 144) = v20;
          *(v2 + 93) = 1;
          *a2 = 15;
        }

        v17 = v16;
        v6 = v21;
        goto LABEL_29;
      }

      ++v13;
      --v17;
      if (v5 == v18 + 1)
      {
        v17 = 0;
        v19 = 0;
        goto LABEL_28;
      }
    }
  }

  return result;
}

void *sub_195246928(void *result, int *a2)
{
  v2 = result[2];
  v3 = (result[3] - v2) >> 1;
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = result[1];
  if (*(v6 + 80) == 1)
  {
    result = sub_195240168(result[1], byte_19547A858, 2, result + 4, result[5], result + 6, -1, a2);
    *(v6 + 80) = 0;
  }

  v7 = v5[4];
  v8 = v5[5];
  v33 = v7;
  if (v7 >= v8)
  {
    *a2 = 15;
    return result;
  }

  v31 = 0;
  v9 = v8 - v7;
  v10 = v5[6];
  v32 = v10;
  v11 = *(v6 + 84);
  v12 = v11;
  if (v11 && ((v13 = *v2, v9 >= 4) ? (v14 = (*v2 & 0xFC00) == 56320) : (v14 = 0), v14))
  {
    ++v2;
    LODWORD(v3) = v3 - 1;
    *v7 = BYTE1(v11);
    v7[1] = v11;
    v7[2] = HIBYTE(v13);
    v7[3] = v13;
    v7 += 4;
    v33 = v7;
    if (v10)
    {
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      *v10++ = v16;
      v32 = v10;
    }

    *(v6 + 84) = 0;
    v15 = 1;
    v9 -= 4;
  }

  else
  {
    v15 = 0;
    if (*(v6 + 84))
    {
      goto LABEL_43;
    }
  }

  v17 = 2 * v3;
  if (2 * v3 > v9)
  {
    v17 = v9 & 0xFFFFFFFE;
  }

  v9 -= v17;
  v18 = v17 >> 1;
  v19 = v3 - (v17 >> 1);
  if (v10)
  {
    if (v17)
    {
      v20 = v2;
      while (1)
      {
        v21 = *v20++;
        v12 = v21;
        if ((v21 & 0xF800) == 0xD800)
        {
          if (v18 == 1)
          {
            goto LABEL_42;
          }

          if ((v12 & 0x400) != 0)
          {
            goto LABEL_42;
          }

          v22 = *v20;
          if ((*v20 & 0xFC00) != 0xDC00)
          {
            goto LABEL_42;
          }

          v20 = v2 + 2;
          *v7 = BYTE1(v12);
          v23 = v33;
          v33[1] = v12;
          v23[2] = HIBYTE(v22);
          v23[3] = v22;
          v7 = v23 + 4;
          v24 = v32;
          *v32 = vdupq_n_s32(v15);
          v32 = v24 + 1;
          v33 = v7;
          v15 += 2;
          --v18;
        }

        else
        {
          *v7 = BYTE1(v12);
          v25 = v33;
          v33[1] = v12;
          v7 = v25 + 2;
          v33 = v7;
          v26 = v32;
          v32->i32[0] = v15;
          v26->i32[1] = v15++;
          v32 = &v26->u64[1];
        }

        v2 = v20;
        if (!--v18)
        {
          goto LABEL_38;
        }
      }
    }

LABEL_37:
    v20 = v2;
LABEL_38:
    if (v19 && v9)
    {
      v12 = *v20;
      v2 = v20 + 1;
      if ((v12 & 0xF800) == 0xD800)
      {
        goto LABEL_43;
      }

      LOBYTE(v31) = BYTE1(v12);
      BYTE1(v31) = v12;
      v19 = 2;
      ++v20;
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (!v17)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v20 = v2 + 1;
    v12 = *v2;
    if ((v12 & 0xF800) != 0xD800)
    {
      *v7 = BYTE1(v12);
      v29 = v33;
      v33[1] = v12;
      v7 = v29 + 2;
      ++v2;
      goto LABEL_36;
    }

    if (v18 == 1)
    {
      break;
    }

    if ((v12 & 0x400) != 0)
    {
      break;
    }

    v27 = *v20;
    if ((*v20 & 0xFC00) != 0xDC00)
    {
      break;
    }

    v2 += 2;
    *v7 = BYTE1(v12);
    v28 = v33;
    v33[1] = v12;
    v28[2] = HIBYTE(v27);
    v28[3] = v27;
    v7 = v28 + 4;
    --v18;
LABEL_36:
    v33 = v7;
    if (!--v18)
    {
      goto LABEL_37;
    }
  }

LABEL_42:
  v9 += 2 * v18;
  v2 = v20;
  if (v12)
  {
LABEL_43:
    if ((v12 & 0x400) != 0)
    {
      goto LABEL_47;
    }

    if (v2 >= v5[3])
    {
      v19 = 0;
    }

    else
    {
      v30 = *v2;
      if ((*v2 & 0xFC00) == 0xDC00)
      {
        ++v2;
        LOBYTE(v31) = BYTE1(v12);
        BYTE1(v31) = v12;
        BYTE2(v31) = HIBYTE(v30);
        HIBYTE(v31) = v30;
        v19 = 4;
        v12 = 0;
        goto LABEL_49;
      }

LABEL_47:
      v19 = 0;
      *a2 = 12;
    }

LABEL_49:
    *(v6 + 84) = v12;
    v20 = v2;
  }

  if (v19)
  {
LABEL_51:
    result = sub_195240168(v6, &v31, v19, &v33, v5[5], &v32, v15, a2);
    v7 = v33;
    v9 = *(v5 + 10) - v33;
  }

LABEL_52:
  if (*a2 <= 0 && v20 < v5[3] && !v9)
  {
    *a2 = 15;
  }

  v5[2] = v20;
  v5[4] = v7;
  v5[6] = v32;
  return result;
}

uint64_t sub_195246CC0(void *a1, int *a2)
{
  v2 = a1[1];
  if (*(v2 + 76) >= 8)
  {
    v4 = a1[2];
    v5 = a1[3];
    if (v4 >= v5)
    {
      v7 = 8;
      goto LABEL_7;
    }

    v6 = v4 + 2;
    if ((v4 + 2) > v5)
    {
      *(v2 + 65) = *v4;
      *(a1[1] + 64) = 1;
      a1[2] = v4 + 1;
      v7 = 11;
LABEL_7:
      *a2 = v7;
      return 0xFFFFLL;
    }

    v8 = *v4;
    v3 = v4[1] | (v8 << 8);
    if ((v8 & 0xF8) == 0xD8)
    {
      if ((v8 & 4) != 0)
      {
        goto LABEL_16;
      }

      if ((v4 + 4) > v5)
      {
        v9 = (v2 + 65);
        *(v2 + 64) = v5 - v4;
        v6 = v5;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
        }

        while (v4 != v5);
        v11 = 11;
        goto LABEL_17;
      }

      v12 = *v6;
      if ((v12 & 0xFC) != 0xDC)
      {
LABEL_16:
        *(v2 + 64) = 2;
        *(v2 + 65) = *v4;
        *(v2 + 66) = v4[1];
        v11 = 12;
LABEL_17:
        *a2 = v11;
        v3 = 0xFFFFLL;
        goto LABEL_18;
      }

      v3 = (v4[3] | (v12 << 8)) + (v3 << 10) - 56613888;
      v6 = v4 + 4;
    }

LABEL_18:
    a1[2] = v6;
    return v3;
  }

  return 4294967287;
}

const char *sub_195246DD0(uint64_t a1)
{
  if ((*(a1 + 56) & 0xF) != 0)
  {
    return "UTF-16BE,version=1";
  }

  else
  {
    return "UTF-16BE";
  }
}

void *sub_195246DF0(void *result, int *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = *(v5 + 76);
  if (v4 < v6)
  {
    v8 = 0;
    v9 = result[6];
    while (1)
    {
      if (*a2 > 0)
      {
LABEL_33:
        if (v9 && v8)
        {
          v15 = v3[6];
          while (v9 < v15)
          {
            *v9++ += v8;
          }
        }

        break;
      }

      if (v7 <= 7)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v11 = *v4;
            v12 = *(v5 + 65);
            if (v12 == 254 && v11 == 255)
            {
              if (*(v5 + 48) == &unk_1E7405240)
              {
                v16 = 9;
                LOBYTE(v11) = -1;
LABEL_48:
                *(v5 + 66) = v11;
                *(v5 + 64) = 2;
                v3[2] = v4 + 1;
                *(v5 + 76) = v16;
                *a2 = 18;
                return result;
              }

              v7 = 8;
              goto LABEL_23;
            }

            v13 = *(v5 + 48);
            if (v12 == 255 && v11 == 254)
            {
              if (v13 == &unk_1E7405118)
              {
                v16 = 8;
                LOBYTE(v11) = -2;
                goto LABEL_48;
              }

              v7 = 9;
LABEL_23:
              ++v4;
              *(v5 + 64) = 0;
              v8 = v4 - *(v3 + 4);
            }

            else
            {
              if ((v13 == &unk_1E7405368 || v13 == &unk_1E7405490) && (*(v5 + 56) & 0xF) == 1)
              {
                v16 = 8;
                goto LABEL_48;
              }

              v14 = v3[2];
              if (v4 != v14)
              {
                *(v5 + 64) = 0;
                v4 = v14;
              }

              if (v13 == &unk_1E7405240)
              {
                v7 = 9;
              }

              else
              {
                v7 = 8;
              }
            }

            *(v5 + 76) = v7;
          }
        }

        else
        {
          v10 = *v4++;
          *(v5 + 65) = v10;
          v7 = 1;
          *(v5 + 64) = 1;
        }
      }

      else
      {
        if (v7 == 8)
        {
          v3[2] = v4;
          result = sub_1952464F4(v3, a2);
          goto LABEL_11;
        }

        if (v7 == 9)
        {
          v3[2] = v4;
          result = sub_19524703C(v3, a2);
LABEL_11:
          v4 = v3[2];
        }
      }

      if (v4 >= v6)
      {
        goto LABEL_33;
      }
    }
  }

  v3[2] = v4;
  if (v4 == v6 && *(v3 + 2))
  {
    if (v7 == 9)
    {
      result = sub_19524703C(v3, a2);
    }

    else if (v7 == 8)
    {
      result = sub_1952464F4(v3, a2);
    }
  }

  *(v5 + 76) = v7;
  return result;
}

void *sub_19524703C(void *result, int *a2)
{
  v2 = result[1];
  if (*(v2 + 76) <= 7)
  {
    return sub_195246DF0(result, a2);
  }

  v3 = result[2];
  v4 = result[3];
  v5 = v4 - v3;
  if (v4 != v3 || *(v2 + 72))
  {
    v6 = result[4];
    v7 = result[5];
    if (v6 >= v7)
    {
      *a2 = 15;
      return result;
    }

    v8 = (v7 - v6) >> 1;
    v9 = result[6];
    v10 = *(v2 + 72);
    if (v10)
    {
      v11 = 1;
      *(v2 + 64) = 1;
      v12 = (v2 + 64);
      *(v2 + 65) = v10;
      *(v2 + 72) = 0;
    }

    else
    {
      v12 = (v2 + 64);
      v11 = *(v2 + 64);
      if (!v11)
      {
        v35 = 0;
        v15 = 0;
        v19 = 0;
        goto LABEL_30;
      }
    }

    v13 = 0;
    v14 = v11;
    v15 = 4 - v11;
    v16 = v4 + v11 - v3 - 4;
    v17 = ~v3 + v4;
    while (1)
    {
      v18 = v13;
      *(v2 + 65 + (v14 + v13)) = *(v3 + v13);
      if (v14 + v13 == 1)
      {
        v19 = *(v2 + 65);
        if ((v19 & 0xF800) != 0xD800)
        {
          *v6++ = v19;
          v15 = v13 + 1;
          if (v9)
          {
            *v9++ = -1;
          }

          v35 = 0;
          v19 = 0;
          LODWORD(v8) = v8 - 1;
          goto LABEL_29;
        }

        if ((v19 & 0x400) != 0)
        {
          v5 = v13 + 1;
LABEL_28:
          v35 = v14 + v18 + 1;
          v15 = v5;
LABEL_29:
          *v12 = v35;
          v3 += v18 + 1;
          v5 = v17;
LABEL_30:
          v24 = v5 & 0xFFFFFFFE;
          if (2 * v8 <= v5)
          {
            v24 = 2 * v8;
          }

          if (v19 || !v24)
          {
            goto LABEL_62;
          }

          v5 -= v24;
          v25 = v24 >> 1;
          LODWORD(v8) = v8 - (v24 >> 1);
          if (v9)
          {
            while (1)
            {
              v26 = (v3 + 2);
              v19 = *v3;
              if ((v19 & 0xF800) == 0xD800)
              {
                if ((v19 & 0x400) != 0 || v25 < 2)
                {
                  goto LABEL_58;
                }

                v27 = *(v3 + 3);
                if ((v27 & 0xFC) != 0xDC)
                {
                  goto LABEL_61;
                }

                v28 = *(v3 + 2) | (v27 << 8);
                v3 += 4;
                --v25;
                *v6 = v19;
                v6[1] = v28;
                v6 += 2;
                *v9 = v15;
                v29 = v9 + 1;
                v30 = 4;
                v31 = 8;
              }

              else
              {
                *v6++ = v19;
                v30 = 2;
                v31 = 4;
                v29 = v9;
                v3 += 2;
              }

              v9 = (v9 + v31);
              *v29 = v15;
              v15 += v30;
              if (!--v25)
              {
                goto LABEL_73;
              }
            }
          }

          while (1)
          {
            v26 = (v3 + 2);
            v19 = *v3;
            if ((v19 & 0xF800) == 0xD800)
            {
              if ((v19 & 0x400) != 0 || v25 < 2)
              {
                v9 = 0;
LABEL_58:
                if (!v25)
                {
                  v3 = v26;
                  goto LABEL_73;
                }

LABEL_61:
                v5 = v5 + 2 * v25 - 2;
                LODWORD(v8) = v25 + v8;
                v3 = v26;
LABEL_62:
                if (!v19)
                {
                  goto LABEL_73;
                }

                *(v2 + 65) = v19;
                v35 = 2;
                *(v2 + 64) = 2;
                if ((v19 & 0x400) == 0)
                {
                  v36 = v5 - 2;
                  if (v5 < 2)
                  {
                    v35 = 2;
                    goto LABEL_73;
                  }

                  v37 = *(v3 + 1);
                  if ((v37 & 0xFC) == 0xDC)
                  {
                    v38 = *v3;
                    v3 += 2;
                    v39 = v38 | (v37 << 8);
                    *v6++ = v19;
                    if (v9)
                    {
                      *v9++ = v15;
                    }

                    v35 = 0;
                    *(v2 + 144) = v39;
                    *(v2 + 93) = 1;
                    *(v2 + 64) = 0;
                    v40 = 15;
                    v5 = v36;
LABEL_72:
                    *a2 = v40;
LABEL_73:
                    if (v5 && *a2 <= 0)
                    {
                      if (v8)
                      {
                        v41 = *v3++;
                        *(v2 + 64) = v35 + 1;
                        *(v2 + v35 + 65) = v41;
                      }

                      else
                      {
                        *a2 = 15;
                      }
                    }

                    result[2] = v3;
LABEL_79:
                    result[4] = v6;
                    result[6] = v9;
                    return result;
                  }

                  v5 = 1;
                  v35 = 2;
                }

                v40 = 12;
                goto LABEL_72;
              }

              v32 = *(v3 + 3);
              if ((v32 & 0xFC) != 0xDC)
              {
                v9 = 0;
                goto LABEL_61;
              }

              v33 = *(v3 + 2) | (v32 << 8);
              v3 += 4;
              --v25;
              *v6 = v19;
              v6[1] = v33;
              v6 += 2;
            }

            else
            {
              *v6++ = v19;
              v3 += 2;
            }

            if (!--v25)
            {
              v9 = 0;
              goto LABEL_73;
            }
          }
        }
      }

      else if (v14 + v13 == 3)
      {
        v20 = *(v2 + 68);
        if ((v20 & 0xFC) != 0xDC)
        {
          *a2 = 12;
          if ((~v3 + result[2] - v13) < 2)
          {
            v34 = v3 + v13;
            *(v2 + 72) = *(v2 + 67) | 0x100;
          }

          else
          {
            v34 = v3 + v13 - 1;
          }

          *v12 = 2;
          result[2] = v34;
          goto LABEL_79;
        }

        v21 = *(v2 + 67) | (v20 << 8);
        *v6 = *(v2 + 65);
        v22 = v6 + 1;
        v23 = v8 >= 2;
        LODWORD(v8) = v8 - 2;
        if (v23)
        {
          v22 = v6 + 2;
          v6[1] = v21;
          if (v9)
          {
            *v9 = -1;
            v9 += 2;
          }

          v35 = 0;
          v19 = 0;
        }

        else
        {
          LODWORD(v8) = 0;
          v35 = 0;
          v19 = 0;
          *(v2 + 144) = v21;
          *(v2 + 93) = 1;
          *a2 = 15;
        }

        v17 = v16;
        v6 = v22;
        goto LABEL_29;
      }

      ++v13;
      --v17;
      if (v5 == v18 + 1)
      {
        v17 = 0;
        v19 = 0;
        goto LABEL_28;
      }
    }
  }

  return result;
}

_DWORD *sub_195247458(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v3 = result[14];
  if ((v3 & 0xE) != 0)
  {
    *a3 = 1;
  }

  else
  {
    result[19] = (8 * (result[14] & 1)) ^ 8;
    if (v3)
    {
      result[20] = 1;
    }
  }

  return result;
}

_DWORD *sub_195247494(_DWORD *result, int a2)
{
  v2 = result[14] & 0xF;
  if (a2 > 1 || (result[19] = 8 * (v2 == 0), a2 != 1))
  {
    if (v2 == 1)
    {
      result[20] = 1;
    }
  }

  return result;
}

void *sub_1952474D0(void *result, int *a2)
{
  v2 = result[2];
  v3 = (result[3] - v2) >> 1;
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = result[1];
  if (*(v6 + 80) == 1)
  {
    result = sub_195240168(result[1], byte_19547A85A, 2, result + 4, result[5], result + 6, -1, a2);
    *(v6 + 80) = 0;
  }

  v7 = v5[4];
  v8 = v5[5];
  v37 = v7;
  if (v7 >= v8)
  {
    *a2 = 15;
    return result;
  }

  v35 = 0;
  v9 = v8 - v7;
  v10 = v5[6];
  v36 = v10;
  v11 = *(v6 + 84);
  v12 = v11;
  if (v11 && ((v13 = *v2, v9 >= 4) ? (v14 = (*v2 & 0xFC00) == 56320) : (v14 = 0), v14))
  {
    ++v2;
    LODWORD(v3) = v3 - 1;
    *v7 = v11;
    v7[1] = v13;
    v7 += 2;
    v37 = v7;
    if (v10)
    {
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      *v10++ = v16;
      v36 = v10;
    }

    *(v6 + 84) = 0;
    v15 = 1;
    v9 -= 4;
  }

  else
  {
    v15 = 0;
    if (*(v6 + 84))
    {
      goto LABEL_43;
    }
  }

  v17 = 2 * v3;
  if (2 * v3 > v9)
  {
    v17 = v9 & 0xFFFFFFFE;
  }

  v9 -= v17;
  v18 = v17 >> 1;
  v19 = v3 - (v17 >> 1);
  if (v10)
  {
    if (v17)
    {
      v20 = v2;
      while (1)
      {
        v21 = *v20++;
        v12 = v21;
        if ((v21 & 0xF800) == 0xD800)
        {
          if (v18 == 1)
          {
            goto LABEL_42;
          }

          if ((v12 & 0x400) != 0)
          {
            goto LABEL_42;
          }

          v22 = *v20;
          if ((*v20 & 0xFC00) != 0xDC00)
          {
            goto LABEL_42;
          }

          v20 = v2 + 2;
          *v7 = v12;
          v23 = v12 >> 8;
          v24 = v37;
          *(v37 + 1) = v23;
          v24[1] = v22;
          v7 = v24 + 2;
          v25 = v36;
          *v36 = vdupq_n_s32(v15);
          v36 = v25 + 1;
          v37 = v7;
          v15 += 2;
          --v18;
        }

        else
        {
          *v7 = v12;
          v26 = v12 >> 8;
          v27 = v37;
          *(v37 + 1) = v26;
          v7 = v27 + 1;
          v37 = v27 + 1;
          v28 = v36;
          v36->i32[0] = v15;
          v28->i32[1] = v15++;
          v36 = &v28->u64[1];
        }

        v2 = v20;
        if (!--v18)
        {
          goto LABEL_38;
        }
      }
    }

LABEL_37:
    v20 = v2;
LABEL_38:
    if (v19 && v9)
    {
      v12 = *v20;
      v2 = v20 + 1;
      if ((v12 & 0xF800) == 0xD800)
      {
        goto LABEL_43;
      }

      LOWORD(v35) = v12;
      v19 = 2;
      ++v20;
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (!v17)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v20 = v2 + 1;
    v12 = *v2;
    if ((v12 & 0xF800) != 0xD800)
    {
      *v7 = v12;
      v32 = v12 >> 8;
      v33 = v37;
      *(v37 + 1) = v32;
      v7 = v33 + 1;
      ++v2;
      goto LABEL_36;
    }

    if (v18 == 1)
    {
      break;
    }

    if ((v12 & 0x400) != 0)
    {
      break;
    }

    v29 = *v20;
    if ((*v20 & 0xFC00) != 0xDC00)
    {
      break;
    }

    v2 += 2;
    *v7 = v12;
    v30 = v12 >> 8;
    v31 = v37;
    *(v37 + 1) = v30;
    v31[1] = v29;
    v7 = v31 + 2;
    --v18;
LABEL_36:
    v37 = v7;
    if (!--v18)
    {
      goto LABEL_37;
    }
  }

LABEL_42:
  v9 += 2 * v18;
  v2 = v20;
  if (v12)
  {
LABEL_43:
    if ((v12 & 0x400) != 0)
    {
      goto LABEL_47;
    }

    if (v2 >= v5[3])
    {
      v19 = 0;
    }

    else
    {
      v34 = *v2;
      if ((*v2 & 0xFC00) == 0xDC00)
      {
        ++v2;
        LOWORD(v35) = v12;
        HIWORD(v35) = v34;
        v19 = 4;
        v12 = 0;
        goto LABEL_49;
      }

LABEL_47:
      v19 = 0;
      *a2 = 12;
    }

LABEL_49:
    *(v6 + 84) = v12;
    v20 = v2;
  }

  if (v19)
  {
LABEL_51:
    result = sub_195240168(v6, &v35, v19, &v37, v5[5], &v36, v15, a2);
    v7 = v37;
    v9 = *(v5 + 10) - v37;
  }

LABEL_52:
  if (*a2 <= 0 && v20 < v5[3] && !v9)
  {
    *a2 = 15;
  }

  v5[2] = v20;
  v5[4] = v7;
  v5[6] = v36;
  return result;
}

uint64_t sub_195247868(void *a1, int *a2)
{
  v2 = a1[1];
  if (*(v2 + 76) >= 8)
  {
    v4 = a1[2];
    v5 = a1[3];
    if (v4 >= v5)
    {
      v7 = 8;
      goto LABEL_7;
    }

    v6 = v4 + 2;
    if ((v4 + 2) > v5)
    {
      *(v2 + 65) = *v4;
      *(a1[1] + 64) = 1;
      a1[2] = v4 + 1;
      v7 = 11;
LABEL_7:
      *a2 = v7;
      return 0xFFFFLL;
    }

    v8 = v4[1];
    v3 = *v4 | (v8 << 8);
    if ((v8 & 0xF8) == 0xD8)
    {
      if ((v8 & 4) != 0)
      {
        goto LABEL_16;
      }

      if ((v4 + 4) > v5)
      {
        v9 = (v2 + 65);
        *(v2 + 64) = v5 - v4;
        v6 = v5;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
        }

        while (v4 != v5);
        v11 = 11;
        goto LABEL_17;
      }

      v12 = v4[3];
      if ((v12 & 0xFC) != 0xDC)
      {
LABEL_16:
        *(v2 + 64) = 2;
        *(v2 + 65) = *v4;
        *(v2 + 66) = v4[1];
        v11 = 12;
LABEL_17:
        *a2 = v11;
        v3 = 0xFFFFLL;
        goto LABEL_18;
      }

      v3 = (*v6 | (v12 << 8)) + (v3 << 10) - 56613888;
      v6 = v4 + 4;
    }

LABEL_18:
    a1[2] = v6;
    return v3;
  }

  return 4294967287;
}

const char *sub_19524797C(uint64_t a1)
{
  if ((*(a1 + 56) & 0xF) != 0)
  {
    return "UTF-16LE,version=1";
  }

  else
  {
    return "UTF-16LE";
  }
}

uint64_t sub_19524799C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((*(result + 56) & 0xFu) > 2)
  {
    *a3 = 1;
  }

  else
  {
    if ((*(result + 56) & 0xF) == 2 && !*(a2 + 8))
    {
      *(result + 48) = &unk_1E7405490;
      **(result + 40) = 65023;
    }

    *(result + 76) = 0x100000000;
  }

  return result;
}

uint64_t sub_1952479EC(uint64_t result, int a2)
{
  if (a2 > 1 || (*(result + 76) = 0, a2 != 1))
  {
    *(result + 80) = 1;
  }

  return result;
}

uint64_t sub_195247A08(void *a1, int *a2)
{
  v2 = *(a1[1] + 76);
  if (v2 == 9)
  {
    return sub_195247868(a1, a2);
  }

  if (v2 == 8)
  {
    return sub_195246CC0(a1, a2);
  }

  return 4294967287;
}

const char *sub_195247A30(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = "UTF-16,version=2";
  if ((v1 & 0xF) == 1)
  {
    v2 = "UTF-16,version=1";
  }

  if ((v1 & 0xF) != 0)
  {
    return v2;
  }

  else
  {
    return "UTF-16";
  }
}

void *sub_195247A64(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v4 = result[5];
  v6 = result[1];
  v5 = result[2];
  v7 = v6 + 65;
  LODWORD(v8) = *(v6 + 64);
  if (v8 < 1 || v2 >= v4)
  {
    goto LABEL_6;
  }

  *(v6 + 64) = 0;
  v10 = *(v6 + 72) - 1;
  *(v6 + 72) = 0;
  while (v8 > 3)
  {
LABEL_14:
    if (HIWORD(v10) > 0x10u || (v10 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v8;
      *a2 = 12;
      goto LABEL_23;
    }

    if (HIWORD(v10))
    {
      *v2 = (v10 >> 10) - 10304;
      v14 = v2 + 1;
      v15 = v10 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v4)
      {
        v18 = result[1];
        *(v18 + 144) = v15;
        *(v18 + 93) = 1;
        *a2 = 15;
        v2 = v14;
        goto LABEL_23;
      }

      v2[1] = v15;
      v2 += 2;
    }

    else
    {
      *v2++ = v10;
    }

LABEL_6:
    v10 = 0;
    LODWORD(v8) = 0;
    if (v5 >= v3 || v2 >= v4)
    {
      goto LABEL_23;
    }
  }

  v8 = v8;
  while (v5 < v3)
  {
    v12 = *v5++;
    v10 = v12 | (v10 << 8);
    *(v7 + v8++) = v12;
    if (v8 == 4)
    {
      goto LABEL_14;
    }
  }

  v16 = v10 + 1;
  v17 = result[1];
  *(v17 + 72) = v16;
  *(v17 + 64) = v8;
LABEL_23:
  if (v5 < v3 && v2 >= v4 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v5;
  return result;
}

void *sub_195247BA0(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v5 = result[5];
  v4 = result[6];
  v7 = result[1];
  v6 = result[2];
  v8 = v7 + 65;
  LODWORD(v9) = *(v7 + 64);
  v10 = 0;
  if (v9 < 1 || v2 >= v5)
  {
    goto LABEL_6;
  }

  *(v7 + 64) = 0;
  v12 = *(v7 + 72) - 1;
  *(v7 + 72) = 0;
  while (v9 > 3)
  {
LABEL_14:
    if (HIWORD(v12) > 0x10u || (v12 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v9;
      *a2 = 12;
      goto LABEL_24;
    }

    if (HIWORD(v12))
    {
      *v2 = (v12 >> 10) - 10304;
      *v4 = v10;
      v17 = v4 + 1;
      v18 = v12 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v5)
      {
        v20 = result[1];
        *(v20 + 144) = v18;
        *(v20 + 93) = 1;
        *a2 = 15;
        v4 = v17;
        ++v2;
        goto LABEL_24;
      }

      v2[1] = v18;
      v2 += 2;
      v16 = 8;
    }

    else
    {
      *v2++ = v12;
      v16 = 4;
      v17 = v4;
    }

    v4 = (v4 + v16);
    *v17 = v10;
    v10 += v9;
LABEL_6:
    v12 = 0;
    LODWORD(v9) = 0;
    if (v6 >= v3 || v2 >= v5)
    {
      goto LABEL_24;
    }
  }

  v9 = v9;
  while (v6 < v3)
  {
    v14 = *v6++;
    v12 = v14 | (v12 << 8);
    *(v8 + v9++) = v14;
    if (v9 == 4)
    {
      goto LABEL_14;
    }
  }

  v19 = result[1];
  *(v19 + 72) = v12 + 1;
  *(v19 + 64) = v9;
LABEL_24:
  if (v6 < v3 && v2 >= v5 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v6;
  result[6] = v4;
  return result;
}

uint64_t sub_195247D08(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 >= v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 40);
  result = *(result + 8);
  if (*(result + 80) == 1)
  {
    sub_195240168(result, byte_19547A988, 4, (v5 + 32), v6, (v5 + 48), -1, a2);
    result = *(v5 + 8);
    *(result + 80) = 0;
  }

  v16 = 0;
  v7 = *(v5 + 32);
  v8 = *(result + 84);
  if (!v8)
  {
    goto LABEL_6;
  }

  *(result + 84) = 0;
LABEL_12:
  if (v2 >= v3)
  {
    *(*(v5 + 8) + 84) = v8;
    if (!*(v5 + 2))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = *v2;
    if ((v11 & 0xFC00) == 0xDC00)
    {
      v8 = v11 + (v8 << 10) - 56613888;
      ++v2;
      while (1)
      {
        v12 = 0;
        BYTE1(v16) = BYTE2(v8) & 0x1F;
        BYTE2(v16) = BYTE1(v8);
        HIBYTE(v16) = v8;
        do
        {
          v13 = *(&v16 + v12);
          if (v7 >= v6)
          {
            v14 = *(v5 + 8);
            v15 = *(v14 + 91);
            *(v14 + 91) = v15 + 1;
            *(v14 + v15 + 104) = v13;
            *a2 = 15;
          }

          else
          {
            *v7++ = v13;
          }

          ++v12;
        }

        while (v12 != 4);
LABEL_6:
        if (v2 >= v3 || v7 >= v6)
        {
          goto LABEL_24;
        }

        v10 = *v2++;
        v8 = v10;
        if ((v10 & 0xF800) == 0xD800)
        {
          if ((v8 & 0xDC00) != 0xD800)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

    *(*(v5 + 8) + 84) = v8;
  }

  *a2 = 12;
LABEL_24:
  if (v2 < v3 && v7 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  *(v5 + 32) = v7;
  *(v5 + 16) = v2;
  return result;
}