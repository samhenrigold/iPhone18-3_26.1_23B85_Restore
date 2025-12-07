unint64_t sub_298C1E0C8(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  v2 = v1 >= 2 ? 2 : *(a1 + 8);
  v3 = v1 - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = (v2 + *a1);
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = -55;
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v9 = v8 + v7;
    if (v9 > 0xF)
    {
      break;
    }

    if (v4 >> 60)
    {
      return 0;
    }

    v4 = v9 | (16 * v4);
    ++v5;
    --v6;
  }

  while (v6);
  if (v3 == v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL sub_298C1E180(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) == 9)
  {
    return 1;
  }

  v4[1] = 0;
  v4[2] = 0;
  v4[0] = a2;
  sub_298C26CD8(uu2, v4);
  return sub_298C1849C(*a1, *(a1 + 8), uu2) != 0;
}

uint64_t sub_298C1E210(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F1F3E8;
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 8) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a1 + 64;
  v5 = (a1 + 56);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  v6 = (a1 + 80);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  if (*(a2 + 16) != a2 + 24)
  {
    operator new();
  }

  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  if (v9)
  {
    sub_298BF34C8(v9);
  }

  if (a1 != a2)
  {
    sub_298C2FE5C(v5, *(a2 + 56), (a2 + 64));
    sub_298B805BC((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_298B805BC(v6, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  }

  v10 = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v10;
  v12 = *(a2 + 144);
  v11 = *(a2 + 152);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 152);
  *(a1 + 144) = v12;
  *(a1 + 152) = v11;
  if (v13)
  {
    sub_298BF34C8(v13);
  }

  return a1;
}

void *sub_298C1E41C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
      *v1 = &unk_2A1F1F810;
      v3 = *(v1 + 8);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *v1 = &unk_2A1F1F810;
      v3 = *(v1 + 8);
      if (v3)
      {
LABEL_4:
        v4 = *(v1 + 16);
        v5 = v3;
        if (v4 != v3)
        {
          do
          {
            while (1)
            {
              v7 = *--v4;
              v6 = v7;
              *v4 = 0;
              if (v7)
              {
                break;
              }

              if (v4 == v3)
              {
                goto LABEL_9;
              }
            }

            (*(*v6 + 16))(v6);
          }

          while (v4 != v3);
LABEL_9:
          v5 = *(v1 + 8);
        }

        *(v1 + 16) = v3;
        operator delete(v5);
      }
    }

    MEMORY[0x29C2945F0](v1, 0x10B3C40D49AE8FALL);
    return v2;
  }

  return result;
}

void sub_298C1E528(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v24[0] = a1;
  v24[1] = a2;
  v27 = 261;
  v25 = a1;
  v26 = a2;
  if (sub_298BAB3F0(&v25, 0))
  {
    v6 = std::generic_category();
    v18 = "Recording.cpp";
    v19 = 259;
    v16 = ":";
    v17 = 259;
    sub_298ADC860(&v18, &v16, v20);
    sub_298AFB090(0x2F0uLL, 0, __p);
    v15 = 260;
    v14 = __p;
    sub_298ADC860(v20, &v14, v21);
    v11 = ": ";
    v12 = 259;
    sub_298ADC860(v21, &v11, v22);
    v10 = 261;
    v9[0] = a1;
    v9[1] = a2;
    sub_298ADC860(v22, v9, v23);
    v7 = " does not exist";
    v8 = 259;
    sub_298ADC860(v23, &v7, &v25);
    sub_298ADDCA4(45, v6, &v25);
  }

  v27 = 261;
  v25 = a1;
  v26 = a2;
  LOBYTE(v23[0]) = 0;
  if (!sub_298BAAC30(&v25, v23) && (v23[0] & 1) != 0)
  {
    LOBYTE(v23[0]) = 0;
    sub_298C1E7A0(&v25, v24, v23);
  }

  sub_298C44E28(a1, a2);
}

uint64_t *sub_298C1E83C(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  v3 = result;
  (*(*v2 + 8))(v2);
  return v3;
}

void sub_298C1E8D0()
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = sub_298B227A0(1);
  v4 = os_signpost_id_generate(v3);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v6[0] = &unk_2A1F1F4E0;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v6;
  sub_298AE98B0(v7, v6);
  v8 = v4;
  sub_298BBB834(v6);
  operator new();
}

void *sub_298C1EE94(void *a1, void **a2)
{
  sub_298C30554(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_298BF34C8(v3);
  }

  return a1;
}

uint64_t sub_298C1EEE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v88 = *MEMORY[0x29EDCA608];
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v73 = "RawTraces";
  *&v74 = 9;
  v86[0] = 0;
  if (sub_298B89FD8(a2, &v73, v86))
  {
    v6 = v86[0];
  }

  else
  {
    v6 = *a2 + 56 * *(a2 + 16);
  }

  v7 = *(v6 + 24);
  v8 = v6 + 32;
  if (v7 != 8)
  {
    v8 = 0;
  }

  v9 = *v8;
  if (*v8 != *(v8 + 8))
  {
    v74 = 0uLL;
    v75 = 0;
    LOBYTE(v76) = 0;
    v77 = 0;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    if (*v9 == 7)
    {
      v10 = (v9 + 4);
    }

    else
    {
      v10 = 0;
    }

    sub_298C10734(&v73, v10);
    v86[0] = 0;
    v11 = v84;
    if (sub_298C30C58(v82, v84, SHIDWORD(v73), v86))
    {
      std::generic_category();
      v63[0] = "Recording.cpp";
      v63[2] = ":";
      v64 = 771;
      v62 = 3;
      LODWORD(__p) = 3749944;
      v65[0] = v63;
      v65[2] = &__p;
      v66 = 1026;
      v67[0] = v65;
      v67[2] = ": ";
      v68 = 770;
      v69[0] = v67;
      v69[2] = "manifest contains two raw traces from cluster ";
      v70 = 770;
      v34 = HIDWORD(v73);
      if (HIDWORD(v73))
      {
        v35 = 20;
        do
        {
          *(v86 + v35--) = (v34 % 0xA) | 0x30;
          v36 = v34 > 9;
          v34 /= 0xAuLL;
        }

        while (v36);
        v37 = v35 + 1;
        v38 = 20 - v35;
        if ((20 - v35) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }
      }

      else
      {
        v87 = 48;
        v37 = 20;
        v38 = 1;
      }

      if (v38 <= 0x16)
      {
        v60 = v38;
        if (v37 != 21)
        {
          memcpy(&__dst, v86 + v37, v38);
        }

        *(&__dst + v38) = 0;
        v71[0] = v69;
        v71[2] = &__dst;
        v72 = 1026;
        sub_298B996A4(v71, &v85);
        operator new();
      }

      operator new();
    }

    if (4 * v83 + 4 >= 3 * v11)
    {
      v12 = 2 * v11;
    }

    else
    {
      if (v11 + ~v83 - HIDWORD(v83) > v11 >> 3)
      {
        goto LABEL_12;
      }

      v12 = v11;
    }

    sub_298C30CE8(&v82, v12);
    v86[0] = 0;
    sub_298C30C58(v82, v84, SHIDWORD(v73), v86);
LABEL_12:
    LODWORD(v83) = v83 + 1;
    if (*v86[0] != -1)
    {
      --HIDWORD(v83);
    }

    *v86[0] = HIDWORD(v73);
    operator new();
  }

  v73 = "SystemTraces";
  *&v74 = 12;
  v86[0] = 0;
  if (sub_298B89FD8(a2, &v73, v86))
  {
    v13 = v86[0];
  }

  else
  {
    v13 = *a2 + 56 * *(a2 + 16);
  }

  v14 = *(v13 + 24);
  v15 = (v13 + 32);
  if (v14 != 8)
  {
    v15 = 0;
  }

  if (*v15 != v15[1])
  {
    operator new();
  }

  v73 = "StartTimes";
  *&v74 = 10;
  v86[0] = 0;
  v16 = a2;
  if (sub_298B89FD8(a2, &v73, v86))
  {
    if (v86[0] != *a2 + 56 * *(a2 + 16) && *(v86[0] + 24) == 8)
    {
      v17 = *(v86[0] + 32);
      v18 = *(v86[0] + 40);
      if (v17 != v18)
      {
        while (1)
        {
          v19 = *v17;
          if (v19 == 3)
          {
            break;
          }

          if (v19 == 4)
          {
            v20 = *(v17 + 1) | *(v17 + 1) & 0xFFFFFFFFFFFFFF00;
            v22 = a1[14];
            v21 = a1[15];
            if (v22 >= v21)
            {
              goto LABEL_37;
            }

LABEL_29:
            *v22 = v20;
            a1[14] = v22 + 1;
            v17 += 16;
            if (v17 == v18)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v20 = 0;
            v22 = a1[14];
            v21 = a1[15];
            if (v22 < v21)
            {
              goto LABEL_29;
            }

LABEL_37:
            v23 = a1[13];
            v24 = v22 - v23;
            v25 = (v22 - v23) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
LABEL_88:
              sub_298ADDDA0();
            }

            v27 = v21 - v23;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_298B7F4FC((a1 + 13), v28);
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = &v30[-v29];
            *v30 = v20;
            v32 = v30 + 1;
            memcpy(v31, v23, v24);
            v33 = a1[13];
            a1[13] = v31;
            a1[14] = v32;
            a1[15] = 0;
            if (v33)
            {
              operator delete(v33);
            }

            v16 = a2;
            a1[14] = v32;
            v17 += 16;
            if (v17 == v18)
            {
              goto LABEL_63;
            }
          }
        }

        v20 = (v17[4] & ~(*(v17 + 1) >> 63)) | *(v17 + 1) & ~(*(v17 + 1) >> 63) & 0x7FFFFFFFFFFFFF00;
        v22 = a1[14];
        v21 = a1[15];
        if (v22 >= v21)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_63:
  v73 = "StopTimes";
  *&v74 = 9;
  v86[0] = 0;
  if (sub_298B89FD8(v16, &v73, v86))
  {
    if (v86[0] != *v16 + 56 * *(v16 + 16) && *(v86[0] + 24) == 8)
    {
      v39 = *(v86[0] + 32);
      v40 = *(v86[0] + 40);
      if (v39 != v40)
      {
        while (1)
        {
          v41 = *v39;
          if (v41 == 3)
          {
            break;
          }

          if (v41 == 4)
          {
            v42 = *(v39 + 1) | *(v39 + 1) & 0xFFFFFFFFFFFFFF00;
            v44 = a1[11];
            v43 = a1[12];
            if (v44 >= v43)
            {
              goto LABEL_76;
            }

LABEL_68:
            *v44 = v42;
            a1[11] = v44 + 1;
            v39 += 16;
            if (v39 == v40)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v42 = 0;
            v44 = a1[11];
            v43 = a1[12];
            if (v44 < v43)
            {
              goto LABEL_68;
            }

LABEL_76:
            v45 = a1[10];
            v46 = v44 - v45;
            v47 = (v44 - v45) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_88;
            }

            v49 = v43 - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              sub_298B7F4FC((a1 + 10), v50);
            }

            v51 = v47;
            v52 = (8 * v47);
            v53 = &v52[-v51];
            *v52 = v42;
            v54 = v52 + 1;
            memcpy(v53, v45, v46);
            v55 = a1[10];
            a1[10] = v53;
            a1[11] = v54;
            a1[12] = 0;
            if (v55)
            {
              operator delete(v55);
            }

            v16 = a2;
            a1[11] = v54;
            v39 += 16;
            if (v39 == v40)
            {
              goto LABEL_89;
            }
          }
        }

        v42 = (v39[4] & ~(*(v39 + 1) >> 63)) | *(v39 + 1) & ~(*(v39 + 1) >> 63) & 0x7FFFFFFFFFFFFF00;
        v44 = a1[11];
        v43 = a1[12];
        if (v44 >= v43)
        {
          goto LABEL_76;
        }

        goto LABEL_68;
      }
    }
  }

LABEL_89:
  a1[16] = sub_298B878FC(v16, "ElapsedMicrosecs", 16);
  *(a1 + 136) = v56;
  *a3 = 0;
  return MEMORY[0x29C2945E0](v82, 4);
}

void *sub_298C1FA34(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v4 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v4)
  {
    sub_298BF34C8(v4);
  }

  return a1;
}

void sub_298C1FAD8()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = sub_298B227A0(1);
  v3 = os_signpost_id_generate(v2);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v4[0] = &unk_2A1F1F598;
  v4[1] = v3;
  v4[2] = v2;
  v5 = v4;
  sub_298AE98B0(buf, v4);
  v7 = v3;
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  operator new();
}

void sub_298C2022C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = (v4 - *a1) >> 3;
  if ((v6 + 1) >> 61)
  {
    sub_298ADDDA0();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 2;
  if (v7 >> 2 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    sub_298BCEB24(a1, v9);
  }

  v10 = (8 * v6);
  *v10 = *a2;
  v5 = 8 * v6 + 8;
  v11 = *(a1 + 8) - *a1;
  v12 = v10 - v11;
  memcpy(v10 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a1 + 8) = v5;
}

void sub_298C20318(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_298C26DD4(a1 + 16, (*a2 + 72)))
  {
    v6 = sub_298B221EC(v26, "Multiple system traces exist named ");
    v7 = *(*a2 + 95);
    if (v7 >= 0)
    {
      v8 = (*a2 + 72);
    }

    else
    {
      v8 = *(*a2 + 72);
    }

    if (v7 >= 0)
    {
      v9 = *(*a2 + 95);
    }

    else
    {
      v9 = *(*a2 + 80);
    }

    std::string::append(v6, v8, v9);
    v10 = std::generic_category();
    v20 = "Recording.h";
    v21 = 259;
    v18 = ":";
    v19 = 259;
    sub_298ADC860(&v20, &v18, v22);
    sub_298AFB090(0x258uLL, 0, __p);
    v17 = 260;
    v16 = __p;
    sub_298ADC860(v22, &v16, v23);
    v13 = ": ";
    v14 = 259;
    sub_298ADC860(v23, &v13, v24);
    v12 = 260;
    v11[0] = v26;
    sub_298ADC860(v24, v11, v25);
    sub_298ADDCA4(45, v10, v25);
  }

  sub_298C26EBC((a1 + 16), (*a2 + 72), *a2 + 72, a2);
  *a3 = 0;
}

uint8_t *sub_298C204AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = sub_298B227A0(1);
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v15[0] = &unk_2A1F1F618;
  v15[1] = v7;
  v15[2] = v6;
  v16 = v15;
  sub_298AE98B0(buf, v15);
  v19 = v7;
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  v12[0] = 0;
  v12[1] = 0;
  v10 = 0;
  v11 = 0;
  sub_298C10DE4(a2, a1, v12, &v10, 0, &__p);
  v8 = __p;
  if (!__p)
  {
    sub_298C112C0(a1, 0, v12[0], v10, v11, &__p);
    if ((v14 & 1) == 0 || (v8 = __p, __p = 0, !v8))
    {
      sub_298C1FAD8();
    }
  }

  *(a3 + 8) |= 1u;
  *a3 = v8;
  result = v18;
  if (v18)
  {
    (*(*v18 + 48))(v18);
    result = v18;
    if (v18 == buf)
    {
      return (*(*v18 + 32))(v18);
    }

    else if (v18)
    {
      return (*(*v18 + 40))(v18);
    }
  }

  return result;
}

void *sub_298C207BC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[2];
  v3 = result + 3;
  if (v2 != result + 3)
  {
    result = 0;
    do
    {
      v5 = v2[7];
      v9 = v5;
      if (result >= a2[2])
      {
        v4 = a2;
        result = sub_298C30B94(a2, &v9);
        a2 = v4;
      }

      else
      {
        *result++ = v5;
      }

      a2[1] = result;
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

void *sub_298C20874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t *n@<X8>)
{
  v195 = *MEMORY[0x29EDCA608];
  sub_298C1E210(v122, a1);
  v6 = sub_298B227A0(1);
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Recording::save", &unk_298EC00B5, &buf, 2u);
  }

  v152[0] = &unk_2A1F1F660;
  v152[1] = v7;
  v152[2] = v6;
  v153 = v152;
  sub_298AE98B0(v154, v152);
  v156 = v7;
  if (v153 == v152)
  {
    (*(*v153 + 32))(v153);
  }

  else if (v153)
  {
    (*(*v153 + 40))();
  }

  (*(**a2 + 40))(*a2, &unk_298EAE8EF, 0);
  if (*n)
  {
    goto LABEL_9;
  }

  v121 = n;
  if (v124 != v125)
  {
    LOBYTE(v140) = *(v124[5] + 4);
    v8 = sub_298B227A0(1);
    v9 = os_signpost_id_generate(v8);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LODWORD(uu2) = 67109120;
      DWORD1(uu2) = v140;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Recording::saveCluster", "cluster=%u", &uu2, 8u);
    }

    v151[4] = 0;
    operator new();
  }

  if (v125[10])
  {
    v10 = *a2;
    *&buf = v122;
    (*(*v10 + 48))(v10, "global-stackshot.kcdata", 23, sub_298C31880, &buf);
    if (*n)
    {
      goto LABEL_9;
    }
  }

  if (*(a3 + 4) != 1)
  {
    goto LABEL_62;
  }

  v11 = sub_298B227A0(1);
  v12 = os_signpost_id_generate(v11);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Recording::copyDecodedResults", &unk_298EC00B5, &buf, 2u);
  }

  __dst[0] = &unk_2A1F1F738;
  __dst[1] = v12;
  v182 = v11;
  v183 = __dst;
  sub_298AE98B0(&v189, __dst);
  v192 = v12;
  if (v183 == __dst)
  {
    (*(*v183 + 32))(v183);
  }

  else if (v183)
  {
    (*(*v183 + 40))();
  }

  if (*(a3 + 7))
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  v113 = dword_2A13C2B68;
  dword_2A13C2B68 = v14;
  v112 = word_2A13C3788;
  word_2A13C3788 = *(a3 + 5);
  v111 = byte_2A13C378A;
  byte_2A13C378A = 1;
  sub_298C207BC(v122, &v136);
  v15 = v136;
  v117 = v137;
  if (v136 == v137)
  {
    goto LABEL_54;
  }

  do
  {
    v16 = *v15;
    v150.__r_.__value_.__r.__words[0] = v16;
    if (*(v16 + 296))
    {
LABEL_45:
      sub_298BD60CC();
    }

    sub_298C17278(v16, &uu2);
    if (uu2 == *(&uu2 + 1))
    {
      v18 = 0;
      if (uu2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = uu2 + 17;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          break;
        }

        v90 = v17 == *(&uu2 + 1);
        v17 += 17;
      }

      while (!v90);
      if (uu2)
      {
LABEL_43:
        operator delete(uu2);
      }
    }

    if (v18)
    {
      goto LABEL_45;
    }

    v19 = sub_298B227A0(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v150.__r_.__value_.__r.__words[0] + 72;
      if (*(v150.__r_.__value_.__r.__words[0] + 95) < 0)
      {
        v20 = *(v150.__r_.__value_.__r.__words[0] + 72);
      }

      LODWORD(uu2) = 136315138;
      *(&uu2 + 4) = v20;
      _os_log_impl(&dword_298AD8000, v19, OS_LOG_TYPE_INFO, "System %s is not decodable.", &uu2, 0xCu);
    }

    ++v15;
  }

  while (v15 != v117);
  v15 = v136;
