void *sub_298BCAEDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(*(v2 + 48) + 48);
  v4 = *(*(v2 + 96) + 56) + 1;
  v5 = *(v2 + 40) - *(v2 + 32) + v4;
  result = (*(*v3 + 24))(v3);
  if (result >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = result;
  }

  if (v4 < v7)
  {
    v8 = *(*(v2 + 48) + 40);
    v9 = *(v2 + 160);
    v11 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (!v10)
    {
      v10 = v11;
    }

    v25 = 0;
    v26 = v11;
    v27 = v10;
    v24 = &unk_2A1F1EBD8;
    v28 = v9;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v12 = *(v2 + 16);
    v13 = *(v2 + 80);
    v14 = *(v2 + 96);
    v19 = &unk_2A1F1E6E0;
    v20 = v12;
    v21 = v13;
    v15 = *(v14 + 56);
    v22 = v14;
    v23 = v15;
    result = (*(*v3 + 48))(&v18, v3, v4);
    if (v18)
    {
      *(v2 + 12) = 1;
      std::mutex::lock((v1 + 144));
      v16 = *(v1 + 208);
      *(v1 + 208) = 0;
      v17 = v18;
      v18 = 0;
      v19 = v17;
      v24 = v16;
      sub_298ADE6E8(&v24, &v19, &v37);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      *(v1 + 208) = v37;
      std::mutex::unlock((v1 + 144));
      result = v18;
      if (v18)
      {
        return (*(*v18 + 8))(v18);
      }
    }
  }

  return result;
}

void sub_298BCB128(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 3) | (2 * *(a2 + 2));
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  if (v6 == v7 && *(v8 + 64) == 1)
  {
    *(v8 + 64) = 0;
  }

  sub_298BC6B04(v8, a2, a3);
  if (!*a3)
  {
    if (v6 == *(a1 + 12))
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 24);
      v11 = *(v9 + 52);
      v12 = *(v9 + 52);
      if (*(v10 + v11 + 144))
      {
        v13 = *(v9 + 52);
      }

      else
      {
        sub_298BC62BC(v10 + 112, v12);
        v13 = *(v9 + 52);
        v12 = *(v9 + 52);
      }

      v14 = *(v10 + 8 * v11 + 152);
      v15 = *(*(v9 + 16) + 56);
      if ((*(v15 + v13 + 144) & 1) == 0)
      {
        v24 = *(v10 + 8 * v11 + 152);
        sub_298BC62BC(v15 + 112, v12);
        v14 = v24;
      }

      v16 = sub_298C02D28(v14, *(v15 + 8 * v13 + 152));
      if (v16 > 0xE || ((1 << v16) & 0x4849) == 0)
      {
        v18 = *(a2 + 3) | (2 * *(a2 + 2));
        v19 = v16;
        v20 = std::generic_category();
        v56 = "Decoder.cpp";
        v57 = 259;
        v54 = ":";
        v55 = 259;
        sub_298B6CD80(&v56, &v54, v58);
        sub_298AFB090(0x253uLL, 0, __p);
        v53 = 260;
        v52 = __p;
        sub_298B6CD80(v58, &v52, v59);
        v49 = ": ";
        v50 = 259;
        sub_298B6CD80(v59, &v49, v60);
        v47 = "sync lost at unit=";
        v48 = 259;
        sub_298B6CD80(v60, &v47, v61);
        sub_298AFB090(*(a2 + 40), 0, v44);
        v46 = 260;
        v45 = v44;
        sub_298B6CD80(v61, &v45, v62);
        v42 = " on core=";
        v43 = 259;
        sub_298B6CD80(v62, &v42, v63);
        sub_298AFB090(v18, 0, v39);
        v41 = 260;
        v40 = v39;
        sub_298B6CD80(v63, &v40, v64);
        v37 = " due to ";
        v38 = 259;
        sub_298B6CD80(v64, &v37, v65);
        v21 = v19 - 1;
        if (v19 - 1 > 0xC)
        {
          v23 = "Synced";
          v22 = 6;
        }

        else
        {
          v22 = qword_298D1B158[v21];
          v23 = off_29EEB6168[v21];
        }

        v36 = 261;
        v35[0] = v23;
        v35[1] = v22;
        sub_298B6CD80(v65, v35, v66);
        v33 = ", initial sync unit=";
        v34 = 259;
        sub_298B6CD80(v66, &v33, v67);
        sub_298AFB090(*(a1 + 24), 0, v30);
        v32 = 260;
        v31 = v30;
        sub_298B6CD80(v67, &v31, v68);
        v28 = ", job=";
        v29 = 259;
        sub_298B6CD80(v68, &v28, v69);
        sub_298AFB090(*(a1 + 8), 0, v25);
        v27 = 260;
        v26 = v25;
        sub_298B6CD80(v69, &v26, v70);
        sub_298ADDCA4(45, v20, v70);
      }
    }

    *a3 = 0;
  }
}

