uint64_t lz4_decode_fast(int8x16_t **a1, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a1;
  while (1)
  {
    v7 = v6;
    v8 = v5;
    if (v5 >= a5 || v6 >= a3)
    {
      break;
    }

    v10 = *v5;
    v9 = v5 + 1;
    v11 = v10 >> 4;
    v12 = (v10 & 0xF) + 4;
    if (v11 > 0xE)
    {
      while (v9 < a5)
      {
        v13 = *v9;
        v9 = (v9 + 1);
        v11 += v13;
        if (v13 != 255)
        {
          v14 = v9;
          v15 = v6;
          v16 = (v9 + v11);
          v17 = v6->u64 + v11;
          if (v16 < a5 && v17 < a3)
          {
            v19 = *v14;
            v20 = v14[1];
            v18 = v14 + 2;
            *v15 = v19;
            v15[1] = v20;
            v21 = v15 + 2;
            do
            {
              v22 = *v18;
              v23 = v18[1];
              v18 += 2;
              *v21 = v22;
              v21[1] = v23;
              v21 += 2;
            }

            while (v17 > v21);
            goto LABEL_13;
          }

          goto LABEL_34;
        }
      }

      break;
    }

    *v6 = *v9;
    v16 = (v9 + v11);
    v17 = v6->u64 + v11;
LABEL_13:
    v25 = *v16;
    v5 = (v16 + 1);
    v24 = v25;
    v26 = (v17 - v25);
    if (v26 < a2)
    {
      v47 = -1;
      goto LABEL_35;
    }

    v27 = v17;
    v6 = (v17 + v12);
    if (v12 == 19)
    {
      while (v5 < a5)
      {
        v28 = *v5++;
        v6 = (v6 + v28);
        if (v28 != 255)
        {
          if (v6 >= a3)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      break;
    }

    if (v12 > 0x10)
    {
LABEL_22:
      if (v24 > 0x1F)
      {
        v36 = *v26;
        v35 = v26 + 1;
        *v27 = v36;
        v37 = v27 + 1;
        do
        {
          v38 = *v35;
          v39 = v35[1];
          v35 += 2;
          *v37 = v38;
          v37[1] = v39;
          v37 += 2;
        }

        while (v6 > v37);
      }

      else if (v24 > 0xF)
      {
        v41 = *v26;
        v40 = v26 + 1;
        *v27 = v41;
        v42 = v27 + 1;
        do
        {
          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          v45 = v42 + 1;
          v46 = *v43;
          v40 = v43 + 1;
          *v45 = v46;
          v42 = v45 + 1;
        }

        while (v6 > v42);
      }

      else
      {
        v29 = &qword_297782B40[4 * v24];
        v30 = vqtbl1q_s8(*v26, *v29);
        v31 = vqtbl1q_s8(*v26, v29[1]);
        v32 = *(qword_297782D40 + v24);
        *v27 = v30;
        v27[1] = v31;
        v33 = (v27 + v32);
        do
        {
          *v33 = v30;
          v33[1] = v31;
          v34 = (v33 + v32);
          *v34 = v30;
          v34[1] = v31;
          v33 = (v34 + v32);
        }

        while (v6 > v33);
      }
    }

    else if (v24 <= 0xF)
    {
      *v27 = vqtbl1q_s8(*v26, *&qword_297782B40[4 * v24]);
    }

    else
    {
      *v27 = *v26;
    }
  }

LABEL_34:
  v47 = 0;
LABEL_35:
  *a4 = v8;
  *a1 = v7;
  return v47;
}

char *lz4_decode(int8x16_t *__dst, unint64_t a2, char *__src, unint64_t a4)
{
  if (a2 < 0x100 || a4 <= 0xFF)
  {
    return LZ4_decompress_safe(__src, __dst->i8, a4, a2);
  }

  v10 = __src;
  v11 = __dst;
  v5 = &__dst->i8[a2];
  v6 = &__src[a4];
  if (lz4_decode_fast(&v11, __dst, __dst[-8].u64 + a2, &v10, &__src[a4 - 128]))
  {
    return 0;
  }

  v8 = v11;
  v9 = lz4_decode_safe(&v11, __dst, v5, &v10, v6);
  if (v9)
  {
    return &v9[v8 - __dst];
  }

  else
  {
    return 0;
  }
}

uint64_t LZ4_compressBound(unsigned int a1)
{
  if (a1 <= 0x7E000000)
  {
    return a1 + a1 / 0xFF + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t LZ4_compress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v119 = *MEMORY[0x29EDCA608];
  bzero(v118, 0x4000uLL);
  if (v6 > 65546)
  {
    if (v6 <= 0x7E000000)
    {
      v115 = v6;
      v57 = v9 + v6;
      v58 = v8;
      v59 = v57 - 12;
      v60 = (v9 + 2);
      v109 = v57 - 8;
      v111 = v57 - 5;
      v113 = v57;
      v107 = v57 - 6;
      v11 = v9;
      v117 = v58;
LABEL_68:
      v61 = v11 + 1;
      v62 = *(v11 + 1);
      v63 = 68;
      while (1)
      {
        v64 = v60;
        v65 = (-1640531535 * v62) >> 20;
        v62 = *v60;
        v66 = *&v118[2 * v65];
        *&v118[2 * v65] = v61 - v9;
        if (v9 + v66 + 0xFFFF >= v61 && *(v9 + v66) == *v61)
        {
          break;
        }

        v67 = v63++ >> 6;
        v60 = (v60 + v67);
        v61 = v64;
        if (v60 > v59)
        {
          goto LABEL_121;
        }
      }

      v68 = 0;
      v69 = v61 - v11;
      v70 = v61 - v11 - 270;
      v71 = (v61 << 32) - (v11 << 32);
      v72 = v61 - v11 - 15;
      do
      {
        v73 = v72;
        v74 = v68;
        v75 = v71;
        v76 = v9 + v66 + v68;
        v77 = v61 + v74;
        if (v76 <= v9 || v77 <= v11)
        {
          break;
        }

        v79 = *(v76 - 1);
        --v72;
        v68 = v74 - 1;
        v71 -= 0x100000000;
      }

      while (*(v77 - 1) == v79);
      v80 = v58 + 1;
      if (v69 + v74 < 15)
      {
        *v58 = 16 * (v77 - v11);
      }

      else
      {
        *v58 = -16;
        if ((v69 + v74) <= 0x10D)
        {
          LOBYTE(v61) = v74 + v61 - v11 - 15;
        }

        else
        {
          v81 = v69 + 239;
          if (v73 >= 0x1FD)
          {
            v82 = 509;
          }

          else
          {
            v82 = v73;
          }

          if (v73 >= 509)
          {
            v83 = 509;
          }

          else
          {
            v83 = v73;
          }

          v103 = v81;
          v105 = v83;
          v101 = v70;
          memset(v80, 255, (v81 - v82 + v74) / 0xFFu + 1);
          v80 = &v58[(v103 - v105 + v74) / 0xFFuLL + 2];
          LODWORD(v61) = -255 * ((v103 - v105 + v74) / 0xFFu) + v101 + v74;
        }

        *v80 = v61;
        v80 = (v80 + 1);
      }

      v84 = (v9 + v66 + v74);
      v85 = (v80 + (v75 >> 32));
      do
      {
        v86 = *v11;
        v11 += 8;
        *v80++ = v86;
      }

      while (v80 < v85);
      v87 = v58;
      while (1)
      {
        *v85 = v77 - v84;
        v58 = v85 + 1;
        v88 = v77 + 4;
        v89 = v84 + 1;
        v11 = v77 + 4;
        if (v77 + 4 >= v59)
        {
LABEL_98:
          if (v11 < v109 && *v89 == *v11)
          {
            ++v89;
            v11 += 4;
          }

          if (v11 < v107 && *v89 == *v11)
          {
            v89 = (v89 + 2);
            v11 += 2;
          }

          if (v11 < v111 && *v89 == *v11)
          {
            ++v11;
          }
        }

        else
        {
          while (*v89 == *v11)
          {
            v11 += 8;
            v89 += 2;
            if (v11 >= v59)
            {
              goto LABEL_98;
            }
          }

          v11 += __clz(__rbit64(*v11 ^ *v89)) >> 3;
        }

        v90 = v11 - v88;
        v45 = __OFSUB__(v11 - v88, 15);
        v91 = v11 - v88 - 15;
        if (((v91 & 0x80000000) != 0) != v45)
        {
          *v87 += v90;
        }

        else
        {
          *v87 += 15;
          if (v91 >= 0x1FE)
          {
            v92 = v11 - v77 - 529;
            v93 = v92 / 0x1FE;
            memset(v85 + 1, 255, v93 * 2 + 2);
            v91 = v92 % 0x1FE;
            v58 = &v85[v93 + 2];
          }

          if (v91 >= 0xFF)
          {
            *v58++ = -1;
            LOBYTE(v91) = v91 + 1;
          }

          *v58++ = v91;
        }

        if (v11 > v59)
        {
          break;
        }

        *&v118[2 * ((-1640531535 * *(v11 - 2)) >> 20)] = v11 - 2 - v9;
        v94 = (-1640531535 * *v11) >> 20;
        v84 = (v9 + *&v118[2 * v94]);
        *&v118[2 * v94] = v11 - v9;
        if (v84 + 0xFFFF < v11 || *v84 != *v11)
        {
          v60 = (v11 + 2);
          if (v11 + 2 <= v59)
          {
            goto LABEL_68;
          }

          break;
        }

        *v58 = 0;
        v85 = v58 + 1;
        v87 = v58;
        v77 = v11;
      }

LABEL_121:
      v51 = v113 - v11;
      v95 = v113 - v11 - 15;
      if (v113 - v11 < 15)
      {
        *v58 = 16 * v51;
        LODWORD(v8) = v117;
      }

      else
      {
        *v58 = -16;
        v96 = v58 + 1;
        LODWORD(v8) = v117;
        if (v51 >= 0x10E)
        {
          v97 = v9 + v115;
          if (v95 >= 0x1FD)
          {
            v95 = 509;
          }

          v98 = (v97 - v11 - v95 + 239) / 0xFFuLL;
          memset(v96, 255, v98 + 1);
          LOBYTE(v95) = v97 - v11 + v98 - 14;
          v96 = &v58[v98 + 2];
        }

        *v96 = v95;
        v58 = v96;
      }

      v99 = v58 + 1;
      goto LABEL_131;
    }

    return 0;
  }

  if (v6 > 0x7E000000)
  {
    return 0;
  }

  v10 = v9 + v6;
  v11 = v9;
  v12 = v8;
  if (v6 >= 0xE)
  {
    v114 = v6;
    v12 = v8;
    v13 = v10 - 12;
    v14 = (v9 + 2);
    v108 = v10 - 8;
    v110 = v10 - 5;
    v112 = v9 + v6;
    v106 = v10 - 6;
    v11 = v9;
    v116 = v12;
LABEL_5:
    v15 = v11 + 1;
    v16 = *(v11 + 1);
    v17 = 68;
    while (1)
    {
      v18 = v14;
      v19 = (-1640531535 * v16) >> 19;
      v16 = *v14;
      v20 = v118[v19];
      v118[v19] = v15 - v9;
      if (v9 + v20 + 0xFFFF >= v15 && *(v9 + v20) == *v15)
      {
        break;
      }

      v21 = v17++ >> 6;
      v14 = (v14 + v21);
      v15 = v18;
      if (v14 > v13)
      {
        goto LABEL_58;
      }
    }

    v22 = 0;
    v23 = v15 - v11;
    v24 = v15 - v11 - 270;
    v25 = (v15 << 32) - (v11 << 32);
    v26 = v15 - v11 - 15;
    do
    {
      v27 = v26;
      v28 = v22;
      v29 = v25;
      v30 = v9 + v20 + v22;
      v31 = v15 + v28;
      if (v30 <= v9 || v31 <= v11)
      {
        break;
      }

      v33 = *(v30 - 1);
      --v26;
      v22 = v28 - 1;
      v25 -= 0x100000000;
    }

    while (*(v31 - 1) == v33);
    v34 = v12 + 1;
    if (v23 + v28 < 15)
    {
      *v12 = 16 * (v31 - v11);
    }

    else
    {
      *v12 = -16;
      if ((v23 + v28) <= 0x10D)
      {
        LOBYTE(v15) = v28 + v15 - v11 - 15;
      }

      else
      {
        v35 = v23 + 239;
        if (v27 >= 0x1FD)
        {
          v36 = 509;
        }

        else
        {
          v36 = v27;
        }

        if (v27 >= 509)
        {
          v37 = 509;
        }

        else
        {
          v37 = v27;
        }

        v102 = v35;
        v104 = v37;
        v100 = v24;
        memset(v34, 255, (v35 - v36 + v28) / 0xFFu + 1);
        v34 = &v12[(v102 - v104 + v28) / 0xFFuLL + 2];
        LODWORD(v15) = -255 * ((v102 - v104 + v28) / 0xFFu) + v100 + v28;
      }

      *v34 = v15;
      v34 = (v34 + 1);
    }

    v38 = (v9 + v20 + v28);
    v39 = (v34 + (v29 >> 32));
    do
    {
      v40 = *v11;
      v11 += 8;
      *v34++ = v40;
    }

    while (v34 < v39);
    v41 = v12;
    while (1)
    {
      *v39 = v31 - v38;
      v12 = v39 + 1;
      v42 = v31 + 4;
      v43 = v38 + 1;
      v11 = v31 + 4;
      if (v31 + 4 >= v13)
      {
LABEL_35:
        if (v11 < v108 && *v43 == *v11)
        {
          ++v43;
          v11 += 4;
        }

        if (v11 < v106 && *v43 == *v11)
        {
          v43 = (v43 + 2);
          v11 += 2;
        }

        if (v11 < v110 && *v43 == *v11)
        {
          ++v11;
        }
      }

      else
      {
        while (*v43 == *v11)
        {
          v11 += 8;
          v43 += 2;
          if (v11 >= v13)
          {
            goto LABEL_35;
          }
        }

        v11 += __clz(__rbit64(*v11 ^ *v43)) >> 3;
      }

      v44 = v11 - v42;
      v45 = __OFSUB__(v11 - v42, 15);
      v46 = v11 - v42 - 15;
      if (((v46 & 0x80000000) != 0) != v45)
      {
        *v41 += v44;
      }

      else
      {
        *v41 += 15;
        if (v46 >= 0x1FE)
        {
          v47 = v11 - v31 - 529;
          v48 = v47 / 0x1FE;
          memset(v39 + 1, 255, v48 * 2 + 2);
          v46 = v47 % 0x1FE;
          v12 = &v39[v48 + 2];
        }

        if (v46 >= 0xFF)
        {
          *v12++ = -1;
          LOBYTE(v46) = v46 + 1;
        }

        *v12++ = v46;
      }

      if (v11 > v13)
      {
        break;
      }

      v118[(-1640531535 * *(v11 - 2)) >> 19] = v11 - 2 - v9;
      v49 = *v11;
      v50 = (-1640531535 * *v11) >> 19;
      v38 = (v9 + v118[v50]);
      v118[v50] = v11 - v9;
      if (v38 + 0xFFFF < v11 || *v38 != v49)
      {
        v14 = (v11 + 2);
        if (v11 + 2 <= v13)
        {
          goto LABEL_5;
        }

        break;
      }

      *v12 = 0;
      v39 = v12 + 1;
      v41 = v12;
      v31 = v11;
    }

LABEL_58:
    LODWORD(v8) = v116;
    v6 = v114;
    v10 = v112;
  }

  v51 = v10 - v11;
  v45 = __OFSUB__(v10 - v11, 15);
  v52 = v10 - v11 - 15;
  if (v52 < 0 != v45)
  {
    *v12 = 16 * v51;
  }

  else
  {
    *v12 = -16;
    v53 = v12 + 1;
    if (v51 >= 0x10E)
    {
      v54 = v9 + v6;
      if (v52 >= 0x1FD)
      {
        v52 = 509;
      }

      v55 = (v54 - v11 - v52 + 239) / 0xFFuLL;
      memset(v53, 255, v55 + 1);
      LOBYTE(v52) = v54 - v11 + v55 - 14;
      v53 = &v12[v55 + 2];
    }

    *v53 = v52;
    v12 = v53;
  }

  v99 = v12 + 1;
LABEL_131:
  memcpy(v99, v11, v51);
  return (v99 + v51 - v8);
}

uint64_t LZ4_compress_withState(unsigned int *a1, _DWORD *a2, _BYTE *a3, unsigned int a4)
{
  if ((a1 & 3) != 0)
  {
    return 0;
  }

  bzero(a1, 0x4000uLL);
  if (a4 > 65546)
  {
    if (a4 <= 0x7E000000)
    {
      v112 = a4;
      v12 = a2 + a4;
      v13 = (v12 - 12);
      v14 = (a2 + 2);
      a1[(-1640531535 * *a2) >> 20] = 0;
      v106 = v12 - 8;
      v108 = v12 - 5;
      v110 = v12;
      v104 = v12 - 6;
      v10 = a2;
      v114 = a3;
      v15 = a3;
LABEL_10:
      v16 = v10 + 1;
      v17 = *(v10 + 1);
      v18 = 68;
      while (1)
      {
        v19 = v14;
        v20 = (-1640531535 * v17) >> 20;
        v17 = *v14;
        v21 = a1[v20];
        a1[v20] = v16 - a2;
        if (a2 + v21 + 0xFFFF >= v16 && *(a2 + v21) == *v16)
        {
          break;
        }

        v22 = v18++ >> 6;
        v14 = (v14 + v22);
        v16 = v19;
        if (v14 > v13)
        {
          goto LABEL_63;
        }
      }

      v23 = 0;
      v24 = v16 - v10;
      v25 = v16 - v10 - 270;
      v26 = (v16 << 32) - (v10 << 32);
      v27 = v16 - v10 - 15;
      do
      {
        v28 = v27;
        v29 = v23;
        v30 = v26;
        v31 = a2 + v21 + v23;
        v32 = v16 + v29;
        if (v31 <= a2 || v32 <= v10)
        {
          break;
        }

        v34 = *(v31 - 1);
        --v27;
        v23 = v29 - 1;
        v26 -= 0x100000000;
      }

      while (*(v32 - 1) == v34);
      v35 = v15 + 1;
      if (v24 + v29 < 15)
      {
        *v15 = 16 * (v32 - v10);
      }

      else
      {
        *v15 = -16;
        if ((v24 + v29) <= 0x10D)
        {
          LOBYTE(v16) = v29 + v16 - v10 - 15;
        }

        else
        {
          v36 = v24 + 239;
          if (v28 >= 0x1FD)
          {
            v37 = 509;
          }

          else
          {
            v37 = v28;
          }

          if (v28 >= 509)
          {
            v38 = 509;
          }

          else
          {
            v38 = v28;
          }

          v100 = v36;
          v102 = v38;
          v98 = v25;
          memset(v35, 255, (v36 - v37 + v29) / 0xFFu + 1);
          v35 = &v15[(v100 - v102 + v29) / 0xFFuLL + 2];
          LODWORD(v16) = -255 * ((v100 - v102 + v29) / 0xFFu) + v98 + v29;
        }

        *v35 = v16;
        v35 = (v35 + 1);
      }

      v39 = a2 + v21 + v29;
      v40 = (v35 + (v30 >> 32));
      do
      {
        v41 = *v10;
        v10 += 8;
        *v35++ = v41;
      }

      while (v35 < v40);
      v42 = v15;
      while (1)
      {
        *v40 = v32 - v39;
        v15 = v40 + 1;
        v43 = v32 + 4;
        v44 = v39 + 4;
        v10 = v32 + 4;
        if (v32 + 4 >= v13)
        {
LABEL_40:
          if (v10 < v106 && *v44 == *v10)
          {
            ++v44;
            v10 += 4;
          }

          if (v10 < v104 && *v44 == *v10)
          {
            v44 = (v44 + 2);
            v10 += 2;
          }

          if (v10 < v108 && *v44 == *v10)
          {
            ++v10;
          }
        }

        else
        {
          while (*v44 == *v10)
          {
            v10 += 8;
            v44 += 2;
            if (v10 >= v13)
            {
              goto LABEL_40;
            }
          }

          v10 += __clz(__rbit64(*v10 ^ *v44)) >> 3;
        }

        v45 = v10 - v43;
        v46 = __OFSUB__(v10 - v43, 15);
        v47 = v10 - v43 - 15;
        if (((v47 & 0x80000000) != 0) != v46)
        {
          *v42 += v45;
        }

        else
        {
          *v42 += 15;
          if (v47 >= 0x1FE)
          {
            v48 = v10 - v32 - 529;
            v49 = v48 / 0x1FE;
            memset(v40 + 1, 255, v49 * 2 + 2);
            v47 = v48 % 0x1FE;
            v15 = &v40[v49 + 2];
          }

          if (v47 >= 0xFF)
          {
            *v15++ = -1;
            LOBYTE(v47) = v47 + 1;
          }

          *v15++ = v47;
        }

        if (v10 > v13)
        {
          break;
        }

        a1[(-1640531535 * *(v10 - 2)) >> 20] = v10 - 2 - a2;
        v50 = (-1640531535 * *v10) >> 20;
        v39 = a2 + a1[v50];
        a1[v50] = v10 - a2;
        if ((v39 + 0xFFFF) < v10 || *v39 != *v10)
        {
          v14 = (v10 + 2);
          if (v10 + 2 <= v13)
          {
            goto LABEL_10;
          }

          break;
        }

        *v15 = 0;
        v40 = v15 + 1;
        v42 = v15;
        v32 = v10;
      }

LABEL_63:
      v51 = &v110[-v10];
      v52 = v110 - v10 - 15;
      if (v110 - v10 < 15)
      {
        *v15 = 16 * v51;
        LODWORD(a3) = v114;
      }

      else
      {
        *v15 = -16;
        v53 = v15 + 1;
        LODWORD(a3) = v114;
        if (v51 >= 0x10E)
        {
          v54 = a2 + v112;
          if (v52 >= 0x1FD)
          {
            v52 = 509;
          }

          v55 = (v54 - v10 - v52 + 239) / 0xFFuLL;
          memset(v53, 255, v55 + 1);
          LOBYTE(v52) = v54 - v10 + v55 - 14;
          v53 = &v15[v55 + 2];
        }

        *v53 = v52;
        v15 = v53;
      }

      v97 = v15 + 1;
      goto LABEL_135;
    }

    return 0;
  }

  if (a4 > 0x7E000000)
  {
    return 0;
  }

  v9 = a2 + a4;
  if (a4 < 0xD || (*(a1 + ((-1640531535 * *a2) >> 19)) = 0, a4 == 13))
  {
    v10 = a2;
    v11 = a3;
  }

  else
  {
    v113 = a4;
    v56 = (v9 - 12);
    v57 = (a2 + 2);
    v107 = v9 - 8;
    v109 = v9 - 5;
    v111 = a2 + a4;
    v105 = v9 - 6;
    v10 = a2;
    v115 = a3;
    v11 = a3;
LABEL_71:
    v58 = v10 + 1;
    v59 = *(v10 + 1);
    v60 = 68;
    while (1)
    {
      v61 = v57;
      v62 = (-1640531535 * v59) >> 19;
      v59 = *v57;
      v63 = *(a1 + v62);
      *(a1 + v62) = v58 - a2;
      if (a2 + v63 + 0xFFFF >= v58 && *(a2 + v63) == *v58)
      {
        break;
      }

      v64 = v60++ >> 6;
      v57 = (v57 + v64);
      v58 = v61;
      if (v57 > v56)
      {
        goto LABEL_124;
      }
    }

    v65 = 0;
    v66 = v58 - v10;
    v67 = v58 - v10 - 270;
    v68 = (v58 << 32) - (v10 << 32);
    v69 = v58 - v10 - 15;
    do
    {
      v70 = v69;
      v71 = v65;
      v72 = v68;
      v73 = a2 + v63 + v65;
      v74 = v58 + v71;
      if (v73 <= a2 || v74 <= v10)
      {
        break;
      }

      v76 = *(v73 - 1);
      --v69;
      v65 = v71 - 1;
      v68 -= 0x100000000;
    }

    while (*(v74 - 1) == v76);
    v77 = v11 + 1;
    if (v66 + v71 < 15)
    {
      *v11 = 16 * (v74 - v10);
    }

    else
    {
      *v11 = -16;
      if ((v66 + v71) <= 0x10D)
      {
        LOBYTE(v58) = v71 + v58 - v10 - 15;
      }

      else
      {
        v78 = v66 + 239;
        if (v70 >= 0x1FD)
        {
          v79 = 509;
        }

        else
        {
          v79 = v70;
        }

        if (v70 >= 509)
        {
          v80 = 509;
        }

        else
        {
          v80 = v70;
        }

        v101 = v78;
        v103 = v80;
        v99 = v67;
        memset(v77, 255, (v78 - v79 + v71) / 0xFFu + 1);
        v77 = &v11[(v101 - v103 + v71) / 0xFFuLL + 2];
        LODWORD(v58) = -255 * ((v101 - v103 + v71) / 0xFFu) + v99 + v71;
      }

      *v77 = v58;
      v77 = (v77 + 1);
    }

    v81 = a2 + v63 + v71;
    v82 = (v77 + (v72 >> 32));
    do
    {
      v83 = *v10;
      v10 += 8;
      *v77++ = v83;
    }

    while (v77 < v82);
    v84 = v11;
    while (1)
    {
      *v82 = v74 - v81;
      v11 = v82 + 1;
      v85 = v74 + 4;
      v86 = v81 + 4;
      v10 = v74 + 4;
      if (v74 + 4 >= v56)
      {
LABEL_101:
        if (v10 < v107 && *v86 == *v10)
        {
          ++v86;
          v10 += 4;
        }

        if (v10 < v105 && *v86 == *v10)
        {
          v86 = (v86 + 2);
          v10 += 2;
        }

        if (v10 < v109 && *v86 == *v10)
        {
          ++v10;
        }
      }

      else
      {
        while (*v86 == *v10)
        {
          v10 += 8;
          v86 += 2;
          if (v10 >= v56)
          {
            goto LABEL_101;
          }
        }

        v10 += __clz(__rbit64(*v10 ^ *v86)) >> 3;
      }

      v87 = v10 - v85;
      v46 = __OFSUB__(v10 - v85, 15);
      v88 = v10 - v85 - 15;
      if (((v88 & 0x80000000) != 0) != v46)
      {
        *v84 += v87;
      }

      else
      {
        *v84 += 15;
        if (v88 >= 0x1FE)
        {
          v89 = v10 - v74 - 529;
          v90 = v89 / 0x1FE;
          memset(v82 + 1, 255, v90 * 2 + 2);
          v88 = v89 % 0x1FE;
          v11 = &v82[v90 + 2];
        }

        if (v88 >= 0xFF)
        {
          *v11++ = -1;
          LOBYTE(v88) = v88 + 1;
        }

        *v11++ = v88;
      }

      if (v10 > v56)
      {
        break;
      }

      *(a1 + ((-1640531535 * *(v10 - 2)) >> 19)) = v10 - 2 - a2;
      v91 = *v10;
      v92 = (-1640531535 * *v10) >> 19;
      v81 = a2 + *(a1 + v92);
      *(a1 + v92) = v10 - a2;
      if ((v81 + 0xFFFF) < v10 || *v81 != v91)
      {
        v57 = (v10 + 2);
        if (v10 + 2 <= v56)
        {
          goto LABEL_71;
        }

        break;
      }

      *v11 = 0;
      v82 = v11 + 1;
      v84 = v11;
      v74 = v10;
    }

LABEL_124:
    LODWORD(a3) = v115;
    a4 = v113;
    v9 = v111;
  }

  v51 = &v9[-v10];
  v93 = v9 - v10 - 15;
  if (v9 - v10 < 15)
  {
    *v11 = 16 * v51;
  }

  else
  {
    *v11 = -16;
    v94 = v11 + 1;
    if (v51 >= 0x10E)
    {
      v95 = a2 + a4;
      if (v93 >= 0x1FD)
      {
        v93 = 509;
      }

      v96 = (v95 - v10 - v93 + 239) / 0xFFuLL;
      memset(v94, 255, v96 + 1);
      LOBYTE(v93) = v95 - v10 + v96 - 14;
      v94 = &v11[v96 + 2];
    }

    *v94 = v93;
    v11 = v94;
  }

  v97 = v11 + 1;
LABEL_135:
  memcpy(v97, v10, v51);
  return (v97 + v51 - a3);
}

uint64_t LZ4_resetStreamState(void *a1, uint64_t a2)
{
  if ((a1 & 3) != 0)
  {
    return 1;
  }

  bzero(a1, 0x4000uLL);
  result = 0;
  a1[2048] = a2;
  a1[2049] = a2;
  a1[2050] = a2;
  return result;
}

void *LZ4_create(uint64_t a1)
{
  v2 = calloc(1uLL, 0x4018uLL);
  bzero(v2, 0x4000uLL);
  v2[2048] = a1;
  v2[2049] = a1;
  v2[2050] = a1;
  return v2;
}

uint64_t LZ4_slideInputBuffer(void *a1)
{
  v2 = a1[2050];
  v3 = a1[2048];
  v4 = v3 - v2 + 0x10000;
  v5 = a1[2049];
  v6 = (v2 - 0x10000);
  if (v4 > 0 || (v2 - v5) >= 0xE0000001)
  {
    v8 = 0;
    v9 = v6 - v5;
    v10 = vdupq_n_s64(v9);
    v11 = vdupq_n_s32(v9);
    do
    {
      v12 = *&a1[v8];
      v13.i64[0] = v12.u32[0];
      v13.i64[1] = v12.u32[1];
      v14 = v13;
      v13.i64[0] = v12.u32[2];
      v13.i64[1] = v12.u32[3];
      *&a1[v8] = vbicq_s8(vsubq_s32(v12, v11), vuzp1q_s32(vcgtq_u64(v10, v14), vcgtq_u64(v10, v13)));
      v8 += 2;
    }

    while (v8 != 2048);
    memcpy(v3, v6, 0x10000uLL);
    v15 = a1[2048];
    a1[2049] = v15;
    result = v15 + 0x10000;
    a1[2050] = v15 + 0x10000;
  }

  else
  {
    memcpy(v3, v6, 0x10000uLL);
    result = a1[2050] + v4;
    a1[2050] = result;
    a1[2049] += v4;
  }

  return result;
}

uint64_t LZ4_compress_continue(uint64_t a1, char *__src, _BYTE *a3, unsigned int a4)
{
  if (a4 > 0x7E000000)
  {
    return 0;
  }

  if (*(a1 + 16400) != __src)
  {
    return 0;
  }

  v7 = *(a1 + 16392);
  v8 = *(a1 + 0x4000);
  v9 = &__src[a4];
  *(a1 + 16400) = v9;
  v59 = __src;
  if (a4 >= 0xD)
  {
    v61 = &__src[a4];
    *(a1 + 4 * ((-1640531535 * *__src) >> 20)) = __src - v7;
    if (a4 == 13)
    {
      v10 = __src;
      v11 = a3;
    }

    else
    {
      v11 = a3;
      v12 = (v61 - 12);
      v13 = __src + 2;
      v10 = __src;
      v58 = v11;
      v62 = v8;
LABEL_9:
      v14 = v10 + 1;
      v15 = *(v10 + 1);
      v16 = 68;
      while (1)
      {
        v17 = v13;
        v18 = (-1640531535 * v15) >> 20;
        v15 = *v13;
        v19 = *(a1 + 4 * v18);
        *(a1 + 4 * v18) = v14 - v7;
        if (v7 + v19 + 0xFFFF >= v14 && *(v7 + v19) == *v14)
        {
          break;
        }

        v20 = v16++ >> 6;
        v13 += v20;
        v14 = v17;
        if (v13 > v12)
        {
          goto LABEL_62;
        }
      }

      v21 = 0;
      v22 = v14 - v10;
      v23 = v14 - v10 - 270;
      v24 = (v14 << 32) - (v10 << 32);
      v25 = v14 - v10 - 15;
      do
      {
        v26 = v25;
        v27 = v21;
        v28 = v24;
        v29 = v7 + v19 + v21;
        v30 = v14 + v27;
        if (v14 + v27 <= v10 || v29 <= v8)
        {
          break;
        }

        v32 = *(v29 - 1);
        --v25;
        v21 = v27 - 1;
        v24 -= 0x100000000;
      }

      while (*(v30 - 1) == v32);
      v33 = v11 + 1;
      if (v22 + v27 < 15)
      {
        *v11 = 16 * (v14 + v27 - v10);
      }

      else
      {
        *v11 = -16;
        if ((v22 + v27) <= 0x10D)
        {
          LOBYTE(v14) = v27 + v14 - v10 - 15;
        }

        else
        {
          v34 = v22 + 239;
          if (v26 >= 0x1FD)
          {
            v35 = 509;
          }

          else
          {
            v35 = v26;
          }

          if (v26 >= 509)
          {
            v36 = 509;
          }

          else
          {
            v36 = v26;
          }

          v56 = v34;
          v57 = v36;
          v55 = v23;
          memset(v33, 255, (v34 - v35 + v27) / 0xFFu + 1);
          v8 = v62;
          v33 = &v11[(v56 - v57 + v27) / 0xFFuLL + 2];
          LODWORD(v14) = -255 * ((v56 - v57 + v27) / 0xFFu) + v55 + v27;
        }

        *v33 = v14;
        v33 = (v33 + 1);
      }

      v37 = (v7 + v19 + v27);
      v38 = (v33 + (v28 >> 32));
      do
      {
        v39 = *v10;
        v10 += 8;
        *v33++ = v39;
      }

      while (v33 < v38);
      v40 = v11;
      while (1)
      {
        *v38 = v30 - v37;
        v11 = v38 + 1;
        v41 = v30 + 4;
        v42 = v37 + 1;
        v10 = v30 + 4;
        if (v30 + 4 >= v12)
        {
LABEL_39:
          if (v10 < (v61 - 8) && *v42 == *v10)
          {
            ++v42;
            v10 += 4;
          }

          if (v10 < (v61 - 6) && *v42 == *v10)
          {
            v42 = (v42 + 2);
            v10 += 2;
          }

          if (v10 < (v61 - 5) && *v42 == *v10)
          {
            ++v10;
          }
        }

        else
        {
          while (*v42 == *v10)
          {
            v10 += 8;
            v42 += 2;
            if (v10 >= v12)
            {
              goto LABEL_39;
            }
          }

          v10 += __clz(__rbit64(*v10 ^ *v42)) >> 3;
        }

        v43 = v10 - v41;
        v44 = __OFSUB__(v10 - v41, 15);
        v45 = v10 - v41 - 15;
        if (((v45 & 0x80000000) != 0) != v44)
        {
          *v40 += v43;
        }

        else
        {
          *v40 += 15;
          if (v45 >= 0x1FE)
          {
            v46 = v10 - v30 - 529;
            v47 = v46 / 0x1FE;
            memset(v38 + 1, 255, v47 * 2 + 2);
            v8 = v62;
            v45 = v46 % 0x1FE;
            v11 = &v38[v47 + 2];
          }

          if (v45 >= 0xFF)
          {
            *v11++ = -1;
            LOBYTE(v45) = v45 + 1;
          }

          *v11++ = v45;
        }

        if (v10 > v12)
        {
          break;
        }

        *(a1 + 4 * ((-1640531535 * *(v10 - 2)) >> 20)) = v10 - 2 - v7;
        v48 = (-1640531535 * *v10) >> 20;
        v37 = (v7 + *(a1 + 4 * v48));
        *(a1 + 4 * v48) = v10 - v7;
        if (v37 + 0xFFFF < v10 || *v37 != *v10)
        {
          v13 = (v10 + 2);
          if (v10 + 2 <= v12)
          {
            goto LABEL_9;
          }

          break;
        }

        *v11 = 0;
        v38 = v11 + 1;
        v40 = v11;
        v30 = v10;
      }

LABEL_62:
      LODWORD(a3) = v58;
    }

    v9 = v61;
  }

  else
  {
    v10 = __src;
    v11 = a3;
  }

  v49 = &v9[-v10];
  v44 = __OFSUB__(v9 - v10, 15);
  v50 = v9 - v10 - 15;
  if (v50 < 0 != v44)
  {
    *v11 = 16 * v49;
  }

  else
  {
    *v11 = -16;
    v51 = v11 + 1;
    if (v49 >= 0x10E)
    {
      v52 = v59 + a4;
      if (v50 >= 0x1FD)
      {
        v50 = 509;
      }

      v53 = (v52 - v10 - v50 + 239) / 0xFFuLL;
      memset(v51, 255, v53 + 1);
      LOBYTE(v50) = v52 - v10 + v53 - 14;
      v51 = &v11[v53 + 2];
    }

    *v51 = v50;
    v11 = v51;
  }

  v54 = v11 + 1;
  memcpy(v54, v10, v49);
  return (v54 + v49 - a3);
}

uint64_t LZ4_decompress_safe(unsigned __int8 *__src, char *__dst, int a3, int a4)
{
  if (a4)
  {
    v6 = &__src[a3];
    v7 = &__dst[a4];
    v8 = v7 - 12;
    v9 = v7 - 8;
    v10 = v7 - 5;
    v11 = __dst;
    v12 = __src;
    while (1)
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 >> 4;
      if (v15 == 15)
      {
        v15 = 15;
        if (v12 < v6)
        {
          do
          {
            v17 = *v12++;
            v16 = v17;
            v15 += v17;
          }

          while (v12 < v6 && v16 == 255);
        }
      }

      v18 = &v11[v15];
      v19 = &v12[v15];
      if (&v11[v15] > v8 || v19 > (v6 - 8))
      {
        break;
      }

      do
      {
        v21 = *v12;
        v12 += 8;
        *v11 = v21;
        v11 += 8;
        v15 -= 8;
      }

      while (v11 < v18);
      v22 = &v12[v15];
      v23 = *v22;
      v12 = v22 + 2;
      v24 = &v18[-v23];
      if (v24 < __dst)
      {
        return (~v12 + __src);
      }

      v25 = v13 & 0xF;
      if ((v13 & 0xF) == 0xF)
      {
        v25 = 15;
        do
        {
          if (v12 >= v6 - 6)
          {
            break;
          }

          v26 = *v12++;
          v25 += v26;
        }

        while (v26 == 255);
      }

      if (v18 - v24 <= 7)
      {
        v35 = v10;
        v36 = v9;
        LZ4_decompress_safe_cold_1(v18 - v24, v24, v18);
        v10 = v35;
        v9 = v36;
        v27 = v37;
      }

      else
      {
        v28 = *v24;
        v27 = v24 + 8;
        *v18 = v28;
      }

      v29 = v18 + 8;
      v11 = &v18[v25 + 4];
      if (v11 > v8)
      {
        if (v11 > v10)
        {
          return (~v12 + __src);
        }

        while (v29 < v9)
        {
          v31 = *v27;
          v27 += 8;
          *v29++ = v31;
        }

        while (v29 < v11)
        {
          v32 = *v27++;
          *v29 = v32;
          v29 = (v29 + 1);
        }
      }

      else
      {
        do
        {
          v30 = *v27;
          v27 += 8;
          *v29++ = v30;
        }

        while (v29 < v11);
      }
    }

    if (v19 == v6 && v18 <= v7)
    {
      memcpy(v11, v12, v15);
      return (v18 - __dst);
    }

    return (~v12 + __src);
  }

  else if (a3 == 1)
  {
    if (*__src)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LZ4_decompress_safe_withPrefix64k(unsigned __int8 *__src, char *__dst, int a3, int a4)
{
  if (a4)
  {
    v5 = __dst;
    v6 = &__src[a3];
    v7 = &__dst[a4];
    v8 = v7 - 12;
    v9 = v7 - 8;
    v10 = v7 - 5;
    v11 = __dst;
    v12 = __src;
    while (1)
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 >> 4;
      if (v15 == 15)
      {
        v15 = 15;
        if (v12 < v6)
        {
          do
          {
            v17 = *v12++;
            v16 = v17;
            v15 += v17;
          }

          while (v12 < v6 && v16 == 255);
        }
      }

      v18 = &v11[v15];
      v19 = &v12[v15];
      if (&v11[v15] > v8 || v19 > (v6 - 8))
      {
        break;
      }

      do
      {
        v21 = *v12;
        v12 += 8;
        *v11 = v21;
        v11 += 8;
        v15 -= 8;
      }

      while (v11 < v18);
      v22 = &v12[v15];
      v24 = *v22;
      v12 = v22 + 2;
      v23 = v24;
      v25 = v13 & 0xF;
      if ((v13 & 0xF) == 0xF)
      {
        v25 = 15;
        do
        {
          if (v12 >= v6 - 6)
          {
            break;
          }

          v26 = *v12++;
          v25 += v26;
        }

        while (v26 == 255);
      }

      v27 = &v18[-v23];
      if (v23 <= 7)
      {
        v36 = v10;
        v37 = v9;
        LZ4_decompress_safe_cold_1(v23, v27, v18);
        v10 = v36;
        v9 = v37;
        v28 = v38;
      }

      else
      {
        v29 = *v27;
        v28 = v27 + 8;
        *v18 = v29;
      }

      v30 = v18 + 8;
      v11 = &v18[v25 + 4];
      if (v11 > v8)
      {
        if (v11 > v10)
        {
          return (~v12 + __src);
        }

        while (v30 < v9)
        {
          v32 = *v28;
          v28 += 8;
          *v30++ = v32;
        }

        while (v30 < v11)
        {
          v33 = *v28++;
          *v30 = v33;
          v30 = (v30 + 1);
        }
      }

      else
      {
        do
        {
          v31 = *v28;
          v28 += 8;
          *v30++ = v31;
        }

        while (v30 < v11);
      }
    }

    if (v19 == v6 && v18 <= v7)
    {
      memcpy(v11, v12, v15);
      return (v18 - v5);
    }

    return (~v12 + __src);
  }

  else if (a3 == 1)
  {
    if (*__src)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LZ4_decompress_safe_partial(char *__src, char *__dst, int a3, int a4, int a5)
{
  v5 = __src;
  v6 = &__dst[a5];
  if (&__dst[a4] <= v6 - 12)
  {
    v7 = &__dst[a4];
  }

  else
  {
    v7 = v6 - 12;
  }

  if (a5)
  {
    v9 = &__src[a3];
    v10 = v6 - 8;
    v11 = v6 - 5;
    v12 = __dst;
    v13 = v5;
    while (1)
    {
      v15 = *v13++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v16 == 15)
      {
        v16 = 15;
        if (v13 < v9)
        {
          do
          {
            v18 = *v13++;
            v17 = v18;
            v16 += v18;
          }

          while (v13 < v9 && v17 == 255);
        }
      }

      v19 = &v12[v16];
      v20 = &v13[v16];
      if (&v12[v16] > v7 || v20 > (v9 - 8))
      {
        break;
      }

      do
      {
        v22 = *v13;
        v13 += 8;
        *v12 = v22;
        v12 += 8;
        v16 -= 8;
      }

      while (v12 < v19);
      v23 = &v13[v16];
      v24 = *v23;
      v13 = v23 + 2;
      v25 = &v19[-v24];
      if (v25 < __dst)
      {
        return (~v13 + v5);
      }

      v26 = v14 & 0xF;
      if ((v14 & 0xF) == 0xF)
      {
        v26 = 15;
        do
        {
          if (v13 >= v9 - 6)
          {
            break;
          }

          v27 = *v13++;
          v26 += v27;
        }

        while (v27 == 255);
      }

      if (v19 - v25 <= 7)
      {
        v37 = v10;
        v38 = v5;
        v36 = v11;
        LZ4_decompress_safe_cold_1(v19 - v25, v25, v19);
        v11 = v36;
        v10 = v37;
        v5 = v38;
        v28 = v39;
      }

      else
      {
        v29 = *v25;
        v28 = v25 + 8;
        *v19 = v29;
      }

      v30 = v19 + 8;
      v12 = &v19[v26 + 4];
      if (v12 > v6 - 12)
      {
        if (v12 > v11)
        {
          return (~v13 + v5);
        }

        while (v30 < v10)
        {
          v32 = *v28;
          v28 += 8;
          *v30++ = v32;
        }

        while (v30 < v12)
        {
          v33 = *v28++;
          *v30 = v33;
          v30 = (v30 + 1);
        }
      }

      else
      {
        do
        {
          v31 = *v28;
          v28 += 8;
          *v30++ = v31;
        }

        while (v30 < v12);
      }
    }

    if (v19 <= v6 && v20 <= v9)
    {
      memcpy(v12, v13, v16);
      return (v19 - __dst);
    }

    return (~v13 + v5);
  }

  else if (a3 == 1)
  {
    if (*__src)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LZ4_decompress_fast_withPrefix64k(unsigned __int8 *__src, char *__dst, int a3)
{
  v3 = __src;
  if (a3)
  {
    v4 = &__dst[a3];
    v5 = v4 - 8;
    v6 = __src;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 >> 4;
      if (v9 == 15)
      {
        v9 = 15;
        do
        {
          v10 = *v6++;
          v9 += v10;
        }

        while (v10 == 255);
      }

      v11 = &__dst[v9];
      if (&__dst[v9] > v5)
      {
        break;
      }

      do
      {
        v12 = *v6;
        v6 += 8;
        *__dst = v12;
        __dst += 8;
        v9 -= 8;
      }

      while (__dst < v11);
      v13 = &v6[v9];
      v15 = *v13;
      v6 = v13 + 2;
      v14 = v15;
      v16 = v7 & 0xF;
      if ((v7 & 0xF) == 0xF)
      {
        v16 = 15;
        do
        {
          v17 = *v6++;
          v16 += v17;
        }

        while (v17 == 255);
      }

      v18 = &v11[-v14];
      if (v14 <= 7)
      {
        LZ4_decompress_safe_cold_1(v14, &v11[-v14], v11);
        v19 = v26;
      }

      else
      {
        v20 = *v18;
        v19 = v18 + 8;
        *v11 = v20;
      }

      v21 = v11 + 8;
      __dst = &v11[v16 + 4];
      if (__dst > v4 - 12)
      {
        if (__dst > v4 - 5)
        {
          return (~v6 + v3);
        }

        while (v21 < v5)
        {
          v23 = *v19;
          v19 += 8;
          *v21 = v23;
          v21 += 8;
        }

        while (v21 < __dst)
        {
          v24 = *v19++;
          *v21++ = v24;
        }
      }

      else
      {
        do
        {
          v22 = *v19;
          v19 += 8;
          *v21 = v22;
          v21 += 8;
        }

        while (v21 < __dst);
      }
    }

    if (v11 != v4)
    {
      return (~v6 + v3);
    }

    memcpy(__dst, v6, v9);
    return (v6 + v9 - v3);
  }

  else if (*__src)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t LZ4_decompress_fast(unsigned __int8 *__src, char *__dst, int a3)
{
  v3 = __src;
  if (a3)
  {
    v4 = &__dst[a3];
    v5 = v4 - 8;
    v6 = __src;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 >> 4;
      if (v9 == 15)
      {
        v9 = 15;
        do
        {
          v10 = *v6++;
          v9 += v10;
        }

        while (v10 == 255);
      }

      v11 = &__dst[v9];
      if (&__dst[v9] > v5)
      {
        break;
      }

      do
      {
        v12 = *v6;
        v6 += 8;
        *__dst = v12;
        __dst += 8;
        v9 -= 8;
      }

      while (__dst < v11);
      v13 = &v6[v9];
      v15 = *v13;
      v6 = v13 + 2;
      v14 = v15;
      v16 = v7 & 0xF;
      if ((v7 & 0xF) == 0xF)
      {
        v16 = 15;
        do
        {
          v17 = *v6++;
          v16 += v17;
        }

        while (v17 == 255);
      }

      v18 = &v11[-v14];
      if (v14 <= 7)
      {
        LZ4_decompress_safe_cold_1(v14, &v11[-v14], v11);
        v19 = v26;
      }

      else
      {
        v20 = *v18;
        v19 = v18 + 8;
        *v11 = v20;
      }

      v21 = v11 + 8;
      __dst = &v11[v16 + 4];
      if (__dst > v4 - 12)
      {
        if (__dst > v4 - 5)
        {
          return (~v6 + v3);
        }

        while (v21 < v5)
        {
          v23 = *v19;
          v19 += 8;
          *v21 = v23;
          v21 += 8;
        }

        while (v21 < __dst)
        {
          v24 = *v19++;
          *v21++ = v24;
        }
      }

      else
      {
        do
        {
          v22 = *v19;
          v19 += 8;
          *v21 = v22;
          v21 += 8;
        }

        while (v21 < __dst);
      }
    }

    if (v11 != v4)
    {
      return (~v6 + v3);
    }

    memcpy(__dst, v6, v9);
    return (v6 + v9 - v3);
  }

  else if (*__src)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t OUTLINED_FUNCTION_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = (a2 + *(v5 + 8 * result));
  *(a3 + 4) = *v6;
  *a4 = v6 - a5;
  return result;
}

void OUTLINED_FUNCTION_6(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
}

void *OUTLINED_FUNCTION_12@<X0>(void *a1@<X0>, int a2@<W8>)
{

  return memset(a1, 255, (v2 - a2 + 239) / 0xFFu + 1);
}

void *OUTLINED_FUNCTION_42()
{

  return memset(v0, 255, (2 * v1) + 2);
}

uint64_t APPLIB_API_SUBSYS_SendCommand(void *a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a6;
  bzero(a1, a2);
  if (!HDLCFrameCreateUplink())
  {
    return 0xFFFFFFFFLL;
  }

  if ((HDLCFrameInject() & 1) == 0 || v6 && (HDLCFrameInject() & 1) == 0)
  {
    HDLCFrameFree();
    return 0xFFFFFFFFLL;
  }

  v7 = HDLCFrameEncode();
  HDLCFrameFree();
  if (v7)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t APPLIB_API_SUBSYS_ParseHeader(uint64_t a1, unsigned int a2, int a3, _WORD *a4, _DWORD *a5)
{
  if (a2 < 4)
  {
    return 0;
  }

  if (*a1 != 75 || *(a1 + 1) != a3)
  {
    return 0;
  }

  *a4 = *(a1 + 2);
  *a5 = 4;
  return 1;
}

BOOL APPLIB_API_SUBSYS_ParseGetAntennaConfigResp(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 4);
  if (v2 == 1)
  {
    *a2 = *(a1 + 6);
  }

  return v2 == 1;
}

uint64_t APPLIB_API_SUBSYS_ParseGetRSSIResp(uint64_t a1, int a2, float *a3)
{
  if (a2 > 1 || *(a1 + 4) != 1)
  {
    return 0;
  }

  *a3 = ~*(a1 + 2 * a2 + 12) / -10.0;
  return 1;
}

uint64_t ETLBBCreateDeassertResetDetectCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLBBParseDeassertResetDetectResponse(int **a1)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v1 = **a1;
    if (v1 == 75)
    {
      if (BYTE1(v1) == 253)
      {
        v2 = HIWORD(v1);
        if (v2 == 7)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v2, 7);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v1), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

BOOL ETLBBParsePingResponse(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  result = *(a1 + 8) != v2 && *(*a1 + v2) == 123;
  *a2 = v2 + 1;
  return result;
}

void *ETLBBEchoParametersInit(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t ETLBBCreateEchoCommand(uint64_t a1, uint64_t *a2)
{
  result = HDLCFrameInjectUnsignedChar();
  if (result)
  {
    v4 = *(a2 + 2);
    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace >= v4)
    {
      if (*(a2 + 2))
      {

        return HDLCFrameInject();
      }

      else
      {
        return 1;
      }
    }

    else
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, FreeSpace);
      return 0;
    }
  }

  return result;
}

uint64_t ETLBBParseEchoResponse(uint64_t a1, uint64_t a2, BOOL *a3)
{
  *a3 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  if (**a1 != 123)
  {
    return 0;
  }

  v5 = (v3 - 1);
  v6 = *(a2 + 8);
  *a3 = v5 == v6;
  if (v6)
  {
    if (v5 == v6)
    {
      v7 = a3;
      v8 = memcmp(v4 + 1, *a2, v5);
      a3 = v7;
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
  }

  return 1;
}

uint64_t ETLBBCreateSimulateCrashCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLBBCreateSimulateCrashCommandExt(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (a2)
    {

      return HDLCFrameInject();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLBBParseSimulateCrashResponse(unsigned __int8 **a1)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else if (**a1 == 75)
  {
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }
}

uint64_t ETLBBPing(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void))
{
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLBBPing", "Failed to create command frame\n", 0, 0, 0, 0, 0);
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_10;
  }

  v2 = malloc(0x20uLL);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = HDLCFrameEncode();
  if (v4)
  {
    v5 = v4;
    v6 = -1431655766;
    v10 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v3, v4);
    }

    if (*a1)
    {
      v7 = (*a1)(a1, v3, v5, &v10, 1, 1000, 0);
      v6 = v10;
    }

    else
    {
      v7 = 0;
    }

    if (v6 == v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  free(v3);
LABEL_11:
  HDLCFrameFree();
  return v8;
}

BOOL ETLBBPingCheckResponse(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 123;
  if (!_ETLResponseRingBuffer)
  {
    v3 = a1;
    TelephonyUtilRingBufferInitialize();
    a1 = v3;
  }

  v4 = ETLFindMatchingResponseUsingBuffer(a1, v8, &_ETLResponseRingBuffer, &v7, a2);
  v5 = 0;
  if (v4 && DWORD2(v8[0]))
  {
    v5 = **&v8[0] == 123;
  }

  HDLCFrameFree();
  return v5;
}

uint64_t ETLBBSendEcho(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLBBSendEcho", "Failed to create command frame\n");
    goto LABEL_6;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(a2 + 8);
  if (HDLCFrameGetFreeSpace() < v4)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_6;
  }

  if (*(a2 + 8) && !HDLCFrameInject())
  {
    goto LABEL_6;
  }

  v7 = malloc(0x20uLL);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = HDLCFrameEncode();
  if (v9)
  {
    v10 = v9;
    v11 = -1431655766;
    v13 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v8, v9);
    }

    if (*a1)
    {
      v12 = (*a1)(a1, v8, v10, &v13, 1, 1000, 0);
      v11 = v13;
    }

    else
    {
      v12 = 0;
    }

    if (v11 == v10)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  free(v8);
LABEL_7:
  HDLCFrameFree();
  return v5;
}

uint64_t ETLBBCheckEchoResponse(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 123;
  if (a3)
  {
    while (1)
    {
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      if (!ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v14, a4) || !DWORD2(v15[0]) || **&v15[0] != 123)
      {
        break;
      }

      v8 = DWORD2(v15[0]) - 1;
      v9 = *(a2 + 8);
      if (v9 && v8 == v9)
      {
        v7 = memcmp((*&v15[0] + 1), *a2, (DWORD2(v15[0]) - 1));
        HDLCFrameFree();
        if (!v7)
        {
          return 1;
        }
      }

      else
      {
        HDLCFrameFree();
        if (!v9 && !v8)
        {
          return 1;
        }
      }

      _ETLDebugPrint("ETLBBCheckEchoResponse", "Mismatch, continue\n");
    }

    goto LABEL_24;
  }

  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v14, a4) || !DWORD2(v15[0]) || **&v15[0] != 123)
  {
LABEL_24:
    HDLCFrameFree();
    return 0;
  }

  v10 = DWORD2(v15[0]) - 1;
  v11 = *(a2 + 8);
  if (!v11 || v10 != v11)
  {
    HDLCFrameFree();
    if (!v11 && !v10)
    {
      return 1;
    }

LABEL_29:
    _ETLDebugPrint("ETLBBCheckEchoResponse", "Mismatch, bail\n");
    return 0;
  }

  v12 = memcmp((*&v15[0] + 1), *a2, (DWORD2(v15[0]) - 1));
  HDLCFrameFree();
  if (v12)
  {
    goto LABEL_29;
  }

  return 1;
}