LABEL_54:
  if (v15)
  {
    v137 = v15;
    operator delete(v15);
  }

  *n = 0;
  byte_2A13C378A = v111;
  word_2A13C3788 = v112;
  dword_2A13C2B68 = v113;
  if (v191)
  {
    (*(*v191 + 6))(v191);
    if (v191 == &v189)
    {
      (*(*v191 + 4))(v191);
    }

    else if (v191)
    {
      (*(*v191 + 5))();
    }
  }

  if (*n)
  {
    goto LABEL_9;
  }

LABEL_62:
  if (*a3 != 2)
  {
    goto LABEL_254;
  }

  v21 = *a2;
  v22 = sub_298B227A0(1);
  v23 = os_signpost_id_generate(v22);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "Recording::copyImages", &unk_298EC00B5, &buf, 2u);
  }

  v173[0] = &unk_2A1F1F6F0;
  v173[1] = v23;
  v173[2] = v22;
  v174 = v173;
  sub_298AE98B0(&v175, v173);
  v177 = v23;
  if (v174 == v173)
  {
    (*(*v174 + 32))(v174);
  }

  else if (v174)
  {
    (*(*v174 + 40))();
  }

  (*(*v21 + 40))(v21, "images", 6);
  if (*n)
  {
    goto LABEL_248;
  }

  sub_298C207BC(v122, &v126);
  v24 = v126;
  v114 = v127;
  if (v126 == v127)
  {
LABEL_245:
    if (v24)
    {
      v127 = v24;
      operator delete(v24);
    }

    *n = 0;
    goto LABEL_248;
  }

  v116 = v21;
  while (2)
  {
    v115 = v24;
    v25 = *v24;
    v26 = v123;
    v151[0] = 0;
    *(&v150.__r_.__value_.__s + 23) = 3;
    LODWORD(v150.__r_.__value_.__l.__data_) = 4144959;
    v27 = v25[54];
    v28 = v25[55];
    v120 = v123;
    if (v28 == v27)
    {
      v53 = 1;
      goto LABEL_115;
    }

    v29 = 0;
    v30 = 0;
    while (2)
    {
      v31 = (v27 + 8 * v29);
      v32 = *v31;
      if (**v31 != 1)
      {
        goto LABEL_77;
      }

      *v31 = 0;
      v33 = v151[0];
      v151[0] = v32;
      if (v33)
      {
        sub_298C27374(v151, v33);
        v28 = v25[55];
        v47 = *(v28 - 8);
        *(v28 - 8) = 0;
        v35 = *v31;
        *v31 = v47;
        if (v35)
        {
          goto LABEL_99;
        }

LABEL_81:
        v38 = *(v28 - 8);
        v37 = (v28 - 8);
        v36 = v38;
        *v37 = 0;
        if (v38)
        {
LABEL_100:
          sub_298C27374(v37, v36);
        }
      }

      else
      {
        v34 = *(v28 - 8);
        *(v28 - 8) = 0;
        v35 = *v31;
        *v31 = v34;
        if (!v35)
        {
          goto LABEL_81;
        }

LABEL_99:
        sub_298C27374(v31, v35);
        v48 = v25[55];
        v49 = *(v48 - 8);
        v37 = (v48 - 8);
        v36 = v49;
        *v37 = 0;
        if (v49)
        {
          goto LABEL_100;
        }
      }

      v25[55] = v37;
      buf = (v151[0] + 4);
      v158 = 0;
      sub_298C26CD8(&uu2, &buf);
      v39 = v25[50];
      if (!*&v39)
      {
        goto LABEL_107;
      }

      v40 = *(&uu2 + 1) ^ uu2;
      v41 = vcnt_s8(v39);
      v41.i16[0] = vaddlv_u8(v41);
      if (v41.u32[0] <= 1uLL)
      {
        v42 = (*&v39 - 1) & v40;
      }

      else if (v40 < *&v39)
      {
        v42 = *(&uu2 + 1) ^ uu2;
      }

      else
      {
        v42 = v40 % *&v39;
      }

      v43 = *(v25[49] + 8 * v42);
      if (!v43 || (v44 = *v43, !*v43))
      {
        v39 = 0;
        goto LABEL_106;
      }

      if (v41.u32[0] < 2uLL)
      {
        v45 = *&v39 - 1;
        while (1)
        {
          v50 = *(*&v44 + 8);
          if (v50 == v40)
          {
            if (!uuid_compare((*&v44 + 16), &uu2))
            {
              goto LABEL_105;
            }
          }

          else if ((v50 & v45) != v42)
          {
            goto LABEL_96;
          }

          v39 = 0;
          v44 = **&v44;
          if (!*&v44)
          {
            goto LABEL_106;
          }
        }
      }

      while (1)
      {
        v46 = *(*&v44 + 8);
        if (v46 == v40)
        {
          break;
        }

        if (v46 >= *&v39)
        {
          v46 %= *&v39;
        }

        if (v46 != v42)
        {
LABEL_96:
          v39 = 0;
          goto LABEL_106;
        }

LABEL_91:
        v44 = **&v44;
        if (!*&v44)
        {
          goto LABEL_96;
        }
      }

      if (uuid_compare((*&v44 + 16), &uu2))
      {
        goto LABEL_91;
      }

LABEL_105:
      v39 = v44;
LABEL_106:
      v26 = v120;
LABEL_107:
      std::string::operator=(&v150, (*&v39 + 32));
      sub_298C2B6DC(&buf, v25 + 49, *&v39);
      v51 = buf;
      if (buf)
      {
        if (v158 == 1 && *(buf + 55) < 0)
        {
          v52 = buf;
          operator delete(*(buf + 32));
          v51 = v52;
        }

        operator delete(v51);
      }

      v27 = v25[54];
      v28 = v25[55];
LABEL_77:
      v29 = ++v30;
      if (v30 < ((v28 - v27) >> 3))
      {
        continue;
      }

      break;
    }

    v53 = v151[0] == 0;
LABEL_115:
    v148 = 0uLL;
    v149 = 0;
    if (v53)
    {
      v158 = 0;
      v159 = 0;
      LODWORD(v160) = 1065353216;
      v172 &= ~1u;
      buf = 0uLL;
      v168 = 0;
      v167 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 1065353216;
      sub_298C27450(&buf);
      if ((v172 & 1) == 0)
      {
LABEL_117:
        *n = 0;
        v54 = v25[51];
        if (v54)
        {
          goto LABEL_128;
        }

LABEL_228:
        *n = 0;
        goto LABEL_229;
      }
    }

    else
    {
      sub_298B1EF68(&uu2);
      if ((v166 & 1) == 0 || (v55 = uu2, *&uu2 = 0, !v55))
      {
        sub_298C3D514();
      }

      v172 |= 1u;
      v167 = v55;
      if ((v172 & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    v56 = v167;
    v167 = 0;
    *n = v56;
    if (v56)
    {
      goto LABEL_229;
    }

    v54 = v25[51];
    if (!v54)
    {
      goto LABEL_228;
    }

LABEL_128:
    while (2)
    {
      v145 = &v148;
      v146 = 0;
      v147 = 0;
      sub_298B90C08(&v145, &v148, 6uLL, 1);
      v57 = v145 + v146;
      *(v57 + 2) = 29541;
      *v57 = 1734438249;
      v59 = (v54 + 4);
      v58 = v54[4];
      v146 += 6;
      v60 = *(v54 + 55);
      if (v60 >= 0)
      {
        v58 = v54 + 4;
      }

      if (v60 < 0)
      {
        v60 = v54[5];
      }

      v158 = 0;
      v159 = 0;
      *&buf = v58;
      *(&buf + 1) = v60;
      v160 = v60;
      LODWORD(v161) = 0;
      sub_298BA8288(&buf);
      v61 = v158;
      v62 = v159;
      buf = (v54 + 2);
      v158 = 0;
      sub_298B1FB90(&buf, v143);
      if (v144 >= 0)
      {
        v63 = v143;
      }

      else
      {
        v63 = v143[0];
      }

      if (v144 >= 0)
      {
        v64 = v144;
      }

      else
      {
        v64 = v143[1];
      }

      if (v62 >= v64 && (!v64 || !memcmp(v61, v63, v64)))
      {
        LOWORD(v160) = 261;
        *&buf = v61;
        *(&buf + 1) = v62;
        LOWORD(v165[0]) = 257;
        LOWORD(v192) = 257;
        LOWORD(v188) = 257;
        p_uu2 = &uu2;
        v66 = &v189;
        v67 = &v185;
      }

      else
      {
        *&uu2 = v143;
        v163 = "-";
        LOWORD(v165[0]) = 772;
        *&buf = &uu2;
        v158 = v61;
        v159 = v62;
        LOWORD(v160) = 1282;
        LOWORD(v192) = 257;
        LOWORD(v188) = 257;
        v184 = 257;
        p_uu2 = &v189;
        v66 = &v185;
        v67 = __dst;
      }

      sub_298BA8944(&v145, 0, &buf, p_uu2, v66, v67);
      v68 = *(v54 + 55);
      if (v68 >= 0)
      {
        v69 = v54 + 4;
      }

      else
      {
        v69 = v54[4];
      }

      if (v68 >= 0)
      {
        v70 = *(v54 + 55);
      }

      else
      {
        v70 = v54[5];
      }

      if ((*(*v26 + 24))(v26, v69, v70, 1))
      {
        v71 = *(v54 + 55);
        if (v71 >= 0)
        {
          v72 = (v54 + 4);
        }

        else
        {
          v72 = v54[4];
        }

        if (v71 >= 0)
        {
          v73 = *(v54 + 55);
        }

        else
        {
          v73 = v54[5];
        }

        sub_298C3A8F0(v26, v72, v73, v21, v145, v146, n);
        if (!*n)
        {
          goto LABEL_195;
        }

LABEL_156:
        v74 = 1;
        goto LABEL_199;
      }

      v75 = v168;
      if (!*&v168 || ((v76 = v54[3] ^ v54[2], v77 = vcnt_s8(v168), v77.i16[0] = vaddlv_u8(v77), v77.u32[0] <= 1uLL) ? (v78 = (*&v168 - 1) & v76) : v76 < *&v168 ? (v78 = v54[3] ^ v54[2]) : (v78 = v76 % *&v168), (v79 = *(v167 + 8 * v78)) == 0 || (v80 = *v79) == 0))
      {
LABEL_187:
        if (v62 != 3 || (*v61 == 16191 ? (v90 = v61[2] == 63) : (v90 = 0), !v90))
        {
          v133 = "Recording.cpp";
          v134 = ":";
          v135 = 771;
          std::generic_category();
          v194 = 4;
          strcpy(&v193, "1233");
          v136 = &v133;
          v138 = &v193;
          v139 = 1026;
          v140 = &v136;
          v141 = ": ";
          v142 = 770;
          __str.__r_.__value_.__r.__words[0] = &v140;
          __str.__r_.__value_.__r.__words[2] = "image ";
          v180 = 770;
          __dst[0] = &__str;
          v182 = (v54 + 4);
          v184 = 1026;
          *&v185 = __dst;
          v186 = " @ ";
          LOWORD(v188) = 770;
          v189 = &v185;
          v190 = v143;
          LOWORD(v192) = 1026;
          *&uu2 = &v189;
          v163 = " was not found";
          LOWORD(v165[0]) = 770;
          sub_298B996A4(&uu2, &v130);
          operator new();
        }

        v74 = 0;
        v26 = v120;
        n = v121;
        v21 = v116;
        goto LABEL_199;
      }

      if (v77.u32[0] < 2uLL)
      {
        v81 = *&v168 - 1;
        while (1)
        {
          v83 = *(v80 + 1);
          if (v83 == v76)
          {
            if (!uuid_compare(v80 + 16, v54 + 16))
            {
              goto LABEL_178;
            }
          }

          else if ((v83 & v81) != v78)
          {
            goto LABEL_187;
          }

          v80 = *v80;
          if (!v80)
          {
            goto LABEL_187;
          }
        }
      }

      while (2)
      {
        v82 = *(v80 + 1);
        if (v82 != v76)
        {
          if (v82 >= *&v75)
          {
            v82 %= *&v75;
          }

          if (v82 != v78)
          {
            goto LABEL_187;
          }

          goto LABEL_166;
        }

        if (uuid_compare(v80 + 16, v54 + 16))
        {
LABEL_166:
          v80 = *v80;
          if (!v80)
          {
            goto LABEL_187;
          }

          continue;
        }

        break;
      }

LABEL_178:
      if (!v151[0])
      {
        goto LABEL_187;
      }

      v86 = *(v80 + 4);
      v85 = (v80 + 32);
      v84 = v86;
      v87 = *(v85 + 23);
      if (v87 >= 0)
      {
        v88 = v85;
      }

      else
      {
        v88 = v84;
      }

      if (v87 >= 0)
      {
        v89 = *(v85 + 23);
      }

      else
      {
        v89 = *(v85 + 8);
      }

      LOWORD(v160) = 261;
      *&buf = v88;
      *(&buf + 1) = v89;
      if (sub_298BAB3F0(&buf, 0))
      {
        v130 = "Recording.cpp";
        v131 = ":";
        v132 = 771;
        std::generic_category();
        v129 = 4;
        strcpy(v128, "1222");
        v133 = &v130;
        v134 = v128;
        v135 = 1026;
        v136 = &v133;
        v138 = ": ";
        v139 = 770;
        v140 = &v136;
        v141 = "Extracted shared cache, but extracted image not found at '";
        v142 = 770;
        __str.__r_.__value_.__r.__words[0] = &v140;
        __str.__r_.__value_.__r.__words[2] = v88;
        v179 = v89;
        v180 = 1282;
        __dst[0] = &__str;
        v182 = "' for ";
        v184 = 770;
        *&v185 = __dst;
        v186 = (v54 + 4);
        LOWORD(v188) = 1026;
        v189 = &v185;
        v190 = " -> ";
        LOWORD(v192) = 770;
        *&uu2 = &v189;
        v163 = v145;
        v164 = v146;
        LOWORD(v165[0]) = 1282;
        sub_298B996A4(&uu2, &v193);
        operator new();
      }

      v26 = v120;
      n = v121;
      v21 = v116;
      sub_298C3A8F0(v120, v88, v89, v116, v145, v146, v121);
      if (*v121)
      {
        goto LABEL_156;
      }

LABEL_195:
      if (v145)
      {
        sub_298BDB508(&buf, v145, v146);
        if (*(v54 + 55) < 0)
        {
          goto LABEL_197;
        }
      }

      else
      {
        buf = 0uLL;
        v158 = 0;
        if (*(v54 + 55) < 0)
        {
LABEL_197:
          operator delete(*v59);
        }
      }

      *v59 = buf;
      v54[6] = v158;
      *n = 0;
      v74 = 6;
LABEL_199:
      if (v144 < 0)
      {
        operator delete(v143[0]);
        v91 = v145;
        if (v145 != &v148)
        {
LABEL_201:
          free(v91);
        }
      }

      else
      {
        v91 = v145;
        if (v145 != &v148)
        {
          goto LABEL_201;
        }
      }

      if (v74 == 6 || !v74)
      {
        v54 = *v54;
        if (!v54)
        {
          for (i = v25[51]; i; i = *i)
          {
            v93 = *(i + 55);
            if (v93 >= 0)
            {
              v94 = (i + 4);
            }

            else
            {
              v94 = i[4];
            }

            if (v93 >= 0)
            {
              v95 = *(i + 55);
            }

            else
            {
              v95 = i[5];
            }

            if (v95 >= 6)
            {
              v96 = *(v94 + 2);
              v97 = *v94 == 1734438249;
              v98 = 29541;
            }

            else
            {
              if (v95 != 3)
              {
                goto LABEL_239;
              }

              v96 = *(v94 + 2);
              v97 = *v94 == 16191;
              v98 = 63;
            }

            if (!v97 || v96 != v98)
            {
LABEL_239:
              v136 = "Recording.cpp";
              v138 = ":";
              v139 = 771;
              std::generic_category();
              HIBYTE(v131) = 4;
              strcpy(&v130, "1242");
              v140 = &v136;
              v141 = &v130;
              v142 = 1026;
              __str.__r_.__value_.__r.__words[0] = &v140;
              __str.__r_.__value_.__r.__words[2] = ": ";
              v180 = 770;
              __dst[0] = &__str;
              v182 = "malformed manifest relpath: ";
              v184 = 770;
              *&v185 = __dst;
              v186 = v94;
              v187 = v95;
              LOWORD(v188) = 1282;
              v189 = &v185;
              v190 = " @ ";
              LOWORD(v192) = 770;
              buf = (i + 2);
              v158 = 0;
              sub_298B1FB90(&buf, &v193);
              *&uu2 = &v189;
              v163 = &v193;
              LOWORD(v165[0]) = 1026;
              sub_298B996A4(&uu2, &v133);
              operator new();
            }
          }

          goto LABEL_228;
        }

        continue;
      }

      break;
    }

LABEL_229:
    if (v172)
    {
      v100 = v167;
      v167 = 0;
      v101 = v115;
      if (v100)
      {
        (*(*v100 + 8))(v100);
      }
    }

    else
    {
      sub_298C27450(&v167);
      v101 = v115;
    }

    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_241;
      }

LABEL_235:
      v102 = v151[0];
      v151[0] = 0;
      if (!v102)
      {
        goto LABEL_236;
      }

LABEL_242:
      sub_298C27374(v151, v102);
      if (*n)
      {
        goto LABEL_243;
      }

LABEL_237:
      v24 = v101 + 1;
      if (v24 == v114)
      {
        v24 = v126;
        goto LABEL_245;
      }

      continue;
    }

    break;
  }

  if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_235;
  }