void *sub_298BCB51C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void *sub_298BCB608(void *result)
{
  v84 = *MEMORY[0x29EDCA608];
  v1 = result[2];
  v2 = *(*result + 248);
  v72 = *result;
  v73 = result;
  v71 = *result + 256;
  if (v2 != v71)
  {
    v3 = v1 + 1;
    v4 = result[1];
    while (1)
    {
      v5 = 56;
      v74 = v2;
      do
      {
        v75 = v5;
        v6 = (v2 + v5);
        v8 = *v6;
        v7 = v6[1];
        v76 = v7;
        while (v8 != v7)
        {
          v9 = *v8;
          v10 = *(*(*v8 + 48) + 48);
          v11 = (*(*v10 + 24))(v10);
          sub_298B894A0(v4);
          sub_298AEF5BC(v4);
          *(*v4 + 8 * *(v4 + 8) - 8) = 2;
          *(v4 + 172) += *(v4 + 168);
          v12 = *(v4 + 160);
          v13 = *(v12 + 32);
          if (v13 >= *(v12 + 24))
          {
            while (1)
            {
              v52 = *(v12 + 16);
              if (v52)
              {
                *(v12 + 32) = v52;
                sub_298B9BB84(v12);
                v13 = *(v12 + 32);
                goto LABEL_9;
              }

              if (!*(v12 + 56))
              {
                break;
              }

              sub_298B9AE98(v12);
              v13 = *(v12 + 32);
              if (v13 < *(v12 + 24))
              {
                goto LABEL_9;
              }
            }

            LOBYTE(v81) = 123;
            sub_298B9BB84(v12);
          }

          else
          {
LABEL_9:
            *(v12 + 32) = v13 + 1;
            *v13 = 123;
          }

          v14 = *(v9 + 16);
          LOWORD(v81) = 4;
          *&__p = v14;
          sub_298B89CC0(v4, "JobID", 5uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          if (*(v9 + 8) == 1)
          {
            v15 = 6;
          }

          else
          {
            v15 = 10;
          }

          if (*(v9 + 8) == 1)
          {
            v16 = "Ranges";
          }

          else
          {
            v16 = "Timestamps";
          }

          sub_298BBB6E0(&v81, v16, v15);
          sub_298B89CC0(v4, "Kind", 4uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v17 = *(v9 + 12);
          LOWORD(v81) = 1;
          LOBYTE(__p) = v17;
          sub_298B89CC0(v4, "Failed", 6uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v18 = *(*(*(v9 + 48) + 40) + 4);
          LOWORD(v81) = 3;
          *&__p = v18;
          sub_298B89CC0(v4, "ClusterID", 9uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v19 = *(v9 + 24);
          LOWORD(v81) = 3;
          *&__p = v19;
          sub_298B89CC0(v4, "ElapsedMicrosecs", 0x10uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v20 = *(v9 + 32);
          LOWORD(v81) = 4;
          *&__p = v20;
          sub_298B89CC0(v4, "AssignedUnitBegin", 0x11uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v21 = *(v9 + 40);
          LOWORD(v81) = 4;
          *&__p = v21;
          sub_298B89CC0(v4, "AssignedUnitEnd", 0xFuLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          LOWORD(v81) = 4;
          *&__p = v11;
          sub_298B89CC0(v4, "ClusterUnitCount", 0x10uLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          v22 = *(v9 + 40) - *(v9 + 32);
          LOWORD(v81) = 4;
          *&__p = v22;
          sub_298B89CC0(v4, "JobSizeInUnits", 0xEuLL);
          sub_298B891F0(v4, &v81);
          --*(v4 + 8);
          if (LOWORD(v81) == 8)
          {
            sub_298B8A314(&__p);
          }

          else if (LOWORD(v81) == 7)
          {
            sub_298B8A370(&__p);
          }

          else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
          {
            operator delete(__p);
          }

          (*(*v9 + 16))(v9, v4);
          v23 = *(v4 + 168);
          *(v4 + 172) -= v23;
          v24 = "                                                                                ";
          if (*(*v4 + 8 * *(v4 + 8) - 4) != 1 || !v23)
          {
            goto LABEL_81;
          }

          v32 = *(v4 + 160);
          v33 = *(v32 + 32);
          if (v33 < *(v32 + 24))
          {
LABEL_92:
            *(v32 + 32) = v33 + 1;
            *v33 = 10;
            v34 = *(v4 + 160);
            v35 = *(v4 + 172);
            if (v35 >= 0x50)
            {
              goto LABEL_127;
            }

LABEL_93:
            v36 = *(v34 + 32);
            v37 = *(v34 + 24) - v36;
            if (v37 >= v35)
            {
LABEL_94:
              if (v35 > 1)
              {
                goto LABEL_95;
              }

LABEL_162:
              if (!v35)
              {
LABEL_165:
                *(v34 + 32) += v35;
                goto LABEL_81;
              }

              if (v35 == 1)
              {
LABEL_164:
                *v36 = *v24;
                goto LABEL_165;
              }

LABEL_166:
              memcpy(v36, v24, v35);
              goto LABEL_165;
            }

            while (1)
            {
              v42 = *(v34 + 16);
              if (!v42)
              {
                break;
              }

LABEL_121:
              if (v36 == v42)
              {
                v37 *= v35 / v37;
                v35 -= v37;
                v43 = v24;
                sub_298B9BB84(v34);
                v36 = *(v34 + 32);
                v44 = *(v34 + 24) - v36;
                if (v35 <= v44)
                {
                  sub_298B9BE18(v34, &v43[v37], v35);
                  goto LABEL_81;
                }
              }

              else
              {
                v43 = v24;
                sub_298B9BE18(v34, v24, v37);
                *(v34 + 32) = *(v34 + 16);
                sub_298B9BB84(v34);
                v35 -= v37;
                v36 = *(v34 + 32);
                v44 = *(v34 + 24) - v36;
              }

              v24 = &v43[v37];
              v37 = v44;
              if (v44 >= v35)
              {
                goto LABEL_94;
              }
            }

            while (1)
            {
              if (!*(v34 + 56))
              {
                sub_298B9BB84(v34);
                goto LABEL_81;
              }

              v41 = v24;
              sub_298B9AE98(v34);
              v36 = *(v34 + 32);
              v37 = *(v34 + 24) - v36;
              if (v37 >= v35)
              {
                break;
              }

              v42 = *(v34 + 16);
              v24 = v41;
              if (v42)
              {
                goto LABEL_121;
              }
            }

            v24 = v41;
            if (v35 <= 1)
            {
              goto LABEL_162;
            }

LABEL_95:
            if (v35 != 2)
            {
              if (v35 != 3)
              {
                if (v35 != 4)
                {
                  goto LABEL_166;
                }

                v36[3] = v24[3];
                v36 = *(v34 + 32);
              }

              v36[2] = v24[2];
              v36 = *(v34 + 32);
            }

            v36[1] = v24[1];
            v36 = *(v34 + 32);
            goto LABEL_164;
          }

          while (1)
          {
            v40 = *(v32 + 16);
            if (v40)
            {
              *(v32 + 32) = v40;
              sub_298B9BB84(v32);
              v24 = "                                                                                ";
              v33 = *(v32 + 32);
              goto LABEL_92;
            }

            if (!*(v32 + 56))
            {
              break;
            }

            sub_298B9AE98(v32);
            v33 = *(v32 + 32);
            if (v33 < *(v32 + 24))
            {
              v24 = "                                                                                ";
              goto LABEL_92;
            }
          }

          LOBYTE(v81) = 10;
          sub_298B9BB84(v32);
          v24 = "                                                                                ";
          v34 = *(v4 + 160);
          v35 = *(v4 + 172);
          if (v35 < 0x50)
          {
            goto LABEL_93;
          }

LABEL_127:
          while (2)
          {
            while (1)
            {
              v45 = v35 >= 0x4F ? 79 : v35;
              v46 = *(v34 + 32);
              v47 = *(v34 + 24) - v46;
              if (v47 < v45)
              {
                break;
              }

              v48 = "                                                                                ";
              v49 = v45;
LABEL_132:
              if (v49 <= 1)
              {
                if (v49)
                {
                  if (v49 == 1)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_144;
                }

LABEL_142:
                *(v34 + 32) += v49;
                LODWORD(v35) = v35 - v45;
                if (!v35)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                switch(v49)
                {
                  case 2uLL:
                    goto LABEL_138;
                  case 3uLL:
                    goto LABEL_137;
                  case 4uLL:
                    v46[3] = v48[3];
                    v46 = *(v34 + 32);
LABEL_137:
                    v46[2] = v48[2];
                    v46 = *(v34 + 32);
LABEL_138:
                    v46[1] = v48[1];
                    v46 = *(v34 + 32);
LABEL_141:
                    *v46 = *v48;
                    goto LABEL_142;
                }

LABEL_144:
                memcpy(v46, v48, v49);
                v24 = "                                                                                ";
                *(v34 + 32) += v49;
                LODWORD(v35) = v35 - v45;
                if (!v35)
                {
                  goto LABEL_81;
                }
              }
            }

            v49 = v45;
            v48 = "                                                                                ";
            while (1)
            {
              while (1)
              {
                v50 = *(v34 + 16);
                if (!v50)
                {
                  break;
                }

                if (v46 == v50)
                {
                  v47 *= v49 / v47;
                  v49 -= v47;
                  sub_298B9BB84(v34);
                  v46 = *(v34 + 32);
                  v51 = *(v34 + 24) - v46;
                  if (v49 <= v51)
                  {
                    sub_298B9BE18(v34, &v48[v47], v49);
                    goto LABEL_158;
                  }
                }

                else
                {
                  sub_298B9BE18(v34, v48, v47);
                  *(v34 + 32) = *(v34 + 16);
                  sub_298B9BB84(v34);
                  v49 -= v47;
                  v46 = *(v34 + 32);
                  v51 = *(v34 + 24) - v46;
                }

                v48 += v47;
                v47 = v51;
                v24 = "                                                                                ";
                if (v51 >= v49)
                {
                  goto LABEL_132;
                }
              }

              if (!*(v34 + 56))
              {
                break;
              }

              sub_298B9AE98(v34);
              v46 = *(v34 + 32);
              v47 = *(v34 + 24) - v46;
              if (v47 >= v49)
              {
                v24 = "                                                                                ";
                goto LABEL_132;
              }
            }

            sub_298B9BB84(v34);
LABEL_158:
            v24 = "                                                                                ";
            LODWORD(v35) = v35 - v45;
            if (v35)
            {
              continue;
            }

            break;
          }

LABEL_81:
          v25 = *(v4 + 160);
          v26 = *(v25 + 32);
          if (v26 >= *(v25 + 24))
          {
            v38 = *(v25 + 16);
            if (v38)
            {
LABEL_102:
              *(v25 + 32) = v38;
              sub_298B9BB84(v25);
              v39 = *(v25 + 32);
LABEL_103:
              *(v25 + 32) = v39 + 1;
              *v39 = 125;
            }

            else
            {
              while (*(v25 + 56))
              {
                sub_298B9AE98(v25);
                v39 = *(v25 + 32);
                if (v39 < *(v25 + 24))
                {
                  goto LABEL_103;
                }

                v38 = *(v25 + 16);
                if (v38)
                {
                  goto LABEL_102;
                }
              }

              LOBYTE(v81) = 125;
              sub_298B9BB84(v25);
            }
          }

          else
          {
            *(v25 + 32) = v26 + 1;
            *v26 = 125;
          }

          --*(v4 + 8);
          v27 = *(*(*(v9 + 48) + 40) + 4);
          v28 = (*(*v9 + 40))(v9, v24);
          v29 = *v3;
          if (!*v3)
          {
LABEL_89:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v30 = v29;
              v31 = *(v29 + 32);
              if (v27 >= v31)
              {
                break;
              }

              v29 = *v30;
              if (!*v30)
              {
                goto LABEL_89;
              }
            }

            if (v31 >= v27)
            {
              break;
            }

            v29 = v30[1];
            if (!v29)
            {
              goto LABEL_89;
            }
          }

          v30[5] += v28;
          ++v8;
          v7 = v76;
        }

        v2 = v74;
        v5 = v75 + 24;
      }

      while (v75 != 224);
      v53 = v74[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v2[2];
          v55 = *v54 == v2;
          v2 = v54;
        }

        while (!v55);
      }

      v2 = v54;
      if (v54 == v71)
      {
        result = v73;
        v1 = v73[2];
        break;
      }
    }
  }

  v58 = *v1;
  v56 = v1 + 1;
  v57 = v58;
  if (v58 != v56)
  {
    do
    {
      v59 = v56;
      v60 = result[1];
      sub_298B89BA0(v60);
      v61 = *(v57 + 8);
      v62 = v57[5];
      v63 = *(*(*(v72 + 8) + 40) + (v61 << 6) + 48);
      v64 = (*(*v63 + 24))(v63);
      LOWORD(v81) = 3;
      *&__p = v61;
      sub_298B89CC0(v60, "ClusterID", 9uLL);
      sub_298B891F0(v60, &v81);
      --*(v60 + 8);
      if (LOWORD(v81) == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (LOWORD(v81) == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
      {
        operator delete(__p);
      }

      sub_298BC8800(v77, v62, v64);
      LOWORD(v81) = 6;
      if (v78 >= 0)
      {
        v65 = v77;
      }

      else
      {
        v65 = v77[0];
      }

      if (v78 >= 0)
      {
        v66 = SHIBYTE(v78);
      }

      else
      {
        v66 = v77[1];
      }

      v56 = v59;
      if (!sub_298B88E98(v65, v66, 0))
      {
        if (v78 >= 0)
        {
          v69 = v77;
        }

        else
        {
          v69 = v77[0];
        }

        if (v78 >= 0)
        {
          v70 = SHIBYTE(v78);
        }

        else
        {
          v70 = v77[1];
        }

        sub_298B88F28(v69, v70, &v79);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }

        *v77 = v79;
        v78 = v80;
      }

      __p = *v77;
      v83 = v78;
      v77[1] = 0;
      v78 = 0;
      v77[0] = 0;
      sub_298B89CC0(v60, "ExtraUnitsParsedForSync", 0x17uLL);
      sub_298B891F0(v60, &v81);
      --*(v60 + 8);
      if (LOWORD(v81) == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (LOWORD(v81) == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (LOWORD(v81) == 6 && SHIBYTE(v83) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
        sub_298B89C2C(v60);
        v67 = v57[1];
        if (!v67)
        {
          do
          {
LABEL_218:
            v68 = v57[2];
            v55 = *v68 == v57;
            v57 = v68;
          }

          while (!v55);
          goto LABEL_182;
        }
      }

      else
      {
        sub_298B89C2C(v60);
        v67 = v57[1];
        if (!v67)
        {
          goto LABEL_218;
        }
      }

      do
      {
        v68 = v67;
        v67 = *v67;
      }

      while (v67);
LABEL_182:
      v57 = v68;
      result = v73;
    }

    while (v68 != v59);
  }

  return result;
}

void sub_298BCC760(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *MEMORY[0x29EDCA608];
  *a1 = a7;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  operator new();
}

__n128 sub_298BCCA3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_298BCCA78(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(result + 16);
  if (*(result + v2 + 8))
  {
    v4 = 1 << *(result + 24);
    if ((v4 & 0x7FE) != 0)
    {
      operator new();
    }

    if ((v4 & 0x7E000) != 0)
    {
      operator new();
    }

    operator new();
  }

  v5 = v3 + 8 * v2;
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  if (v6)
  {
    result = (*(*v6 + 8))(v6);
  }

  *(v3 + v2 + 32) = 1;
  return result;
}

void *sub_298BCCC04(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

__n128 sub_298BCCEFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E760;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void *sub_298BCCF54(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (*(a1 + v2))
  {
    v4 = *(a1 + 40);
    v6 = *(a1 + 24);
    v7 = v4;
    operator new();
  }

  result = sub_298BCD030((v3 + 8 * v2 + 40), 0);
  *(v3 + v2 + 32) = 1;
  return result;
}

void *sub_298BCD030(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AEA2E8(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

__n128 sub_298BCD0FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E7A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_298BCD138(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (*(a1 + v2 + 8))
  {
    operator new();
  }

  v5 = v3 + 8 * v2;
  result = *(v5 + 40);
  *(v5 + 40) = 0;
  if (result)
  {
    result = MEMORY[0x29C2945F0](result, 0x1000C401449E693);
  }

  *(v3 + v2 + 32) = 1;
  return result;
}

__n128 sub_298BCD25C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E7F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_298BCD294(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (*(a1 + v2 + 8))
  {
    operator new();
  }

  v4 = v3 + 8 * v2;
  result = *(v4 + 40);
  *(v4 + 40) = 0;
  if (result)
  {
    result = MEMORY[0x29C2945F0](result, 0x1020C400B1EFBD8);
  }

  *(v3 + v2 + 32) = 1;
  return result;
}

uint64_t sub_298BCD348(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 6);
  v6 = *(a2 + 14);
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 28) = v6;
  *(a1 + 24) = v5;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  if (v7 != (a2 + 40))
  {
    do
    {
      sub_298BCD5B0((a1 + 32), (a1 + 40), v7 + 4, (v7 + 2));
      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != (a2 + 40));
  }

  *(a1 + 56) = 0;
  v8 = (a1 + 56);
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      sub_298AFE11C(v8, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v12 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *v8 = v12;
    }

    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v14 = *(a2 + 11);
  v13 = *(a2 + 12);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  v15 = *(a2 + 14);
  if (v15 != (a2 + 120))
  {
    do
    {
      sub_298BCDAA0((a1 + 112), (a1 + 120), v15 + 4, v15 + 4);
      v20 = *(v15 + 1);
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
          v21 = *(v15 + 2);
          v11 = *v21 == v15;
          v15 = v21;
        }

        while (!v11);
      }

      v15 = v21;
    }

    while (v21 != (a2 + 120));
  }

  v16 = *(a2 + 136);
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 136) = v16;
  *(a1 + 168) = 0;
  v17 = *(a2 + 19);
  v18 = a2 + 10;
  if (v17 != v18)
  {
    do
    {
      sub_298BCDD64((a1 + 152), (a1 + 160), v17 + 4, v17 + 4);
      v22 = *(v17 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v17 + 2);
          v11 = *v23 == v17;
          v17 = v23;
        }

        while (!v11);
      }

      v17 = v23;
    }

    while (v23 != v18);
  }

  return a1;
}

uint64_t *sub_298BCD5B0(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = sub_298BCD6A4(a1, a2, &v7, &v6, a3);
  if (!*v4)
  {
    operator new();
  }

  return *v4;
}

uint64_t *sub_298BCD6A4(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = *(v20 + 8);
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = (v38 + 1);
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = a4 + 4;
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_298BCDAA0(uint64_t **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *sub_298BCDBB4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_298BCDBB4(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

uint64_t *sub_298BCDD64(void **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *sub_298BCDBB4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_298BCDEA0(void **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *sub_298BCDBB4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_298BCDFE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_298AFE11C((a1 + 16), *(a2 + 16), *(a2 + 24));
    *(a1 + 40) = 0;
    v4 = a1 + 40;
    *(a1 + 64) = 0;
    if (*(a2 + 64) != 1)
    {
      goto LABEL_3;
    }

LABEL_13:
    if (*(a2 + 63) < 0)
    {
      sub_298AFE11C(v4, *(a2 + 40), *(a2 + 48));
      *(a1 + 64) = 1;
      if ((*(a2 + 95) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *(a2 + 40);
      *(v4 + 16) = *(a2 + 56);
      *v4 = v9;
      *(a1 + 64) = 1;
      if ((*(a2 + 95) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    sub_298AFE11C((a1 + 72), *(a2 + 72), *(a2 + 80));
    *(a1 + 96) = 0;
    v5 = a1 + 96;
    *(a1 + 120) = 0;
    if (*(a2 + 120) != 1)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (*(a2 + 119) < 0)
    {
      sub_298AFE11C(v5, *(a2 + 96), *(a2 + 104));
      *(a1 + 120) = 1;
      if ((*(a2 + 151) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = *(a2 + 96);
      *(v5 + 16) = *(a2 + 112);
      *v5 = v11;
      *(a1 + 120) = 1;
      if ((*(a2 + 151) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_6:
    sub_298AFE11C((a1 + 128), *(a2 + 128), *(a2 + 136));
    *(a1 + 152) = 0;
    v6 = a1 + 152;
    *(a1 + 176) = 0;
    if (*(a2 + 176) != 1)
    {
      goto LABEL_7;
    }

LABEL_23:
    if (*(a2 + 175) < 0)
    {
      sub_298AFE11C(v6, *(a2 + 152), *(a2 + 160));
      *(a1 + 176) = 1;
      if ((*(a2 + 207) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *(a2 + 152);
      *(v6 + 16) = *(a2 + 168);
      *v6 = v13;
      *(a1 + 176) = 1;
      if ((*(a2 + 207) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_8:
    sub_298AFE11C((a1 + 184), *(a2 + 184), *(a2 + 192));
    *(a1 + 208) = 0;
    v7 = a1 + 208;
    *(a1 + 232) = 0;
    if (*(a2 + 232) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v8;
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (*(a2 + 95) < 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v10 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v10;
  *(a1 + 96) = 0;
  v5 = a1 + 96;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (*(a2 + 151) < 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  v12 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v12;
  *(a1 + 152) = 0;
  v6 = a1 + 152;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (*(a2 + 207) < 0)
  {
    goto LABEL_8;
  }

LABEL_27:
  v14 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v14;
  *(a1 + 208) = 0;
  v7 = a1 + 208;
  *(a1 + 232) = 0;
  if (*(a2 + 232) != 1)
  {
LABEL_9:
    if (*(a2 + 263) < 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v16 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v16;
    *(a1 + 264) = 0;
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_28:
  if (*(a2 + 231) < 0)
  {
    sub_298AFE11C(v7, *(a2 + 208), *(a2 + 216));
    *(a1 + 232) = 1;
    if ((*(a2 + 263) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v15 = *(a2 + 208);
    *(v7 + 16) = *(a2 + 224);
    *v7 = v15;
    *(a1 + 232) = 1;
    if ((*(a2 + 263) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_10:
  sub_298AFE11C((a1 + 240), *(a2 + 240), *(a2 + 248));
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if (*(a2 + 288) != 1)
  {
    goto LABEL_37;
  }

LABEL_33:
  v17 = (a1 + 264);
  if (*(a2 + 287) < 0)
  {
    sub_298AFE11C(v17, *(a2 + 264), *(a2 + 272));
  }

  else
  {
    v18 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *v17 = v18;
  }

  *(a1 + 288) = 1;
LABEL_37:
  v19 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v19;
  return a1;
}

uint64_t sub_298BCE30C(uint64_t result)
{
  if (*(result + 288) != 1 || (*(result + 287) & 0x80000000) == 0)
  {
    if ((*(result + 263) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    v5 = result;
    operator delete(*(result + 240));
    result = v5;
    if (*(v5 + 232) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v10 = result;
  operator delete(*(result + 264));
  result = v10;
  if (*(v10 + 263) < 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  if (*(result + 232) != 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (*(result + 231) < 0)
  {
    v6 = result;
    operator delete(*(result + 208));
    result = v6;
  }

LABEL_7:
  if (*(result + 207) < 0)
  {
    v1 = result;
    operator delete(*(result + 184));
    result = v1;
    if (*(v1 + 176) != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(result + 176) != 1)
  {
    goto LABEL_11;
  }

  if (*(result + 175) < 0)
  {
    v7 = result;
    operator delete(*(result + 152));
    result = v7;
  }

LABEL_11:
  if (*(result + 151) < 0)
  {
    v2 = result;
    operator delete(*(result + 128));
    result = v2;
    if (*(v2 + 120) != 1)
    {
      goto LABEL_15;
    }
  }

  else if (*(result + 120) != 1)
  {
    goto LABEL_15;
  }

  if (*(result + 119) < 0)
  {
    v8 = result;
    operator delete(*(result + 96));
    result = v8;
  }

LABEL_15:
  if (*(result + 95) < 0)
  {
    v3 = result;
    operator delete(*(result + 72));
    result = v3;
    if (*(v3 + 64) != 1)
    {
      goto LABEL_19;
    }
  }

  else if (*(result + 64) != 1)
  {
    goto LABEL_19;
  }

  if (*(result + 63) < 0)
  {
    v9 = result;
    operator delete(*(result + 40));
    result = v9;
  }

LABEL_19:
  if (*(result + 39) < 0)
  {
    v4 = result;
    operator delete(*(result + 16));
    return v4;
  }

  return result;
}

void sub_298BCE4EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298BCE4EC(a1, *a2);
    sub_298BCE4EC(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      v5 = a2[6];
      v6 = a2[5];
      if (v5 != v4)
      {
        do
        {
          v5 = sub_298BCE30C(v5 - 320);
        }

        while (v5 != v4);
        v6 = a2[5];
      }

      a2[6] = v4;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

uint64_t sub_298BCE578(uint64_t a1)
{
  if (*(a1 + 176) != 1)
  {
    return a1;
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
      goto LABEL_6;
    }
  }

  else if (*(a1 + 80) != 1)
  {
    goto LABEL_6;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

LABEL_6:
  sub_298BCE714(a1 + 32, *(a1 + 40));
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_298BCE62C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298BCE62C(a1, *a2);
    sub_298BCE62C(a1, a2[1]);
    sub_298BCE4EC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_298BCE690(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298BCE690(a1, *a2);
    sub_298BCE690(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_298BCE714(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_298BCE714(a1, *a2);
    sub_298BCE714(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t sub_298BCE798(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 56);
  *(v1 + 56) = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AE9C3C(v2);
    MEMORY[0x29C2945F0](v5, 0x1020C404CDF6F5DLL);
    return v4;
  }

  return v1;
}

uint64_t sub_298BCE7F0(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  MEMORY[0x29C2945E0](*(a1 + 120), 8);
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void *sub_298BCE848(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

_BYTE **sub_298BCE938(uint64_t a1, unsigned int a2)
{
  if (*(a1 + a2 + 32))
  {
    return *(a1 + 8 * a2 + 40);
  }

  v8 = a2;
  v3 = a1;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a2;
    (*(*v4 + 48))(v4, &v8);
    a1 = v3;
    a2 = v5;
    return *(a1 + 8 * a2 + 40);
  }

  v6 = sub_298AE761C();
  return sub_298BCE9C0(v6, v7);
}

uint64_t *sub_298BCEA08(uint64_t *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_298BCEAE4(result, a4);
  }

  return result;
}

void sub_298BCEAE4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_298BCEB24(a1, a2);
  }

  sub_298ADDDA0();
}

void sub_298BCEB24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {

    operator new();
  }

  sub_298ADDDA0();
}

uint64_t *sub_298BCEB60(uint64_t *a1, uint64_t *a2)
{
  v2 = 126 - 2 * __clz(a2 - a1);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return sub_298BCEB84(a1, a2, v3, 1);
}

uint64_t *sub_298BCEB84(uint64_t *result, uint64_t *a2, uint64_t a3, int a4)
{
LABEL_1:
  v4 = a2 - 1;
  v5 = a2 - 2;
  v6 = a2 - 3;
LABEL_2:
  v7 = 1 - a3;
  while (1)
  {
    v8 = v7;
    v9 = a2 - result;
    if (v9 <= 2)
    {
      if (v9 == 2)
      {
        v10 = *(a2 - 1);
        v11 = *result;
        if (*(v10 + 4) < *(*result + 4))
        {
          *result = v10;
          *(a2 - 1) = v11;
        }

        return result;
      }

      if (v9 < 2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {

      return sub_298BCEF74(result, result + 1, result + 2, v4);
    }

    if (v9 == 5)
    {

      return sub_298BCF090(result, result + 1, result + 2, result + 3, v4);
    }

LABEL_19:
    if (v9 <= 23)
    {
      if (a4)
      {

        return sub_298BCF22C(result, a2);
      }

      else
      {

        return sub_298BCF2B0(result, a2);
      }
    }

    if (v7 == 1)
    {

      return sub_298BCF304(result, a2, a2);
    }

    v22 = a4;
    v23 = a2;
    v12 = v9 >> 1;
    v13 = &result[v9 >> 1];
    v14 = result;
    if (v9 < 0x81)
    {
      sub_298BCEEEC(&result[v9 >> 1], result, v4);
      v15 = v14;
    }

    else
    {
      sub_298BCEEEC(result, &result[v9 >> 1], v4);
      sub_298BCEEEC(v14 + 1, v13 - 1, v5);
      sub_298BCEEEC(v14 + 2, &v14[v12 + 1], v6);
      sub_298BCEEEC(v13 - 1, v13, &v14[v12 + 1]);
      v15 = v14;
      v16 = *v14;
      *v14 = *v13;
      *v13 = v16;
    }

    if ((v22 & 1) == 0 && *(*(v15 - 1) + 4) >= *(*v15 + 4))
    {
      result = sub_298BCF688(v15, v23);
      goto LABEL_33;
    }

    v17 = sub_298BCF754(v14, v23);
    LOBYTE(a4) = v22;
    v18 = v17;
    v19 = v14;
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }

    v21 = sub_298BCF820(v14, v17);
    if (sub_298BCF820((v18 + 8), v23))
    {
      a3 = -v8;
      a2 = v18;
      result = v14;
      a4 = v22;
      if (v21)
      {
        return result;
      }

      goto LABEL_1;
    }

    v7 = v8 + 1;
    a2 = v23;
    v19 = v14;
    a4 = v22;
    result = (v18 + 8);
    if (!v21)
    {
LABEL_32:
      sub_298BCEB84(v19, v18, -v8, a4 & 1);
      result = (v18 + 8);
LABEL_33:
      a4 = 0;
      a3 = -v8;
      a2 = v23;
      goto LABEL_2;
    }
  }

  return sub_298BCEEEC(result, result + 1, v4);
}

uint64_t *sub_298BCEEEC(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 4);
  v6 = *(*result + 4);
  v7 = *a3;
  v8 = *(*a3 + 4);
  if (v5 >= v6)
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v3;
      v9 = *result;
      if (*(*a2 + 4) < *(*result + 4))
      {
        *result = *a2;
        *a2 = v9;
      }
    }
  }

  else
  {
    if (v8 >= v5)
    {
      *result = v3;
      *a2 = v4;
      if (*(*a3 + 4) >= v6)
      {
        return result;
      }

      *a2 = *a3;
    }

    else
    {
      *result = v7;
    }

    *a3 = v4;
  }

  return result;
}

uint64_t *sub_298BCEF74(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 4);
  v7 = *(*result + 4);
  v8 = *a3;
  v9 = *(*a3 + 4);
  if (v6 >= v7)
  {
    if (v9 >= v6)
    {
      v4 = *a3;
      v11 = *a4;
      if (*(*a4 + 4) >= *(v8 + 4))
      {
        return result;
      }

      goto LABEL_12;
    }

    *a2 = v8;
    *a3 = v4;
    v10 = *result;
    if (*(*a2 + 4) < *(*result + 4))
    {
      *result = *a2;
      *a2 = v10;
      v4 = *a3;
      v11 = *a4;
      if (*(*a4 + 4) >= *(*a3 + 4))
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (v9 >= v6)
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 4) >= v7)
      {
        goto LABEL_11;
      }

      *a2 = v4;
    }

    else
    {
      *result = v8;
    }

    *a3 = v5;
    v4 = v5;
  }

LABEL_11:
  v11 = *a4;
  if (*(*a4 + 4) >= *(v4 + 4))
  {
    return result;
  }

LABEL_12:
  *a3 = v11;
  *a4 = v4;
  v12 = *a2;
  if (*(*a3 + 4) < *(*a2 + 4))
  {
    *a2 = *a3;
    *a3 = v12;
    v13 = *result;
    if (*(*a2 + 4) < *(*result + 4))
    {
      *result = *a2;
      *a2 = v13;
    }
  }

  return result;
}

uint64_t *sub_298BCF090(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 4);
  v8 = *(*result + 4);
  v9 = *a3;
  v10 = *(*a3 + 4);
  if (v7 < v8)
  {
    if (v10 >= v7)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(*a3 + 4) >= v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
    v5 = v6;
LABEL_11:
    v12 = *a4;
    if (*(*a4 + 4) >= *(v5 + 4))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v7)
  {
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 4) >= *(v9 + 4))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 4) >= *(*result + 4))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 4) >= *(*a3 + 4))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v13 = *a2;
  if (*(*a3 + 4) < *(*a2 + 4))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(*a2 + 4) < *(*result + 4))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(*a5 + 4) < *(*a4 + 4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(*a4 + 4) < *(*a3 + 4))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(*a3 + 4) < *(*a2 + 4))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(*a2 + 4) < *(*result + 4))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_298BCF22C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 8;
      v4 = result;
      do
      {
        v7 = *v4;
        v6 = v4[1];
        v4 = v2;
        v8 = *(v6 + 4);
        if (v8 < *(v7 + 4))
        {
          v9 = v3;
          do
          {
            *(result + v9) = v7;
            v10 = v9 - 8;
            if (v9 == 8)
            {
              v5 = result;
              goto LABEL_5;
            }

            v7 = *(result + v9 - 16);
            v9 -= 8;
          }

          while (v8 < *(v7 + 4));
          v5 = (result + v10);
LABEL_5:
          *v5 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

void *sub_298BCF2B0(void *result, void *a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v3 = *result;
      v2 = result[1];
      ++result;
      v4 = *(v2 + 4);
      if (v4 < *(v3 + 4))
      {
        v5 = result;
        do
        {
          *v5 = v3;
          v3 = *(v5 - 2);
          --v5;
        }

        while (v4 < *(v3 + 4));
        *v5 = v2;
      }
    }
  }

  return result;
}

char *sub_298BCF304(char *result, char *a2, char *a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = (a2 - result) >> 3;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &result[8 * v7];
        v9 = *v8;
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && *(v9 + 4) < *(*(v8 + 1) + 4))
        {
          v9 = *(v8 + 1);
          v8 += 8;
          v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v10 = &result[8 * v5];
        v11 = *v10;
        v12 = *(*v10 + 4);
        if (*(v9 + 4) >= v12)
        {
          do
          {
            v13 = v8;
            *v10 = v9;
            if (v4 < v7)
            {
              break;
            }

            v14 = (2 * (v7 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v8 = &result[8 * v14];
            v15 = 2 * v7 + 2;
            v9 = *v8;
            if (v15 < v3 && *(v9 + 4) < *(*(v8 + 1) + 4))
            {
              v9 = *(v8 + 1);
              v8 += 8;
              v14 = v15;
            }

            v10 = v13;
            v7 = v14;
          }

          while (*(v9 + 4) >= v12);
          *v13 = v11;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  if (a2 != a3)
  {
    v16 = result + 16;
    v17 = *result;
    if (v3 < 2)
    {
      v18 = a2;
      do
      {
        v19 = *v18;
        if (*(*v18 + 4) < *(v17 + 4))
        {
          *v18 = v17;
          *result = v19;
          v17 = v19;
        }

        v18 += 8;
      }

      while (v18 != a3);
      goto LABEL_45;
    }

    for (i = a2; i != a3; i += 8)
    {
      v21 = *i;
      v22 = *(*i + 4);
      if (v22 < *(v17 + 4))
      {
        *i = v17;
        *result = v21;
        v23 = *(result + 1);
        if (a2 - result == 16)
        {
          v24 = result + 8;
          v25 = 1;
          if (*(v23 + 4) >= v22)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v30 = *(v23 + 4);
          v31 = *(*v16 + 4);
          if (v30 >= v31)
          {
            v24 = result + 8;
          }

          else
          {
            v23 = *v16;
            v24 = result + 16;
          }

          if (v30 >= v31)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (*(v23 + 4) >= v22)
          {
LABEL_30:
            v26 = result;
            do
            {
              v27 = v24;
              *v26 = v23;
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v28 = (2 * v25) | 1;
              v24 = &result[8 * v28];
              v29 = 2 * v25 + 2;
              v23 = *v24;
              if (v29 < v3 && *(v23 + 4) < *(*(v24 + 1) + 4))
              {
                v23 = *(v24 + 1);
                v24 += 8;
                v28 = v29;
              }

              v26 = v27;
              v25 = v28;
            }

            while (*(v23 + 4) >= v22);
            *v27 = v21;
            v17 = *result;
            continue;
          }
        }

        v17 = v21;
      }
    }
  }

LABEL_45:
  if (v3 >= 2)
  {
    do
    {
      v32 = 0;
      v33 = *result;
      v34 = (v3 - 2) >> 1;
      v35 = result;
      do
      {
        while (1)
        {
          v41 = &v35[8 * v32];
          v40 = v41 + 8;
          v39 = *(v41 + 1);
          v42 = (2 * v32) | 1;
          v32 = 2 * v32 + 2;
          if (v32 < v3)
          {
            break;
          }

          v32 = v42;
          *v35 = v39;
          v35 = v41 + 8;
          if (v42 > v34)
          {
            goto LABEL_56;
          }
        }

        v38 = *(v41 + 2);
        v36 = v41 + 16;
        v37 = v38;
        if (*(v39 + 4) >= *(v38 + 4))
        {
          v32 = v42;
        }

        else
        {
          v39 = v37;
          v40 = v36;
        }

        *v35 = v39;
        v35 = v40;
      }

      while (v32 <= v34);
LABEL_56:
      a2 -= 8;
      if (v40 == a2)
      {
        *v40 = v33;
      }

      else
      {
        *v40 = *a2;
        *a2 = v33;
        v43 = (v40 - result + 8) >> 3;
        v6 = v43 < 2;
        v44 = v43 - 2;
        if (!v6)
        {
          v45 = v44 >> 1;
          v46 = &result[8 * v45];
          v47 = *v46;
          v48 = *v40;
          v49 = *(*v40 + 4);
          if (*(*v46 + 4) < v49)
          {
            do
            {
              v50 = v46;
              *v40 = v47;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &result[8 * v45];
              v47 = *v46;
              v40 = v50;
            }

            while (*(*v46 + 4) < v49);
            *v50 = v48;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return result;
}

uint64_t *sub_298BCF688(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  if (v3 >= *(*(a2 - 1) + 4))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= *(*v4 + 4));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v3 >= *(v5 + 4));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 < *(v7 + 4));
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v3 >= *(v10 + 4));
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 < *(v11 + 4));
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

void *sub_298BCF754(void *a1, void *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(*a1 + 4);
  do
  {
    v5 = a1[++v2];
  }

  while (*(v5 + 4) < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (*(v9 + 4) >= v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (*(v8 + 4) >= v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while (*(v13 + 4) < v4);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while (*(v14 + 4) >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_298BCF820(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(v7 + 4);
      v9 = *(*a1 + 4);
      v10 = *(a2 - 1);
      v11 = *(v10 + 4);
      if (v8 >= v9)
      {
        if (v11 >= v8)
        {
          return 1;
        }

        a1[1] = v10;
        *(a2 - 1) = v7;
        v33 = *a1;
        v32 = a1[1];
        if (*(v32 + 4) >= *(*a1 + 4))
        {
          return 1;
        }

        *a1 = v32;
        a1[1] = v33;
        return 1;
      }

      else if (v11 >= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v47 + 4) >= v9)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v10;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_298BCF090(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

LABEL_14:
      v13 = a1 + 2;
      v12 = a1[2];
      v14 = a1[1];
      v15 = *a1;
      v16 = *(v14 + 4);
      v17 = *(*a1 + 4);
      v18 = *(v12 + 4);
      if (v16 >= v17)
      {
        if (v18 >= v16)
        {
          goto LABEL_28;
        }

        a1[1] = v12;
        *v13 = v14;
        v19 = a1;
        v20 = a1 + 1;
      }

      else
      {
        v19 = a1;
        v20 = a1 + 2;
        if (v18 < v16)
        {
LABEL_27:
          *v19 = v12;
          *v20 = v15;
          goto LABEL_28;
        }

        *a1 = v14;
        a1[1] = v15;
        v19 = a1 + 1;
        v20 = a1 + 2;
      }

      if (v18 < v17)
      {
        goto LABEL_27;
      }

LABEL_28:
      v34 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v35 = 0;
      for (i = 24; ; i += 8)
      {
        v37 = *v34;
        v38 = *v13;
        v39 = *(*v34 + 4);
        if (v39 < *(v38 + 4))
        {
          break;
        }

LABEL_31:
        v13 = v34++;
        if (v34 == a2)
        {
          return 1;
        }
      }

      v40 = i;
      do
      {
        *(a1 + v40) = v38;
        v41 = v40 - 8;
        if (v40 == 8)
        {
          *a1 = v37;
          if (++v35 != 8)
          {
            goto LABEL_31;
          }

          return v34 + 1 == a2;
        }

        v38 = *(a1 + v40 - 16);
        v40 -= 8;
      }

      while (v39 < *(v38 + 4));
      *(a1 + v41) = v37;
      if (++v35 != 8)
      {
        goto LABEL_31;
      }

      return v34 + 1 == a2;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    v26 = *(v22 + 4);
    v27 = *(*a1 + 4);
    v28 = *(v24 + 4);
    if (v26 >= v27)
    {
      if (v28 >= v26)
      {
        goto LABEL_43;
      }

      *v21 = v24;
      *v23 = v22;
      v29 = a1;
      v30 = a1 + 1;
      v31 = v22;
      if (v28 >= v27)
      {
LABEL_41:
        v42 = *(a2 - 1);
        if (*(v42 + 4) >= *(v22 + 4))
        {
          return 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v29 = a1;
      v30 = a1 + 2;
      v31 = *a1;
      if (v28 >= v26)
      {
        *a1 = v22;
        a1[1] = v25;
        v29 = a1 + 1;
        v30 = a1 + 2;
        v31 = v25;
        if (v28 >= v27)
        {
LABEL_43:
          v22 = v24;
          v42 = *(a2 - 1);
          if (*(v42 + 4) >= *(v22 + 4))
          {
            return 1;
          }

LABEL_44:
          *v23 = v42;
          *(a2 - 1) = v22;
          v43 = *v23;
          v44 = *v21;
          v45 = *(v43 + 4);
          if (v45 >= *(v44 + 4))
          {
            return 1;
          }

          a1[1] = v43;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *(*a1 + 4))
          {
            return 1;
          }

          *a1 = v43;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v29 = v24;
    *v30 = v25;
    v22 = v31;
    goto LABEL_41;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  if (*(v4 + 4) >= *(*a1 + 4))
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}

void sub_298BCFB60(char **a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 < v3)
  {
    *v2 = -1;
    v15 = v2 + 4;
  }

  else
  {
    v4 = (v2 - *a1) >> 2;
    v5 = v4 + 1;
    if ((v4 + 1) >> 62)
    {
      sub_298ADDDA0();
    }

    v6 = v3 - *a1;
    if (v6 >> 1 > v5)
    {
      v5 = v6 >> 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v5;
    }

    sub_298BCFC44(&v17, v7, v4, a1);
    v9 = v18;
    v8 = v19;
    *v19 = -1;
    *&v19 = v8 + 4;
    v10 = a1[1] - *a1;
    v11 = &v9[-v10];
    memcpy(&v9[-v10], *a1, v10);
    v12 = *a1;
    *a1 = v11;
    v13 = a1[2];
    v14 = v19;
    *(a1 + 1) = v19;
    *&v19 = v12;
    *(&v19 + 1) = v13;
    v17 = v12;
    v18 = v12;
    if (v12)
    {
      v16 = v14;
      operator delete(v12);
      v14 = v16;
    }

    v15 = v14;
  }

  a1[1] = v15;
}

uint64_t *sub_298BCFC44(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *a1 = 0;
  a1[1] = 4 * a3;
  a1[2] = 4 * a3;
  a1[3] = 0;
  return a1;
}

double sub_298BCFCBC(char **a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    sub_298ADDDA0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  sub_298BCFC44(&v16, v7, v2, a1);
  v9 = v17;
  v8 = v18;
  *v18 = *a2;
  *&v18 = v8 + 4;
  v10 = a1[1] - *a1;
  v11 = &v9[-v10];
  memcpy(&v9[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  result = *&v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  if (v12)
  {
    v15 = result;
    operator delete(v12);
    return v15;
  }

  return result;
}

__n128 sub_298BCFE08(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E838;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_298BCFE40(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = a1[1];
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = a1[2];
    v3 = a1[3];
    if (os_signpost_enabled(v2))
    {
      v4 = *(v3 + 16);
      v5 = *(*(*(v3 + 48) + 40) + 4);
      if (*(v3 + 8) == 1)
      {
        v6 = "Ranges";
      }

      else
      {
        v6 = "Timestamps";
      }

      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      v9 = 134219010;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "DecodeJob::run", "jobid=%zu, cluster=%u, kind=%s, startUnit=%llu, endUnit=%llu", &v9, 0x30u);
    }
  }
}

uint64_t sub_298BCFF54(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = sub_298BD00C8(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if (v4)
  {
    return v7;
  }

  return sub_298BCFFCC(a1, v5, a2);
}

uint64_t sub_298BCFFCC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
LABEL_7:
    v7 = a1;
    v8 = a3;
    sub_298BD0160(a1, v5);
    v9 = 0;
    sub_298BD00C8(*v7, *(v7 + 4), *v8, &v9);
    a1 = v7;
    a3 = v8;
    a2 = v9;
    ++*(v7 + 2);
    if (*a2 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
    goto LABEL_7;
  }

  ++*(a1 + 2);
  if (*a2 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *a2 = *a3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return a2;
}

uint64_t sub_298BD00C8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 72 * v5);
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
        v6 = (a1 + 72 * (v13 & v4));
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

void *sub_298BD0160(uint64_t *a1, int a2)
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
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298BD02A4(a1, v4, v4 + 72 * v3);

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 72 * v10 - 72;
    if (v11 < 0x48)
    {
      v13 = result;
LABEL_13:
      v16 = &result[9 * v10];
      do
      {
        *v13 = -1;
        v13 += 9;
      }

      while (v13 != v16);
      return result;
    }

    v12 = v11 / 0x48 + 1;
    v13 = &result[9 * (v12 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v12 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -1;
      v14[9] = -1;
      v14 += 18;
      v15 -= 2;
    }

    while (v15);
    if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_298BD02A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v10 = *result;
LABEL_6:
      v13 = &v7[9 * v6];
      do
      {
        *v10 = -1;
        v10 += 9;
      }

      while (v10 != v13);
      goto LABEL_10;
    }

    v9 = v8 / 0x48 + 1;
    v10 = &v7[9 * (v9 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *result;
    v12 = v9 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[9] = -1;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }
  }

LABEL_10:
  while (a2 != a3)
  {
    v14 = *a2;
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = 0;
      result = sub_298BD00C8(*v5, *(v5 + 16), v14, &v19);
      v15 = v19;
      *v19 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 24);
      v18 = *(a2 + 40);
      *(v15 + 7) = *(a2 + 56);
      *(v15 + 5) = v18;
      *(v15 + 3) = v17;
      *(v15 + 1) = v16;
      ++*(v5 + 8);
    }

    a2 += 72;
  }

  return result;
}

void *sub_298BD03DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v12[4] = a1;
  if (v7)
  {
    sub_298AEF838(v7);
  }

  v8 = (8 * (v3 >> 3));
  v9 = *a2;
  *a2 = 0;
  *v8++ = v9;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v8;
  v10 = *(a1 + 16);
  *(a1 + 16) = 0;
  v12[2] = v2;
  v12[3] = v10;
  v12[0] = v2;
  v12[1] = v2;
  sub_298BD04C4(v12);
  return v8;
}

uint64_t sub_298BD04C4(uint64_t a1)
{
  sub_298BD0504(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298BD0504(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_298BD0580(void *a1)
{
  *a1 = &unk_2A1F1E418;
  sub_298AE88F0((a1 + 10));
  return a1;
}

void sub_298BD05C4(void *a1)
{
  *a1 = &unk_2A1F1E418;
  sub_298AE88F0((a1 + 10));

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BD0628@<X0>(uint64_t result@<X0>, void **a2@<X8>)
{
  v183 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v3 = *(result + 8);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4 == v5)
  {
    return result;
  }

  v6 = result;
  v7 = &v164;
  v8 = sub_298BD1B60;
  do
  {
    while (1)
    {
      v146 = v4[6];
      result = (*(*v146 + 24))(v146);
      if (!result)
      {
        goto LABEL_363;
      }

      v152 = v8;
      if (*(v6 + 24) == 1 && *(v4[5] + 4) != *(v6 + 20))
      {
        goto LABEL_13;
      }

      sub_298BC17AC(v4[7]);
      v147 = v4[5];
      if (*(v147 + 98) == 1)
      {
        break;
      }

      v9 = v146[1];
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v164 = v9;
      v168 = 0x1000000;
      v169 = 0;
      v11 = *(v147 + 48);
      v10 = *(v147 + 56);
      if (!v10)
      {
        v10 = v11;
      }

      LOBYTE(v171) = 0;
      v172[0] = v11;
      v172[1] = v10;
      v170 = &unk_2A1F1EBD8;
      v172[2] = &v164;
      v173 = 0;
      v174 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      if (*(v6 + 40) == 1)
      {
        (*(*v146 + 48))(&v154, v146, *(v6 + 32), *(v6 + 48), v4, &v170, &v164);
      }

      else
      {
        v13 = (*(*v146 + 24))(v146);
        (*(*v146 + 48))(&v154, v146, 0, v13, v4, &v170, &v164);
      }

      v14 = v169;
      v169 = 0;
      if (!v14)
      {
        if (!v154)
        {
          goto LABEL_13;
        }

        goto LABEL_357;
      }

      MEMORY[0x29C2945C0](v14, 0x1000C8077774924);
      if (v154)
      {
        goto LABEL_357;
      }

LABEL_13:
      v8 = v152;
      result = sub_298B06C6C(v4[7] + 112, v152, &v170);
      v4 += 8;
      if (v4 == v5)
      {
        return result;
      }
    }

    v148 = *(v147 + 184);
    v165 = 0;
    v166 = 0;
    v167 = 0;
    v164 = v148;
    v168 = 0x1000000;
    v169 = 0;
    v149 = (*(*v148 + 24))(v148);
    v170 = v148;
    v171 = 0;
    v172[0] = v149;
    sub_298C38928(&v170, 0, v149, &v164, v181);
    if (v182)
    {
      v144 = *v181;
      *v181 = 0;
      v154 = v144;
      if (v144)
      {
        v145 = v169;
        v169 = 0;
        if (v145)
        {
          goto LABEL_345;
        }

LABEL_356:
        if (!v144)
        {
          goto LABEL_13;
        }

        goto LABEL_357;
      }
    }

    else
    {
      v154 = 0;
    }

    v162 = v7;
    v163 = 0;
    sub_298B9702C(v181, &v162, 10, -1, 1);
    v161 = 0;
    LOBYTE(v157[0]) = 1;
    *(v157 + 1) = 0;
    BYTE5(v157[0]) = 0;
    memset(&v157[1], 0, 14);
    v159 = 0;
    v160 = 0;
    v158 = 0;
    v156[0] = 0;
    v12 = v162;
    if (!v163)
    {
      goto LABEL_339;
    }

    v153 = (v162 + 16 * v163);
    do
    {
      v155 = *v12;
      if (*(&v155 + 1) >= 0xAuLL)
      {
        if (*v155 == 0x656D697420212023 && *(v155 + 8) == 8250)
        {
          if (*(&v155 + 1) == 10)
          {
            goto LABEL_79;
          }

          v31 = 0;
          v32 = (v155 + 10);
          v33 = *(&v155 + 1) - 10;
          while (*v32 >= 48)
          {
            v34 = *v32;
            if (v34 >= 0x3A)
            {
              if (v34 < 0x61)
              {
                if (v34 - 65 > 0x19)
                {
                  break;
                }

                v35 = -55;
              }

              else
              {
                if (v34 >= 0x7B)
                {
                  break;
                }

                v35 = -87;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v35 + v34;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v31 + v36;
            if (v31 > v37 / 0xA)
            {
              goto LABEL_79;
            }

            ++v32;
            v31 = v37;
            if (!--v33)
            {
              goto LABEL_78;
            }
          }

          v37 = v31;
LABEL_78:
          if (*(&v155 + 1) - 10 == v33)
          {
LABEL_79:
            v37 = 0;
          }

          v157[1] = v37;
          goto LABEL_22;
        }

        if (*v155 == 0x65726F6320212023 && *(v155 + 8) == 8250)
        {
          v38 = *(&v155 + 1) - 10;
          if (*(&v155 + 1) != 10)
          {
            v39 = 0;
            v40 = (v155 + 10);
            v41 = *(&v155 + 1) - 10;
            while (*v40 >= 48)
            {
              v42 = *v40;
              if (v42 >= 0x3A)
              {
                if (v42 < 0x61)
                {
                  if (v42 - 65 > 0x19)
                  {
                    break;
                  }

                  v43 = -55;
                }

                else
                {
                  if (v42 >= 0x7B)
                  {
                    break;
                  }

                  v43 = -87;
                }
              }

              else
              {
                v43 = -48;
              }

              v44 = v43 + v42;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v39 + v44;
              if (v39 > v45 / 0xA)
              {
                BYTE3(v157[0]) = 0;
                goto LABEL_22;
              }

              ++v40;
              v39 = v45;
              if (!--v41)
              {
                goto LABEL_96;
              }
            }

            LOBYTE(v45) = v39;
LABEL_96:
            if (v38 == v41)
            {
              LOBYTE(v38) = 0;
            }

            else
            {
              LOBYTE(v38) = v45;
            }
          }

          BYTE3(v157[0]) = v38;
          goto LABEL_22;
        }

LABEL_35:
        v20 = *v155 == 1835868195 && *(v155 + 3) == 540702061;
        if (v20 && (*(&v155 + 1) - 7) >= 0xB)
        {
          if (*(v155 + 7) == 0x76203A306C6C6966 && *(v155 + 10) == 0x3D6E7076203A306CLL)
          {
            v51 = *(&v155 + 1) - 18;
            if (*(&v155 + 1) != 18)
            {
              v52 = (v155 + 18);
              if (*(&v155 + 1) == 19)
              {
                v53 = 10;
                v51 = 1;
LABEL_198:
                v97 = 0;
                v98 = &v52[v51];
                v99 = v52;
                v100 = v51;
                v101 = v53;
                while (*v99 >= 48)
                {
                  v102 = *v99;
                  if (v102 >= 0x3A)
                  {
                    if (v102 < 0x61)
                    {
                      if (v102 - 65 > 0x19)
                      {
                        break;
                      }

                      v103 = -55;
                    }

                    else
                    {
                      if (v102 >= 0x7B)
                      {
                        break;
                      }

                      v103 = -87;
                    }
                  }

                  else
                  {
                    v103 = -48;
                  }

                  v104 = v103 + v102;
                  if (v104 >= v101)
                  {
                    break;
                  }

                  v105 = v97 * v101 + v104;
                  if (v105 / v101 < v97)
                  {
                    v106 = 1;
                    v16 = (v105 << 13) & 0xFFFFFFFFFE000000;
                    v107 = v51 - 4;
                    if (v51 < 4)
                    {
                      goto LABEL_218;
                    }

LABEL_216:
                    if (*v52 == 1028091424)
                    {
                      v52 += 4;
                      v51 = v107;
                      goto LABEL_218;
                    }

                    goto LABEL_220;
                  }

                  ++v99;
                  v97 = v105;
                  if (!--v100)
                  {
                    goto LABEL_212;
                  }
                }

                v105 = v97;
                v98 = v99;
LABEL_212:
                if (v51 == v100)
                {
                  v106 = 1;
                }

                else
                {
                  v51 = v100;
                  v52 = v98;
                  v106 = 0;
                }

                v16 = (v105 << 13) & 0xFFFFFFFFFE000000;
                v107 = v51 - 4;
                if (v51 >= 4)
                {
                  goto LABEL_216;
                }

LABEL_218:
                if (!v51)
                {
                  goto LABEL_257;
                }

                if (v51 == 1)
                {
LABEL_237:
                  v111 = 10;
                  goto LABEL_242;
                }

LABEL_220:
                v108 = *v52;
                if ((v108 - 65) >= 0x1A)
                {
                  v109 = *v52;
                }

                else
                {
                  v109 = v108 + 32;
                }

                if (v109 != 48)
                {
                  goto LABEL_230;
                }

                v110 = v52[1];
                if ((v110 - 65) < 0x1A)
                {
                  v110 += 32;
                }

                if (v110 == 98)
                {
                  v111 = 2;
                }

                else
                {
                  if (v110 == 120)
                  {
                    v111 = 16;
                    goto LABEL_240;
                  }

LABEL_230:
                  if (*v52 != *"0o")
                  {
                    if (v108 != 48)
                    {
                      goto LABEL_237;
                    }

                    if (v52[1] - 48 <= 9)
                    {
                      v111 = 8;
                    }

                    else
                    {
                      v111 = 10;
                    }

                    if (v52[1] - 48 <= 9)
                    {
                      ++v52;
                      --v51;
                    }

LABEL_242:
                    v112 = 0;
                    v113 = v111;
                    v114 = v51;
                    while (*v52 >= 48)
                    {
                      v115 = *v52;
                      if (v115 >= 0x3A)
                      {
                        if (v115 < 0x61)
                        {
                          if (v115 - 65 > 0x19)
                          {
                            break;
                          }

                          v116 = -55;
                        }

                        else
                        {
                          if (v115 >= 0x7B)
                          {
                            break;
                          }

                          v116 = -87;
                        }
                      }

                      else
                      {
                        v116 = -48;
                      }

                      v117 = v116 + v115;
                      if (v117 >= v113)
                      {
                        break;
                      }

                      v118 = v112 * v113 + v117;
                      if (v118 / v113 < v112)
                      {
                        goto LABEL_257;
                      }

                      ++v52;
                      v112 = v118;
                      if (!--v114)
                      {
                        goto LABEL_256;
                      }
                    }

                    v118 = v112;
LABEL_256:
                    if (v51 != v114)
                    {
                      v15 = 0;
                      if (v118 < 0x100)
                      {
                        v15 = v118;
                      }

                      LOWORD(v171) = 0;
                      if (v106)
                      {
                        v16 = 0;
                      }

                      v17 = ((v15 << 14) | v16);
                      goto LABEL_20;
                    }

LABEL_257:
                    LOWORD(v171) = 0;
                    if (!v106)
                    {
                      goto LABEL_259;
                    }

LABEL_258:
                    v16 = 0;
LABEL_259:
                    v17 = v16;
LABEL_20:
                    v170 = v17;
                    LODWORD(v157[2]) = 5;
                    v158 = &v170;
                    v159 = 5;
                    sub_298BC2340(v4[7], v157, v4);
LABEL_21:
                    ++v160;
                    goto LABEL_22;
                  }

                  v111 = 8;
                }

LABEL_240:
                v51 -= 2;
                if (!v51)
                {
                  goto LABEL_257;
                }

                v52 += 2;
                goto LABEL_242;
              }

              v86 = *v52;
              if ((v86 - 65) >= 0x1A)
              {
                v87 = *v52;
              }

              else
              {
                v87 = v86 + 32;
              }

              if (v87 != 48)
              {
                goto LABEL_169;
              }

              v88 = *(v155 + 19);
              if ((v88 - 65) < 0x1A)
              {
                v88 += 32;
              }

              if (v88 == 98)
              {
                v52 = (v155 + 20);
                v51 = *(&v155 + 1) - 20;
                v53 = 2;
                goto LABEL_197;
              }

              if (v88 != 120)
              {
LABEL_169:
                if (*v52 == *"0o")
                {
                  v52 = (v155 + 20);
                  v51 = *(&v155 + 1) - 20;
                  v53 = 8;
                }

                else
                {
                  if (v86 == 48)
                  {
                    v89 = *(v155 + 19);
                    v90 = (v89 - 48) > 9;
                    if ((v89 - 48) <= 9)
                    {
                      v53 = 8;
                    }

                    else
                    {
                      v53 = 10;
                    }

                    if (!v90)
                    {
                      v52 = (v155 + 19);
                      v51 = *(&v155 + 1) - 19;
                    }

                    goto LABEL_198;
                  }

                  v53 = 10;
                }

                goto LABEL_197;
              }

              v52 = (v155 + 20);
              v51 = *(&v155 + 1) - 20;
              v53 = 16;
LABEL_197:
              if (v51)
              {
                goto LABEL_198;
              }
            }

            LOWORD(v171) = 0;
            goto LABEL_258;
          }

          if (*(v155 + 7) == 0x70203A316C6C6966 && *(v155 + 10) == 0x3D6E7070203A316CLL)
          {
            v54 = 1;
            v55 = *(&v155 + 1) - 18;
            if (*(&v155 + 1) == 18)
            {
              v91 = 0;
              goto LABEL_326;
            }

            v56 = (v155 + 18);
            if (*(&v155 + 1) == 19)
            {
              v57 = 10;
              v55 = 1;
LABEL_264:
              v119 = 0;
              v120 = &v56[v55];
              v121 = v56;
              v122 = v55;
              v123 = v57;
              while (*v121 >= 48)
              {
                v124 = *v121;
                if (v124 >= 0x3A)
                {
                  if (v124 < 0x61)
                  {
                    if (v124 - 65 > 0x19)
                    {
                      break;
                    }

                    v125 = -55;
                  }

                  else
                  {
                    if (v124 >= 0x7B)
                    {
                      break;
                    }

                    v125 = -87;
                  }
                }

                else
                {
                  v125 = -48;
                }

                v126 = v125 + v124;
                if (v126 >= v123)
                {
                  break;
                }

                v127 = v119 * v123 + v126;
                if (v127 / v123 < v119)
                {
                  v54 = 1;
                  v91 = (v127 >> 9) & 0x7FFFFFFFFFFFF8;
                  v128 = v55 - 6;
                  if (v55 < 6)
                  {
                    goto LABEL_288;
                  }

LABEL_282:
                  if (*v56 == 1634887456 && *(v56 + 2) == 15726)
                  {
                    v56 += 6;
                    v55 = v128;
                    goto LABEL_288;
                  }

                  goto LABEL_290;
                }

                ++v121;
                v119 = v127;
                if (!--v122)
                {
                  goto LABEL_278;
                }
              }

              v127 = v119;
              v120 = v121;
LABEL_278:
              if (v55 == v122)
              {
                v54 = 1;
              }

              else
              {
                v55 = v122;
                v56 = v120;
                v54 = 0;
              }

              v91 = (v127 >> 9) & 0x7FFFFFFFFFFFF8;
              v128 = v55 - 6;
              if (v55 >= 6)
              {
                goto LABEL_282;
              }

LABEL_288:
              if (!v55)
              {
                goto LABEL_326;
              }

              if (v55 == 1)
              {
LABEL_306:
                v133 = 10;
                goto LABEL_311;
              }

LABEL_290:
              v130 = *v56;
              if ((v130 - 65) >= 0x1A)
              {
                v131 = *v56;
              }

              else
              {
                v131 = v130 + 32;
              }

              if (v131 != 48)
              {
                goto LABEL_299;
              }

              v132 = v56[1];
              if ((v132 - 65) < 0x1A)
              {
                v132 += 32;
              }

              if (v132 == 98)
              {
                v133 = 2;
              }

              else
              {
                if (v132 == 120)
                {
                  v133 = 16;
                  goto LABEL_309;
                }

LABEL_299:
                if (*v56 != *"0o")
                {
                  if (v130 != 48)
                  {
                    goto LABEL_306;
                  }

                  if (v56[1] - 48 <= 9)
                  {
                    v133 = 8;
                  }

                  else
                  {
                    v133 = 10;
                  }

                  if (v56[1] - 48 <= 9)
                  {
                    ++v56;
                    --v55;
                  }

LABEL_311:
                  v134 = 0;
                  v135 = v133;
                  v136 = v55;
                  while (*v56 >= 48)
                  {
                    v137 = *v56;
                    if (v137 >= 0x3A)
                    {
                      if (v137 < 0x61)
                      {
                        if (v137 - 65 > 0x19)
                        {
                          break;
                        }

                        v138 = -55;
                      }

                      else
                      {
                        if (v137 >= 0x7B)
                        {
                          break;
                        }

                        v138 = -87;
                      }
                    }

                    else
                    {
                      v138 = -48;
                    }

                    v139 = v138 + v137;
                    if (v139 >= v135)
                    {
                      break;
                    }

                    v140 = v134 * v135 + v139;
                    if (v140 / v135 < v134)
                    {
                      goto LABEL_326;
                    }

                    ++v56;
                    v134 = v140;
                    if (!--v136)
                    {
                      goto LABEL_325;
                    }
                  }

                  v140 = v134;
LABEL_325:
                  if (v55 == v136)
                  {
LABEL_326:
                    v141 = 0;
                  }

                  else
                  {
                    v141 = v140 << 33;
                  }

LABEL_328:
                  LOWORD(v171) = 0;
                  v142 = 1;
                  if (!v54)
                  {
                    v142 = v91 + 1;
                  }

                  v17 = (v141 | v142);
                  goto LABEL_20;
                }

                v133 = 8;
              }

LABEL_309:
              v55 -= 2;
              if (!v55)
              {
                goto LABEL_326;
              }

              v56 += 2;
              goto LABEL_311;
            }

            v92 = *v56;
            if ((v92 - 65) >= 0x1A)
            {
              v93 = *v56;
            }

            else
            {
              v93 = v92 + 32;
            }

            if (v93 == 48)
            {
              v94 = *(v155 + 19);
              if ((v94 - 65) < 0x1A)
              {
                v94 += 32;
              }

              if (v94 == 98)
              {
                v56 = (v155 + 20);
                v55 = *(&v155 + 1) - 20;
                v57 = 2;
                goto LABEL_263;
              }

              if (v94 == 120)
              {
                v56 = (v155 + 20);
                v55 = *(&v155 + 1) - 20;
                v57 = 16;
LABEL_263:
                if (v55)
                {
                  goto LABEL_264;
                }

                v91 = 0;
                v54 = 1;
                v141 = 0;
                goto LABEL_328;
              }
            }

            if (*v56 == *"0o")
            {
              v56 = (v155 + 20);
              v55 = *(&v155 + 1) - 20;
              v57 = 8;
            }

            else
            {
              if (v92 == 48)
              {
                v95 = *(v155 + 19);
                v96 = (v95 - 48) > 9;
                if ((v95 - 48) <= 9)
                {
                  v57 = 8;
                }

                else
                {
                  v57 = 10;
                }

                if (!v96)
                {
                  v56 = (v155 + 19);
                  v55 = *(&v155 + 1) - 19;
                }

                goto LABEL_264;
              }

              v57 = 10;
            }

            goto LABEL_263;
          }
        }

LABEL_49:
        if (*v155 == 1634738211 && *(v155 + 4) == 8250)
        {
          v28 = *(&v155 + 1) - 6;
          if (*(&v155 + 1) == 6)
          {
            goto LABEL_141;
          }

          v29 = (v155 + 6);
          if (*(&v155 + 1) == 7)
          {
            v30 = 10;
            v28 = 1;
LABEL_126:
            v58 = 0;
            v59 = v30;
            v60 = v28;
            while (*v29 >= 48)
            {
              v61 = *v29;
              if (v61 >= 0x3A)
              {
                if (v61 < 0x61)
                {
                  if (v61 - 65 > 0x19)
                  {
                    break;
                  }

                  v62 = -55;
                }

                else
                {
                  if (v61 >= 0x7B)
                  {
                    break;
                  }

                  v62 = -87;
                }
              }

              else
              {
                v62 = -48;
              }

              v63 = v62 + v61;
              if (v63 >= v59)
              {
                break;
              }

              v64 = v58 * v59 + v63;
              if (v64 / v59 < v58)
              {
                goto LABEL_141;
              }

              ++v29;
              v58 = v64;
              if (!--v60)
              {
                goto LABEL_140;
              }
            }

            v64 = v58;
LABEL_140:
            if (v28 == v60)
            {
LABEL_141:
              v64 = 0;
            }

            v170 = v172;
            v171 = 0x600000000;
            v65 = v4[7];
            v66 = *(v65 + 424);
            v67 = *(v65 + 440);
            v68 = (v66 + 16 * v67);
            if (v67)
            {
              v69 = v67 - 1;
              LODWORD(v70) = v69 & (37 * (v64 >> 25));
              v71 = (v66 + 16 * v70);
              v72 = *v71;
              if (v64 >> 25 != *v71)
              {
                v73 = v7;
                v74 = 1;
                while (1)
                {
                  v7 = v73;
                  if (v72 == -1)
                  {
                    goto LABEL_148;
                  }

                  v75 = v70 + v74++;
                  v70 = v75 & v69;
                  v72 = *(v66 + 16 * v70);
                  if (v64 >> 25 == v72)
                  {
                    v71 = (v66 + 16 * v70);
                    v7 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
LABEL_148:
              v71 = v68;
            }

            if (v71 != v68)
            {
              v76 = *(v71[1] + 8 * ((v64 >> 14) & 0x7FF));
              if (v76)
              {
                v77 = *(v76 + 8);
                if (v77)
                {
                  v78 = v7;
                  v79 = 0;
                  v80 = *v76;
                  v81 = v64 & 0x3FFF;
                  v82 = 8 * v77;
                  do
                  {
                    v83 = *v80;
                    if (v79 >= HIDWORD(v171))
                    {
                      sub_298B90A44(&v170, v172, v79 + 1, 8);
                      v79 = v171;
                    }

                    *(v170 + v79) = v83 + v81;
                    v79 = v171 + 1;
                    LODWORD(v171) = v171 + 1;
                    ++v80;
                    v82 -= 8;
                  }

                  while (v82);
                  v65 = v4[7];
                  v7 = v78;
                }
              }
            }

            v84 = BYTE3(v157[0]) | (2 * BYTE2(v157[0]));
            if (*(v65 + v84 + 144))
            {
              v85 = v170;
              if (v170 == v172)
              {
                goto LABEL_21;
              }
            }

            else
            {
              sub_298BC62BC(v65 + 112, v84);
              v85 = v170;
              if (v170 == v172)
              {
                goto LABEL_21;
              }
            }

            free(v85);
            goto LABEL_21;
          }

          v46 = *v29;
          if ((v46 - 65) >= 0x1A)
          {
            v47 = *v29;
          }

          else
          {
            v47 = v46 + 32;
          }

          if (v47 != 48)
          {
            goto LABEL_109;
          }

          v48 = *(v155 + 7);
          if ((v48 - 65) < 0x1A)
          {
            v48 += 32;
          }

          if (v48 == 98)
          {
            v29 = (v155 + 8);
            v28 = *(&v155 + 1) - 8;
            v30 = 2;
          }

          else
          {
            if (v48 == 120)
            {
              v29 = (v155 + 8);
              v28 = *(&v155 + 1) - 8;
              v30 = 16;
              goto LABEL_125;
            }

LABEL_109:
            if (*v29 == *"0o")
            {
              v29 = (v155 + 8);
              v28 = *(&v155 + 1) - 8;
              v30 = 8;
            }

            else
            {
              if (v46 == 48)
              {
                v49 = *(v155 + 7);
                v50 = (v49 - 48) > 9;
                if ((v49 - 48) <= 9)
                {
                  v30 = 8;
                }

                else
                {
                  v30 = 10;
                }

                if (!v50)
                {
                  v29 = (v155 + 7);
                  v28 = *(&v155 + 1) - 7;
                }

                goto LABEL_126;
              }

              v30 = 10;
            }
          }

LABEL_125:
          if (v28)
          {
            goto LABEL_126;
          }

          goto LABEL_141;
        }

        goto LABEL_53;
      }

      if (*(&v155 + 1) >= 7uLL)
      {
        goto LABEL_35;
      }

      if (*(&v155 + 1) == 6)
      {
        goto LABEL_49;
      }

LABEL_53:
      if ((sub_298BD1874(v4[7], v155, *(&v155 + 1), v157, "async-task-start", 0x10uLL, 1u) & 1) == 0 && (sub_298BD1874(v4[7], v155, *(&v155 + 1), v157, "async-await", 0xBuLL, 2u) & 1) == 0)
      {
        v24 = v4[7];
        v25 = BYTE3(v157[0]);
        if ((*(v24 + BYTE3(v157[0]) + 144) & 1) == 0)
        {
          sub_298BC62BC(v24 + 112, BYTE3(v157[0]));
        }

        v26 = *(v24 + 8 * v25 + 152);
        if (sub_298BFE0BC(v26, v155, *(&v155 + 1), v156, &v161))
        {
          sub_298BFE5CC(v26, v157, v156, v27);
          if (sub_298B96A54(&v155, "[same_unit]", 0xBuLL, 0) == -1)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_22:
      v12 += 2;
    }

    while (v12 != v153);
    v12 = v162;
LABEL_339:
    v154 = 0;
    if (v12 != v7)
    {
      free(v12);
    }

    if (v182)
    {
      v143 = *v181;
      *v181 = 0;
      if (v143)
      {
        (*(*v143 + 8))(v143);
      }
    }

    v144 = 0;
    v145 = v169;
    v169 = 0;
    if (!v145)
    {
      goto LABEL_356;
    }

LABEL_345:
    MEMORY[0x29C2945C0](v145, 0x1000C8077774924);
    if (!v144)
    {
      goto LABEL_13;
    }

LABEL_357:
    v150 = *a2;
    v151 = v154;
    v154 = 0;
    v170 = v150;
    v164 = v151;
    sub_298ADE6E8(&v170, &v164, v157);
    if (v164)
    {
      (*(*v164 + 8))(v164);
    }

    if (v170)
    {
      (*(*v170 + 8))(v170);
    }

    *a2 = v157[0];
    result = v154;
    v8 = v152;
    if (v154)
    {
      result = (*(*v154 + 8))(v154);
    }

LABEL_363:
    v4 += 8;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_298BD1874(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, void *__s2, size_t __n, unsigned int a7)
{
  v7 = a3 - 4;
  if (a3 < 4)
  {
    return 0;
  }

  if (*a2 != 539041827)
  {
    return 0;
  }

  if (v7 < __n)
  {
    return 0;
  }

  v9 = a2 + 1;
  if (__n)
  {
    v10 = a1;
    v11 = a4;
    v12 = __n;
    v13 = memcmp(a2 + 1, __s2, __n);
    __n = v12;
    a4 = v11;
    v14 = v13;
    a1 = v10;
    if (v14)
    {
      return 0;
    }
  }

  v15 = v7 - __n;
  if (v7 - __n < 2)
  {
    return 0;
  }

  v16 = v9 + __n;
  if (*(v9 + __n) != 8250)
  {
    return 0;
  }

  v18 = v15 - 2;
  if (v15 == 2)
  {
    goto LABEL_47;
  }

  v19 = (v16 + 2);
  v20 = v15 - 3;
  if (v15 == 3)
  {
    v21 = 10;
    v18 = 1;
LABEL_32:
    v28 = 0;
    v29 = v18;
    while (*v19 >= 48)
    {
      v30 = *v19;
      if (v30 >= 0x3A)
      {
        if (v30 < 0x61)
        {
          if (v30 - 65 > 0x19)
          {
            break;
          }

          v31 = -55;
        }

        else
        {
          if (v30 >= 0x7B)
          {
            break;
          }

          v31 = -87;
        }
      }

      else
      {
        v31 = -48;
      }

      v32 = v31 + v30;
      if (v32 >= v21)
      {
        break;
      }

      v33 = v28 * v21 + v32;
      if (v33 / v21 < v28)
      {
        goto LABEL_47;
      }

      ++v19;
      v28 = v33;
      if (!--v29)
      {
        goto LABEL_46;
      }
    }

    v33 = v28;
LABEL_46:
    if (v18 != v29)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v22 = *v19;
  if ((v22 - 65) >= 0x1A)
  {
    v23 = *v19;
  }

  else
  {
    v23 = v22 + 32;
  }

  if (v23 == 48)
  {
    v24 = v16[3];
    if ((v24 - 65) < 0x1A)
    {
      v24 += 32;
    }

    if (v24 == 98)
    {
      v19 = (v16 + 4);
      v18 = v15 - 4;
      v21 = 2;
      goto LABEL_31;
    }

    if (v24 == 120)
    {
      v19 = (v16 + 4);
      v18 = v15 - 4;
      v21 = 16;
      goto LABEL_31;
    }
  }

  if (*v19 == *"0o")
  {
    v19 = (v16 + 4);
    v18 = v15 - 4;
    v21 = 8;
  }

  else
  {
    if (v22 == 48)
    {
      v26 = v16[3];
      v25 = (v16 + 3);
      v27 = (v26 - 48) > 9;
      if ((v26 - 48) <= 9)
      {
        v21 = 8;
      }

      else
      {
        v21 = 10;
      }

      if (!v27)
      {
        v19 = v25;
        v18 = v20;
      }

      goto LABEL_32;
    }

    v21 = 10;
  }

LABEL_31:
  if (v18)
  {
    goto LABEL_32;
  }

LABEL_47:
  v33 = 0;
LABEL_48:
  v34 = (a7 << 16) & 0xFFFFFFFFBFFFFFFFLL | ((v33 & 1) << 30) | 0x1000101;
  v35 = v33 & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a4 + 3);
  v37 = v36 | (2 * *(a4 + 2));
  if ((*(a1 + v37 + 144) & 1) == 0)
  {
    v41 = a1;
    v42 = a4;
    sub_298BC62BC(a1 + 112, v36 | (2 * *(a4 + 2)));
    a1 = v41;
    a4 = v42;
  }

  v38 = *(a1 + 8 * v37 + 152);
  v43 = 12;
  v44 = v34;
  v39 = a4;
  sub_298BFE5CC(v38, a4, &v43, a4);
  ++*(v39 + 40);
  v44 = v35;
  sub_298BFE5CC(v38, v39, &v43, v40);
  ++*(v39 + 40);
  return 1;
}

uint64_t *sub_298BD1B68(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else if (v2)
  {
LABEL_6:
    v3 = result;
    (*(*v2 + 8))(v2);
    return v3;
  }

  return result;
}

uint64_t *sub_298BD1C14(uint64_t a1, unsigned int a2, unsigned int **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_5:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_5;
    }
  }
}

uint64_t *sub_298BD1CD0(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_298AEFAFC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_298BD1D28(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = (a1[1] - *a1) >> 6;
  v6 = v5 + 1;
  if ((v5 + 1) >> 58)
  {
    sub_298ADDDA0();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v6)
  {
    v6 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  v12[4] = a1;
  if (v9)
  {
    sub_298BD1F58(v9);
  }

  v12[0] = 0;
  v12[1] = v5 << 6;
  v12[3] = 0;
  sub_298BD1E1C(v5 << 6, *a2, a3, a4, a5);
  v12[2] = (v5 << 6) + 64;
  sub_298BD1ED4(a1, v12);
  v10 = a1[1];
  sub_298BD2088(v12);
  return v10;
}

uint64_t *sub_298BD1E1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  *a5 = 0;
  *a1 = &unk_2A1F1E268;
  *(a1 + 8) = &unk_2A1F1E2B0;
  *(a1 + 16) = &unk_2A1F1E2F0;
  *(a1 + 24) = &unk_2A1F1E340;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  v7 = 0;
  *(a1 + 56) = v5;
  return sub_298BC539C(&v7);
}

uint64_t sub_298BD1ED4(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v8 = v4 + v5 - v6;
  result = sub_298BD1F94(v5, v6, v8);
  a2[1] = v8;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void sub_298BD1F58(unint64_t a1)
{
  if (!(a1 >> 58))
  {

    operator new();
  }

  sub_298ADDDA0();
}

uint64_t sub_298BD1F94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4;
      *v5 = &unk_2A1F1E268;
      *(v5 + 8) = &unk_2A1F1E2B0;
      *(v5 + 16) = &unk_2A1F1E2F0;
      *(v5 + 24) = &unk_2A1F1E340;
      v6 = *(result + v4 + 32);
      *(v5 + 48) = *(result + v4 + 48);
      *(v5 + 32) = v6;
      v7 = *(result + v4 + 56);
      *(result + v4 + 56) = 0;
      *(v5 + 56) = v7;
      v4 += 64;
    }

    while (result + v4 != a2);
    do
    {
      result = sub_298BCE798(result) + 64;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_298BD2088(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_298BCE798(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298BD20DC(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298AE99FC(v2);
    MEMORY[0x29C2945F0](v4, 0x10F0C40C4A041C6);
    return v3;
  }

  return v1;
}

__n128 sub_298BD21A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E8B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298BD21D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "Decoder::load", &unk_298EC00B5, v3, 2u);
    }
  }
}

void sub_298BD224C(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(*(*a1 + 40) + 4);
  v3 = *(a2 + 4);
  for (i = *(a1[1] + 160); i; i = v5[1])
  {
    while (1)
    {
      v5 = i;
      v6 = i[4];
      if (v6 <= v2)
      {
        break;
      }

      i = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= v2)
    {
      for (j = v5[6]; j; j = v8[1])
      {
        while (1)
        {
          v8 = j;
          v9 = j[4];
          if (v9 <= v3)
          {
            break;
          }

          j = *v8;
          if (!*v8)
          {
            goto LABEL_14;
          }
        }

        if (v9 >= v3)
        {
          v10 = a1[1];
          if (*(v10 + 23) < 0)
          {
            sub_298AFE11C(v18, *v10, *(v10 + 1));
          }

          else
          {
            v11 = *v10;
            v19 = *(v10 + 2);
            *v18 = v11;
          }

          v12 = *(v10 + 6);
          v21 = *(v10 + 14);
          v20 = v12;
          v23[0] = 0;
          v23[1] = 0;
          v22 = v23;
          v13 = *(v10 + 4);
          if (v13 != (v10 + 40))
          {
            do
            {
              sub_298BCD5B0(&v22, v23, v13 + 4, (v13 + 4));
              v14 = v13[1];
              if (v14)
              {
                do
                {
                  v15 = v14;
                  v14 = *v14;
                }

                while (v14);
              }

              else
              {
                do
                {
                  v15 = v13[2];
                  v16 = *v15 == v13;
                  v13 = v15;
                }

                while (!v16);
              }

              v13 = v15;
            }

            while (v15 != (v10 + 40));
          }

          LOBYTE(__p) = 0;
          v26 = 0;
          if (*(v10 + 80) == 1)
          {
            if (*(v10 + 79) < 0)
            {
              sub_298AFE11C(&__p, *(v10 + 7), *(v10 + 8));
            }

            else
            {
              v17 = *(v10 + 56);
              v25 = *(v10 + 9);
              __p = v17;
            }

            v26 = 1;
          }

          sub_298C257BC();
        }
      }

LABEL_14:
      operator new();
    }
  }

LABEL_7:
  operator new();
}

__n128 sub_298BD278C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E8F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298BD27C8(os_signpost_id_t a1, os_log_t log)
{
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v2;
    v8 = v3;
    if (os_signpost_enabled(log))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, log, OS_SIGNPOST_INTERVAL_END, a1, "Decoder::decode", &unk_298EC00B5, v6, 2u);
    }
  }
}

uint64_t sub_298BD2844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0 && *(a1 + 17) == 1 && *(a2 + 16) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = sub_298B00584(v4, "Scanning ");
    v6 = sub_298B63DC4(v5, *a2, *(a2 + 8));
    sub_298B00584(v6, " for stub defs...\n");
  }

  return v2 ^ 1u;
}

void sub_298BD28AC(uint64_t a1, uint64_t *a2, _BYTE *a3, std::string::size_type a4)
{
  v8 = *(a1 + 8);
  if (!a3)
  {
    memset(&__p, 0, sizeof(__p));
    v9 = sub_298B7FE44(v8, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_43:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = a4;
  if (a4)
  {
    memmove(&__p, a3, a4);
  }

  __p.__r_.__value_.__s.__data_[a4] = 0;
  v9 = sub_298B7FE44(v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  if (!v9)
  {
    return;
  }

LABEL_7:
  if (*(a1 + 17) == 1)
  {
    v10 = v9[5];
    v11 = sub_298B9CDFC();
    v12 = v11;
    v13 = v11[4];
    if (v11[3] - v13 > 0x1AuLL)
    {
      qmemcpy(v13, "note: Stub destination for ", 27);
      v15 = v11[3];
      v14 = (v11[4] + 27);
      *(v12 + 32) = v14;
      if (a4 <= v15 - v14)
      {
LABEL_10:
        if (a4)
        {
          memcpy(v14, a3, a4);
          v14 = (*(v12 + 32) + a4);
          *(v12 + 32) = v14;
        }

        if (*(v12 + 24) - v14 <= 1uLL)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_298B9BCEC(v11, "note: Stub destination for ", 0x1BuLL);
      v14 = *(v12 + 32);
      if (a4 <= *(v12 + 24) - v14)
      {
        goto LABEL_10;
      }
    }

    sub_298B9BCEC(v12, a3, a4);
    v14 = *(v12 + 32);
    if (*(v12 + 24) - v14 <= 1uLL)
    {
LABEL_13:
      sub_298B9BCEC(v12, ": ", 2uLL);
      goto LABEL_17;
    }

LABEL_16:
    *v14 = 8250;
    *(v12 + 32) += 2;
LABEL_17:
    sub_298ADC8F4(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v12, p_p, size);
    if (v10)
    {
      v18 = 11;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v12 + 32);
    if (v18 <= *(v12 + 24) - v19)
    {
      if (v10)
      {
        *(v19 + 7) = 1567908713;
        *v19 = *" [conflict]";
        v19 = *(v12 + 32) + 11;
        *(v12 + 32) = v19;
      }
    }

    else
    {
      if (v10)
      {
        v20 = " [conflict]";
      }

      else
      {
        v20 = "";
      }

      sub_298B9BCEC(v12, v20, v18);
      v19 = *(v12 + 32);
    }

    if (*(v12 + 24) == v19)
    {
      sub_298B9BCEC(v12, "\n", 1uLL);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v19 = 10;
      ++*(v12 + 32);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v9[5] = a2;
}

BOOL sub_298BD2BA8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 1;
  }

  if (*(a2 + 8) != 16)
  {
    return 0;
  }

  return **a2 == 0x6C7070612E6D6F63 && *(*a2 + 8) == 0x6C656E72656B2E65;
}

void *sub_298BD2C08(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v14[0] = a3;
  v14[1] = a4;
  sub_298B1EEB8(v14, __p);
  result = sub_298BDD8E0((a1 + 8), __p);
  if (v13 < 0)
  {
    v10 = result;
    operator delete(__p[0]);
    result = v10;
  }

  if (result)
  {
    v7 = result[5];
    for (i = result[6]; v7 != i; result[3] = a2)
    {
      v9 = *v7++;
      v11 = v9;
      __p[0] = &v11;
      result = sub_298BDDA2C((a1 + 48), v9, __p);
    }
  }

  return result;
}

uint64_t sub_298BD2CB8(uint64_t a1)
{
  *a1 = &unk_2A1F1E9F8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  sub_298BB0E68(__p, "_Call_continuation");
  sub_298BDDC84((a1 + 32), __p, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_298BB0E68(__p, "_start_wqthread");
  sub_298BDDC84((a1 + 32), __p, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_298BB0E68(__p, "_xrt__thread_enter");
  sub_298BDDC84((a1 + 32), __p, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_298BB0E68(__p, "__dyld_start");
  sub_298BDDC84((a1 + 32), __p, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

BOOL sub_298BD2DEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 1;
  }

  v15 = v2;
  v16 = v3;
  v5 = *a2;
  v6 = *(a2 + 8);
  v11 = 0;
  v12 = 0;
  v10[0] = v5;
  v10[1] = v6;
  v13 = v6;
  v14 = 0;
  sub_298BA8288(v10);
  if (v12 == 16)
  {
    return *v11 == 0x6C7070612E6D6F63 && v11[1] == 0x6C656E72656B2E65;
  }

  else if (v12 == 23)
  {
    return *v11 == 0x657473797362696CLL && v11[1] == 0x6165726874705F6DLL && *(v11 + 15) == 0x62696C79642E6461;
  }

  else
  {
    if (v12 != 4)
    {
      return 0;
    }

    return *v11 == 1684830564;
  }
}

void sub_298BD2EF4(void *a1, uint64_t a2, const void *a3, size_t a4)
{
  v27 = a2;
  if (a3)
  {
    sub_298BDB508(&__p, a3, a4);
    v6 = HIBYTE(v26);
    v8 = __p;
    v7 = v25;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    __p = 0;
    v25 = 0;
    v26 = 0;
  }

  if ((v6 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v8;
  }

  if ((v6 & 0x80u) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = sub_298B7F920(&v28, p_p, v10);
  v12 = a1[5];
  if (!*&v12 || ((v13 = v11, v14 = vcnt_s8(v12), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] <= 1uLL) ? (v15 = (*&v12 - 1) & v11) : v11 < *&v12 ? (v15 = v11) : (v15 = v11 % *&v12), (v16 = *(a1[4] + 8 * v15)) == 0 || (v17 = *v16) == 0))
  {
LABEL_19:
    v19 = 1;
    goto LABEL_31;
  }

  if (v14.u32[0] >= 2uLL)
  {
    while (1)
    {
      v18 = v17[1];
      if (v18 == v13)
      {
        if (sub_298BDC964(v17 + 2, &__p))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *&v12)
        {
          v18 %= *&v12;
        }

        if (v18 != v15)
        {
          goto LABEL_19;
        }
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_19;
      }
    }
  }

  v20 = *&v12 - 1;
  while (1)
  {
    v21 = v17[1];
    if (v21 == v13)
    {
      break;
    }

    if ((v21 & v20) != v15)
    {
      goto LABEL_19;
    }

LABEL_28:
    v17 = *v17;
    v19 = 1;
    if (!v17)
    {
      goto LABEL_31;
    }
  }

  if (!sub_298BDC964(v17 + 2, &__p))
  {
    goto LABEL_28;
  }

LABEL_30:
  v19 = 0;
LABEL_31:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if ((v19 & 1) == 0)
  {
    v22 = a1[2];
    if (v22 >= a1[3])
    {
      v23 = sub_298BCE848((a1 + 1), &v27);
    }

    else
    {
      *v22 = a2;
      v23 = v22 + 1;
    }

    a1[2] = v23;
  }
}

void sub_298BD30C0(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 160);
  if (!v3)
  {
    operator new();
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_6:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[4];
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_6;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  *(v5 + 10) = a3;
}

void sub_298BD31D0(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if (v5 >= 0)
  {
    v6 = (a1 + 8);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 31);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  sub_298BBB6E0(&v53, v6, v7);
  sub_298B89CC0(a2, "Name", 4uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 127);
  if (v8 >= 0)
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 104);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 127);
  }

  else
  {
    v10 = *(a1 + 112);
  }

  sub_298BBB6E0(&v53, v9, v10);
  sub_298B89CC0(a2, "Segment", 7uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v50[1] = 0;
  v50[2] = 0;
  v50[0] = (a1 + 32);
  sub_298B1FB90(v50, &v51);
  LOWORD(v53) = 6;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v51;
  }

  else
  {
    v11 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v11, size, 0))
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v51;
    }

    else
    {
      v39 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v51.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v39, v40, &__p);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    v51 = __p;
  }

  v54 = v51;
  memset(&v51, 0, sizeof(v51));
  sub_298B89CC0(a2, "UUID", 4uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  sub_298ADC8F4(&v49, *(a1 + 64));
  LOWORD(v53) = 6;
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v49;
  }

  else
  {
    v13 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v49.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v13, v14, 0))
  {
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v49;
    }

    else
    {
      v41 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v49.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v41, v42, &__p);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v49 = __p;
  }

  v54 = v49;
  memset(&v49, 0, sizeof(v49));
  sub_298B89CC0(a2, "Size", 4uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  sub_298ADC8F4(&v48, *(a1 + 80));
  LOWORD(v53) = 6;
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v48;
  }

  else
  {
    v15 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v48.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v15, v16, 0))
  {
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v48;
    }

    else
    {
      v43 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v48.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v43, v44, &__p);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v48 = __p;
  }

  v54 = v48;
  memset(&v48, 0, sizeof(v48));
  sub_298B89CC0(a2, "Slide", 5uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  sub_298BD3C10(&v47, *(a1 + 72), *(a1 + 64) + *(a1 + 72));
  LOWORD(v53) = 6;
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v47;
  }

  else
  {
    v17 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v47.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v17, v18, 0))
  {
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v47;
    }

    else
    {
      v45 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v47.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v45, v46, &__p);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47 = __p;
  }

  v54 = v47;
  memset(&v47, 0, sizeof(v47));
  sub_298B89CC0(a2, "LoadedRange", 0xBuLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v19 = *(a1 + 136);
  LOWORD(v53) = 1;
  v54.__r_.__value_.__s.__data_[0] = v19;
  sub_298B89CC0(a2, "InDyldSharedCache", 0x11uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v20 = *(a1 + 137);
  LOWORD(v53) = 1;
  v54.__r_.__value_.__s.__data_[0] = v20;
  sub_298B89CC0(a2, "HasOptimizedStubs", 0x11uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
    if ((*(a1 + 72) & 0x8000000000000000) == 0)
    {
      goto LABEL_118;
    }
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
    if ((*(a1 + 72) & 0x8000000000000000) == 0)
    {
      goto LABEL_118;
    }
  }

  else
  {
    if (LOWORD(v53) != 6 || (SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((*(a1 + 72) & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

LABEL_118:
      v28 = 0;
      goto LABEL_119;
    }

    operator delete(v54.__r_.__value_.__l.__data_);
    if ((*(a1 + 72) & 0x8000000000000000) == 0)
    {
      goto LABEL_118;
    }
  }

LABEL_103:
  v21 = *(a1 + 31);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a1 + 16);
  }

  if (v21 < 0xC)
  {
    goto LABEL_118;
  }

  if (v22 >= 0)
  {
    v23 = v4;
  }

  else
  {
    v23 = *v4;
  }

  v24 = v23 + v21;
  v25 = *(v24 - 12);
  v26 = *(v24 - 1);
  v27 = v25 == 0x735F687475615F5FLL && v26 == 1935832436;
  v28 = v27;
LABEL_119:
  LOWORD(v53) = 1;
  v54.__r_.__value_.__s.__data_[0] = v28;
  sub_298B89CC0(a2, "IsKernelStubSection", 0x13uLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v29 = *(a1 + 56) != 0;
  LOWORD(v53) = 1;
  v54.__r_.__value_.__s.__data_[0] = v29;
  sub_298B89CC0(a2, "Materialized", 0xCuLL);
  sub_298B891F0(a2, &v53);
  --*(a2 + 8);
  if (LOWORD(v53) == 8)
  {
    sub_298B8A314(&v54);
    if (!*(a1 + 160))
    {
      return;
    }
  }

  else if (LOWORD(v53) == 7)
  {
    sub_298B8A370(&v54);
    if (!*(a1 + 160))
    {
      return;
    }
  }

  else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
    if (!*(a1 + 160))
    {
      return;
    }
  }

  else if (!*(a1 + 160))
  {
    return;
  }

  sub_298B89CC0(a2, "AsyncFunclets", 0xDuLL);
  sub_298B89BA0(a2);
  v30 = *(a1 + 160);
  v33 = *v30;
  v31 = v30 + 1;
  v32 = v33;
  if (v33 != v31)
  {
    do
    {
      sub_298ADC8F4(&__p, v32[4]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __p.__r_.__value_.__l.__size_;
      }

      if (*(v32 + 10))
      {
        v36 = "-1";
      }

      else
      {
        v36 = "+1";
      }

      sub_298BBB6E0(&v53, v36, 2uLL);
      sub_298B89CC0(a2, p_p, v35);
      sub_298B891F0(a2, &v53);
      --*(a2 + 8);
      if (LOWORD(v53) == 8)
      {
        sub_298B8A314(&v54);
      }

      else if (LOWORD(v53) == 7)
      {
        sub_298B8A370(&v54);
      }

      else if (LOWORD(v53) == 6 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v37 = v32[1];
        if (v37)
        {
          do
          {
LABEL_155:
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
          goto LABEL_152;
        }
      }

      else
      {
        v37 = v32[1];
        if (v37)
        {
          goto LABEL_155;
        }
      }

      do
      {
        v38 = v32[2];
        v27 = *v38 == v32;
        v32 = v38;
      }

      while (!v27);
LABEL_152:
      v32 = v38;
    }

    while (v38 != v31);
  }

  sub_298B89C2C(a2);
  --*(a2 + 8);
}

uint64_t sub_298BD3C10(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_2A1F1E040;
  v22 = a1;
  sub_298ADDDB0(&v14);
  if (v17 == v18)
  {
    sub_298B9BCEC(&v14, "[", 1uLL);
  }

  else
  {
    *v18++ = 91;
  }

  v10[0] = a2;
  v10[1] = 0;
  v11 = 18;
  v12 = 1;
  v13 = 1;
  sub_298B9C414(&v14, v10);
  if ((v17 - v18) > 1)
  {
    *v18 = 8236;
    v18 += 2;
  }

  else
  {
    sub_298B9BCEC(&v14, ", ", 2uLL);
  }

  v6[0] = a3;
  v6[1] = 0;
  v7 = 18;
  v8 = 1;
  v9 = 1;
  sub_298B9C414(&v14, v6);
  if (v17 == v18)
  {
    sub_298B9BCEC(&v14, ")", 1uLL);
  }

  else
  {
    *v18++ = 41;
  }

  return sub_298B9AE14(&v14);
}

uint64_t sub_298BD3D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v6 = *(a3 + 72);
  v18 = 0;
  sub_298ADC1D4(a2 + 64, v6, v7 + v6, &v18, &v19);
  v8 = v19;
  v19 = 0;
  v20 = v8;
  sub_298AE72FC(&v20, &v21);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v9 = *(a2 + 456);
  if (v9 >= *(a2 + 464))
  {
    result = sub_298BDE034((a2 + 448), a3);
  }

  else
  {
    *v9 = *a3;
    v10 = *(a3 + 8);
    *(v9 + 24) = *(a3 + 24);
    *(v9 + 8) = v10;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(v9 + 32) = *(a3 + 32);
    v12 = *(a3 + 64);
    v11 = *(a3 + 80);
    v13 = *(a3 + 48);
    *(v9 + 96) = *(a3 + 96);
    *(v9 + 64) = v12;
    *(v9 + 80) = v11;
    *(v9 + 48) = v13;
    v14 = *(a3 + 104);
    *(v9 + 120) = *(a3 + 120);
    *(v9 + 104) = v14;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    *(a3 + 104) = 0;
    v15 = *(a3 + 144);
    *(v9 + 128) = *(a3 + 128);
    *(v9 + 144) = v15;
    v16 = *(a3 + 160);
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(v9 + 160) = v16;
    result = v9 + 176;
  }

  *(a2 + 456) = result;
  *(a2 + 640) = 0;
  *a1 = 0;
  return result;
}

void sub_298BD3EFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 544);
  v5 = *(a1 + 552);
  if (v4 >= v5)
  {
    v6 = *(a1 + 536);
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v6) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      sub_298ADDDA0();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v13 = 56 * v7;
    *(56 * v7) = *a2;
    if (*(a2 + 39) < 0)
    {
      sub_298AFE11C((v13 + 16), *(a2 + 16), *(a2 + 24));
    }

    else
    {
      *(56 * v7 + 0x10) = *(a2 + 16);
      *(56 * v7 + 0x20) = *(a2 + 32);
    }

    *(56 * v7 + 0x28) = *(a2 + 40);
    v12 = v13 + 56;
    v14 = *(a1 + 544);
    v15 = *(a1 + 536);
    v16 = v13 + v15 - v14;
    if (v15 != v14)
    {
      v17 = *(a1 + 536);
      v18 = v13 + v15 - v14;
      do
      {
        *v18 = *v17;
        v19 = *(v17 + 16);
        *(v18 + 32) = *(v17 + 32);
        *(v18 + 16) = v19;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 16) = 0;
        *(v18 + 40) = *(v17 + 40);
        v17 += 56;
        v18 += 56;
      }

      while (v17 != v14);
      do
      {
        while (*(v15 + 39) < 0)
        {
          v20 = v15;
          operator delete(*(v15 + 16));
          v15 = v20 + 56;
          if (v20 + 56 == v14)
          {
            goto LABEL_25;
          }
        }

        v15 += 56;
      }

      while (v15 != v14);
LABEL_25:
      v15 = *(a1 + 536);
    }

    *(a1 + 536) = v16;
    *(a1 + 544) = v12;
    *(a1 + 552) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = *a2;
    if (*(a2 + 39) < 0)
    {
      sub_298AFE11C((v4 + 16), *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v11 = *(a2 + 16);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 16) = v11;
    }

    *(v4 + 40) = *(a2 + 40);
    v12 = v4 + 56;
  }

  *(a1 + 544) = v12;
  *(a1 + 640) = 0;
}

uint64_t sub_298BD4134(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[60];
  if (!*&v2 || ((v3 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2)), v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) >> 47)), v5 = vcnt_s8(v2), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] <= 1uLL) ? (v6 = (*&v2 - 1) & v4) : v4 < *&v2 ? (v6 = v4) : (v6 = v4 % *&v2), (v7 = *(*&a1[59] + 8 * v6)) == 0 || (v8 = *v7) == 0))
  {
LABEL_15:
    abort();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v2 - 1;
    while (1)
    {
      v11 = v8[1];
      if (v4 == v11)
      {
        if (v8[2] == a2)
        {
          return v8[3];
        }
      }

      else if ((v11 & v9) != v6)
      {
        goto LABEL_15;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v10 = v8[1];
    if (v4 == v10)
    {
      break;
    }

    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }

    if (v10 != v6)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_10;
  }

  return v8[3];
}

uint64_t sub_298BD4258(void *a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v3 = 0;
  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v4 = a1[67];
  v5 = a1[68];
  if (v4 != v5)
  {
    do
    {
      v14 = a1;
      v65 = *(v4 + 40);
      v15 = a3;
      v16 = a2;
      sub_298BD4708(v71, v78, &v65);
      sub_298BD4988(v68, v4);
      v17 = sub_298BDBC28(v71, v68);
      (v16)(v15, v71, v17);
      if (v74 == 1 && v73 < 0)
      {
        operator delete(v72);
      }

      a1 = v14;
      a3 = v15;
      a2 = v16;
      if (v70 < 0)
      {
        operator delete(__p);
        a2 = v16;
        a3 = v15;
        a1 = v14;
      }

      v4 += 56;
    }

    while (v4 != v5);
    v3 = v78[0];
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  v6 = a1[56];
  v7 = a1[57];
  if (v6 != v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v79;
    v12 = v79 - 1;
    while (1)
    {
      v21 = *(v6 + 96);
      if (!v21)
      {
        goto LABEL_15;
      }

      v22 = v21 >> 4;
      if (v11)
      {
        v19 = v12 & (v22 ^ (v21 >> 9));
        v20 = *(v3 + 8 * v19);
        if (v20 == v21)
        {
          goto LABEL_15;
        }

        v32 = 1;
        while (v20 != -4096)
        {
          v33 = v19 + v32++;
          v19 = v33 & v12;
          v20 = *(v3 + 8 * v19);
          if (v20 == v21)
          {
            goto LABEL_15;
          }
        }
      }

      v23 = *(v6 + 80);
      if (!v9)
      {
        v36 = 0;
LABEL_33:
        if (4 * v8 + 4 >= 3 * v9)
        {
          v60 = a2;
          v63 = a3;
          sub_298BDE394(&v65, 2 * v9);
          v10 = v65;
          v9 = v67;
          if (v67)
          {
            v40 = ((37 * v23) | ((v22 ^ (v21 >> 9)) << 32)) + ~(0x2500000000 * v23);
            v41 = (v40 ^ (v40 >> 22)) + ~((v40 ^ (v40 >> 22)) << 13);
            v42 = (9 * (v41 ^ (v41 >> 8))) ^ ((9 * (v41 ^ (v41 >> 8))) >> 15);
            v43 = v67 - 1;
            v44 = (v67 - 1) & (((v42 + ~(v42 << 27)) >> 31) ^ (v42 + ~(v42 << 27)));
            v36 = (v65 + 16 * v44);
            v45 = *v36;
            v46 = v36[1];
            if (*v36 != v21 || v46 != v23)
            {
              v53 = 0;
              v54 = 1;
              while (v45 != -4096 || v46 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v46 == 0x8000000000000000;
                }

                if (v55 && v45 == -8192)
                {
                  v53 = v36;
                }

                v57 = v44 + v54++;
                v44 = v57 & v43;
                v36 = (v65 + 16 * (v57 & v43));
                v45 = *v36;
                v46 = v36[1];
                if (*v36 == v21 && v46 == v23)
                {
                  goto LABEL_52;
                }
              }

              if (v53)
              {
                v36 = v53;
              }
            }
          }

          else
          {
            v36 = 0;
          }

LABEL_52:
          a2 = v60;
          a3 = v63;
        }

        else if (v9 + ~v8 - HIDWORD(v66) <= v9 >> 3)
        {
          v61 = a2;
          v64 = a3;
          sub_298BDE394(&v65, v9);
          v71[0] = 0;
          v48 = v65;
          v9 = v67;
          sub_298BDE2B4(v65, v67, v21, v23, v71);
          v10 = v48;
          a2 = v61;
          a3 = v64;
          v36 = v71[0];
        }

        v62 = v10;
        v59 = v66 + 1;
        LODWORD(v66) = v66 + 1;
        if (*v36 != -4096 || v36[1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          --HIDWORD(v66);
        }

        *v36 = v21;
        v36[1] = v23;
        LOBYTE(v71[0]) = 0;
        v74 = 0;
        v75 = v21;
        v76 = vextq_s8(*(v6 + 72), *(v6 + 72), 8uLL);
        v77 = 1;
        v38 = a3;
        v39 = a2;
        a2(a3, v71);
        if (v74 == 1 && v73 < 0)
        {
          operator delete(v72);
        }

        a3 = v38;
        a2 = v39;
        v10 = v62;
        v8 = v59;
        goto LABEL_15;
      }

      v24 = ((37 * v23) | ((v22 ^ (v21 >> 9)) << 32)) + ~(0x2500000000 * v23);
      v25 = (v24 ^ (v24 >> 22)) + ~((v24 ^ (v24 >> 22)) << 13);
      v26 = (9 * (v25 ^ (v25 >> 8))) ^ ((9 * (v25 ^ (v25 >> 8))) >> 15);
      v27 = (v9 - 1) & (((v26 + ~(v26 << 27)) >> 31) ^ (v26 + ~(v26 << 27)));
      v28 = (v10 + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      if (*v28 != v21 || v30 != v23)
      {
        v34 = 0;
        v35 = 1;
        while (v29 != -4096 || v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v34)
          {
            v49 = 0;
          }

          else
          {
            v49 = v30 == 0x8000000000000000;
          }

          if (v49 && v29 == -8192)
          {
            v34 = v28;
          }

          v51 = v27 + v35++;
          v27 = v51 & (v9 - 1);
          v28 = (v10 + 16 * v27);
          v29 = *v28;
          v30 = v28[1];
          if (*v28 == v21 && v30 == v23)
          {
            goto LABEL_15;
          }
        }

        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v28;
        }

        goto LABEL_33;
      }

LABEL_15:
      v6 += 176;
      if (v6 == v7)
      {
        v13 = v65;
        goto LABEL_13;
      }
    }
  }

  v13 = 0;
LABEL_13:
  MEMORY[0x29C2945E0](v13, 8, a3);
  return MEMORY[0x29C2945E0](v3, 8);
}

uint64_t sub_298BD4708(uint64_t result, uint64_t *a2, void *a3)
{
  v4 = *(a2 + 4);
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = *a2;
  v6 = v4 - 1;
  v7 = ((*a3 >> 4) ^ (*a3 >> 9)) & (v4 - 1);
  v8 = (*a2 + 8 * v7);
  v9 = *v8;
  if (*a3 == *v8)
  {
LABEL_3:
    v10 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  v13 = 1;
  while (v9 != -4096)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9 == -8192;
    }

    if (v14)
    {
      v12 = v8;
    }

    v15 = v7 + v13++;
    v7 = v15 & v6;
    v8 = (v5 + 8 * (v15 & v6));
    v9 = *v8;
    if (*a3 == *v8)
    {
      goto LABEL_3;
    }
  }

  if (v12)
  {
    v8 = v12;
  }

  v16 = *(a2 + 2);
  if (4 * v16 + 4 < 3 * v4)
  {
    if (v4 + ~v16 - *(a2 + 3) <= v4 >> 3)
    {
      v22 = result;
      v23 = a3;
      sub_298B51C04(a2, v4);
      v4 = *(a2 + 4);
      v11 = *v23;
      v24 = v4 - 1;
      v25 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v4 - 1);
      v8 = (*a2 + 8 * v25);
      v26 = *v8;
      if (*v23 == *v8)
      {
        a3 = v23;
        result = v22;
        goto LABEL_7;
      }

      v31 = 0;
      v32 = 1;
      while (v26 != -4096)
      {
        if (v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = v26 == -8192;
        }

        if (v33)
        {
          v31 = v8;
        }

        v34 = v25 + v32++;
        v25 = v34 & v24;
        v8 = (*a2 + 8 * (v34 & v24));
        v26 = *v8;
        if (v11 == *v8)
        {
          result = v22;
          a3 = v23;
          goto LABEL_7;
        }
      }

      if (v31)
      {
        v8 = v31;
      }

      result = v22;
      a3 = v23;
    }
  }

  else
  {
LABEL_23:
    v17 = result;
    v18 = a3;
    sub_298B51C04(a2, 2 * v4);
    v4 = *(a2 + 4);
    v11 = *v18;
    v19 = v4 - 1;
    v20 = ((*v18 >> 4) ^ (*v18 >> 9)) & (v4 - 1);
    v8 = (*a2 + 8 * v20);
    v21 = *v8;
    if (*v18 == *v8)
    {
      a3 = v18;
      result = v17;
      goto LABEL_7;
    }

    v27 = 0;
    v28 = 1;
    while (v21 != -4096)
    {
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v21 == -8192;
      }

      if (v29)
      {
        v27 = v8;
      }

      v30 = v20 + v28++;
      v20 = v30 & v19;
      v8 = (*a2 + 8 * (v30 & v19));
      v21 = *v8;
      if (v11 == *v8)
      {
        result = v17;
        a3 = v18;
        goto LABEL_7;
      }
    }

    if (v27)
    {
      v8 = v27;
    }

    result = v17;
    a3 = v18;
  }

  v11 = *v8;
LABEL_7:
  ++*(a2 + 2);
  if (v11 != -4096)
  {
    --*(a2 + 3);
  }

  *v8 = *a3;
  v5 = *a2;
  v10 = 1;
LABEL_10:
  *result = v8;
  *(result + 8) = v5 + 8 * v4;
  *(result + 16) = v10;
  return result;
}

__n128 sub_298BD4988(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_298AFE11C((a1 + 16), *(a2 + 16), *(a2 + 24));
    result = *(a2 + 40);
    *(a1 + 40) = result;
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
    result = *(a2 + 40);
    *(a1 + 40) = result;
  }

  return result;
}

void sub_298BD49F8(void *a1, uint64_t a2)
{
  v26[2] = *MEMORY[0x29EDCA608];
  if (*(a2 + 640) != 1)
  {
    sub_298BDE544(*(a2 + 448), *(a2 + 456));
    sub_298BD4E68(a2 + 8);
    sub_298BD4F0C(a2 + 512);
    v3 = *(a2 + 448);
    v4 = *(a2 + 456);
    while (v3 != v4)
    {
      if (v3[12])
      {
        v19[0] = v3[12];
        v15 = sub_298BE0370(a2 + 512, v19);
        v23 = v3;
        v16 = v15[2];
        if (v16 >= v15[3])
        {
          v17 = sub_298BE0790((v15 + 1), &v23);
        }

        else
        {
          *v16 = v3;
          v17 = v16 + 1;
        }

        v15[2] = v17;
      }

      v3 += 22;
    }

    sub_298BE0880(*(a2 + 536), *(a2 + 544));
    sub_298BE2734(a2 + 472);
    v5 = *(a2 + 448);
    for (i = *(a2 + 456); v5 != i; v5 += 176)
    {
      if (!*(v5 + 56))
      {
        operator new();
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v7 = *a2;
    v22 = v7;
    if (v7)
    {
      v14 = 0;
      do
      {
        if (v14 >= v25)
        {
          sub_298BE2CDC(&v23, &v22);
        }

        else
        {
          *v14 = v7;
          v14 += 8;
          v7 = v22;
        }

        v24 = v14;
        v7 = *v7;
        v22 = v7;
      }

      while (v7);
    }

    *v19 = 0u;
    *__p = 0u;
    v21 = 1065353216;
    sub_298BE2E2C(v19);
    for (j = v24; j != v23; j -= 8)
    {
      v11 = *(j - 1);
      v12 = *(v11 + 448);
      for (k = *(v11 + 456); v12 != k; v12 += 176)
      {
        *&v18 = v12;
        sub_298BD5018(v19, &v18);
      }
    }

    sub_298AEB698(a2 + 400, *(a2 + 400));
    v9 = *(a2 + 448);
    for (m = *(a2 + 456); v9 != m; v9 += 176)
    {
      *&v18 = v9;
      if (sub_298BD5018(v19, &v18))
      {
        operator new();
      }
    }

    sub_298BE2F54(*(a2 + 400), *(a2 + 408));
    *(a2 + 640) = 1;
    sub_298BD53E0(v26, a2);
  }

  *a1 = 0;
}

void sub_298BD4E68(uint64_t a1)
{
  sub_298BDBD58(&__p, *(a1 + 8), (a1 + 16));
  *(a1 + 40) = *(a1 + 32);
  v2 = (v6 - __p) >> 4;
  v3 = 1 << -__clz(v2);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_298BDBC98((a1 + 32), v4);
  sub_298BDBCC8(a1, 1, 0, (v6 - __p) >> 4, __p);
  *a1 = 1;
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_298BD4F0C(uint64_t result)
{
  if (!*(result + 8))
  {
    return;
  }

  v2 = *(result + 16);
  if (v2 <= 4 * *(result + 8) || v2 < 0x41)
  {
    if (!v2)
    {
LABEL_15:
      *(result + 8) = 0;
      return;
    }

    v3 = *result;
    v4 = 32 * v2;
    while (1)
    {
      if (*v3 != -8192)
      {
        if (*v3 == -4096)
        {
          goto LABEL_10;
        }

        v5 = v3[1];
        if (v5)
        {
          v3[2] = v5;
          v6 = result;
          operator delete(v5);
          result = v6;
        }
      }

      *v3 = -4096;
LABEL_10:
      v3 += 4;
      v4 -= 32;
      if (!v4)
      {
        goto LABEL_15;
      }
    }
  }

  sub_298BE017C(result);
}

std::mutex **sub_298BD4FC4(std::mutex **result, std::mutex **a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    std::mutex::~mutex(v3);
    MEMORY[0x29C2945F0]();
    return v4;
  }

  return result;
}

uint64_t sub_298BD5018(void *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(*a2 + 72);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v4 - 1) & v3;
  }

  else
  {
    v6 = *(*a2 + 72);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  if (v5.u32[0] >= 2uLL)
  {
    while (1)
    {
      v9 = v8[1];
      if (v9 == v3)
      {
        v10 = v8[2];
        v11 = *a2;
        if (*(v10 + 72) == *(*a2 + 72) && *(v10 + 64) == *(v11 + 64))
        {
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, (v10 + 32));
          memset(uu2, 0, sizeof(uu2));
          uuid_copy(uu2, (v11 + 32));
          if (!uuid_compare(dst, uu2))
          {
            return 0;
          }
        }
      }

      else
      {
        if (v9 >= *&v4)
        {
          v9 %= *&v4;
        }

        if (v9 != v6)
        {
          goto LABEL_24;
        }
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *&v4 - 1;
  while (1)
  {
    v14 = v8[1];
    if (v14 != v3)
    {
      if ((v14 & v13) != v6)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    v15 = v8[2];
    v16 = *a2;
    if (*(v15 + 72) == *(*a2 + 72) && *(v15 + 64) == *(v16 + 64))
    {
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, (v15 + 32));
      memset(uu2, 0, sizeof(uu2));
      uuid_copy(uu2, (v16 + 32));
      if (!uuid_compare(dst, uu2))
      {
        return 0;
      }
    }

LABEL_26:
    v8 = *v8;
    v13 = *&v4 - 1;
    if (!v8)
    {
      goto LABEL_24;
    }
  }
}

void sub_298BD53E0(uint64_t a1, void *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    v2 = 0;
    do
    {
      v4 = a2 + 50;
      if (v2 >= v7)
      {
        v3 = a2;
        v2 = sub_298BE48C8(&__p, &v4);
        a2 = v3;
      }

      else
      {
        *v2++ = a2 + 50;
      }

      v6 = v2;
      a2 = *a2;
    }

    while (a2);
  }

  sub_298BF5D4C();
}

void sub_298BD5478(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 448);
  v5 = *(a1 + 456);
  while (v4 != v5)
  {
    v6 = *(v4 + 8);
    v7 = *(v4 + 31);
    if (v7 >= 0)
    {
      v6 = v4 + 8;
    }

    v8 = *(v4 + 16);
    if (v7 >= 0)
    {
      v8 = *(v4 + 31);
    }

    v9 = v6 + v8 + 1;
    do
    {
      if (!v8)
      {
        break;
      }

      --v8;
      v10 = *(v9 - 2);
      --v9;
    }

    while (v10 != 47);
    LOBYTE(v30) = 0;
    v32 = 0;
    (*(*a2 + 40))(a2);
    v4 += 176;
  }

  v30 = a2;
  sub_298BD4258(a1, sub_298BE49D8, &v30);
  v30 = a2;
  sub_298BD57EC(a1 + 8, sub_298BE4AEC, &v30);
  sub_298BD5890(a1, a2);
  if (*(a1 + 632))
  {
    v11 = *(a1 + 608);
    v12 = *(a1 + 616);
    if (v11 != v12)
    {
      v13 = *(v11 + 23);
      v14 = *v11;
      if (v13 >= 0)
      {
        v14 = *(a1 + 608);
      }

      if (v13 < 0)
      {
        v13 = *(v11 + 8);
      }

      v30 = v14;
      v31 = v13;
      v32 = 1;
      sub_298BF7160(a2, &v30, v11 + 24, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
      v15 = (v11 + 80);
      if (v11 + 80 != v12)
      {
        v16 = *(v11 + 103);
        if (v16 < 0)
        {
          v15 = *(v11 + 80);
        }

        if (v16 < 0)
        {
          v16 = *(v11 + 88);
        }

        v30 = v15;
        v31 = v16;
        v32 = 1;
        sub_298BF7160(a2, &v30, v11 + 104, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
        v17 = (v11 + 160);
        if (v11 + 160 != v12)
        {
          v18 = *(v11 + 183);
          if (v18 < 0)
          {
            v17 = *(v11 + 160);
          }

          if (v18 < 0)
          {
            v18 = *(v11 + 168);
          }

          v30 = v17;
          v31 = v18;
          v32 = 1;
          sub_298BF7160(a2, &v30, v11 + 184, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
          v19 = (v11 + 240);
          if (v11 + 240 != v12)
          {
            v20 = *(v11 + 263);
            if (v20 < 0)
            {
              v19 = *(v11 + 240);
            }

            if (v20 < 0)
            {
              v20 = *(v11 + 248);
            }

            v30 = v19;
            v31 = v20;
            v32 = 1;
            sub_298BF7160(a2, &v30, v11 + 264, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
            v21 = (v11 + 320);
            if (v11 + 320 != v12)
            {
              v22 = *(v11 + 343);
              if (v22 < 0)
              {
                v21 = *(v11 + 320);
              }

              if (v22 < 0)
              {
                v22 = *(v11 + 328);
              }

              v30 = v21;
              v31 = v22;
              v32 = 1;
              sub_298BF7160(a2, &v30, v11 + 344, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
              v23 = (v11 + 400);
              if (v11 + 400 != v12)
              {
                v24 = *(v11 + 423);
                if (v24 < 0)
                {
                  v23 = *(v11 + 400);
                }

                if (v24 < 0)
                {
                  v24 = *(v11 + 408);
                }

                v30 = v23;
                v31 = v24;
                v32 = 1;
                sub_298BF7160(a2, &v30, v11 + 424, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
                v25 = (v11 + 480);
                if (v11 + 480 != v12)
                {
                  v26 = *(v11 + 503);
                  if (v26 < 0)
                  {
                    v25 = *(v11 + 480);
                  }

                  if (v26 < 0)
                  {
                    v26 = *(v11 + 488);
                  }

                  v30 = v25;
                  v31 = v26;
                  v32 = 1;
                  sub_298BF7160(a2, &v30, v11 + 504, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
                  for (i = v11 + 560; i != v12; i += 80)
                  {
                    v28 = *(i + 23);
                    v29 = *i;
                    if (v28 >= 0)
                    {
                      v29 = i;
                    }

                    if (v28 < 0)
                    {
                      v28 = *(i + 8);
                    }

                    v30 = v29;
                    v31 = v28;
                    v32 = 1;
                    sub_298BF7160(a2, &v30, i + 24, *(*(a1 + 600) + 16), *(*(a1 + 600) + 24), *(a1 + 592));
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

uint64_t sub_298BD57EC(uint64_t result, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    do
    {
      result = a2(a3, v3[4], v3[5]);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          i = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        i = v3[2];
        if (*i != v3)
        {
          v9 = i[2];
          v10 = *v9 == i;
          for (i = v9; !v10; v9 = i)
          {
            i = v9[2];
            v10 = *i == v9;
          }
        }
      }

      v3 = i;
    }

    while (i != v4);
  }

  return result;
}

uint64_t sub_298BD5890(uint64_t result, uint64_t a2)
{
  if (*(result + 584))
  {
    return dyld_shared_cache_for_each_image();
  }

  return result;
}

uint64_t sub_298BD59D8(uint64_t a1, uint64_t a2)
{
  installname = dyld_image_get_installname();
  if (installname)
  {
    strlen(installname);
  }

  return dyld_image_for_each_section_info();
}

void sub_298BD5A88(size_t result, char *__s, uint64_t a3, uint64_t a4)
{
  if (__s)
  {
    v7 = *(result + 32);
    if (strlen(__s) >= 6)
    {
      v8 = *__s == 1163157343 && *(__s + 2) == 21592;
      if (v8)
      {
        v9 = v7[57];
        v10 = v7[56];
        if (v10 != v9)
        {
          v11 = *(v7[73] + 8) + a4;
          v12 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 4);
          v13 = v7[56];
          do
          {
            v14 = v12 >> 1;
            v15 = v13 + 176 * (v12 >> 1);
            v16 = *(v15 + 72);
            v17 = v15 + 176;
            v12 += ~(v12 >> 1);
            if (v16 > v11)
            {
              v12 = v14;
            }

            else
            {
              v13 = v17;
            }
          }

          while (v12);
          if (v13 != v10)
          {
            v18 = v13 - 176;
            while (1)
            {
              if (!*(v18 + 144))
              {
                if (*(v18 + 152))
                {
                  v19 = *(v18 + 72);
                  if (v19 <= v11 && *(v18 + 64) + v19 > v11)
                  {
                    break;
                  }
                }
              }

              if (*(v18 + 72) <= v11)
              {
                v8 = v10 == v18;
                v18 -= 176;
                if (!v8)
                {
                  continue;
                }
              }

              return;
            }

            if (*(v18 + 136) == 1 && *(v18 + 56))
            {
              v62[1] = MEMORY[0x29EDCA5F8];
              v62[2] = 0x40000000;
              v62[3] = sub_298BD5EF8;
              v62[4] = &unk_29EEB61D0;
              v20 = *(result + 48);
              v62[5] = v7;
              v62[6] = v20;
              v63 = *(result + 56);
              dyld_image_local_nlist_content_4Symbolication();
              v21 = *(v18 + 128) - *(v18 + 80);
              v62[0] = v21;
              v22 = v7[73];
              v23 = *(v22 + 16);
              v24 = *(v22 + 32);
              if (v24)
              {
                v25 = v24 - 1;
                v26 = (v24 - 1) & (37 * v21);
                v27 = (v23 + (v26 << 6));
                v28 = *v27;
                if (v21 == *v27)
                {
                  goto LABEL_39;
                }

                v29 = 0;
                v30 = 1;
                while (v28 != -1)
                {
                  if (v29)
                  {
                    v31 = 0;
                  }

                  else
                  {
                    v31 = v28 == -2;
                  }

                  if (v31)
                  {
                    v29 = v27;
                  }

                  v32 = v26 + v30++;
                  v26 = v32 & v25;
                  v27 = (v23 + (v26 << 6));
                  v28 = *v27;
                  if (v21 == *v27)
                  {
                    goto LABEL_39;
                  }
                }

                if (v29)
                {
                  v33 = v29;
                }

                else
                {
                  v33 = v27;
                }
              }

              else
              {
                v33 = 0;
              }

              v27 = sub_298BE4B44((v22 + 16), v62, v33);
              *v27 = v21;
              *(v27 + 1) = 0u;
              *(v27 + 3) = 0u;
              *(v27 + 5) = 0u;
              v27[7] = 0;
              v22 = v7[73];
LABEL_39:
              v34 = *(v27 + 1);
              v35 = *(v27 + 3);
              v36 = *(v27 + 5);
              v61 = v27[7];
              v59 = v35;
              v60 = v36;
              *(&v58 + 1) = *(&v34 + 1);
              v39 = *(v22 + 104);
              v37 = v22 + 104;
              v38 = v39;
              v40 = *(v37 + 16);
              if (v40)
              {
                v41 = v40 - 1;
                v42 = (37 * DWORD2(v58)) & v41;
                v43 = (v38 + 24 * v42);
                v44 = *v43;
                if (*(&v58 + 1) == *v43)
                {
LABEL_52:
                  v50 = v43 + 1;
                  v51 = v43[2];
                  if (!v51)
                  {
                    dyld_image_content_for_segment();
                    v51 = v43[2];
                  }

                  v52 = *(result + 48);
                  v57 = *(result + 56);
                  v53 = *v50;
                  v54 = *(v7[73] + 8);
                  v64 = v57;
                  v65 = 1;
                  if ((*(*v52 + 16))(v52, &v64))
                  {
                    v64 = v57;
                    v65 = 1;
                    sub_298BF6DB0(v52, &v64, v53 + DWORD2(v59), (v53 + v59), DWORD1(v59), v54, 0);
                    if (v61 == 1)
                    {
                      v64 = v57;
                      v65 = v61;
                      v55 = v60;
                      if (v51 < v60)
                      {
                        v55 = v51;
                      }

                      if (v51 - v55 >= DWORD1(v60))
                      {
                        v56 = DWORD1(v60);
                      }

                      else
                      {
                        v56 = v51 - v55;
                      }

                      sub_298BF6B3C(v52, &v64, v53 + v55, v56, *(&v60 + 1), v54);
                    }
                  }

                  return;
                }

                v45 = 0;
                v46 = 1;
                while (v44 != -1)
                {
                  if (v45)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v44 == -2;
                  }

                  if (v47)
                  {
                    v45 = v43;
                  }

                  v48 = v42 + v46++;
                  v42 = v48 & v41;
                  v43 = (v38 + 24 * v42);
                  v44 = *v43;
                  if (*(&v58 + 1) == *v43)
                  {
                    goto LABEL_52;
                  }
                }

                if (v45)
                {
                  v49 = v45;
                }

                else
                {
                  v49 = v43;
                }
              }

              else
              {
                v49 = 0;
              }

              v43 = sub_298B7FFF8(v37, &v58 + 8, &v58 + 1, v49);
              *v43 = *(&v58 + 1);
              v43[1] = 0;
              v43[2] = 0;
              goto LABEL_52;
            }
          }
        }
      }
    }
  }
}

size_t sub_298BD5EF8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = 1;
  return sub_298BF6DB0(v4, &v7, a4, a2, a3, *(*(v5 + 584) + 8), 1);
}

void sub_298BD5F50(uint64_t a1, const void *a2, uint64_t a3, size_t a4)
{
  if (*(**(*(a1 + 32) + 584) + 136) != 1)
  {
    operator new[]();
  }

  v4 = *(a1 + 40);
  *v4 = a2;
  v4[1] = a4;
}

uint64_t sub_298BD630C(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a1 + 8;
  }

  v3 = *(a1 + 664);
  if (!v3)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (a2 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_3;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  result = v5[5];
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_298BD6444(uint64_t a1)
{
  if (*(a1 + 592))
  {
    operator new();
  }

  sub_298C3D514();
}

__n128 sub_298BD6D94(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_298BD6DB8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    if (v2 != v1)
    {
      do
      {
        while (1)
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            break;
          }

          if (v2 == v1)
          {
            goto LABEL_7;
          }
        }

        v5 = a1;
        operator delete(*v2);
        a1 = v5;
      }

      while (v2 != v1);
LABEL_7:
      v3 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v3);
  }
}

void sub_298BD6E54(void *a1, void (*a2)())
{
  v58[2] = *MEMORY[0x29EDCA608];
  v4 = a1[5];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3802000000;
  v47 = sub_298BD7238;
  v48 = nullsub_189;
  installname = dyld_image_get_installname();
  v49 = installname;
  if (installname)
  {
    installname = strlen(installname);
  }

  v50 = installname;
  LOWORD(v40) = 261;
  v6 = v45[6];
  v36 = v45[5];
  v37 = v6;
  if (sub_298BAB3F0(&v36, 0))
  {
    v58[0] = 0;
    v58[1] = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2000000000;
    v43[3] = v58;
    if (!dyld_image_copy_uuid())
    {
LABEL_12:
      _Block_object_dispose(v43, 8);
      goto LABEL_13;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x4002000000;
    v39 = sub_298BD7248;
    v42[0] = 0;
    v42[1] = 0;
    v40 = sub_298BD7284;
    v41 = v42;
    v7 = a1[6];
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 0x40000000;
    v53 = sub_298BDC040;
    v54 = &unk_29EEB6270;
    v55 = a2;
    v56 = v7;
    v57 = &v41;
    dyld_image_for_each_section_info();
    v51 = 0;
    v52 = &v51;
    v53 = 0x3802000000;
    v54 = sub_298BD7290;
    v55 = nullsub_190;
    LOBYTE(v56) = 0;
    LOBYTE(v57) = 0;
    v30 = MEMORY[0x29EDCA5F8];
    v31 = 1107296256;
    v32 = sub_298BD72A8;
    v33 = &unk_2A1F1EA28;
    v8 = a1[6];
    v34 = &v51;
    v35 = v8;
    dyld_image_for_each_segment_info();
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 1107296256;
    v17 = sub_298BD7344;
    v18 = &unk_2A1F1EA58;
    v19 = &v26;
    v20 = &v44;
    v9 = a1[6];
    v24 = v4;
    v25 = v9;
    v21 = &v51;
    v22 = v43;
    v23 = &v36;
    dyld_image_for_each_section_info();
    if ((v27[3] & 1) == 0)
    {
      v10 = *(a1[4] + 8);
      v11 = v45[5];
      if (v11)
      {
        v12 = v45[6];
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v14) = v45[6];
        if (v12)
        {
          memmove(__p, v11, v12);
        }

        *(__p + v12) = 0;
        sub_298AFAB64(v10 + 40, __p);
        if ((SHIBYTE(v14) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

      __p[0] = 0;
      __p[1] = 0;
      v14 = 0;
      sub_298AFAB64(v10 + 40, __p);
      if (SHIBYTE(v14) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }
    }

LABEL_11:
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v36, 8);
    sub_298AE9B00(&v41, v42[0]);
    goto LABEL_12;
  }

LABEL_13:
  _Block_object_dispose(&v44, 8);
}