BOOL ETLBBGetVersion(void *a1, _OWORD *a2, uint64_t a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v17 = -1431655766;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 2118751100;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, &v18, 4);
  }

  if (!*a1)
  {
    return 0;
  }

  v6 = (*a1)(a1, &v18, 4, &v17, 1, 1000, 0);
  result = 0;
  if (v6 && v17 == 4)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[0] = v8;
    v15[1] = v8;
    v14 = 124;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v9 = ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v14, a3);
    v10 = v14 == 124 && v9;
    v11 = v10;
    if (v10)
    {
      *(a2 + 251) = 0u;
      a2[14] = 0u;
      a2[15] = 0u;
      a2[12] = 0u;
      a2[13] = 0u;
      a2[10] = 0u;
      a2[11] = 0u;
      a2[8] = 0u;
      a2[9] = 0u;
      a2[6] = 0u;
      a2[7] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      v12 = DWORD2(v15[0]) - 1;
      *a2 = 0u;
      a2[1] = 0u;
      if (v12 >= 0x10B)
      {
        v13 = 267;
      }

      else
      {
        v13 = v12;
      }

      memcpy(a2, (*&v15[0] + 1), v13);
    }

    HDLCFrameFree();
    return v11;
  }

  return result;
}

uint64_t ETLBBEnterDownloadMode(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v11 = -1431655766;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 2121179450;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, &v12, 4);
  }

  if (!*a1)
  {
    return 0;
  }

  v4 = (*a1)(a1, &v12, 4, &v11, 1, 1000, 0);
  result = 0;
  if (v4 && v11 == 4)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[0] = v6;
    v9[1] = v6;
    v8 = 58;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (ETLFindMatchingResponseUsingBuffer(a1, v9, &_ETLResponseRingBuffer, &v8, a2))
    {
      if (v8 == 58)
      {
        v7 = 1;
LABEL_16:
        HDLCFrameFree();
        return v7;
      }

      _ETLDebugPrint("ETLBBEnterDownloadMode", "Command code expected %u, got %u\n");
    }

    else
    {
      _ETLDebugPrint("ETLBBEnterDownloadMode", "Failed to get response\n");
    }

    v7 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t ETLBBCreateUnlockCommand(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 2) + 2;
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < v2)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v2, FreeSpace);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInject();
}

