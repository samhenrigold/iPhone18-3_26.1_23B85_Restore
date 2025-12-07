void sub_E6CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E6CFB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = v3; *(*i + 32) != a2; i += 8)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = v3;
  }

  if (i == v3 + 8 * v4)
  {
    return 0;
  }

  else
  {
    return *i;
  }
}

BOOL sub_E6D018(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = v3; *(*i + 32) != a2; i += 8)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = v3;
  }

  return i != v3 + 8 * v4 && *i != 0;
}

void sub_E6D080(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 32) || (*(*(*(a1 + 40) + 8) + 184) ? (v3 = *(*(*(a1 + 40) + 8) + 184)) : (v3 = &off_2776328), v3[22] ? (v4 = v3[22]) : (v4 = &off_277E5E8), (~*(v4 + 10) & 3) != 0))
  {
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    *a2 = -1;
    *(a2 + 8) = 0x7FFFFFFF;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 40) = 0;
    *(a2 + 48) = -1935635296;
    *(a2 + 56) = 0;
    *(a2 + 63) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 112) = 100;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = vnegq_f64(v57);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 1;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0;
    *(a2 + 384) = -1;
    *(a2 + 392) = -1;
    *(a2 + 400) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    *(a2 + 432) = 0;
    *(a2 + 436) = 0;
  }

  else
  {
    *(a2 + 8) = 0x7FFFFFFF;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 48) = -1935635296;
    *(a2 + 56) = 0;
    *(a2 + 63) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a2 + 96) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v6 = vnegq_f64(v5);
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a2 + 176) = 1;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0;
    *(a2 + 384) = -1;
    *(a2 + 392) = -1;
    *(a2 + 400) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    v5.f64[0] = fmin(fmax(*(v4 + 6), -85.0511288), 85.0511288);
    *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 40) = 0;
    *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 112) = 100;
    v59 = v6;
    *(a2 + 136) = v6;
    *(a2 + 184) = 0;
    *(a2 + 432) = 0;
    *(a2 + 436) = 0;
    v7 = sin(v5.f64[0] * 3.14159265 / 180.0);
    v8 = ((log((v7 + 1.0) / (1.0 - v7)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v8 >= 0xFFFFFFFE)
    {
      v8 = -2;
    }

    *a2 = ((*(v4 + 7) + 180.0) / 360.0 * 4294967300.0);
    *(a2 + 4) = v8;
    v9 = v3[11];
    if (v9)
    {
      v10 = (v9 + 1);
    }

    else
    {
      v10 = 0;
    }

    v58 = v3;
    v11 = *(v3 + 20);
    if (v11)
    {
      v12 = 8 * v11;
      do
      {
        while (1)
        {
          v13 = *v10;
          v14 = *(a2 + 320);
          if (v14 >= *(a2 + 328))
          {
            v15 = sub_E6EBB4(a2 + 312);
          }

          else
          {
            *(v14 + 8) = 0u;
            *(v14 + 24) = 0u;
            *(v14 + 40) = 0u;
            *(v14 + 56) = 0u;
            *(v14 + 72) = 0u;
            *(v14 + 88) = 0u;
            *(v14 + 104) = 0u;
            *v14 = -1;
            *(v14 + 8) = 0x7FFFFFFF;
            *(v14 + 16) = -1;
            *(v14 + 24) = -1;
            *(v14 + 32) = 0x7FFFFFFFFFFFFFFFLL;
            *(v14 + 48) = -1935635296;
            *(v14 + 56) = 0;
            *(v14 + 63) = 0;
            *(v14 + 72) = 0;
            *(v14 + 80) = 0;
            *(v14 + 88) = 0;
            *(v14 + 96) = 0;
            *(v14 + 104) = 0x7FFFFFFFFFFFFFFFLL;
            *(v14 + 112) = 100;
            *(v14 + 120) = 0;
            *(v14 + 128) = 0;
            *(v14 + 136) = v59;
            *(v14 + 152) = 0;
            *(v14 + 160) = 0;
            *(v14 + 168) = 0;
            v15 = v14 + 176;
          }

          *(a2 + 320) = v15;
          v16 = sin(fmin(fmax(*(v13 + 48), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          v17 = ((log((v16 + 1.0) / (1.0 - v16)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v17 >= 0xFFFFFFFE)
          {
            v17 = -2;
          }

          *(v15 - 176) = ((*(v13 + 56) + 180.0) / 360.0 * 4294967300.0);
          *(v15 - 172) = v17;
          v19 = *(v15 - 96);
          v18 = *(v15 - 88);
          if (v19 >= v18)
          {
            break;
          }

          *v19 = 4;
          *(v15 - 96) = v19 + 4;
          ++v10;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_35;
          }
        }

        v20 = *(v15 - 104);
        v21 = v19 - v20;
        v22 = (v19 - v20) >> 2;
        v23 = v22 + 1;
        if ((v22 + 1) >> 62)
        {
          sub_1794();
        }

        v24 = v18 - v20;
        if (v24 >> 1 > v23)
        {
          v23 = v24 >> 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v25 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (v19 - v20) >> 2;
        v27 = (4 * v22);
        v28 = (4 * v22 - 4 * v26);
        *v27 = 4;
        v29 = v27 + 1;
        memcpy(v28, v20, v21);
        *(v15 - 104) = v28;
        *(v15 - 96) = v29;
        *(v15 - 88) = 0;
        if (v20)
        {
          operator delete(v20);
        }

        *(v15 - 96) = v29;
        ++v10;
        v12 -= 8;
      }

      while (v12);
    }

LABEL_35:
    v30 = v58[14];
    if (v30)
    {
      v31 = (v30 + 1);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(v58 + 26);
    if (v32)
    {
      v33 = 8 * v32;
      v34.f64[0] = NAN;
      v34.f64[1] = NAN;
      v60 = vnegq_f64(v34);
      while (1)
      {
        v35 = *v31;
        v36 = *(a2 + 320);
        if (v36 >= *(a2 + 328))
        {
          v37 = sub_E6EBB4(a2 + 312);
        }

        else
        {
          *(v36 + 8) = 0u;
          *(v36 + 24) = 0u;
          *(v36 + 40) = 0u;
          *(v36 + 56) = 0u;
          *(v36 + 72) = 0u;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0u;
          *v36 = -1;
          *(v36 + 8) = 0x7FFFFFFF;
          *(v36 + 16) = -1;
          *(v36 + 24) = -1;
          *(v36 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v36 + 48) = -1935635296;
          *(v36 + 56) = 0;
          *(v36 + 63) = 0;
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          *(v36 + 88) = 0;
          *(v36 + 96) = 0;
          *(v36 + 104) = 0x7FFFFFFFFFFFFFFFLL;
          *(v36 + 112) = 100;
          *(v36 + 120) = 0;
          *(v36 + 128) = 0;
          *(v36 + 136) = v60;
          *(v36 + 152) = 0;
          *(v36 + 160) = 0;
          *(v36 + 168) = 0;
          v37 = v36 + 176;
        }

        *(a2 + 320) = v37;
        if (*(v35 + 24))
        {
          v38 = *(v35 + 24);
        }

        else
        {
          v38 = &off_277E5E8;
        }

        v39 = sin(fmin(fmax(*(v38 + 6), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v40 = ((log((v39 + 1.0) / (1.0 - v39)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v40 >= 0xFFFFFFFE)
        {
          v40 = -2;
        }

        *(v37 - 176) = ((*(v38 + 7) + 180.0) / 360.0 * 4294967300.0);
        *(v37 - 172) = v40;
        v41 = *(v35 + 40);
        if ((v41 & 0xFFFFFFFD) == 1)
        {
          v42 = 4;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v41 == 2)
        {
          v42 = 5;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        v45 = *(v35 + 36);
        if ((v45 & 0xFFFFFFFD) == 1)
        {
          v42 = 1;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v45 == 2)
        {
          v42 = 2;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        v46 = *(v35 + 56);
        if ((v46 & 0xFFFFFFFD) == 1)
        {
          v42 = 7;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v46 == 2)
        {
          break;
        }

        if (v46 == 4)
        {
          v42 = 6;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

LABEL_68:
          v48 = *(v37 - 104);
          v49 = v44 - v48;
          v50 = (v44 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
            sub_1794();
          }

          v52 = v43 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v54 = (v44 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = v42;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          *(v37 - 104) = v56;
          *(v37 - 96) = v47;
          *(v37 - 88) = 0;
          if (v48)
          {
            operator delete(v48);
          }

LABEL_79:
          *(v37 - 96) = v47;
        }

        ++v31;
        v33 -= 8;
        if (!v33)
        {
          return;
        }
      }

      v42 = 8;
      v44 = *(v37 - 96);
      v43 = *(v37 - 88);
      if (v44 >= v43)
      {
        goto LABEL_68;
      }

LABEL_66:
      *v44 = v42;
      v47 = v44 + 1;
      goto LABEL_79;
    }
  }
}

uint64_t sub_E6D904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&v162 = -1;
  DWORD2(v162) = 0x7FFFFFFF;
  *&v163 = -1;
  *(&v163 + 1) = -1;
  v164 = 0x7FFFFFFFFFFFFFFFuLL;
  *v165 = -1935635296;
  *&v165[8] = 0;
  *&v165[15] = 0;
  v166 = 0uLL;
  v167 = 0;
  LODWORD(v168) = 0;
  *(&v168 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v169 = 100;
  v170 = 0uLL;
  v171 = vnegq_f64(v3);
  v172 = 0;
  v173 = 0uLL;
  v174 = 1;
  v175 = 0;
  v4 = 0uLL;
  memset(v176, 0, sizeof(v176));
  v177 = 0u;
  memset(v178, 0, sizeof(v178));
  v179[0] = 0;
  *&v179[8] = 0u;
  memset(v180, 0, sizeof(v180));
  v181 = 0u;
  v182 = 0;
  *&v183 = -1;
  *(&v183 + 1) = -1;
  v184 = 0uLL;
  v186 = 0;
  v185 = 0;
  LOBYTE(v187) = 0;
  HIDWORD(v187) = 0;
  if (!*(a1 + 208))
  {
    if (*(a1 + 128) < 1)
    {
      if (*(a1 + 56) < 1)
      {
        v7 = &unk_27B9AB8;
        if ((atomic_load_explicit(&qword_27B9AB0, memory_order_acquire) & 1) == 0)
        {
          if (__cxa_guard_acquire(&qword_27B9AB0))
          {
            sub_1838250(&unk_27B9AB8, 0, 0);
            __cxa_guard_release(&qword_27B9AB0);
            v7 = &unk_27B9AB8;
            v2 = a2;
          }

          else
          {
            v2 = a2;
            v7 = &unk_27B9AB8;
          }
        }
      }

      else
      {
        v7 = *(*(a1 + 64) + 8);
      }
    }

    else if (*(*(*(a1 + 136) + 8) + 24))
    {
      v7 = *(*(*(a1 + 136) + 8) + 24);
    }

    else
    {
      v7 = &off_27868A0;
    }

    v8 = *(v7 + 14);
    if (!v8)
    {
      v133.f64[0] = NAN;
      v133.f64[1] = NAN;
      *v2 = -1;
      *(v2 + 8) = 0x7FFFFFFF;
      *(v2 + 16) = -1;
      *(v2 + 24) = -1;
      *(v2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
      *(v2 + 40) = 0;
      *(v2 + 48) = -1935635296;
      *(v2 + 56) = 0;
      *(v2 + 63) = 0;
      *(v2 + 80) = 0;
      *(v2 + 88) = 0;
      *(v2 + 72) = 0;
      *(v2 + 96) = 0;
      *(v2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
      *(v2 + 112) = 100;
      *(v2 + 120) = 0;
      *(v2 + 128) = 0;
      *(v2 + 136) = vnegq_f64(v133);
      *(v2 + 152) = 0;
      *(v2 + 160) = 0;
      *(v2 + 168) = 0;
      *(v2 + 176) = 1;
      *(v2 + 184) = 0;
      v6 = (v2 + 296);
      v4 = 0uLL;
      goto LABEL_3;
    }

    v135 = (v2 + 312);
    v136 = v2;
    v9 = v7[8];
    v10 = v9 + 1;
    if (!v9)
    {
      v10 = 0;
    }

    v137 = &v10[v8];
    while (1)
    {
      v140 = v10;
      v11 = *v10;
      if (!*(*v10 + 14))
      {
        goto LABEL_15;
      }

      v12 = *(*(v11 + 8) + 8);
      v13 = *(v11 + 34);
      v138 = *v10;
      v139 = v12;
      if (v13 != 3)
      {
        break;
      }

      v19 = v12[10];
      if (!v19)
      {
        v19 = &off_2782800;
      }

      v20 = v19[4];
      if (v20)
      {
        v21 = (v20 + 1);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v19 + 6);
      if (v22)
      {
        v23 = 8 * v22;
        do
        {
          sub_EA40DC(*v21, &v145);
          if (sub_E67BDC(&v145))
          {
            v24 = *(&v180[0] + 1);
            if (*(&v180[0] + 1) >= *&v180[1])
            {
              v30 = sub_D4E5B4(v180, &v145);
            }

            else
            {
              **(&v180[0] + 1) = v145;
              v25 = v146;
              v26 = v147;
              v27 = *v148;
              *(v24 + 63) = *&v148[15];
              *(v24 + 32) = v26;
              *(v24 + 48) = v27;
              *(v24 + 72) = 0;
              *(v24 + 16) = v25;
              *(v24 + 80) = 0;
              *(v24 + 88) = 0;
              if (v150 != v149)
              {
                if (((v150 - v149) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              v28 = v152;
              *(v24 + 112) = v153[0];
              *(v24 + 96) = v28;
              v29 = v154;
              *(v24 + 136) = v155;
              *(v24 + 120) = v29;
              sub_81988((v24 + 152), &__p);
              v30 = v24 + 176;
            }

            *(&v180[0] + 1) = v30;
          }

          if (__p)
          {
            operator delete(__p);
          }

          if (v149)
          {
            v150 = v149;
            operator delete(v149);
          }

          ++v21;
          v23 -= 8;
        }

        while (v23);
        v11 = v138;
        v13 = *(v138 + 34);
LABEL_48:
        if (v13 == 1)
        {
          v31 = v12[8];
          if (!v31)
          {
            v31 = &off_2782358;
          }

          if (*(v31 + 32) >= 1)
          {
            v32 = *(v31[17][1] + 4) & 0xFFFFFFFFFFFFFFFELL;
            if (v176 != v32)
            {
              v33 = *(v32 + 23);
              if (SBYTE7(v176[1]) < 0)
              {
                if (v33 >= 0)
                {
                  v35 = v32;
                }

                else
                {
                  v35 = *v32;
                }

                if (v33 >= 0)
                {
                  v36 = *(v32 + 23);
                }

                else
                {
                  v36 = *(v32 + 8);
                }

                sub_13B38(v176, v35, v36);
              }

              else if ((*(v32 + 23) & 0x80) != 0)
              {
                sub_13A68(v176, *v32, *(v32 + 8));
              }

              else
              {
                v34 = *v32;
                *&v176[1] = *(v32 + 16);
                v176[0] = v34;
              }
            }
          }

          v37 = v12[8];
          if (!v37)
          {
            v37 = &off_2782358;
          }

          v38 = v37[41] & 0xFFFFFFFFFFFFFFFELL;
          if (&v178[1] != v38)
          {
            v39 = *(v38 + 23);
            if (SHIBYTE(v178[3]) < 0)
            {
              if (v39 >= 0)
              {
                v41 = v38;
              }

              else
              {
                v41 = *v38;
              }

              if (v39 >= 0)
              {
                v42 = *(v38 + 23);
              }

              else
              {
                v42 = *(v38 + 8);
              }

              sub_13B38(&v178[1], v41, v42);
            }

            else if ((*(v38 + 23) & 0x80) != 0)
            {
              sub_13A68(&v178[1], *v38, *(v38 + 8));
            }

            else
            {
              v40 = *v38;
              v178[3] = *(v38 + 16);
              *&v178[1] = v40;
            }
          }
        }
      }

LABEL_78:
      v43 = *(v11 + 34);
      if (v43 == 5)
      {
        v44 = v12[12];
        if (!v44)
        {
          v44 = &off_2782930;
        }

        if (*(v44 + 14) >= 1)
        {
          v45 = *(v44[8][1] + 4);
          if (!v45)
          {
            v45 = &off_277E918;
          }

          v46 = v45[6];
          if (!v46)
          {
            v46 = &off_277E820;
          }

          v47 = v46[25] & 0xFFFFFFFFFFFFFFFELL;
          if ((&v176[1] + 8) != v47)
          {
            v48 = *(v47 + 23);
            if (SHIBYTE(v176[2]) < 0)
            {
              if (v48 >= 0)
              {
                v50 = v47;
              }

              else
              {
                v50 = *v47;
              }

              if (v48 >= 0)
              {
                v51 = *(v47 + 23);
              }

              else
              {
                v51 = *(v47 + 8);
              }

              sub_13B38(&v176[1] + 1, v50, v51);
            }

            else if ((*(v47 + 23) & 0x80) != 0)
            {
              sub_13A68(&v176[1] + 1, *v47, *(v47 + 8));
            }

            else
            {
              v49 = *v47;
              *(&v176[2] + 1) = *(v47 + 16);
              *(&v176[1] + 8) = v49;
            }
          }
        }

        v43 = *(v11 + 34);
      }

      if (v43 == 21)
      {
        if (v12[25])
        {
          v52 = v12[25];
        }

        else
        {
          v52 = &off_2783D90;
        }

        if (v52[2])
        {
          nullsub_1();
          *(&v163 + 1) = v53;
        }

        v54 = v52[5];
        v55 = v54 ? (v54 + 1) : 0;
        v56 = *(v52 + 8);
        if (v56)
        {
          v57 = 8 * v56;
          while (2)
          {
            v59 = *v55;
            if ((*(*v55 + 16) & 2) == 0)
            {
              goto LABEL_112;
            }

            nullsub_1();
            v61 = v60;
            if (*(v59 + 16))
            {
              v66 = *(v59 + 24);
              v67 = sin(fmin(fmax(*(v66 + 48), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              v68 = ((log((v67 + 1.0) / (1.0 - v67)) / -12.5663706 + 0.5) * 4294967300.0);
              if (v68 >= 0xFFFFFFFE)
              {
                v63 = -2;
              }

              else
              {
                v63 = v68;
              }

              v62 = ((*(v66 + 56) + 180.0) / 360.0 * 4294967300.0);
              v65 = *(&v180[2] + 1);
              v64 = *&v180[2];
              if (*&v180[2] < *(&v180[2] + 1))
              {
                goto LABEL_110;
              }

LABEL_121:
              v69 = *(&v180[1] + 1);
              v70 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *(&v180[1] + 1)) >> 3);
              v71 = v70 + 1;
              if (v70 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v72 = 0xAAAAAAAAAAAAAAABLL * ((v65 - *(&v180[1] + 1)) >> 3);
              if (2 * v72 > v71)
              {
                v71 = 2 * v72;
              }

              if (v72 >= 0x555555555555555)
              {
                v73 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v73 = v71;
              }

              if (v73)
              {
                if (v73 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v74 = 8 * ((v64 - *(&v180[1] + 1)) >> 3);
              *v74 = v61;
              *(v74 + 8) = v62;
              *(v74 + 12) = v63;
              *(v74 + 16) = 0x7FFFFFFF;
              v58 = 24 * v70 + 24;
              v75 = (24 * v70 - (v64 - v69));
              memcpy(v75, v69, v64 - v69);
              *(&v180[1] + 1) = v75;
              v180[2] = v58;
              if (v69)
              {
                operator delete(v69);
              }
            }

            else
            {
              v62 = -1;
              v63 = -1;
              v65 = *(&v180[2] + 1);
              v64 = *&v180[2];
              if (*&v180[2] >= *(&v180[2] + 1))
              {
                goto LABEL_121;
              }

LABEL_110:
              *v64 = v61;
              *(v64 + 8) = v62;
              *(v64 + 12) = v63;
              v58 = v64 + 24;
              *(v64 + 16) = 0x7FFFFFFF;
            }

            *&v180[2] = v58;
LABEL_112:
            v55 += 8;
            v57 -= 8;
            if (!v57)
            {
              break;
            }

            continue;
          }
        }
      }

      v76 = *(v138 + 34);
      if (v76 == 4)
      {
        v77 = v139[11];
        if (!v77)
        {
          v77 = &off_2782860;
        }

        v78 = v77[6];
        if (v78)
        {
          v79 = v78;
        }

        else
        {
          v79 = &off_277E650;
        }

        sub_4B6854(&v145, v79);
        v183 = v145;
        v80 = v184;
        if (v184)
        {
          v81 = *(&v184 + 1);
          v82 = v184;
          if (*(&v184 + 1) != v184)
          {
            v83 = *(&v184 + 1);
            do
            {
              v85 = *(v83 - 24);
              v83 -= 24;
              v84 = v85;
              if (v85)
              {
                *(v81 - 16) = v84;
                operator delete(v84);
              }

              v81 = v83;
            }

            while (v83 != v80);
            v82 = v184;
          }

          *(&v184 + 1) = v80;
          operator delete(v82);
        }

        v184 = v146;
        v185 = v147;
        *&v147 = 0;
        v146 = 0uLL;
        v186 = DWORD2(v147);
        v76 = *(v138 + 34);
      }

      if (v76 == 81)
      {
        v86 = v139[82];
        if (!v86)
        {
          v86 = &off_2787518;
        }

        v87 = v86[4];
        v88 = v87 ? (v87 + 1) : 0;
        v89 = *(v86 + 6);
        if (v89)
        {
          v90 = v88 + 8 * v89;
          while (1)
          {
            v91 = *v88;
            v92 = *(*v88 + 56);
            if (v92)
            {
              v93 = *(v91 + 64);
              if (v93)
              {
                v94 = v93 + 8;
              }

              else
              {
                v94 = 0;
              }

              v95 = 8 * v92;
              while (1)
              {
                v96 = *(*v94 + 32);
                v97 = v96 > 5;
                v98 = (1 << v96) & 0x25;
                if (!v97 && v98 != 0)
                {
                  break;
                }

                v94 += 8;
                v95 -= 8;
                if (!v95)
                {
                  goto LABEL_157;
                }
              }
            }

            sub_43706C(v91, &v157);
            if ((v157 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(&v157 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v100 = (v158 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || *&v157 == 1.79769313e308;
              v101 = v100 || *(&v157 + 1) == 1.79769313e308;
              if (!v101 && ((BYTE8(v158) & 1) != 0 || *&v158 != 1.79769313e308))
              {
                v106 = *(&v181 + 1);
                if (*(&v181 + 1) >= v182)
                {
                  v111 = v181;
                  v112 = 0x8E38E38E38E38E39 * ((*(&v181 + 1) - v181) >> 3);
                  v113 = v112 + 1;
                  if (v112 + 1 > 0x38E38E38E38E38ELL)
                  {
                    sub_1794();
                  }

                  if (0x1C71C71C71C71C72 * ((v182 - v181) >> 3) > v113)
                  {
                    v113 = 0x1C71C71C71C71C72 * ((v182 - v181) >> 3);
                  }

                  if (0x8E38E38E38E38E39 * ((v182 - v181) >> 3) >= 0x1C71C71C71C71C7)
                  {
                    v114 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v114 = v113;
                  }

                  if (v114)
                  {
                    if (v114 <= 0x38E38E38E38E38ELL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v115 = 8 * ((*(&v181 + 1) - v181) >> 3);
                  v116 = v160;
                  *(v115 + 32) = v159;
                  *(v115 + 48) = v116;
                  *(v115 + 64) = v161;
                  v117 = v158;
                  *v115 = v157;
                  *(v115 + 16) = v117;
                  v110 = 72 * v112 + 72;
                  v118 = 72 * v112 - (v106 - v111);
                  memcpy((v115 - (v106 - v111)), v111, v106 - v111);
                  *&v181 = v118;
                  *(&v181 + 1) = v110;
                  v182 = 0;
                  if (v111)
                  {
                    operator delete(v111);
                  }
                }

                else
                {
                  **(&v181 + 1) = v157;
                  v107 = v158;
                  v108 = v159;
                  v109 = v160;
                  *(v106 + 64) = v161;
                  *(v106 + 32) = v108;
                  *(v106 + 48) = v109;
                  *(v106 + 16) = v107;
                  v110 = v106 + 72;
                }

                *(&v181 + 1) = v110;
                goto LABEL_157;
              }
            }

            if (sub_7E7E4(1u))
            {
              break;
            }

LABEL_157:
            v88 += 8;
            if (v88 == v90)
            {
              goto LABEL_15;
            }
          }

          sub_19594F8(&v145);
          sub_4A5C(&v145, "Invalid storefront face for muid ", 33);
          std::ostream::operator<<();
          if ((BYTE8(v152) & 0x10) != 0)
          {
            v103 = v152;
            v104 = v148;
            if (v152 < *&v148[8])
            {
              *&v152 = *&v148[8];
              v103 = *&v148[8];
              v104 = v148;
            }
          }

          else
          {
            if ((BYTE8(v152) & 8) == 0)
            {
              v102 = 0;
              v144 = 0;
LABEL_194:
              *(&__dst + v102) = 0;
              sub_7E854(&__dst, 1u);
              if (v144 < 0)
              {
                operator delete(__dst);
              }

              *&v145 = v142;
              *(&v145 + *(*&v142 - 24)) = v141;
              if (v151 < 0)
              {
                operator delete(v149);
              }

              std::locale::~locale(&v146);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_157;
            }

            v103 = *(&v147 + 1);
            v104 = &v146 + 1;
          }

          v105 = *v104;
          v102 = v103 - *v104;
          if (v102 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v102 >= 0x17)
          {
            operator new();
          }

          v144 = v103 - *v104;
          if (v102)
          {
            memmove(&__dst, v105, v102);
          }

          goto LABEL_194;
        }
      }

LABEL_15:
      v10 = v140 + 1;
      if (v140 + 1 == v137)
      {
        v119 = *v165;
        *(v136 + 32) = v164;
        *(v136 + 48) = v119;
        *(v136 + 63) = *&v165[15];
        v120 = v163;
        *v136 = v162;
        *(v136 + 16) = v120;
        *(v136 + 72) = v166;
        *(v136 + 88) = v167;
        v167 = 0;
        v166 = 0uLL;
        v121 = v168;
        *(v136 + 112) = v169;
        *(v136 + 96) = v121;
        v122 = v170;
        *(v136 + 136) = v171;
        *(v136 + 120) = v122;
        v123 = v178[0];
        *(v136 + 152) = v172;
        *(v136 + 160) = v173;
        v173 = 0uLL;
        v172 = 0;
        *(v136 + 184) = v175;
        *(v136 + 176) = v174;
        v124 = v176[0];
        *(v136 + 208) = *&v176[1];
        *(v136 + 192) = v124;
        memset(v176, 0, 24);
        v125 = *(&v176[1] + 8);
        *(v136 + 232) = *(&v176[2] + 1);
        *(v136 + 216) = v125;
        memset(&v176[1] + 8, 0, 24);
        v126 = v177;
        *(v136 + 256) = v123;
        *(v136 + 240) = v126;
        v177 = 0uLL;
        v178[0] = 0;
        v127 = *&v178[1];
        *(v136 + 280) = v178[3];
        *(v136 + 264) = v127;
        memset(&v178[1], 0, 24);
        v128 = *v179;
        v129 = *&v180[1];
        *(v136 + 304) = *&v179[16];
        *(v136 + 288) = v128;
        *v135 = v180[0];
        *(v136 + 328) = v129;
        memset(v180, 0, 24);
        *(v136 + 336) = *(&v180[1] + 8);
        v130 = v182;
        *(v136 + 352) = *(&v180[2] + 1);
        memset(&v180[1] + 8, 0, 24);
        v135[3] = v181;
        *(v136 + 376) = v130;
        v181 = 0uLL;
        v182 = 0;
        v131 = v184;
        *(v136 + 384) = v183;
        *(v136 + 400) = v131;
        *(v136 + 416) = v185;
        v184 = 0uLL;
        v185 = 0;
        *(v136 + 424) = v186;
        *(v136 + 432) = v187;
        return sub_44FDEC(&v162);
      }
    }

    if (v13 == 2)
    {
      v14 = v12[9];
      if (!v14)
      {
        v14 = &off_2782768;
      }

      v15 = v14[6];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = &off_277E5E8;
      }

      v17 = sin(fmin(fmax(*(v16 + 6), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v18 = ((log((v17 + 1.0) / (1.0 - v17)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v18 >= 0xFFFFFFFE)
      {
        v18 = -2;
      }

      *&v162 = __PAIR64__(v18, ((*(v16 + 7) + 180.0) / 360.0 * 4294967300.0));
      goto LABEL_78;
    }

    goto LABEL_48;
  }

  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v5);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  *(a2 + 184) = 0;
  v6 = (a2 + 296);
LABEL_3:
  *(v2 + 192) = v4;
  *(v2 + 208) = v4;
  *(v2 + 224) = v4;
  *(v2 + 240) = v4;
  *(v2 + 256) = v4;
  *(v2 + 272) = v4;
  *(v2 + 288) = 0;
  *v6 = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[3] = v4;
  v6[4] = v4;
  *(v2 + 376) = 0;
  *(v2 + 384) = -1;
  *(v2 + 392) = -1;
  *(v2 + 400) = 0;
  *(v2 + 424) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 432) = 0;
  *(v2 + 436) = 0;
  return sub_44FDEC(&v162);
}

void sub_E6EA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_27B9AB0);
  sub_44FDEC(&a65);
  _Unwind_Resume(a1);
}

void sub_E6EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *v65;
  if (*v65)
  {
    *(v66 + 80) = v68;
    operator delete(v68);
  }

  STACK[0x330] = v66;
  sub_44D36C(&a29);
  sub_44FDEC(&a65);
  _Unwind_Resume(a1);
}

void sub_E6EAFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xE6EB5CLL);
}

void sub_E6EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_44D36C(&a29);
  sub_44FDEC(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_E6EBB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * (v3 >> 4) + 1;
  if (v4 > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *v7 = -1;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = -1;
  *(v7 + 24) = -1;
  *(v7 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 48) = -1935635296;
  *(v7 + 56) = 0;
  *(v7 + 63) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 112) = 100;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = vnegq_f64(v8);
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  v9 = v7 + 176;
  v10 = v7 - v3;
  *(v7 + 168) = 0;
  if (v1 != v2)
  {
    v11 = v1;
    v12 = v10;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 16) = v13;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = *(v11 + 9);
      *(v12 + 88) = v11[11];
      v11[9] = 0;
      v11[10] = 0;
      v11[11] = 0;
      v16 = *(v11 + 6);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v16;
      v17 = *(v11 + 15);
      *(v12 + 136) = *(v11 + 17);
      *(v12 + 120) = v17;
      *(v12 + 152) = v11[19];
      *(v12 + 160) = *(v11 + 10);
      v11[19] = 0;
      v11[20] = 0;
      v11[21] = 0;
      v11 += 22;
      v12 += 176;
    }

    while (v11 != v2);
    do
    {
      v18 = v1[19];
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v1[9];
      if (v19)
      {
        v1[10] = v19;
        operator delete(v19);
      }

      v1 += 22;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v9;
}

uint64_t sub_E6EE08(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10, int a11)
{
  v15 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v15;
  *(a1 + 16) = 0;
  *(a1 + 12) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a6;
  *(a1 + 32) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_5ADDC(a1 + 56, a4);
  *(a1 + 96) = 0;
  sub_5ADDC(a1 + 104, a5);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = 126 - 2 * __clz((v17 - v16) >> 4);
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = a7 == 0x7FFFFFFF || a8 == 0x7FFFFFFF;
  v21 = (10 * (a7 - a8)) & ~((10 * (a7 - a8)) >> 31);
  if (v20)
  {
    v21 = 0;
  }

  *(a1 + 144) = v21;
  *(a1 + 148) = a8;
  *(a1 + 152) = a9;
  *(a1 + 156) = a11;
  sub_E6F9A4(v16, v17, v19, 1);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = v22;
  if (v22 != v23)
  {
    while (*(v24 + 12) != 1)
    {
      v24 += 16;
      if (v24 == v23)
      {
        v24 = *(a1 + 24);
        break;
      }
    }
  }

  *(a1 + 40) = (v24 - v22) >> 4;
  v27 = 8;
  strcpy(__p, "model_id");
  *(a1 + 48) = sub_353010((a1 + 56), __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = 8;
  strcpy(__p, "model_id");
  *(a1 + 96) = sub_353010((a1 + 104), __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_E6EFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v15 + 104);
  sub_5C010(v15 + 56);
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 24) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E6F038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  return result;
}

uint64_t sub_E6F044@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = v2 + 16 * *(result + 40);
  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_E6F058@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  *a2 = result[2] + 16 * result[5];
  a2[1] = v2;
  return result;
}

BOOL sub_E6F06C(uint64_t a1)
{
  result = sub_4566B4(a1);
  if (result)
  {
    return *(a1 + 48) != -1 && *(a1 + 96) != -1 && *(a1 + 16) != *(a1 + 24);
  }

  return result;
}

BOOL sub_E6F0DC(uint64_t a1)
{
  v1 = sub_E6F270(a1);
  v5 = 17;
  strcpy(__p, "vehicle_is_towing");
  result = sub_5FC3C(v1, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(*__p);
    result = v3;
    if (v3)
    {
LABEL_3:
      operator new();
    }
  }

  else if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_E6F250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_E6F270(uint64_t a1)
{
  if ((atomic_load_explicit(qword_27B9B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27B9B60))
  {
    sub_5F328(&unk_27B9B70);
    __cxa_guard_release(qword_27B9B60);
  }

  v5 = 18;
  strcpy(__p, "vehicle_parameters");
  result = sub_5FAAC((a1 + 56), __p, &unk_27B9B70);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(*__p);
    return v3;
  }

  return result;
}

void sub_E6F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_E6F36C(uint64_t a1)
{
  v1 = sub_E6F270(a1);
  v7 = 17;
  strcpy(__p, "vehicle_is_towing");
  v2 = sub_62A70(v1, __p);
  if (v2)
  {
    v3 = *(v2 + 12);
    if (v3 == 4 || v3 == 3)
    {
      v4 = *(v2 + 10);
      if ((v7 & 0x80000000) == 0)
      {
        return v4 == 1;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v4 = *(v2 + 5);
      if (v7 < 0)
      {
        goto LABEL_10;
      }

      return v4 == 1;
    }
  }

  v4 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    return v4 == 1;
  }

LABEL_10:
  operator delete(*__p);
  return v4 == 1;
}

void sub_E6F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E6F47C(void *result, int a2, int a3, int a4)
{
  v27 = a4;
  v28 = a3;
  v26 = a2;
  if (!a2 || a3 == 0x7FFFFFFF || !a3)
  {
    return result;
  }

  v4 = result[2];
  v5 = result[5];
  v6 = &v4[16 * v5];
  if (v5)
  {
    v7 = result[2];
    while (*v7 != a2)
    {
      v7 += 16;
      if (v7 == v6)
      {
        v7 = v6;
        break;
      }
    }

    if (v7 == v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = result[2];
    if (v4 == v6)
    {
LABEL_10:
      v8 = result[3];
      if (v8 == v6)
      {
        v25[0] = 0;
        v12 = result;
        if (result[4] <= v6)
        {
          result = sub_E6F880((result + 2), &v26, &v28, &v27, v25);
        }

        else
        {
          sub_96DCC(v8, a2, a3, a4, 0);
          result = (v8 + 16);
          v12[3] = v8 + 16;
        }

        v12[3] = result;
        v18 = (result - v12[2]) >> 4;
      }

      else
      {
        v9 = result[4];
        if (v8 >= v9)
        {
          v13 = v8 - v4;
          v14 = (v8 - v4) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            sub_1794();
          }

          v16 = v9 - v4;
          if (v16 >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (!(v17 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v19 = a3;
          v20 = a4;
          v21 = a2;
          v22 = result;
          *(16 * v14) = *v6;
          v10 = 16 * v14 + 16;
          memcpy(0, v4, v13);
          result = v22;
          v22[2] = 0;
          v22[3] = v10;
          v22[4] = 0;
          if (v4)
          {
            operator delete(v4);
            result = v22;
          }

          LOBYTE(a2) = v21;
          a4 = v20;
          a3 = v19;
        }

        else
        {
          *v8 = *v6;
          v10 = v8 + 16;
        }

        result[3] = v10;
        v12 = result;
        result = sub_96DCC(v25, a2, a3, a4, 0);
        v23 = (v12[2] + 16 * v12[5]);
        v24 = *v25;
        *(v23 + 5) = *&v25[5];
        *v23 = v24;
        v18 = v12[5] + 1;
      }

      v12[5] = v18;
      return result;
    }
  }

  v11 = *(v7 + 1);
  if (v11 <= a3)
  {
    v11 = a3;
  }

  *(v7 + 1) = v11;
  return result;
}

void *sub_E6F6F0(void *result, int a2, int a3, int a4)
{
  v14 = a4;
  v15 = a3;
  v13 = a2;
  if (a2 && a3 != 0x7FFFFFFF && a3)
  {
    v4 = result;
    v6 = result[2];
    result += 2;
    v5 = v6;
    v7 = 16 * result[3];
    v8 = (v7 + v6);
    v9 = result[1];
    if (v9 == v7 + v6)
    {
      goto LABEL_14;
    }

    v10 = &v8[-v5 - v7 + 4];
    while (*v8 != a2)
    {
      v8 += 16;
      v10 += 16;
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    if (v8 == v9)
    {
LABEL_14:
      v12 = 1;
      if (v9 >= v4[4])
      {
        result = sub_E6F880(result, &v13, &v15, &v14, &v12);
        v4[3] = result;
      }

      else
      {
        sub_96DCC(v9, a2, a3, a4, 1);
        result = (v9 + 16);
        v4[3] = v9 + 16;
        v4[3] = v9 + 16;
      }
    }

    else
    {
      v11 = *(v5 + v10);
      if (v11 <= a3)
      {
        v11 = a3;
      }

      *(v5 + v10) = v11;
    }
  }

  return result;
}

BOOL sub_E6F808(uint64_t a1, int a2)
{
  v2 = 16 * *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = v2 + v3;
  v5 = v3 + 16;
  do
  {
    v6 = *(v5 - 16);
    result = v6 == a2;
    v8 = v6 == a2 || v5 == v4;
    v5 += 16;
  }

  while (!v8);
  return result;
}

BOOL sub_E6F844(void *a1, int a2)
{
  v2 = a1[3];
  v3 = a1[2] + 16 * a1[5];
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3 + 16;
  do
  {
    v5 = *(v4 - 16);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 16;
  }

  while (!v7);
  return result;
}

uint64_t sub_E6F880(uint64_t a1, char *a2, int *a3, int *a4, char *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1794();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v10 = sub_96DCC(16 * v5, *a2, *a3, *a4, *a5);
  v11 = v10 + 16;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v10 - v13;
  memcpy((v10 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_E6F98C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_E6F9A4(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      if (*(a2 - 4) < *(v11 + 12))
      {
        result = *v11;
        v160 = *v11;
        v75 = *(a2 - 2);
        *(v11 + 5) = *(a2 - 11);
        *v11 = v75;
        *(a2 - 11) = *(v160.n128_i64 + 5);
        *(a2 - 2) = v160.n128_u64[0];
      }

      return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v81 = v11 + 2;
      v83 = v11 == a2 || v81 == a2;
      if (a4)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v11;
          do
          {
            v87 = *(v85 + 28);
            v88 = *(v85 + 12);
            v85 = v81;
            if (v87 < v88)
            {
              v171 = *(v81 + 2);
              v163 = *v81;
              v89 = v84;
              do
              {
                v90 = v11 + v89;
                *(v90 + 2) = *(v11 + v89);
                *(v90 + 21) = *(v11 + v89 + 5);
                if (!v89)
                {
                  v86 = v11;
                  goto LABEL_124;
                }

                v89 -= 16;
              }

              while (v87 < *(v90 - 4));
              v86 = v11 + v89 + 16;
LABEL_124:
              *(v86 + 8) = v171;
              *v86 = v163;
              *(v86 + 12) = v87;
            }

            v81 = v85 + 2;
            v84 += 16;
          }

          while (v85 + 2 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v124 = *(a1 + 28);
          v125 = *(a1 + 12);
          a1 = v81;
          if (v124 < v125)
          {
            v173 = *(v81 + 2);
            v167 = *v81;
            v126 = v81;
            do
            {
              v127 = v126;
              v128 = *(v126 - 2);
              v126 -= 2;
              *v127 = v128;
              *(v127 + 5) = *(v127 - 11);
            }

            while (v124 < *(v127 - 20));
            *(v126 + 2) = v173;
            *v126 = v167;
            *(v126 + 12) = v124;
          }

          v81 = a1 + 2;
        }

        while (a1 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v91 = (v12 - 2) >> 1;
        v92 = v91;
        do
        {
          if (v91 >= v92)
          {
            v94 = (2 * (v92 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v95 = &v11[2 * v94];
            if (2 * (v92 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
            {
              v96 = *(v95 + 12);
              v97 = *(v95 + 28);
              v95 += 2 * (v96 < v97);
              if (v96 < v97)
              {
                v94 = 2 * (v92 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v98 = &v11[2 * v92];
            v99 = *(v98 + 12);
            if (*(v95 + 12) >= v99)
            {
              v172 = *(v98 + 2);
              v164 = *v98;
              do
              {
                v100 = v98;
                v98 = v95;
                v101 = *v95;
                *(v100 + 5) = *(v98 + 5);
                *v100 = v101;
                if (v91 < v94)
                {
                  break;
                }

                v102 = (2 * v94) | 1;
                v95 = &v11[2 * v102];
                v103 = 2 * v94 + 2;
                if (v103 < v12)
                {
                  v104 = *(v95 + 12);
                  v105 = *(v95 + 28);
                  v95 += 2 * (v104 < v105);
                  if (v104 < v105)
                  {
                    v102 = v103;
                  }
                }

                v94 = v102;
              }

              while (*(v95 + 12) >= v99);
              *(v98 + 2) = v172;
              *v98 = v164;
              *(v98 + 12) = v99;
            }
          }

          v93 = v92-- <= 0;
        }

        while (!v93);
        do
        {
          v106 = 0;
          result = *v11;
          v165 = *v11;
          v107 = v11;
          do
          {
            v113 = &v107[2 * v106];
            v111 = v113 + 2;
            v114 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 < v12)
            {
              v108 = *(v113 + 28);
              v109 = *(v113 + 44);
              v110 = v113 + 4;
              if (v108 >= v109)
              {
                v106 = v114;
              }

              else
              {
                v111 = v110;
              }
            }

            else
            {
              v106 = v114;
            }

            v112 = *v111;
            *(v107 + 5) = *(v111 + 5);
            *v107 = v112;
            v107 = v111;
          }

          while (v106 <= ((v12 - 2) >> 1));
          a2 -= 2;
          if (v111 == a2)
          {
            *(v111 + 5) = *(v165.n128_i64 + 5);
            *v111 = v165.n128_u64[0];
          }

          else
          {
            v115 = *a2;
            *(v111 + 5) = *(a2 + 5);
            *v111 = v115;
            *(a2 + 5) = *(v165.n128_i64 + 5);
            *a2 = v165.n128_u64[0];
            v116 = (v111 - v11 + 16) >> 4;
            v93 = v116 < 2;
            v117 = v116 - 2;
            if (!v93)
            {
              v118 = v117 >> 1;
              v119 = &v11[2 * (v117 >> 1)];
              v120 = *(v111 + 12);
              if (*(v119 + 12) < v120)
              {
                v136 = *(v111 + 2);
                v133 = *v111;
                do
                {
                  v121 = v111;
                  v111 = v119;
                  v122 = *v119;
                  *(v121 + 5) = *(v111 + 5);
                  *v121 = v122;
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = &v11[2 * v118];
                }

                while (*(v119 + 12) < v120);
                *(v111 + 2) = v136;
                *v111 = v133;
                *(v111 + 12) = v120;
              }
            }
          }

          v93 = v12-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = *(a2 - 4);
    if (v12 < 0x81)
    {
      v17 = *(v11 + 12);
      if (v17 < *(v13 + 12))
      {
        if (v14 < v17)
        {
          result = *v13;
          v138 = *v13;
          v19 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v19;
          goto LABEL_36;
        }

        result = *v13;
        v147 = *v13;
        v32 = *v11;
        *(v13 + 5) = *(v11 + 5);
        *v13 = v32;
        *(v11 + 5) = *(v147.n128_i64 + 5);
        *v11 = v147.n128_u64[0];
        if (*(a2 - 4) < *(v11 + 12))
        {
          result = *v11;
          v138 = *v11;
          v33 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v33;
LABEL_36:
          *(a2 - 11) = *(v138.n128_i64 + 5);
          *v8 = v138.n128_u64[0];
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v14 >= v17)
      {
        goto LABEL_37;
      }

      result = *v11;
      v141 = *v11;
      v22 = *v8;
      *(v11 + 5) = *(a2 - 11);
      *v11 = v22;
      *(a2 - 11) = *(v141.n128_i64 + 5);
      *v8 = v141.n128_u64[0];
      if (*(v11 + 12) >= *(v13 + 12))
      {
        goto LABEL_37;
      }

      result = *v13;
      v142 = *v13;
      v23 = *v11;
      *(v13 + 5) = *(v11 + 5);
      *v13 = v23;
      *(v11 + 5) = *(v142.n128_i64 + 5);
      *v11 = v142.n128_u64[0];
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v34 = *(v11 + 12);
      if (*(v11 - 4) < v34)
      {
        goto LABEL_62;
      }

      v135 = *(v11 + 2);
      v132 = *v11;
      v62 = *(v11 + 12);
      if (v62 >= *(a2 - 4))
      {
        v65 = (v11 + 2);
        do
        {
          v11 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v66 = *(v65 + 12);
          v65 += 16;
        }

        while (v62 >= v66);
      }

      else
      {
        v63 = v11;
        do
        {
          v11 = v63 + 2;
          v64 = *(v63 + 28);
          v63 += 2;
        }

        while (v62 >= v64);
      }

      v67 = a2;
      if (v11 < a2)
      {
        v68 = a2;
        do
        {
          v67 = v68 - 2;
          v69 = *(v68 - 4);
          v68 -= 2;
        }

        while (v62 < v69);
      }

      while (v11 < v67)
      {
        result = *v11;
        v159 = *v11;
        v70 = *v67;
        *(v11 + 5) = *(v67 + 5);
        *v11 = v70;
        *(v67 + 5) = *(v159.n128_i64 + 5);
        *v67 = v159.n128_u64[0];
        do
        {
          v71 = *(v11 + 28);
          v11 += 2;
        }

        while (v62 >= v71);
        do
        {
          v72 = *(v67 - 4);
          v67 -= 2;
        }

        while (v62 < v72);
      }

      v73 = v11 - 2;
      if (v11 - 2 != a1)
      {
        v74 = *v73;
        *(a1 + 5) = *(v11 - 11);
        *a1 = v74;
      }

      a4 = 0;
      *(v11 - 2) = v135;
      *v73 = v132;
      *(v11 - 4) = v62;
    }

    else
    {
      v15 = *(v13 + 12);
      if (v15 >= *(v11 + 12))
      {
        if (v14 < v15)
        {
          v139 = *v13;
          v20 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v20;
          *(a2 - 11) = *(v139.n128_i64 + 5);
          *v8 = v139.n128_u64[0];
          if (*(v13 + 12) < *(v11 + 12))
          {
            v140 = *v11;
            v21 = *v13;
            *(v11 + 5) = *(v13 + 5);
            *v11 = v21;
            *(v13 + 5) = *(v140.n128_i64 + 5);
            *v13 = v140.n128_u64[0];
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          v143 = *v11;
          v24 = *v13;
          *(v11 + 5) = *(v13 + 5);
          *v11 = v24;
          *(v13 + 5) = *(v143.n128_i64 + 5);
          *v13 = v143.n128_u64[0];
          if (*(a2 - 4) >= *(v13 + 12))
          {
            goto LABEL_28;
          }

          v137 = *v13;
          v25 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v25;
        }

        else
        {
          v137 = *v11;
          v16 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v16;
        }

        *(a2 - 11) = *(v137.n128_i64 + 5);
        *v8 = v137.n128_u64[0];
      }

LABEL_28:
      v26 = (v13 - 2);
      v27 = *(v13 - 4);
      v28 = *(a2 - 20);
      if (v27 >= *(v11 + 28))
      {
        if (v28 < v27)
        {
          v145 = *v26;
          v30 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v30;
          *(a2 - 27) = *(v145.n128_i64 + 5);
          *v9 = v145.n128_u64[0];
          if (*(v13 - 4) < *(v11 + 28))
          {
            v146 = *(v11 + 1);
            v31 = v26->n128_u64[0];
            *(v11 + 21) = *(v13 - 11);
            v11[2] = v31;
            *(v13 - 11) = *(&v146 + 5);
            v26->n128_u64[0] = v146;
          }
        }
      }

      else
      {
        if (v28 >= v27)
        {
          v148 = *(v11 + 1);
          v35 = v26->n128_u64[0];
          *(v11 + 21) = *(v13 - 11);
          v11[2] = v35;
          *(v13 - 11) = *(&v148 + 5);
          v26->n128_u64[0] = v148;
          if (*(a2 - 20) >= *(v13 - 4))
          {
            goto LABEL_42;
          }

          v144 = *v26;
          v36 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v36;
        }

        else
        {
          v144 = *(v11 + 1);
          v29 = *v9;
          *(v11 + 21) = *(a2 - 27);
          v11[2] = v29;
        }

        *(a2 - 27) = *(v144.n128_i64 + 5);
        *v9 = v144.n128_u64[0];
      }

LABEL_42:
      v37 = *(v13 + 28);
      v38 = *(a2 - 36);
      if (v37 >= *(v11 + 44))
      {
        if (v38 < v37)
        {
          v150 = *(v13 + 1);
          v40 = *v10;
          *(v13 + 21) = *(a2 - 43);
          v13[2] = v40;
          *(a2 - 43) = *(&v150 + 5);
          *v10 = v150;
          if (*(v13 + 28) < *(v11 + 44))
          {
            v151 = *(v11 + 2);
            v41 = v13[2];
            *(v11 + 37) = *(v13 + 21);
            v11[4] = v41;
            *(v13 + 21) = *(&v151 + 5);
            v13[2] = v151;
          }
        }
      }

      else
      {
        if (v38 >= v37)
        {
          v152 = *(v11 + 2);
          v42 = v13[2];
          *(v11 + 37) = *(v13 + 21);
          v11[4] = v42;
          *(v13 + 21) = *(&v152 + 5);
          v13[2] = v152;
          if (*(a2 - 36) >= HIBYTE(*(&v152 + 5)))
          {
            goto LABEL_51;
          }

          v149 = *(v13 + 1);
          v43 = *v10;
          *(v13 + 21) = *(a2 - 43);
          v13[2] = v43;
        }

        else
        {
          v149 = *(v11 + 2);
          v39 = *v10;
          *(v11 + 37) = *(a2 - 43);
          v11[4] = v39;
        }

        *(a2 - 43) = *(&v149 + 5);
        *v10 = v149;
      }

LABEL_51:
      v44 = *(v13 + 12);
      v45 = *(v13 + 28);
      if (v44 >= *(v13 - 4))
      {
        if (v45 < v44)
        {
          v154 = *v13;
          *v13 = v13[2];
          *(v13 + 5) = *(v13 + 21);
          *(v13 + 21) = *(v154.n128_i64 + 5);
          v13[2] = v154.n128_u64[0];
          if (*(v13 + 12) < *(v13 - 4))
          {
            v155 = *v26;
            v26->n128_u64[0] = *v13;
            *(v13 - 11) = *(v13 + 5);
            *(v13 + 5) = *(v155.n128_i64 + 5);
            *v13 = v155.n128_u64[0];
          }
        }
      }

      else
      {
        if (v45 >= v44)
        {
          v156 = *v26;
          v26->n128_u64[0] = *v13;
          *(v13 - 11) = *(v13 + 5);
          *(v13 + 5) = *(v156.n128_i64 + 5);
          *v13 = v156.n128_u64[0];
          if (*(v13 + 28) >= *(v13 + 12))
          {
            goto LABEL_60;
          }

          v153 = *v13;
          *v13 = v13[2];
          *(v13 + 5) = *(v13 + 21);
        }

        else
        {
          v153 = *v26;
          v26->n128_u64[0] = v13[2];
          *(v13 - 11) = *(v13 + 21);
        }

        *(v13 + 21) = *(v153.n128_i64 + 5);
        v13[2] = v153.n128_u64[0];
      }

LABEL_60:
      result = *v11;
      v157 = *v11;
      v46 = *v13;
      *(v11 + 5) = *(v13 + 5);
      *v11 = v46;
      *(v13 + 5) = *(v157.n128_i64 + 5);
      *v13 = v157.n128_u64[0];
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v34 = *(v11 + 12);
LABEL_62:
      v47 = 0;
      v134 = *(v11 + 2);
      v131 = *v11;
      do
      {
        v48 = BYTE4(v11[v47 + 3]);
        v47 += 2;
      }

      while (v48 < v34);
      v49 = &v11[v47];
      v50 = a2;
      if (v47 == 2)
      {
        v53 = a2;
        while (v49 < v53)
        {
          v51 = v53 - 2;
          v54 = *(v53 - 4);
          v53 -= 2;
          if (v54 < v34)
          {
            goto LABEL_70;
          }
        }

        v51 = v53;
        v11 = v49;
      }

      else
      {
        do
        {
          v51 = v50 - 2;
          v52 = *(v50 - 4);
          v50 -= 2;
        }

        while (v52 >= v34);
LABEL_70:
        v11 = v49;
        if (v49 < v51)
        {
          v55 = v51;
          do
          {
            v158 = *v11;
            v56 = *v55;
            *(v11 + 5) = *(v55 + 5);
            *v11 = v56;
            *(v55 + 5) = *(v158.n128_i64 + 5);
            *v55 = v158.n128_u64[0];
            do
            {
              v57 = *(v11 + 28);
              v11 += 2;
            }

            while (v57 < v34);
            do
            {
              v58 = *(v55 - 4);
              v55 -= 2;
            }

            while (v58 >= v34);
          }

          while (v11 < v55);
        }
      }

      v59 = v11 - 2;
      if (v11 - 2 != a1)
      {
        v60 = *v59;
        *(a1 + 5) = *(v11 - 11);
        *a1 = v60;
      }

      *(v11 - 2) = v134;
      *v59 = v131;
      *(v11 - 4) = v34;
      if (v49 < v51)
      {
        goto LABEL_81;
      }

      v61 = sub_E70B40(a1, v11 - 1);
      if (sub_E70B40(v11, a2))
      {
        a2 = v11 - 2;
        if (!v61)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v61)
      {
LABEL_81:
        result.n128_u64[0] = sub_E6F9A4(a1, v11 - 2, a3, a4 & 1).n128_u64[0];
        a4 = 0;
      }
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v79 = *(v11 + 28);
      v80 = *(v11 + 44);
      if (v79 >= *(v11 + 12))
      {
        if (v80 < v79)
        {
          result = *(v11 + 1);
          v11[2] = v11[4];
          *(v11 + 21) = *(v11 + 37);
          v11[4] = result.n128_u64[0];
          *(v11 + 37) = *&result >> 40;
          if (*(v11 + 28) < *(v11 + 12))
          {
            result = *v11;
            v166 = *v11;
            *v11 = v11[2];
            *(v11 + 5) = *(v11 + 21);
            v11[2] = v166.n128_u64[0];
            *(v11 + 21) = *(v166.n128_i64 + 5);
          }
        }
      }

      else
      {
        if (v80 < v79)
        {
          result = *v11;
          v162 = *v11;
          *v11 = v11[4];
          *(v11 + 5) = *(v11 + 37);
          goto LABEL_180;
        }

        result = *v11;
        v169 = *v11;
        *v11 = v11[2];
        *(v11 + 5) = *(v11 + 21);
        v11[2] = v169.n128_u64[0];
        *(v11 + 21) = *(v169.n128_i64 + 5);
        if (*(v11 + 44) < *(v11 + 28))
        {
          result = *(v11 + 1);
          v162 = result;
          v11[2] = v11[4];
          *(v11 + 21) = *(v11 + 37);
LABEL_180:
          v11[4] = v162.n128_u64[0];
          *(v11 + 37) = *(v162.n128_i64 + 5);
        }
      }

      if (*(a2 - 4) >= *(v11 + 44))
      {
        return result;
      }

      result = *(v11 + 2);
      v130 = *v8;
      *(v11 + 37) = *(a2 - 11);
      v11[4] = v130;
      *(a2 - 11) = *&result >> 40;
      *v8 = result.n128_u64[0];
      if (*(v11 + 44) >= *(v11 + 28))
      {
        return result;
      }

      result = *(v11 + 1);
      v11[2] = v11[4];
      *(v11 + 21) = *(v11 + 37);
      v11[4] = result.n128_u64[0];
      *(v11 + 37) = *&result >> 40;
LABEL_184:
      if (*(v11 + 28) < *(v11 + 12))
      {
        result = *v11;
        v170 = *v11;
        *v11 = v11[2];
        *(v11 + 5) = *(v11 + 21);
        v11[2] = v170.n128_u64[0];
        *(v11 + 21) = *(v170.n128_i64 + 5);
      }

      return result;
    }

    if (v12 == 5)
    {

      result.n128_u64[0] = sub_E708A8(v11, (v11 + 2), v11 + 2, v11 + 3, (a2 - 2)).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v76 = *(v11 + 28);
  v77 = *(a2 - 4);
  if (v76 >= *(v11 + 12))
  {
    if (v77 >= v76)
    {
      return result;
    }

    result = *(v11 + 1);
    v123 = *v8;
    *(v11 + 21) = *(a2 - 11);
    v11[2] = v123;
    *(a2 - 11) = *&result >> 40;
    *v8 = result.n128_u64[0];
    goto LABEL_184;
  }

  if (v77 >= v76)
  {
    result = *v11;
    v168 = *v11;
    *v11 = v11[2];
    *(v11 + 5) = *(v11 + 21);
    v11[2] = v168.n128_u64[0];
    *(v11 + 21) = *(v168.n128_i64 + 5);
    if (*(a2 - 4) >= *(v11 + 28))
    {
      return result;
    }

    result = *(v11 + 1);
    v161 = result;
    v129 = *v8;
    *(v11 + 21) = *(a2 - 11);
    v11[2] = v129;
  }

  else
  {
    result = *v11;
    v161 = *v11;
    v78 = *v8;
    *(v11 + 5) = *(a2 - 11);
    *v11 = v78;
  }

  *(a2 - 11) = *(v161.n128_i64 + 5);
  *v8 = v161.n128_u64[0];
  return result;
}

__n128 sub_E708A8(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = *(a2 + 12);
  v6 = *(a3 + 12);
  if (v5 >= *(a1 + 12))
  {
    if (v6 < v5)
    {
      result = *a2;
      v21 = *a2;
      v9 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v9;
      *(a3 + 5) = *(v21.n128_u64 + 5);
      *a3 = v21.n128_u64[0];
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v22 = *a1;
        v10 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v10;
        *(a2 + 5) = *(v22.n128_u64 + 5);
        *a2 = v22.n128_u64[0];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      v20 = *a1;
      v8 = *(a3 + 5);
      *a1 = *a3;
      *(a1 + 5) = v8;
LABEL_9:
      *(a3 + 5) = *(v20.n128_u64 + 5);
      *a3 = v20.n128_u64[0];
      goto LABEL_10;
    }

    result = *a1;
    v23 = *a1;
    v11 = *(a2 + 5);
    *a1 = *a2;
    *(a1 + 5) = v11;
    *(a2 + 5) = *(v23.n128_u64 + 5);
    *a2 = v23.n128_u64[0];
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v20 = *a2;
      v12 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 12) < *(a3 + 12))
  {
    result = *a3;
    v24 = *a3;
    v13 = *(a4 + 5);
    *a3 = *a4;
    *(a3 + 5) = v13;
    *(a4 + 5) = *(&v24 + 5);
    *a4 = v24;
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v25 = *a2;
      v14 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v14;
      *(a3 + 5) = *(v25.n128_u64 + 5);
      *a3 = v25.n128_u64[0];
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v26 = *a1;
        v15 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v15;
        *(a2 + 5) = *(v26.n128_u64 + 5);
        *a2 = v26.n128_u64[0];
      }
    }
  }

  if (*(a5 + 12) < *(a4 + 12))
  {
    result = *a4;
    v27 = *a4;
    v16 = *(a5 + 5);
    *a4 = *a5;
    *(a4 + 5) = v16;
    *(a5 + 5) = *(&v27 + 5);
    *a5 = v27;
    if (*(a4 + 12) < *(a3 + 12))
    {
      result = *a3;
      v28 = *a3;
      v17 = *(a4 + 5);
      *a3 = *a4;
      *(a3 + 5) = v17;
      *(a4 + 5) = *(&v28 + 5);
      *a4 = v28;
      if (*(a3 + 12) < *(a2 + 12))
      {
        result = *a2;
        v29 = *a2;
        v18 = *(a3 + 5);
        *a2 = *a3;
        *(a2 + 5) = v18;
        *(a3 + 5) = *(v29.n128_u64 + 5);
        *a3 = v29.n128_u64[0];
        if (*(a2 + 12) < *(a1 + 12))
        {
          result = *a1;
          v30 = *a1;
          v19 = *(a2 + 5);
          *a1 = *a2;
          *(a1 + 5) = v19;
          *(a2 + 5) = *(v30.n128_u64 + 5);
          *a2 = v30.n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_E70B40(__int128 *a1, __int128 *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a2 - 1;
      v6 = *(a1 + 28);
      v7 = *(a2 - 4);
      if (v6 < *(a1 + 12))
      {
        if (v7 >= v6)
        {
          v36 = *a1;
          *a1 = *(a1 + 2);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 2) = v36;
          *(a1 + 21) = *(&v36 + 5);
          if (*(a2 - 4) >= *(a1 + 28))
          {
            return 1;
          }

          v28 = a1[1];
          v17 = *(a2 - 11);
          *(a1 + 2) = *v5;
          *(a1 + 21) = v17;
        }

        else
        {
          v28 = *a1;
          v8 = *(a2 - 11);
          *a1 = *v5;
          *(a1 + 5) = v8;
        }

        *(a2 - 11) = *(&v28 + 5);
        *v5 = v28;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v31 = a1[1];
      v16 = *(a2 - 11);
      *(a1 + 2) = *v5;
      *(a1 + 21) = v16;
      *(a2 - 11) = *(&v31 + 5);
      *v5 = v31;
LABEL_49:
      if (*(a1 + 28) < *(a1 + 12))
      {
        v42 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 2) = v42;
        *(a1 + 21) = *(&v42 + 5);
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_E708A8(a1, (a1 + 1), a1 + 2, a1 + 3, (a2 - 1));
        return 1;
      }

      goto LABEL_13;
    }

    v13 = *(a1 + 28);
    v14 = *(a1 + 12);
    v15 = *(a1 + 44);
    if (v13 >= v14)
    {
      if (v15 < v13)
      {
        v34 = a1[1];
        *(a1 + 2) = *(a1 + 4);
        *(a1 + 21) = *(a1 + 37);
        *(a1 + 4) = v34;
        *(a1 + 37) = *(&v34 + 5);
        if (*(a1 + 28) < v14)
        {
          v35 = *a1;
          *a1 = *(a1 + 2);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 2) = v35;
          *(a1 + 21) = *(&v35 + 5);
        }
      }

      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      v39 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 2) = v39;
      *(a1 + 21) = *(&v39 + 5);
      if (v15 >= *(a1 + 28))
      {
        goto LABEL_46;
      }

      v30 = a1[1];
      *(a1 + 2) = *(a1 + 4);
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v30 = *a1;
      *a1 = *(a1 + 4);
      *(a1 + 5) = *(a1 + 37);
    }

    *(a1 + 4) = v30;
    *(a1 + 37) = *(&v30 + 5);
LABEL_46:
    if (*(a2 - 4) >= *(a1 + 44))
    {
      return 1;
    }

    v25 = a2 - 1;
    v40 = a1[2];
    v26 = *(a2 - 11);
    *(a1 + 4) = *(a2 - 2);
    *(a1 + 37) = v26;
    *(v25 + 5) = *(&v40 + 5);
    *v25 = v40;
    if (*(a1 + 44) >= *(a1 + 28))
    {
      return 1;
    }

    v41 = a1[1];
    *(a1 + 2) = *(a1 + 4);
    *(a1 + 21) = *(a1 + 37);
    *(a1 + 4) = v41;
    *(a1 + 37) = *(&v41 + 5);
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) < *(a1 + 12))
    {
      v27 = *a1;
      v3 = *(a2 - 11);
      *a1 = *(a2 - 2);
      *(a1 + 5) = v3;
      *(a2 - 11) = *(&v27 + 5);
      *(a2 - 2) = v27;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 12);
  v12 = *(a1 + 44);
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v32 = a1[1];
      *(a1 + 2) = *v9;
      *(a1 + 21) = *(a1 + 37);
      *v9 = v32;
      *(a1 + 37) = *(&v32 + 5);
      if (*(a1 + 28) < v11)
      {
        v33 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 2) = v33;
        *(a1 + 21) = *(&v33 + 5);
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v37 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 2) = v37;
      *(a1 + 21) = *(&v37 + 5);
      if (v12 >= *(a1 + 28))
      {
        goto LABEL_33;
      }

      v29 = a1[1];
      *(a1 + 2) = *v9;
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v29 = *a1;
      *a1 = *v9;
      *(a1 + 5) = *(a1 + 37);
    }

    *v9 = v29;
    *(a1 + 37) = *(&v29 + 5);
  }

LABEL_33:
  v18 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v22 = *(v18 + 12);
    if (v22 < *(v9 + 12))
    {
      v38 = *v18;
      v43 = *(v18 + 2);
      v23 = v19;
      do
      {
        v24 = a1 + v23;
        *(v24 + 48) = *(a1 + v23 + 32);
        *(v24 + 53) = *(a1 + v23 + 37);
        if (v23 == -32)
        {
          v21 = a1;
          goto LABEL_36;
        }

        v23 -= 16;
      }

      while (v22 < *(v24 + 28));
      v21 = a1 + v23 + 48;
LABEL_36:
      *v21 = v38;
      *(v21 + 8) = v43;
      *(v21 + 12) = v22;
      if (++v20 == 8)
      {
        return v18 + 2 == a2;
      }
    }

    v9 = v18;
    v19 += 16;
    v18 += 2;
    if (v18 == a2)
    {
      return 1;
    }
  }
}

void sub_E71050(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = HIDWORD(a1);
  a3[1] = *a3;
  v4 = a1;
  if (a1)
  {
    sub_351010(a2, a1, a3);
    if (*a3 != a3[1] || !sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v17);
    v7 = sub_4A5C(&v17, "Roads of pathlet ", 17);
    v8 = sub_58200(v7, v4);
    sub_4A5C(v8, ".", 1);
    v9 = std::ostream::operator<<();
    v10 = sub_4A5C(v9, " ", 1);
    v11 = sub_7052C(v10, (v3 & 0x40000000) == 0);
    sub_4A5C(v11, " is_fallback=", 13);
    std::ostream::operator<<();
    sub_4A5C(v7, " could not be used to decode path.", 34);
    if ((v27 & 0x10) != 0)
    {
      v14 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v14 = v23;
      }

      v13 = v22;
      v6 = v14 - v22;
      if (v14 - v22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v6 = 0;
        v16 = 0;
        goto LABEL_30;
      }

      v13 = v20;
      v6 = v21 - v20;
      if ((v21 - v20) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v16 = v6;
    if (!v6)
    {
      goto LABEL_30;
    }

LABEL_29:
    memmove(&__p, v13, v6);
    goto LABEL_30;
  }

  if (!sub_7E7E4(1u))
  {
    return;
  }

  sub_19594F8(&v17);
  sub_4A5C(&v17, "Could not decode pathlet geo ids onto the network.", 50);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v6 = v12 - v22;
    if (v12 - v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_27:
      sub_3244();
    }

LABEL_15:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v16 = v6;
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((v27 & 8) != 0)
  {
    v13 = v20;
    v6 = v21 - v20;
    if ((v21 - v20) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v6 = 0;
  v16 = 0;
LABEL_30:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_E71470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_E714E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v9 = a3;
  v12 = *a1;
  if (a3 < 0)
  {
    a3 = -a3;
  }

  v13 = sub_2D54A0(v12, 22, a3);
  if (!HIDWORD(v13) || v14 != 0)
  {
    return;
  }

  __p = 0;
  v71 = 0;
  v72 = 0;
  *(&v17 + 1) = v13 & 0x3FFFFFFF | ((v9 > 0) << 30);
  *&v17 = v13;
  v16 = v17 >> 32;
  sub_E71050(v16, a1, &__p);
  v18 = __p;
  if (__p == v71)
  {
    *(a4 + 8) = *a4;
    if (v18)
    {
      goto LABEL_94;
    }

    return;
  }

  v75 = v16;
  sub_363ADC((a1 + 487), &v75, v73);
  if (v73[0])
  {
    v19 = *(v74 + 8);
  }

  else
  {
    v19 = sub_363C44(a1, v75);
  }

  v20 = v19 * a5;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    if (v20 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_21:
  v75 = v16;
  sub_363ADC((a1 + 487), &v75, v73);
  if (v73[0])
  {
    v22 = *(v74 + 8);
  }

  else
  {
    v22 = sub_363C44(a1, v75);
  }

  v23 = v22 * a6;
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_29;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_29:
    v23 = (v24 >> 1);
  }

  v25 = v20;
  v27 = __p;
  v26 = v71;
  if (__p == v71)
  {
    v29 = 0;
    goto LABEL_74;
  }

  v28 = 0;
  v29 = 0;
  v67 = v71;
  v68 = v23;
  while (1)
  {
    while (1)
    {
      v30 = *v27;
      v31 = sub_2B51D8(a2, *v27 & 0xFFFFFFFFFFFFLL);
      v32 = (v31 - *v31);
      if (*v32 >= 9u)
      {
        break;
      }

      v33 = 0;
      v34 = v28;
      if (v28 > v25)
      {
        goto LABEL_39;
      }

LABEL_32:
      v29 += v33;
      ++v27;
      v28 = v34;
      if (v27 == v26)
      {
        goto LABEL_74;
      }
    }

    v33 = v32[4];
    if (v33)
    {
      v33 = *(v31 + v33);
    }

    v34 = v33 + v28;
    if (v33 + v28 <= v25)
    {
      goto LABEL_32;
    }

LABEL_39:
    v69 = v29;
    v35 = a2;
    v36 = sub_2B51D8(a2, v30 & 0xFFFFFFFFFFFFLL);
    v37 = (v36 - *v36);
    if (*v37 < 0x1Du)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37[14];
      if (v38)
      {
        v38 = *(v36 + v38);
      }
    }

    v39 = (v30 & 0xFF000000000000) == 0x1000000000000 ? -v38 : v38;
    v41 = *(a4 + 8);
    v40 = *(a4 + 16);
    if (v41 >= v40)
    {
      v43 = *a4;
      v44 = v41 - *a4;
      v45 = (v44 >> 3) + 1;
      if (v45 >> 61)
      {
        sub_1794();
      }

      v46 = v40 - v43;
      if (v46 >> 2 > v45)
      {
        v45 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (!(v47 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v48 = (8 * (v44 >> 3));
      *v48 = v39;
      v42 = v48 + 1;
      memcpy(0, v43, v44);
      *a4 = 0;
      *(a4 + 8) = v42;
      *(a4 + 16) = 0;
      if (v43)
      {
        operator delete(v43);
      }

      a2 = v35;
      v25 = v20;
    }

    else
    {
      *v41 = v39;
      v42 = v41 + 1;
    }

    *(a4 + 8) = v42;
    if (v34 >= v68)
    {
      break;
    }

    v29 = v69;
    v26 = v67;
    ++v27;
    v28 = v34;
    if (v27 == v67)
    {
      goto LABEL_74;
    }
  }

  v49 = sub_2B51D8(a2, v30 & 0xFFFFFFFFFFFFLL);
  v29 = v69;
  v50 = (v49 - *v49);
  v51 = 0.0;
  if (*v50 >= 9u)
  {
    v52 = v50[4];
    if (v52)
    {
      LODWORD(v51) = *(v49 + v52);
      v51 = *&v51;
    }
  }

  v53 = (v68 - v28) / v51 * 1000000000.0;
  if (v53 >= 0.0)
  {
    if (v53 < 4.50359963e15)
    {
      v54 = (v53 + v53) + 1;
LABEL_72:
      v53 = (v54 >> 1);
    }
  }

  else if (v53 > -4.50359963e15)
  {
    v54 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
    goto LABEL_72;
  }

  *(a4 + 28) = v53;
LABEL_74:
  v55 = **a4;
  if (v55 >= 0)
  {
    v56 = **a4;
  }

  else
  {
    v56 = -v55;
  }

  v57 = sub_335D84(a2, v56);
  v58 = v57;
  if (v57)
  {
    v59 = v57 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v59 = 1;
  }

  v60 = v57 & 0xFFFF00000000;
  if (v59)
  {
    v60 = 0;
  }

  if (v57 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v58 = 0;
  }

  v61 = sub_2B51D8(a2, v60 | v58);
  v62 = (v61 - *v61);
  v63 = 0.0;
  if (*v62 >= 9u)
  {
    v64 = v62[4];
    if (v64)
    {
      LODWORD(v63) = *(v61 + v64);
      v63 = *&v63;
    }
  }

  v65 = (v25 - v29) / v63 * 1000000000.0;
  if (v65 >= 0.0)
  {
    if (v65 < 4.50359963e15)
    {
      v66 = (v65 + v65) + 1;
LABEL_92:
      v65 = (v66 >> 1);
    }
  }

  else if (v65 > -4.50359963e15)
  {
    v66 = (v65 + v65) - 1 + (((v65 + v65) - 1) >> 63);
    goto LABEL_92;
  }

  *(a4 + 24) = v65;
  v18 = __p;
  if (__p)
  {
LABEL_94:
    v71 = v18;
    operator delete(v18);
  }
}

void sub_E71A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E71AAC(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = *a1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = sub_2D54A0(v4, 22, v5);
  if (HIDWORD(v6))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return ((v6 & 0x3FFFFFFF | ((a2 > 0) << 30)) << 32) | HIDWORD(v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E71B40(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  sub_363ADC(a1 + 3896, &v5, v4);
  if (v4[0])
  {
    return v4[3][1];
  }

  else
  {
    return sub_363C44(a1, v5);
  }
}

uint64_t sub_E71BA8(uint64_t a1, unint64_t a2)
{
  v2 = sub_2B51D8(a1, a2);
  v3 = (v2 - *v2);
  if (*v3 >= 9u && (v4 = v3[4]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E71BEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v4 = (v3 - *v3);
  if (*v4 < 0x1Du)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[14];
    if (v5)
    {
      v5 = *(v3 + v5);
    }
  }

  if ((a2 & 0xFF000000000000) == 0x1000000000000)
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_E71C4C(double a1)
{
  v1 = a1 * 1000000000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      return (v2 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v2 >> 1);
  }

  return v1;
}

uint64_t sub_E71CB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v3 = sub_335D84(a1, a2);
  v4 = v3 > 0xFFFFFFFEFFFFFFFFLL;
  if (!v3)
  {
    v4 = 1;
  }

  if (v3 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 < 1 || v4;
  v7 = 0x1000000000000;
  if (!v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 & 0xFFFF00000000;
  }

  return v8 | v5 | v7;
}

void sub_E71D24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v7 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v8 = *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 64);
  v9 = *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 72);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0x3B9ACA0000000000;
  if (v8 < 1.0 && v8 >= 0.0 && v9 > 0.0 && v9 <= 1.0)
  {
    v11 = *(v6 + 24);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(v7 + 40))
    {
      v12 = sub_3B1AF0(a2);
      v13 = sub_3AF6B4(a2);
      if (*(v7 + 40) == 1)
      {
        sub_E714E8(v12, v13, **(v7 + 48), a3, v8, v9);
        return;
      }

      v14 = 0;
      v84 = 0uLL;
      v85 = 0;
      v15 = **(v7 + 48);
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_109;
      }

      if (v15 >= 0)
      {
        v16 = **(v7 + 48);
      }

      else
      {
        v16 = -v15;
      }

      v17 = sub_2D54A0(*v12, 22, v16);
      if (HIDWORD(v17))
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
LABEL_108:
        v14 = v84;
LABEL_109:
        if (v14)
        {
          *(&v84 + 1) = v14;
          operator delete(v14);
        }

        return;
      }

      *(&v21 + 1) = v17 & 0x3FFFFFFF | ((v15 > 0) << 30);
      *&v21 = v17;
      v20 = v21 >> 32;
      __p[0] = v20;
      sub_363ADC((v12 + 487), __p, v83);
      if (v83[0])
      {
        v22 = v83[3][1];
      }

      else
      {
        v22 = sub_363C44(v12, __p[0]);
      }

      v23 = v8 * v22;
      if (v23 >= 0.0)
      {
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_33;
        }

        v24 = (v23 + v23) + 1;
      }

      else
      {
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_33;
        }

        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v23 = (v24 >> 1);
LABEL_33:
      sub_E71050(v20, v12, &v84);
      if (v84 != *(&v84 + 1))
      {
        v25 = sub_E71B40(v12, v20);
        v26 = v23;
        v80 = *(&v84 + 1);
        v27 = v84;
        if (v25 != v23 || v8 == 0.0)
        {
          v78 = v12;
          if (v84 == *(&v84 + 1))
          {
            v30 = 0;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            do
            {
              while (1)
              {
                v31 = *v27;
                v32 = sub_2B51D8(v13, *v27 & 0xFFFFFFFFFFFFLL);
                v33 = (v32 - *v32);
                if (*v33 < 9u)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = v33[4];
                  if (v34)
                  {
                    v34 = *(v32 + v34);
                  }
                }

                v29 += v34;
                if (v29 > v26)
                {
                  break;
                }

                v30 += v34;
                if (++v27 == v80)
                {
                  goto LABEL_73;
                }
              }

              v79 = v29;
              v35 = v30;
              v36 = sub_2B51D8(v13, v31 & 0xFFFFFFFFFFFFLL);
              v37 = (v36 - *v36);
              if (*v37 < 0x1Du)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37[14];
                if (v38)
                {
                  v38 = *(v36 + v38);
                }
              }

              if ((v31 & 0xFF000000000000) == 0x1000000000000)
              {
                v39 = -v38;
              }

              else
              {
                v39 = v38;
              }

              v41 = *(a3 + 8);
              v40 = *(a3 + 16);
              if (v41 >= v40)
              {
                v43 = *a3;
                v44 = v41 - *a3;
                v45 = v44 >> 3;
                v46 = (v44 >> 3) + 1;
                if (v46 >> 61)
                {
                  sub_1794();
                }

                v47 = v40 - v43;
                if (v47 >> 2 > v46)
                {
                  v46 = v47 >> 2;
                }

                if (v47 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v48 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (!(v48 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v45) = v39;
                v42 = 8 * v45 + 8;
                memcpy(0, v43, v44);
                *a3 = 0;
                *(a3 + 8) = v42;
                *(a3 + 16) = 0;
                if (v43)
                {
                  operator delete(v43);
                }
              }

              else
              {
                *v41 = v39;
                v42 = (v41 + 1);
              }

              v30 = v35;
              v29 = v79;
              *(a3 + 8) = v42;
              ++v27;
            }

            while (v27 != v80);
          }

LABEL_73:
          v49 = sub_E71CB4(v13, **a3);
          v50 = v78;
          v51 = sub_E71BA8(v13, v49 & 0xFFFFFFFFFFFFLL);
          *(a3 + 24) = sub_E71C4C((v26 - v30) / v51);
          v52 = *(v7 + 40);
          if (v52 <= 2)
          {
            v53 = 2;
          }

          else
          {
            v53 = *(v7 + 40);
          }

          v54 = (v53 - 1);
          if (v53 != 2)
          {
            v62 = 1;
            while (1)
            {
              v63 = *(v7 + 48);
              v64 = *(v63 + 8 * v62);
              if (v64 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_107;
              }

              v65 = v64 >= 0 ? *(v63 + 8 * v62) : -v64;
              v66 = sub_2D54A0(*v50, 22, v65);
              if (!HIDWORD(v66) || v67 != 0)
              {
                goto LABEL_107;
              }

              *(&v69 + 1) = v66 & 0x3FFFFFFF | ((v64 > 0) << 30);
              *&v69 = v66;
              sub_E71050(v69 >> 32, v50, &v84);
              v70 = *(&v84 + 1);
              v71 = v84;
              if (v84 == *(&v84 + 1))
              {
                goto LABEL_107;
              }

              v83[0] = a3;
              do
              {
                v72 = *v71;
                v73 = sub_2B51D8(v13, *v71 & 0xFFFFFFFFFFFFLL);
                v74 = (v73 - *v73);
                if (*v74 < 0x1Du)
                {
                  v75 = 0;
                }

                else
                {
                  v75 = v74[14];
                  if (v75)
                  {
                    v75 = *(v73 + v75);
                  }
                }

                if ((v72 & 0xFF000000000000) == 0x1000000000000)
                {
                  v75 = -v75;
                }

                __p[0] = v75;
                sub_A2324(v83, __p);
                ++v71;
              }

              while (v71 != v70);
              ++v62;
              v50 = v78;
              if (v62 == v54)
              {
                v52 = *(v7 + 40);
                break;
              }
            }
          }

          v55 = sub_E71AAC(v50, *(*(v7 + 48) + 8 * v52 - 8));
          if (!v55)
          {
            goto LABEL_107;
          }

          v83[0] = sub_E71B40(v50, v55);
          v56 = sub_315004(v83, v9);
          sub_E71050(v55, v50, &v84);
          v58 = *(&v84 + 1);
          v57 = v84;
          if (v84 == *(&v84 + 1))
          {
            goto LABEL_107;
          }

          if (v56)
          {
            v59 = 0;
            while (1)
            {
              v60 = *v57;
              v61 = sub_E71BA8(v13, *v57 & 0xFFFFFFFFFFFFLL);
              v83[0] = sub_E71BEC(v13, v60);
              sub_7125C0(a3, v83);
              if (v61 + v59 >= v56)
              {
                break;
              }

              ++v57;
              v59 += v61;
              if (v57 == v58)
              {
                goto LABEL_108;
              }
            }

            v77 = sub_E71BA8(v13, v60 & 0xFFFFFFFFFFFFLL);
            *(a3 + 28) = sub_E71C4C((v56 - v59) / v77);
            goto LABEL_108;
          }

          if (!sub_7E7E4(1u))
          {
            goto LABEL_107;
          }

          sub_19594F8(v83);
          sub_4A5C(v83, "Destination fraction of ", 24);
          v76 = std::ostream::operator<<();
          sub_4A5C(v76, " would have required sub-centimeter resolution.", 47);
          sub_1959680(v83, __p);
          sub_7E854(__p, 1u);
          goto LABEL_39;
        }

        if (v84 != *(&v84 + 1) && sub_7E7E4(1u))
        {
          sub_19594F8(v83);
          sub_4A5C(v83, "Origin fraction of ", 19);
          v28 = std::ostream::operator<<();
          sub_4A5C(v28, " would have required sub-centimeter resolution.", 47);
          sub_1959680(v83, __p);
          sub_7E854(__p, 1u);
LABEL_39:
          if (v82 < 0)
          {
            operator delete(__p[0]);
          }

          sub_1959728(v83);
        }
      }

LABEL_107:
      *(a3 + 8) = *a3;
      goto LABEL_108;
    }
  }
}

void sub_E72674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v22 = *(v20 - 144);
  if (v22)
  {
    *(v20 - 136) = v22;
    operator delete(v22);
    v23 = *v19;
    if (!*v19)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v23 = *v19;
    if (!*v19)
    {
      goto LABEL_5;
    }
  }

  *(v19 + 8) = v23;
  operator delete(v23);
  _Unwind_Resume(a1);
}

void sub_E72784(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E728B8(a1, a2);
  sub_E72BA4(a1, a2, v12);
  v7 = sub_E72EB8(a1, a2);
  sub_E7303C(a1, __p);
  v8 = *(a1 + 360);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E7285C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E728B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 360))
  {
    v3 = *(a1 + 360);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10;
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E72B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E72BA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *(a1 + 360);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E72E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E72EB8(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 336))
  {
    v4 = *(a1 + 336);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E728B8(a1, a2);
  }

  if (!v7)
  {
    return sub_E728B8(a1, a2);
  }

  return v7;
}

void sub_E73010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E7303C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 360);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E73328(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E73354(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E73488(a1, a2);
  sub_E73774(a1, a2, v12);
  v7 = sub_E73A88(a1, a2);
  sub_E73C0C(a1, __p);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E7342C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E73488(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 320))
  {
    v3 = *(a1 + 320);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10;
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E736EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E73774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *(a1 + 320);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E73A54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E73A88(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E73488(a1, a2);
  }

  if (!v7)
  {
    return sub_E73488(a1, a2);
  }

  return v7;
}

void sub_E73BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E73C0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 320);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E73EF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E73F24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E74058(a1, a2);
  sub_E74344(a1, a2, v12);
  v7 = sub_E74658(a1, a2);
  sub_E747DC(a1, __p);
  v8 = *(a1 + 136);
  if (!v8)
  {
    v8 = &off_2776700;
  }

  v9 = v8[16];
  v10 = v8[25];
  if (!v10)
  {
    v10 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v12, v7, __p, (v9 & 0xFFFFFFFFFFFFFFFELL), *(v10 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_E73FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E74058(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    v3 = *(a1 + 136);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10;
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E742BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E742DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E742F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E74344(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *(a1 + 136);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E74624(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E74658(uint64_t a1, uint64_t a2)
{
  v4 = &off_2772E28;
  if (*(a1 + 152))
  {
    v4 = *(a1 + 152);
  }

  v5 = v4[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    sub_325C(v15, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v16 = *(v5 + 16);
    *v15 = v6;
  }

  sub_5275EC(&__p, v15, 1uLL);
  v7 = sub_E7DD9C(&__p);
  v8 = __p;
  if (__p)
  {
    v9 = v14;
    v10 = __p;
    if (v14 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
    if (v7)
    {
      return v7;
    }

    return sub_E74058(a1, a2);
  }

  if (!v7)
  {
    return sub_E74058(a1, a2);
  }

  return v7;
}

void sub_E747B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E747DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E74AC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E74AF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 41) & 1) != 0 && (*(*(a1 + 360) + 263))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v2 = *(a1 + 192);
    if (v2)
    {
      v3 = (v2 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      v127 = &v3[v4];
      do
      {
        while (1)
        {
          v5 = *v3;
          v129 = v3;
          if (*(*v3 + 23) < 0)
          {
            sub_325C(&v138, *v5, *(v5 + 1));
          }

          else
          {
            v6 = *v5;
            v138.__r_.__value_.__r.__words[2] = *(v5 + 2);
            *&v138.__r_.__value_.__l.__data_ = v6;
          }

          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          v8 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v10 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          v11 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v138.__r_.__value_.__r.__words[2]) : v138.__r_.__value_.__l.__size_;
          v12 = byte_27BA60F >= 0 ? &qword_27BA5F8 : qword_27BA5F8;
          v13 = byte_27BA60F >= 0 ? byte_27BA60F : unk_27BA600;
          if (v13)
          {
            break;
          }

LABEL_48:
          v26 = v129;
LABEL_49:
          sub_148E0(&v138, 0, v13);
LABEL_50:
          sub_59E948(a2, &v138);
LABEL_269:
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_270;
          }

LABEL_9:
          v3 = v26 + 1;
          if (v3 == v127)
          {
            return;
          }
        }

        v126 = v138.__r_.__value_.__r.__words[0];
        v14 = v10 + v11;
        if (v11 >= v13)
        {
          v20 = *v12;
          v21 = v11;
          v22 = v10;
          do
          {
            v23 = v21 - v13;
            if (v23 == -1)
            {
              break;
            }

            v24 = memchr(v22, v20, v23 + 1);
            if (!v24)
            {
              break;
            }

            v25 = v24;
            if (!memcmp(v24, v12, v13))
            {
              if (v25 == v14 || v25 - v10 == -1)
              {
                break;
              }

              if (v8 < 0)
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                v138.__r_.__value_.__l.__size_ = 0;
                *v126 = 0;
              }

              else
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                *(&v138.__r_.__value_.__s + 23) = 0;
                v138.__r_.__value_.__s.__data_[0] = 0;
              }

              goto LABEL_50;
            }

            v22 = (v25 + 1);
            v21 = v14 - (v25 + 1);
          }

          while (v21 >= v13);
        }

        if (v11 >= 20)
        {
          v15 = v11;
          v16 = v10;
          do
          {
            v17 = memchr(v16, 86, v15 - 19);
            if (!v17)
            {
              break;
            }

            if (*v17 == 0x52656C6261746F56 && *(v17 + 1) == 0x6469636E4964616FLL && *(v17 + 4) == 1601465957)
            {
              if (v17 != v14 && v17 - v10 != -1)
              {
                v13 = 20;
                goto LABEL_48;
              }

              break;
            }

            v16 = (v17 + 1);
            v15 = v14 - v16;
          }

          while (v14 - v16 >= 20);
          if (v11 >= 22)
          {
            v27 = v11;
            v28 = v10;
            do
            {
              v29 = memchr(v28, 73, v27 - 21);
              if (!v29)
              {
                break;
              }

              if (*v29 == 0x746E656469636E49 && *(v29 + 1) == 0x676E697375614373 && *(v29 + 14) == 0x5F79616C6544676ELL)
              {
                if (v29 != v14 && v29 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0x16uLL);
                  v26 = v129;
                  sub_59E950(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v28 = (v29 + 1);
              v27 = v14 - v28;
            }

            while (v14 - v28 >= 22);
          }
        }

        if (v11 >= 13)
        {
          v32 = v11;
          v33 = v10;
          do
          {
            v34 = memchr(v33, 65, v32 - 12);
            if (!v34)
            {
              break;
            }

            if (*v34 == 0x69636E4961657241 && *(v34 + 5) == 0x5F746E656469636ELL)
            {
              if (v34 != v14 && v34 - v10 != -1)
              {
                sub_148E0(&v138, 0, 0xDuLL);
                v26 = v129;
                sub_59E95C(a2, &v138);
                goto LABEL_269;
              }

              break;
            }

            v33 = (v34 + 1);
            v32 = v14 - v33;
          }

          while (v14 - v33 >= 13);
          if (v11 >= 15)
          {
            v36 = v10;
            do
            {
              v37 = memchr(v36, 67, v11 - 14);
              if (!v37)
              {
                break;
              }

              if (*v37 == 0x69747365676E6F43 && *(v37 + 7) == 0x5F656E6F5A6E6F69)
              {
                if (v37 != v14 && v37 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0xFuLL);
                  v26 = v129;
                  sub_59E968(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v36 = (v37 + 1);
              v11 = v14 - v36;
            }

            while (v14 - v36 >= 15);
          }
        }

        if (byte_27BA5AF < 0)
        {
          sub_325C(&v136, xmmword_27BA598, *(&xmmword_27BA598 + 1));
          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v40 = v138.__r_.__value_.__r.__words[0];
          v39 = byte_27BA5AF;
          LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        }

        else
        {
          v39 = byte_27BA5AF;
          v136 = xmmword_27BA598;
          v137 = unk_27BA5A8;
          v40 = v126;
        }

        if ((v8 & 0x80u) == 0)
        {
          v41 = &v138;
        }

        else
        {
          v41 = v40;
        }

        if ((v8 & 0x80u) == 0)
        {
          v42 = v7;
        }

        else
        {
          v42 = size;
        }

        if ((v39 & 0x80u) == 0)
        {
          v43 = &xmmword_27BA598;
        }

        else
        {
          v43 = xmmword_27BA598;
        }

        if ((v39 & 0x80u) == 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = *(&xmmword_27BA598 + 1);
        }

        if (!v44)
        {
          v26 = v129;
LABEL_171:
          if (v137 >= 0)
          {
            v72 = HIBYTE(v137);
          }

          else
          {
            v72 = *(&v136 + 1);
          }

          if ((v8 & 0x80) != 0)
          {
            if (v72 != -1)
            {
              goto LABEL_178;
            }

            v138.__r_.__value_.__l.__size_ = 0;
            *v138.__r_.__value_.__l.__data_ = 0;
          }

          else
          {
            if (v72 == -1)
            {
              *(&v138.__r_.__value_.__s + 23) = 0;
              v138.__r_.__value_.__s.__data_[0] = 0;
              goto LABEL_179;
            }

LABEL_178:
            sub_148E0(&v138, 0, v72);
          }

LABEL_179:
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v138;
          }

          else
          {
            v73 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v138.__r_.__value_.__l.__size_;
          }

          v75 = v73 + v74;
          if (v74 >= 1)
          {
            v76 = v74;
            v77 = v73;
            do
            {
              v78 = memchr(v77, 95, v76);
              if (!v78)
              {
                break;
              }

              if (*v78 == 95)
              {
                goto LABEL_191;
              }

              v77 = (v78 + 1);
              v76 = v75 - v77;
            }

            while (v75 - v77 > 0);
          }

          v78 = v73 + v74;
LABEL_191:
          if (v78 == v75)
          {
            v79 = -1;
          }

          else
          {
            v79 = v78 - v73;
          }

          if (v74 >= v79)
          {
            v80 = v79;
          }

          else
          {
            v80 = v74;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v80 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v80;
          if (v80)
          {
            memmove(&__dst, v73, v80);
          }

          __dst.__r_.__value_.__s.__data_[v80] = 0;
          v81 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          p_dst = __dst.__r_.__value_.__r.__words[0];
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __dst.__r_.__value_.__l.__size_;
          }

          if (v81)
          {
            while (1)
            {
              v83 = p_dst->__r_.__value_.__s.__data_[0];
              if (v83 < 0 || (_DefaultRuneLocale.__runetype[v83] & 0x400) == 0)
              {
                break;
              }

              p_dst = (p_dst + 1);
              if (!--v81)
              {
                goto LABEL_211;
              }
            }

            if (!sub_7E7E4(1u))
            {
LABEL_252:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

              goto LABEL_253;
            }

            sub_19594F8(&v133);
            v87 = sub_4A5C(&v133, "Got a tbr corrupted x coordinate: ", 34);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &__dst;
            }

            else
            {
              v88 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = __dst.__r_.__value_.__l.__size_;
            }

            v90 = sub_4A5C(v87, v88, v89);
            v91 = sub_4A5C(v90, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v138;
            }

            else
            {
              v92 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v138.__r_.__value_.__l.__size_;
            }

            sub_4A5C(v91, v92, v93);
            sub_1959680(&v133, &__str);
            sub_7E854(&__str, 1u);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              sub_1959728(&v133);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

LABEL_253:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_268;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            sub_1959728(&v133);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          else
          {
LABEL_211:
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v84 = v138.__r_.__value_.__l.__size_;
            }

            sub_E75AF0(&v138, v79 + 1, v84, &__str);
            if (sub_E75BF4(&__str))
            {
              v85 = std::stod(&__dst, 0);
              LODWORD(v86) = std::stod(&__str, 0);
              if (v86 >= 0xFFFFFFFE)
              {
                v86 = 4294967294;
              }

              else
              {
                v86 = v86;
              }

              v133 = v85 | (v86 << 32);
              v134 = 0x7FFFFFFF;
              sub_59E980(a2, &v133);
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v133);
              v94 = sub_4A5C(&v133, "Got a tbr corrupted y coordinate: ", 34);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v96 = __str.__r_.__value_.__l.__size_;
              }

              v97 = sub_4A5C(v94, p_str, v96);
              v98 = sub_4A5C(v97, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v99 = &v138;
              }

              else
              {
                v99 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v100 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v100 = v138.__r_.__value_.__l.__size_;
              }

              sub_4A5C(v98, v99, v100);
              sub_1959680(&v133, __p);
              sub_7E854(__p, 1u);
              if (v131 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(&v133);
            }

            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_252;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          goto LABEL_268;
        }

        v45 = v41 + v42;
        v26 = v129;
        if (v42 >= v44)
        {
          v53 = *v43;
          v54 = v42;
          v55 = v41;
          do
          {
            v56 = v54 - v44;
            if (v56 == -1)
            {
              break;
            }

            v57 = memchr(v55, v53, v56 + 1);
            if (!v57)
            {
              break;
            }

            v58 = v57;
            if (!memcmp(v57, v43, v44))
            {
              if (v58 == v45 || v58 - v41 == -1)
              {
                break;
              }

              goto LABEL_171;
            }

            v55 = (v58 + 1);
            v54 = v45 - (v58 + 1);
          }

          while (v54 >= v44);
        }

        v46 = byte_27BA5F7;
        v47 = xmmword_27BA5E0;
        if (byte_27BA5F7 >= 0)
        {
          v48 = &xmmword_27BA5E0;
        }

        else
        {
          v48 = xmmword_27BA5E0;
        }

        if (byte_27BA5F7 >= 0)
        {
          v49 = byte_27BA5F7;
        }

        else
        {
          v49 = *(&xmmword_27BA5E0 + 1);
        }

        if (v49)
        {
          if (v42 >= v49)
          {
            v59 = *v48;
            v60 = v41;
            do
            {
              if (v42 - v49 == -1)
              {
                break;
              }

              v61 = memchr(v60, v59, v42 - v49 + 1);
              if (!v61)
              {
                break;
              }

              v50 = v61;
              if (!memcmp(v61, v48, v49))
              {
                goto LABEL_121;
              }

              v60 = (v50 + 1);
              v42 = v45 - (v50 + 1);
            }

            while (v42 >= v49);
          }

          v50 = v45;
LABEL_121:
          v52 = v50 == v45 || v50 - v41 == -1;
          if (SHIBYTE(v137) < 0)
          {
LABEL_139:
            sub_13B38(&v136, v48, v49);
            v26 = v129;
            goto LABEL_147;
          }
        }

        else
        {
          v52 = 0;
          if (SHIBYTE(v137) < 0)
          {
            goto LABEL_139;
          }
        }

        if (v46 < 0)
        {
          sub_13A68(&v136, v47, *(&v47 + 1));
        }

        else
        {
          v136 = xmmword_27BA5E0;
          v137 = unk_27BA5F0;
        }

        v26 = v129;
LABEL_147:
        v62 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        if (!v52)
        {
          goto LABEL_171;
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v138;
        }

        else
        {
          v63 = v138.__r_.__value_.__r.__words[0];
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v62 = v138.__r_.__value_.__l.__size_;
        }

        if (byte_27BA7D7 >= 0)
        {
          v64 = &qword_27BA7C0;
        }

        else
        {
          v64 = qword_27BA7C0;
        }

        if (byte_27BA7D7 >= 0)
        {
          v65 = byte_27BA7D7;
        }

        else
        {
          v65 = unk_27BA7C8;
        }

        if (!v65)
        {
LABEL_267:
          std::string::erase(&v138, 0, v65);
          sub_59E974(a2, &v138);
          goto LABEL_268;
        }

        if (v62 >= v65)
        {
          v66 = v63 + v62;
          v67 = *v64;
          v68 = v63;
          do
          {
            v69 = v62 - v65;
            if (v69 == -1)
            {
              break;
            }

            v70 = memchr(v68, v67, v69 + 1);
            if (!v70)
            {
              break;
            }

            v71 = v70;
            if (!memcmp(v70, v64, v65))
            {
              if (v71 == v66 || v71 - v63 == -1)
              {
                break;
              }

              goto LABEL_267;
            }

            v68 = (v71 + 1);
            v62 = v66 - (v71 + 1);
          }

          while (v62 >= v65);
        }

        if (sub_6B93C(&v138, "EVDisconnect_", 0) != -1)
        {
          sub_59E98C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVReconnect_", 0) != -1)
        {
          sub_59E99C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVTowingNotSupported_", 0) != -1)
        {
          sub_59E9AC(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "NACS_ADAPTER_REQUIRED_", 0) != -1)
        {
          sub_59E9B8(a2);
          goto LABEL_268;
        }

        __dst.__r_.__value_.__s.__data_[0] = 0;
        v101 = byte_27BA78F;
        if (byte_27BA78F >= 0)
        {
          v102 = byte_27BA78F;
        }

        else
        {
          v102 = qword_27BA780;
        }

        v103 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v138.__r_.__value_.__l.__size_;
        }

        if (v104 >= v102 && ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v105 = &v138) : (v105 = v138.__r_.__value_.__r.__words[0]), (v106 = qword_27BA778, byte_27BA78F >= 0) ? (v107 = &qword_27BA778) : (v107 = qword_27BA778), !memcmp(v105, v107, v102)))
        {
          if (v101 >= 0)
          {
            v121 = &qword_27BA778;
          }

          else
          {
            v121 = v106;
          }

          v122 = sub_E75C48(&__dst, v121, v102, &v138);
          if (v122 != 0x7FFFFFFF)
          {
LABEL_326:
            v133 = v122 | 0x7FFFFFFF00000000;
            LOWORD(v134) = 0;
            sub_59E9C4(a2, &v133);
          }
        }

        else
        {
          v108 = byte_27BA7A7;
          if (byte_27BA7A7 >= 0)
          {
            v109 = byte_27BA7A7;
          }

          else
          {
            v109 = qword_27BA798;
          }

          if (v104 >= v109 && (v103 >= 0 ? (v110 = &v138) : (v110 = v138.__r_.__value_.__r.__words[0]), (v111 = qword_27BA790, byte_27BA7A7 >= 0) ? (v112 = &qword_27BA790) : (v112 = qword_27BA790), !memcmp(v110, v112, v109)))
          {
            if (v108 >= 0)
            {
              v123 = &qword_27BA790;
            }

            else
            {
              v123 = v111;
            }

            v124 = sub_E75C48(&__dst, v123, v109, &v138);
            if (v124 != 0x7FFFFFFF)
            {
              LODWORD(v133) = 0x7FFFFFFF;
              HIDWORD(v133) = v124;
              LOWORD(v134) = 0;
              sub_59E9C4(a2, &v133);
            }
          }

          else
          {
            v113 = byte_27BA777;
            if (byte_27BA777 >= 0)
            {
              v114 = byte_27BA777;
            }

            else
            {
              v114 = qword_27BA768;
            }

            if (v104 >= v114 && (v103 >= 0 ? (v115 = &v138) : (v115 = v138.__r_.__value_.__r.__words[0]), (v116 = qword_27BA760, byte_27BA777 >= 0) ? (v117 = &qword_27BA760) : (v117 = qword_27BA760), !memcmp(v115, v117, v114)))
            {
              if (v113 >= 0)
              {
                v125 = &qword_27BA760;
              }

              else
              {
                v125 = v116;
              }

              v122 = sub_E75C48(&__dst, v125, v114, &v138);
              if (v122 != 0x7FFFFFFF)
              {
                goto LABEL_326;
              }
            }

            else
            {
              if (byte_27BA7BF >= 0)
              {
                v118 = byte_27BA7BF;
              }

              else
              {
                v118 = qword_27BA7B0;
              }

              if (v104 >= v118)
              {
                if (v103 >= 0)
                {
                  v119 = &v138;
                }

                else
                {
                  v119 = v138.__r_.__value_.__r.__words[0];
                }

                if (byte_27BA7BF >= 0)
                {
                  v120 = &qword_27BA7A8;
                }

                else
                {
                  v120 = qword_27BA7A8;
                }

                if (!memcmp(v119, v120, v118))
                {
                  v133 = 0x8000000080000000;
                  LOWORD(v134) = 1;
                  sub_59E9C4(a2, &v133);
                }
              }
            }
          }
        }

LABEL_268:
        if ((SHIBYTE(v137) & 0x80000000) == 0)
        {
          goto LABEL_269;
        }

        operator delete(v136);
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_270:
        operator delete(v138.__r_.__value_.__l.__data_);
        v3 = v26 + 1;
      }

      while (v3 != v127);
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 248) = 0;
    *(a2 + 240) = 0;
  }
}

void sub_E75984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
    if (*(v25 - 105) < 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v25 - 105) < 0)
  {
LABEL_6:
    operator delete(*(v25 - 128));
    sub_52861C(a11);
    _Unwind_Resume(a1);
  }

  sub_52861C(a11);
  _Unwind_Resume(a1);
}

void sub_E75AE0()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0xE75AC8);
  }

  JUMPOUT(0xE75A70);
}

void *sub_E75AF0@<X0>(void *result@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  v6 = *(result + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= a2)
    {
      v7 = v6 - a2;
      if (v7 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v7;
      }

      if (v8 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_7;
      }

LABEL_17:
      sub_3244();
    }

LABEL_18:
    sub_49D4();
  }

  v9 = result[1];
  if (v9 < a2)
  {
    goto LABEL_18;
  }

  v4 = *result;
  v10 = v9 - a2;
  if (v10 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v10;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v8;
  if (v8)
  {
    result = memmove(a4, v4 + a2, v8);
    *(a4 + v8) = 0;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_E75BF4(char *a1)
{
  v1 = a1[23];
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v2;
    if (v3 < 0 || (_DefaultRuneLocale.__runetype[v3] & 0x400) == 0)
    {
      break;
    }

    ++v2;
    if (!--v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_E75C48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    if (a3 == -1)
    {
      v6 = *a4;
      *(a4 + 8) = 0;
      *v6 = 0;
      return sub_92B264(a4);
    }

    goto LABEL_5;
  }

  if (a3 != -1)
  {
LABEL_5:
    sub_148E0(a4, 0, a3);
    return sub_92B264(a4);
  }

  *(a4 + 23) = 0;
  *a4 = 0;
  return sub_92B264(a4);
}

uint64_t sub_E75CB0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0x7FFFFFFFLL;
}

void sub_E75CC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40) & 0x80) != 0 && (*(*(a1 + 320) + 263))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v2 = *(a1 + 136);
    if (v2)
    {
      v3 = (v2 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 128);
    if (v4)
    {
      v127 = &v3[v4];
      do
      {
        while (1)
        {
          v5 = *v3;
          v129 = v3;
          if (*(*v3 + 23) < 0)
          {
            sub_325C(&v138, *v5, *(v5 + 1));
          }

          else
          {
            v6 = *v5;
            v138.__r_.__value_.__r.__words[2] = *(v5 + 2);
            *&v138.__r_.__value_.__l.__data_ = v6;
          }

          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          v8 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v10 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          v11 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v138.__r_.__value_.__r.__words[2]) : v138.__r_.__value_.__l.__size_;
          v12 = byte_27BA60F >= 0 ? &qword_27BA5F8 : qword_27BA5F8;
          v13 = byte_27BA60F >= 0 ? byte_27BA60F : unk_27BA600;
          if (v13)
          {
            break;
          }

LABEL_48:
          v26 = v129;
LABEL_49:
          sub_148E0(&v138, 0, v13);
LABEL_50:
          sub_59E948(a2, &v138);
LABEL_269:
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_270;
          }

LABEL_9:
          v3 = v26 + 1;
          if (v3 == v127)
          {
            return;
          }
        }

        v126 = v138.__r_.__value_.__r.__words[0];
        v14 = v10 + v11;
        if (v11 >= v13)
        {
          v20 = *v12;
          v21 = v11;
          v22 = v10;
          do
          {
            v23 = v21 - v13;
            if (v23 == -1)
            {
              break;
            }

            v24 = memchr(v22, v20, v23 + 1);
            if (!v24)
            {
              break;
            }

            v25 = v24;
            if (!memcmp(v24, v12, v13))
            {
              if (v25 == v14 || v25 - v10 == -1)
              {
                break;
              }

              if (v8 < 0)
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                v138.__r_.__value_.__l.__size_ = 0;
                *v126 = 0;
              }

              else
              {
                v26 = v129;
                if (v13 != -1)
                {
                  goto LABEL_49;
                }

                *(&v138.__r_.__value_.__s + 23) = 0;
                v138.__r_.__value_.__s.__data_[0] = 0;
              }

              goto LABEL_50;
            }

            v22 = (v25 + 1);
            v21 = v14 - (v25 + 1);
          }

          while (v21 >= v13);
        }

        if (v11 >= 20)
        {
          v15 = v11;
          v16 = v10;
          do
          {
            v17 = memchr(v16, 86, v15 - 19);
            if (!v17)
            {
              break;
            }

            if (*v17 == 0x52656C6261746F56 && *(v17 + 1) == 0x6469636E4964616FLL && *(v17 + 4) == 1601465957)
            {
              if (v17 != v14 && v17 - v10 != -1)
              {
                v13 = 20;
                goto LABEL_48;
              }

              break;
            }

            v16 = (v17 + 1);
            v15 = v14 - v16;
          }

          while (v14 - v16 >= 20);
          if (v11 >= 22)
          {
            v27 = v11;
            v28 = v10;
            do
            {
              v29 = memchr(v28, 73, v27 - 21);
              if (!v29)
              {
                break;
              }

              if (*v29 == 0x746E656469636E49 && *(v29 + 1) == 0x676E697375614373 && *(v29 + 14) == 0x5F79616C6544676ELL)
              {
                if (v29 != v14 && v29 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0x16uLL);
                  v26 = v129;
                  sub_59E950(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v28 = (v29 + 1);
              v27 = v14 - v28;
            }

            while (v14 - v28 >= 22);
          }
        }

        if (v11 >= 13)
        {
          v32 = v11;
          v33 = v10;
          do
          {
            v34 = memchr(v33, 65, v32 - 12);
            if (!v34)
            {
              break;
            }

            if (*v34 == 0x69636E4961657241 && *(v34 + 5) == 0x5F746E656469636ELL)
            {
              if (v34 != v14 && v34 - v10 != -1)
              {
                sub_148E0(&v138, 0, 0xDuLL);
                v26 = v129;
                sub_59E95C(a2, &v138);
                goto LABEL_269;
              }

              break;
            }

            v33 = (v34 + 1);
            v32 = v14 - v33;
          }

          while (v14 - v33 >= 13);
          if (v11 >= 15)
          {
            v36 = v10;
            do
            {
              v37 = memchr(v36, 67, v11 - 14);
              if (!v37)
              {
                break;
              }

              if (*v37 == 0x69747365676E6F43 && *(v37 + 7) == 0x5F656E6F5A6E6F69)
              {
                if (v37 != v14 && v37 - v10 != -1)
                {
                  sub_148E0(&v138, 0, 0xFuLL);
                  v26 = v129;
                  sub_59E968(a2, &v138);
                  goto LABEL_269;
                }

                break;
              }

              v36 = (v37 + 1);
              v11 = v14 - v36;
            }

            while (v14 - v36 >= 15);
          }
        }

        if (byte_27BA5AF < 0)
        {
          sub_325C(&v136, xmmword_27BA598, *(&xmmword_27BA598 + 1));
          v7 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          size = v138.__r_.__value_.__l.__size_;
          v40 = v138.__r_.__value_.__r.__words[0];
          v39 = byte_27BA5AF;
          LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        }

        else
        {
          v39 = byte_27BA5AF;
          v136 = xmmword_27BA598;
          v137 = unk_27BA5A8;
          v40 = v126;
        }

        if ((v8 & 0x80u) == 0)
        {
          v41 = &v138;
        }

        else
        {
          v41 = v40;
        }

        if ((v8 & 0x80u) == 0)
        {
          v42 = v7;
        }

        else
        {
          v42 = size;
        }

        if ((v39 & 0x80u) == 0)
        {
          v43 = &xmmword_27BA598;
        }

        else
        {
          v43 = xmmword_27BA598;
        }

        if ((v39 & 0x80u) == 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = *(&xmmword_27BA598 + 1);
        }

        if (!v44)
        {
          v26 = v129;
LABEL_171:
          if (v137 >= 0)
          {
            v72 = HIBYTE(v137);
          }

          else
          {
            v72 = *(&v136 + 1);
          }

          if ((v8 & 0x80) != 0)
          {
            if (v72 != -1)
            {
              goto LABEL_178;
            }

            v138.__r_.__value_.__l.__size_ = 0;
            *v138.__r_.__value_.__l.__data_ = 0;
          }

          else
          {
            if (v72 == -1)
            {
              *(&v138.__r_.__value_.__s + 23) = 0;
              v138.__r_.__value_.__s.__data_[0] = 0;
              goto LABEL_179;
            }

LABEL_178:
            sub_148E0(&v138, 0, v72);
          }

LABEL_179:
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v138;
          }

          else
          {
            v73 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v138.__r_.__value_.__l.__size_;
          }

          v75 = v73 + v74;
          if (v74 >= 1)
          {
            v76 = v74;
            v77 = v73;
            do
            {
              v78 = memchr(v77, 95, v76);
              if (!v78)
              {
                break;
              }

              if (*v78 == 95)
              {
                goto LABEL_191;
              }

              v77 = (v78 + 1);
              v76 = v75 - v77;
            }

            while (v75 - v77 > 0);
          }

          v78 = v73 + v74;
LABEL_191:
          if (v78 == v75)
          {
            v79 = -1;
          }

          else
          {
            v79 = v78 - v73;
          }

          if (v74 >= v79)
          {
            v80 = v79;
          }

          else
          {
            v80 = v74;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v80 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v80;
          if (v80)
          {
            memmove(&__dst, v73, v80);
          }

          __dst.__r_.__value_.__s.__data_[v80] = 0;
          v81 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          p_dst = __dst.__r_.__value_.__r.__words[0];
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __dst.__r_.__value_.__l.__size_;
          }

          if (v81)
          {
            while (1)
            {
              v83 = p_dst->__r_.__value_.__s.__data_[0];
              if (v83 < 0 || (_DefaultRuneLocale.__runetype[v83] & 0x400) == 0)
              {
                break;
              }

              p_dst = (p_dst + 1);
              if (!--v81)
              {
                goto LABEL_211;
              }
            }

            if (!sub_7E7E4(1u))
            {
LABEL_252:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

              goto LABEL_253;
            }

            sub_19594F8(&v133);
            v87 = sub_4A5C(&v133, "Got a tbr corrupted x coordinate: ", 34);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &__dst;
            }

            else
            {
              v88 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = __dst.__r_.__value_.__l.__size_;
            }

            v90 = sub_4A5C(v87, v88, v89);
            v91 = sub_4A5C(v90, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v138;
            }

            else
            {
              v92 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v138.__r_.__value_.__l.__size_;
            }

            sub_4A5C(v91, v92, v93);
            sub_1959680(&v133, &__str);
            sub_7E854(&__str, 1u);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              sub_1959728(&v133);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_268;
              }

LABEL_253:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_268;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            sub_1959728(&v133);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          else
          {
LABEL_211:
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v84 = v138.__r_.__value_.__l.__size_;
            }

            sub_E75AF0(&v138, v79 + 1, v84, &__str);
            if (sub_E75BF4(&__str))
            {
              v85 = std::stod(&__dst, 0);
              LODWORD(v86) = std::stod(&__str, 0);
              if (v86 >= 0xFFFFFFFE)
              {
                v86 = 4294967294;
              }

              else
              {
                v86 = v86;
              }

              v133 = v85 | (v86 << 32);
              v134 = 0x7FFFFFFF;
              sub_59E980(a2, &v133);
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v133);
              v94 = sub_4A5C(&v133, "Got a tbr corrupted y coordinate: ", 34);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v96 = __str.__r_.__value_.__l.__size_;
              }

              v97 = sub_4A5C(v94, p_str, v96);
              v98 = sub_4A5C(v97, " in the read displayed banner id of a dodgeball offering a route avoiding a tbr. Full suffix: ", 94);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v99 = &v138;
              }

              else
              {
                v99 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v100 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v100 = v138.__r_.__value_.__l.__size_;
              }

              sub_4A5C(v98, v99, v100);
              sub_1959680(&v133, __p);
              sub_7E854(__p, 1u);
              if (v131 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(&v133);
            }

            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_252;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_253;
            }
          }

          goto LABEL_268;
        }

        v45 = v41 + v42;
        v26 = v129;
        if (v42 >= v44)
        {
          v53 = *v43;
          v54 = v42;
          v55 = v41;
          do
          {
            v56 = v54 - v44;
            if (v56 == -1)
            {
              break;
            }

            v57 = memchr(v55, v53, v56 + 1);
            if (!v57)
            {
              break;
            }

            v58 = v57;
            if (!memcmp(v57, v43, v44))
            {
              if (v58 == v45 || v58 - v41 == -1)
              {
                break;
              }

              goto LABEL_171;
            }

            v55 = (v58 + 1);
            v54 = v45 - (v58 + 1);
          }

          while (v54 >= v44);
        }

        v46 = byte_27BA5F7;
        v47 = xmmword_27BA5E0;
        if (byte_27BA5F7 >= 0)
        {
          v48 = &xmmword_27BA5E0;
        }

        else
        {
          v48 = xmmword_27BA5E0;
        }

        if (byte_27BA5F7 >= 0)
        {
          v49 = byte_27BA5F7;
        }

        else
        {
          v49 = *(&xmmword_27BA5E0 + 1);
        }

        if (v49)
        {
          if (v42 >= v49)
          {
            v59 = *v48;
            v60 = v41;
            do
            {
              if (v42 - v49 == -1)
              {
                break;
              }

              v61 = memchr(v60, v59, v42 - v49 + 1);
              if (!v61)
              {
                break;
              }

              v50 = v61;
              if (!memcmp(v61, v48, v49))
              {
                goto LABEL_121;
              }

              v60 = (v50 + 1);
              v42 = v45 - (v50 + 1);
            }

            while (v42 >= v49);
          }

          v50 = v45;
LABEL_121:
          v52 = v50 == v45 || v50 - v41 == -1;
          if (SHIBYTE(v137) < 0)
          {
LABEL_139:
            sub_13B38(&v136, v48, v49);
            v26 = v129;
            goto LABEL_147;
          }
        }

        else
        {
          v52 = 0;
          if (SHIBYTE(v137) < 0)
          {
            goto LABEL_139;
          }
        }

        if (v46 < 0)
        {
          sub_13A68(&v136, v47, *(&v47 + 1));
        }

        else
        {
          v136 = xmmword_27BA5E0;
          v137 = unk_27BA5F0;
        }

        v26 = v129;
LABEL_147:
        v62 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        LOBYTE(v8) = *(&v138.__r_.__value_.__s + 23);
        if (!v52)
        {
          goto LABEL_171;
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v138;
        }

        else
        {
          v63 = v138.__r_.__value_.__r.__words[0];
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v62 = v138.__r_.__value_.__l.__size_;
        }

        if (byte_27BA7D7 >= 0)
        {
          v64 = &qword_27BA7C0;
        }

        else
        {
          v64 = qword_27BA7C0;
        }

        if (byte_27BA7D7 >= 0)
        {
          v65 = byte_27BA7D7;
        }

        else
        {
          v65 = unk_27BA7C8;
        }

        if (!v65)
        {
LABEL_267:
          std::string::erase(&v138, 0, v65);
          sub_59E974(a2, &v138);
          goto LABEL_268;
        }

        if (v62 >= v65)
        {
          v66 = v63 + v62;
          v67 = *v64;
          v68 = v63;
          do
          {
            v69 = v62 - v65;
            if (v69 == -1)
            {
              break;
            }

            v70 = memchr(v68, v67, v69 + 1);
            if (!v70)
            {
              break;
            }

            v71 = v70;
            if (!memcmp(v70, v64, v65))
            {
              if (v71 == v66 || v71 - v63 == -1)
              {
                break;
              }

              goto LABEL_267;
            }

            v68 = (v71 + 1);
            v62 = v66 - (v71 + 1);
          }

          while (v62 >= v65);
        }

        if (sub_6B93C(&v138, "EVDisconnect_", 0) != -1)
        {
          sub_59E98C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVReconnect_", 0) != -1)
        {
          sub_59E99C(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "EVTowingNotSupported_", 0) != -1)
        {
          sub_59E9AC(a2);
          goto LABEL_268;
        }

        if (sub_6B93C(&v138, "NACS_ADAPTER_REQUIRED_", 0) != -1)
        {
          sub_59E9B8(a2);
          goto LABEL_268;
        }

        __dst.__r_.__value_.__s.__data_[0] = 0;
        v101 = byte_27BA78F;
        if (byte_27BA78F >= 0)
        {
          v102 = byte_27BA78F;
        }

        else
        {
          v102 = qword_27BA780;
        }

        v103 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v138.__r_.__value_.__l.__size_;
        }

        if (v104 >= v102 && ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v105 = &v138) : (v105 = v138.__r_.__value_.__r.__words[0]), (v106 = qword_27BA778, byte_27BA78F >= 0) ? (v107 = &qword_27BA778) : (v107 = qword_27BA778), !memcmp(v105, v107, v102)))
        {
          if (v101 >= 0)
          {
            v121 = &qword_27BA778;
          }

          else
          {
            v121 = v106;
          }

          v122 = sub_E76CC4(&__dst, v121, v102, &v138);
          if (v122 != 0x7FFFFFFF)
          {
LABEL_326:
            v133 = v122 | 0x7FFFFFFF00000000;
            LOWORD(v134) = 0;
            sub_59E9C4(a2, &v133);
          }
        }

        else
        {
          v108 = byte_27BA7A7;
          if (byte_27BA7A7 >= 0)
          {
            v109 = byte_27BA7A7;
          }

          else
          {
            v109 = qword_27BA798;
          }

          if (v104 >= v109 && (v103 >= 0 ? (v110 = &v138) : (v110 = v138.__r_.__value_.__r.__words[0]), (v111 = qword_27BA790, byte_27BA7A7 >= 0) ? (v112 = &qword_27BA790) : (v112 = qword_27BA790), !memcmp(v110, v112, v109)))
          {
            if (v108 >= 0)
            {
              v123 = &qword_27BA790;
            }

            else
            {
              v123 = v111;
            }

            v124 = sub_E76CC4(&__dst, v123, v109, &v138);
            if (v124 != 0x7FFFFFFF)
            {
              LODWORD(v133) = 0x7FFFFFFF;
              HIDWORD(v133) = v124;
              LOWORD(v134) = 0;
              sub_59E9C4(a2, &v133);
            }
          }

          else
          {
            v113 = byte_27BA777;
            if (byte_27BA777 >= 0)
            {
              v114 = byte_27BA777;
            }

            else
            {
              v114 = qword_27BA768;
            }

            if (v104 >= v114 && (v103 >= 0 ? (v115 = &v138) : (v115 = v138.__r_.__value_.__r.__words[0]), (v116 = qword_27BA760, byte_27BA777 >= 0) ? (v117 = &qword_27BA760) : (v117 = qword_27BA760), !memcmp(v115, v117, v114)))
            {
              if (v113 >= 0)
              {
                v125 = &qword_27BA760;
              }

              else
              {
                v125 = v116;
              }

              v122 = sub_E76CC4(&__dst, v125, v114, &v138);
              if (v122 != 0x7FFFFFFF)
              {
                goto LABEL_326;
              }
            }

            else
            {
              if (byte_27BA7BF >= 0)
              {
                v118 = byte_27BA7BF;
              }

              else
              {
                v118 = qword_27BA7B0;
              }

              if (v104 >= v118)
              {
                if (v103 >= 0)
                {
                  v119 = &v138;
                }

                else
                {
                  v119 = v138.__r_.__value_.__r.__words[0];
                }

                if (byte_27BA7BF >= 0)
                {
                  v120 = &qword_27BA7A8;
                }

                else
                {
                  v120 = qword_27BA7A8;
                }

                if (!memcmp(v119, v120, v118))
                {
                  v133 = 0x8000000080000000;
                  LOWORD(v134) = 1;
                  sub_59E9C4(a2, &v133);
                }
              }
            }
          }
        }

LABEL_268:
        if ((SHIBYTE(v137) & 0x80000000) == 0)
        {
          goto LABEL_269;
        }

        operator delete(v136);
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_270:
        operator delete(v138.__r_.__value_.__l.__data_);
        v3 = v26 + 1;
      }

      while (v3 != v127);
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 1065353216;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1065353216;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 152) = 1065353216;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 1065353216;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 232) = 1065353216;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 248) = 0;
    *(a2 + 240) = 0;
  }
}

void sub_E76B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
    if (*(v25 - 105) < 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v25 - 105) < 0)
  {
LABEL_6:
    operator delete(*(v25 - 128));
    sub_52861C(a11);
    _Unwind_Resume(a1);
  }

  sub_52861C(a11);
  _Unwind_Resume(a1);
}

void sub_E76CB4()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0xE76C9CLL);
  }

  JUMPOUT(0xE76C44);
}

uint64_t sub_E76CC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    if (a3 == -1)
    {
      v6 = *a4;
      *(a4 + 8) = 0;
      *v6 = 0;
      return sub_92B264(a4);
    }

    goto LABEL_5;
  }

  if (a3 != -1)
  {
LABEL_5:
    sub_148E0(a4, 0, a3);
    return sub_92B264(a4);
  }

  *(a4 + 23) = 0;
  *a4 = 0;
  return sub_92B264(a4);
}

uint64_t sub_E76D2C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0x7FFFFFFFLL;
}

uint64_t sub_E76D44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v3 = 0uLL;
  *a2 = 0u;
  v4 = &off_2772E28;
  if (*(a1 + 336))
  {
    v4 = *(a1 + 336);
  }

  v5 = *(v4 + 10);
  if (v5)
  {
    v6 = v4[6];
    v7 = 4 * v5;
    do
    {
      v8 = *v6;
      if ((*v6 - 1) >= 4)
      {
        v8 = 3;
      }

      v18 = v8;
      sub_DD38(a2, &v18);
      ++v6;
      v7 -= 4;
    }

    while (v7);
    v3 = *a2;
  }

  v9 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_9BD1AC(v3, *(&v3 + 1), &v19, v10, 1);
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = (*a2 + 4);
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v15 = *v13++;
      if (v14 == v15)
      {
        v16 = v13 - 2;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            v16[1] = v14;
            ++v16;
          }

          ++v13;
        }

        if (v16 + 1 != v12)
        {
          a2[1] = v16 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_E76E8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E76EAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v3 = 0uLL;
  *a2 = 0u;
  v4 = &off_2772E28;
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
  }

  v5 = *(v4 + 10);
  if (v5)
  {
    v6 = v4[6];
    v7 = 4 * v5;
    do
    {
      v8 = *v6;
      if ((*v6 - 1) >= 4)
      {
        v8 = 3;
      }

      v18 = v8;
      sub_DD38(a2, &v18);
      ++v6;
      v7 -= 4;
    }

    while (v7);
    v3 = *a2;
  }

  v9 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_9BD1AC(v3, *(&v3 + 1), &v19, v10, 1);
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = (*a2 + 4);
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v15 = *v13++;
      if (v14 == v15)
      {
        v16 = v13 - 2;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            v16[1] = v14;
            ++v16;
          }

          ++v13;
        }

        if (v16 + 1 != v12)
        {
          a2[1] = v16 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_E76FF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_E77AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (v27)
  {
    operator delete(v27);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_E786DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (v27)
  {
    operator delete(v27);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_E79DEC(_Unwind_Exception *a1)
{
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void *sub_E79F40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  if ((v2 & 0x10000) != 0)
  {
    v3 = *(a1 + 424);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 48) | 0x100000000;
      return sub_E85EB8(a1, v4, a2);
    }
  }

  if (v2)
  {
    v5 = (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL);
    if (*(v5 + 23) < 0)
    {
      if (*(v5 + 1) < 4uLL)
      {
LABEL_11:
        v4 = 0x100000000;
        return sub_E85EB8(a1, v4, a2);
      }

      v5 = *v5;
    }

    else if (*(v5 + 23) < 4u)
    {
      goto LABEL_11;
    }

    v4 = *v5 | 0x100000000;
    return sub_E85EB8(a1, v4, a2);
  }

  v4 = 0;
  return sub_E85EB8(a1, v4, a2);
}

BOOL sub_E79FF8(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5;
      v5 = (v5 + 4);
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v8 = *(a1 + 336);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  v9 = *(v8 + 32);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      return v9 != 3 || (v4 & 8) != 0;
    }

    return (v4 & 4) != 0;
  }

  if (!v9)
  {
    return (v4 & 1) != 0;
  }

  return v9 != 1 || (v4 & 2) != 0;
}

unint64_t sub_E7A124(uint64_t a1)
{
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  else
  {
    v2 = &off_2776700;
  }

  if (*(a1 + 336))
  {
    v3 = *(a1 + 336);
  }

  else
  {
    v3 = &off_2772E28;
  }

  v4 = &off_2773750;
  if (v3[15])
  {
    v4 = v3[15];
  }

  v5 = v4[3];
  v6 = &off_2773710;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(v6 + 26);
  v8 = *(v6 + 25);
  v9 = v3[11];
  if (!v9)
  {
    v9 = &off_2773678;
  }

  v10 = v9[3];
  if (!v10)
  {
    v10 = &off_2773640;
  }

  v11 = *(v10 + 48);
  v12 = *(v10 + 49);
  v13 = *(v2 + 244);
  v14 = *(v2 + 253);
  v15 = *(v9 + 41);
  v16 = v3[13];
  v17 = &off_2773810;
  if (v16)
  {
    v17 = v16;
  }

  v18 = *(v17 + 6);
  if (v18)
  {
    v19 = v17[4];
    v20 = 4 * v18;
    do
    {
      if (!*v19)
      {
        break;
      }

      v19 = (v19 + 4);
      v20 -= 4;
    }

    while (v20);
  }

  v21 = v7 | (v8 << 8) | (v11 << 40) | (v12 << 48) | (v13 << 32) | (v14 << 24) | (v15 << 56);
  v22 = v21 >> 40;
  v23 = HIWORD(v21);
  if ((*(a1 + 40) & 4) != 0)
  {
    sub_11FD59C(v36, 0, 0);
    if ((sub_194DB28(v36, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_48:
      sub_11FD994(v36);
      return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
    }

    v24 = *(a1 + 40);
    if ((v24 & 0x10000) != 0)
    {
      v25 = *(a1 + 424);
      if (*(v25 + 16))
      {
        v26 = *(v25 + 48);
        goto LABEL_41;
      }
    }

    if ((v24 & 1) == 0)
    {
      LOBYTE(v26) = 0;
      v27 = 0;
      if (v38)
      {
        v28 = (v38 + 8);
      }

      else
      {
        v28 = 0;
      }

      v29 = v37;
      if (!v37)
      {
LABEL_30:
        v30 = v28;
LABEL_31:
        if (v30 != &v28[v29])
        {
          v31 = *v30;
          LOBYTE(v22) = v11 & *(v31 + 161);
          LOBYTE(v23) = v12 & *(v31 + 162);
        }

        goto LABEL_48;
      }

LABEL_45:
      v33 = v27 | v26;
      v34 = 8 * v29;
      v30 = v28;
      while (*(*v30 + 144) != v33)
      {
        ++v30;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_31;
    }

    v32 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      if (*(v32 + 8) >= 4uLL)
      {
        v32 = *v32;
LABEL_40:
        v26 = *v32;
LABEL_41:
        v27 = v26 & 0xFFFFFF00;
        if (v38)
        {
          v28 = (v38 + 8);
        }

        else
        {
          v28 = 0;
        }

        v29 = v37;
        if (!v37)
        {
          goto LABEL_30;
        }

        goto LABEL_45;
      }
    }

    else if (*(v32 + 23) >= 4u)
    {
      goto LABEL_40;
    }

    v26 = 0;
    goto LABEL_41;
  }

  return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
}

void sub_E7A3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7A3D0(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[11];
  if (!v2)
  {
    v2 = &off_2773678;
  }

  v3 = v1 + 41;
  if ((v2[2] & 0x10) != 0)
  {
    v3 = v2 + 11;
  }

  v4 = *v3;
  if (v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4 == 2;
  }
}

BOOL sub_E7A428(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 360))
  {
    v2 = *(a1 + 360);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5;
      v5 = (v5 + 4);
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v8 = *(a1 + 336);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  v9 = *(v8 + 32);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3 && (v4 & 8) == 0)
      {
        return 0;
      }

      return *(a1 + 112) > 2;
    }

    if ((v4 & 4) != 0)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  if (!v9)
  {
    if (v4)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  if (v9 == 1 && (v4 & 2) == 0)
  {
    return 0;
  }

  return *(a1 + 112) > 2;
}

BOOL sub_E7A55C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return !*(v1 + 32) && (*(a1 + 496) & 0xFFFFFFFE) == 2;
}

BOOL sub_E7A58C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  if (*(v1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 376);
  if (!v2)
  {
    v2 = &off_2773488;
  }

  return *(v2 + 10) == 8 && (*(a1 + 43) & 0x20) == 0;
}

uint64_t sub_E7A5E0(uint64_t a1)
{
  if (*(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 57) == 1 && (*(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 24) || *(sub_1950CD0(a1 + 16, dword_278D168, qword_278D170) + 40)) || (*(a1 + 484) & 1) != 0)
  {
    return 3;
  }

  if (*(a1 + 42))
  {
    v4 = *(*(a1 + 424) + 64) - 1;
    if (v4 < 0xD)
    {
      return byte_22ACD80[v4];
    }

    return 0;
  }

  v3 = *(a1 + 540);
  if (v3 <= 1)
  {
    if (v3 <= 1)
    {
      return *(a1 + 88) > 0;
    }

    return 0;
  }

  if (v3 == 2)
  {
    return 3;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      return 6;
    }

    return 0;
  }

  return 5;
}

uint64_t sub_E7A70C(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  v2 = *(v1 + 13);
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

BOOL sub_E7A738(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7A75C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E7A78C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return sub_5080D4(*(v1 + 69));
}

uint64_t sub_E7A7A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 4)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL sub_E7A7CC(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return (*(v2 + 19) - 1) < 2;
}

BOOL sub_E7A808(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    v1 = &off_2773488;
  }

  return *(v1 + 10) == 5;
}

uint64_t sub_E7A82C(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v6 & 0x40) != 0)
  {
    sub_1491CC0(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 24);
    }

    else
    {
      v2 = 0;
    }

    sub_14AD440(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2 & 1;
}