LABEL_241:
  operator delete(v150.__r_.__value_.__l.__data_);
  v102 = v151[0];
  v151[0] = 0;
  if (v102)
  {
    goto LABEL_242;
  }

LABEL_236:
  if (!*n)
  {
    goto LABEL_237;
  }

LABEL_243:
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_248:
  if (v176)
  {
    (*(*v176 + 6))(v176);
    if (v176 == &v175)
    {
      (*(*v176 + 4))(v176);
    }

    else if (v176)
    {
      (*(*v176 + 5))();
    }
  }

  if (!*n)
  {
LABEL_254:
    v103 = *a2;
    *&buf = v122;
    (*(*v103 + 48))(v103, "manifest.json", 13, sub_298C3190C, &buf);
    v104 = (*(**a2 + 64))();
    if (v105)
    {
      v106 = v104;
      v107 = v155;
      v155 = 0;
      if (v107 == v154)
      {
        (*(*v107 + 32))(v107);
      }

      else if (v107)
      {
        (*(*v107 + 40))(v107);
      }

      v108 = sub_298B227A0(1);
      v109 = v156;
      if (v156 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v110 = v108;
        if (os_signpost_enabled(v108))
        {
          LODWORD(buf) = 134349056;
          *(&buf + 4) = v106;
          _os_signpost_emit_with_name_impl(&dword_298AD8000, v110, OS_SIGNPOST_INTERVAL_END, v109, "Recording::save", "NumBytesWritten=%{public}zu", &buf, 0xCu);
        }
      }
    }
  }

LABEL_9:
  if (v155)
  {
    (*(*v155 + 48))(v155);
    if (v155 == v154)
    {
      (*(*v155 + 32))(v155);
    }

    else if (v155)
    {
      (*(*v155 + 40))();
    }
  }

  return sub_298C27214(v122);
}