BOOL ETLBBParseUnlockResponse(_DWORD *a1)
{
  if (a1[2] != 1)
  {
    return *(*a1 + 1) == 1;
  }

  _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n", 1, 0);
  return 0;
}

unint64_t ETLBBUnlock(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v18 = 65;
  if (a1 && a2)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    if (HDLCFrameCreateUplink())
    {
      v7 = *(a2 + 8) + 2;
      if (HDLCFrameGetFreeSpace() >= v7)
      {
        if (HDLCFrameInjectUnsignedChar() && HDLCFrameInject())
        {
          v3 = malloc((2 * DWORD2(v15) + 32));
          if (!v3)
          {
LABEL_21:
            HDLCFrameFree();
            HDLCFrameFree();
            return v3;
          }

          v8 = HDLCFrameEncode();
          if (!v8)
          {
            goto LABEL_19;
          }

          v9 = v8;
          v19 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v3, v8);
          }

          if (*a1)
          {
            v10 = (*a1)(a1, v3, v9, &v19, 1, a3, 0);
            v11 = v19;
            free(v3);
            v3 = 0;
            if (!v10 || v11 != v9)
            {
              goto LABEL_21;
            }

            if (ETLFindMatchingResponse(a1, v13, &v18, a3))
            {
              if (DWORD2(v13[0]) != 1)
              {
                v3 = *(*&v13[0] + 1) == 1;
                goto LABEL_21;
              }

              _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n");
            }
          }

          else
          {
LABEL_19:
            free(v3);
          }
        }
      }

      else
      {
        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
      }
    }

    v3 = 0;
    goto LABEL_21;
  }

  return v3;
}