void sub_298C24A90(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    sub_298AFE11C(v12, *a1, *(a1 + 8));
  }

  else
  {
    *v12 = *a1;
    v13 = *(a1 + 16);
  }

  *__p = 6;
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v5 = SHIBYTE(v13);
  }

  else
  {
    v5 = v12[1];
  }

  if (!sub_298B88E98(v4, v5, 0))
  {
    if (v13 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if (v13 >= 0)
    {
      v9 = SHIBYTE(v13);
    }

    else
    {
      v9 = v12[1];
    }

    sub_298B88F28(v8, v9, v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    *v12 = *v14;
    v13 = v15;
  }

  *&__p[8] = *v12;
  v17 = v13;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  sub_298B89CC0(a2, "DataKey", 7uLL);
  sub_298B891F0(a2, __p);
  --*(a2 + 8);
  if (*__p == 8)
  {
    sub_298B8A314(&__p[8]);
  }

  else if (*__p == 7)
  {
    sub_298B8A370(&__p[8]);
  }

  else if (*__p == 6 && SHIBYTE(v17) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
    if (*(a1 + 48) != 1)
    {
      return;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    return;
  }

  if (*(a1 + 47) < 0)
  {
    sub_298AFE11C(v14, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *v14 = *(a1 + 24);
    v15 = *(a1 + 40);
  }

  if (v15 >= 0)
  {
    v6 = v14;
  }

  else
  {
    v6 = v14[0];
  }

  if (v15 >= 0)
  {
    v7 = SHIBYTE(v15);
  }

  else
  {
    v7 = v14[1];
  }

  if (!sub_298B88E98(v6, v7, 0))
  {
    if (v15 >= 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14[0];
    }

    if (v15 >= 0)
    {
      v11 = SHIBYTE(v15);
    }

    else
    {
      v11 = v14[1];
    }

    sub_298B88F28(v10, v11, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    *v14 = *__p;
    v15 = *&__p[16];
  }

  *__p = 6;
  *&__p[8] = *v14;
  v17 = v15;
  sub_298B89CC0(a2, "CompressionKey", 0xEuLL);
  sub_298B891F0(a2, __p);
  --*(a2 + 8);
  if (*__p == 8)
  {
    sub_298B8A314(&__p[8]);
  }

  else if (*__p == 7)
  {
    sub_298B8A370(&__p[8]);
  }

  else if (*__p == 6 && SHIBYTE(v17) < 0)
  {
    operator delete(*&__p[8]);
  }
}

uint64_t sub_298C24D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    while (1)
    {
      if (((v6 >> 5) + 1) >> 59)
      {
        sub_298ADDDA0();
      }

      if (v6 >> 5 != -1)
      {
        if (!(((v6 >> 5) + 1) >> 59))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v7 = *v5;
      v8 = 32 * (v6 >> 5);
      *v8 = 4;
      *(v8 + 8) = v7;
      if (v6)
      {
        break;
      }

LABEL_31:
      v6 = v8 + 32;
      if (++v5 == a3)
      {
        goto LABEL_34;
      }
    }

    v9 = 24;
    v10 = 0;
    while (1)
    {
      v11 = *v10;
      *(v9 - 24) = v11;
      if (v11 < 5)
      {
        break;
      }

      if (v11 <= 6)
      {
        if (v11 == 6)
        {
          v13 = *(v10 + 4);
          *v9 = *(v10 + 3);
          *(v9 - 16) = v13;
          *(v10 + 2) = 0;
          *(v10 + 3) = 0;
          *(v10 + 1) = 0;
LABEL_22:
          *v10 = 0;
          goto LABEL_12;
        }

        v12 = *(v10 + 4);
        goto LABEL_11;
      }

      if (v11 == 7)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        *v9 = 0;
        *(v9 - 16) = *(v10 + 1);
        *(v10 + 1) = 0;
        *(v9 - 8) = *(v10 + 4);
        *(v10 + 4) = 0;
        v14 = *(v9 - 4);
        *(v9 - 4) = *(v10 + 5);
        *(v10 + 5) = v14;
        v15 = *v9;
        *v9 = *(v10 + 6);
        *(v10 + 6) = v15;
        goto LABEL_22;
      }

      if (v11 == 8)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        *v9 = 0;
        *(v9 - 16) = *(v10 + 4);
        *v9 = *(v10 + 3);
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0;
        goto LABEL_22;
      }

LABEL_12:
      v10 += 16;
      v9 += 32;
      if (v10 == v6)
      {
        for (i = 0; i != v6; i += 4)
        {
          v17 = *i;
          if (v17 == 8)
          {
            sub_298B8A314(i + 1);
          }

          else if (v17 == 7)
          {
            sub_298B8A370(i + 2);
          }

          else if (v17 == 6 && *(i + 31) < 0)
          {
            operator delete(i[1]);
          }
        }

        goto LABEL_31;
      }
    }

    v12 = *(v10 + 4);
    *v9 = *(v10 + 3);
LABEL_11:
    *(v9 - 16) = v12;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_34:
  *a1 = 8;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  return a1;
}

__n128 sub_298C25014(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  if (*a1 == 8)
  {
    a2[1] = *a2;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v5 != v6)
    {
      sub_298C360E8(a2, (v5 - v6) >> 5);
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    v9 = v5 - v6;
    if (v5 != v6)
    {
      v10 = 0;
      v11 = v9 >> 5;
      v12 = *a2;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v13 = (v6 + 8);
      do
      {
        v32[0] = v3;
        v32[1] = 0;
        v32[2] = v10;
        v16 = *(v13 - 4);
        if (v16 == 3)
        {
          v14 = *v13;
          if (*v13 < 0)
          {
LABEL_23:
            v24 = v32;
            LODWORD(v25) = -1;
            do
            {
              v26 = v24;
              v24 = *v24;
              v25 = (v25 + 1);
            }

            while (v24);
            v27 = v26[1];
            v27[2] = "expected uint64_t";
            v27[3] = 17;
            v29 = (v27 + 4);
            v28 = v27[4];
            v30 = (v27[5] - v28) >> 4;
            if (v25 <= v30)
            {
              if (v25 < v30)
              {
                v27[5] = &v28[v25];
              }
            }

            else
            {
              sub_298B8D2B8((v27 + 4), v25 - v30);
              v28 = *v29;
            }

            if (v3)
            {
              v31 = v32;
              do
              {
                result = *(v31 + 1);
                *v28++ = result;
                v31 = *v31;
              }

              while (*v31);
            }

            return result;
          }

          v15 = v14 & 0x7FFFFFFFFFFFFF00;
        }

        else
        {
          if (v16 != 4)
          {
            goto LABEL_23;
          }

          v14 = *v13;
          v15 = *v13 & 0xFFFFFFFFFFFFFF00;
        }

        *(v12 + 8 * v10++) = v14 | v15;
        v13 += 4;
      }

      while (v11 != v10);
    }
  }

  else
  {
    LODWORD(v17) = -1;
    v18 = a3;
    do
    {
      v19 = v18;
      v18 = *v18;
      v17 = (v17 + 1);
    }

    while (v18);
    v20 = v19[1];
    v20[2] = "expected array";
    v20[3] = 14;
    v22 = (v20 + 4);
    v21 = v20[4];
    v23 = (v20[5] - v21) >> 4;
    if (v17 <= v23)
    {
      if (v17 < v23)
      {
        v20[5] = &v21[v17];
      }
    }

    else
    {
      sub_298B8D2B8((v20 + 4), v17 - v23);
      v21 = *v22;
    }

    while (*v3)
    {
      result = *(v3 + 1);
      *v21++ = result;
      v3 = *v3;
    }
  }

  return result;
}

void *sub_298C251F4(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  if (!*(a3 + 16))
  {
    *result = 0;
    return result;
  }

  v54[0] = a4;
  v54[1] = a5;
  v57 = 0;
  v60 = 0;
  v63 = 0;
  v66 = 0;
  v69 = 0;
  LOBYTE(v70) = 0;
  v71 = 0;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  memset(v61, 0, sizeof(v61));
  v62 = 0;
  memset(v64, 0, sizeof(v64));
  v65 = 0;
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  v8 = *a2;
  v53 = 10;
  strcpy(__p, "Ranges.bin");
  sub_298C27CB8(result, v8, v55, __p, *(a3 + 88));
  if (v53 < 0)
  {
    operator delete(__p[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v9 = *a2;
  v51 = 13;
  strcpy(v50, "UnitMarks.bin");
  sub_298C27CB8(v5, v9, v58, v50, *(a3 + 104));
  if (v51 < 0)
  {
    operator delete(v50[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v10 = *a2;
  HIBYTE(v49[2]) = 17;
  strcpy(v49, "ContextStarts.bin");
  sub_298C27CB8(v5, v10, v61, v49, *(a3 + 120));
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v11 = *a2;
  v48 = 12;
  strcpy(v47, "Counters.bin");
  sub_298C27CB8(v5, v11, v64, v47, *(a3 + 136));
  if (v48 < 0)
  {
    operator delete(v47[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v12 = *a2;
  v46 = 12;
  strcpy(v45, "Messages.bin");
  sub_298C27CB8(v5, v12, v67, v45, *(a3 + 152));
  if (v46 < 0)
  {
    operator delete(v45[0]);
    if (!*v5)
    {
      goto LABEL_12;
    }
  }

  else if (!*v5)
  {
LABEL_12:
    v70 = *(a3 + 48);
    v71 = *(a3 + 64);
    v13 = a2[1];
    v14 = v13[1];
    v15 = v13[2];
    if (v14 >= v15)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v13) >> 6);
      if (v17 + 1 > 0xCCCCCCCCCCCCCCLL)
      {
        sub_298ADDDA0();
      }

      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v13) >> 6);
      v19 = 2 * v18;
      if (2 * v18 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x66666666666666)
      {
        v20 = 0xCCCCCCCCCCCCCCLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (v20 <= 0xCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      sub_298BCDFE0((v14 - *v13) >> 6 << 6, v54);
      v21 = *v13;
      v22 = v13[1];
      v23 = 320 * v17 - &v22[-*v13];
      v16 = 320 * v17 + 320;
      if (v22 != *v13)
      {
        v24 = 0;
        v25 = -64 * (&v22[-*v13] >> 6) + 320 * v17;
        do
        {
          v27 = v25 + v24;
          v28 = &v21[v24];
          *v27 = *&v21[v24];
          v29 = *&v21[v24 + 16];
          *(v27 + 32) = *&v21[v24 + 32];
          *(v27 + 16) = v29;
          *(v28 + 3) = 0;
          *(v28 + 4) = 0;
          *(v28 + 2) = 0;
          *(v25 + v24 + 40) = 0;
          *(v27 + 64) = 0;
          if (v21[v24 + 64] == 1)
          {
            v30 = *(v28 + 40);
            *(v25 + v24 + 56) = *(v28 + 7);
            *(v25 + v24 + 40) = v30;
            *(v28 + 6) = 0;
            *(v28 + 7) = 0;
            *(v28 + 5) = 0;
            *(v27 + 64) = 1;
          }

          v31 = *(v28 + 72);
          *(v27 + 88) = *(v28 + 11);
          *(v27 + 72) = v31;
          *(v28 + 10) = 0;
          *(v28 + 11) = 0;
          *(v28 + 9) = 0;
          *(v27 + 96) = 0;
          *(v27 + 120) = 0;
          if (v28[120] == 1)
          {
            v32 = &v21[v24];
            v33 = *&v21[v24 + 96];
            *(v27 + 112) = *&v21[v24 + 112];
            *(v27 + 96) = v33;
            *(v32 + 13) = 0;
            *(v32 + 14) = 0;
            *(v32 + 12) = 0;
            *(v27 + 120) = 1;
          }

          v34 = v25 + v24;
          v35 = *(v28 + 8);
          *(v34 + 144) = *(v28 + 18);
          *(v34 + 128) = v35;
          *(v28 + 17) = 0;
          *(v28 + 18) = 0;
          *(v28 + 16) = 0;
          *(v25 + v24 + 152) = 0;
          *(v34 + 176) = 0;
          if (v28[176] == 1)
          {
            v36 = &v21[v24];
            v37 = *&v21[v24 + 152];
            *(v25 + v24 + 168) = *&v21[v24 + 168];
            *(v25 + v24 + 152) = v37;
            *(v36 + 20) = 0;
            *(v36 + 21) = 0;
            *(v36 + 19) = 0;
            *(v34 + 176) = 1;
          }

          v38 = *(v28 + 184);
          *(v34 + 200) = *(v28 + 25);
          *(v34 + 184) = v38;
          *(v28 + 24) = 0;
          *(v28 + 25) = 0;
          *(v28 + 23) = 0;
          *(v34 + 208) = 0;
          *(v34 + 232) = 0;
          if (v28[232] == 1)
          {
            v39 = &v21[v24];
            v40 = *&v21[v24 + 208];
            *(v34 + 224) = *&v21[v24 + 224];
            *(v34 + 208) = v40;
            *(v39 + 27) = 0;
            *(v39 + 28) = 0;
            *(v39 + 26) = 0;
            *(v34 + 232) = 1;
          }

          v41 = v25 + v24;
          v42 = *(v28 + 15);
          *(v41 + 256) = *(v28 + 32);
          *(v41 + 240) = v42;
          *(v28 + 31) = 0;
          *(v28 + 32) = 0;
          *(v28 + 30) = 0;
          *(v41 + 264) = 0;
          *(v41 + 288) = 0;
          if (v28[288] == 1)
          {
            v43 = &v21[v24];
            v44 = *&v21[v24 + 264];
            *(v41 + 280) = *&v21[v24 + 280];
            *(v41 + 264) = v44;
            *(v43 + 34) = 0;
            *(v43 + 35) = 0;
            *(v43 + 33) = 0;
            *(v41 + 288) = 1;
          }

          v26 = *(v28 + 296);
          *(v41 + 312) = *(v28 + 39);
          *(v41 + 296) = v26;
          v24 += 320;
        }

        while (v28 + 320 != v22);
        do
        {
          v21 = (sub_298BCE30C(v21) + 320);
        }

        while (v21 != v22);
        v21 = *v13;
      }

      *v13 = v23;
      v13[1] = v16;
      v13[2] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v16 = sub_298BCDFE0(v14, v54) + 320;
    }

    v13[1] = v16;
    *v5 = 0;
  }

  return sub_298BCE30C(v54);
}

uint64_t *sub_298C26540(uint64_t *a1, void *a2, uint64_t **a3)
{
  v3 = a3;
  v19[10] = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v7 = *(a3 + 23);
  v8 = a3[1];
  if (v7 < 0)
  {
    a3 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = sub_298C28394(v19, v6, a3, v9);
  if (*(v3 + 48) == 1)
  {
    v13 = v3[3];
    v12 = v3 + 3;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v12[1];
    }

    sub_298C28394(&v18, *a2, v15, v16);
    v17 = v18;
    v18 = 0;
    sub_298C39D18();
  }

  *a1 = v19[0];
  return result;
}

uint64_t sub_298C26A30(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 96) = 0;
  if (v1)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    result = v3;
  }

  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    v4 = result;
    MEMORY[0x29C2945F0](v2, 0x1020C40A2194CFDLL);
    return v4;
  }

  return result;
}

void sub_298C26AD4(void *a1)
{
  sub_298C27214(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C26B0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_298C26B60(a1, a2);
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0;
  if (*(a2 + 32))
  {
    sub_298C26BE0(a1 + 24, a2 + 24);
  }

  return a1;
}

void *sub_298C26B60(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x29C2945E0](*a1, 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    v6 = operator new(8 * v5, 8uLL);
    *a1 = v6;
    *(a1 + 8) = *(a2 + 8);
    v7 = *a2;
    v8 = 8 * *(a1 + 16);

    return memcpy(v6, v7, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_298C26BE0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 8);
    if (v3 >= v2)
    {
      if (v2)
      {
        v6 = result;
        memmove(*result, *a2, 8 * v2);
LABEL_12:
        result = v6;
      }

LABEL_13:
      *(result + 8) = v2;
      return result;
    }

    if (*(result + 12) < v2)
    {
      *(result + 8) = 0;
      v7 = a2;
      v8 = result;
      sub_298B90A44(result, (result + 16), v2, 8);
      a2 = v7;
      result = v8;
    }

    else if (v3)
    {
      v4 = result;
      v5 = a2;
      memmove(*result, *a2, 8 * v3);
      a2 = v5;
      result = v4;
      goto LABEL_10;
    }

    v3 = 0;
LABEL_10:
    v9 = *(a2 + 8);
    v10 = v9 - v3;
    if (v9 != v3)
    {
      v11 = (*a2 + 8 * v3);
      v12 = (*result + 8 * v3);
      v6 = result;
      memcpy(v12, v11, 8 * v10);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  return result;
}

uuid_t sub_298C26CD8(uuid_t uu, uint64_t a2)
{
  *uu = 0;
  *(uu + 1) = 0;
  if (*a2)
  {
    uuid_copy(uu, *a2);
  }

  else
  {
    uuid_parse(*(a2 + 8), uu);
  }

  return uu;
}

uuid_t sub_298C26D24(uuid_t uu, const unsigned __int8 *a2, char *in, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  *(uu + 2) = a4;
  uu[24] = a5;
  *(uu + 25) = a6;
  *(uu + 33) = -1;
  if (a2)
  {
    uuid_copy(uu, a2);
  }

  else
  {
    uuid_parse(in, uu);
  }

  return uu;
}

uint64_t sub_298C26D78(uint64_t a1, void *a2)
{
  v4 = 0;
  if (sub_298B89FD8(a1, a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 56 * *(a1 + 16);
  }
}

uint64_t sub_298C26DD4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_298C26E50(a1, a2, v2 + 4))
      {
        if (!sub_298C26E50(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_298C26E50(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *sub_298C26EBC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  result = *sub_298C26F78(a1, &v5, a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_298C26F78(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_298C26E50(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_298C26E50(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

char **sub_298C27014(char **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_298C270C0((v1 + 32));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298C27060(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
  }

  v5 = *a3;
  *a3 = 0;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t sub_298C270C0(uint64_t a1)
{
  sub_298C2FC24((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298C27104(uint64_t a1)
{
  sub_298C27164((a1 + 136));
  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_298C27164(void *result)
{
  v1 = result[6];
  result[6] = 0;
  if (v1)
  {
    v4 = result;
    (*(*v1 + 16))(v1);
    result = v4;
  }

  v2 = result[3];
  if (v2)
  {
    result[4] = v2;
    v3 = result;
    operator delete(v2);
    return v3;
  }

  return result;
}

uint64_t sub_298C271E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_298B9BCEC(a2, *a1, *(a1 + 8));
  *a3 = 0;
  return result;
}

void *sub_298C27214(void *a1)
{
  *a1 = &unk_2A1F1F3E8;
  v2 = a1[19];
  if (v2)
  {
    sub_298BF34C8(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  sub_298C272B0((a1 + 7), a1[8]);
  v5 = a1[6];
  if (v5)
  {
    sub_298BF34C8(v5);
  }

  sub_298C27314((a1 + 2), a1[3]);
  return a1;
}

void sub_298C272B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298C272B0(a1, *a2);
    sub_298C272B0(a1, a2[1]);
    v5 = a2[6];
    if (v5)
    {
      sub_298BF34C8(v5);
    }

    operator delete(a2);
  }
}

void sub_298C27314(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298C27314(a1, *a2);
    sub_298C27314(a1, a2[1]);
    sub_298C270C0((a2 + 4));

    operator delete(a2);
  }
}

void sub_298C27374(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 64);
    v3 = *(a2 + 64);
    *v2 = 0;
    if (v3)
    {
      sub_298C286AC(v2, v3);
    }

    JUMPOUT(0x29C2945F0);
  }
}

uint64_t sub_298C273D4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        v6 = result;
        v7 = a2;
        sub_298C27374(v3, v4);
        result = v6;
        a2 = v7;
      }
    }

    while (v3-- != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298C27450(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        v6 = v2;
        operator delete(v2[4]);
        v2 = v6;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uuid_t sub_298C274C4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = *a4;
  v17 = *(a4 + 2);
  v5 = *a1;
  result = sub_298C26CD8(uu2, &v16);
  v7 = v5[1];
  if (v7)
  {
    v8 = v19 ^ *uu2;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] <= 1uLL)
    {
      v10 = (*&v7 - 1) & v8;
    }

    else
    {
      v10 = v8 < *&v7 ? v19 ^ *uu2 : v8 % *&v7;
    }

    v11 = *(*v5 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        if (v9.u32[0] < 2uLL)
        {
          v13 = *&v7 - 1;
          while (1)
          {
            v15 = *(v12 + 1);
            if (v15 == v8)
            {
              result = uuid_compare(v12 + 16, uu2);
              if (!result)
              {
                return result;
              }
            }

            else if ((v15 & v13) != v10)
            {
              goto LABEL_15;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_15;
            }
          }
        }

        do
        {
          v14 = *(v12 + 1);
          if (v14 == v8)
          {
            result = uuid_compare(v12 + 16, uu2);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            if (v14 >= *&v7)
            {
              v14 %= *&v7;
            }

            if (v14 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_15:
  **(a1 + 8) = 1;
  return result;
}

void sub_298C27724(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t a5)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v14 = 261;
  v13[0] = a2;
  v13[1] = a3;
  if (sub_298BAB3F0(v13, 0))
  {
    v9 = *a1;
    v16 = v11;
    v17 = v12;
    v10 = 2 * (**(a1 + 8) + a5);
    LOBYTE(v13[0]) = 0;
    v15 = 0;
    sub_298C16C08(v9, 3, &v16, v10, 3, a2, a3, v13);
  }
}

void sub_298C27804(void **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = v10[1];
        if (!v23)
        {
          break;
        }

        do
        {
          v10 = v23;
          v23 = *v23;
        }

        while (v23);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v9[4] = v14[4];
      if (v9 != v14)
      {
        sub_298B805BC(v9 + 5, v14[5], v14[6], (v14[6] - v14[5]) >> 3);
      }

      v15 = *v8;
      v16 = a1 + 1;
      v17 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_28:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v16;
      *v17 = v9;
      v18 = **a1;
      if (v18)
      {
        goto LABEL_29;
      }

LABEL_30:
      sub_298AEFAFC(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v21 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v22 = v10[1];
              if (!v22)
              {
                break;
              }

              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }

          else
          {
            for (v10[1] = 0; v21; v21 = v10[1])
            {
              do
              {
                v10 = v21;
                v21 = *v21;
              }

              while (v21);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v4 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v20 = *v4 == v14;
          v14 = v4;
        }

        while (!v20);
      }

      if (v12)
      {
        v14 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v16 = v15;
        if (v9[4] >= v15[4])
        {
          break;
        }

        v15 = *v15;
        v17 = v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      v15 = v15[1];
    }

    while (v15);
    v17 = v16 + 1;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v16;
    v16[1] = v9;
    v18 = **a1;
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a1 = v18;
    v9 = *v17;
    goto LABEL_30;
  }

  v12 = v9;
LABEL_13:
  sub_298BCE690(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_298BCE690(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

void sub_298C27B6C(uint64_t a1)
{
  if (*(a1 + 176) != 1)
  {
    return;
  }

  sub_298BCE62C(a1 + 152, *(a1 + 160));
  sub_298BCE690(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    goto LABEL_4;
  }

  if (*(a1 + 80) == 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_298BCE714(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *(a1 + 176) = 0;
}

uint64_t sub_298C27C14(uint64_t a1)
{
  sub_298BCE62C(a1 + 152, *(a1 + 160));
  sub_298BCE690(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 80) != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

LABEL_3:
  sub_298BCE714(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_298C27CB8(void *a1, void *a2, uint64_t a3, const void **a4, uint64_t a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_92;
  }

  v10 = a2;
  if (v6 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v45, 0, sizeof(v45));
  *(&v45.__r_.__value_.__s + 23) = v6 + 1;
  if (v6)
  {
    if ((v5 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v45, a2, v6);
  }

  *(&v45.__r_.__value_.__l.__data_ + v6) = 47;
  std::to_string(&v48, 0xCCCCCCCCCCCCCCCDLL * ((*(v10[4] + 8) - *v10[4]) >> 6));
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v48;
  }

  else
  {
    v12 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v45, v12, size);
  v15 = v14->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v46, "-");
  __p = *v16;
  v16->__r_.__value_.__r.__words[0] = 0;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_88:
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_89:
    operator delete(v45.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_19:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_89;
  }

LABEL_20:
  v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  if (*(a4 + 23) >= 0)
  {
    v19 = *(a4 + 23);
  }

  else
  {
    v19 = a4[1];
  }

  if (v19 + v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_92;
  }

  if (v19 + v18 > 0x16)
  {
    operator new();
  }

  memset(&v46, 0, sizeof(v46));
  *(&v46.__r_.__value_.__s + 23) = v19 + v18;
  if (v18)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v46, p_p, v18);
  }

  v21 = &v46 + v18;
  if (v19)
  {
    if (*(a4 + 23) >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    memmove(v21, v22, v19);
  }

  v21[v19] = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v46;
  v23 = *(a5 + 8);
  v24 = v23 == 8;
  if (v23 == 8)
  {
    v25 = a5;
  }

  else
  {
    v25 = 0;
  }

  v44 = v25;
  if (!v24)
  {
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    (*(*v10[3] + 56))(v10[3], v27, v28, a5);
    goto LABEL_84;
  }

  if (v18 + 11 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_92:
    sub_298ADDDA0();
  }

  if (v18 + 11 >= 0x17)
  {
    operator new();
  }

  memset(&v45, 0, sizeof(v45));
  *(&v45.__r_.__value_.__s + 23) = v18 + 11;
  if (v18)
  {
    if (v17 >= 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v45, v29, v18);
  }

  strcpy(&v45 + v18, "Compression");
  v30 = std::string::append(&v45, "-");
  v31 = v30->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = *(a4 + 23);
  if (v32 >= 0)
  {
    v33 = a4;
  }

  else
  {
    v33 = *a4;
  }

  if (v32 >= 0)
  {
    v34 = *(a4 + 23);
  }

  else
  {
    v34 = a4[1];
  }

  v35 = std::string::append(&v46, v33, v34);
  v36 = v35->__r_.__value_.__r.__words[0];
  v48.__r_.__value_.__r.__words[0] = v35->__r_.__value_.__l.__size_;
  *(v48.__r_.__value_.__r.__words + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
  v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 48) == 1)
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    v38 = v48.__r_.__value_.__r.__words[0];
    *(a3 + 24) = v36;
    *(a3 + 32) = v38;
    *(a3 + 39) = *(v48.__r_.__value_.__r.__words + 7);
    *(a3 + 47) = v37;
  }

  else
  {
    v39 = v48.__r_.__value_.__r.__words[0];
    *(a3 + 24) = v36;
    *(a3 + 32) = v39;
    *(a3 + 39) = *(v48.__r_.__value_.__r.__words + 7);
    *(a3 + 47) = v37;
    *(a3 + 48) = 1;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }
  }

  else if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  operator delete(v45.__r_.__value_.__l.__data_);
LABEL_74:
  v40 = v10[3];
  v45.__r_.__value_.__r.__words[0] = &v44;
  (*(*v40 + 48))(&v46);
  if (v46.__r_.__value_.__r.__words[0])
  {
    *a1 = v46.__r_.__value_.__r.__words[0];
  }

  else
  {
    v41 = *(a3 + 23);
    if (v41 >= 0)
    {
      v42 = a3;
    }

    else
    {
      v42 = *a3;
    }

    if (v41 >= 0)
    {
      v43 = *(a3 + 23);
    }

    else
    {
      v43 = *(a3 + 8);
    }

    (*(*v10[3] + 56))(v10[3], v42, v43, *(v44 + 24));
    if (v46.__r_.__value_.__r.__words[0])
    {
      (*(*v46.__r_.__value_.__l.__data_ + 8))(v46.__r_.__value_.__r.__words[0]);
    }
  }

LABEL_84:
  if (v17 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_298C282D8(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7[20] = *MEMORY[0x29EDCA608];
  v7[17] = 0;
  v7[18] = a2;
  v7[19] = 2;
  v7[16] = 0;
  v6[0] = v7;
  v6[1] = 0x1000000001;
  v7[0] = 0;
  v4 = **a1 + 32;
  v5[0] = v6;
  v5[1] = v4;
  sub_298B89BA0(v6);
  sub_298C3BBE4(v5);
  sub_298B89C2C(v6);
  *a3 = 0;
  if (v6[0] != v7)
  {
    free(v6[0]);
  }
}

uint64_t *sub_298C28394(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    operator new();
  }

  (*(**a2 + 32))(&v20);
  if ((v25 & 1) != 0 && (v6 = v20, v20 = 0, v6))
  {
    v7 = a2[1];
    v8 = *v7;
    *v7 = 0;
    v18 = v6;
    v19 = v8;
    sub_298ADE6E8(&v19, &v18, &v17);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    *a2[1] = v17;
    *a1 = 0;
  }

  else
  {
    sub_298AFF468(&v20, &v17);
    if (v17)
    {
      v9 = a2[1];
      v10 = *v9;
      *v9 = 0;
      v11 = v17;
      v17 = 0;
      v18 = v11;
      v19 = v10;
      sub_298ADE6E8(&v19, &v18, &v16);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      *a2[1] = v16;
      *a1 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    else
    {
      v12 = __p;
      v13 = SHIBYTE(v23);
      __p = 0;
      v22 = 0;
      v14 = v24;
      v23 = 0;
      v24 = 0;
      *a1 = v14;
      if (v13 < 0)
      {
        operator delete(v12);
      }
    }
  }

  return sub_298C13D54(&v20);
}

uint64_t sub_298C28618(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      return v3;
    }
  }

  else if (v2)
  {
    v3 = result;
    v4 = sub_298AEAF14(v2);
    MEMORY[0x29C2945F0](v4, 0x1070C401CED0764);
    return v3;
  }

  return result;
}

void sub_298C286AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    JUMPOUT(0x29C2945F0);
  }
}

BOOL sub_298C28714(uint64_t **a1, unsigned __int8 *uu1, _OWORD *a3, uint64_t a4)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (!v4)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      v8 = *(uu1 + 2);
      v9 = v7[6];
      if (v8 != v9)
      {
        if (v8 >= v9)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      if (uuid_compare(uu1, v7 + 32))
      {
        break;
      }

      if (*(uu1 + 3) >= v7[7])
      {
        goto LABEL_12;
      }

LABEL_6:
      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_3;
      }
    }

    if (uuid_compare(uu1, v7 + 32) < 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = sub_298C2886C((v7 + 4), uu1);
    if (!result)
    {
      break;
    }

    v5 = (v7 + 1);
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  if (!*v5)
  {
    goto LABEL_3;
  }

  return result;
}

BOOL sub_298C2886C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  if (uuid_compare(a1, a2))
  {
    return uuid_compare(a1, a2) >> 31;
  }

  return *(a1 + 24) < *(a2 + 24);
}

uint64_t *sub_298C288D8(uint64_t **a1, unsigned __int8 *uu1, _OWORD *a3, uint64_t a4)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (!v4)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v9 = *(uu1 + 2);
      v10 = v8[6];
      if (v9 != v10)
      {
        if (v9 >= v10)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      if (uuid_compare(uu1, v8 + 32))
      {
        break;
      }

      if (*(uu1 + 3) >= v8[7])
      {
        goto LABEL_12;
      }

LABEL_6:
      v4 = *v8;
      v5 = v8;
      if (!*v8)
      {
        goto LABEL_3;
      }
    }

    if (uuid_compare(uu1, v8 + 32) < 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (!sub_298C2886C((v8 + 4), uu1))
    {
      break;
    }

    v5 = (v8 + 1);
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  if (!*v5)
  {
    goto LABEL_3;
  }

  return *v5;
}

uint64_t sub_298C28A34(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v7;
        if (*(v84 + 8) < *(*v7 + 8))
        {
          *v7 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v92 = v7 + 1;
      v93 = v7[1];
      v94 = v7 + 2;
      v95 = v7[2];
      v96 = *(v93 + 8);
      v97 = *v7;
      v98 = *(*v7 + 8);
      v99 = *(v95 + 8);
      if (v96 >= v98)
      {
        if (v99 < v96)
        {
          *v92 = v95;
          *v94 = v93;
          v100 = v7;
          v101 = v7 + 1;
          result = v93;
          if (v99 < v98)
          {
            goto LABEL_201;
          }

          goto LABEL_202;
        }

LABEL_214:
        v93 = v95;
        v151 = *(a2 - 1);
        if (*(v151 + 8) >= *(v93 + 8))
        {
          return result;
        }
      }

      else
      {
        v100 = v7;
        v101 = v7 + 2;
        result = *v7;
        if (v99 >= v96)
        {
          *v7 = v93;
          v7[1] = v97;
          v100 = v7 + 1;
          v101 = v7 + 2;
          result = v97;
          if (v99 >= v98)
          {
            goto LABEL_214;
          }
        }

LABEL_201:
        *v100 = v95;
        *v101 = v97;
        v93 = result;
LABEL_202:
        v151 = *(a2 - 1);
        if (*(v151 + 8) >= *(v93 + 8))
        {
          return result;
        }
      }

      *v94 = v151;
      *(a2 - 1) = v93;
      v157 = *v94;
      v158 = *(v157 + 8);
      v159 = *v92;
      if (v158 < *(v159 + 8))
      {
        v7[1] = v157;
        v7[2] = v159;
        v160 = *v7;
        if (v158 < *(*v7 + 8))
        {
          *v7 = v157;
          v7[1] = v160;
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_298C297EC(v7, v7 + 1, v7 + 2, v7 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v102 = v7 + 1;
      v104 = v7 == a2 || v102 == a2;
      if (a4)
      {
        if (!v104)
        {
          v105 = 0;
          v106 = v7;
          do
          {
            v107 = *v106;
            v108 = v106[1];
            v106 = v102;
            if (*(v108 + 8) < *(v107 + 8))
            {
              *v102 = 0;
              v109 = v105 * 8;
              v110 = &v7[v105];
              *v110 = 0;
              v110[1] = v107;
              while (v109)
              {
                v111 = (v7 + v109);
                v112 = *(v7 + v109 - 8);
                if (*(v108 + 8) >= *(v112 + 8))
                {
                  goto LABEL_142;
                }

                v113 = *v110;
                v109 -= 8;
                v110 = (v7 + v109);
                *v110 = 0;
                v110[1] = v112;
                if (v113)
                {
                  (*(*v113 + 8))(v113);
                }
              }

              v111 = v7;
LABEL_142:
              result = *v111;
              *v111 = v108;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }

            v102 = v106 + 1;
            ++v105;
          }

          while (v106 + 1 != a2);
        }
      }

      else if (!v104)
      {
        do
        {
          v152 = *v7;
          v153 = v7[1];
          v7 = v102;
          v154 = *(v153 + 8);
          if (v154 < *(v152 + 8))
          {
            result = 0;
            *v7 = 0;
            v155 = v7;
            do
            {
              *(v155 - 1) = 0;
              *v155 = v152;
              if (result)
              {
                (*(*result + 8))(result);
                v154 = *(v153 + 8);
              }

              v156 = *--v155;
              result = v156;
              v152 = *(v155 - 1);
            }

            while (v154 < *(v152 + 8));
            *v155 = v153;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }

          v102 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v114 = v10 >> 1;
      v115 = v10 >> 1;
      while (2)
      {
        v116 = v115;
        if (v114 >= v115)
        {
          v117 = (2 * v115) | 1;
          v118 = &v7[v117];
          if (2 * v116 + 2 >= v9)
          {
            v120 = &v7[v116];
            v121 = *v120;
            if (*(*v118 + 8) >= *(*v120 + 8))
            {
LABEL_154:
              *v120 = 0;
              v122 = *v118;
              while (1)
              {
                v123 = v118;
                *v118 = 0;
                v124 = *v120;
                *v120 = v122;
                if (v124)
                {
                  (*(*v124 + 8))(v124);
                }

                if (v114 < v117)
                {
                  break;
                }

                v118 = &v7[(2 * v117) | 1];
                if (2 * v117 + 2 < v9)
                {
                  v122 = *v118;
                  if (*(*v118 + 8) >= *(v118[1] + 8))
                  {
                    v117 = (2 * v117) | 1;
                  }

                  else
                  {
                    v122 = v118[1];
                    ++v118;
                    v117 = 2 * v117 + 2;
                  }

                  v120 = v123;
                  if (*(v122 + 8) < *(v121 + 8))
                  {
                    break;
                  }
                }

                else
                {
                  v122 = *v118;
                  v117 = (2 * v117) | 1;
                  v120 = v123;
                  if (*(*v118 + 8) < *(v121 + 8))
                  {
                    break;
                  }
                }
              }

              v125 = *v123;
              *v123 = v121;
              if (v125)
              {
                (*(*v125 + 8))(v125);
              }
            }
          }

          else
          {
            v119 = *v118;
            if (*(*v118 + 8) < *(v118[1] + 8))
            {
              v119 = v118[1];
              ++v118;
              v117 = 2 * v116 + 2;
            }

            v120 = &v7[v116];
            v121 = *v120;
            if (*(v119 + 8) >= *(*v120 + 8))
            {
              goto LABEL_154;
            }
          }
        }

        v115 = v116 - 1;
        if (v116)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v127 = 0;
        v128 = *v7;
        *v7 = 0;
        v129 = v7;
LABEL_173:
        v132 = &v129[v127];
        v133 = v132 + 1;
        if (2 * v127 + 2 >= v9)
        {
          v130 = *v133;
          v127 = (2 * v127) | 1;
          *v133 = 0;
          v131 = *v129;
          *v129 = v130;
          if (!v131)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v136 = v132[2];
          v135 = v132 + 2;
          v134 = v136;
          v137 = *(*(v135 - 1) + 8);
          v138 = *(v136 + 8);
          if (v137 < v138)
          {
            v133 = v135;
          }

          else
          {
            v134 = *(v135 - 1);
          }

          if (v137 >= v138)
          {
            v127 = (2 * v127) | 1;
          }

          else
          {
            v127 = 2 * v127 + 2;
          }

          *v133 = 0;
          v131 = *v129;
          *v129 = v134;
          if (!v131)
          {
LABEL_172:
            v129 = v133;
            if (v127 > ((v9 - 2) >> 1))
            {
              if (v133 == --a2)
              {
                result = *v133;
                *v133 = v128;
                if (!result)
                {
                  goto LABEL_168;
                }

LABEL_167:
                result = (*(*result + 8))(result);
                goto LABEL_168;
              }

              v139 = *a2;
              *a2 = 0;
              v140 = *v133;
              *v133 = v139;
              if (v140)
              {
                (*(*v140 + 8))(v140);
              }

              result = *a2;
              *a2 = v128;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              v141 = v133 + 1 - v7;
              v126 = v141 < 2;
              v142 = v141 - 2;
              if (!v126)
              {
                v143 = v142 >> 1;
                v144 = &v7[v142 >> 1];
                v145 = *v133;
                if (*(*v144 + 8) < *(*v133 + 8))
                {
                  *v133 = 0;
                  v146 = *v144;
                  do
                  {
                    v147 = v144;
                    *v144 = 0;
                    v148 = *v133;
                    *v133 = v146;
                    if (v148)
                    {
                      (*(*v148 + 8))(v148);
                    }

                    if (!v143)
                    {
                      break;
                    }

                    v143 = (v143 - 1) >> 1;
                    v144 = &v7[v143];
                    v146 = *v144;
                    v133 = v147;
                  }

                  while (*(*v144 + 8) < *(v145 + 8));
                  result = *v147;
                  *v147 = v145;
                  if (result)
                  {
                    goto LABEL_167;
                  }
                }
              }

LABEL_168:
              v126 = v9-- <= 2;
              if (v126)
              {
                return result;
              }

              continue;
            }

            goto LABEL_173;
          }
        }

        break;
      }

      (*(*v131 + 8))(v131);
      goto LABEL_172;
    }

    v11 = &v7[v9 >> 1];
    v12 = v11;
    v13 = *(a2 - 1);
    v14 = *(v13 + 8);
    if (v9 < 0x81)
    {
      v19 = *v7;
      v20 = *(*v7 + 8);
      v21 = *v11;
      v22 = *(*v12 + 8);
      if (v20 < v22)
      {
        if (v14 < v20)
        {
          *v12 = v13;
          goto LABEL_37;
        }

        *v12 = v19;
        *v7 = v21;
        v35 = *(a2 - 1);
        if (*(v35 + 8) < v22)
        {
          *v7 = v35;
LABEL_37:
          *(a2 - 1) = v21;
        }

LABEL_38:
        --a3;
        v25 = *v7;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v14 >= v20)
      {
        goto LABEL_38;
      }

      *v7 = v13;
      *(a2 - 1) = v19;
      v24 = *v12;
      if (*(*v7 + 8) >= *(*v12 + 8))
      {
        goto LABEL_38;
      }

      *v12 = *v7;
      *v7 = v24;
      --a3;
      v25 = v24;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_39;
    }

    v15 = *v11;
    v16 = *(*v11 + 8);
    v17 = *v7;
    v18 = *(*v7 + 8);
    if (v16 >= v18)
    {
      if (v14 < v16)
      {
        *v11 = v13;
        *(a2 - 1) = v15;
        v23 = *v7;
        if (*(*v11 + 8) < *(*v7 + 8))
        {
          *v7 = *v11;
          *v11 = v23;
        }
      }
    }

    else
    {
      if (v14 >= v16)
      {
        *v7 = v15;
        *v11 = v17;
        v26 = *(a2 - 1);
        if (*(v26 + 8) >= v18)
        {
          goto LABEL_29;
        }

        *v11 = v26;
      }

      else
      {
        *v7 = v13;
      }

      *(a2 - 1) = v17;
    }

LABEL_29:
    v27 = v11 - 1;
    v28 = *(v11 - 1);
    v29 = *(v28 + 8);
    v30 = v7[1];
    v31 = *(v30 + 8);
    v32 = *(a2 - 2);
    v33 = *(v32 + 8);
    if (v29 >= v31)
    {
      if (v33 < v29)
      {
        *v27 = v32;
        *(a2 - 2) = v28;
        v34 = v7[1];
        if (*(*v27 + 8) < *(v34 + 8))
        {
          v7[1] = *v27;
          *v27 = v34;
        }
      }
    }

    else
    {
      if (v33 >= v29)
      {
        v7[1] = v28;
        *v27 = v30;
        v37 = *(a2 - 2);
        if (*(v37 + 8) >= v31)
        {
          goto LABEL_43;
        }

        *v27 = v37;
      }

      else
      {
        v7[1] = v32;
      }

      *(a2 - 2) = v30;
    }

LABEL_43:
    v40 = v11[1];
    v38 = v11 + 1;
    v39 = v40;
    v41 = *(v40 + 8);
    v42 = v7[2];
    v43 = *(v42 + 8);
    v44 = *(a2 - 3);
    v45 = *(v44 + 8);
    if (v41 >= v43)
    {
      if (v45 < v41)
      {
        *v38 = v44;
        *(a2 - 3) = v39;
        v46 = v7[2];
        if (*(*v38 + 8) < *(v46 + 8))
        {
          v7[2] = *v38;
          *v38 = v46;
        }
      }

      goto LABEL_52;
    }

    if (v45 < v41)
    {
      v7[2] = v44;
LABEL_51:
      *(a2 - 3) = v42;
      goto LABEL_52;
    }

    v7[2] = v39;
    *v38 = v42;
    v47 = *(a2 - 3);
    if (*(v47 + 8) < v43)
    {
      *v38 = v47;
      goto LABEL_51;
    }

LABEL_52:
    v48 = *v12;
    v49 = *(*v12 + 8);
    v50 = *v27;
    v51 = *(*v27 + 8);
    v52 = *v38;
    v53 = *(*v38 + 8);
    if (v49 >= v51)
    {
      if (v53 >= v49)
      {
        goto LABEL_60;
      }

      *v12 = v52;
      *v38 = v48;
      v38 = &v7[v9 >> 1];
      v48 = v50;
      if (v53 < v51)
      {
LABEL_59:
        *v27 = v52;
        *v38 = v50;
LABEL_60:
        v55 = *v7;
        *v7 = v48;
        *v12 = v55;
        --a3;
        v25 = *v7;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      v72 = *v7;
      *v7 = v52;
      *v12 = v72;
      --a3;
      v25 = *v7;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_61:
      v36 = *(v25 + 8);
      if (*(*(v7 - 1) + 8) < v36)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      if (v36 >= *(*(a2 - 1) + 8))
      {
        v74 = (v7 + 1);
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v74 += 8;
        }

        while (v36 >= *(*v8 + 8));
      }

      else
      {
        v8 = v7;
        do
        {
          v73 = v8[1];
          ++v8;
        }

        while (v36 >= *(v73 + 8));
      }

      v75 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *--v75;
        }

        while (v36 < *(v76 + 8));
      }

      if (v8 < v75)
      {
        v77 = *v8;
        v78 = *v75;
        do
        {
          *v8 = v78;
          *v75 = v77;
          do
          {
            v79 = v8[1];
            ++v8;
            v77 = v79;
          }

          while (v36 >= *(v79 + 8));
          do
          {
            v80 = *--v75;
            v78 = v80;
          }

          while (v36 < *(v80 + 8));
        }

        while (v8 < v75);
      }

      v81 = v8 - 1;
      if (v8 - 1 != v7)
      {
        v82 = *v81;
        *v81 = 0;
        v83 = *v7;
        *v7 = v82;
        if (v83)
        {
          (*(*v83 + 8))(v83);
        }
      }

      a4 = 0;
      result = *v81;
      *v81 = v25;
      if (result)
      {
        result = (*(*result + 8))(result);
        a4 = 0;
      }
    }

    else
    {
      if (v53 < v49)
      {
        goto LABEL_59;
      }

      *v27 = v48;
      *v12 = v50;
      v27 = &v7[v9 >> 1];
      v48 = v52;
      if (v53 < v51)
      {
        goto LABEL_59;
      }

      v54 = *v7;
      *v7 = v50;
      *v12 = v54;
      --a3;
      v25 = *v7;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v36 = *(v25 + 8);
LABEL_62:
      v56 = 0;
      *v7 = 0;
      do
      {
        v57 = v7[++v56];
      }

      while (*(v57 + 8) < v36);
      v58 = &v7[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v61 + 8) >= v36);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v60 + 8) >= v36);
      }

      if (v58 >= v59)
      {
        v67 = v58 - 1;
        if (v58 - 1 == v7)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v62 = *v59;
        v63 = &v7[v56];
        v64 = v59;
        do
        {
          *v63 = v62;
          *v64 = v57;
          do
          {
            v65 = v63[1];
            ++v63;
            v57 = v65;
          }

          while (*(v65 + 8) < v36);
          do
          {
            v66 = *--v64;
            v62 = v66;
          }

          while (*(v66 + 8) >= v36);
        }

        while (v63 < v64);
        v67 = v63 - 1;
        if (v63 - 1 == v7)
        {
          goto LABEL_81;
        }
      }

      v68 = *v67;
      *v67 = 0;
      v69 = *v7;
      *v7 = v68;
      if (v69)
      {
        (*(*v69 + 8))(v69);
      }

LABEL_81:
      v70 = *v67;
      *v67 = v25;
      if (v70)
      {
        (*(*v70 + 8))(v70);
      }

      if (v58 < v59)
      {
        goto LABEL_86;
      }

      v71 = sub_298C29988(v7, v67);
      v8 = v67 + 1;
      result = sub_298C29988(v67 + 1, a2);
      if (result)
      {
        a2 = v67;
        if (v71)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v71)
      {
LABEL_86:
        result = sub_298C28A34(v7, v67, a3, a4 & 1);
        a4 = 0;
        v8 = v67 + 1;
      }
    }
  }

  v86 = *v7;
  v87 = v7[1];
  v88 = *(v87 + 8);
  v89 = *(*v7 + 8);
  v90 = *(a2 - 1);
  v91 = *(v90 + 8);
  if (v88 < v89)
  {
    if (v91 >= v88)
    {
      *v7 = v87;
      v7[1] = v86;
      v161 = *(a2 - 1);
      if (*(v161 + 8) >= v89)
      {
        return result;
      }

      v7[1] = v161;
    }

    else
    {
      *v7 = v90;
    }

    *(a2 - 1) = v86;
    return result;
  }

  if (v91 < v88)
  {
    v7[1] = v90;
    *(a2 - 1) = v87;
    v150 = *v7;
    v149 = v7[1];
    if (*(v149 + 8) < *(*v7 + 8))
    {
      *v7 = v149;
      v7[1] = v150;
    }
  }

  return result;
}

uint64_t *sub_298C297EC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *result;
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v6 < v8)
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if (*(*a3 + 8) >= v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
LABEL_11:
    v12 = *a4;
    if (*(*a4 + 8) >= *(v5 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v6)
  {
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 8) >= *(v9 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 8) >= *(*result + 8))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 8) >= *(*a3 + 8))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v13 = *a2;
  if (*(*a3 + 8) < *(*a2 + 8))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(*a2 + 8) < *(*result + 8))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_298C29988(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(v8 + 8);
      v10 = *(*a1 + 8);
      v11 = *(a2 - 1);
      v12 = *(v11 + 8);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v8;
          v34 = *a1;
          v33 = a1[1];
          if (*(v33 + 8) < *(*a1 + 8))
          {
            *a1 = v33;
            a1[1] = v34;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v8;
        a1[1] = v7;
        v51 = *(a2 - 1);
        if (*(v51 + 8) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      sub_298C297EC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *(v23 + 8);
    v27 = *a1;
    v28 = *(*a1 + 8);
    v29 = *(v25 + 8);
    if (v26 >= v28)
    {
      if (v29 >= v26)
      {
        goto LABEL_47;
      }

      *v22 = v25;
      *v24 = v23;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v23;
      if (v29 >= v28)
      {
LABEL_45:
        v46 = *(a2 - 1);
        if (*(v46 + 8) >= *(v23 + 8))
        {
          return 1;
        }

LABEL_48:
        *v24 = v46;
        *(a2 - 1) = v23;
        v47 = *v24;
        v48 = *(v47 + 8);
        v49 = *v22;
        if (v48 < *(v49 + 8))
        {
          a1[1] = v47;
          a1[2] = v49;
          v50 = *a1;
          if (v48 < *(*a1 + 8))
          {
            *a1 = v47;
            a1[1] = v50;
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v29 >= v26)
      {
        *a1 = v23;
        a1[1] = v27;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v27;
        if (v29 >= v28)
        {
LABEL_47:
          v23 = v25;
          v46 = *(a2 - 1);
          if (*(v46 + 8) >= *(v23 + 8))
          {
            return 1;
          }

          goto LABEL_48;
        }
      }
    }

    *v30 = v25;
    *v31 = v27;
    v23 = v32;
    goto LABEL_45;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(v5 + 8) < *(*a1 + 8))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[2];
  v15 = a1[1];
  v16 = *(v15 + 8);
  v17 = *a1;
  v18 = *(*a1 + 8);
  v19 = *(v14 + 8);
  if (v16 >= v18)
  {
    if (v19 >= v16)
    {
      goto LABEL_27;
    }

    a1[1] = v14;
    *v13 = v15;
    v20 = a1;
    v21 = a1 + 1;
LABEL_25:
    if (v19 >= v18)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    *a1 = v15;
    a1[1] = v17;
    v20 = a1 + 1;
    v21 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v20 = v14;
  *v21 = v17;
LABEL_27:
  v35 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  while (1)
  {
    v39 = *v35;
    v40 = *v13;
    if (*(*v35 + 8) < *(v40 + 8))
    {
      break;
    }

LABEL_32:
    v13 = v35;
    ++v36;
    if (++v35 == a2)
    {
      return 1;
    }
  }

  *v35 = 0;
  v41 = v36 * 8;
  v42 = &a1[v36];
  v42[2] = 0;
  v42[3] = v40;
  while (1)
  {
    if (v41 == -16)
    {
      v38 = *a1;
      *a1 = v39;
      if (!v38)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v43 = a1 + v41;
    v44 = *(a1 + v41 + 8);
    if (*(v39 + 8) >= *(v44 + 8))
    {
      break;
    }

    v45 = v42[2];
    v41 -= 8;
    v42 = (a1 + v41);
    v42[2] = 0;
    v42[3] = v44;
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }
  }

  v38 = *(v43 + 2);
  *(v43 + 2) = v39;
  if (v38)
  {
LABEL_30:
    (*(*v38 + 8))(v38);
  }

LABEL_31:
  if (++v37 != 8)
  {
    goto LABEL_32;
  }

  return v35 + 1 == a2;
}

uint64_t *sub_298C29D44(uint64_t *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_298BCEAE4(result, (v2 - *a2) >> 3);
  }

  return result;
}

uint64_t *sub_298C29DAC(uint64_t *result, const void **a2, const void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_298C29E60(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          i = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        i = v4[2];
        if (*i != v4)
        {
          v8 = i[2];
          v9 = *v8 == i;
          for (i = v8; !v9; v8 = i)
          {
            i = v8[2];
            v9 = *i == v8;
          }
        }
      }

      v4 = i;
    }

    while (i != a3);
  }

  return result;
}

uint64_t *sub_298C29E60(uint64_t *result, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = result;
  v7 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_20;
  }

  v8 = *(a2 + 55);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v9 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v8 >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 40);
  }

  if (v8 >= 0)
  {
    v13 = (a2 + 32);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  result = memcmp(v11, v13, v14);
  v15 = v10 < v12;
  if (result)
  {
    v15 = result < 0;
  }

  if (v15)
  {
LABEL_20:
    v16 = *a2;
    if (*v6 == a2)
    {
      v18 = a2;
    }

    else
    {
      if (v16)
      {
        v17 = *a2;
        do
        {
          v18 = v17;
          v17 = *(v17 + 8);
        }

        while (v17);
      }

      else
      {
        v44 = a2;
        do
        {
          v18 = *(v44 + 16);
          v45 = *v18 == v44;
          v44 = v18;
        }

        while (v45);
      }

      v46 = *(a3 + 23);
      v47 = *(v18 + 55);
      if (v47 >= 0)
      {
        v48 = *(v18 + 55);
      }

      else
      {
        v48 = *(v18 + 40);
      }

      if (v47 >= 0)
      {
        v49 = (v18 + 32);
      }

      else
      {
        v49 = *(v18 + 32);
      }

      if (v46 >= 0)
      {
        v50 = *(a3 + 23);
      }

      else
      {
        v50 = a3[1];
      }

      if (v46 >= 0)
      {
        v51 = a3;
      }

      else
      {
        v51 = *a3;
      }

      if (v50 >= v48)
      {
        v52 = v48;
      }

      else
      {
        v52 = v50;
      }

      result = memcmp(v49, v51, v52);
      v53 = v48 < v50;
      if (result)
      {
        v53 = result < 0;
      }

      if (!v53)
      {
        v55 = *v7;
        if (!*v7)
        {
          goto LABEL_109;
        }

        while (1)
        {
          while (1)
          {
            v56 = v55;
            v59 = v55[4];
            v57 = v55 + 4;
            v58 = v59;
            v60 = *(v57 + 23);
            if (v60 >= 0)
            {
              v61 = *(v57 + 23);
            }

            else
            {
              v61 = v57[1];
            }

            if (v60 >= 0)
            {
              v62 = v57;
            }

            else
            {
              v62 = v58;
            }

            if (v61 >= v50)
            {
              v63 = v50;
            }

            else
            {
              v63 = v61;
            }

            v64 = memcmp(v51, v62, v63);
            v65 = v50 < v61;
            if (v64)
            {
              v65 = v64 < 0;
            }

            if (!v65)
            {
              break;
            }

            v55 = *v56;
            if (!*v56)
            {
              goto LABEL_109;
            }
          }

          result = memcmp(v62, v51, v63);
          v66 = v61 < v50;
          if (result)
          {
            v66 = result < 0;
          }

          if (!v66)
          {
            return result;
          }

          v55 = v56[1];
          if (!v55)
          {
            goto LABEL_109;
          }
        }
      }
    }

    if (v16)
    {
      v54 = (v18 + 8);
    }

    else
    {
      v54 = a2;
    }

    if (!*v54)
    {
      goto LABEL_109;
    }
  }

  else
  {
    result = memcmp(v13, v11, v14);
    v19 = v12 < v10;
    if (result)
    {
      v19 = result < 0;
    }

    if (v19)
    {
      v20 = *(a2 + 8);
      if (v20)
      {
        do
        {
          v67 = v20;
          v20 = *v20;
          v21 = v67;
        }

        while (v20);
      }

      else
      {
        v21 = a2;
        do
        {
          v22 = v21;
          v21 = v21[2];
        }

        while (*v21 != v22);
      }

      if (v21 == v7)
      {
        goto LABEL_109;
      }

      v25 = v21[4];
      v23 = v21 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = *(v23 + 23);
      }

      else
      {
        v27 = v23[1];
      }

      if (v26 >= 0)
      {
        v28 = v23;
      }

      else
      {
        v28 = v24;
      }

      if (v27 >= v10)
      {
        v29 = v10;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(v11, v28, v29);
      v31 = v10 < v27;
      if (v30)
      {
        v31 = v30 < 0;
      }

      if (v31 || (v32 = *v7) == 0)
      {
LABEL_109:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = *(v34 + 23);
          }

          else
          {
            v38 = v34[1];
          }

          if (v37 >= 0)
          {
            v39 = v34;
          }

          else
          {
            v39 = v35;
          }

          if (v38 >= v10)
          {
            v40 = v10;
          }

          else
          {
            v40 = v38;
          }

          v41 = memcmp(v11, v39, v40);
          v42 = v10 < v38;
          if (v41)
          {
            v42 = v41 < 0;
          }

          if (!v42)
          {
            break;
          }

          v32 = *v33;
          if (!*v33)
          {
            goto LABEL_109;
          }
        }

        result = memcmp(v39, v11, v40);
        v43 = v38 < v10;
        if (result)
        {
          v43 = result < 0;
        }

        if (!v43)
        {
          break;
        }

        v32 = v33[1];
        if (!v32)
        {
          goto LABEL_109;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_298C2A27C(uint64_t *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_298B7F4BC(result, (v2 - *a2) >> 3);
  }

  return result;
}

uint64_t sub_298C2A2E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_298BDDED8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298C2A344(a1, i + 16, (i + 16));
  }

  return a1;
}

void sub_298C2A344(void *a1, unsigned __int8 *uu2, uint64_t a3)
{
  v3 = *(uu2 + 1) ^ *uu2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_6;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v4 - 1) & v3;
  }

  else
  {
    v6 = *(uu2 + 1) ^ *uu2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_6:
    operator new();
  }

  if (v5.u32[0] >= 2uLL)
  {
    while (1)
    {
      v9 = *(v8 + 1);
      if (v9 == v3)
      {
        v10 = uu2;
        if (!uuid_compare(v8 + 16, uu2))
        {
          return;
        }
      }

      else
      {
        v10 = uu2;
        if (v9 >= *&v4)
        {
          v9 %= *&v4;
        }

        if (v9 != v6)
        {
          goto LABEL_6;
        }
      }

      v8 = *v8;
      uu2 = v10;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  v11 = uu2;
  while (1)
  {
    v12 = *(v8 + 1);
    if (v12 == v3)
    {
      break;
    }

    if ((v12 & (*&v4 - 1)) != v6)
    {
      goto LABEL_6;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (uuid_compare(v8 + 16, v11))
  {
    goto LABEL_23;
  }
}

uint64_t sub_298C2A5C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 29);
  *(a1 + 20) = v4;
  *(a1 + 29) = v5;
  uuid_copy((a1 + 4), (a2 + 4));
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  if (v6)
  {
    sub_298C2A63C((a1 + 64), v6);
  }

  *(a1 + 64) = 0;
  return a1;
}

void *sub_298C2A6C0(const void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  v5 = (v4 >> 3) + 1;
  if (v5 >> 61)
  {
    sub_298ADDDA0();
  }

  v7 = a1[2] - v3;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v14[4] = a1;
  if (v8)
  {
    sub_298B9947C(a1, v8);
  }

  v9 = (8 * (v4 >> 3));
  v10 = *a2;
  *a2 = 0;
  *v9++ = v10;
  memcpy(0, v3, v4);
  v11 = *a1;
  *a1 = 0;
  a1[1] = v9;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_298C2A7A4(v14);
  return v9;
}

uint64_t sub_298C2A7A4(uint64_t a1)
{
  sub_298C2A7E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298C2A7E4(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_298C27374(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t *sub_298C2A83C(uint64_t a1, unint64_t a2)
{
  result = sub_298C2AAC8(a1, a2);
  v4 = *(a1 + 8);
  v5 = (*a1 + 16 * v4);
  v6 = *result;
  v7 = result[1];
  result[1] = 0;
  *v5 = v6;
  v5[1] = v7;
  *(a1 + 8) = v4 + 1;
  return result;
}

void *sub_298C2A880(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_20;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v4 - 1) & v3;
  }

  else
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_20;
  }

  if (v5.u32[0] < 2uLL)
  {
    do
    {
      v9 = v8[1];
      if (v9 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v9 & (*&v4 - 1)) != v6)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
LABEL_20:
    operator new();
  }

  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }

    if (v10 != v6)
    {
      goto LABEL_20;
    }

LABEL_15:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_15;
  }

  return v8;
}

unint64_t sub_298C2AAC8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 16 * v3 > a2)
    {
      v6 = a2 - *a1;
      sub_298C2AB34(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      sub_298C2AB34(a1, v3 + 1);
    }
  }

  return v2;
}

void sub_298C2AB34(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = sub_298B90848(a1, (a1 + 16), a2, 16, &v6);
  sub_298C2ABB0(*a1, *(a1 + 8), v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t *sub_298C2ABB0(uint64_t *result, unsigned int a2, _OWORD *a3)
{
  if (a2)
  {
    v3 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v4 = &result[2 * a2];
    if (v3 < 0xB || ((v11 = 16 * a2 - 8, v12 = a3 + v11, v13 = result + v11, result + 1 < &a3[a2]) ? (v14 = (a3 + 8) >= v4) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v12 > result ? (v16 = v13 > a3) : (v16 = 0), v16 || (v15 & 1) != 0))
    {
      v5 = a3;
      v6 = result;
    }

    else
    {
      v17 = v3 + 1;
      v18 = (v3 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v5 = &a3[v18];
      v6 = &result[2 * v18];
      v19 = v18;
      v20 = result;
      do
      {
        v21 = *v20;
        v22 = *(v20 + 16);
        *(v20 + 8) = 0;
        *(v20 + 24) = 0;
        *a3 = v21;
        a3[1] = v22;
        a3 += 2;
        v20 += 32;
        v19 -= 2;
      }

      while (v19);
      if (v17 == v18)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6[1] = 0;
      *v5 = v7;
      *(v5++ + 1) = v8;
      v6 += 2;
    }

    while (v6 != &result[2 * a2]);
LABEL_5:
    v9 = v4 - 1;
    v10 = -16 * a2;
    do
    {
      result = sub_298C2ACA8(v9, 0);
      v9 -= 2;
      v10 += 16;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_298C2ACA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298C2ACF4(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298C2ACF4(uint64_t a1)
{
  sub_298AE841C((a1 + 88));
  v3 = (a1 + 64);
  sub_298C2AD58(&v3);
  sub_298AE9B00(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_298C2AD58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298C168CC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t **sub_298C2ADAC(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v3[2] = v9;
      v9[*v9 != a2] = v3;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_61:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v19[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v19[2] = v27;
        v27[*v27 != v7] = v19;
        v19[1] = v7;
        v7[2] = v19;
        v20 = v7;
      }

      v28 = v19[2];
      *(v19 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v20 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      *(v28 + 16) = v29;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v15[2] = v22;
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_70;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_55:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_70:
    v25 = v7;
    goto LABEL_71;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v25;
  v7[1] = *v25;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v25[2] = v33;
  v33[*v33 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_71:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  *(v35 + 16) = v37;
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v34 + 16) = v35;
  return result;
}

uint64_t *sub_298C2B19C(uint64_t a1, uint64_t **a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 8);
  if (*(a1 + 16))
  {
    v5 = (a1 + 8);
  }

  else
  {
    v5 = (a2 + 7);
  }

  v6 = *(a1 + 64);
  v7 = v6 == 5 || v6 == 3;
  if (v7)
  {
    v5 = (a2 + 7);
  }

  sub_298C26D24(src, (a1 + 17), 0, *(a1 + 56), v6, *v5);
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, src);
  v8 = a2[5];
  v9 = (a2 + 4);
  v23 = v26;
  *v24 = v27;
  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = a2 + 5;
  do
  {
    v11 = sub_298C2886C((v8 + 4), dst);
    v12 = v11;
    if (!v11)
    {
      v10 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v10 == a2 + 5 || (result = sub_298C2886C(dst, (v10 + 4)), (result & 1) != 0))
  {
LABEL_22:
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, src);
    v23 = v26;
    *v24 = v27;
    result = sub_298C288D8(a2 + 4, dst, dst, src);
    v10 = result;
    if (*(a1 + 16))
    {
      return result;
    }
  }

  else if (*(a1 + 16))
  {
    return result;
  }

  v14 = *(v10 + 88);
  v23 = v10[10];
  v24[0] = v14;
  *&v24[1] = *(v10 + 89);
  uuid_copy(dst, v10 + 64);
  *&v24[9] = *v4;
  v15 = v10[1];
  if (v15)
  {
    do
    {
      v17 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v16 = v10;
    do
    {
      v17 = v16[2];
      v7 = *v17 == v16;
      v16 = v17;
    }

    while (!v7);
  }

  if (*v9 == v10)
  {
    *v9 = v17;
  }

  v18 = a2[5];
  a2[6] = (a2[6] - 1);
  sub_298C2ADAC(v18, v10);
  operator delete(v10);
  v19 = 0uLL;
  uuid_copy(&v19, dst);
  v20 = v23;
  v21 = *&v24[9];
  return sub_298C288D8(a2 + 4, &v19, &v19, dst);
}

const unsigned __int8 *sub_298C2B3C8(void *a1, unsigned __int8 *uu2, _OWORD *a3)
{
  v3 = *(uu2 + 1) ^ *uu2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_15;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v4 - 1) & v3;
    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v7 = *(uu2 + 1) ^ *uu2;
  if (v3 >= *&v4)
  {
    v7 = v3 % *&v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_15;
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = *(v9 + 1);
      if (v12 == v3)
      {
        if (!uuid_compare(v9 + 16, uu2))
        {
          return v9;
        }
      }

      else if ((v12 & (*&v4 - 1)) != v7)
      {
        goto LABEL_15;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == v3)
    {
      break;
    }

    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }

    if (v10 != v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (uuid_compare(v9 + 16, uu2))
  {
    goto LABEL_10;
  }

  return v9;
}

uint64_t sub_298C2B6DC(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v4 &= *&v3 - 1;
  }

  else if (v4 >= *&v3)
  {
    v4 %= *&v3;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 != a2 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] <= 1uLL)
    {
      if ((v8 & (*&v3 - 1)) == v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }

      if (v8 == v4)
      {
        goto LABEL_17;
      }
    }
  }

  if (!*a3)
  {
LABEL_16:
    *(*a2 + 8 * v4) = 0;
    goto LABEL_17;
  }

  v9 = *(*a3 + 8);
  if (v5.u32[0] <= 1uLL)
  {
    if ((v9 & (*&v3 - 1)) == v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 >= *&v3)
  {
    v9 %= *&v3;
  }

  if (v9 != v4)
  {
    goto LABEL_16;
  }

LABEL_17:
  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] <= 1uLL)
    {
      v11 &= *&v3 - 1;
      if (v11 == v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (v11 >= *&v3)
    {
      v11 %= *&v3;
    }

    if (v11 != v4)
    {
LABEL_22:
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

LABEL_23:
  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t sub_298C2B8A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F460;
  a2[1] = v2;
  return result;
}

void sub_298C2B8CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *a3;
    v7 = 8 * v3;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v6;
      v11 = sub_298BD630C(v8, v4, v5);
      v12 = v11;
      v13 = *(v11 + 568);
      v14 = *(v11 + 576);
      if (v13 < v14)
      {
        *v13 = v10;
        v9 = v13 + 8;
      }

      else
      {
        v15 = v11 + 560;
        v16 = v12[70];
        v17 = v13 - v16;
        v18 = (v13 - v16) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          sub_298ADDDA0();
        }

        v20 = v14 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_298B7F4FC(v15, v21);
        }

        v22 = v18;
        v23 = (8 * v18);
        v24 = &v23[-v22];
        *v23 = v10;
        v9 = v23 + 1;
        memcpy(v24, v16, v17);
        v25 = v12[70];
        v12[70] = v24;
        v12[71] = v9;
        v12[72] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      v12[71] = v9;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

uint64_t sub_298C2B9FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_298C2BA88(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_4;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_4:
  *a4 = v6;
  return v8;
}

void *sub_298C2BB18(uint64_t *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298C2BBD8(a1, v5);
  sub_298C2BA88(*v8, *(v8 + 4), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 2);
  a3 = v9;
LABEL_3:
  *(a1 + 2) = v4 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 3);
  }

  return a3;
}

void *sub_298C2BBD8(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = (37 * v24) & v16;
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 2) = ++v15;
        }

        v17 += 2;
      }

      while (v17 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v18 = *(a1 + 4);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *sub_298C2BDD4(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = sub_298C2BA88(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = sub_298C2BB18(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

uint64_t sub_298C2BE40(uint64_t *a1)
{
  v193 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  if (*(v3 + 95) < 0)
  {
    sub_298AFE11C(&v182, *(v3 + 72), *(v3 + 80));
  }

  else
  {
    v182 = *(v3 + 72);
  }

  LOWORD(v186) = 6;
  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v182;
  }

  else
  {
    v4 = v182.__r_.__value_.__r.__words[0];
  }

  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v182.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v182.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v4, size, 0))
  {
    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v171 = &v182;
    }

    else
    {
      v171 = v182.__r_.__value_.__r.__words[0];
    }

    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v172 = SHIBYTE(v182.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v172 = v182.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v171, v172, &v185);
    if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v182.__r_.__value_.__l.__data_);
    }

    v182 = v185;
  }

  __p = *&v182.__r_.__value_.__l.__data_;
  *v188 = *(&v182.__r_.__value_.__l + 2);
  memset(&v182, 0, sizeof(v182));
  sub_298B89CC0(v2, "Name", 4uLL);
  sub_298B891F0(v2, &v186);
  --*(v2 + 8);
  if (v186 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v186 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v6 = *a1;
  sub_298B89CC0(*a1, "RawTraceIDs", 0xBuLL);
  sub_298B89A80(v6);
  v7 = *(v3 + 96);
  for (i = *(v3 + 104); v7 != i; v7 += 8)
  {
    v9 = *(*v7 + 4);
    LOWORD(v186) = 3;
    *&__p = v9;
    sub_298B891F0(v6, &v186);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  sub_298B89B0C(v6);
  --*(v6 + 8);
  if (*(v3 + 296) == 1)
  {
    v10 = *a1;
    sub_298B89CC0(*a1, "DecodedTrace", 0xCuLL);
    sub_298B89BA0(v10);
    sub_298C3BEA0(&v186);
    sub_298C3C758(&v186, &__dst);
    if (v191 == 1 && v190 < 0)
    {
      operator delete(v189);
    }

    sub_298BCE714(&v188[8], *&v188[16]);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v186);
    }

    LOWORD(v186) = 6;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __dst.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(p_dst, v12, 0))
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v173 = &__dst;
      }

      else
      {
        v173 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v174 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v174 = __dst.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v173, v174, &v185);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = v185;
    }

    __p = *&__dst.__r_.__value_.__l.__data_;
    *v188 = *(&__dst.__r_.__value_.__l + 2);
    memset(&__dst, 0, sizeof(__dst));
    sub_298B89CC0(v10, "VersionInfo", 0xBuLL);
    sub_298B891F0(v10, &v186);
    --*(v10 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v186 = (v3 + 120);
    *&__p = v10;
    sub_298B89CC0(v10, "Clusters", 8uLL);
    sub_298B89BA0(v10);
    sub_298C329EC(&v186);
    sub_298B89C2C(v10);
    --*(v10 + 8);
    sub_298B89CC0(v10, "CallstackModifiers", 0x12uLL);
    sub_298B89BA0(v10);
    sub_298C24D64(&v186, *(v3 + 208), *(v3 + 216));
    sub_298B89CC0(v10, "SharedContextsSymStarts", 0x17uLL);
    sub_298B891F0(v10, &v186);
    --*(v10 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89CC0(v10, "UniqueContextsSymStarts", 0x17uLL);
    sub_298B89BA0(v10);
    v13 = *(v3 + 232);
    if (v13 != (v3 + 240))
    {
      do
      {
        std::to_string(&v185, v13[4]);
        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v185;
        }

        else
        {
          v14 = v185.__r_.__value_.__r.__words[0];
        }

        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = SHIBYTE(v185.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = v185.__r_.__value_.__l.__size_;
        }

        sub_298C24D64(&v186, v13[5], v13[6]);
        sub_298B89CC0(v10, v14, v15);
        sub_298B891F0(v10, &v186);
        --*(v10 + 8);
        if (v186 == 8)
        {
          sub_298B8A314(&__p);
        }

        else if (v186 == 7)
        {
          sub_298B8A370(&__p);
        }

        else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
          v16 = v13[1];
          if (v16)
          {
            do
            {
LABEL_79:
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
            goto LABEL_76;
          }
        }

        else
        {
          v16 = v13[1];
          if (v16)
          {
            goto LABEL_79;
          }
        }

        do
        {
          v17 = v13[2];
          v119 = *v17 == v13;
          v13 = v17;
        }

        while (!v119);
LABEL_76:
        v13 = v17;
      }

      while (v17 != (v3 + 240));
    }

    sub_298B89C2C(v10);
    --*(v10 + 8);
    sub_298B89C2C(v10);
    --*(v10 + 8);
    v18 = *(v3 + 256);
    LOWORD(v186) = 3;
    *&__p = v18;
    sub_298B89CC0(v10, "NumGaps", 7uLL);
    sub_298B891F0(v10, &v186);
    --*(v10 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    v19 = *(v3 + 264);
    LOWORD(v186) = 3;
    *&__p = v19;
    sub_298B89CC0(v10, "NumExcessGaps", 0xDuLL);
    sub_298B891F0(v10, &v186);
    --*(v10 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89C2C(v10);
    --*(v10 + 8);
  }

  v20 = *a1;
  sub_298B89CC0(*a1, "SystemRegisters", 0xFuLL);
  sub_298B89BA0(v20);
  v21 = *(v3 + 304);
  if (v21 != (v3 + 312))
  {
    do
    {
      v22 = *(v21 + 55);
      if (v22 >= 0)
      {
        v23 = (v21 + 4);
      }

      else
      {
        v23 = v21[4];
      }

      if (v22 >= 0)
      {
        v24 = *(v21 + 55);
      }

      else
      {
        v24 = v21[5];
      }

      sub_298ADC8F4(&__dst, v21[7]);
      LOWORD(v186) = 6;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__dst;
      }

      else
      {
        v25 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __dst.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v25, v26, 0))
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__dst;
        }

        else
        {
          v29 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = __dst.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v29, v30, &v185);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v185;
      }

      __p = *&__dst.__r_.__value_.__l.__data_;
      *v188 = *(&__dst.__r_.__value_.__l + 2);
      memset(&__dst, 0, sizeof(__dst));
      sub_298B89CC0(v20, v23, v24);
      sub_298B891F0(v20, &v186);
      --*(v20 + 8);
      if (v186 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v186 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v27 = v21[1];
        if (v27)
        {
          do
          {
LABEL_133:
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
          goto LABEL_121;
        }
      }

      else
      {
        v27 = v21[1];
        if (v27)
        {
          goto LABEL_133;
        }
      }

      do
      {
        v28 = v21[2];
        v119 = *v28 == v21;
        v21 = v28;
      }

      while (!v119);
LABEL_121:
      v21 = v28;
    }

    while (v28 != (v3 + 312));
  }

  sub_298B89C2C(v20);
  --*(v20 + 8);
  v31 = *a1;
  sub_298B89CC0(*a1, "StaticIfOffsets", 0xFuLL);
  sub_298B89A80(v31);
  v32 = *(v3 + 328);
  for (j = *(v3 + 336); v32 != j; ++v32)
  {
    while (1)
    {
      sub_298ADC8F4(&__dst, *v32);
      LOWORD(v186) = 6;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __dst.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v34, v35, 0))
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &__dst;
        }

        else
        {
          v36 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v37 = __dst.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v36, v37, &v185);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v185;
      }

      __p = *&__dst.__r_.__value_.__l.__data_;
      *v188 = *(&__dst.__r_.__value_.__l + 2);
      memset(&__dst, 0, sizeof(__dst));
      sub_298B891F0(v31, &v186);
      if (v186 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v186 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (++v32 == j)
      {
        goto LABEL_163;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_163:
  sub_298B89B0C(v31);
  --*(v31 + 8);
  v38 = *a1;
  v39 = *(v3 + 352);
  LOWORD(v186) = 1;
  LOBYTE(__p) = v39;
  sub_298B89CC0(v38, "KernelcacheStubOptimization", 0x1BuLL);
  sub_298B891F0(v38, &v186);
  --*(v38 + 8);
  if (v186 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v186 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  sub_298BFBB50(v3 + 360, *a1);
  v177 = a1;
  v40 = *a1;
  sub_298B89CC0(*a1, "Images", 6uLL);
  sub_298B89BA0(v40);
  v179 = v3;
  v41 = *(v3 + 408);
  if (v41)
  {
    v42 = 0;
    p_data = 0;
    do
    {
      v186 = v41 + 2;
      __p = 0uLL;
      sub_298B1FB90(&v186, &v185);
      v44 = p_data - v42;
      v45 = 0xAAAAAAAAAAAAAAABLL * ((p_data - v42) >> 3);
      v46 = v45 + 1;
      if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_298ADDDA0();
      }

      if (0x5555555555555556 * (-v42 >> 3) > v46)
      {
        v46 = 0x5555555555555556 * (-v42 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v42 >> 3) >= 0x555555555555555)
      {
        v47 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v47 = v46;
      }

      if (v47)
      {
        if (v47 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v48 = (24 * v45);
      *v48 = v185;
      memset(&v185, 0, sizeof(v185));
      memcpy(v48 - v44, v42, v44);
      if (v42)
      {
        operator delete(v42);
        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }
      }

      v42 = v48 - v44;
      p_data = &v48[1].__r_.__value_.__l.__data_;
      v41 = *v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0;
    p_data = 0;
  }

  v49 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((p_data - v42) >> 3));
  if (p_data == v42)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  sub_298C2DF78(v42, p_data, v50, 1);
  if (p_data == v42)
  {
    v68 = a1;
    if (v42)
    {
      goto LABEL_259;
    }

    goto LABEL_260;
  }

  v51 = v42;
  do
  {
LABEL_192:
    v52 = *(v51 + 23);
    if (v52 >= 0)
    {
      v53 = v51;
    }

    else
    {
      v53 = *v51;
    }

    if (v52 >= 0)
    {
      v54 = *(v51 + 23);
    }

    else
    {
      v54 = *(v51 + 8);
    }

    v185.__r_.__value_.__r.__words[0] = 0;
    v185.__r_.__value_.__l.__size_ = v53;
    v185.__r_.__value_.__r.__words[2] = v54;
    sub_298C26CD8(&uu2, &v185);
    v55 = *(v3 + 400);
    if (!*&v55 || ((v56 = uu2.__r_.__value_.__l.__size_ ^ uu2.__r_.__value_.__r.__words[0], v57 = vcnt_s8(v55), v57.i16[0] = vaddlv_u8(v57), v57.u32[0] <= 1uLL) ? (v58 = (*&v55 - 1) & v56) : v56 < *&v55 ? (v58 = uu2.__r_.__value_.__l.__size_ ^ uu2.__r_.__value_.__r.__words[0]) : (v58 = v56 % *&v55), (v59 = *(*(v179 + 392) + 8 * v58)) == 0 || (v60 = *v59) == 0))
    {
LABEL_560:
      abort();
    }

    if (v57.u32[0] >= 2uLL)
    {
      while (1)
      {
        v61 = v60[1];
        if (v56 == v61)
        {
          if (!uuid_compare(v60 + 16, &uu2))
          {
            goto LABEL_221;
          }
        }

        else
        {
          if (v61 >= *&v55)
          {
            v61 %= *&v55;
          }

          if (v61 != v58)
          {
            goto LABEL_560;
          }
        }

        v60 = *v60;
        if (!v60)
        {
          goto LABEL_560;
        }
      }
    }

    v62 = *&v55 - 1;
    while (1)
    {
      v63 = v60[1];
      if (v56 == v63)
      {
        break;
      }

      if ((v63 & v62) != v58)
      {
        goto LABEL_560;
      }

LABEL_217:
      v60 = *v60;
      if (!v60)
      {
        goto LABEL_560;
      }
    }

    if (uuid_compare(v60 + 16, &uu2))
    {
      goto LABEL_217;
    }

LABEL_221:
    v3 = v179;
    if (*(v60 + 55) < 0)
    {
      sub_298AFE11C(&__dst, v60[4], v60[5]);
    }

    else
    {
      __dst = *(v60 + 4);
    }

    LOWORD(v186) = 6;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &__dst;
    }

    else
    {
      v64 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = __dst.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v64, v65, 0))
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &__dst;
      }

      else
      {
        v66 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = __dst.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v66, v67, &v185);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = v185;
    }

    __p = *&__dst.__r_.__value_.__l.__data_;
    *v188 = *(&__dst.__r_.__value_.__l + 2);
    memset(&__dst, 0, sizeof(__dst));
    sub_298B89CC0(v40, v53, v54);
    sub_298B891F0(v40, &v186);
    --*(v40 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      v51 += 24;
      if (v51 == p_data)
      {
        break;
      }

      goto LABEL_192;
    }

    v51 += 24;
  }

  while (v51 != p_data);
  v68 = v177;
  if (v42)
  {
    do
    {
      while (1)
      {
        v69 = *(p_data - 1);
        p_data -= 3;
        if (v69 < 0)
        {
          break;
        }

        if (p_data == v42)
        {
          goto LABEL_259;
        }
      }

      operator delete(*p_data);
    }

    while (p_data != v42);
LABEL_259:
    operator delete(v42);
  }