uint64_t ETLBBDeAssertResetDetect(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLBBDeAssertResetDetect", "Failed to create command frame\n");
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_23;
  }

  v16 = 523595;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v13) + 32));
  if (v4)
  {
    v5 = HDLCFrameEncode();
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = v5;
    v16 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v4, v5);
    }

    if (!*a1)
    {
LABEL_25:
      free(v4);
      goto LABEL_23;
    }

    v7 = (*a1)(a1, v4, v6, &v16, 1, a2, 0);
    v8 = v16;
    free(v4);
    v4 = 0;
    if (v7)
    {
      if (v8 == v6)
      {
        LOBYTE(v16) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v4 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && v16 == 75)
        {
          if (DWORD2(v11[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v9 = **&v11[0];
            if (**&v11[0] == 75)
            {
              if (BYTE1(v9) == 253)
              {
                if (HIWORD(v9) == 7)
                {
                  v4 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

LABEL_23:
          v4 = 0;
        }
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

uint64_t ETLBBPowerDown(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = -1431655766;
  memset(v11, 0, sizeof(v11));
  v10 = 654667;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v2;
  v8 = v2;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_11;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    HDLCFrameFree();
    goto LABEL_11;
  }

  v3 = HDLCFrameEncode();
  HDLCFrameFree();
  if (v3 <= 0)
  {
LABEL_11:
    _ETLDebugPrint("ETLBBPowerDown", "Failed to create unlock command\n");
    return 0;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v11, v3);
  }

  if (!*a1)
  {
    return 0;
  }

  v4 = (*a1)(a1, v11, v3, &v6, 1, 1000, 0);
  result = 0;
  if (v4)
  {
    if (v6 == v3)
    {
      sleep(1u);
      return 1;
    }
  }

  return result;
}

BOOL ETLBBSetCoreDumpMode(uint64_t (**a1)(void, _OWORD *, uint64_t, int *, uint64_t, uint64_t, void), __int16 a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[30] = v5;
  v16[31] = v5;
  v16[28] = v5;
  v16[29] = v5;
  v16[26] = v5;
  v16[27] = v5;
  v16[24] = v5;
  v16[25] = v5;
  v16[22] = v5;
  v16[23] = v5;
  v16[20] = v5;
  v16[21] = v5;
  v16[18] = v5;
  v16[19] = v5;
  v16[16] = v5;
  v16[17] = v5;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[5] = v5;
  v16[3] = v5;
  v16[4] = v5;
  v16[1] = v5;
  v16[2] = v5;
  v16[0] = v5;
  LOWORD(v13[0]) = a2;
  v6 = APPLIB_API_SUBSYS_SendCommand(v16, 512, 253, 10, v13, 2);
  if (v6 <= 0)
  {
    _ETLDebugPrint("ETLBBSetCoreDumpMode", "Failed to create set core dump mode command\n");
    return 0;
  }

  else
  {
    v7 = v6;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&unk_2977CAD33, 0, v16, v6);
    }

    if (*a1)
    {
      v8 = (*a1)(a1, v16, v7, &v15, 1, 1000, 0);
      result = 0;
      if (v8 && v15 == v7)
      {
        v14 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v13[0] = v10;
        v13[1] = v10;
        v12 = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (ETLFindMatchingResponseUsingBuffer(a1, v13, &_ETLResponseRingBuffer, &v12, a3))
        {
          v11 = v12 == 75;
        }

        else
        {
          _ETLDebugPrint("ETLBBSetCoreDumpMode", "Did not find matching response\n");
          v11 = 0;
        }

        HDLCFrameFree();
        return v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ETLBBSimulateCrashExt(void *a1, uint64_t a2, uint64_t a3)
{
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLBBSimulateCrashExt", "Failed to create command frame\n", v14, v15, 0, 0, 0, 0, 0);
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_17;
  }

  v16 = 268641611;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_17;
  }

  if (a3 && !HDLCFrameInject())
  {
    goto LABEL_17;
  }

  v6 = malloc(0x20uLL);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = HDLCFrameEncode();
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v16 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v7, v8);
  }

  if (!*a1)
  {
LABEL_19:
    free(v7);
    goto LABEL_17;
  }

  v10 = (*a1)(a1, v7, v9, &v16, 1, a2, 0);
  v11 = v16;
  free(v7);
  v12 = 0;
  if (v10 && v11 == v9)
  {
    usleep(0x30D40u);
    v12 = 1;
  }

LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return v12;
}

uint64_t ETLBBCreateSetModeCommand(uint64_t a1, unsigned __int16 a2)
{
  result = HDLCFrameInjectUnsignedChar();
  if (result)
  {

    return HDLCFrameInjectUnsignedShort();
  }

  return result;
}

unint64_t ETLBBSetMode(void *a1, unsigned __int16 a2, uint64_t a3)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 41;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLBBSetMode", "Failed to create command frame\n");
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_17;
  }

  v5 = malloc((2 * DWORD2(v14) + 32));
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v17 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_19:
    free(v5);
    goto LABEL_17;
  }

  v8 = (*a1)(a1, v5, v7, &v17, 1, a3, 0);
  v9 = v17;
  free(v5);
  v5 = 0;
  if (v8 && v9 == v7)
  {
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v5 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v12, &_ETLResponseRingBuffer, &v11, a3) && DWORD2(v12[0]))
    {
      v5 = **&v12[0] == 41;
    }
  }

LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

BOOL ETLBBSetAntennaConfig(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[30] = v5;
  v16[31] = v5;
  v16[28] = v5;
  v16[29] = v5;
  v16[26] = v5;
  v16[27] = v5;
  v16[24] = v5;
  v16[25] = v5;
  v16[22] = v5;
  v16[23] = v5;
  v16[20] = v5;
  v16[21] = v5;
  v16[18] = v5;
  v16[19] = v5;
  v16[16] = v5;
  v16[17] = v5;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[4] = v5;
  v16[5] = v5;
  v16[2] = v5;
  v16[3] = v5;
  v16[0] = v5;
  v16[1] = v5;
  v6 = APPLIB_DIAG_SetOneRx(v16, 0x200u, a2);
  v7 = v6;
  if (v6 <= 0)
  {
    _ETLDebugPrint("ETLBBSetAntennaConfig", "length %u\n");
    return 0;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v16, v6);
  }

  if (!*a1 || !(*a1)(a1, v16, v7, &v14, 1, 1000, 0) || v14 != v7)
  {
    _ETLDebugPrint("ETLBBSetAntennaConfig", "Failed to write, success = %u, written = %u of %d\n");
    return 0;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v8;
  v12[1] = v8;
  v15 = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v9 = ETLFindMatchingResponseUsingBuffer(a1, v12, &_ETLResponseRingBuffer, &v15, a3);
  v10 = v15 == 75 && v9;
  HDLCFrameFree();
  return v10;
}

uint64_t ETLBBGetAntennaConfig(void *a1, _DWORD *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[30] = v6;
  v18[31] = v6;
  v18[28] = v6;
  v18[29] = v6;
  v18[26] = v6;
  v18[27] = v6;
  v18[24] = v6;
  v18[25] = v6;
  v18[22] = v6;
  v18[23] = v6;
  v18[20] = v6;
  v18[21] = v6;
  v18[18] = v6;
  v18[19] = v6;
  v18[16] = v6;
  v18[17] = v6;
  v18[14] = v6;
  v18[15] = v6;
  v18[12] = v6;
  v18[13] = v6;
  v18[10] = v6;
  v18[11] = v6;
  v18[8] = v6;
  v18[9] = v6;
  v18[6] = v6;
  v18[7] = v6;
  v18[4] = v6;
  v18[5] = v6;
  v18[2] = v6;
  v18[3] = v6;
  v18[0] = v6;
  v18[1] = v6;
  OneRxConfig = APPLIB_DIAG_Get_OneRxConfig(v18, 0x200u);
  if (!a2)
  {
    return 0;
  }

  v8 = OneRxConfig;
  *a2 = 0;
  if (OneRxConfig <= 0)
  {
    _ETLDebugPrint("ETLBBGetAntennaConfig", "length %u\n");
    return 0;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v18, OneRxConfig);
  }

  if (!*a1 || !(*a1)(a1, v18, v8, &v16, 1, 1000, 0) || v16 != v8)
  {
    _ETLDebugPrint("ETLBBGetAntennaConfig", "Failed to write, success = %u, written = %u of %d\n");
    return 0;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v9;
  v14[1] = v9;
  v17 = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v10 = ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v17, a3);
  v11 = 0;
  if (v10 && v17 == 75)
  {
    if (*(*&v14[0] + 4) == 1)
    {
      *a2 = *(*&v14[0] + 6);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = v11;
  HDLCFrameFree();
  return v13;
}

uint64_t ETLBBGetRSSI(void *a1, int a2, uint64_t a3, float *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[30] = v8;
  v19[31] = v8;
  v19[28] = v8;
  v19[29] = v8;
  v19[26] = v8;
  v19[27] = v8;
  v19[24] = v8;
  v19[25] = v8;
  v19[22] = v8;
  v19[23] = v8;
  v19[20] = v8;
  v19[21] = v8;
  v19[18] = v8;
  v19[19] = v8;
  v19[16] = v8;
  v19[17] = v8;
  v19[14] = v8;
  v19[15] = v8;
  v19[12] = v8;
  v19[13] = v8;
  v19[10] = v8;
  v19[11] = v8;
  v19[8] = v8;
  v19[9] = v8;
  v19[6] = v8;
  v19[7] = v8;
  v19[4] = v8;
  v19[5] = v8;
  v19[2] = v8;
  v19[3] = v8;
  v19[0] = v8;
  v19[1] = v8;
  RSSI_Channel = APPLIB_DIAG_Get_RSSI_Channel(v19, 0x200u, a2);
  if (!a4)
  {
    return 0;
  }

  v10 = RSSI_Channel;
  *a4 = 0.0;
  if (RSSI_Channel <= 0)
  {
    _ETLDebugPrint("ETLBBGetRSSI", "length %u\n");
    return 0;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v19, RSSI_Channel);
  }

  if (!*a1 || !(*a1)(a1, v19, v10, &v17, 1, 1000, 0) || v17 != v10)
  {
    _ETLDebugPrint("ETLBBGetRSSI", "Failed to write, success = %u, written = %u of %u\n");
    return 0;
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v11;
  v15[1] = v11;
  v18 = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v12 = ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v18, a3);
  v13 = 0;
  if (v12 && v18 == 75)
  {
    if (a2 <= 1 && *(*&v15[0] + 4) == 1)
    {
      *a4 = ~*(*&v15[0] + 2 * a2 + 12) / -10.0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    _ETLDebugPrint("ETLBBGetRSSI", "Read success rssi %f\n", *a4);
  }

  HDLCFrameFree();
  return v13;
}

uint64_t crc_16_calc(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0xFFFF;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc16_table[v5 ^ ((v2 & 0xFF00) >> 8)] ^ (v2 << 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 8;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      v2 *= 2;
      if (v7 < 0)
      {
        v2 ^= 0x1021u;
      }

      v6 = (2 * v6) & 0xFE00;
    }

    while (a2);
  }

  return ~v2;
}

uint64_t crc_16_l_calc(char *a1, unsigned int a2)
{
  LOWORD(v2) = -1;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc_16_l_table[(v5 ^ v2)] ^ ((v2 & 0xFF00) >> 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 8;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      LOWORD(v2) = v2 >> 1;
      if (v7)
      {
        LOWORD(v2) = v2 ^ 0x8408;
      }

      v6 >>= 1;
    }

    while (a2);
  }

  return ~v2;
}

uint64_t crc_30_calc(char *a1, unsigned int a2)
{
  v2 = 0x3FFFFFFF;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc30_table[(v5 ^ (v2 >> 22))] ^ (v2 << 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 22;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      v2 *= 2;
      if ((v7 & 0x20000000) != 0)
      {
        v2 ^= 0x6030B9C7u;
      }

      v6 *= 2;
    }

    while (a2);
  }

  return ~v2 & 0x3FFFFFFF;
}

uint64_t crc_30_step(int a1, char *a2, unsigned int a3)
{
  v3 = a1 ^ 0x3FFFFFFF;
  v4 = a3 - 8;
  if (a3 >= 8)
  {
    v5 = a2;
    do
    {
      v6 = *v5++;
      v3 = crc30_table[(v6 ^ (v3 >> 22))] ^ (v3 << 8);
      LOWORD(a3) = a3 - 8;
    }

    while (a3 > 7u);
    a2 += (v4 >> 3) + 1;
  }

  if (a3)
  {
    v7 = *a2 << 22;
    do
    {
      LOWORD(a3) = a3 - 1;
      v8 = v7 ^ v3;
      v3 *= 2;
      if ((v8 & 0x20000000) != 0)
      {
        v3 ^= 0x6030B9C7u;
      }

      v7 *= 2;
    }

    while (a3);
  }

  return ~v3 & 0x3FFFFFFF;
}

uint64_t crc_16_step(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3)
  {
    v3 = ~result;
    do
    {
      v4 = *a2++;
      v3 = crc16_table[v4 ^ ((v3 & 0xFF00) >> 8)] ^ (v3 << 8);
      --a3;
    }

    while (a3);
    LOWORD(result) = ~v3;
  }

  return result;
}

uint64_t crc_16_l_step(uint64_t result, char *a2, int a3)
{
  if (a3)
  {
    LOWORD(v3) = ~result;
    do
    {
      v4 = *a2++;
      v3 = crc_16_l_table[(v4 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
      --a3;
    }

    while (a3);
    LOWORD(result) = ~v3;
  }

  return result;
}

uint64_t crc_32_calc(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      a3 = (crc32_table[v5 ^ BYTE3(a3)] ^ (a3 << 8));
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1;
    a3 = (a3 ^ (v6 << 24)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
    if (a2 != 1)
    {
      a3 = (a3 ^ (v6 << 25)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
      if (a2 != 2)
      {
        a3 = (a3 ^ (v6 << 26)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
        if (a2 != 3)
        {
          a3 = (a3 ^ (v6 << 27)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
          if (a2 != 4)
          {
            a3 = (a3 ^ (v6 << 28)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
            if (a2 != 5)
            {
              if ((a3 ^ (v6 << 29)) >= 0)
              {
                a3 = (2 * a3);
              }

              else
              {
                a3 = (2 * a3) ^ 0x4C11DB7u;
              }

              if (a2 != 6)
              {
                if ((a3 ^ (v6 << 30)) >= 0)
                {
                  return (2 * a3);
                }

                else
                {
                  return (2 * a3) ^ 0x4C11DB7u;
                }
              }
            }
          }
        }
      }
    }
  }

  return a3;
}

uint64_t ETLGSDIAddCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLGSDIParseResponseHeader(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = HIWORD(v5);
      *a3 = v3 + 4;
      if (BYTE1(v5) == 33)
      {
        return 1;
      }

      else
      {
        _ETLDebugPrint("ETLGSDIParseResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 33);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLGSDIAddDelayedCommandHeaderInternal(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLGSDIParseDelayedCommandHeaderInternal(uint64_t *a1, _WORD *a2, int *a3, _WORD *a4, _DWORD *a5)
{
  v5 = *a5;
  v6 = *(a1 + 2) - v5;
  if (v6 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v6, 4uLL);
    return 0;
  }

  else
  {
    v7 = *a1;
    v8 = *(*a1 + v5);
    if (v8 == 128)
    {
      *a2 = HIWORD(v8);
      *a5 = v5 + 4;
      v9 = *(a1 + 2) - (v5 + 4);
      if (v9 <= 5)
      {
        _ETLDebugPrint("ETLSubsys2ParseHeader", "Need %u bytes, only have %u\n", 6, v9);
        return 0;
      }

      else
      {
        v10 = BYTE1(v8);
        v11 = v7 + (v5 + 4);
        *a5 = v5 + 10;
        v12 = *v11;
        *a4 = *(v11 + 4);
        if (v10 == 33)
        {
          *a3 = v12;
          if (v12)
          {
            _ETLDebugPrint("ETLGSDIParseDelayedCommandHeaderInternal", "Status was %u\n", v12);
            return 0;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLGSDIParseDelayedCommandHeaderInternal", "Received subsys 0x%x doesn't match expected 0x%x\n", v10, 33);
          return 0;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v8, 75);
      return 0;
    }
  }
}

uint64_t ETLGSDIAddDelayedCommandHeader(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() > 0x19)
    {
      HDLCFrameInjectUnsignedInt();
      HDLCFrameInjectUnsignedInt();
      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      return HDLCFrameInject();
    }

    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
  }

  return 0;
}

uint64_t ETLGSDIParseDelayedCommandHeader(uint64_t *a1, _WORD *a2, _WORD *a3, int a4, int a5, _DWORD *a6, unsigned int *a7)
{
  *a6 = 0;
  v7 = *a7;
  v8 = *(a1 + 2) - v7;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v8, 4uLL);
    return 0;
  }

  v9 = *a1;
  v10 = *(*a1 + v7);
  if (v10 != 128)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", *(*a1 + v7), 75);
    return 0;
  }

  *a7 = v7 + 4;
  v11 = *(a1 + 2) - (v7 + 4);
  if (v11 <= 5)
  {
    _ETLDebugPrint("ETLSubsys2ParseHeader", "Need %u bytes, only have %u\n", 6, v11);
    return 0;
  }

  v12 = (v9 + (v7 + 4));
  v13 = v7 + 10;
  *a7 = v7 + 10;
  v14 = *v12;
  *a2 = *(v12 + 2);
  if (BYTE1(v10) != 33)
  {
    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeaderInternal", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v10), 33);
    return 0;
  }

  if (v14)
  {
    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeaderInternal", "Status was %u\n", v14);
    return 0;
  }

  v16 = HIWORD(v10);
  if (v16 != 72)
  {
    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeader", "Response subcommand code was 0x%x, expected 0x%x\n", v16, 72);
    return 0;
  }

  v17 = *(a1 + 2) - v13;
  if (v17 <= 1)
  {
    v23 = 2;
LABEL_21:
    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeader", "Need %u bytes, only have %u in response\n", v23, v17);
    return 0;
  }

  v18 = *(v9 + v13);
  *a3 = v18;
  v19 = v7 + 12;
  *a7 = v19;
  if (v18 != 1)
  {
    return 1;
  }

  v17 = *(a1 + 2) - v19;
  if (v17 <= 0xB)
  {
    v23 = 12;
    goto LABEL_21;
  }

  v20 = (v9 + v19);
  v22 = *v20;
  v21 = v20[1];
  *a6 = v20[2];
  if (v22 == a4)
  {
    if (v21 == a5)
    {
      *a7 += 12;
      return 1;
    }

    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeader", "Received subcommand 0x%x mismatches expected 0x%x\n", v21, a5);
    return 0;
  }

  else
  {
    _ETLDebugPrint("ETLGSDIParseDelayedCommandHeader", "Received status location %u mismatches expected %u\n", v22, a4);
    return 0;
  }
}

uint64_t ETLGSDICreateGetFeatureCommand(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (!ETLGSDIAddDelayedCommandHeader(a1, 1, 174, a2))
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 4, FreeSpace);
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLGSDIParseGetFeatureResponse(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, uint64_t a5)
{
  v12 = 0;
  *a4 = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0;
  v7 = ETLGSDIParseDelayedCommandHeader(a1, a2, a3, 1, 174, a4, &v12);
  result = 0;
  if (v7)
  {
    v9 = *(a1 + 8) - v12;
    if (v9 <= 3)
    {
      _ETLDebugPrint("ETLGSDIParseGetFeatureResponse", "Need %u bytes, only have %u\n");
    }

    else
    {
      v10 = (*a1 + v12);
      v11 = *v10;
      *a5 = v11;
      if (v11 <= v9 - 4)
      {
        memcpy((a5 + 4), v10 + 2, v11);
        return 1;
      }

      _ETLDebugPrint("ETLGSDIParseGetFeatureResponse", "Data length is %u, but only have %u\n");
    }

    return 0;
  }

  return result;
}

uint64_t ETLGSDIParseGetECCResponse(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = 0;
  *a4 = 0;
  v7 = ETLGSDIParseDelayedCommandHeader(a1, a2, a3, 1, 85, a4, &v10);
  result = 0;
  if (v7)
  {
    v9 = *(a1 + 8) - v10;
    if (v9 <= 3)
    {
      _ETLDebugPrint("ETLGSDIParseGetECCResponse", "Need %u bytes, only have %u\n", 4, v9);
      return 0;
    }

    else
    {
      *a5 = *(*a1 + v10);
      return 1;
    }
  }

  return result;
}

uint64_t ETLGSDIAddReadTransparentCmdHeader(uint64_t a1, unsigned __int8 a2)
{
  if (!ETLGSDIAddDelayedCommandHeader(a1, 1, 119, a2))
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0xB)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 12, FreeSpace);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLGSDICreateReadTransparentCmdCommand(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!ETLGSDIAddDelayedCommandHeader(a1, 1, 119, a2))
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0xB)
  {
    v8 = 12;
LABEL_14:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v8, FreeSpace);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0xF)
  {
    v8 = 16;
    goto LABEL_14;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLGSDIParseReadTransparentCmdResponse(uint64_t a1, _WORD *a2, _WORD *a3, int a4, unsigned int a5, void *a6)
{
  v20 = 0;
  result = ETLGSDIParseDelayedCommandHeader(a1, a2, a3, 1, 119, &v19, &v20);
  if (result)
  {
    if (*a3 != 1)
    {
      return 1;
    }

    v12 = *(a1 + 8) - v20;
    if (v12 <= 0xB)
    {
      _ETLDebugPrint("ETLGSDIParseReadTransparentCmdResponse", "Need %u bytes, only have %u\n", 12, v12);
    }

    else
    {
      v13 = (*a1 + v20);
      if (*v13)
      {
        return 0;
      }

      if (v13[1] == a4)
      {
        v14 = v12 - 12 - (a5 + 4);
        if (v12 - 12 < a5 + 4)
        {
          _ETLDebugPrint("ETLGSDIParseReadTransparentCmdResponse", "Need %u bytes, only have %u\n", a5 + 4, v12 - 12);
          return 0;
        }

        v15 = v13 + a5;
        v18 = *(v15 + 3);
        v17 = v15 + 12;
        v16 = v18;
        if (v14 < v18)
        {
          return 0;
        }

        memcpy(a6, v17 + 4, v16);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t ETLGSDICreateGetPINStatusCommand(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() > 0x11)
    {
      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      HDLCFrameInject();
      return HDLCFrameInjectUnsignedChar();
    }

    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
  }

  return 0;
}

uint64_t ETLGSDIParseGetPINStatusReponse(int **a1, int *a2, _WORD *a3, int a4, int a5)
{
  *a2 = 0;
  v5 = *(a1 + 2);
  v6 = v5 - 4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v7 = *a1;
    v8 = **a1;
    if (v8 == 75)
    {
      if (BYTE1(v8) == 33)
      {
        v9 = HIWORD(v8);
        if (v9 == 5)
        {
          if (v6 <= 0x18)
          {
            _ETLDebugPrint("ETLGSDIParseGetPINStatusReponse", "response has %u bytes, need %u\n", v6, 25);
            return 0;
          }

          else
          {
            v10 = v7[1];
            *a2 = v10;
            *a3 = *(v7 + 8);
            if (v10)
            {
              _ETLDebugPrint("ETLGSDIParseGetPINStatusReponse", "Status was %u\n", v10);
              return 0;
            }

            else if (*(v7 + 10) == a4)
            {
              v12 = *(v7 + 28);
              if (v12 == a5)
              {
                return 1;
              }

              else
              {
                _ETLDebugPrint("ETLGSDIParseGetPINStatusReponse", "Received PIN ID %u mismatches %u\n", v12, a5);
                return 0;
              }
            }

            else
            {
              _ETLDebugPrint("ETLGSDIParseGetPINStatusReponse", "Received slot ID %u mismatches %u\n", *(v7 + 10), a4);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLGSDIParseGetPINStatusReponse", "Received subcommand %u mismatches %u\n", v9, 5);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLGSDIParseResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v8), 33);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

BOOL ETLGSDIParsePINStatusEvent(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  *a3 = 0;
  if (a2 >= 7)
  {
    *a3 = *a1;
    *(a3 + 4) = *(a1 + 4);
    *(a3 + 8) = *(a1 + 5);
  }

  return a2 > 6;
}

void *ETLGSDIPerformGetFeatureRaw(void *a1, unsigned __int8 a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  if (!HDLCFrameCreateUplink() || !ETLGSDIAddDelayedCommandHeader(v21, 1, 174, a2))
  {
    goto LABEL_18;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 4, FreeSpace);
    goto LABEL_18;
  }

  if (!HDLCFrameInjectUnsignedInt())
  {
LABEL_18:
    FeatureResponse = 0;
    goto LABEL_19;
  }

  FeatureResponse = malloc((2 * DWORD2(v21[0]) + 32));
  if (!FeatureResponse)
  {
    goto LABEL_19;
  }

  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, FeatureResponse, v13);
  }

  if (!*a1)
  {
LABEL_20:
    free(FeatureResponse);
    goto LABEL_18;
  }

  v15 = (*a1)(a1, FeatureResponse, v14, &v23, 1, a6, 0);
  v16 = v23;
  free(FeatureResponse);
  FeatureResponse = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v23) = 0x80;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    FeatureResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v19, &_ETLResponseRingBuffer, &v23, a6) && v23 == 128)
    {
      FeatureResponse = ETLGSDIParseGetFeatureResponse(v19, &v23, &v18, a4, a5);
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return FeatureResponse;
}

uint64_t ETLGSDIPerformGetECC(void *a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_22;
  }

  if (!ETLGSDIAddDelayedCommandHeader(v24, 1, 85, a2))
  {
    goto LABEL_22;
  }

  v10 = malloc((2 * DWORD2(v24[0]) + 32));
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v26 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_21:
    free(v11);
    goto LABEL_22;
  }

  v14 = (*a1)(a1, v11, v13, &v26, 1, a5, 0);
  v15 = v26;
  free(v11);
  if (!v14 || v15 != v13)
  {
    goto LABEL_22;
  }

  LOBYTE(v26) = 0x80;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, v22, &_ETLResponseRingBuffer, &v26, a5) || v26 != 128 || (v26 = 0, *a3 = 0, !ETLGSDIParseDelayedCommandHeader(v22, &v21, &v20, 1, 85, a3, &v26)))
  {
LABEL_22:
    LOBYTE(v26) = 0x80;
    if (!_ETLResponseRingBuffer)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (DWORD2(v22[0]) - v26 <= 3)
  {
    _ETLDebugPrint("ETLGSDIParseGetECCResponse", "Need %u bytes, only have %u\n", 4, DWORD2(v22[0]) - v26);
    LOBYTE(v26) = 0x80;
    if (_ETLResponseRingBuffer)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *a4 = *(*&v22[0] + v26);
  LOBYTE(v26) = 0x80;
  if (!_ETLResponseRingBuffer)
  {
LABEL_23:
    TelephonyUtilRingBufferInitialize();
  }

LABEL_24:
  v17 = ETLFindMatchingResponseUsingBuffer(a1, v22, &_ETLResponseRingBuffer, &v26, a5);
  v18 = 0;
  if (v17 && v26 == 128)
  {
    v26 = 0;
    *a3 = 0;
    v18 = 0;
    if (ETLGSDIParseDelayedCommandHeader(v22, &v21, &v20, 1, 85, a3, &v26))
    {
      if (DWORD2(v22[0]) - v26 <= 3)
      {
        _ETLDebugPrint("ETLGSDIParseGetECCResponse", "Need %u bytes, only have %u\n", 4, DWORD2(v22[0]) - v26);
        v18 = 0;
      }

      else
      {
        *a4 = *(*&v22[0] + v26);
        v18 = 1;
      }
    }
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLGSDIPerformGetIccid(void *a1, unsigned __int8 a2, uint8x8_t *a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v25 = -21846;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!a3 || !HDLCFrameCreateUplink() || !ETLGSDICreateReadTransparentCmdCommand(v21, a2, 1, 0, 10, 0))
  {
    goto LABEL_20;
  }

  v8 = malloc((2 * DWORD2(v21[0]) + 32));
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = HDLCFrameEncode();
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v8, v9);
  }

  if (!*a1)
  {
LABEL_19:
    free(v8);
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v11 = (*a1)(a1, v8, v10, &v23, 1, a4, 0);
  v12 = v23;
  free(v8);
  v8 = 0;
  if (v11 && v12 == v10)
  {
    LOBYTE(v23) = 0x80;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v8 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v19, &_ETLResponseRingBuffer, &v23, a4) && v23 == 128)
    {
      LOWORD(v23) = -21846;
      v18 = -21846;
      v8 = ETLGSDIParseReadTransparentCmdResponse(v19, &v23, &v18, 1, 0xAu, &v24);
      v13 = v18;
      if (v8 && v18 != 1)
      {
        v14 = v23;
        MatchingResponse = ETLSubsys2FindMatchingResponse(a1, v19, a4);
        if (MatchingResponse)
        {
          MatchingResponse = ETLGSDIParseReadTransparentCmdResponse(v19, &v23, &v18, 1, 0xAu, &v24);
          v13 = v18;
          v16 = v23;
        }

        else
        {
          v16 = v14;
        }

        if (v14 == v16)
        {
          v8 = MatchingResponse;
        }

        else
        {
          v8 = 0;
        }
      }

      if (v8 && v13 == 1)
      {
        *a3 = vsra_n_u8(vshl_n_s8(v24, 4uLL), v24, 4uLL);
        a3[1].i8[0] = (v25 >> 4) | (16 * v25);
        a3[1].i8[1] = (HIBYTE(v25) >> 4) | (16 * HIBYTE(v25));
        v8 = 1;
      }
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v8;
}

uint64_t ETLGSDIMakeStringFromDigit(unint64_t a1, unsigned int a2, uint8x16_t *a3, unsigned int a4)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = !v4 && a2 > 2 * a4;
  if (v6 == 1)
  {
    if (!a4)
    {
      v8 = 0;
      goto LABEL_18;
    }

    if (a4 >= 0x20)
    {
      LODWORD(v8) = 0;
      v7 = 0;
      if ((a4 - 1) >> 32)
      {
        goto LABEL_14;
      }

      v14 = 2 * (a4 - 1);
      if (a1 + v14 < a1 || a1 + 1 + v14 < a1 + 1)
      {
        goto LABEL_14;
      }

      if (a1 + 2 * a4 <= a3 || a3->u64 + a4 <= a1)
      {
        v7 = a4 & 0xFFFFFFE0;
        LODWORD(v8) = 2 * (a4 & 0xFFFFFFE0);
        v15 = a1 - 1;
        v16 = a3 + 1;
        v17 = 33;
        v18.i64[0] = 0x3030303030303030;
        v18.i64[1] = 0x3030303030303030;
        v19.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v19.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v20 = v7;
        do
        {
          v21 = v16[-1];
          v22.i64[0] = 0x3030303030303030;
          v22.i64[1] = 0x3030303030303030;
          v27.val[0] = vsraq_n_u8(v22, v21, 4uLL);
          v27.val[1] = vorrq_s8(vandq_s8(v21, v19), v18);
          v23.i64[0] = 0x3030303030303030;
          v23.i64[1] = 0x3030303030303030;
          v28.val[0] = vsraq_n_u8(v23, *v16, 4uLL);
          v24 = vandq_s8(*v16, v19);
          v25 = (v15 + v17 - 32);
          vst2q_s8(v25, v27);
          v28.val[1] = vorrq_s8(v24, v18);
          v26 = (v15 + v17);
          vst2q_s8(v26, v28);
          v16 += 2;
          v17 += 64;
          v20 -= 32;
        }

        while (v20);
        if (v7 == a4)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    v7 = 0;
    LODWORD(v8) = 0;
LABEL_14:
    v9 = a4 - v7;
    v10 = &a3->u8[v7];
    do
    {
      v11 = *v10++;
      v12 = v8 + 1;
      *(a1 + v8) = (v11 >> 4) | 0x30;
      LODWORD(v8) = v8 + 2;
      *(a1 + v12) = v11 & 0xF | 0x30;
      --v9;
    }

    while (v9);
LABEL_16:
    v8 = v8;
LABEL_18:
    *(a1 + v8) = 0;
  }

  return v6;
}

uint64_t ETLGSDIMakeStringFromICCID(_BYTE *a1, unsigned int a2, char *a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a2 > 0x14;
  if (v5 == 1)
  {
    v6 = *a3;
    *a1 = (*a3 >> 4) | 0x30;
    a1[1] = v6 & 0xF | 0x30;
    v7 = a3[1];
    a1[2] = (v7 >> 4) | 0x30;
    a1[3] = v7 & 0xF | 0x30;
    v8 = a3[2];
    a1[4] = (v8 >> 4) | 0x30;
    a1[5] = v8 & 0xF | 0x30;
    v9 = a3[3];
    a1[6] = (v9 >> 4) | 0x30;
    a1[7] = v9 & 0xF | 0x30;
    v10 = a3[4];
    a1[8] = (v10 >> 4) | 0x30;
    a1[9] = v10 & 0xF | 0x30;
    v11 = a3[5];
    a1[10] = (v11 >> 4) | 0x30;
    a1[11] = v11 & 0xF | 0x30;
    v12 = a3[6];
    a1[12] = (v12 >> 4) | 0x30;
    a1[13] = v12 & 0xF | 0x30;
    v13 = a3[7];
    a1[14] = (v13 >> 4) | 0x30;
    a1[15] = v13 & 0xF | 0x30;
    v14 = a3[8];
    a1[16] = (v14 >> 4) | 0x30;
    a1[17] = v14 & 0xF | 0x30;
    v15 = a3[9];
    a1[18] = (v15 >> 4) | 0x30;
    a1[19] = v15 & 0xF | 0x30;
    a1[20] = 0;
  }

  return v5;
}

void *ETLGSDIGetPINStatus(void *a1, int a2, int a3, _WORD *a4, int *a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x29EDCA608];
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  LODWORD(v23[0]) = 336203;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 0x11)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_21;
  }

  v23[0] = 0;
  v23[1] = 0;
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInject();
  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_21:
    PINStatusReponse = 0;
    goto LABEL_22;
  }

  PINStatusReponse = malloc((2 * DWORD2(v20) + 32));
  if (!PINStatusReponse)
  {
    goto LABEL_22;
  }

  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  LODWORD(v23[0]) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, PINStatusReponse, v13);
  }

  if (!*a1)
  {
LABEL_23:
    free(PINStatusReponse);
    goto LABEL_21;
  }

  v15 = (*a1)(a1, PINStatusReponse, v14, v23, 1, a6, 0);
  v16 = v23[0];
  free(PINStatusReponse);
  PINStatusReponse = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v23[0]) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    PINStatusReponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, v23, a6) && LOBYTE(v23[0]) == 75)
    {
      PINStatusReponse = ETLGSDIParseGetPINStatusReponse(v18, a5, a4, a2, a3);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return PINStatusReponse;
}