LABEL_260:
  sub_298B89C2C(v40);
  --*(v40 + 8);
  v70 = *v68;
  sub_298B89CC0(*v68, "SharedContexts", 0xEuLL);
  sub_298B89A80(v70);
  v71 = *(v3 + 432);
  v72 = *(v3 + 440);
  if (v71 != v72)
  {
    while (2)
    {
      v73 = *v71;
      sub_298B89BA0(v70);
      v74 = *v73 - 1;
      if (v74 > 9)
      {
        v75 = 18;
        v76 = "unknown image type";
      }

      else
      {
        v75 = qword_298D1B808[v74];
        v76 = off_29EEB6448[v74];
      }

      sub_298BBB6E0(&v186, v76, v75);
      sub_298B89CC0(v70, "Type", 4uLL);
      sub_298B891F0(v70, &v186);
      --*(v70 + 8);
      if (v186 == 8)
      {
        sub_298B8A314(&__p);
        sub_298BF397C(v73 + 4, v70);
        if (*(v73 + 56) == 1)
        {
          goto LABEL_275;
        }

        goto LABEL_292;
      }

      if (v186 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
      {
        operator delete(__p);
        sub_298BF397C(v73 + 4, v70);
        if (*(v73 + 56) != 1)
        {
          goto LABEL_292;
        }

LABEL_275:
        sub_298ADC8F4(&__dst, *(v73 + 48));
        LOWORD(v186) = 6;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &__dst;
        }

        else
        {
          v77 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v78 = __dst.__r_.__value_.__l.__size_;
        }

        if (!sub_298B88E98(v77, v78, 0))
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = &__dst;
          }

          else
          {
            v87 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v88 = __dst.__r_.__value_.__l.__size_;
          }

          sub_298B88F28(v87, v88, &v185);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v185;
        }

        __p = *&__dst.__r_.__value_.__l.__data_;
        *v188 = *(&__dst.__r_.__value_.__l + 2);
        memset(&__dst, 0, sizeof(__dst));
        sub_298B89CC0(v70, "EndAddr", 7uLL);
        sub_298B891F0(v70, &v186);
        --*(v70 + 8);
        if (v186 == 8)
        {
          sub_298B8A314(&__p);
        }

        else if (v186 == 7)
        {
          sub_298B8A370(&__p);
        }

        else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          v79 = *(v73 + 64);
          if (v79)
          {
            goto LABEL_293;
          }
        }

        else
        {
LABEL_292:
          v79 = *(v73 + 64);
          if (v79)
          {
LABEL_293:
            v82 = *(v79 + 16);
            v80 = v79 + 16;
            v81 = v82;
            v83 = *(v80 + 23);
            if (v83 >= 0)
            {
              v84 = v80;
            }

            else
            {
              v84 = v81;
            }

            v85 = *(v80 + 8);
            if (v83 >= 0)
            {
              v86 = v83;
            }

            else
            {
              v86 = v85;
            }

            sub_298BBB6E0(&v186, v84, v86);
            sub_298B89CC0(v70, "Segment", 7uLL);
            sub_298B891F0(v70, &v186);
            --*(v70 + 8);
            if (v186 == 8)
            {
              sub_298B8A314(&__p);
            }

            else if (v186 == 7)
            {
              sub_298B8A370(&__p);
            }

            else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
            {
              operator delete(__p);
            }
          }
        }

        sub_298B89C2C(v70);
        if (++v71 == v72)
        {
          goto LABEL_316;
        }

        continue;
      }

      break;
    }

    sub_298BF397C(v73 + 4, v70);
    if (*(v73 + 56) != 1)
    {
      goto LABEL_292;
    }

    goto LABEL_275;
  }