uint64_t ETLGSDIWaitForPINStatusEvent(uint64_t a1, int a2, int *a3, _DWORD *a4, unsigned int a5)
{
  while (1)
  {
LABEL_3:
    v19 = 96;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v19, a5) || (v17[0] = 0, v17[1] = 0, v18 = 0, !ETLEVENTParseEventReport(v20, v17)))
    {
LABEL_18:
      HDLCFrameFree();
      return 0;
    }

    v7 = v17[0];
    _ETLDebugPrint("ETLGSDIWaitForPINStatusEvent", "report has %u items\n", v18);
    if (v7)
    {
      break;
    }

    HDLCFrameFree();
  }

  v8 = 0;
  do
  {
    while (*v7 == 1002)
    {
      _ETLDebugPrint("ETLGSDIWaitForPINStatusEvent", "Found ID match\n");
      if (*(v7 + 24) < 7u)
      {
        goto LABEL_18;
      }

      v9 = *(v7 + 16);
      v10 = *v9;
      v11 = *(v9 + 5);
      v12 = *(v9 + 4) | (v11 << 8);
      _ETLDebugPrint("ETLGSDIWaitForPINStatusEvent", "TransactionID %u, expected %u\n", v12, a2);
      if (v12 != a2)
      {
        break;
      }

      *a3 = v10;
      if (v10)
      {
        _ETLDebugPrint("ETLGSDIWaitForPINStatusEvent", "Status was %u\n", v10);
        goto LABEL_18;
      }

      *a4 = v11;
      v7 = *(v7 + 32);
      v8 = 1;
      if (!v7)
      {
        HDLCFrameFree();
        return 1;
      }
    }

    v7 = *(v7 + 32);
  }

  while (v7);
  HDLCFrameFree();
  if ((v8 & 1) == 0)
  {
    goto LABEL_3;
  }

  return 1;
}

uint64_t APPLIB_DIAG_FTM_SetRFMode(unsigned __int8 *a1, unsigned int a2, __int16 a3)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 7;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 7];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v29, 0x7FDuLL);
  v27 = 2891;
  if ((v7 - 125) <= 1)
  {
    v29[0] = v7 & 0x5F;
    v28 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v27 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v27 + v15) = v8;
  *(&v27 + v16) = 7;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v27 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v27 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v27 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v27 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v27 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v27 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v27 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v27 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v27 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v27 + v25) = v23;
  memcpy(a1, &v27, v26);
  result = (v26 + 1);
  a1[v26] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetChannel(unsigned __int8 *a1, unsigned int a2, __int16 a3)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 8;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 8];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v29, 0x7FDuLL);
  v27 = 2891;
  if ((v7 - 125) <= 1)
  {
    v29[0] = v7 & 0x5F;
    v28 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v27 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v27 + v15) = v8;
  *(&v27 + v16) = 8;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v27 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v27 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v27 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v27 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v27 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v27 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v27 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v27 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v27 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v27 + v25) = v23;
  memcpy(a1, &v27, v26);
  result = (v26 + 1);
  a1[v26] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_Tx_On(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xD)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 2;
    v7 = crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC];
    v8 = crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 2];
    v9 = a1[5];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v11 = v10 ^ ~(v8 >> 8);
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 2]);
    if (a2 >= 16)
    {
      bzero(v24, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v23 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v8));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 2;
      v17 = v14 + 2;
      if ((v9 - 125) <= 1)
      {
        *(&__src + v17) = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v8 >> 8)) >> 8;
      *(&__src + v16) = v9;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_Tx_Off(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xD)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 3;
    v7 = crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC];
    v8 = crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 3];
    v9 = a1[5];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v11 = v10 ^ ~(v8 >> 8);
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 3]);
    if (a2 >= 16)
    {
      bzero(v24, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v23 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v8));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 3;
      v17 = v14 + 2;
      if ((v9 - 125) <= 1)
      {
        *(&__src + v17) = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v8 >> 8)) >> 8;
      *(&__src + v16) = v9;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SetWaveForm(unsigned __int8 *a1, unsigned int a2, int a3, int a4)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  *(a1 + 1) = gModeId;
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        a1[4] = -120;
        v9 = 10;
        v10 = 64;
        v11 = 1;
        v12 = 9;
        v13 = 8;
        v14 = 7;
        v15 = 6;
        v16 = 1;
        goto LABEL_11;
      }

      return 0xFFFFFFFFLL;
    }

    v9 = 9;
    v10 = 56;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v9 = 9;
    v10 = 56;
  }

  v11 = 50;
  v12 = 8;
  v13 = 7;
  v14 = 6;
  v15 = 4;
LABEL_11:
  a1[v15] = v11;
  a1[v14] = v16;
  LOWORD(v17) = -1;
  v18 = a1;
  do
  {
    v19 = *v18++;
    v17 = crc_16_l_table[(v19 ^ v17)] ^ ((v17 & 0xFF00) >> 8);
    v10 -= 8;
  }

  while (v10);
  a1[v13] = ~v17;
  a1[v12] = ~v17 >> 8;
  if (a2 < 2 * v9)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(__src, 0x800uLL);
  v20 = 0;
  v21 = 0;
  do
  {
    while (1)
    {
      v22 = a1[v20];
      v23 = v21;
      v24 = v21 + 1;
      if ((v22 - 125) > 1)
      {
        break;
      }

      v21 += 2;
      __src[v24] = v22 & 0x5F;
      __src[v23] = 125;
      if (v9 == ++v20)
      {
        goto LABEL_19;
      }
    }

    ++v21;
    __src[v23] = v22;
    ++v20;
  }

  while (v9 != v20);