LABEL_316:
  sub_298B89B0C(v70);
  --*(v70 + 8);
  v89 = *v177;
  sub_298B89CC0(*v177, "UniqueContexts", 0xEuLL);
  sub_298B89A80(v89);
  v90 = *(v3 + 504);
  if (v90)
  {
    v91 = *(v3 + 496);
    v175 = v91 + 16 * v90;
LABEL_319:
    v92 = *(v91 + 8);
    sub_298B89BA0(v89);
    if (*(v92 + 23) < 0)
    {
      sub_298AFE11C(&v183, *v92, *(v92 + 1));
    }

    else
    {
      v167 = *v92;
      v183.__r_.__value_.__r.__words[2] = *(v92 + 2);
      *&v183.__r_.__value_.__l.__data_ = v167;
    }

    LOWORD(v186) = 6;
    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v183;
    }

    else
    {
      v93 = v183.__r_.__value_.__r.__words[0];
    }

    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = v183.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v93, v94, 0))
    {
      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v168 = &v183;
      }

      else
      {
        v168 = v183.__r_.__value_.__r.__words[0];
      }

      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v169 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v169 = v183.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v168, v169, &v185);
      if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v183.__r_.__value_.__l.__data_);
      }

      v183 = v185;
    }

    __p = *&v183.__r_.__value_.__l.__data_;
    *v188 = *(&v183.__r_.__value_.__l + 2);
    memset(&v183, 0, sizeof(v183));
    sub_298B89CC0(v89, "Name", 4uLL);
    sub_298B891F0(v89, &v186);
    --*(v89 + 8);
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v183.__r_.__value_.__l.__data_);
    }

    v95 = *(v92 + 3);
    LOWORD(v186) = 4;
    *&__p = v95;
    sub_298B89CC0(v89, "PID", 3uLL);
    sub_298B891F0(v89, &v186);
    --*(v89 + 8);
    v178 = v91;
    if (v186 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v186 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v186 == 6 && (v188[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89CC0(v89, "ImageLoadInfo", 0xDuLL);
    sub_298B89A80(v89);
    v96 = *(v92 + 4);
    v176 = v92;
    v180 = v92 + 5;
    if (v96 == (v92 + 40))
    {
      goto LABEL_412;
    }

    while (1)
    {
      v116 = *(v96 + 88);
      *(&__p + 1) = v96[10];
      v188[0] = v116;
      *&v188[1] = *(v96 + 89);
      uuid_copy(&v186, v96 + 64);
      sub_298B894A0(v89);
      sub_298AEF5BC(v89);
      *(*v89 + 8 * *(v89 + 8) - 8) = 2;
      *(v89 + 172) += *(v89 + 168);
      v117 = *(v89 + 160);
      v107 = *(v117 + 32);
      if (v107 >= *(v117 + 24))
      {
        while (1)
        {
          v106 = *(v117 + 16);
          if (v106)
          {
            *(v117 + 32) = v106;
            sub_298B9BB84(v117);
            v107 = *(v117 + 32);
            goto LABEL_401;
          }

          if (!*(v117 + 56))
          {
            break;
          }

          sub_298B9AE98(v117);
          v107 = *(v117 + 32);
          if (v107 < *(v117 + 24))
          {
            goto LABEL_401;
          }
        }

        v185.__r_.__value_.__s.__data_[0] = 123;
        sub_298B9BB84(v117);
      }

      else
      {
LABEL_401:
        *(v117 + 32) = v107 + 1;
        *v107 = 123;
      }

      sub_298BF397C(&v186, v89);
      v118 = *(v89 + 168);
      *(v89 + 172) -= v118;
      v119 = *(*v89 + 8 * *(v89 + 8) - 4) != 1 || v118 == 0;
      if (!v119)
      {
        break;
      }

LABEL_407:
      v101 = *(v89 + 160);
      v102 = *(v101 + 32);
      if (v102 >= *(v101 + 24))
      {
        while (1)
        {
LABEL_349:
          v103 = *(v101 + 16);
          if (v103)
          {
            *(v101 + 32) = v103;
            sub_298B9BB84(v101);
            v102 = *(v101 + 32);
            goto LABEL_408;
          }

          if (!*(v101 + 56))
          {
            break;
          }

          sub_298B9AE98(v101);
          v102 = *(v101 + 32);
          if (v102 < *(v101 + 24))
          {
            goto LABEL_408;
          }
        }

        v185.__r_.__value_.__s.__data_[0] = 125;
        sub_298B9BB84(v101);
        --*(v89 + 8);
        v104 = v96[1];
        if (!v104)
        {
          goto LABEL_409;
        }

        goto LABEL_355;
      }

LABEL_408:
      *(v101 + 32) = v102 + 1;
      *v102 = 125;
      --*(v89 + 8);
      v104 = v96[1];
      if (!v104)
      {
        do
        {
LABEL_409:
          v105 = v96[2];
          v119 = *v105 == v96;
          v96 = v105;
        }

        while (!v119);
        goto LABEL_411;
      }

      do
      {
LABEL_355:
        v105 = v104;
        v104 = *v104;
      }

      while (v104);
LABEL_411:
      v96 = v105;
      if (v105 == v180)
      {
LABEL_412:
        sub_298B89B0C(v89);
        --*(v89 + 8);
        sub_298B89CC0(v89, "Threads", 7uLL);
        sub_298B89A80(v89);
        v120 = *(v176 + 30);
        if (!v120)
        {
          goto LABEL_318;
        }

        v121 = *(v176 + 14);
        v122 = &v121[v120];
        v181 = v122;
        do
        {
LABEL_414:
          v123 = *v121;
          sub_298B894A0(v89);
          sub_298AEF5BC(v89);
          *(*v89 + 8 * *(v89 + 8) - 8) = 2;
          *(v89 + 172) += *(v89 + 168);
          v124 = *(v89 + 160);
          v125 = *(v124 + 32);
          if (v125 >= *(v124 + 24))
          {
            while (1)
            {
              v130 = *(v124 + 16);
              if (v130)
              {
                *(v124 + 32) = v130;
                sub_298B9BB84(v124);
                v125 = *(v124 + 32);
                goto LABEL_415;
              }

              if (!*(v124 + 56))
              {
                break;
              }

              sub_298B9AE98(v124);
              v125 = *(v124 + 32);
              if (v125 < *(v124 + 24))
              {
                goto LABEL_415;
              }
            }

            LOBYTE(v186) = 123;
            sub_298B9BB84(v124);
            *(&v185.__r_.__value_.__s + 23) = 2;
            strcpy(&v185, "0x");
            if (!v123)
            {
LABEL_427:
              uu2.__r_.__value_.__s.__data_[16] = 48;
              v128 = 16;
              v129 = 1;
              goto LABEL_419;
            }
          }

          else
          {
LABEL_415:
            *(v124 + 32) = v125 + 1;
            *v125 = 123;
            *(&v185.__r_.__value_.__s + 23) = 2;
            strcpy(&v185, "0x");
            if (!v123)
            {
              goto LABEL_427;
            }
          }

          v126 = 16;
          do
          {
            uu2.__r_.__value_.__s.__data_[v126--] = a0123456789abcd_1[v123 & 0xF] | 0x20;
            v127 = v123 >= 0x10;
            v123 >>= 4;
          }

          while (v127);
          v128 = v126 + 1;
          v129 = 16 - v126;
          if ((16 - v126) > 0x16)
          {
            operator new();
          }

LABEL_419:
          *(&__dst.__r_.__value_.__s + 23) = v129;
          if (v128 != 17)
          {
            memcpy(&__dst, &uu2 + v128, v129);
          }

          __dst.__r_.__value_.__s.__data_[v129] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v131 = &__dst;
          }

          else
          {
            v131 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v132 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v132 = __dst.__r_.__value_.__l.__size_;
          }

          v133 = std::string::append(&v185, v131, v132);
          v134 = v133->__r_.__value_.__r.__words[2];
          *&uu2.__r_.__value_.__l.__data_ = *&v133->__r_.__value_.__l.__data_;
          uu2.__r_.__value_.__r.__words[2] = v134;
          v133->__r_.__value_.__l.__size_ = 0;
          v133->__r_.__value_.__r.__words[2] = 0;
          v133->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
            if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_505:
              operator delete(v185.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_505;
          }

          LOWORD(v186) = 6;
          if ((uu2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_uu2 = &uu2;
          }

          else
          {
            p_uu2 = uu2.__r_.__value_.__r.__words[0];
          }

          if ((uu2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v136 = SHIBYTE(uu2.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v136 = uu2.__r_.__value_.__l.__size_;
          }

          if (!v136)
          {
            goto LABEL_448;
          }

          v137 = 0;
          v138 = p_uu2 + v136;
          while ((p_uu2->__r_.__value_.__s.__data_[v137] & 0x80000000) == 0)
          {
            if (v136 == ++v137)
            {
              goto LABEL_448;
            }
          }

          v148 = p_uu2;
          while (1)
          {
            v149 = v148;
            v150 = v148->__r_.__value_.__s.__data_[0];
            v151 = byte_298D1AA47[v148->__r_.__value_.__s.__data_[0]];
            if (v138 - v148 <= v151)
            {
              break;
            }

            v152 = v151 + 1;
            v148 = (v148 + v151 + 1);
            if (v151 > 1u)
            {
              if (v151 != 2)
              {
                if (v151 != 3 || v149->__r_.__value_.__s.__data_[v151] > -65)
                {
                  break;
                }

                v152 = 3;
              }

              v154 = v149 + v152;
              v155 = *(v154 - 1);
              v153 = v154 - 1;
              if (v155 > -65)
              {
                break;
              }
            }

            else
            {
              if (!v151)
              {
                goto LABEL_497;
              }

              v153 = &v149->__r_.__value_.__s.__data_[v151 + 1];
              if (v151 != 1)
              {
                break;
              }
            }

            v156 = *(v153 - 1);
            if (v156 > -65)
            {
              break;
            }

            if (v150 > 239)
            {
              if (v150 == 240)
              {
                if (v156 < 0x90u)
                {
                  break;
                }

                goto LABEL_476;
              }

              if (v150 == 244)
              {
                if (v156 > 0x8Fu)
                {
                  break;
                }

                goto LABEL_476;
              }
            }

            else
            {
              if (v150 == 224)
              {
                if (v156 < 0xA0u)
                {
                  break;
                }

                goto LABEL_476;
              }

              if (v150 == 237)
              {
                if (v156 > 0x9Fu)
                {
                  break;
                }

                goto LABEL_476;
              }
            }

LABEL_497:
            if (v150 < -62 || v150 > 0xF4)
            {
              break;
            }

LABEL_476:
            if (v148 == v138)
            {
              goto LABEL_448;
            }
          }

          sub_298B88F28(p_uu2, v136, &v185);
          if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(uu2.__r_.__value_.__l.__data_);
          }

          uu2 = v185;
LABEL_448:
          __p = *&uu2.__r_.__value_.__l.__data_;
          *v188 = *(&uu2.__r_.__value_.__l + 2);
          memset(&uu2, 0, sizeof(uu2));
          sub_298B89CC0(v89, "TID", 3uLL);
          sub_298B891F0(v89, &v186);
          --*(v89 + 8);
          if (v186 == 8)
          {
            sub_298B8A314(&__p);
            if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_465;
            }

            goto LABEL_456;
          }

          if (v186 == 7)
          {
            sub_298B8A370(&__p);
LABEL_455:
            if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_465;
            }

            goto LABEL_456;
          }

          if (v186 != 6 || (v188[7] & 0x80000000) == 0)
          {
            goto LABEL_455;
          }

          operator delete(__p);
          if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_465:
            operator delete(uu2.__r_.__value_.__l.__data_);
          }

LABEL_456:
          v139 = *(v89 + 168);
          *(v89 + 172) -= v139;
          if (*(*v89 + 8 * *(v89 + 8) - 4) != 1 || v139 == 0)
          {
LABEL_461:
            v141 = *(v89 + 160);
            v142 = *(v141 + 32);
            if (v142 >= *(v141 + 24))
            {
              goto LABEL_469;
            }

LABEL_462:
            *(v141 + 32) = v142 + 1;
            *v142 = 125;
            --*(v89 + 8);
            if (++v121 == v122)
            {
              break;
            }

            goto LABEL_414;
          }

          v143 = *(v89 + 160);
          v144 = *(v143 + 32);
          if (v144 < *(v143 + 24))
          {
LABEL_467:
            *(v143 + 32) = v144 + 1;
            *v144 = 10;
            v145 = *(v89 + 160);
            v146 = *(v89 + 172);
            if (v146 >= 0x50)
            {
              goto LABEL_516;
            }

            goto LABEL_468;
          }

          v157 = *(v143 + 16);
          if (v157)
          {
LABEL_507:
            *(v143 + 32) = v157;
            sub_298B9BB84(v143);
            v144 = *(v143 + 32);
            goto LABEL_467;
          }

          while (*(v143 + 56))
          {
            sub_298B9AE98(v143);
            v144 = *(v143 + 32);
            if (v144 < *(v143 + 24))
            {
              v122 = v181;
              goto LABEL_467;
            }

            v157 = *(v143 + 16);
            v122 = v181;
            if (v157)
            {
              goto LABEL_507;
            }
          }

          LOBYTE(v186) = 10;
          sub_298B9BB84(v143);
          v122 = v181;
          v145 = *(v89 + 160);
          v146 = *(v89 + 172);
          if (v146 >= 0x50)
          {
LABEL_516:
            while (2)
            {
              if (v146 >= 0x4F)
              {
                v158 = 79;
              }

              else
              {
                v158 = v146;
              }

              v159 = *(v145 + 32);
              v160 = *(v145 + 24) - v159;
              if (v160 < v158)
              {
                v162 = v158;
                v161 = "                                                                                ";
                while (1)
                {
                  v163 = *(v145 + 16);
                  if (!v163)
                  {
                    break;
                  }

LABEL_537:
                  if (v159 == v163)
                  {
                    v160 *= v162 / v160;
                    v162 -= v160;
                    v164 = v161;
                    sub_298B9BB84(v145);
                    v159 = *(v145 + 32);
                    v165 = *(v145 + 24) - v159;
                    if (v162 <= v165)
                    {
                      sub_298B9BE18(v145, &v164[v160], v162);
                      v122 = v181;
                      goto LABEL_532;
                    }
                  }

                  else
                  {
                    v164 = v161;
                    sub_298B9BE18(v145, v161, v160);
                    *(v145 + 32) = *(v145 + 16);
                    sub_298B9BB84(v145);
                    v162 -= v160;
                    v159 = *(v145 + 32);
                    v165 = *(v145 + 24) - v159;
                  }

                  v161 = &v164[v160];
                  v160 = v165;
                  v122 = v181;
                  if (v165 >= v162)
                  {
                    goto LABEL_521;
                  }
                }

                while (1)
                {
                  if (!*(v145 + 56))
                  {
                    sub_298B9BB84(v145);
                    goto LABEL_532;
                  }

                  v166 = v161;
                  sub_298B9AE98(v145);
                  v159 = *(v145 + 32);
                  v160 = *(v145 + 24) - v159;
                  if (v160 >= v162)
                  {
                    break;
                  }

                  v163 = *(v145 + 16);
                  v161 = v166;
                  v122 = v181;
                  if (v163)
                  {
                    goto LABEL_537;
                  }
                }

                v161 = v166;
                v122 = v181;
              }

              else
              {
                v161 = "                                                                                ";
                v162 = v158;
              }

LABEL_521:
              if (v162 <= 1)
              {
                if (!v162)
                {
                  goto LABEL_531;
                }

                if (v162 == 1)
                {
                  goto LABEL_530;
                }
              }

              else
              {
                switch(v162)
                {
                  case 2uLL:
                    goto LABEL_527;
                  case 3uLL:
                    goto LABEL_526;
                  case 4uLL:
                    v159[3] = v161[3];
                    v159 = *(v145 + 32);
LABEL_526:
                    v159[2] = v161[2];
                    v159 = *(v145 + 32);
LABEL_527:
                    v159[1] = v161[1];
                    v159 = *(v145 + 32);
LABEL_530:
                    *v159 = *v161;
LABEL_531:
                    *(v145 + 32) += v162;
LABEL_532:
                    LODWORD(v146) = v146 - v158;
                    if (!v146)
                    {
                      goto LABEL_461;
                    }

                    continue;
                }
              }

              break;
            }

            memcpy(v159, v161, v162);
            goto LABEL_531;
          }

LABEL_468:
          sub_298B9BCEC(v145, "                                                                                ", v146);
          v141 = *(v89 + 160);
          v142 = *(v141 + 32);
          if (v142 < *(v141 + 24))
          {
            goto LABEL_462;
          }

          while (1)
          {
LABEL_469:
            v147 = *(v141 + 16);
            if (v147)
            {
              *(v141 + 32) = v147;
              sub_298B9BB84(v141);
              v142 = *(v141 + 32);
              goto LABEL_462;
            }

            if (!*(v141 + 56))
            {
              break;
            }

            sub_298B9AE98(v141);
            v142 = *(v141 + 32);
            if (v142 < *(v141 + 24))
            {
              goto LABEL_462;
            }
          }

          LOBYTE(v186) = 125;
          sub_298B9BB84(v141);
          --*(v89 + 8);
          ++v121;
        }

        while (v121 != v122);
LABEL_318:
        sub_298B89B0C(v89);
        --*(v89 + 8);
        sub_298B89C2C(v89);
        v91 = v178 + 16;
        if (v178 + 16 == v175)
        {
          goto LABEL_559;
        }

        goto LABEL_319;
      }
    }

    v97 = *(v89 + 160);
    v98 = *(v97 + 32);
    if (v98 >= *(v97 + 24))
    {
      while (1)
      {
        v108 = *(v97 + 16);
        if (v108)
        {
          break;
        }

        if (!*(v97 + 56))
        {
          v185.__r_.__value_.__s.__data_[0] = 10;
          sub_298B9BB84(v97);
          v99 = *(v89 + 160);
          v100 = *(v89 + 172);
          if (v100 < 0x50)
          {
LABEL_348:
            sub_298B9BCEC(v99, "                                                                                ", v100);
            v101 = *(v89 + 160);
            v102 = *(v101 + 32);
            if (v102 >= *(v101 + 24))
            {
              goto LABEL_349;
            }

            goto LABEL_408;
          }

LABEL_369:
          while (2)
          {
            if (v100 >= 0x4F)
            {
              v109 = 79;
            }

            else
            {
              v109 = v100;
            }

            v110 = *(v99 + 32);
            v111 = *(v99 + 24) - v110;
            if (v111 >= v109)
            {
              v112 = "                                                                                ";
              v113 = v109;
LABEL_374:
              if (v113 <= 1)
              {
                if (!v113)
                {
                  goto LABEL_384;
                }

                if (v113 == 1)
                {
                  goto LABEL_383;
                }
              }

              else
              {
                switch(v113)
                {
                  case 2uLL:
                    goto LABEL_380;
                  case 3uLL:
                    goto LABEL_379;
                  case 4uLL:
                    v110[3] = v112[3];
                    v110 = *(v99 + 32);
LABEL_379:
                    v110[2] = v112[2];
                    v110 = *(v99 + 32);
LABEL_380:
                    v110[1] = v112[1];
                    v110 = *(v99 + 32);
LABEL_383:
                    *v110 = *v112;
LABEL_384:
                    *(v99 + 32) += v113;
LABEL_385:
                    LODWORD(v100) = v100 - v109;
                    if (!v100)
                    {
                      goto LABEL_407;
                    }

                    continue;
                }
              }

              memcpy(v110, v112, v113);
              goto LABEL_384;
            }

            break;
          }

          v113 = v109;
          v112 = "                                                                                ";
          while (1)
          {
            while (1)
            {
              v114 = *(v99 + 16);
              if (!v114)
              {
                break;
              }

              if (v110 == v114)
              {
                v111 *= v113 / v111;
                v113 -= v111;
                sub_298B9BB84(v99);
                v110 = *(v99 + 32);
                v115 = *(v99 + 24) - v110;
                if (v113 <= v115)
                {
                  sub_298B9BE18(v99, &v112[v111], v113);
                  goto LABEL_385;
                }
              }

              else
              {
                sub_298B9BE18(v99, v112, v111);
                *(v99 + 32) = *(v99 + 16);
                sub_298B9BB84(v99);
                v113 -= v111;
                v110 = *(v99 + 32);
                v115 = *(v99 + 24) - v110;
              }

              v112 += v111;
              v111 = v115;
              if (v115 >= v113)
              {
                goto LABEL_374;
              }
            }

            if (!*(v99 + 56))
            {
              break;
            }

            sub_298B9AE98(v99);
            v110 = *(v99 + 32);
            v111 = *(v99 + 24) - v110;
            if (v111 >= v113)
            {
              goto LABEL_374;
            }
          }

          sub_298B9BB84(v99);
          goto LABEL_385;
        }

        sub_298B9AE98(v97);
        v98 = *(v97 + 32);
        if (v98 < *(v97 + 24))
        {
          goto LABEL_347;
        }
      }

      *(v97 + 32) = v108;
      sub_298B9BB84(v97);
      v98 = *(v97 + 32);
    }

LABEL_347:
    *(v97 + 32) = v98 + 1;
    *v98 = 10;
    v99 = *(v89 + 160);
    v100 = *(v89 + 172);
    if (v100 >= 0x50)
    {
      goto LABEL_369;
    }

    goto LABEL_348;
  }

LABEL_559:
  result = sub_298B89B0C(v89);
  --*(v89 + 8);
  return result;
}