LABEL_19:
  memcpy(a1, __src, v21);
  result = (v21 + 1);
  a1[v21] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPARange(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 54;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x36];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 54;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v28 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v28 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v28 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v28 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v28 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v28 + v26) = v25;
  memcpy(a1, &v28, v27);
  result = (v27 + 1);
  a1[v27] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPDM(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v9 = gModeId;
  a1[2] = gModeId;
  v10 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 0;
  a1[6] = a3;
  a1[8] = a4;
  v11 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5])];
  v12 = a1[5];
  v13 = crc_16_l_table[(v12 ^ v11 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v11) ^ a3)];
  v15 = crc_16_l_table[(a1[7] ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(v15 ^ HIBYTE(v14) ^ a4)];
  v17 = crc_16_l_table[(a1[9] ^ v16 ^ HIBYTE(v15))];
  *(a1 + 5) = v17 ^ ~HIBYTE(crc_16_l_table[(v15 ^ HIBYTE(v14) ^ a4)]);
  if (a2 < 24)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17 ^ ~(v16 >> 8);
  bzero(v37, 0x7FDuLL);
  v35 = 2891;
  if ((v9 - 125) <= 1)
  {
    v37[0] = v9 & 0x5F;
    v36 = 125;
    v19 = 4;
    v20 = 5;
    if ((v10 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v36 = v9;
  v19 = 3;
  v20 = 4;
  if ((v10 - 125) <= 1)
  {
LABEL_9:
    *(&v35 + v20) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v20) = v19 + 2;
  }

LABEL_10:
  v21 = a3;
  *(&v35 + v19) = v10;
  *(&v35 + v20) = 0;
  v22 = v20 + 2;
  if ((v12 - 125) <= 1)
  {
    *(&v35 + v22) = v12 & 0x5F;
    LOBYTE(v12) = 125;
    LODWORD(v22) = v20 + 3;
  }

  *(&v35 + v20 + 1) = v12;
  v23 = v22 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v35 + v23) = a3 & 0x5F;
    LODWORD(v23) = v22 + 2;
    v21 = 125;
  }

  *(&v35 + v22) = v21;
  v24 = a4;
  v25 = a1[7];
  v26 = v23 + 1;
  if ((v25 - 125) <= 1)
  {
    *(&v35 + v26) = v25 & 0x5F;
    LOBYTE(v25) = 125;
    LODWORD(v26) = v23 + 2;
  }

  *(&v35 + v23) = v25;
  v27 = v26 + 1;
  if (a4 - 125 <= 1)
  {
    *(&v35 + v27) = a4 & 0x5F;
    v24 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v35 + v26) = v24;
  v28 = ~(v17 ^ BYTE1(v16));
  v29 = a1[9];
  v30 = v27;
  v31 = v27 + 1;
  if ((v29 - 125) <= 1)
  {
    *(&v35 + v31) = v29 & 0x5F;
    LOBYTE(v29) = 125;
    LODWORD(v31) = v30 + 2;
  }

  v32 = (v17 ^ ~(v16 >> 8)) >> 8;
  *(&v35 + v30) = v29;
  v33 = v31 + 1;
  if ((v28 - 125) <= 1)
  {
    *(&v35 + v33) = v28 & 0x5F;
    LOBYTE(v28) = 125;
    LODWORD(v33) = v31 + 2;
  }

  *(&v35 + v31) = v28;
  v34 = v33 + 1;
  if (BYTE1(v18) - 125 <= 1)
  {
    *(&v35 + v34) = BYTE1(v18) & 0x5F;
    v32 = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&v35 + v33) = v32;
  memcpy(a1, &v35, v34);
  result = (v34 + 1);
  a1[v34] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_ExecuteTxSweep(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v27 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    return result;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 116;
  a1[6] = v6;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x74];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9)) ^ v6];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v26, 0x7FDuLL);
  v24 = 2891;
  if ((v7 - 125) <= 1)
  {
    v26[0] = v7 & 0x5F;
    v25 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v25 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v24 + v16) = v8 & 0x5F;
    LODWORD(v16) = v15 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v24 + v15) = v8;
  *(&v24 + v16) = 116;
  v17 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v24 + v17) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v17) = v16 + 3;
  }

  v18 = ~(v13 ^ BYTE1(v12));
  *(&v24 + v16 + 1) = v10;
  v19 = v17 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v24 + v19) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v19) = v17 + 2;
  }

  v20 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v24 + v17) = v6;
  v21 = v19;
  v22 = v19 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&v24 + v22) = v18 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v18) = 125;
  }

  *(&v24 + v21) = v18;
  v23 = v22 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v24 + v23) = BYTE1(v14) & 0x5F;
    v20 = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&v24 + v22) = v20;
  memcpy(a1, &v24, v23);
  result = (v23 + 1);
  a1[v23] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPDMStepSize(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v27 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    return result;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = -127;
  a1[6] = v6;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x81];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9)) ^ v6];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v26, 0x7FDuLL);
  v24 = 2891;
  if ((v7 - 125) <= 1)
  {
    v26[0] = v7 & 0x5F;
    v25 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v25 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v24 + v16) = v8 & 0x5F;
    LODWORD(v16) = v15 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v24 + v15) = v8;
  *(&v24 + v16) = -127;
  v17 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v24 + v17) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v17) = v16 + 3;
  }

  v18 = ~(v13 ^ BYTE1(v12));
  *(&v24 + v16 + 1) = v10;
  v19 = v17 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v24 + v19) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v19) = v17 + 2;
  }

  v20 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v24 + v17) = v6;
  v21 = v19;
  v22 = v19 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&v24 + v22) = v18 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v18) = 125;
  }

  *(&v24 + v21) = v18;
  v23 = v22 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v24 + v23) = BYTE1(v14) & 0x5F;
    v20 = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&v24 + v22) = v20;
  memcpy(a1, &v24, v23);
  result = (v23 + 1);
  a1[v23] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_ConfigTxSweep(unsigned __int8 *a1, unsigned int a2, __int16 a3, __int16 a4)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 125;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x7D];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v41 = v19 ^ ~(v18 >> 8);
      bzero(v43, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v43[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v43[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v43[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v43[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v43[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v43[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v43[v25 - 1] = v10;
      *&v43[v26 - 1] = 23933;
      v28 = v26 + 3;
      if ((v14 - 125) <= 1)
      {
        v43[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 4;
      }

      v43[v26 + 1] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v43[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v43[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v43[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v43[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v43[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v43[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v43[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v41);
      v43[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v43[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v43[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v41) - 125 <= 1)
      {
        v43[v40 - 1] = BYTE1(v41) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v43[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_GetAllHDETValues(unsigned __int8 *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x2D)
  {
    bzero(a1, a2);
    *a1 = 2891;
    *(a1 + 1) = gModeId;
    a1[4] = -112;
    v5 = 560;
    LOWORD(v6) = -1;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v6 = crc_16_l_table[(v8 ^ v6)] ^ ((v6 & 0xFF00) >> 8);
      v5 -= 8;
    }

    while (v5);
    *(a1 + 35) = ~v6;
    if (a2 >= 144)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 72)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 72);
LABEL_11:
      memcpy(a1, __src, v10);
      result = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_GetADCValue(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    return result;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 59;
  a1[6] = v6;
  *(a1 + 4) = -14636;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x3B];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9)) ^ v6];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4];
  v15 = crc_16_l_table[crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4] ^ (v13 >> 8) ^ 0xC6];
  v16 = v15 ^ ~(v14 >> 8);
  *(a1 + 5) = v15 ^ ~HIBYTE(crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4]);
  if (a2 < 24)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v17 = 4;
    v18 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v17 = 3;
  v18 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v18) = v8 & 0x5F;
    LODWORD(v18) = v17 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v28 + v17) = v8;
  *(&v28 + v18) = 59;
  v19 = v18 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v28 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v18 + 3;
  }

  *(&v28 + v18 + 1) = v10;
  v20 = v19;
  v21 = v19 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v28 + v21) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v21) = v20 + 2;
  }

  *(&v28 + v20) = v6;
  v22 = ~(v15 ^ BYTE1(v14));
  v23 = a1[7];
  v24 = v21 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v28 + v24) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v24) = v21 + 2;
  }

  v25 = (v15 ^ ~(v14 >> 8)) >> 8;
  *(&v28 + v21) = v23;
  *(&v28 + v24) = -14636;
  v26 = v24 + 3;
  if ((v22 - 125) <= 1)
  {
    *(&v28 + v26) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v26) = v24 + 4;
  }

  *(&v28 + v24 + 2) = v22;
  v27 = v26 + 1;
  if (BYTE1(v16) - 125 <= 1)
  {
    *(&v28 + v27) = BYTE1(v16) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v28 + v26) = v25;
  memcpy(a1, &v28, v27);
  result = (v27 + 1);
  a1[v27] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetHDETTracking(unsigned __int8 *a1, unsigned int a2, __int16 a3, __int16 a4)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 124;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x7C];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 24)
    {
      v20 = v19;
      v41 = v19 ^ ~(v18 >> 8);
      bzero(v43, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v43[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v43[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v43[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v43[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v43[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v43[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v43[v25 - 1] = v10;
      v43[v26 - 1] = 124;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v43[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v43[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v43[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v43[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v43[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v43[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v43[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v43[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v43[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v41);
      v43[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v43[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v43[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v41) - 125 <= 1)
      {
        v43[v40 - 1] = BYTE1(v41) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v43[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetThermistorValue(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = -2115764917;
    if (a2 >= 8)
    {
      *a1 = -2115764917;
      *(a1 + 4) = 126;
      return 5;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_GetRxAGC(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xF)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 53;
    *(a1 + 3) = 0;
    v7 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 0x35];
    v8 = a1[5];
    v9 = crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v10 = crc_16_l_table[v9 ^ (v7 >> 8)];
    v11 = crc_16_l_table[crc_16_l_table[v9 ^ (v7 >> 8)] ^ HIBYTE(crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))])];
    v12 = v11 ^ ~(v10 >> 8);
    *(a1 + 4) = v11 ^ ~HIBYTE(crc_16_l_table[v9 ^ (v7 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v24, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v13 = 3;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v13 = 4;
        LOBYTE(v5) = 125;
      }

      v23 = v5;
      v14 = v13;
      v15 = v13 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v15) = v6 & 0x5F;
        LODWORD(v15) = v14 + 2;
        LOBYTE(v6) = 125;
      }

      v16 = ~(v11 ^ BYTE1(v10));
      *(&__src + v14) = v6;
      v17 = v15 + 1;
      *(&__src + v15) = 53;
      v18 = v15 + 2;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v18) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v18) = v15 + 3;
      }

      v19 = (v11 ^ ~(v10 >> 8)) >> 8;
      *(&__src + v17) = v8;
      *(&__src + v18) = 0;
      v20 = v18 + 3;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v20) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v20) = v18 + 4;
      }

      *(&__src + v18 + 2) = v16;
      v21 = v20 + 1;
      if (BYTE1(v12) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v12) & 0x5F;
        v19 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_GetSynthState(unsigned __int8 *a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xF)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 16;
    a1[6] = -8;
    v7 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 0x10];
    v8 = a1[5];
    v9 = crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v10 = crc_16_l_table[crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))] ^ (v7 >> 8) ^ 0xF8];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 7) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))]);
    if (a2 >= 18)
    {
      bzero(v23, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v23[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v22 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v9));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 16;
      v17 = v14 + 2;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v17) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v9 >> 8)) >> 8;
      *(&__src + v16) = v8;
      *(&__src + v17) = -8;
      v19 = v17 + 2;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v19) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v19) = v17 + 3;
      }

      *(&__src + v17 + 1) = v15;
      v20 = v19 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v20) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v18;
      memcpy(a1, &__src, v20);
      result = (v20 + 1);
      a1[v20] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SetLNARange(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 58;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x3A];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 58;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v28 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v28 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v28 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v28 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v28 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v28 + v26) = v25;
  memcpy(a1, &v28, v27);
  result = (v27 + 1);
  a1[v27] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetDVGAOffset(unsigned __int8 *a1, unsigned int a2, __int16 a3)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 117;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x75];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v29, 0x7FDuLL);
  v27 = 2891;
  if ((v7 - 125) <= 1)
  {
    v29[0] = v7 & 0x5F;
    v28 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v27 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v27 + v15) = v8;
  *(&v27 + v16) = 117;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v27 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v27 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v27 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v27 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v27 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v27 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v27 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v27 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v27 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v27 + v25) = v23;
  memcpy(a1, &v27, v26);
  result = (v26 + 1);
  a1[v26] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetDVGAOffset(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 111;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x6F];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 111;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v28 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v28 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v28 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v28 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v28 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v28 + v26) = v25;
  memcpy(a1, &v28, v27);
  result = (v27 + 1);
  a1[v27] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetLNAOffset(unsigned __int8 *a1, unsigned int a2, __int16 a3, __int16 a4)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 118;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x76];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v41 = v19 ^ ~(v18 >> 8);
      bzero(v43, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v43[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v43[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v43[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v43[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v43[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v43[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v43[v25 - 1] = v10;
      v43[v26 - 1] = 118;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v43[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v43[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v43[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v43[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v43[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v43[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v43[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v43[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v43[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v41);
      v43[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v43[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v43[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v41) - 125 <= 1)
      {
        v43[v40 - 1] = BYTE1(v41) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v43[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SetLNAOffset(unsigned __int8 *a1, unsigned int a2, __int16 a3, __int16 a4)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 81;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x51];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v41 = v19 ^ ~(v18 >> 8);
      bzero(v43, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v43[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v43[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v43[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v43[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v43[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v43[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v43[v25 - 1] = v10;
      v43[v26 - 1] = 81;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v43[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v43[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v43[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v43[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v43[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v43[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v43[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v43[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v43[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v41);
      v43[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v43[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v43[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v41) - 125 <= 1)
      {
        v43[v40 - 1] = BYTE1(v41) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v43[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SetgModeId(unsigned int a1)
{
  if (a1 > 0x8002)
  {
    return 0xFFFFFFFFLL;
  }

  gModeId = a1;
  return 1;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_DVGA(char *a1, unsigned int a2, int a3, __int16 a4)
{
  v46 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 1;
    a1[10] = a3;
    *(a1 + 11) = a4;
    v9 = HIBYTE(a4);
    v10 = a1[5];
    v11 = crc_16_l_table[v10 ^ 0xF7];
    v12 = a1[6];
    v13 = crc_16_l_table[(v12 ^ v11) ^ 0x57];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v11))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    v20 = v19 ^ ~(v18 >> 8);
    *(a1 + 13) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 30)
    {
      bzero(v45, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v45[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      v44 = v21;
      *&v45[v22 - 1] = 16781835;
      v23 = v22 + 5;
      if ((v10 - 125) <= 1)
      {
        v45[v23 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v23) = v22 + 6;
      }

      v45[(v22 | 4) - 1] = v10;
      v24 = v23;
      v25 = v23 + 1;
      if ((v12 - 125) <= 1)
      {
        v45[v25 - 1] = v12 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v12) = 125;
      }

      v45[v24 - 1] = v12;
      v26 = a1[7];
      v27 = v25;
      v28 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v45[v28 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v45[v27 - 1] = v26;
      v29 = a1[8];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v45[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v45[v28 - 1] = v29;
      v31 = a1[9];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v45[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v34 = a4;
      v45[v32 - 1] = v31;
      v35 = v33 + 1;
      if ((a3 - 125) <= 1)
      {
        v45[v35 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v35) = v33 + 2;
      }

      v45[v33 - 1] = a3;
      v36 = v35 + 1;
      if (a4 - 125 <= 1)
      {
        v45[v36 - 1] = a4 & 0x5F;
        LODWORD(v36) = v35 + 2;
        v34 = 125;
      }

      v37 = ~(v19 ^ BYTE1(v18));
      v45[v35 - 1] = v34;
      v38 = v36;
      v39 = v36 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v45[v39 - 1] = HIBYTE(a4) & 0x5F;
        v9 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v40 = (v19 ^ ~(v18 >> 8)) >> 8;
      v45[v38 - 1] = v9;
      v41 = v39;
      v42 = v39 + 1;
      if ((v37 - 125) <= 1)
      {
        v45[v42 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v45[v41 - 1] = v37;
      v43 = v42 + 1;
      if (BYTE1(v20) - 125 <= 1)
      {
        v45[v43 - 1] = BYTE1(v20) & 0x5F;
        v40 = 125;
        LODWORD(v43) = v42 + 2;
      }

      v45[v42 - 1] = v40;
      memcpy(a1, &v44, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_LNA(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, __int16 a4, unsigned __int8 a5)
{
  v65 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 2;
    a1[10] = a3;
    a1[11] = a5;
    *(a1 + 6) = a4;
    v11 = HIBYTE(a4);
    v12 = a1[5];
    v13 = crc_16_l_table[v12 ^ 0x6C];
    v14 = a1[6];
    v15 = crc_16_l_table[(v14 ^ v13) ^ 0x65];
    v16 = crc_16_l_table[(a1[7] ^ v15 ^ HIBYTE(v13))];
    v17 = crc_16_l_table[(a1[8] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[9] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a3 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a5 ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))] ^ (v20 >> 8)];
    v23 = v22 ^ ~(v21 >> 8);
    *(a1 + 7) = v22 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))]);
    if (a2 >= 32)
    {
      bzero(v64, 0x7FFuLL);
      v24 = *a1;
      if ((v24 - 125) > 1)
      {
        v25 = 1;
      }

      else
      {
        v64[0] = v24 & 0x5F;
        v25 = 2;
        LOBYTE(v24) = 125;
      }

      __src = v24;
      v26 = a1[1];
      v27 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v64[v27 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v27) = v25 + 2;
      }

      v64[v25 - 1] = v26;
      v28 = a1[2];
      v29 = v27;
      v30 = v27 + 1;
      if ((v28 - 125) <= 1)
      {
        v64[v30 - 1] = v28 & 0x5F;
        LODWORD(v30) = v29 + 2;
        LOBYTE(v28) = 125;
      }

      v64[v29 - 1] = v28;
      v31 = a1[3];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v64[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v64[v32 - 1] = v31;
      v34 = a1[4];
      v35 = v33;
      v36 = v33 + 1;
      if ((v34 - 125) <= 1)
      {
        v64[v36 - 1] = v34 & 0x5F;
        LODWORD(v36) = v35 + 2;
        LOBYTE(v34) = 125;
      }

      v64[v35 - 1] = v34;
      v37 = v36;
      v38 = v36 + 1;
      if ((v12 - 125) <= 1)
      {
        v64[v38 - 1] = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v64[v37 - 1] = v12;
      v39 = v38;
      v40 = v38 + 1;
      if ((v14 - 125) <= 1)
      {
        v64[v40 - 1] = v14 & 0x5F;
        LODWORD(v40) = v39 + 2;
        LOBYTE(v14) = 125;
      }

      v64[v39 - 1] = v14;
      v41 = a1[7];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v64[v43 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v43) = v42 + 2;
      }

      v64[v42 - 1] = v41;
      v44 = a1[8];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v64[v46 - 1] = v44 & 0x5F;
        LODWORD(v46) = v45 + 2;
        LOBYTE(v44) = 125;
      }

      v64[v45 - 1] = v44;
      v47 = a1[9];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v64[v49 - 1] = v47 & 0x5F;
        LOBYTE(v47) = 125;
        LODWORD(v49) = v48 + 2;
      }

      v64[v48 - 1] = v47;
      v50 = a1[10];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v64[v52 - 1] = v50 & 0x5F;
        LODWORD(v52) = v51 + 2;
        LOBYTE(v50) = 125;
      }

      v64[v51 - 1] = v50;
      v53 = a4;
      v54 = a1[11];
      v55 = v52 + 1;
      if ((v54 - 125) <= 1)
      {
        v64[v55 - 1] = v54 & 0x5F;
        LOBYTE(v54) = 125;
        LODWORD(v55) = v52 + 2;
      }

      v64[v52 - 1] = v54;
      v56 = v55 + 1;
      if (a4 - 125 <= 1)
      {
        v64[v56 - 1] = a4 & 0x5F;
        LODWORD(v56) = v55 + 2;
        v53 = 125;
      }

      v57 = ~(v22 ^ BYTE1(v21));
      v64[v55 - 1] = v53;
      v58 = v56 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v64[v58 - 1] = HIBYTE(a4) & 0x5F;
        v11 = 125;
        LODWORD(v58) = v56 + 2;
      }

      v59 = (v22 ^ ~(v21 >> 8)) >> 8;
      v64[v56 - 1] = v11;
      v60 = v58;
      v61 = v58 + 1;
      if ((v57 - 125) <= 1)
      {
        v64[v61 - 1] = v57 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v57) = 125;
      }

      v64[v60 - 1] = v57;
      v62 = v61 + 1;
      if (BYTE1(v23) - 125 <= 1)
      {
        v64[v62 - 1] = BYTE1(v23) & 0x5F;
        v59 = 125;
        LODWORD(v62) = v61 + 2;
      }

      v64[v61 - 1] = v59;
      memcpy(a1, &__src, v62);
      result = (v62 + 1);
      a1[v62] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SecondChainTestCall(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 123;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x7B];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9) ^ a3)];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v27, 0x7FDuLL);
  v25 = 2891;
  if ((v7 - 125) <= 1)
  {
    v27[0] = v7 & 0x5F;
    v26 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v25 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v25 + v15) = v8;
  v18 = v16 + 1;
  *(&v25 + v16) = 123;
  v19 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v25 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v16 + 3;
  }

  v20 = ~(v13 ^ BYTE1(v12));
  *(&v25 + v18) = v10;
  v21 = v19 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v25 + v21) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v21) = v19 + 2;
  }

  v22 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v25 + v19) = v17;
  v23 = v21 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&v25 + v23) = v20 & 0x5F;
    LODWORD(v23) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&v25 + v21) = v20;
  v24 = v23 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v25 + v24) = BYTE1(v14) & 0x5F;
    v22 = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&v25 + v23) = v22;
  memcpy(a1, &v25, v24);
  result = (v24 + 1);
  a1[v24] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetSecondaryChain(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 121;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x79];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9) ^ a3)];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v27, 0x7FDuLL);
  v25 = 2891;
  if ((v7 - 125) <= 1)
  {
    v27[0] = v7 & 0x5F;
    v26 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v25 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v25 + v15) = v8;
  v18 = v16 + 1;
  *(&v25 + v16) = 121;
  v19 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v25 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v16 + 3;
  }

  v20 = ~(v13 ^ BYTE1(v12));
  *(&v25 + v18) = v10;
  v21 = v19 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v25 + v21) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v21) = v19 + 2;
  }

  v22 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v25 + v19) = v17;
  v23 = v21 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&v25 + v23) = v20 & 0x5F;
    LODWORD(v23) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&v25 + v21) = v20;
  v24 = v23 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v25 + v24) = BYTE1(v14) & 0x5F;
    v22 = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&v25 + v23) = v22;
  memcpy(a1, &v25, v24);
  result = (v24 + 1);
  a1[v24] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_ChangeFTM_BootMode(char *a1, unsigned int a2, char a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = -15065;
    a1[2] = 1;
    v4 = 1064;
    a1[3] = a3;
    LOWORD(v5) = -1;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = crc_16_l_table[(v7 ^ v5)] ^ ((v5 & 0xFF00) >> 8);
      v4 -= 8;
    }

    while (v4);
    *(a1 + 133) = ~v5;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 135);
LABEL_11:
      memcpy(a1, __src, v10);
      v3 = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_IM2(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v39 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x14)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 1182539;
  a1[4] = 3;
  a1[10] = a3;
  v7 = a1[5];
  v8 = crc_16_l_table[v7 ^ 0xE5];
  v9 = a1[6];
  v10 = crc_16_l_table[(v9 ^ v8) ^ 0x74];
  v11 = crc_16_l_table[(a1[7] ^ v10 ^ HIBYTE(v8))];
  v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
  v15 = v14 ^ ~(v13 >> 8);
  *(a1 + 6) = v14 ^ ~HIBYTE(crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))]);
  if (a2 < 28)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v38, 0x7FAuLL);
  __src = 1182539;
  v36 = 3;
  if ((v7 - 125) <= 1)
  {
    v38[0] = v7 & 0x5F;
    v37 = 125;
    v16 = 7;
    v17 = 8;
    if ((v9 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v37 = v7;
  v16 = 6;
  v17 = 7;
  if ((v9 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v17) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v17) = v16 + 2;
  }

LABEL_10:
  *(&__src + v16) = v9;
  v18 = a1[7];
  v19 = v17;
  v20 = v17 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v20) = v18 & 0x5F;
    LODWORD(v20) = v19 + 2;
    LOBYTE(v18) = 125;
  }

  *(&__src + v19) = v18;
  v21 = a1[8];
  v22 = v20;
  v23 = v20 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&__src + v23) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&__src + v22) = v21;
  v24 = a1[9];
  v25 = v23 + 1;
  if ((v24 - 125) <= 1)
  {
    *(&__src + v25) = v24 & 0x5F;
    LOBYTE(v24) = 125;
    LODWORD(v25) = v23 + 2;
  }

  *(&__src + v23) = v24;
  v26 = v25 + 1;
  if ((a3 - 125) <= 1)
  {
    *(&__src + v26) = a3 & 0x5F;
    LOBYTE(a3) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = a3;
  v27 = ~(v14 ^ BYTE1(v13));
  v28 = a1[11];
  v29 = v26;
  v30 = v26 + 1;
  if ((v28 - 125) <= 1)
  {
    *(&__src + v30) = v28 & 0x5F;
    LOBYTE(v28) = 125;
    LODWORD(v30) = v29 + 2;
  }

  v31 = (v14 ^ ~(v13 >> 8)) >> 8;
  *(&__src + v29) = v28;
  v32 = v30;
  v33 = v30 + 1;
  if ((v27 - 125) <= 1)
  {
    *(&__src + v33) = v27 & 0x5F;
    LOBYTE(v27) = 125;
    LODWORD(v33) = v32 + 2;
  }

  *(&__src + v32) = v27;
  v34 = v33 + 1;
  if (BYTE1(v15) - 125 <= 1)
  {
    *(&__src + v34) = BYTE1(v15) & 0x5F;
    v31 = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&__src + v33) = v31;
  memcpy(a1, &__src, v34);
  result = (v34 + 1);
  a1[v34] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_INTELLICEIVER(char *a1, unsigned int a2, int a3, __int16 a4)
{
  v46 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 4;
    a1[10] = a3;
    *(a1 + 11) = a4;
    v9 = HIBYTE(a4);
    v10 = a1[5];
    v11 = crc_16_l_table[v10 ^ 0x5A];
    v12 = a1[6];
    v13 = crc_16_l_table[(v12 ^ v11)];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v11))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    v20 = v19 ^ ~(v18 >> 8);
    *(a1 + 13) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 30)
    {
      bzero(v45, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v45[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      v44 = v21;
      *&v45[v22 - 1] = 67113483;
      v23 = v22 + 5;
      if ((v10 - 125) <= 1)
      {
        v45[v23 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v23) = v22 + 6;
      }

      v45[(v22 | 4) - 1] = v10;
      v24 = v23;
      v25 = v23 + 1;
      if ((v12 - 125) <= 1)
      {
        v45[v25 - 1] = v12 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v12) = 125;
      }

      v45[v24 - 1] = v12;
      v26 = a1[7];
      v27 = v25;
      v28 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v45[v28 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v45[v27 - 1] = v26;
      v29 = a1[8];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v45[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v45[v28 - 1] = v29;
      v31 = a1[9];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v45[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v34 = a4;
      v45[v32 - 1] = v31;
      v35 = v33 + 1;
      if ((a3 - 125) <= 1)
      {
        v45[v35 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v35) = v33 + 2;
      }

      v45[v33 - 1] = a3;
      v36 = v35 + 1;
      if (a4 - 125 <= 1)
      {
        v45[v36 - 1] = a4 & 0x5F;
        LODWORD(v36) = v35 + 2;
        v34 = 125;
      }

      v37 = ~(v19 ^ BYTE1(v18));
      v45[v35 - 1] = v34;
      v38 = v36;
      v39 = v36 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v45[v39 - 1] = HIBYTE(a4) & 0x5F;
        v9 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v40 = (v19 ^ ~(v18 >> 8)) >> 8;
      v45[v38 - 1] = v9;
      v41 = v39;
      v42 = v39 + 1;
      if ((v37 - 125) <= 1)
      {
        v45[v42 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v45[v41 - 1] = v37;
      v43 = v42 + 1;
      if (BYTE1(v20) - 125 <= 1)
      {
        v45[v43 - 1] = BYTE1(v20) & 0x5F;
        v40 = 125;
        LODWORD(v43) = v42 + 2;
      }

      v45[v42 - 1] = v40;
      memcpy(a1, &v44, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_DO_ENH_XO_DC_CAL(char *a1, unsigned int a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 1313611;
    a1[4] = -102;
    a1[8] = 12;
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 40) = *(a3 + 30);
    *(a1 + 26) = v8;
    *(a1 + 10) = v7;
    v9 = 448;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 28) = ~v10;
    if (a2 >= 116)
    {
      bzero(__src, 0x800uLL);
      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = a1[v13];
          v16 = v14;
          v17 = v14 + 1;
          if ((v15 - 125) > 1)
          {
            break;
          }

          v14 += 2;
          __src[v17] = v15 & 0x5F;
          __src[v16] = 125;
          if (++v13 == 58)
          {
            goto LABEL_11;
          }
        }

        ++v14;
        __src[v16] = v15;
        ++v13;
      }

      while (v13 != 58);
LABEL_11:
      memcpy(a1, __src, v14);
      result = (v14 + 1);
      a1[v14] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_DO_ENH_XO_FT_CURVE_CAL(char *a1, unsigned int a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 1313611;
    a1[4] = -101;
    a1[8] = 12;
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 40) = *(a3 + 30);
    *(a1 + 26) = v8;
    *(a1 + 10) = v7;
    v9 = 448;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 28) = ~v10;
    if (a2 >= 116)
    {
      bzero(__src, 0x800uLL);
      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = a1[v13];
          v16 = v14;
          v17 = v14 + 1;
          if ((v15 - 125) > 1)
          {
            break;
          }

          v14 += 2;
          __src[v17] = v15 & 0x5F;
          __src[v16] = 125;
          if (++v13 == 58)
          {
            goto LABEL_11;
          }
        }

        ++v14;
        __src[v16] = v15;
        ++v13;
      }

      while (v13 != 58);
LABEL_11:
      memcpy(a1, __src, v14);
      result = (v14 + 1);
      a1[v14] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_PILOT_ACQ(char *a1, unsigned int a2, int a3, __int16 a4, int a5)
{
  v87 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 100;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    v11 = crc_16_l_table[a1[6] ^ 0x7CLL];
    v12 = crc_16_l_table[a1[7] ^ 0x35 ^ v11];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(BYTE1(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(BYTE2(a3) ^ v16 ^ HIBYTE(v15))];
    *(a1 + 4) = a5;
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)];
    v22 = crc_16_l_table[(BYTE1(a5) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    *(a1 + 10) = v24 ^ ~HIBYTE(crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))]);
    if (a2 >= 44)
    {
      bzero(v86, 0x7FFuLL);
      v25 = *a1;
      if ((v25 - 125) > 1)
      {
        v26 = 1;
      }

      else
      {
        v86[0] = v25 & 0x5F;
        v26 = 2;
        LOBYTE(v25) = 125;
      }

      __src = v25;
      v27 = a1[1];
      v28 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v86[v28 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v28) = v26 + 2;
      }

      v86[v26 - 1] = v27;
      v29 = a1[2];
      v30 = v28;
      v31 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v86[v31 - 1] = v29 & 0x5F;
        LODWORD(v31) = v30 + 2;
        LOBYTE(v29) = 125;
      }

      v86[v30 - 1] = v29;
      v32 = a1[3];
      v33 = v31;
      v34 = v31 + 1;
      if ((v32 - 125) <= 1)
      {
        v86[v34 - 1] = v32 & 0x5F;
        LOBYTE(v32) = 125;
        LODWORD(v34) = v33 + 2;
      }

      v86[v33 - 1] = v32;
      v35 = a1[4];
      v36 = v34;
      v37 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v86[v37 - 1] = v35 & 0x5F;
        LODWORD(v37) = v36 + 2;
        LOBYTE(v35) = 125;
      }

      v86[v36 - 1] = v35;
      v38 = a1[5];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v86[v40 - 1] = v38 & 0x5F;
        LOBYTE(v38) = 125;
        LODWORD(v40) = v39 + 2;
      }

      v86[v39 - 1] = v38;
      v41 = a1[6];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v86[v43 - 1] = v41 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v41) = 125;
      }

      v86[v42 - 1] = v41;
      v44 = a1[7];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v86[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v86[v45 - 1] = v44;
      v47 = a1[8];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v86[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v86[v48 - 1] = v47;
      v50 = a1[9];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v86[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v86[v51 - 1] = v50;
      v53 = a1[10];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v86[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v86[v54 - 1] = v53;
      v56 = a1[11];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v86[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v86[v57 - 1] = v56;
      v59 = a1[12];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v86[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v86[v60 - 1] = v59;
      v62 = a1[13];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v86[v64 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v64) = v63 + 2;
      }

      v86[v63 - 1] = v62;
      v65 = a1[14];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v86[v67 - 1] = v65 & 0x5F;
        LODWORD(v67) = v66 + 2;
        LOBYTE(v65) = 125;
      }

      v86[v66 - 1] = v65;
      v68 = a1[15];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v86[v70 - 1] = v68 & 0x5F;
        LOBYTE(v68) = 125;
        LODWORD(v70) = v69 + 2;
      }

      v86[v69 - 1] = v68;
      v71 = a1[16];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v86[v73 - 1] = v71 & 0x5F;
        LODWORD(v73) = v72 + 2;
        LOBYTE(v71) = 125;
      }

      v86[v72 - 1] = v71;
      v74 = a1[17];
      v75 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v86[v75 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v75) = v73 + 2;
      }

      v86[v73 - 1] = v74;
      v76 = a1[18];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v86[v77 - 1] = v76 & 0x5F;
        LODWORD(v77) = v75 + 2;
        LOBYTE(v76) = 125;
      }

      v86[v75 - 1] = v76;
      v78 = ~(v24 ^ BYTE1(v23));
      v79 = a1[19];
      v80 = v77;
      v81 = v77 + 1;
      if ((v79 - 125) <= 1)
      {
        v86[v81 - 1] = v79 & 0x5F;
        LOBYTE(v79) = 125;
        LODWORD(v81) = v80 + 2;
      }

      v82 = ((v24 ^ ~(v23 >> 8)) >> 8);
      v86[v80 - 1] = v79;
      v83 = v81 + 1;
      if ((v78 - 125) <= 1)
      {
        v86[v83 - 1] = v78 & 0x5F;
        LODWORD(v83) = v81 + 2;
        LOBYTE(v78) = 125;
      }

      v86[v81 - 1] = v78;
      v84 = v83 + 1;
      if ((v82 - 125) <= 1)
      {
        v86[v84 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v84) = v83 + 2;
      }

      v86[v83 - 1] = v82;
      memcpy(a1, &__src, v84);
      result = (v84 + 1);
      a1[v84] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_DEMOD_SYNC(unsigned __int8 *a1, unsigned int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x15)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 461643;
  a1[4] = 101;
  v5 = a1[5];
  v6 = crc_16_l_table[v5 ^ 0xFD];
  v7 = a1[6];
  v8 = crc_16_l_table[(v7 ^ v6) ^ 0xCE];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v6))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v29, 0x7FAuLL);
  __src = 461643;
  v27 = 101;
  if ((v5 - 125) <= 1)
  {
    v29[0] = v5 & 0x5F;
    v28 = 125;
    v12 = 7;
    v13 = 8;
    if ((v7 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = v5;
  v12 = 6;
  v13 = 7;
  if ((v7 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v13) = v7 & 0x5F;
    LOBYTE(v7) = 125;
    LODWORD(v13) = v12 + 2;
  }

LABEL_10:
  *(&__src + v12) = v7;
  v14 = a1[7];
  v15 = v13 + 1;
  if ((v14 - 125) <= 1)
  {
    *(&__src + v15) = v14 & 0x5F;
    LOBYTE(v14) = 125;
    LODWORD(v15) = v13 + 2;
  }

  *(&__src + v13) = v14;
  v16 = a1[8];
  v17 = v15 + 1;
  if ((v16 - 125) <= 1)
  {
    *(&__src + v17) = v16 & 0x5F;
    LOBYTE(v16) = 125;
    LODWORD(v17) = v15 + 2;
  }

  *(&__src + v15) = v16;
  v18 = ~(v11 ^ BYTE1(v10));
  v19 = a1[9];
  v20 = v17;
  v21 = v17 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v21) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v21) = v20 + 2;
  }

  v22 = ((v11 ^ ~(v10 >> 8)) >> 8);
  *(&__src + v20) = v19;
  v23 = v21;
  v24 = v21 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v24) = v18 & 0x5F;
    LOBYTE(v18) = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&__src + v23) = v18;
  v25 = v24 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&__src + v25) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v22;
  memcpy(a1, &__src, v25);
  result = (v25 + 1);
  a1[v25] = 126;
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_DEMOD_FCH(char *a1, unsigned int a2, int a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, char a11, char a12, char a13, char a14)
{
  v50 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 102;
    *(a1 + 10) = a3;
    v23 = crc_16_l_table[a1[6] ^ 0xCCLL];
    v24 = crc_16_l_table[(a1[7] ^ v23) ^ 6];
    v25 = crc_16_l_table[(a1[8] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[9] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a3 ^ v26 ^ HIBYTE(v25))];
    a1[14] = a4;
    v28 = crc_16_l_table[(BYTE1(a3) ^ v27 ^ HIBYTE(v26))];
    a1[15] = a5;
    v29 = crc_16_l_table[(BYTE2(a3) ^ v28 ^ HIBYTE(v27))];
    a1[16] = a6;
    v30 = crc_16_l_table[(HIBYTE(a3) ^ v29 ^ HIBYTE(v28))];
    a1[17] = a7;
    v31 = crc_16_l_table[(a4 ^ v30 ^ HIBYTE(v29))];
    a1[18] = a8;
    v32 = crc_16_l_table[(a5 ^ v31 ^ HIBYTE(v30))];
    a1[19] = a9;
    v33 = crc_16_l_table[(a6 ^ v32 ^ HIBYTE(v31))];
    *(a1 + 5) = a10;
    v34 = crc_16_l_table[(a7 ^ v33 ^ HIBYTE(v32))];
    a1[24] = a11;
    v35 = crc_16_l_table[(a8 ^ v34 ^ HIBYTE(v33))];
    a1[25] = a12;
    v36 = crc_16_l_table[(a9 ^ v35 ^ HIBYTE(v34))];
    a1[26] = a13;
    v37 = crc_16_l_table[(a10 ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[21] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[22] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[23] ^ v39 ^ HIBYTE(v38))];
    a1[27] = a14;
    v41 = crc_16_l_table[(a11 ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a12 ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a13 ^ v42 ^ HIBYTE(v41))];
    *(a1 + 14) = crc_16_l_table[(v43 ^ HIBYTE(v42) ^ a14)] ^ ~(v43 >> 8);
    if (a2 >= 60)
    {
      bzero(__src, 0x800uLL);
      v44 = 0;
      v45 = 0;
      do
      {
        while (1)
        {
          v46 = a1[v44];
          v47 = v45;
          v48 = v45 + 1;
          if ((v46 - 125) > 1)
          {
            break;
          }

          v45 += 2;
          __src[v48] = v46 & 0x5F;
          __src[v47] = 125;
          if (++v44 == 30)
          {
            goto LABEL_9;
          }
        }

        ++v45;
        __src[v47] = v46;
        ++v44;
      }

      while (v44 != 30);
LABEL_9:
      memcpy(a1, __src, v45);
      result = (v45 + 1);
      a1[v45] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_MOD_FCH(char *a1, unsigned int a2, int a3, char a4, int a5, char a6, __int16 a7, int a8)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 104;
    *(a1 + 10) = a3;
    *(a1 + 15) = a5;
    *(a1 + 10) = a7;
    v17 = crc_16_l_table[a1[6] ^ 0xDCLL];
    v18 = crc_16_l_table[a1[7] ^ 0x9C ^ v17];
    v19 = crc_16_l_table[(a1[8] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[9] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a3 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(BYTE1(a3) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(BYTE2(a3) ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(HIBYTE(a3) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a4 ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a5 ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(BYTE1(a5) ^ v26 ^ HIBYTE(v25))];
    a1[14] = a4;
    v28 = crc_16_l_table[(BYTE2(a5) ^ v27 ^ HIBYTE(v26))];
    a1[19] = a6;
    v29 = crc_16_l_table[(HIBYTE(a5) ^ v28 ^ HIBYTE(v27))];
    *(a1 + 6) = a8;
    v30 = crc_16_l_table[(a6 ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a7 ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(HIBYTE(a7) ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[22] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[23] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a8 ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[25] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[26] ^ v36 ^ HIBYTE(v35))];
    *(a1 + 14) = crc_16_l_table[(a1[27] ^ v37 ^ HIBYTE(v36))] ^ ~(v37 >> 8);
    if (a2 >= 60)
    {
      bzero(__src, 0x800uLL);
      v38 = 0;
      v39 = 0;
      do
      {
        while (1)
        {
          v40 = a1[v38];
          v41 = v39;
          v42 = v39 + 1;
          if ((v40 - 125) > 1)
          {
            break;
          }

          v39 += 2;
          __src[v42] = v40 & 0x5F;
          __src[v41] = 125;
          if (++v38 == 30)
          {
            goto LABEL_9;
          }
        }

        ++v39;
        __src[v41] = v40;
        ++v38;
      }

      while (v38 != 30);
LABEL_9:
      memcpy(a1, __src, v39);
      result = (v39 + 1);
      a1[v39] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_FWD_HHO_SC(char *a1, unsigned int a2, int a3, __int16 a4, __int16 a5)
{
  v79 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 128;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    *(a1 + 8) = a5;
    v11 = crc_16_l_table[a1[6] ^ 0x85];
    v12 = crc_16_l_table[(a1[7] ^ v11) ^ 0xBB];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(BYTE1(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(BYTE2(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    *(a1 + 9) = v22 ^ ~HIBYTE(crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)]);
    if (a2 >= 40)
    {
      bzero(v78, 0x7FFuLL);
      v23 = *a1;
      if ((v23 - 125) > 1)
      {
        v24 = 1;
      }

      else
      {
        v78[0] = v23 & 0x5F;
        v24 = 2;
        LOBYTE(v23) = 125;
      }

      __src = v23;
      v25 = a1[1];
      v26 = v24 + 1;
      if ((v25 - 125) <= 1)
      {
        v78[v26 - 1] = v25 & 0x5F;
        LOBYTE(v25) = 125;
        LODWORD(v26) = v24 + 2;
      }

      v78[v24 - 1] = v25;
      v27 = a1[2];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v78[v29 - 1] = v27 & 0x5F;
        LODWORD(v29) = v28 + 2;
        LOBYTE(v27) = 125;
      }

      v78[v28 - 1] = v27;
      v30 = a1[3];
      v31 = v29;
      v32 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v78[v32 - 1] = v30 & 0x5F;
        LOBYTE(v30) = 125;
        LODWORD(v32) = v31 + 2;
      }

      v78[v31 - 1] = v30;
      v33 = a1[4];
      v34 = v32;
      v35 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v78[v35 - 1] = v33 & 0x5F;
        LODWORD(v35) = v34 + 2;
        LOBYTE(v33) = 125;
      }

      v78[v34 - 1] = v33;
      v36 = a1[5];
      v37 = v35;
      v38 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v78[v38 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v78[v37 - 1] = v36;
      v39 = a1[6];
      v40 = v38;
      v41 = v38 + 1;
      if ((v39 - 125) <= 1)
      {
        v78[v41 - 1] = v39 & 0x5F;
        LODWORD(v41) = v40 + 2;
        LOBYTE(v39) = 125;
      }

      v78[v40 - 1] = v39;
      v42 = a1[7];
      v43 = v41;
      v44 = v41 + 1;
      if ((v42 - 125) <= 1)
      {
        v78[v44 - 1] = v42 & 0x5F;
        LOBYTE(v42) = 125;
        LODWORD(v44) = v43 + 2;
      }

      v78[v43 - 1] = v42;
      v45 = a1[8];
      v46 = v44;
      v47 = v44 + 1;
      if ((v45 - 125) <= 1)
      {
        v78[v47 - 1] = v45 & 0x5F;
        LODWORD(v47) = v46 + 2;
        LOBYTE(v45) = 125;
      }

      v78[v46 - 1] = v45;
      v48 = a1[9];
      v49 = v47;
      v50 = v47 + 1;
      if ((v48 - 125) <= 1)
      {
        v78[v50 - 1] = v48 & 0x5F;
        LOBYTE(v48) = 125;
        LODWORD(v50) = v49 + 2;
      }

      v78[v49 - 1] = v48;
      v51 = a1[10];
      v52 = v50;
      v53 = v50 + 1;
      if ((v51 - 125) <= 1)
      {
        v78[v53 - 1] = v51 & 0x5F;
        LODWORD(v53) = v52 + 2;
        LOBYTE(v51) = 125;
      }

      v78[v52 - 1] = v51;
      v54 = a1[11];
      v55 = v53;
      v56 = v53 + 1;
      if ((v54 - 125) <= 1)
      {
        v78[v56 - 1] = v54 & 0x5F;
        LOBYTE(v54) = 125;
        LODWORD(v56) = v55 + 2;
      }

      v78[v55 - 1] = v54;
      v57 = a1[12];
      v58 = v56;
      v59 = v56 + 1;
      if ((v57 - 125) <= 1)
      {
        v78[v59 - 1] = v57 & 0x5F;
        LODWORD(v59) = v58 + 2;
        LOBYTE(v57) = 125;
      }

      v78[v58 - 1] = v57;
      v60 = a1[13];
      v61 = v59;
      v62 = v59 + 1;
      if ((v60 - 125) <= 1)
      {
        v78[v62 - 1] = v60 & 0x5F;
        LOBYTE(v60) = 125;
        LODWORD(v62) = v61 + 2;
      }

      v78[v61 - 1] = v60;
      v63 = a1[14];
      v64 = v62;
      v65 = v62 + 1;
      if ((v63 - 125) <= 1)
      {
        v78[v65 - 1] = v63 & 0x5F;
        LODWORD(v65) = v64 + 2;
        LOBYTE(v63) = 125;
      }

      v78[v64 - 1] = v63;
      v66 = a1[15];
      v67 = v65 + 1;
      if ((v66 - 125) <= 1)
      {
        v78[v67 - 1] = v66 & 0x5F;
        LOBYTE(v66) = 125;
        LODWORD(v67) = v65 + 2;
      }

      v78[v65 - 1] = v66;
      v68 = a1[16];
      v69 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v78[v69 - 1] = v68 & 0x5F;
        LODWORD(v69) = v67 + 2;
        LOBYTE(v68) = 125;
      }

      v78[v67 - 1] = v68;
      v70 = ~(v22 ^ BYTE1(v21));
      v71 = a1[17];
      v72 = v69;
      v73 = v69 + 1;
      if ((v71 - 125) <= 1)
      {
        v78[v73 - 1] = v71 & 0x5F;
        LOBYTE(v71) = 125;
        LODWORD(v73) = v72 + 2;
      }

      v74 = ((v22 ^ ~(v21 >> 8)) >> 8);
      v78[v72 - 1] = v71;
      v75 = v73 + 1;
      if ((v70 - 125) <= 1)
      {
        v78[v75 - 1] = v70 & 0x5F;
        LODWORD(v75) = v73 + 2;
        LOBYTE(v70) = 125;
      }

      v78[v73 - 1] = v70;
      v76 = v75 + 1;
      if ((v74 - 125) <= 1)
      {
        v78[v76 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v76) = v75 + 2;
      }

      v78[v75 - 1] = v74;
      memcpy(a1, &__src, v76);
      result = (v76 + 1);
      a1[v76] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_CMD_RELEASE(unsigned __int8 *a1, unsigned int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x33)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 461643;
  a1[4] = 108;
  v5 = a1[5];
  v6 = crc_16_l_table[v5 ^ 0x3C];
  v7 = a1[6];
  v8 = crc_16_l_table[(v7 ^ v6) ^ 0x53];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v6))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v29, 0x7FAuLL);
  __src = 461643;
  v27 = 108;
  if ((v5 - 125) <= 1)
  {
    v29[0] = v5 & 0x5F;
    v28 = 125;
    v12 = 7;
    v13 = 8;
    if ((v7 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = v5;
  v12 = 6;
  v13 = 7;
  if ((v7 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v13) = v7 & 0x5F;
    LOBYTE(v7) = 125;
    LODWORD(v13) = v12 + 2;
  }

LABEL_10:
  *(&__src + v12) = v7;
  v14 = a1[7];
  v15 = v13 + 1;
  if ((v14 - 125) <= 1)
  {
    *(&__src + v15) = v14 & 0x5F;
    LOBYTE(v14) = 125;
    LODWORD(v15) = v13 + 2;
  }

  *(&__src + v13) = v14;
  v16 = a1[8];
  v17 = v15 + 1;
  if ((v16 - 125) <= 1)
  {
    *(&__src + v17) = v16 & 0x5F;
    LOBYTE(v16) = 125;
    LODWORD(v17) = v15 + 2;
  }

  *(&__src + v15) = v16;
  v18 = ~(v11 ^ BYTE1(v10));
  v19 = a1[9];
  v20 = v17;
  v21 = v17 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v21) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v21) = v20 + 2;
  }

  v22 = ((v11 ^ ~(v10 >> 8)) >> 8);
  *(&__src + v20) = v19;
  v23 = v21;
  v24 = v21 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v24) = v18 & 0x5F;
    LOBYTE(v18) = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&__src + v23) = v18;
  v25 = v24 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&__src + v25) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v22;
  memcpy(a1, &__src, v25);
  result = (v25 + 1);
  a1[v25] = 126;
  return result;
}