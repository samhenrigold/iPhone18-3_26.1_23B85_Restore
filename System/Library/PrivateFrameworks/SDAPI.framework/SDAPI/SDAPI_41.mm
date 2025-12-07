uint64_t MiniFst::beginTopFstSyncRecog(uint64_t this)
{
  *(this + 96) = 0;
  **(this + 32) = 5000;
  return this;
}

uint64_t MiniFst::seed(uint64_t this, int a2, int a3, int a4, int a5)
{
  v5 = *(this + 32);
  if (*v5 > a2)
  {
    *(v5 + 8) = -2 - a4;
    *(v5 + 12) = 0;
    v6 = *(*(this + 80) + 144);
    *v5 = a2;
    *(v5 + 4) = v6;
    *(v5 + 16) = 0;
    *(v5 + 20) = a3;
    *(v5 + 24) = a5;
    if (!*(this + 96))
    {
      *(this + 96) = 1;
    }
  }

  return this;
}

uint64_t MiniFst::updateFrame(uint64_t this, int *a2, int a3, int a4)
{
  *(this + 104) = -1;
  v4 = *(this + 96);
  if (!v4)
  {
    return this;
  }

  v5 = this;
  *(this + 100) = a4;
  v6 = **(this + 32);
  if (v4 <= (v6 > 4999))
  {
    LODWORD(v10) = 1;
    goto LABEL_54;
  }

  v9 = v6 > 4999;
  v10 = 1;
  do
  {
    v11 = *(v5 + 32) + 28 * v9;
    v12 = *(v11 + 4);
    if (*(*(v5 + 80) + 140) > v12)
    {
      this = PelScoreCache::getScoreNoBackoff(*(v5 + 88), *(v11 + 12));
      v13 = *(v5 + 32) + 28 * v9;
      v14 = *v13 + this;
      if (v14 - a3 <= *a2)
      {
        if (*a2 > v14)
        {
          *a2 = v14;
        }

        v15 = *(v5 + 64);
        v16 = *(v15 + 4 * v12);
        v17 = *(v5 + 48);
        if (v16 == -1)
        {
          *(v15 + 4 * v12) = v10;
          if (!v17)
          {
            v10 = (v10 + 1);
            goto LABEL_15;
          }

          v18 = v17 + 28 * v10;
          v10 = (v10 + 1);
        }

        else
        {
          v18 = v17 + 28 * v16;
          if (v14 >= *v18)
          {
            goto LABEL_15;
          }
        }

        v19 = *(v13 + 12);
        *v18 = *v13;
        *(v18 + 12) = v19;
        *v18 = v14;
        goto LABEL_15;
      }
    }

    do
    {
LABEL_15:
      v20 = *(v5 + 80);
      v21 = *(v20 + 152);
      v22 = *(v21 + 4 * v12);
      LODWORD(v21) = *(v21 + 4 * (v12 + 1));
      v23 = v21 & 0xFFFFFFF;
      if (*(v20 + 140) > (v21 & 0xFFFFFFF))
      {
        v24 = (v22 >> 20) & 0x3FF;
        this = PelScoreCache::getScoreNoBackoff(*(v5 + 88), v22);
        v25 = *(v5 + 32) + 28 * v9;
        v26 = this + v24 + *v25;
        if (v26 - a3 <= *a2)
        {
          if (*a2 > v26)
          {
            *a2 = v26;
          }

          v27 = *(v5 + 64);
          v28 = *(v27 + 4 * v23);
          v29 = *(v5 + 48);
          if (v28 == -1)
          {
            *(v27 + 4 * v23) = v10;
            if (v29)
            {
              v30 = v29 + 28 * v10;
              v10 = (v10 + 1);
LABEL_24:
              *v30 = v26;
              *(v30 + 4) = v23;
              *(v30 + 8) = *(v25 + 8);
              *(v30 + 12) = v22;
              *(v30 + 16) = *(v25 + 16) + v24;
              *(v30 + 20) = *(v25 + 20);
              goto LABEL_26;
            }

            v10 = (v10 + 1);
          }

          else
          {
            v30 = v29 + 28 * v28;
            if (v26 < *v30)
            {
              goto LABEL_24;
            }
          }
        }
      }

LABEL_26:
      v12 += 2;
    }

    while ((v22 & 0x80000000) == 0);
    ++v9;
  }

  while (v9 < *(v5 + 96));
  if (v10 >= 2)
  {
    v31 = *(v5 + 48);
    v32 = *(v5 + 80);
    v33 = 1;
    this = 1048563;
    v75 = a3;
    while (1)
    {
      v34 = *(v31 + 28 * v33 + 4);
      if ((*(*(v32 + 152) + 4 * v34) & 0x40000000) != 0)
      {
        break;
      }

LABEL_31:
      if (++v33 >= v10)
      {
        if (v10 >= 2)
        {
          v70 = 0;
          do
          {
            v71 = *(v5 + 48) + v70;
            v72 = *(v71 + 32);
            v73 = *(v5 + 32) + v70;
            v74 = *(v71 + 28);
            *(v73 + 40) = *(v71 + 40);
            *(v73 + 28) = v74;
            *(*(v5 + 64) + 4 * v72) = -1;
            v70 += 28;
          }

          while (28 * v10 - 28 != v70);
        }

        goto LABEL_54;
      }
    }

    while (2)
    {
      v35 = *(v32 + 152);
      v36 = *(v35 + 4 * v34);
      v37 = *(v35 + 4 * (v34 + 1)) & 0xFFFFFFF;
      if (*(v32 + 140) <= v37)
      {
        v38 = a3;
        v39 = v10;
        v40 = (v36 >> 20) & 0x3FF;
        v41 = *(v31 + 28 * v33) + v40;
        if ((v36 & 0xFFFFF) <= 0xFFFF3)
        {
          v42 = v36 & 0xFFFFF;
        }

        else
        {
          v42 = v36 & 0xFFFFF | 0xF00000;
        }

        if (v41 - v38 > *a2)
        {
          goto LABEL_45;
        }

        if (*a2 > v41)
        {
          *a2 = v41;
        }

        v43 = *(v5 + 8);
        if (v43 == *(v5 + 12))
        {
          v44 = a2;
          v45 = v33;
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v5, 1, 1);
          this = 1048563;
          v33 = v45;
          a2 = v44;
          v43 = *(v5 + 8);
        }

        *(v5 + 8) = v43 + 1;
        v46 = *v5;
        if (*(v5 + 104) == -1)
        {
          *(v5 + 104) = v43 + 1;
        }

        v47 = v46 + 36 * v43;
        v48 = (*(v5 + 48) + 28 * v33);
        v49 = *(v48 + 12);
        *v47 = *v48;
        *(v47 + 12) = v49;
        *v47 = v41;
        v50 = *(v47 + 16) + v40;
        v31 = *(v5 + 48);
        v51 = v31 + 28 * v33;
        v52 = v42 + 2 * *(v51 + 20);
        *(v47 + 16) = v50;
        *(v47 + 20) = v52;
        v53 = *(v5 + 100);
        *(v47 + 28) = v42;
        *(v47 + 32) = v53;
        v32 = *(v5 + 80);
        if (*(v32 + 160) == v37)
        {
LABEL_45:
          v10 = v39;
          a3 = v75;
          goto LABEL_46;
        }

        v54 = *(v5 + 64);
        v55 = *(v54 + 4 * v37);
        v10 = v39;
        if (v55 == -1)
        {
          *(v54 + 4 * v37) = v39;
          v56 = (v31 + 28 * v39);
          v10 = (v39 + 1);
          v50 = *(v47 + 16);
          v52 = *(v47 + 20);
          a3 = v75;
          goto LABEL_52;
        }

        v56 = (v31 + 28 * v55);
        a3 = v75;
        if (v41 < *v56)
        {
LABEL_52:
          *v56 = v41;
          v56[1] = v37;
          v56[2] = *(v5 + 8) - 1;
          v56[4] = v50;
          v56[5] = v52;
          v56[6] = *(v51 + 24);
        }
      }

LABEL_46:
      LODWORD(v34) = v34 + 2;
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      continue;
    }
  }

LABEL_54:
  *(v5 + 96) = v10;
  v57 = *(*(v5 + 80) + 144);
  v58 = *(v5 + 32);
  *v58 = 5000;
  v58[1] = v57;
  v59 = *(v5 + 104);
  if (v59 != -1)
  {
    v60 = *(v5 + 8);
    v61 = (v60 - v59);
    v62 = *(v5 + 28);
    if (v61 > v62)
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v5 + 16, v61 - v62, 0);
    }

    *(v5 + 24) = v61;
    if (v60 != v59)
    {
      v63 = 0;
      v64 = 0;
      do
      {
        v65 = *v5 + 36 * (v64 + *(v5 + 104));
        v66 = *(v5 + 16) + v63;
        v67 = *v65;
        v68 = *(v65 + 16);
        *(v66 + 32) = *(v65 + 32);
        *v66 = v67;
        *(v66 + 16) = v68;
        ++v64;
        v63 += 36;
      }

      while (v61 != v64);
      LODWORD(v61) = *(v5 + 24);
    }

    v69 = *(v5 + 16);

    return mrec_qsort_r<MiniFst::Trace>(v69, v61, 36, 0);
  }

  return this;
}

char *mrec_qsort_r<MiniFst::Trace>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v9 = &result[a2 * a3];
      v10 = &result[a3];
      v11 = result;
      do
      {
        if (v10 > result)
        {
          v12 = v11;
          v13 = v10;
          do
          {
            v14 = v13;
            v13 += v5;
            v15 = *(v13 + 8);
            v16 = *(v14 + 8);
            if (v15 == v16)
            {
              if (*v13 <= *v14)
              {
                break;
              }
            }

            else if (v15 < v16)
            {
              break;
            }

            if (v8)
            {
              v17 = 0;
              if (v7)
              {
                v18 = v13;
                do
                {
                  v19 = *&v14[8 * v17];
                  *&v14[8 * v17] = *v18;
                  *v18 = v19;
                  v18 += 8;
                  ++v17;
                }

                while (a3 >> 3 != v17);
              }

              else
              {
                v21 = a3;
                do
                {
                  v22 = v14[v17];
                  v14[v17] = v12[v17];
                  v12[v17++] = v22;
                  --v21;
                }

                while (v21);
              }
            }

            else
            {
              v20 = *v14;
              *v14 = *v13;
              *v13 = v20;
            }

            v12 += v5;
          }

          while (v13 > result);
        }

        v10 += a3;
        v11 += a3;
      }

      while (v10 < v9);
    }

    return result;
  }

  v24 = a3 >> 3;
  while (2)
  {
    v25 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v29 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v31 = result;
LABEL_113:
      v84 = &result[(a2 - 1) * a3];
      goto LABEL_166;
    }

    v30 = (a2 >> 3) * a3;
    v31 = &result[v30];
    v32 = &result[2 * v30];
    v33 = *(result + 8);
    v34 = *&result[v30 + 32];
    v35 = v33 < v34;
    if (v33 == v34)
    {
      v35 = *result < *v31;
    }

    if (!v35)
    {
      v85 = *(v32 + 8);
      if (v34 == v85)
      {
        if (*v31 > *v32)
        {
          goto LABEL_125;
        }
      }

      else if (v34 >= v85)
      {
        goto LABEL_125;
      }

      if (v33 == v85)
      {
        v31 = result;
        if (*result < *v32)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v31 = result;
        if (v33 < v85)
        {
          goto LABEL_125;
        }
      }

      v31 = &result[2 * v30];
      goto LABEL_125;
    }

    v36 = *(v32 + 8);
    v37 = v34 < v36;
    if (v34 == v36)
    {
      v37 = *v31 < *v32;
    }

    if (!v37)
    {
      if (v33 == v36)
      {
        v31 = &result[2 * v30];
        if (*result < *v32)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v31 = &result[2 * v30];
        if (v33 < v36)
        {
          goto LABEL_125;
        }
      }

      v31 = result;
    }

LABEL_125:
    v86 = &v25[-v30];
    v87 = &v25[v30];
    v88 = *&v25[-v30 + 32];
    v89 = *(v25 + 8);
    v90 = v88 < v89;
    if (v88 == v89)
    {
      v90 = *v86 < *v25;
    }

    if (!v90)
    {
      v93 = *(v87 + 8);
      if (v89 == v93)
      {
        if (*v25 > *v87)
        {
          goto LABEL_146;
        }
      }

      else if (v89 >= v93)
      {
        goto LABEL_146;
      }

      if (v88 == v93)
      {
        v25 -= v30;
        if (*v86 < *v87)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v25 -= v30;
        if (v88 < v93)
        {
          goto LABEL_146;
        }
      }

      v25 = v87;
      goto LABEL_146;
    }

    v91 = *(v87 + 8);
    v92 = v89 < v91;
    if (v89 == v91)
    {
      v92 = *v25 < *v87;
    }

    if (!v92)
    {
      if (v88 == v91)
      {
        v25 += v30;
        if (*v86 < *v87)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v25 += v30;
        if (v88 < v91)
        {
          goto LABEL_146;
        }
      }

      v25 = v86;
    }

LABEL_146:
    v94 = -v30;
    v84 = &v29[-2 * v30];
    v95 = &v29[v94];
    v96 = *(v84 + 8);
    v97 = *(v95 + 8);
    v98 = v96 < v97;
    if (v96 == v97)
    {
      v98 = *v84 < *v95;
    }

    if (v98)
    {
      v99 = *(v29 + 8);
      v100 = v97 < v99;
      if (v97 == v99)
      {
        v100 = *v95 < *v29;
      }

      if (!v100)
      {
        v101 = v96 < v99;
        if (v96 == v99)
        {
          v101 = *v84 < *v29;
        }

        if (v101)
        {
          goto LABEL_113;
        }

        goto LABEL_166;
      }

      goto LABEL_165;
    }

    v102 = *(v29 + 8);
    if (v97 == v102)
    {
      if (*v95 <= *v29)
      {
        goto LABEL_159;
      }

LABEL_165:
      v84 = v95;
      goto LABEL_166;
    }

    if (v97 >= v102)
    {
      goto LABEL_165;
    }

LABEL_159:
    v103 = v96 < v102;
    if (v96 == v102)
    {
      v103 = *v84 < *v29;
    }

    if (!v103)
    {
      goto LABEL_113;
    }

LABEL_166:
    v104 = *(v31 + 8);
    v105 = *(v25 + 8);
    v106 = v104 < v105;
    if (v104 == v105)
    {
      v106 = *v31 < *v25;
    }

    if (v106)
    {
      v107 = *(v84 + 8);
      v108 = v105 < v107;
      if (v105 == v107)
      {
        v108 = *v25 < *v84;
      }

      if (v108)
      {
        goto LABEL_26;
      }

      if (v104 == v107)
      {
        v25 = v84;
        if (*v31 < *v84)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v25 = v84;
        if (v104 < v107)
        {
          goto LABEL_26;
        }
      }

      v25 = v31;
      goto LABEL_26;
    }

    v109 = *(v84 + 8);
    if (v105 == v109)
    {
      if (*v25 > *v84)
      {
        goto LABEL_26;
      }
    }

    else if (v105 >= v109)
    {
      goto LABEL_26;
    }

    if (v104 == v109)
    {
      v25 = v31;
      if (*v31 >= *v84)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v25 = v31;
      if (v104 >= v109)
      {
LABEL_186:
        v25 = v84;
      }
    }

LABEL_26:
    if (v8)
    {
      if (v7)
      {
        v26 = result;
        v27 = a3 >> 3;
        do
        {
          v28 = *v26;
          *v26 = *v25;
          v26 += 8;
          *v25 = v28;
          v25 += 8;
          --v27;
        }

        while (v27);
      }

      else
      {
        v39 = a3;
        v40 = result;
        do
        {
          v41 = *v40;
          *v40++ = *v25;
          *v25++ = v41;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v38 = *result;
      *result = *v25;
      *v25 = v38;
    }

    v42 = 0;
    v43 = &result[a3];
    v44 = &result[(a2 - 1) * a3];
    v45 = v44;
    v46 = &result[a3];
    v47 = &result[a3];
    while (1)
    {
LABEL_46:
      if (v46 > v45)
      {
        goto LABEL_60;
      }

      v48 = *(v46 + 8);
      v49 = *(result + 8);
      v50 = v48 < v49;
      if (v48 != v49)
      {
        break;
      }

      v50 = *v46 < *result;
      if (*v46 != *result)
      {
        break;
      }

      if (v8)
      {
        v51 = 0;
        if (v7)
        {
          do
          {
            v52 = *&v47[8 * v51];
            *&v47[8 * v51] = *&v46[8 * v51];
            *&v46[8 * v51++] = v52;
          }

          while (v24 != v51);
        }

        else
        {
          do
          {
            v53 = v47[v51];
            v47[v51] = v46[v51];
            v46[v51++] = v53;
          }

          while (a3 != v51);
        }
      }

      else
      {
        v64 = *v47;
        *v47 = *v46;
        *v46 = v64;
      }

      v47 += a3;
      v42 = 1;
LABEL_79:
      v46 += a3;
    }

    if (v50)
    {
      goto LABEL_79;
    }

LABEL_60:
    while (v46 <= v45)
    {
      v55 = *(v45 + 8);
      v56 = *(result + 8);
      v57 = v55 < v56;
      if (v55 == v56 && (v57 = *v45 < *result, *v45 == *result))
      {
        if (v8)
        {
          v58 = 0;
          if (v7)
          {
            do
            {
              v59 = *&v45[8 * v58];
              *&v45[8 * v58] = *&v44[8 * v58];
              *&v44[8 * v58++] = v59;
            }

            while (v24 != v58);
          }

          else
          {
            do
            {
              v60 = v45[v58];
              v45[v58] = v44[v58];
              v44[v58++] = v60;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v54 = *v45;
          *v45 = *v44;
          *v44 = v54;
        }

        v44 += v5;
        v42 = 1;
      }

      else if (v57)
      {
        if (v8)
        {
          v61 = 0;
          if (v7)
          {
            do
            {
              v62 = *&v46[8 * v61];
              *&v46[8 * v61] = *&v45[8 * v61];
              *&v45[8 * v61++] = v62;
            }

            while (v24 != v61);
          }

          else
          {
            do
            {
              v63 = v46[v61];
              v46[v61] = v45[v61];
              v45[v61++] = v63;
            }

            while (a3 != v61);
          }
        }

        else
        {
          v65 = *v46;
          *v46 = *v45;
          *v45 = v65;
        }

        v46 += a3;
        v45 += v5;
        v42 = 1;
        goto LABEL_46;
      }

      v45 += v5;
    }

    v66 = &result[a2 * a3];
    if (v42)
    {
      v67 = v46 - v47;
      if (v47 - result >= v46 - v47)
      {
        v68 = v46 - v47;
      }

      else
      {
        v68 = v47 - result;
      }

      if (v68)
      {
        if (v7)
        {
          v69 = &v46[-v68];
          v70 = v68 >> 3;
          v71 = result;
          do
          {
            v72 = *v71;
            *v71 = *v69;
            v71 += 8;
            *v69 = v72;
            v69 += 8;
            --v70;
          }

          while (v70);
        }

        else
        {
          v73 = -v68;
          v74 = result;
          do
          {
            v75 = *v74;
            *v74++ = v46[v73];
            v46[v73] = v75;
            v76 = __CFADD__(v73++, 1);
          }

          while (!v76);
        }
      }

      v77 = v44 - v45;
      v78 = v66 - &v44[a3];
      if (v44 - v45 < v78)
      {
        v78 = v44 - v45;
      }

      if (v78)
      {
        if (v7)
        {
          v79 = &v66[-v78];
          v80 = v78 >> 3;
          do
          {
            v81 = *v46;
            *v46 = *v79;
            v46 += 8;
            *v79 = v81;
            v79 += 8;
            --v80;
          }

          while (v80);
        }

        else
        {
          v82 = -v78;
          do
          {
            v83 = *v46;
            *v46++ = v66[v82];
            v66[v82] = v83;
            v76 = __CFADD__(v82++, 1);
          }

          while (!v76);
        }
      }

      if (v67 > a3)
      {
        result = mrec_qsort_r<MiniFst::Trace>(result, v67 / a3, a3, a4);
      }

      if (v77 > a3)
      {
        result = &v66[-v77];
        a2 = v77 / a3;
        v7 = (((v66 - v77) | a3) & 7) == 0;
        if ((((v66 - v77) | a3) & 7) != 0)
        {
          v8 = 2;
        }

        else
        {
          v8 = v6;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v110 = result;
      do
      {
        if (v43 > result)
        {
          v111 = v110;
          v112 = v43;
          do
          {
            v113 = v112;
            v112 += v5;
            v114 = *(v112 + 8);
            v115 = *(v113 + 8);
            if (v114 == v115)
            {
              if (*v112 <= *v113)
              {
                break;
              }
            }

            else if (v114 < v115)
            {
              break;
            }

            if (v8)
            {
              v116 = 0;
              if (v7)
              {
                v117 = v112;
                do
                {
                  v118 = *&v113[8 * v116];
                  *&v113[8 * v116] = *v117;
                  *v117 = v118;
                  v117 += 8;
                  ++v116;
                }

                while (v24 != v116);
              }

              else
              {
                v120 = a3;
                do
                {
                  v121 = v113[v116];
                  v113[v116] = v111[v116];
                  v111[v116++] = v121;
                  --v120;
                }

                while (v120);
              }
            }

            else
            {
              v119 = *v113;
              *v113 = *v112;
              *v112 = v119;
            }

            v111 += v5;
          }

          while (v112 > result);
        }

        v43 += a3;
        v110 += a3;
      }

      while (v43 < v66);
    }

    return result;
  }
}

uint64_t sizeObject<MiniFst::Trace>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 22 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 22 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t sizeObject<MiniFst::Token>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 18 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 18 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t AcousticNet::AcousticNet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  HmmNet::HmmNet(a1, a2, a3, a4, a5, a8);
  *v11 = &unk_287529278;
  *(v11 + 116) = a6;
  *(v11 + 120) = a7;
  PhnIndexSet::PhnIndexSet((v11 + 128), 0);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xFFFFFFF000000000;
  return a1;
}

void AcousticNet::~AcousticNet(AcousticNet *this)
{
  *this = &unk_287529278;
  BitArray::~BitArray((this + 128));

  HmmNet::~HmmNet(this);
}

uint64_t AcousticNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v3 = HmmNet::sizeObject(a1, a2);
  v4 = PhnIndexSet::sizeObject();
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (v2 == 3)
  {
    v5 = 0;
  }

  return v3 + 16 * (v2 != 3) + v4 + v5;
}

uint64_t AcousticNet::updateSilSeedTime(uint64_t this, int a2, int a3)
{
  v3 = *(this + 152);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (v3)
    {
      v5 = a3;
    }

    else
    {
      v5 = -16;
    }

    *(this + 156) = v5;
  }

  return this;
}

uint64_t AcousticNet::unpackEnd(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if ((*(*a1 + 40))(a1))
  {

    return AcousticNet::unpackEndTrace(a1, a2, a3);
  }

  else
  {
    v7 = *(*a2 + 4);
    v8 = *(a1 + 8);
    v9 = v8 + 299008;
    v10 = *(v8 + 16);
    v11 = *(*(v10 + 16) + v7);
    v12 = a2[2];
    v13 = *(v8 + 302852);
    v14 = v12;
    if (v12 > v13)
    {
      DgnPrimArray<unsigned int>::reallocElts(v8 + 302840, v12 - v13, 0);
      v14 = a2[2];
      v8 = *(a1 + 8);
    }

    v15 = v8 + 299008;
    *(v9 + 3840) = v12;
    v16 = v14 * v11;
    v17 = *(v8 + 302868);
    if (v16 > v17)
    {
      DgnPrimArray<unsigned int>::reallocElts(v8 + 302856, v16 - v17, 0);
    }

    *(v15 + 3856) = v16;
    v63 = 0;
    canLookupPic = PicMgr::canLookupPic(v10, *a2);
    v19 = *(a1 + 8);
    v20 = v19 + 37855;
    v21 = v19 + 37857;
    if (canLookupPic)
    {
      EndDuplicatesLookup = PicMgr::getEndDuplicatesLookup(v10, a2, v20, v21, (v19 + 37818), v19 + 37820);
    }

    else
    {
      EndDuplicatesLookup = PicMgr::getEndDuplicatesSearch(v10, a2, v20, v21, &v63, (v19 + 37820));
      v23 = *(a1 + 8) + 299008;
      *(v23 + 3660) = *(*(a1 + 8) + 302668) + v16;
      *(v23 + 3664) += v63;
    }

    (*(*a1 + 312))(a1, v7, EndDuplicatesLookup);
    v24 = a2[2];
    v25 = *(a1 + 8) + 299008;
    *(v25 + 3648) = *(*(a1 + 8) + 302656) + v24;
    *(v25 + 3652) += EndDuplicatesLookup;
    if (*(a1 + 52) == 2)
    {
      if (*(a1 + 40) == 3)
      {
        v24 = EndDuplicatesLookup;
      }

      (*(*a1 + 136))(a1, v24 + 1);
    }

    if (!*(a1 + 144))
    {
      (*(*a1 + 216))(a1);
    }

    v26 = *(a1 + 8);
    v27 = v26 + 74752;
    v28 = v26[75725];
    if (EndDuplicatesLookup > v28)
    {
      DgnPrimArray<unsigned long long>::reallocElts((v26 + 75722), EndDuplicatesLookup - v28, 0);
      v26 = *(a1 + 8);
    }

    v29 = v26 + 74752;
    v27[972] = EndDuplicatesLookup;
    v30 = v26[75729];
    if (EndDuplicatesLookup > v30)
    {
      DgnPrimArray<unsigned long long>::reallocElts((v26 + 75726), EndDuplicatesLookup - v30, 0);
      v26 = *(a1 + 8);
    }

    v31 = v26 + 74752;
    v29[976] = EndDuplicatesLookup;
    v32 = a2[2];
    v33 = v26[75721];
    v34 = v32;
    v35 = v32 - v33;
    if (v32 > v33)
    {
      DgnPrimArray<unsigned int>::reallocElts((v26 + 75718), v35, 0);
      v34 = a2[2];
    }

    v31[968] = v32;
    if (v34)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = (*(a1 + 8) + 299008);
        v41 = *(*(*(a1 + 8) + 302840) + 4 * v38);
        if (v38 == v41)
        {
          v42 = *a2;
          *(*(*(a1 + 8) + 302872) + 4 * v38) = v39;
          (*(*a1 + 232))(a1, v40[481] + 4 * v37, v11, v42 + v36, v40[485] + 8 * v39, v40[487] + 8 * v39, a3);
          ++v39;
        }

        else
        {
          *(*(*(a1 + 8) + 302872) + 4 * v38) = *(*(*(a1 + 8) + 302872) + 4 * v41);
        }

        ++v38;
        v37 += v11;
        v36 += 12;
      }

      while (v38 < a2[2]);
    }

    v43 = (*(*a1 + 128))(a1, v35);
    *v43 = 0x100000001;
    *(v43 + 8) = 1310740000;
    *(v43 + 12) = 0;
    *(v43 + 20) = -65536;
    if (EndDuplicatesLookup)
    {
      v44 = 0;
      do
      {
        (*(*a1 + 120))(a1, v43, *(*(*(a1 + 8) + 302888) + v44));
        v44 += 8;
      }

      while (8 * EndDuplicatesLookup != v44);
    }

    v45 = (*(*a1 + 192))(a1);
    v46 = *(a1 + 96);
    if (*(a1 + 40) == 4)
    {
      if (*(a1 + 96))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          if ((*(*v45 + 4 * (v47 >> 5)) >> v47))
          {
            *(*(a1 + 88) + v47) = ++v48;
          }

          ++v47;
        }

        while (v46 != v47);
      }

      v49 = *(a1 + 80);
      if (v49 >= 2)
      {
        v50 = 0;
        do
        {
          v51 = *(*(*(a1 + 8) + 302904) + 8 * *(*(*(a1 + 8) + 302872) + 4 * v50));
          v52 = *(a1 + 72);
          v53 = (v50 + 1);
          if (*(a1 + 52))
          {
            *(v52 + 8 * v53) = v51;
          }

          else
          {
            PredStruct::addPred((*(v52 + 8 * v53) + 16), v51);
            v49 = *(a1 + 80);
          }

          v54 = v50 + 2;
          ++v50;
        }

        while (v54 < v49);
      }
    }

    else
    {
      if (*(a1 + 96))
      {
        v55 = 0;
        v56 = 0;
        do
        {
          if ((*(*v45 + 4 * (v55 >> 5)) >> v55))
          {
            *(*(a1 + 88) + v55) = *(*(*(a1 + 8) + 302872) + 4 * v56++) + 1;
          }

          ++v55;
        }

        while (v46 != v55);
      }

      v57 = *(a1 + 80);
      if (v57 >= 2)
      {
        v58 = 0;
        do
        {
          v59 = *(*(*(a1 + 8) + 302904) + 8 * v58);
          v60 = *(a1 + 72);
          v61 = (v58 + 1);
          if (*(a1 + 52))
          {
            *(v60 + 8 * v61) = v59;
          }

          else
          {
            PredStruct::addPred((*(v60 + 8 * v61) + 16), v59);
            v57 = *(a1 + 80);
          }

          v62 = v58 + 2;
          ++v58;
        }

        while (v62 < v57);
      }
    }

    (*(*a1 + 120))(a1, **(*(a1 + 8) + 302904), *(a1 + 144));
    return v43;
  }
}

uint64_t AcousticNet::unpackEndTrace(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  (*(*a1 + 312))(a1, *(*a2 + 4), a2[2]);
  if (*(a1 + 13) == 2)
  {
    (*(*a1 + 136))(a1, a2[2] + 1);
  }

  if (!a1[18])
  {
    (*(*a1 + 216))(a1);
  }

  v6 = a1[1];
  v7 = v6 + 74752;
  v8 = a2[2];
  v9 = v6[75725];
  v10 = v8;
  if (v8 > v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts((v6 + 75722), v8 - v9, 0);
    v6 = a1[1];
    v10 = a2[2];
  }

  v11 = v6 + 74752;
  v7[972] = v8;
  v12 = v6[75729];
  if (v10 <= v12)
  {
    v13 = v10;
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts((v6 + 75726), v10 - v12, 0);
    v6 = a1[1];
    v13 = a2[2];
  }

  v14 = v6 + 74752;
  v11[976] = v10;
  v15 = v6[75721];
  v16 = v13;
  v17 = v13 - v15;
  if (v13 > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts((v6 + 75718), v17, 0);
    v16 = a2[2];
  }

  v14[968] = v13;
  if (v16)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *a1;
      v22 = a1[1] + 299008;
      *(*(a1[1] + 302872) + 4 * v20) = v20;
      (*(v21 + 224))(a1, *a2 + v19, *(v22 + 3880) + v18, *(v22 + 3896) + v18, a3);
      ++v20;
      v19 += 12;
      v18 += 8;
    }

    while (v20 < a2[2]);
  }

  v23 = (*(*a1 + 128))(a1, v17);
  *v23 = 0x100000001;
  *(v23 + 8) = 1310740000;
  *(v23 + 12) = 0;
  *(v23 + 20) = -65536;
  if (a2[2])
  {
    v24 = 0;
    do
    {
      (*(*a1 + 120))(a1, v23, *(*(a1[1] + 302888) + 8 * v24++));
    }

    while (v24 < a2[2]);
  }

  v25 = (*(*a1 + 192))(a1);
  v26 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      if ((*(*v25 + 4 * (v27 >> 5)) >> v27))
      {
        *(a1[11] + v27) = ++v28;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  v29 = *(a1 + 20);
  if (v29 >= 2)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a1[1] + 302904) + 8 * v30);
      v32 = a1[9];
      v33 = (v30 + 1);
      if (*(a1 + 13))
      {
        *(v32 + 8 * v33) = v31;
      }

      else
      {
        PredStruct::addPred((*(v32 + 8 * v33) + 16), v31);
        v29 = *(a1 + 20);
      }

      v34 = v30 + 2;
      ++v30;
    }

    while (v34 < v29);
  }

  (*(*a1 + 120))(a1, **(a1[1] + 302904), a1[18]);
  return v23;
}

uint64_t AcousticNet::estimateActivePelsThisFrame(uint64_t this, BitArray *a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    *(*a2 + ((*(v2 + 22) >> 3) & 0x1FFC)) |= 1 << *(v2 + 22);
  }

  return this;
}

void MrecInitModule_recog_kernel(void)
{
  if (!gParDebugShowNetNodeStatsPerFrame)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowNetNodeStatsPerFrame", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowNetNodeStatsPerFrame = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowNetNodeStatsPerFrame);
  }

  if (!gParDebugShowNetNodeStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowNetNodeStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowNetNodeStats = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowNetNodeStats);
  }

  if (!gParDebugRecognitionWatchTheseWords)
  {
    v4 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v4, "DebugRecognitionWatchTheseWords", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v5 = &unk_287526E40;
    gParDebugRecognitionWatchTheseWords = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecognitionWatchTheseWords);
  }

  if (!gParDiagnosticFrameSpecificCommand)
  {
    v6 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v6, "DiagnosticFrameSpecificCommand", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v7 = &unk_287526E40;
    gParDiagnosticFrameSpecificCommand = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticFrameSpecificCommand);
  }

  if (!gParDebugAbortRecognition)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugAbortRecognition", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugAbortRecognition = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAbortRecognition);
  }

  if (!gParDebugRecognitionWatchAllActiveWords)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugRecognitionWatchAllActiveWords", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugRecognitionWatchAllActiveWords = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecognitionWatchAllActiveWords);
  }

  if (!gParDebugShowActiveWords)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugShowActiveWords", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugShowActiveWords = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowActiveWords);
  }

  if (!gParDebugShowActiveStats)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DebugShowActiveStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDebugShowActiveStats = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowActiveStats);
  }

  if (!gParDebugShowFinalActiveStats)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "DebugShowFinalActiveStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParDebugShowFinalActiveStats = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowFinalActiveStats);
  }

  if (!gParDebugShowPerFrameRecognitionStats)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "DebugShowPerFrameRecognitionStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParDebugShowPerFrameRecognitionStats = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPerFrameRecognitionStats);
  }

  if (!gParDebugPartialFinalResults)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "DebugPartialFinalResults", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParDebugPartialFinalResults = v21;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPartialFinalResults);
  }

  if (!gParDiagnosticSearchRecognitionNetType)
  {
    v22 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v29, &sDiagnosticSearchRecognitionNetTypeEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v22, "DiagnosticSearchRecognitionNetType", &byte_262899963, &byte_262899963, 1u, &v29, 0);
    v22->n128_u64[0] = &unk_287527B80;
    gParDiagnosticSearchRecognitionNetType = v22;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticSearchRecognitionNetType);
  }

  if (!gParDebugSeeding)
  {
    v23 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v23, "DebugSeeding", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v24 = &unk_287527EA0;
    gParDebugSeeding = v24;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSeeding);
  }

  if (!gParDebugPrefiltererDeactivation)
  {
    v25 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v25, "DebugPrefiltererDeactivation", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v26 = &unk_287527EA0;
    gParDebugPrefiltererDeactivation = v26;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPrefiltererDeactivation);
  }

  if (!gParDebugShowPartialResults)
  {
    v27 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v27, "DebugShowPartialResults", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v28 = &unk_287527EA0;
    gParDebugShowPartialResults = v28;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPartialResults);
  }
}

double GermRecogGermIterator::getCurrentGermInternal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (**(a1 + 40) + 8 * v2);
  *a2 = *v3;
  *(a2 + 4) = 0x3FFF;
  *(a2 + 8) = xmmword_26286CC40;
  *(a2 + 24) = 0;
  *(a2 + 26) = 0;
  result = 3.10503915e231;
  *(a2 + 32) = 0x70000000FFFFFFFELL;
  *(a2 + 40) = v2;
  *(a2 + 28) = v3[1];
  return result;
}

uint64_t GermRecogGermIterator::advanceUntilMatch(uint64_t this)
{
  if (*(this + 32))
  {
    v2 = *(this + 8);
    v1 = *(this + 12);
    if (v2 != v1)
    {
      v3 = **(this + 40);
      v4 = *(this + 16);
      do
      {
        v5 = *(v3 + 8 * v2);
        if (v4 == v5 >> 25)
        {
          v6 = *(this + 24);
          if (v5 & 0xFFFFFF) < *(v6 + 8) && ((*(*v6 + (((*&v5 & 0xFFFFFFuLL) >> 3) & 0x1FFFFC)) >> v5))
          {
            break;
          }
        }

        *(this + 8) = ++v2;
      }

      while (v1 != v2);
    }
  }

  return this;
}

uint64_t RecognizerOptions::RecognizerOptions(uint64_t a1, char a2, int a3, int a4, int a5, char a6, char a7, int a8, double a9, __int128 a10, int a11, int a12, __int128 a13, __int128 a14, uint64_t a15, int a16, char a17, __int128 a18, __int128 a19, char a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, int a27, char a28, char a29, char a30, char a31, char a32, char a33, int a34, uint64_t a35, uint64_t a36, int a37, char a38, __int128 a39, int a40, int a41)
{
  *a1 = a2;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 17) = a7;
  *(a1 + 20) = a8;
  *(a1 + 40) = a11;
  *(a1 + 80) = a15;
  *(a1 + 88) = a16;
  *(a1 + 92) = a17;
  *(a1 + 136) = a20;
  *(a1 + 137) = a21;
  *(a1 + 138) = a22;
  *(a1 + 139) = a23;
  *(a1 + 140) = a24;
  *(a1 + 141) = a25;
  *(a1 + 144) = a26;
  *(a1 + 152) = a27;
  *(a1 + 156) = a28;
  *(a1 + 157) = a29;
  *(a1 + 158) = a30;
  *(a1 + 159) = a31;
  *(a1 + 160) = a32;
  *(a1 + 161) = a33;
  *(a1 + 164) = a34;
  *(a1 + 168) = a35;
  *(a1 + 188) = a38;
  *(a1 + 208) = a40;
  *(a1 + 212) = a41;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 24) = a10;
  *(a1 + 44) = a12;
  *(a1 + 48) = a13;
  *(a1 + 64) = a14;
  *(a1 + 96) = a9;
  *(a1 + 104) = a18;
  *(a1 + 120) = a19;
  *(a1 + 172) = *(&a35 + 4);
  *(a1 + 192) = a39;
  if (a12 != -1 && a4 + a3 - a12 < 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 733, "kernel/recog", 5, "%d %d %d %d", a4 + a3 - a12, a3, a4, a12);
  }

  v42 = *(a1 + 4);
  v43 = *(a1 + 8);
  v44 = v43 + v42;
  v45 = *(a1 + 32);
  if (v43 + v42 - v45 < 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 744, "kernel/recog", 6, "%d %d %d %d", v44 - v45, v42, *(a1 + 8), v45);
    v42 = *(a1 + 4);
    v43 = *(a1 + 8);
    v44 = v43 + v42;
  }

  v46 = *(a1 + 36);
  v47 = v44 - v46;
  if (v47 < 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 756, "kernel/recog", 7, "%d %d %d %d", v47, v42, v43, v46);
  }

  return a1;
}

{

  return RecognizerOptions::RecognizerOptions(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

double RecognizerOptions::RecognizerOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 192) = *(a2 + 192);
  result = *(a2 + 208);
  *(a1 + 208) = result;
  return result;
}

uint64_t SearchStats::resetStats(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double SearchStats::operator=(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

int32x2_t SearchStats::operator-=(int32x2_t *a1, int32x2_t *a2)
{
  result = vsub_s32(*a1, *a2);
  *a1 = result;
  a1[1].i32[0] -= a2[1].i32[0];
  *&a1[2] -= *&a2[2];
  a1[3].i32[0] -= a2[3].i32[0];
  return result;
}

uint64_t Recognizer::Recognizer(uint64_t a1, char a2, int a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a1 = &unk_2875295E0;
  RecognizerOptions::RecognizerOptions(a1 + 8, a8);
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a5;
  *(a1 + 264) = a6;
  if (a3 == 3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  *(a1 + 288) = v19;
  *(a1 + 304) = a2;
  *(a1 + 308) = -16;
  *(a1 + 312) = a3;
  *(a1 + 316) = 0xFFFFFFF0FFFFFFF0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 348) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  MergedActive::MergedActive((a1 + 392));
  *(a1 + 528) = a4;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 0xF0000000FLL;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  SearchLMScorer::SearchLMScorer(a1 + 624, *(a1 + 172), *(a1 + 176), *(a1 + 180), *(a1 + 184), *(a1 + 167), a9, a10, a11, a12);
  *(a1 + 832) = 0x3FFFFCFFFFFDLL;
  *(a1 + 840) = xmmword_26286CC40;
  *(a1 + 856) = 0;
  *(a1 + 858) = 1310720000;
  *(a1 + 862) = 0;
  *(a1 + 864) = 0x70000000FFFFFFFELL;
  *(a1 + 872) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  PelStats::resetStats((a1 + 880));
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  LMStats::resetStats((a1 + 1056));
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  PelStats::resetStats((a1 + 1240));
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1472) = 0u;
  LMStats::resetStats((a1 + 1416));
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  LatticeStats::LatticeStats((a1 + 1616));
  *(a1 + 2224) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2264) = 0x3FFF;
  *(a1 + 2268) = xmmword_26286CC40;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  v20 = *(a1 + 304);
  if (*(a1 + 304))
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 2344) = 0uLL;
  if (v20 && (a7 & 1) == 0)
  {
    v21 = *(gParDiagnosticSearchRecognitionNetType + 44);
  }

  v22 = MemChunkAlloc(0x4A098uLL, 0);
  v23 = *(a1 + 312);
  v29 = *(a1 + 288);
  v24 = Active::Active(v22, v23, &v29, v21, *(a1 + 264));
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = v24;
  *(a1 + 360) = 0;
  v25 = *(*VocMgr::smpVocMgr + 8);
  if (*(a1 + 564) >= v25)
  {
    *(a1 + 560) = v25;
    if (!v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v30 = 0;
    *(a1 + 564) = realloc_array(*(a1 + 552), &v30, v25, *(a1 + 560), *(a1 + 560), 1);
    *(a1 + 552) = v30;
    *(a1 + 560) = v25;
  }

  bzero(*(a1 + 552), v25);
LABEL_14:
  *(a1 + 1608) = 0;
  *(a1 + 368) = 0;
  *(a1 + 2240) = 0;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0;
  *(a1 + 2340) = 0;
  *(a1 + 2308) = 0u;
  *(a1 + 2324) = 0u;
  *(a1 + 2244) = 0x4E20FFFFFFFELL;
  *(a1 + 2252) = 0;
  *(a1 + 2256) = 0xFAFFFFFFFFFFFFF0;
  *(a1 + 2264) = 0x3FFF;
  *(a1 + 2268) = xmmword_26286CC40;
  if (*(a1 + 312) != 3)
  {
    v26 = MemChunkAlloc(0x38uLL, 0);
    CWIDCrumbBank::CWIDCrumbBank(v26, *(a1 + 280) + 72);
    *(a1 + 368) = v27;
  }

  SearchLMScorer::setRecognizer(a1 + 624, a1);
  return a1;
}

void sub_2627AF77C(_Unwind_Exception *a1)
{
  SearchLMScorer::~SearchLMScorer((v1 + 624));
  DgnIArray<Utterance *>::~DgnIArray(v1 + 584);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 568);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  MergedActive::~MergedActive((v2 + 168));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void MergedActive::~MergedActive(MergedActive *this)
{
  *(this + 4) = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 80);
  BitArray::~BitArray((this + 64));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnIArray<Utterance *>::~DgnIArray(this + 8);
}

void Recognizer::~Recognizer(Recognizer *this)
{
  *this = &unk_2875295E0;
  DgnDelete<Active>(*(this + 35));
  DgnDelete<PelScoreCacheData>(*(this + 37));
  DgnDelete<CWIDCrumbBank>(*(this + 46));
  DgnDelete<Constraint>(*(this + 277));
  DgnDelete<RecogGermIterator>(*(this + 47));
  DgnDelete<RecogGermIterator>(*(this + 48));
  DgnIArray<Utterance *>::~DgnIArray(this + 2376);
  DgnIArray<Utterance *>::~DgnIArray(this + 2360);
  DgnIArray<Utterance *>::~DgnIArray(this + 2344);
  DgnIArray<Utterance *>::~DgnIArray(this + 2288);
  DgnIArray<Utterance *>::~DgnIArray(this + 2224);
  SearchLMScorer::~SearchLMScorer((this + 624));
  DgnIArray<Utterance *>::~DgnIArray(this + 584);
  DgnIArray<Utterance *>::~DgnIArray(this + 568);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 536);
  MergedActive::~MergedActive((this + 392));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
}

{
  Recognizer::~Recognizer(this);

  JUMPOUT(0x26672B1B0);
}

void *DgnDelete<Active>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnIArray<Utterance *>::~DgnIArray((result + 37905));
    HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV((v1 + 37892));
    Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash((v1 + 37878));
    ActiveWordMgr::~ActiveWordMgr((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<CWIDCrumbBank>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void Recognizer::printSize(Recognizer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1154);
  if (v256)
  {
    v13 = v255;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v255);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = (a3 + 1);
  v252 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1155);
  if (v256)
  {
    v18 = v255;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, &byte_262899963, v16, v16, v18, 171, 171, 0);
  DgnString::~DgnString(&v255);
  *a4 += 171;
  *a5 += 171;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 12;
  }

  else
  {
    v19 = 16;
  }

  v20 = *(this + 58);
  v21 = *(this + 59);
  if (v21 >= v20)
  {
    v22 = 0;
    if (v20 > 0)
    {
      v19 += 4 * (v20 - 1) + 4;
    }

    v23 = v19 + 4 * (v21 - v20);
  }

  else
  {
    v22 = 4 * v20;
    v23 = v19;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1157);
  if (v256)
  {
    v25 = v255;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &byte_262899963, v16, v16, v25, v23, v19, v22);
  DgnString::~DgnString(&v255);
  *a4 += v23;
  *a5 += v19;
  *a6 += v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 12;
  }

  else
  {
    v26 = 16;
  }

  v27 = *(this + 62);
  v28 = *(this + 63);
  if (v28 >= v27)
  {
    v29 = 0;
    if (v27 > 0)
    {
      v26 += 4 * (v27 - 1) + 4;
    }

    v30 = v26 + 4 * (v28 - v27);
  }

  else
  {
    v29 = 4 * v27;
    v30 = v26;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1159);
  if (v256)
  {
    v32 = v255;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &byte_262899963, v16, v16, v32, v30, v26, v29);
  DgnString::~DgnString(&v255);
  *a4 += v30;
  *a5 += v26;
  *a6 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1160);
  if (v256)
  {
    v35 = v255;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &byte_262899963, v16, v16, v35, v33, v33, 0);
  DgnString::~DgnString(&v255);
  *a4 += v33;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 4;
  }

  else
  {
    v36 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1161);
  if (v256)
  {
    v38 = v255;
  }

  else
  {
    v38 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &byte_262899963, v16, v16, v38, v36, v36, 0);
  DgnString::~DgnString(&v255);
  *a4 += v36;
  *a5 += v36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1162);
  if (v256)
  {
    v41 = v255;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &byte_262899963, v16, v16, v41, v39, v39, 0);
  DgnString::~DgnString(&v255);
  *a4 += v39;
  *a5 += v39;
  v42 = *(this + 35);
  if (v42)
  {
    v254 = 0;
    v255 = 0;
    v253 = 0;
    Active::printSize(v42, 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
    *a4 += v255;
    *a5 += v254;
    *a6 += v253;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 4;
  }

  else
  {
    v43 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1163);
  if (v256)
  {
    v45 = v255;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &byte_262899963, v16, v16, v45, v43, v43, 0);
  DgnString::~DgnString(&v255);
  *a4 += v43;
  *a5 += v43;
  v46 = sizeObject(this + 288, 0);
  v47 = sizeObject(this + 288, 1);
  v48 = sizeObject(this + 288, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1164);
  if (v256)
  {
    v50 = v255;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v15, &byte_262899963, v16, v16, v50, v46, v47, v48);
  DgnString::~DgnString(&v255);
  *a4 += v46;
  *a5 += v47;
  *a6 += v48;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 4;
  }

  else
  {
    v51 = 8;
  }

  v52 = *(this + 37);
  if (v52)
  {
    v53 = sizeObject(v52, 0) + v51;
    v54 = *(this + 37);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v51 = 4;
    }

    else
    {
      v51 = 8;
    }

    if (v54 && (v51 += sizeObject(v54, 1), (v55 = *(this + 37)) != 0))
    {
      v56 = sizeObject(v55, 3);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
    v53 = v51;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1166);
  if (v256)
  {
    v58 = v255;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &byte_262899963, v16, v16, v58, v53, v51, v56);
  DgnString::~DgnString(&v255);
  *a4 += v53;
  *a5 += v51;
  *a6 += v56;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1167);
  if (v256)
  {
    v60 = v255;
  }

  else
  {
    v60 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v15, &byte_262899963, v16, v16, v60, 1, 1, 0);
  DgnString::~DgnString(&v255);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1169);
  if (v256)
  {
    v62 = v255;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &byte_262899963, v16, v16, v62, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1170);
  if (v256)
  {
    v64 = v255;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v15, &byte_262899963, v16, v16, v64, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1172);
  if (v256)
  {
    v66 = v255;
  }

  else
  {
    v66 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v15, &byte_262899963, v16, v16, v66, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1174);
  if (v256)
  {
    v68 = v255;
  }

  else
  {
    v68 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v15, &byte_262899963, v16, v16, v68, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1176);
  if (v256)
  {
    v70 = v255;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v15, &byte_262899963, v16, v16, v70, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1177);
  if (v256)
  {
    v72 = v255;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &byte_262899963, v16, v16, v72, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1179);
  if (v256)
  {
    v74 = v255;
  }

  else
  {
    v74 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v15, &byte_262899963, v16, v16, v74, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1180);
  if (v256)
  {
    v76 = v255;
  }

  else
  {
    v76 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, &byte_262899963, v16, v16, v76, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1181);
  if (v256)
  {
    v78 = v255;
  }

  else
  {
    v78 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v15, &byte_262899963, v16, v16, v78, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1183);
  if (v256)
  {
    v80 = v255;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v15, &byte_262899963, v16, v16, v80, 1, 1, 0);
  DgnString::~DgnString(&v255);
  ++*a4;
  ++*a5;
  v81 = *(this + 46);
  if (v81)
  {
    v254 = 0;
    v255 = 0;
    v253 = 0;
    CWIDCrumbBank::printSize(v81, 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
    *a4 += v255;
    *a5 += v254;
    *a6 += v253;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 4;
  }

  else
  {
    v82 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1195);
  if (v256)
  {
    v84 = v255;
  }

  else
  {
    v84 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v15, &byte_262899963, v16, v16, v84, v82, v82, 0);
  DgnString::~DgnString(&v255);
  *a4 += v82;
  *a5 += v82;
  v85 = *(this + 47);
  if (v85)
  {
    v254 = 0;
    v255 = 0;
    v253 = 0;
    RecogGermIterator::printSize(v85, 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
    *a4 += v255;
    *a5 += v254;
    *a6 += v253;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v86 = 4;
  }

  else
  {
    v86 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1196);
  if (v256)
  {
    v88 = v255;
  }

  else
  {
    v88 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, &byte_262899963, v16, v16, v88, v86, v86, 0);
  DgnString::~DgnString(&v255);
  *a4 += v86;
  *a5 += v86;
  v89 = *(this + 48);
  if (v89)
  {
    v254 = 0;
    v255 = 0;
    v253 = 0;
    RecogGermIterator::printSize(v89, 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
    *a4 += v255;
    *a5 += v254;
    *a6 += v253;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 4;
  }

  else
  {
    v90 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1198);
  if (v256)
  {
    v92 = v255;
  }

  else
  {
    v92 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v15, &byte_262899963, v16, v16, v92, v90, v90, 0);
  DgnString::~DgnString(&v255);
  *a4 += v90;
  *a5 += v90;
  v93 = sizeObject(this + 392, 0);
  v94 = sizeObject(this + 392, 1);
  v95 = sizeObject(this + 392, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1200);
  if (v256)
  {
    v97 = v255;
  }

  else
  {
    v97 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v15, &byte_262899963, v16, v16, v97, v93, v94, v95);
  DgnString::~DgnString(&v255);
  *a4 += v93;
  *a5 += v94;
  *a6 += v95;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1202);
  if (v256)
  {
    v99 = v255;
  }

  else
  {
    v99 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v15, &byte_262899963, v16, v16, v99, 2, 2, 0);
  DgnString::~DgnString(&v255);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v100 = 12;
  }

  else
  {
    v100 = 16;
  }

  v101 = *(this + 136);
  v102 = *(this + 137);
  if (v102 >= v101)
  {
    v103 = 0;
    if (v101 > 0)
    {
      v100 += 2 * (v101 - 1) + 2;
    }

    v104 = v100 + 2 * (v102 - v101);
  }

  else
  {
    v103 = 2 * v101;
    v104 = v100;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1204);
  if (v256)
  {
    v106 = v255;
  }

  else
  {
    v106 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v15, &byte_262899963, v16, v16, v106, v104, v100, v103);
  DgnString::~DgnString(&v255);
  *a4 += v104;
  *a5 += v100;
  *a6 += v103;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v107 = 12;
  }

  else
  {
    v107 = 16;
  }

  v108 = *(this + 140);
  v109 = *(this + 141);
  v110 = v109 >= v108;
  v111 = v109 - v108;
  if (v110)
  {
    if (v108 > 0)
    {
      v112 = (v108 - 1) + v107 + 1;
    }

    else
    {
      v112 = v107;
    }

    v107 = v112 + v111;
    v108 = 0;
  }

  else
  {
    v112 = v107;
  }

  v113 = v108;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1206);
  if (v256)
  {
    v115 = v255;
  }

  else
  {
    v115 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v15, &byte_262899963, v16, v16, v115, v107, v112, v113);
  DgnString::~DgnString(&v255);
  *a4 += v107;
  *a5 += v112;
  *a6 += v113;
  v116 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 12;
  }

  v117 = *(this + 144);
  v118 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v118 = 3;
  }

  v119 = (((*(this + 145) - v117) + v117) << v118) + v116;
  v120 = (v117 << v118) + v116;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1208);
  if (v256)
  {
    v122 = v255;
  }

  else
  {
    v122 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v15, &byte_262899963, v16, v16, v122, v119, v120, 0);
  DgnString::~DgnString(&v255);
  *a4 += v119;
  *a5 += v120;
  v123 = sizeObject<RecogGerm>(this + 584, 0);
  v124 = sizeObject<RecogGerm>(this + 584, 1);
  v255 = 0x3FFFFAFFFFFFLL;
  v256 = xmmword_26286CC40;
  v257 = 0;
  v258 = 1310720000;
  v259 = 0;
  v260 = 0x70000000FFFFFFFELL;
  sizeObject(&v255, 2);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1209);
  if (v256)
  {
    v126 = v255;
  }

  else
  {
    v126 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v15, &byte_262899963, v16, v16, v126, v123, v124, 0);
  DgnString::~DgnString(&v255);
  *a4 += v123;
  *a5 += v124;
  v127 = sizeObject(this + 616, 0) + 17;
  v128 = sizeObject(this + 616, 1) + 17;
  v129 = sizeObject(this + 616, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1210);
  if (v256)
  {
    v131 = v255;
  }

  else
  {
    v131 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v15, &byte_262899963, v16, v16, v131, v127, v128, v129);
  DgnString::~DgnString(&v255);
  *a4 += v127;
  *a5 += v128;
  *a6 += v129;
  v254 = 0;
  v255 = 0;
  v253 = 0;
  SearchLMScorer::printSize((this + 624), 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
  *a4 += v255;
  *a5 += v254;
  *a6 += v253;
  v132 = sizeObject(this + 832, 0);
  v133 = sizeObject(this + 832, 1);
  v134 = sizeObject(this + 832, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1213);
  if (v256)
  {
    v136 = v255;
  }

  else
  {
    v136 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v15, &byte_262899963, v16, v16, v136, v132, v133, v134);
  DgnString::~DgnString(&v255);
  *a4 += v132;
  *a5 += v133;
  *a6 += v134;
  v137 = PelStats::sizeObject(this + 880, 0);
  v138 = PelStats::sizeObject(this + 880, 1);
  v139 = PelStats::sizeObject(this + 880, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1215);
  if (v256)
  {
    v141 = v255;
  }

  else
  {
    v141 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v15, &byte_262899963, v16, v16, v141, v137, v138, v139);
  DgnString::~DgnString(&v255);
  *a4 += v137;
  *a5 += v138;
  *a6 += v139;
  v142 = LMStats::sizeObject(this + 1056, 0);
  v143 = LMStats::sizeObject(this + 1056, 1);
  v144 = LMStats::sizeObject(this + 1056, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1216);
  if (v256)
  {
    v146 = v255;
  }

  else
  {
    v146 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v15, &byte_262899963, v16, v16, v146, v142, v143, v144);
  DgnString::~DgnString(&v255);
  *a4 += v142;
  *a5 += v143;
  *a6 += v144;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1217);
  if (v256)
  {
    v148 = v255;
  }

  else
  {
    v148 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v15, &byte_262899963, v16, v16, v148, 24, 24, 0);
  DgnString::~DgnString(&v255);
  *a4 += 24;
  *a5 += 24;
  v149 = PelStats::sizeObject(this + 1240, 0);
  v150 = PelStats::sizeObject(this + 1240, 1);
  v151 = PelStats::sizeObject(this + 1240, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1219);
  if (v256)
  {
    v153 = v255;
  }

  else
  {
    v153 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v152, v15, &byte_262899963, v16, v16, v153, v149, v150, v151);
  DgnString::~DgnString(&v255);
  *a4 += v149;
  *a5 += v150;
  *a6 += v151;
  v154 = LMStats::sizeObject(this + 1416, 0);
  v155 = LMStats::sizeObject(this + 1416, 1);
  v156 = LMStats::sizeObject(this + 1416, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1221);
  if (v256)
  {
    v158 = v255;
  }

  else
  {
    v158 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v157, v15, &byte_262899963, v16, v16, v158, v154, v155, v156);
  DgnString::~DgnString(&v255);
  *a4 += v154;
  *a5 += v155;
  *a6 += v156;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1223);
  if (v256)
  {
    v160 = v255;
  }

  else
  {
    v160 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v15, &byte_262899963, v16, v16, v160, 24, 24, 0);
  DgnString::~DgnString(&v255);
  *a4 += 24;
  *a5 += 24;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1226);
  if (v256)
  {
    v162 = v255;
  }

  else
  {
    v162 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v161, v15, &byte_262899963, v16, v16, v162, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1249);
  if (v256)
  {
    v164 = v255;
  }

  else
  {
    v164 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v15, &byte_262899963, v16, v16, v164, 8, 8, 0);
  DgnString::~DgnString(&v255);
  *a4 += 8;
  *a5 += 8;
  v165 = LatticeStats::sizeObject(this + 1616, 0);
  v166 = LatticeStats::sizeObject(this + 1616, 1);
  v167 = LatticeStats::sizeObject(this + 1616, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1251);
  if (v256)
  {
    v169 = v255;
  }

  else
  {
    v169 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v168, v15, &byte_262899963, v16, v16, v169, v165, v166, v167);
  DgnString::~DgnString(&v255);
  *a4 += v165;
  *a5 += v166;
  *a6 += v167;
  v170 = SnapTime::sizeObject(this + 2024, 0);
  v171 = SnapTime::sizeObject(this + 2024, 1);
  v172 = SnapTime::sizeObject(this + 2024, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1253);
  if (v256)
  {
    v174 = v255;
  }

  else
  {
    v174 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v15, &byte_262899963, v16, v16, v174, v170, v171, v172);
  DgnString::~DgnString(&v255);
  *a4 += v170;
  *a5 += v171;
  *a6 += v172;
  v175 = SnapTime::sizeObject(this + 2056, 0);
  v176 = SnapTime::sizeObject(this + 2056, 1);
  v177 = SnapTime::sizeObject(this + 2056, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1255);
  if (v256)
  {
    v179 = v255;
  }

  else
  {
    v179 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v15, &byte_262899963, v16, v16, v179, v175, v176, v177);
  DgnString::~DgnString(&v255);
  *a4 += v175;
  *a5 += v176;
  *a6 += v177;
  v180 = SnapTime::sizeObject(this + 2088, 0);
  v181 = SnapTime::sizeObject(this + 2088, 1);
  v182 = SnapTime::sizeObject(this + 2088, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1257);
  if (v256)
  {
    v184 = v255;
  }

  else
  {
    v184 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v15, &byte_262899963, v16, v16, v184, v180, v181, v182);
  DgnString::~DgnString(&v255);
  *a4 += v180;
  *a5 += v181;
  *a6 += v182;
  v185 = SnapTime::sizeObject(this + 2120, 0);
  v186 = SnapTime::sizeObject(this + 2120, 1);
  v187 = SnapTime::sizeObject(this + 2120, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1259);
  if (v256)
  {
    v189 = v255;
  }

  else
  {
    v189 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v188, v15, &byte_262899963, v16, v16, v189, v185, v186, v187);
  DgnString::~DgnString(&v255);
  *a4 += v185;
  *a5 += v186;
  *a6 += v187;
  v190 = SnapTime::sizeObject(this + 2152, 0);
  v191 = SnapTime::sizeObject(this + 2152, 1);
  v192 = SnapTime::sizeObject(this + 2152, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1261);
  if (v256)
  {
    v194 = v255;
  }

  else
  {
    v194 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v193, v15, &byte_262899963, v16, v16, v194, v190, v191, v192);
  DgnString::~DgnString(&v255);
  *a4 += v190;
  *a5 += v191;
  *a6 += v192;
  v195 = SnapTime::sizeObject(this + 2184, 0);
  v196 = SnapTime::sizeObject(this + 2184, 1);
  v197 = SnapTime::sizeObject(this + 2184, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1263);
  if (v256)
  {
    v199 = v255;
  }

  else
  {
    v199 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v15, &byte_262899963, v16, v16, v199, v195, v196, v197);
  DgnString::~DgnString(&v255);
  *a4 += v195;
  *a5 += v196;
  *a6 += v197;
  v200 = *(this + 277);
  if (v200)
  {
    v254 = 0;
    v255 = 0;
    v253 = 0;
    Constraint::printSize(v200, 0xFFFFFFFFLL, v15, &v255, &v254, &v253);
    *a4 += v255;
    *a5 += v254;
    *a6 += v253;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v201 = 4;
  }

  else
  {
    v201 = 8;
  }

  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1265);
  if (v256)
  {
    v203 = v255;
  }

  else
  {
    v203 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v202, v15, &byte_262899963, v16, v16, v203, v201, v201, 0);
  DgnString::~DgnString(&v255);
  *a4 += v201;
  *a5 += v201;
  v204 = sizeObject<CWIDAC>(this + 2224, 0);
  v205 = sizeObject<CWIDAC>(this + 2224, 1);
  HIDWORD(v255) = 0x3FFF;
  v256 = xmmword_26286CC40;
  sizeObject(&v255, 2);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1267);
  if (v256)
  {
    v207 = v255;
  }

  else
  {
    v207 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v15, &byte_262899963, v16, v16, v207, v204, v205, 0);
  DgnString::~DgnString(&v255);
  *a4 += v204;
  *a5 += v205;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1269);
  if (v256)
  {
    v209 = v255;
  }

  else
  {
    v209 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v15, &byte_262899963, v16, v16, v209, 1, 1, 0);
  DgnString::~DgnString(&v255);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1271);
  if (v256)
  {
    v211 = v255;
  }

  else
  {
    v211 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v210, v15, &byte_262899963, v16, v16, v211, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1273);
  if (v256)
  {
    v213 = v255;
  }

  else
  {
    v213 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v212, v15, &byte_262899963, v16, v16, v213, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1275);
  if (v256)
  {
    v215 = v255;
  }

  else
  {
    v215 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v214, v15, &byte_262899963, v16, v16, v215, 1, 1, 0);
  DgnString::~DgnString(&v255);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1277);
  if (v256)
  {
    v217 = v255;
  }

  else
  {
    v217 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v15, &byte_262899963, v16, v16, v217, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  v218 = sizeObject(this + 2260, 0);
  v219 = sizeObject(this + 2260, 1);
  v220 = sizeObject(this + 2260, 3);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1279);
  if (v256)
  {
    v222 = v255;
  }

  else
  {
    v222 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v221, v15, &byte_262899963, v16, v16, v222, v218, v219, v220);
  DgnString::~DgnString(&v255);
  *a4 += v218;
  *a5 += v219;
  *a6 += v220;
  v223 = sizeObject<HistoryAndBigScore>(this + 2288, 0);
  v224 = sizeObject<HistoryAndBigScore>(this + 2288, 1);
  v255 = 0x70000000FFFFFFFELL;
  LODWORD(v256) = 1879048192;
  sizeObject(&v255, 2);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1281);
  if (v256)
  {
    v226 = v255;
  }

  else
  {
    v226 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v15, &byte_262899963, v16, v16, v226, v223, v224, 0);
  DgnString::~DgnString(&v255);
  *a4 += v223;
  *a5 += v224;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1282);
  if (v256)
  {
    v228 = v255;
  }

  else
  {
    v228 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v227, v15, &byte_262899963, v16, v16, v228, 1, 1, 0);
  DgnString::~DgnString(&v255);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1284);
  if (v256)
  {
    v230 = v255;
  }

  else
  {
    v230 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v229, v15, &byte_262899963, v16, v16, v230, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1286);
  if (v256)
  {
    v232 = v255;
  }

  else
  {
    v232 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v15, &byte_262899963, v16, v16, v232, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1288);
  if (v256)
  {
    v234 = v255;
  }

  else
  {
    v234 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v233, v15, &byte_262899963, v16, v16, v234, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1290);
  if (v256)
  {
    v236 = v255;
  }

  else
  {
    v236 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v235, v15, &byte_262899963, v16, v16, v236, 8, 8, 0);
  DgnString::~DgnString(&v255);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1292);
  if (v256)
  {
    v238 = v255;
  }

  else
  {
    v238 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v237, v15, &byte_262899963, v16, v16, v238, 8, 8, 0);
  DgnString::~DgnString(&v255);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1294);
  if (v256)
  {
    v240 = v255;
  }

  else
  {
    v240 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v15, &byte_262899963, v16, v16, v240, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1296);
  if (v256)
  {
    v242 = v255;
  }

  else
  {
    v242 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v241, v15, &byte_262899963, v16, v16, v242, 4, 4, 0);
  DgnString::~DgnString(&v255);
  *a4 += 4;
  *a5 += 4;
  v243 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v243 = 12;
  }

  v244 = *(this + 596);
  v245 = 8 * v244;
  if (v244 <= 0)
  {
    v245 = 0;
  }

  v246 = v245 + v243;
  v247 = v245 + v243 + 8 * (*(this + 597) - v244);
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1298);
  if (v256)
  {
    v249 = v255;
  }

  else
  {
    v249 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v15, &byte_262899963, v16, v16, v249, v247, v246, 0);
  DgnString::~DgnString(&v255);
  *a4 += v247;
  *a5 += v246;
  getShipObjectSizeDescription(&v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1299);
  if (v256)
  {
    v251 = v255;
  }

  else
  {
    v251 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v252, &byte_262899963, (35 - v252), (35 - v252), v251, *a4, *a5, *a6);
  DgnString::~DgnString(&v255);
}

void sub_2627B1ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t Recognizer::beginTopRecSyncRecog(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 272) = 0;
  *(result + 348) = a2;
  *(result + 352) = 0;
  *(result + 1608) = 0;
  *(result + 316) = 0xFFFFFFF0FFFFFFF0;
  *(result + 2392) = a3;
  *(result + 2400) = a4;
  return result;
}

void (***Recognizer::endTopRecSyncRecog(Recognizer *this))(void)
{
  if (*(this + 304) == 1)
  {
    v2 = *(*(this + 34) + 120);
    if (v2)
    {
      PelScoreCache::removeCacheClient(v2, this);
      *(this + 360) = 0;
    }
  }

  Active::endActiveSyncRecog(*(this + 35));
  *(this + 136) = 0;
  v3 = *(this + 140);
  if (v3)
  {
    bzero(*(this + 69), v3);
  }

  SearchLMScorer::endSearchLMScorerSyncRecog((this + 624));
  DgnDelete<RecogGermIterator>(*(this + 47));
  *(this + 47) = 0;
  result = DgnDelete<RecogGermIterator>(*(this + 48));
  *(this + 48) = 0;
  return result;
}

void *Recognizer::beginTopRecPassSyncRecog(Recognizer *this, int a2, int a3, PelScorer *a4)
{
  *(this + 34) = a4;
  *(this + 88) = a2;
  v6 = *(this + 87);
  *(this + 89) = v6 * a2;
  if (*(this + 304) == 1)
  {
    v7 = *(a4 + 15);
    v8 = v6 == 1;
    v9 = 72;
    if (v8)
    {
      v9 = 56;
    }

    v10 = *(this + 33) + v9;
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  Active::beginActiveSyncRecog(*(this + 35), v10, v7, *(this + 7), *(this + 8));
  MrecInitModule_sdpres_sdapi();
  v19 = 0x3FFFFCFFFFFELL;
  v20 = xmmword_26286CC40;
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(this + 35) + 303024, &v19);
  if (!*Bucket || (v12 = *(*Bucket + 40)) == 0)
  {
    v13 = *(this + 35);
    if (*(this + 304))
    {
      v14 = Active::newActiveWordSilence(v13, &v19);
    }

    else
    {
      v14 = Active::newActiveWordNonAcoustic(v13, &v19);
    }

    v12 = v14;
  }

  (*(*v12 + 24))(v12, 0, 0, 4294967294);
  if (*(this + 78) != 3 || (result = (*(**(v12 + 1) + 32))(*(v12 + 1)), *(this + 78) != 3))
  {
    v16 = *(this + 46);
    v18 = *(this + 72);
    result = CWIDCrumbBank::setFirstFrame(v16, &v18, 0);
  }

  if (v7)
  {
    PelScoreCache::addCacheClient(v7, this);
    *(this + 360) = 1;
    result = PelScoreCache::setCacheData(v7, *(this + 37));
  }

  *(this + 77) = a3;
  if (*(this + 72) == -1)
  {
    v17 = a3 - 1;
  }

  else
  {
    v17 = 0;
  }

  *(this + 79) = v17;
  *(this + 80) = v17;
  *(this + 81) = 0;
  *(this + 592) = 0;
  *(this + 588) = 0;
  return result;
}

uint64_t Recognizer::endTopRecPassSyncRecog(uint64_t this)
{
  v1 = this;
  v2 = *(this + 288);
  if (v2 == -1 || (v2 = *(this + 308), v2 != -16))
  {
    if (*(this + 316) == v2 && *(this + 312) != 3 && *(this + 620) == 1)
    {
      this = Recognizer::collectLastFrameConfidencePredictors(this, *(this + 600));
      *(v1 + 612) = 4294967280;
      *(v1 + 620) = 0;
    }
  }

  if (*(v1 + 304) == 1)
  {
    this = *(*(v1 + 272) + 120);
    if (this)
    {
      v3 = *(v1 + 320);
      v4 = *(v1 + 288) == 1;

      return PelScoreCache::removeCacheClientOfFramesFromTimeOn(this, v3, v4, v1);
    }
  }

  return this;
}

BOOL Recognizer::checkForDone(Recognizer *this)
{
  v1 = *(this + 72);
  if (v1 == -1)
  {
    return *(this + 79) == v1;
  }

  v1 = *(this + 77);
  return v1 != -16 && *(this + 79) == v1;
}

uint64_t Recognizer::collectLastFrameConfidencePredictors(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 316);
  if (v4 == -16)
  {
    v5 = -16;
  }

  else
  {
    v5 = v4 - *(this + 288);
  }

  for (i = *(this + 232); v5 >= i; *(v3 + 232) = i)
  {
    if (i == *(v3 + 236))
    {
      this = DgnPrimArray<unsigned int>::reallocElts(v3 + 224, 1, 1);
      i = *(v3 + 232);
    }

    *(*(v3 + 224) + 4 * i) = 0;
    i = *(v3 + 232) + 1;
  }

  v7 = 0;
  v8 = (*(*(v3 + 280) + 303248) - 1);
  if (v8 >= 0)
  {
    v9 = v8 + 1;
    v10 = *(*(v3 + 280) + 303240) + 8 * v8;
    do
    {
      this = *(*v10 + 8);
      if (*(this + 104) || *(this + 112) == 1)
      {
        this = (*(*this + 80))(this, a2);
        v7 += this;
      }

      --v9;
      v10 -= 8;
    }

    while (v9 >= 1);
  }

  *(*(v3 + 224) + 4 * v5) = v7;
  return this;
}

uint64_t *Recognizer::collectByFrameConfidencePredictors(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 79);
  if (v2 == -16)
  {
    v3 = -16;
  }

  else
  {
    v3 = v2 - *(this + 72);
  }

  for (i = *(this + 58); v3 >= i; *(v1 + 58) = i)
  {
    if (i == *(v1 + 59))
    {
      this = DgnPrimArray<unsigned int>::reallocElts((v1 + 28), 1, 1);
      i = *(v1 + 58);
    }

    *(v1[28] + 4 * i) = 0;
    i = *(v1 + 58) + 1;
  }

  if (*(v1[35] + 303248) - 1 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 8 * (*(v1[35] + 303248) - 1);
    do
    {
      v5 += *(*(*(*(v1[35] + 303240) + v6) + 8) + 104);
      v6 -= 8;
    }

    while (v6 != -8);
  }

  *(v1[28] + 4 * v3) = v5;
  return this;
}

int32x2_t Recognizer::adjustBestForBWBack(Recognizer *this, int a2)
{
  v2 = *(this + 79);
  v3 = -16;
  if (v2 != -16)
  {
    v3 = v2 - *(this + 72);
  }

  if (v3 == *(this + 77))
  {
    v4 = -16;
  }

  else
  {
    v4 = v3;
  }

  return NetMgr::adjustBestForBWBack((*(this + 35) + 16), a2, v4, this + 81);
}

_BYTE *Recognizer::debugFrameStart(_BYTE *this)
{
  if (*(gParDiagnosticFrameSpecificCommand + 64))
  {
    v1 = this;
    this = *(gParDiagnosticFrameSpecificCommand + 56);
    if (*this)
    {
      v23 = 0;
      v24 = 0;
      DgnSplitStringIntoTokens(this, " \n\r,", &v23, 0);
      v2 = v24;
      if (v24)
      {
        v3 = 0;
        do
        {
          v4 = v3 + 1;
          v5 = v23;
          v6 = v3;
          if (v3 + 1 >= v2)
          {
            v7 = v23 + 16 * v3;
            if (*(v7 + 8))
            {
              v8 = *v7;
            }

            else
            {
              v8 = &byte_262899963;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1907, "kernel/recog", 2, "%.500s %u", v8, v3 >> 1);
            v5 = v23;
          }

          v9 = v5 + 16 * v6;
          if (*(v9 + 8))
          {
            v10 = *v9;
          }

          else
          {
            v10 = &byte_262899963;
          }

          v11 = atoi(v10);
          if (v11 == *(v1 + 79))
          {
            v13 = v11;
            v14 = v5 + 16 * v4;
            if (*(v14 + 8))
            {
              v15 = *v14;
            }

            else
            {
              v15 = &byte_262899963;
            }

            xlprintf("Attempting DiagnosticFrameSpecificCommand '%.500s' on frame %d\n", v12, v15, v11);
            if (*(v14 + 8))
            {
              v16 = *v14;
            }

            else
            {
              v16 = &byte_262899963;
            }

            if (!strcmp(v16, "DisplayObjectSizes()"))
            {
              InternalDisplayObjectSizes();
            }

            else if (!strcmp(v16, "DisplayMemStats()"))
            {
              MemStatsDisplayFromRef(0, 0, 1, 0, 0, 0, 0);
            }

            else if (!strcmp(v16, "DisplayMemChunkStats()"))
            {
              MrecInitModule_sdpres_sdapi();
            }

            else
            {
              v17 = strcmp(v16, "ErrThrow()");
              if (v17)
              {
                v18 = strcmp(v16, "ErrThrowMemory()");
                if (!v18)
                {
                  CurrentRegion = MemChunkRegion::getCurrentRegion(v18);
                  ThrowNewFailure(CurrentRegion, 0);
                }

                if (*v16)
                {
                  v20 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 433, "kernel/recog", 3, "%.500s", v16);
                }
              }

              else
              {
                v20 = errThrowInternal(v17, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 424, "kernel/recog", 8, "%.500s", v16);
              }
            }

            if (*(v14 + 8))
            {
              v21 = *v14;
            }

            else
            {
              v21 = &byte_262899963;
            }

            xlprintf("Finished DiagnosticFrameSpecificCommand '%.500s' on frame %d\n", v19, v20, v21, v13);
          }

          v3 = v6 + 2;
          v2 = v24;
        }

        while (v6 + 2 < v24);
      }

      return DgnArray<DgnString>::releaseAll(&v23);
    }
  }

  return this;
}

void sub_2627B27FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::endNonAcousticFrame(uint64_t *this)
{
  if (*(this + 72) != -1)
  {
    v9 = v1;
    v10 = v2;
    v3 = this;
    if (*(this + 77) == -16)
    {
      v4 = this[35];
      if (!*(v4 + 303248) || (v7 = 0x3FFFFCFFFFFDLL, v8 = xmmword_26286CC40, this = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v4 + 303024, &v7), *this) && (v5 = *(*this + 40)) != 0 && ((v6 = *(v5 + 8), *(v6 + 104)) || *(v6 + 112) == 1) && *(v3[35] + 303248) == 1)
      {
        *(v3 + 77) = *(v3 + 79) + 1;
      }
    }
  }

  return this;
}

uint64_t Recognizer::checkForAbort(Recognizer *this)
{
  v2 = *(*(this + 35) + 88);
  v3 = *(this + 21);
  v4 = v3 > 0 && v2 >= v3;
  v5 = v4;
  *(this + 2304) = v5;
  MemChunkRegion::getRegionStats(&v18, 0);
  if (*(this + 2304) != 1)
  {
    v7 = *(this + 22);
    if (v7 < 1 || (v14 = v19 < v7, *(this + 2304) = v19 >= v7, v14))
    {
      if (*(this + 304) != 1)
      {
        goto LABEL_24;
      }

      v10 = *(this + 79);
      if (v10 < 50)
      {
        goto LABEL_24;
      }

      v11 = v2 / v10;
      v12 = *(this + 201);
      if (v12 <= v11)
      {
        v12 = v2 / v10;
      }

      v13 = *(this + 23);
      *(this + 201) = v12;
      v14 = v11 < v13 || v13 <= 0;
      v15 = !v14;
      *(this + 2304) = v15;
      if (v15)
      {
        v8 = this;
        v9 = 3;
      }

      else
      {
LABEL_24:
        v16 = *(this + 24);
        if (v16 < 1)
        {
          v6 = 0;
          *(this + 2304) = 0;
          return v6;
        }

        v4 = *(this + 302) >= v16;
        *(this + 2304) = v4;
        if (!v4)
        {
          return 0;
        }

        v8 = this;
        v9 = 4;
      }
    }

    else
    {
      v8 = this;
      v9 = 2;
    }

    Recognizer::setSearchAbortRecognizerStats(v8, v9);
    return 1;
  }

  v6 = 1;
  Recognizer::setSearchAbortRecognizerStats(this, 1);
  return v6;
}

void Recognizer::setSearchAbortRecognizerStats(uint64_t a1, int a2)
{
  *(a1 + 2308) = a2;
  v3 = *(*(a1 + 280) + 88);
  *(a1 + 2312) = *(a1 + 1208);
  *(a1 + 2316) = v3;
  MemChunkRegion::getRegionStats(v6, 0);
  *(a1 + 2320) = v6[1];
  v4 = *(a1 + 316);
  if (v4)
  {
    v5 = v3 / v4;
  }

  else
  {
    v5 = 0.0;
  }

  *(a1 + 2328) = v5;
}

uint64_t Recognizer::turnOffPrefilterer(Recognizer *this)
{
  if (*(this + 9))
  {
    return 0;
  }

  v2 = (*(*(this + 35) + 303248) - 1);
  if (v2 >= 0)
  {
    v3 = v2 + 1;
    for (i = *(*(this + 35) + 303240) + 8 * v2; ; i -= 8)
    {
      v5 = *(*i + 8);
      if (*(v5 + 104) || *(v5 + 112) == 1) && *(v5 + 16) != -50331651 && (*(*i + 36))
      {
        break;
      }

      if (v3-- <= 1)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void Recognizer::doFrame1(Recognizer *this)
{
  Recognizer::debugFrameStart(this);
  Recognizer::beginTopRecFrame(this, *(this + 79));
  *(this + 592) = 0;
  *(this + 588) = 0;
}

void Recognizer::beginTopRecFrame(Recognizer *this, int a2)
{
  NetMgr::beginNetMgrFrame((*(this + 35) + 16), a2);
  if (*(this + 78) != 3)
  {
    CWIDCrumbBank::ensureCrumbFrame(*(this + 46), a2);
  }

  *(this + 400) = 0;
}

uint64_t Recognizer::doFrame2(Recognizer *this, uint64_t a2)
{
  if (*(this + 304) == 1)
  {
    (*(**(this + 34) + 56))(*(this + 34), *(this + 79), 0, a2, this + 880, 0);
    if (!*(this + 78) && *(this + 25) == 1)
    {
      v3 = *(this + 35);
      if (*(v3 + 302984) == *(v3 + 302960))
      {
        DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(v3 + 302952);
      }
    }
  }

  v4 = *(this + 79);
  if (v4 == -16)
  {
    goto LABEL_7;
  }

  v7 = *(this + 72);
  v5 = v4 - v7;
  if (v7 == 1)
  {
    if (v5 == -1)
    {
      goto LABEL_7;
    }
  }

  else if (v5 == *(this + 77))
  {
LABEL_7:
    v5 = -16;
  }

  if (*(this + 78) == 3)
  {
    Recognizer::adjustBestForBWBack(this, 0);
    v6 = 5000;
  }

  else
  {
    v6 = NetMgr::normalizeBestAndComputeEstimatedThresh((*(this + 35) + 16), v5, *(this + 4) + *(this + 3), this + 81);
    v8 = *(this + 81);
    v9 = *(this + 84);
    if (v9 == *(this + 85))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 328, 1, 1);
      v9 = *(this + 84);
    }

    *(*(this + 41) + 4 * v9) = v8;
    ++*(this + 84);
  }

  v10 = 5000;
  if (v5 != -16)
  {
    v10 = *(this + 150);
    *(this + 612) = 4294967280;
    *(this + 620) = 0;
  }

  v11 = *(this + 13);
  if (v11 == -1)
  {
    v12 = 5000;
  }

  else
  {
    v12 = (v6 - v11);
  }

  result = Active::scoreActiveWords(*(this + 35), *(this + 79), v10, v6, *(this + 5), v12, *(this + 14));
  if (v5 != -16 && *(this + 78) != 3)
  {
    result = Recognizer::collectByFrameConfidencePredictors(this);
  }

  *(this + 86) = 0;
  if (*(this + 304) == 1)
  {
    v14 = *(*(this + 34) + 120);
    ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(v14, 0);
    v16 = *(this + 34);
    *(this + 86) = ScoreNoBackoff + *(*(this + 35) + 260);
    (*(*v16 + 64))(v16, *(this + 79), this + 880);
    result = PelScoreCache::removeCacheClientOfFrame(v14, *(this + 79), this);
    *(this + 80) = *(this + 72) + *(this + 79);
  }

  return result;
}

void Recognizer::doFrame3(uint64_t a1, uint64_t a2)
{
  v4 = NetMgr::computeThreshScore((*(a1 + 280) + 16), *(a1 + 12), *(a1 + 16), *(a1 + 40), *(a1 + 44), (a1 + 1216), (a1 + 1224));
  active = Active::thresholdActiveWords(*(a1 + 280), *(a1 + 316), v4, *(a1 + 20));
  if (*(a1 + 312) == 3)
  {
    v6 = *(a1 + 280);
    v7 = *(a1 + 288);
    v8 = *(a1 + 316);
    *(a1 + 604) = *(v6 + 264);
    *(a1 + 600) = v4;
    *(a1 + 616) = v7;
    *(a1 + 608) = v8;
    *(a1 + 612) = v8 + v7;
    *(a1 + 620) = 1;
  }

  else
  {
    Recognizer::seedActiveWords(a1, v4, 20000, active, a2);
    v9 = *(a1 + 316);
    v10 = *(a1 + 248);
    if (v9 >= v10)
    {
      do
      {
        if (v10 == *(a1 + 252))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 240, 1, 1);
          v10 = *(a1 + 248);
        }

        v11 = *(a1 + 240);
        *(v11 + 4 * v10) = 0;
        v10 = *(a1 + 248) + 1;
        *(a1 + 248) = v10;
        v9 = *(a1 + 316);
      }

      while (v9 >= v10);
    }

    else
    {
      v11 = *(a1 + 240);
    }

    *(v11 + 4 * v9) = *(a1 + 1600);
    v6 = *(a1 + 280);
  }

  v12 = *(v6 + 216);
  if (v12 == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *(v6 + 208);
  }

  *(a1 + 2244) = v13;
  *(a1 + 2248) = v12;
  v14 = *(v6 + 232);
  if (!v14)
  {
    *(a1 + 2252) = 0;
    goto LABEL_20;
  }

  *(a1 + 2252) = 1;
  v15 = *(v14 + 16);
  *(a1 + 2260) = v15;
  *(a1 + 2264) = *(v14 + 20);
  *(a1 + 2268) = *(v14 + 24);
  if (v15 >> 25 == 126)
  {
    v16 = -16;
  }

  else
  {
    if ((*(*v14 + 96))(v14))
    {
      *(a1 + 2256) = (*(*v14 + 104))(v14);
      goto LABEL_20;
    }

    v16 = *(a1 + 316);
  }

  *(a1 + 2256) = v16;
LABEL_20:
  if (*(a1 + 312) != 1)
  {
    if (*(a1 + 304))
    {
      v17 = *(a1 + 80);
      v18 = *(a1 + 316);
      if (v17 && !(v18 % v17))
      {
        Active::prune(*(a1 + 280));
        v18 = *(a1 + 316);
      }

      Active::pruneTimeConstrained(*(a1 + 280), v18);
    }

    else
    {
      Active::prune(*(a1 + 280));
      Recognizer::endNonAcousticFrame(a1);
    }
  }

  Recognizer::endTopRecFrame(a1, *(a1 + 316));
  *(a1 + 316) += *(a1 + 288);
  ++*(a1 + 1208);
}

void Recognizer::seedActiveWords(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v9 = *(a1 + 312);
  if (v9 != 3)
  {
    a3 = *(*(a1 + 280) + 264);
  }

  v10 = *(a1 + 288);
  v11 = *(a1 + 316);
  *(a1 + 604) = a3;
  *(a1 + 600) = a2;
  *(a1 + 616) = v10;
  *(a1 + 608) = v11;
  *(a1 + 612) = v11 + v10;
  *(a1 + 620) = 1;
  if (v9 == 3)
  {

    Recognizer::doBackward(a1);
  }

  else
  {
    CWIDCrumbBank::setBestAccumScore(*(a1 + 368), v11, *(a1 + 324));
    Recognizer::doFinalSilForward(a1);
    if (a4)
    {

      Recognizer::doForward(a1, a5);
    }
  }
}

void Recognizer::endTopRecFrame(Recognizer *this, int a2)
{
  if (*(this + 78) != 3)
  {
    CWIDCrumbBank::endCrumbFrame(*(this + 46), a2, *(this + 86));
  }

  MrecInitModule_sdpres_sdapi();
}

uint64_t Recognizer::getBestHistoryMaybeExtend(Recognizer *this, char a2, int a3, int *a4)
{
  v8 = *(this + 35);
  v31 = 0x3FFFFCFFFFFDLL;
  v32 = xmmword_26286CC40;
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v8 + 303024, &v31);
  if (!*Bucket || (*(this + 2304) & 1) != 0 || (a2 & 1) != 0 || (v10 = *(*Bucket + 40)) == 0 || (v11 = *(v10 + 8), (v12 = *(v11 + 104)) == 0) && (*(v11 + 112) != 1 || (a3 & 1) == 0))
  {
    v24 = *(this + 35);
    if (*(v24 + 216) == 20000)
    {
      v25 = 1879048192;
      v26 = 4294967294;
    }

    else
    {
      v26 = *(v24 + 208);
      v25 = 1879048192;
    }

    goto LABEL_33;
  }

  v13 = *(v11 + 64);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = *(v11 + 56);
  do
  {
    v17 = *v15++;
    v16 = v17;
    if (*(v17 + 8) < 20000)
    {
      v14 = v16;
    }

    --v13;
  }

  while (v13);
  if (!v14 || a3 == 0)
  {
LABEL_18:
    v19 = 1879048192;
  }

  else
  {
    v19 = 20000;
    if (*(v14 + 8) != 20000)
    {
      v20 = *v14;
      v19 = *(v14 + 8);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }
  }

  v20 = -2;
  if (!v12)
  {
LABEL_30:
    v25 = *(this + 81) + v19;
    v27 = *(this + 79);
    LOBYTE(v31) = 0;
    v26 = HistoryMgr::extendHistory(*(this + 35) + 72, v20, (v11 + 16), 0, v27 + 1, v27 + 1, &v31);
    if (v31 == 1)
    {
      ++*(this + 303);
    }

    CWIDCrumbBank::addZeroFrameFinalSilHABS(*(this + 46), v27, *(v10 + 8) + 16, v26, v25);
    goto LABEL_33;
  }

LABEL_20:
  NonSilOutPort = HmmNet::getNonSilOutPort(*(v10 + 8), 0);
  v22 = *(NonSilOutPort + 8);
  if (v19 <= v22)
  {
    v11 = *(v10 + 8);
    goto LABEL_30;
  }

  if (v22 == 20000)
  {
    v23 = -2;
  }

  else
  {
    v23 = *NonSilOutPort;
  }

  v25 = *(this + 81) + v22;
  v29 = *(this + 79);
  v30 = *(v10 + 8);
  LOBYTE(v31) = 0;
  v26 = HistoryMgr::extendHistory(*(this + 35) + 72, v23, (v30 + 16), 0, v29, v29, &v31);
  if (v31 == 1)
  {
    ++*(this + 303);
  }

LABEL_33:
  *a4 = v25;
  return v26;
}

uint64_t Recognizer::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v16 = a6[2];
  if (v16 >= 1)
  {
    v17 = 112 * v16 - 112;
    do
    {
      (**(*a6 + v17))(*a6 + v17);
      v17 -= 112;
    }

    while (v17 != -112);
  }

  a6[2] = 0;
  *(a8 + 8) = 0;
  if (*(a1 + 2248) == 20000)
  {
    return 1879048192;
  }

  v18 = *(a1 + 2244);
  if (v18 == -2)
  {
    return 1879048192;
  }

  *v50 = a3;
  v49 = a5;
  v51 = *(a1 + 324);
  v52 = *(a1 + 2248);
  HistoryMgr::getForwardContents(*(a1 + 280) + 72, v18, a7);
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  if (*(a7 + 8))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = *a7 + v21;
      v25 = *(v24 + 24);
      if ((v25 - v23) < *(a1 + 220))
      {
        return (v51 + v52);
      }

      v26 = *(v24 + 28);
      WordLatticeLC::WordLatticeLC(&v57, v24, v23, v25 - v23, v26 - v25, v67);
      v27 = a6[2];
      if (v27 == a6[3])
      {
        DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
        LODWORD(v27) = a6[2];
      }

      WordLatticeLC::WordLatticeLC((*a6 + 112 * v27), &v57);
      ++a6[2];
      WordLatticeLC::~WordLatticeLC(&v57);
      v28 = *(a8 + 8);
      if (v28 == *(a8 + 12))
      {
        v20 = DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
        v28 = *(a8 + 8);
      }

      *(*a8 + 4 * v28) = 1;
      ++*(a8 + 8);
      ++v22;
      v21 += 32;
      v23 = v26;
      if (v22 >= *(a7 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_17:
  if (*(a1 + 2252) != 1)
  {
    v32 = 1;
    if (!a2)
    {
      return (v51 + v52);
    }

    goto LABEL_29;
  }

  v29 = *(a1 + 2260);
  if (v29 >> 25 == 126)
  {
    v30 = v29 & 0xFFFFFF;
    if ((v29 & 0xFFFFFF) == 0xFFFFFD && a6[2] == 1)
    {
      v31 = *(a1 + 316);
      *(*a6 + 20) += v31 - v26;
      v32 = 1;
      v26 = v31;
      if (!a2)
      {
        return (v51 + v52);
      }

LABEL_29:
      if (v32)
      {
        v55 = 0x3FFFFAFFFFFCLL;
        v56 = xmmword_26286CC40;
        v34 = a6[2];
        if (v34)
        {
          v35 = *a6 + 112 * (v34 - 1);
          v55 = *(v35 + 88);
          v56 = *(v35 + 96);
        }

        v36 = *(a2 + 48);
        v37 = *(v36 + 4);
        if (v37 <= v26)
        {
LABEL_40:
          v43 = 1;
        }

        else
        {
          while (1)
          {
            GermsForFrame = PrefilterResult::getGermsForFrame(v36, v26);
            v59 = -16;
            v60 = 0u;
            memset(v61, 0, sizeof(v61));
            v62 = 1879048192;
            v63 = 0;
            v64 = -1;
            v57 = &unk_2875281A8;
            v58 = 0xBFF0000000000000;
            HIDWORD(v65) = 0x3FFF;
            v66 = xmmword_26286CC40;
            PartialResultWord = Recognizer::getPartialResultWord(a1, GermsForFrame, v26, &v55, &v57, v54);
            if ((PartialResultWord & 1) == 0)
            {
              break;
            }

            v40 = v60;
            if (v60 < *(a1 + 216))
            {
              break;
            }

            v41 = a6[2];
            if (v41 == a6[3])
            {
              DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
              LODWORD(v41) = a6[2];
            }

            WordLatticeLC::WordLatticeLC((*a6 + 112 * v41), &v57);
            ++a6[2];
            v42 = *(a8 + 8);
            if (v42 == *(a8 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
              v42 = *(a8 + 8);
            }

            *(*a8 + 4 * v42) = 2;
            ++*(a8 + 8);
            v26 = (v40 + v26);
            v55 = v65;
            v56 = v66;
            WordLatticeLC::~WordLatticeLC(&v57);
            if (v37 <= v26)
            {
              goto LABEL_40;
            }
          }

          v43 = PartialResultWord ^ 1;
          WordLatticeLC::~WordLatticeLC(&v57);
        }

        if (*v50 && v43)
        {
          v44 = *(*v50 + 8);
          v54[0] = 0;
          v54[1] = 0;
          if (v44 > v26)
          {
            v45 = 0;
            while ((v49 - v26) >= *(a1 + 208))
            {
              Recognizer::returnIncompleteGerms(v20, v26, *v50, a4, v54);
              v59 = -16;
              v60 = 0u;
              memset(v61, 0, sizeof(v61));
              v62 = 1879048192;
              v63 = 0;
              v64 = -1;
              v57 = &unk_2875281A8;
              v58 = 0xBFF0000000000000;
              HIDWORD(v65) = 0x3FFF;
              v66 = xmmword_26286CC40;
              if ((Recognizer::getPartialResultWord(a1, v54, v26, &v55, &v57, &v53) & 1) == 0)
              {
                goto LABEL_56;
              }

              v46 = v60;
              if (v60 < *(a1 + 212))
              {
                goto LABEL_56;
              }

              v47 = a6[2];
              if (v47 == a6[3])
              {
                DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
                LODWORD(v47) = a6[2];
              }

              WordLatticeLC::WordLatticeLC((*a6 + 112 * v47), &v57);
              ++a6[2];
              v48 = *(a8 + 8);
              if (v48 == *(a8 + 12))
              {
                DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
                v48 = *(a8 + 8);
              }

              *(*a8 + 4 * v48) = 3;
              ++*(a8 + 8);
              v55 = v65;
              v56 = v66;
              if (*(a1 + 204) - 1 < ++v45)
              {
LABEL_56:
                WordLatticeLC::~WordLatticeLC(&v57);
                break;
              }

              v26 = (v46 + v26);
              WordLatticeLC::~WordLatticeLC(&v57);
              if (v44 <= v26)
              {
                break;
              }
            }
          }

          DgnIArray<Utterance *>::~DgnIArray(v54);
        }
      }

      return (v51 + v52);
    }

    WordLatticeLC::WordLatticeLC(&v57, a1 + 2260, v26, *(a1 + 316) - v26, 0, v67);
    DgnArray<WordLatticeLC>::add(a6, &v57);
    v32 = v30 != 16777213;
  }

  else
  {
    v32 = *(a1 + 392) == 0;
    v33 = *(a1 + 2256);
    if ((v33 - v26) < *(a1 + 220))
    {
      return (v51 + v52);
    }

    WordLatticeLC::WordLatticeLC(&v57, a1 + 2260, v26, v33 - v26, *(a1 + 316) - v33, v67);
    DgnArray<WordLatticeLC>::add(a6, &v57);
  }

  WordLatticeLC::~WordLatticeLC(&v57);
  v20 = DgnPrimArray<unsigned int>::add(a8, 1);
  v26 = *(a1 + 316);
  if (a2)
  {
    goto LABEL_29;
  }

  return (v51 + v52);
}

void sub_2627B3A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

void DgnArray<WordLatticeLC>::add(uint64_t a1, WordLatticeLC *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    DgnArray<WordLatticeLC>::reallocElts(a1, 1, 1);
    v4 = *(a1 + 8);
  }

  WordLatticeLC::WordLatticeLC((*a1 + 112 * v4), a2);
  ++*(a1 + 8);
}

uint64_t Recognizer::getPartialResultWord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, int *a6)
{
  if (a2 && *(a2 + 8))
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    *(v12 + 2) = 0;
    *(v12 + 32) = 0;
    v12[3] = 0;
    *v12 = &unk_287525768;
    v12[5] = a2;
    *(v12 + 3) = *(a2 + 8);
    Constraint::prunePreList(*(a1 + 2216), v12, 1);
    v62[0] = 0;
    Legal = Constraint::getLegal(*(a1 + 2216), a4, 0, 1u, v62 + 1, a3, v62, 0, 0, 0, 0);
    if (HIDWORD(v62[0]))
    {
      v14 = Legal;
      SeededWeights = Constraint::getSeededWeights(*(a1 + 2216), a4, a3);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      LMStats::resetStats(v55);
      v16 = (a1 + 624);
      v53 = v16;
      v54 = 1;
      SearchLMScorer::setContext(v16, 0xFAFFFFFC, a4, v14, 1, SeededWeights, v55, 0, 0xFAFFFFFC, 0xFAFFFFFC);
      v51 = 0x3FFFFCFFFFFDLL;
      v52 = xmmword_26286CC40;
      v17 = *(v14 + 8);
      if (!v17)
      {
        goto LABEL_32;
      }

      v36 = a3;
      v37 = a5;
      v38 = v12;
      v39 = v14;
      v18 = 0;
      v40 = 0;
      v19 = 20000;
      do
      {
        v20 = *v14 + 16 * v18;
        v21 = *(v20 + 8);
        if (v21)
        {
          v22 = 0;
          for (i = 0; i < v21; ++i)
          {
            v24 = *v20 + v22;
            v25 = *(v24 + 30);
            if ((v25 & 0x80000000) == 0)
            {
              v41 = *v24;
              *v42 = *(v24 + 8);
              v26 = *(v24 + 28);
              v27 = *(v24 + 26);
              v28 = SearchLMScorer::lmScoreNonSilCwidac(v16, &v41, v55);
              if (v26 != 20000 && v27 != 20000 && v28 != 20000 && v27 + v26 + v28 < v19)
              {
                v51 = v41;
                v52 = *v42;
                if (v25 <= 1)
                {
                  v32 = 1;
                }

                else
                {
                  v32 = v25;
                }

                v40 = v32;
                v19 = v27 + v26 + v28;
              }

              v21 = *(v20 + 8);
            }

            v22 += 44;
          }

          v14 = v39;
          v17 = *(v39 + 8);
        }

        ++v18;
      }

      while (v18 < v17);
      v12 = v38;
      if (v19 < 20000)
      {
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        WordLatticeLC::WordLatticeLC(&v41, &v51, v36, v40, 0, v49);
        *(v37 + 8) = v42[0];
        v33 = *&v42[3];
        *(v37 + 16) = *&v42[1];
        *(v37 + 32) = v33;
        *(v37 + 48) = *&v42[5];
        *(v37 + 64) = v42[7];
        *(v37 + 72) = v43;
        *(v37 + 80) = v44;
        *(v37 + 88) = v45;
        *(v37 + 92) = v46;
        *(v37 + 94) = v47;
        *(v37 + 96) = v48;
        WordLatticeLC::~WordLatticeLC(&v41);
        *a6 = v19;
        v34 = 1;
        if ((v54 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
LABEL_32:
        v34 = 0;
      }

      SearchLMScorer::unsetContext(v53);
    }

    else
    {
      v34 = 0;
    }

LABEL_35:
    DgnDelete<RecogGermIterator>(v12);
    return v34;
  }

  return 0;
}

void sub_2627B3E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  SearchLMContext::~SearchLMContext(va);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::returnIncompleteGerms(int a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a3 + 8 * a2);
  if (!v5)
  {
    return result;
  }

  v8 = *(v5 + 12);
  if (v8)
  {
    v9 = *(v5 + 80);
    v10 = *v9;
    if (*v9)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v11 = 0;
      v12 = v9 + 1;
      while (v8 - 1 != v11)
      {
        v10 = v12[v11++];
        if (v10)
        {
          LODWORD(v8) = v11;
          goto LABEL_11;
        }
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  v13 = *(v5 + 8);
  v14 = *(a5 + 12);
  if (v13 > v14)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a5, v13 - v14, 0);
  }

  v16 = *(a5 + 8);
  if (v16 < v13)
  {
    v17 = v13 - v16;
    v18 = *a5 + 8 * v16 + 6;
    do
    {
      *(v18 - 6) = 4211081215;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  *(a5 + 8) = v13;
  if (v8 >= *(v5 + 12))
  {
    return result;
  }

  for (i = 0; ; ++i)
  {
    v20 = *(v10 + 2);
    if (v10)
    {
      v21 = v10 + 6;
    }

    else
    {
      v21 = 0;
    }

    v22 = *v21;
    if (*(v10 + 2) >> 25 < *(a4 + 8))
    {
      v23 = *a4 + 16 * (v20 >> 25);
      if ((v20 & 0xFFFFFF) < *(v23 + 8))
      {
        v24 = *(*v23 + 2 * (v20 & 0xFFFFFF));
        if (v24 != 20000)
        {
          v22 -= v24;
        }
      }
    }

    *(*a5 + 8 * i) = (v21[1] << 48) | (v22 << 32) | v20;
    v25 = *v10;
    v26 = *(v5 + 12);
    if (*v10)
    {
      goto LABEL_33;
    }

    v8 = (v8 + 1);
    if (v8 >= v26)
    {
      v25 = v10;
      goto LABEL_33;
    }

    v27 = *(v5 + 80);
    v25 = *(v27 + 8 * v8);
    if (!v25)
    {
      break;
    }

LABEL_33:
    v10 = v25;
    if (v8 >= v26)
    {
      return result;
    }
  }

  v28 = (v27 + 8 * v8 + 8);
  v29 = ~v8 + v26;
  while (v29)
  {
    v30 = *v28++;
    v25 = v30;
    LODWORD(v8) = v8 + 1;
    --v29;
    if (v30)
    {
      goto LABEL_33;
    }
  }

  return result;
}

WordLattice *Recognizer::makeRecognizerResults(Recognizer *this, LatticeStats *a2, char a3)
{
  v76 = 1879048192;
  BestHistoryMaybeExtend = Recognizer::getBestHistoryMaybeExtend(this, a2, *(this + 149), &v76);
  v7 = v76;
  if (v76 == 1879048192 && (a3 & 1) == 0)
  {
    Lattice = 0;
    *(this + 2240) = 1;
    return Lattice;
  }

  SnapTime::recordTime((this + 2024), 1, 1, 1, 1);
  v9 = *(this + 46);
  v70 = VocMgr::smpVocMgr;
  v10 = *(this + 77);
  if (v10)
  {
    v10 = CWIDCrumbBank::getLastFrame(v9) + 1;
    v11 = *(this + 77);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = BestHistoryMaybeExtend == -2;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = *(this + 43);
  v72 = v10;
  v69 = v11;
  if (v14 == 2)
  {
    goto LABEL_17;
  }

  if (v14 != 3)
  {
    v14 = 3;
LABEL_17:
    v15 = *(this + 144);
    v16 = *(this + 145);
    goto LABEL_18;
  }

  v15 = 0;
  v16 = 0;
  v14 = 1;
LABEL_18:
  LatticeType = BackTraceLatticeBuilder::getLatticeType((v15 & 1), v16 & 1, v14, *(this + 148));
  v68 = a3;
  v71 = v13;
  if (!LatticeType && *(this + 144) == 1 && *(this + 43) == 2 && (*(this + 145) & v13 & 1) != 0)
  {
    v18 = HistoryMgr::copyAndOverrideToBigramHistories((*(this + 35) + 72));
    v19 = MemChunkAlloc(0x38uLL, 0);
    CWIDCrumbBank::CWIDCrumbBank(v19, *(this + 35) + 72);
    CWIDCrumbBank::copy(v20, v9);
    CWIDCrumbBank::mergeCrumbs(v19, v21);
    CWIDCrumbBank::updateCrumbHistory(v19, v18);
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v18 = 0;
    v19 = v9;
    v9 = 0;
  }

  Latch<MemChunkRegion,LatchAdapter>::Latch(v74, &gGlobalMemChunkRegion);
  v23 = MemChunkAlloc(0x238uLL, 0);
  if (*(this + 8))
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 146) ^ 1;
  }

  BackTraceLatticeBuilder::BackTraceLatticeBuilder(v23, *(this + 277), v19, *(this + 35) + 302952, this + 624, *(this + 304), LatticeType, *(this + 28), *(this + 13), *(this + 29), *(this + 30), *(this + 31), *(this + 32), *(this + 33), *(this + 34), *(this + 35), *(this + 147), *(this + 148), v24 & 1, *(this + 38), *(this + 14), *(this + 166), *(this + 196), v22, v9, v18);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(v74);
  if (v71)
  {
    if (v7 == 1879048192)
    {
      *v74 = 0x3FFFFCFFFFFDLL;
      v75 = xmmword_26286CC40;
      v28 = *(this + 77);
      LOBYTE(v77) = 0;
      v29 = HistoryMgr::extendHistory(*(this + 35) + 72, BestHistoryMaybeExtend, v74, 0, v28, v28, &v77);
      if (v77 == 1)
      {
        ++*(this + 303);
      }

      v25 = CWIDCrumbBank::setTopChoiceHistoryExtendToEnd(v19, v29, *(this + 77));
    }

    else
    {
      v74[0] = 1879048192;
      LODWORD(v77) = -2;
      CWIDCrumbBank::getRightSilenceInfo(v19, v72 - 1, &v77, v74);
      CWIDCrumbBank::setTopChoiceHistory(v19, v77);
      v25 = 0;
    }

    v30 = *(this + 3);
    v31 = *(this + 4);
    Latch<MemChunkRegion,LatchAdapter>::Latch(v74, &gGlobalMemChunkRegion);
    Lattice = BackTraceLatticeBuilder::makeLattice(v23, *(this + 264), *(this + 34), v7 == 1879048192, v25, *(this + 100), (this + 1616), v31 + v30, *(this + 88), *(this + 89), a2);
    v32 = (*(this + 304) & v68);
    *(Lattice + 209) = v7 == 1879048192;
    Latch<MemChunkRegion,LatchAdapter>::~Latch(v74);
    v27 = v70;
    if (v9)
    {
      DgnDelete<CWIDCrumbBank>(v19);
      *(Lattice + 207) = v69 == v72;
      if (v32)
      {
LABEL_36:
        v33 = *(this + 77);
        for (i = *(this + 58); v33 > i; *(this + 58) = i)
        {
          if (i == *(this + 59))
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 224, 1, 1);
            i = *(this + 58);
          }

          *(*(this + 28) + 4 * i) = 0;
          i = *(this + 58) + 1;
        }

        for (j = *(this + 62); v33 > j; *(this + 62) = j)
        {
          if (j == *(this + 63))
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 240, 1, 1);
            j = *(this + 62);
          }

          *(*(this + 30) + 4 * j) = 0;
          j = *(this + 62) + 1;
        }

        v26 = 1;
        goto LABEL_49;
      }
    }

    else
    {
      *(Lattice + 207) = v69 == v72;
      if (v32)
      {
        goto LABEL_36;
      }
    }

    v26 = 0;
  }

  else
  {
    Latch<MemChunkRegion,LatchAdapter>::Latch(v74, &gGlobalMemChunkRegion);
    Lattice = BackTraceLatticeBuilder::makeSilentLattice(*(this + 264), *(this + 77), *(this + 88), *(this + 89), *(this + 304), this + 1616, a2);
    *(Lattice + 209) = 257;
    Latch<MemChunkRegion,LatchAdapter>::~Latch(v74);
    v26 = 0;
    *(Lattice + 207) = v69 == v72;
    v27 = v70;
  }

LABEL_49:
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v73, &gGlobalMemChunkRegion);
  if (v23)
  {
    BackTraceLatticeBuilder::~BackTraceLatticeBuilder(v23);
    MemChunkFree(v36, 0);
  }

  SnapTime::recordTime((this + 2056), 1, 1, 1, 1);
  v37 = *(this + 277);
  if ((*(v37 + 68) & 0xFFFFFFFD) == 0 && *(v37 + 192))
  {
    WordLattice::computeParseTokens(Lattice, v37 + 168, (v37 + 184));
  }

  if (*(Lattice + 210))
  {
    goto LABEL_105;
  }

  if (*(this + 304) == 1 && *(this + 146) == 1)
  {
    SnapTime::recordTime((this + 2184), 1, 1, 1, 1);
    WordLattice::addSegmentations(Lattice, *(this + 35), *(this + 32), *(this + 33));
    if (*(Lattice + 210))
    {
      goto LABEL_105;
    }
  }

  if ((*(this + 675) & 1) == 0 && *(this + 678) != 1 || WordLattice::hasCollapsedWords(Lattice))
  {
    LOBYTE(v38) = 0;
    v39 = 0;
    goto LABEL_88;
  }

  SnapTime::recordTime((this + 2088), 1, 1, 1, 1);
  *v74 = 0;
  *&v75 = 0;
  if (!*(Lattice + 26))
  {
LABEL_86:
    LOBYTE(v38) = 0;
    v39 = 0;
    goto LABEL_87;
  }

  v40 = 0;
  do
  {
    v41 = *(Lattice + 16) + 136 * *(*(Lattice + 12) + 4 * v40);
    v44 = *(v41 + 88);
    v42 = (v41 + 88);
    v43 = v44;
    if (v44 >> 27 != 31)
    {
      v45 = v75;
      if (!v75)
      {
        goto LABEL_71;
      }

      v46 = *v74;
      v47 = v75;
      v48 = 0xFFFFFFFFLL;
      while (1)
      {
        v49 = *v46++;
        if (v49 == v43 >> 25)
        {
          break;
        }

        --v48;
        if (!--v47)
        {
          goto LABEL_71;
        }
      }

      if (!v48)
      {
LABEL_71:
        v50 = *(this + 277);
        if ((*(v50 + 68) & 0xFFFFFFFD) == 0)
        {
          if (!Constraint::isLMAllowedForState(v50, v42))
          {
            goto LABEL_77;
          }

          v45 = v75;
        }

        if (v45 == DWORD1(v75))
        {
          DgnPrimArray<short>::reallocElts(v74, 1, 1);
          v45 = v75;
        }

        *(*v74 + 2 * v45) = v43 >> 25;
        LODWORD(v75) = v45 + 1;
      }
    }

LABEL_77:
    ++v40;
  }

  while (v40 < *(Lattice + 26));
  if (!v75)
  {
    goto LABEL_86;
  }

  v51 = 0;
  v39 = 0;
  v38 = 0;
  do
  {
    v52 = *(*(**v27 + 8 * *(*v74 + 2 * v51)) + 72);
    if (*(this + 675) == 1)
    {
      v38 |= (*(*v52 + 448))(*(*(**v27 + 8 * *(*v74 + 2 * v51)) + 72), v42);
    }

    if (*(this + 678) == 1)
    {
      v39 |= (*(*v52 + 312))(v52, 0) != 0;
    }

    ++v51;
  }

  while (v51 < v75);
LABEL_87:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v74);
  if ((v38 & 1) == 0)
  {
LABEL_88:
    if ((v39 & 1) == 0)
    {
      v53 = 0;
      goto LABEL_98;
    }
  }

  if (*(this + 184))
  {
    v54 = **(this + 91);
  }

  else
  {
    v54 = 4244635646;
  }

  if (v38)
  {
    v55 = 4;
  }

  else
  {
    v55 = 3;
  }

  v53 = WordLattice::expandLMContext(Lattice, v55, v54, *(this + 48), this + 1616, this + 584, this + 585);
  if (v53 != 1)
  {
    SnapTime::recordTime((this + 2120), 1, 1, 1, 1);
    WordLattice::rescoreLatticeLM(Lattice, (this + 624), this + 202, v38 & 1);
  }

LABEL_98:
  SnapTime::recordTime((this + 2152), 1, 1, 1, 1);
  if (*(this + 304) == 1 && *(this + 146) == 1)
  {
    Lattice<WordLatticeLC>::minimize(Lattice);
  }

  else
  {
    v56 = MemChunkAlloc(0x120uLL, 0);
    WordLattice::WordLattice(v56, Lattice, 0, 0, 0, 0, 0, 0, v57, v58);
    DgnDelete<WordLattice>(Lattice);
    Lattice = v56;
  }

  WordLattice::maybePruneToNumUniquePaths(Lattice, *(this + 47));
  if ((*(Lattice + 210) & 1) == 0 && v53 == 1)
  {
    *(Lattice + 210) = 1;
  }

LABEL_105:
  v59 = *(this + 277);
  if ((*(v59 + 68) & 0xFFFFFFFD) == 0 && *(v59 + 192))
  {
    WordLattice::fixStateIds(Lattice);
  }

  if (v26)
  {
    v60 = *(*(this + 34) + 120);
    v61 = *(v60 + 480);
    *v74 = 0;
    *&v75 = 0;
    if (v61)
    {
      v77 = 0;
      v62 = realloc_array(0, &v77, 2 * v61, 0, 0, 1);
      v63 = 0;
      v64 = v77;
      *v74 = v77;
      LODWORD(v75) = v61;
      DWORD1(v75) = v62 >> 1;
      v65 = *(v60 + 472) + 2;
      do
      {
        v64[v63] = *(v65 + 1 * v63);
        ++v63;
      }

      while (v61 != v63);
    }

    else
    {
      v64 = 0;
      LODWORD(v75) = 0;
    }

    v66 = *(this + 77);
    while (v66 > v61)
    {
      if (v61 == DWORD1(v75))
      {
        DgnPrimArray<short>::reallocElts(v74, 1, 1);
        LODWORD(v61) = v75;
        v64 = *v74;
      }

      v64[v61] = 0;
      LODWORD(v61) = v61 + 1;
      LODWORD(v75) = v61;
    }

    WordLattice::computeConfidencePredictorsForLinks(Lattice, this + 224, this + 30, v74);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v74);
  }

  *(this + 2240) = 1;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v73);
  return Lattice;
}

void sub_2627B49E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::setPelScores(PelScoreCacheData **this, const PelScoreCacheData *a2)
{
  DgnDelete<PelScoreCacheData>(this[37]);
  if (a2)
  {
    result = PelScoreCacheData::clone(a2);
  }

  else
  {
    result = 0;
  }

  this[37] = result;
  return result;
}

uint64_t Recognizer::beginTrackingConfidenceStatistics(uint64_t this)
{
  *(this + 232) = 0;
  *(this + 248) = 0;
  return this;
}

__n128 Recognizer::setContextPars(uint64_t a1, __n128 *a2)
{
  v4 = MemChunkAlloc(0x18uLL, 0);
  result = *a2;
  *v4 = *a2;
  v4[1].n128_u32[0] = a2[1].n128_u32[0];
  v4[1].n128_u8[4] = a2[1].n128_u8[4];
  *(a1 + 760) = v4;
  return result;
}

uint64_t Recognizer::setRightGermsBackward(Recognizer *this)
{
  v2 = *(*(this + 35) + 303248);
  *(this + 148) = 0;
  v3 = *(this + 149);
  if (v2 > v3)
  {
    DgnArray<RecogGerm>::reallocElts(this + 584, v2 - v3, 0);
  }

  *(this + 144) = 0;
  v4 = *(this + 145);
  if (v2 > v4)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 568, v2 - v4, 0);
  }

  *(this + 144) = v2;
  v5 = *(*(this + 35) + 303248);
  if (v5 - 1 < 0)
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(*(this + 35) + 303240) + 8 * (v5 - 1);
  do
  {
    v9 = *v8;
    v10 = *(*v8 + 8);
    if (*(v10 + 104) || *(v10 + 112) == 1)
    {
      *(*(this + 71) + 8 * v6) = v9;
      v11 = *(v9 + 8);
      if (*(this + 151) >= *(v11 + 108))
      {
        v12 = *(v11 + 16);
        if (v12 >> 25 == 126)
        {
          if (v12 == -50331650)
          {
            result = v9;
          }
        }

        else
        {
          v13 = *(this + 148);
          v14 = *(this + 73) + 44 * v13;
          *v14 = 0x3FFFFAFFFFFFLL;
          *(v14 + 8) = xmmword_26286CC40;
          *(this + 148) = v13 + 1;
          *v14 = *(v11 + 16);
          *(v14 + 4) = *(v11 + 20);
          *(v14 + 8) = *(v11 + 24);
          *(v14 + 24) = 0;
          *(v14 + 26) = 1310720000;
          *(v14 + 30) = 0;
          *(v14 + 32) = 0x70000000FFFFFFFELL;
          *(v14 + 40) = v6;
        }
      }
    }

    ++v6;
    v8 -= 8;
  }

  while (v5 != v6);
  return result;
}

uint64_t *Recognizer::doBackward(Recognizer *this)
{
  v2 = Recognizer::setRightGermsBackward(this);
  DgnDelete<RecogGermIterator>(*(this + 48));
  v3 = MemChunkAlloc(0x30uLL, 0);
  *(v3 + 2) = 0;
  *(v3 + 32) = 0;
  v3[3] = 0;
  *v3 = &unk_287524340;
  v3[5] = this + 584;
  *(v3 + 3) = *(this + 148);
  *(this + 48) = v3;
  Constraint::prunePreList(*(this + 277), v3, 1);
  DgnDelete<RecogGermIterator>(*(this + 47));
  *(this + 47) = 0;
  result = MemChunkAlloc(0x30uLL, 0);
  result[3] = 0;
  *result = &unk_2875253D0;
  result[5] = this + 2224;
  v5 = *(this + 558);
  *(result + 3) = v5;
  *(this + 47) = result;
  v26 = 0x3FFFFAFFFFFFLL;
  v27 = xmmword_26286CC40;
  v28 = 0;
  *v29 = 1310720000;
  *&v29[4] = 0;
  v30 = 0x70000000FFFFFFFELL;
  *(result + 32) = 0;
  *(result + 2) = 0;
  if (v5)
  {
    do
    {
      (*(*result + 16))(result, &v26);
      v24 = v26;
      v25 = v27;
      if (v26 >> 25 == 126)
      {
        v26 = 0x3FFFFCFFFFFDLL;
        v27 = xmmword_26286CC40;
      }

      v23 = 0;
      Legal = Constraint::getLegal(*(this + 277), &v24, 0, 0, &v23, *(this + 79), this + 308, 0, 0, 0, 0);
      if (v23)
      {
        v7 = Legal;
        v8 = *(Legal + 8);
        if (*(Legal + 8))
        {
          v9 = 0;
          do
          {
            v10 = *v7 + 16 * v9;
            if (*(v10 + 8))
            {
              v11 = 0;
              v12 = 40;
              do
              {
                v13 = *(*(this + 71) + 8 * *(*v10 + v12));
                Recognizer::seedOneBackward(this, v13, v9, &v26);
                if (*(this + 304) == 1 && v26 >> 25 != 126)
                {
                  Recognizer::seedOneBackward(this, v13, 0, &v26);
                }

                ++v11;
                v12 += 44;
              }

              while (v11 < *(v10 + 8));
            }

            ++v9;
          }

          while (v9 != v8);
        }
      }

      if (v2)
      {
        if (v24 >> 25 == 126 || (v14 = *(*(**VocMgr::smpVocMgr + ((v24 >> 22) & 0x3F8)) + 48), *(*(v14 + 32) + 2 * (v24 & 0xFFFFFF)) != 1) || *(*(v14 + 592) + 2 * (v24 & 0xFFFFFF)))
        {
          if (Constraint::getCanSeedFinalSilence(*(this + 277), &v24, *(this + 79)))
          {
            v16 = v26;
            v17 = v27;
            v18 = v28;
            v19 = *v29;
            v20 = *&v29[2];
            v21 = v30;
            v22 = v31;
            Recognizer::seedOneBackward(this, v2, 0, &v16);
          }
        }
      }

      result = *(this + 47);
      v15 = *(result + 2) + 1;
      *(result + 2) = v15;
      if (*(result + 32))
      {
        (*(*result + 24))(result);
        result = *(this + 47);
        v15 = *(result + 2);
      }
    }

    while (v15 != *(result + 3));
  }

  return result;
}

unsigned int *Recognizer::seedOneBackward(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v8 = *a4;
  if (v8 >> 25 == 126)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*(*(**VocMgr::smpVocMgr + ((v8 >> 22) & 0x3F8)) + 48) + 608) + 2 * (v8 & 0xFFFFFF));
  }

  result = *(a2 + 8);
  if (a3 || (*(a1 + 304) == 1 ? (v11 = (result[4] & 0xFE000000) == -67108864) : (v11 = 1), v11))
  {
    result = HmmNet::getNonSilOutPort(result, v9);
    v19 = result;
    v20 = 0;
  }

  else
  {
    v19 = **(result + 9);
    v20 = 1;
  }

  v12 = *(v19 + 4);
  if (*(a1 + 604) >= v12)
  {
    v13 = (*(**(a2 + 8) + 184))(*(a2 + 8));
    v14 = *(a1 + 612);
    v15 = v14;
    if (v20)
    {
      v15 = (*(**(a2 + 8) + 104))(*(a2 + 8));
    }

    v16 = *v19;
    v17 = *(a2 + 8);
    LOBYTE(v22[0]) = 0;
    v18 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v16, (v17 + 16), v15 != v14, v15, v14, v22);
    if (LOBYTE(v22[0]) == 1)
    {
      ++*(a1 + 1212);
    }

    v22[0] = &unk_2875254F8;
    v22[1] = a2;
    return Recognizer::seedOneFromPort(a1, v22, a3, v13 + v12, 0, 0, 0, 0, 0, v18, a4, v21, 20000);
  }

  return result;
}

unsigned int *Recognizer::seedOneFromPort(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, int a12, int a13)
{
  result = (*(*a2 + 24))(a2);
  v21 = result;
  v22 = *(a1 + 600);
  if (a13 == 20000)
  {
    v23 = 0;
  }

  else
  {
    v23 = a13;
  }

  v24 = (a5 + a4 + a6 + a7 - a8 + v23);
  if (a13 != 20000)
  {
    v22 += *(a1 + 72);
  }

  if (*(a1 + 304) == 1)
  {
    v25 = a9;
    if (a9 == -1)
    {
      v22 = 5000;
LABEL_13:
      a4 = v24;
      goto LABEL_17;
    }

    v26 = *(a11 + 28);
    if (v26 == 20000)
    {
      if (!*(a1 + 165))
      {
        v25 = 0;
      }

      v22 -= v25;
      goto LABEL_13;
    }

    if (!*(a1 + 164))
    {
      v26 = 0;
    }

    a4 = v26 + v24;
    v22 -= a9;
  }

LABEL_17:
  if (a4 <= v22)
  {
    v27 = *(a11 + 4);
    v43 = *a11;
    v44 = v27;
    v45 = *(a11 + 8);
    if (v43 >> 25 == 126)
    {
      Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(a1 + 280) + 303024, &v43);
      if (!*Bucket || (v29 = *(*Bucket + 40)) == 0)
      {
        v30 = *(a1 + 280);
        if (*(a1 + 304))
        {
          v31 = Active::newActiveWordSilence(v30, &v43);
        }

        else
        {
          v31 = Active::newActiveWordNonAcoustic(v30, &v43);
        }

        v29 = v31;
      }
    }

    else
    {
      if (*(a1 + 166) == 1)
      {
        HIWORD(v44) = a3;
      }

      v42 = 0xFFFFFFFE00000000;
      v32 = MergedActive::convertToMergedCWIDAC((a1 + 392), &v43, &v42);
      v33 = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(a1 + 280) + 303024, &v43);
      if (!*v33 || (v29 = *(*v33 + 40)) == 0)
      {
        v34 = *(a1 + 280);
        if (*(a1 + 304))
        {
          if (*(a1 + 312))
          {
            v35 = 0;
          }

          else
          {
            v35 = *(a1 + 25);
          }

          v36 = Active::newActiveWord(v34, &v43, a8, *(a1 + 76), v35 & 1);
        }

        else
        {
          v36 = Active::newActiveWordNonAcoustic(v34, &v43);
        }

        v29 = v36;
      }

      if (v32)
      {
        v37 = v21[3];
        v40 = (*v21 >> 25) | (v21[2] << 32);
        v41 = v37;
        MergedStateTransition::updateMergedStateTransition(*(v29 + 3), &v40, &v42);
        MaxEndTime = Constraint::getMaxEndTime(*(a1 + 2216), a11);
        v39 = *(v29 + 8);
        if (v39 <= MaxEndTime)
        {
          v39 = MaxEndTime;
        }

        *(v29 + 8) = v39;
        if (Constraint::getSuccessorRecursivePrefilteringAllowed(*(a1 + 2216), a11))
        {
          *(v29 + 36) = 1;
        }
      }
    }

    return (*(*v29 + 24))(v29, a3, v24, a10);
  }

  return result;
}

BOOL MergedActive::convertToMergedCWIDAC(MergedActive *a1, unsigned int *a2, unsigned int *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  result = MergedActive::isCWIDAllowMerge(a1, *a2);
  if (result)
  {
    v8 = *(*(**VocMgr::smpVocMgr + ((v6 >> 22) & 0x3F8)) + 56);
    v9 = a2[2];
    *a3 = v9;
    if (*(a1 + 128) == 1)
    {
      result = MergedActive::isStateAllowMerge(a1, v8, v9);
      if (result)
      {
        *(a2 + 2) = 0x3FFF;
        a2[2] = -1;
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    a3[1] = a2[3];
    if (*(a1 + 129) == 1)
    {
      a2[3] = -3;
      return 1;
    }
  }

  return result;
}

uint64_t Recognizer::seedFromOnePredToOnePhoneForward(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t *a8)
{
  v8 = *(a8 + 2);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = v8 + 1;
    v13 = 44 * v8;
    do
    {
      v14 = *a8;
      v15 = (*a8 + v13 - 44);
      if (*(v11 + 361) != 1 || (result = *(v11 + 2216), (*(result + 68) & 0xFFFFFFFD) != 0) || (result = Constraint::isPrecedingNonAcousticWordRequiredForState(result, (*a8 + v13 - 44)), (result & 1) == 0))
      {
        if (a6 == -2)
        {
          v16 = 0;
        }

        else
        {
          result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v11 + 2216), v15, *(v11 + 324) + a4);
          v16 = result;
        }

        if (a7 == -2 || (v18 = *v15, v18 >> 25 != 126) && (v19 = *(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 48), v20 = v18 & 0xFFFFFF, *(*(v19 + 32) + 2 * v20) == 1) && !*(*(v19 + 592) + 2 * v20))
        {
          v17 = 0;
        }

        else
        {
          result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v11 + 2216), v15, *(v11 + 324) + a5);
          v17 = result;
        }

        if ((v16 | v17))
        {
          result = SearchLMScorer::lmScoreNonSilCwidac(v11 + 624, v15, (v11 + 1056));
          v21 = result;
          if (v16)
          {
            result = Recognizer::seedOneFromPort(v11, a2, a3, a4, result, *(v14 + v13 - 18), *(v11 + 152), *(v11 + 48), *(v11 + 156), a6, v15, v22, 20000);
          }

          if (v17)
          {
            result = Recognizer::seedOneFromPort(v11, a2, 0, a5, v21, *(v14 + v13 - 18), *(v11 + 152), *(v11 + 48), *(v11 + 156), a7, v15, v22, 20000);
          }
        }
      }

      --v12;
      v13 -= 44;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t Recognizer::seedFromOnePredToOnePhoneWithNonAcousticWordForward(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t *a8, int a9, int **a10)
{
  v10 = *(a8 + 2);
  if (v10 >= 1)
  {
    v12 = result;
    v13 = v10 + 1;
    v14 = 44 * v10;
    do
    {
      result = *(v12 + 2216);
      if ((*(result + 68) & 0xFFFFFFFD) == 0)
      {
        v15 = *a8;
        v16 = (*a8 + v14 - 44);
        result = Constraint::isPrecedingNonAcousticWordValidForState(result, v16, a9);
        if (result)
        {
          if (*(v15 + v14 - 24) != -83886084)
          {
            if (a6 == -2)
            {
              v17 = 0;
            }

            else
            {
              result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v12 + 2216), v16, *(v12 + 324) + a4);
              v17 = result;
            }

            if (a7 == -2)
            {
              v18 = 0;
            }

            else
            {
              result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v12 + 2216), v16, *(v12 + 324) + a5);
              v18 = result;
            }

            if ((v17 | v18))
            {
              v19 = SearchLMScorer::lmScoreNonSilCwidac(v12 + 624, v16, (v12 + 1056));
              result = *(v12 + 2216);
              if ((*(result + 68) & 0xFFFFFFFD) != 0 || (v20 = v19, result = Constraint::getWeightsForState(result, v16), v19 = v20, result == 0xFFFF))
              {
                v21 = *a10;
              }

              else
              {
                v21 = &(*a10)[result];
              }

              v22 = *v21;
              v23 = *(v12 + 68);
              if (v23 == -1 || v22 + v19 <= v23)
              {
                if (v17)
                {
                  v24 = v19;
                  result = Recognizer::seedOneFromPort(v12, a2, a3, a4, v19, *(v15 + v14 - 18), *(v12 + 152), *(v12 + 48), *(v12 + 156), a6, v16, v25, v22);
                  v19 = v24;
                }

                if (v18)
                {
                  result = Recognizer::seedOneFromPort(v12, a2, 0, a5, v19, *(v15 + v14 - 18), *(v12 + 152), *(v12 + 48), *(v12 + 156), a7, v16, v25, v22);
                }
              }
            }
          }
        }
      }

      --v13;
      v14 -= 44;
    }

    while (v13 > 1);
  }

  return result;
}

void *Recognizer::seedFromOnePredForward(uint64_t a1, uint64_t a2, signed int a3)
{
  v5 = VocMgr::smpVocMgr;
  v6 = (*(*a2 + 24))(a2);
  v8 = *v6;
  v7 = v6[1];
  v306 = *v6;
  v307 = v7;
  v308 = *(v6 + 2);
  v274 = *(a1 + 604);
  v278 = a2;
  v9 = (*(*a2 + 16))(a2);
  v10 = (*(**(v9 + 8) + 184))(*(v9 + 8));
  if (*(a1 + 312))
  {
    v261 = 0;
  }

  else
  {
    v261 = *(a1 + 25);
  }

  v11 = v8 & 0xFE000000;
  v12 = v8 & 0xFFFFFF;
  v13 = (v8 & 0xFFFFFF) == 0xFFFFF8 || (v8 & 0xFE000000) != -67108864;
  if (v11 == -67108864 || v12 == 16777208)
  {
    v266 = 0;
  }

  else
  {
    v15 = (v8 >> 22) & 0x3F8;
    v266 = *(*(*(*(**v5 + v15) + 48) + 608) + 2 * v12);
    v16 = *(*(**VocMgr::smpVocMgr + v15) + 48);
    if (*(*(v16 + 32) + 2 * v12) == 1)
    {
      v13 = 0;
      v17 = 0;
      v18 = 0;
      if (!*(*(v16 + 592) + 2 * v12))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  if (Constraint::getCanSeedFinalSilence(*(a1 + 2216), v6, *(a1 + 288) + *(a1 + 316)))
  {
    v18 = (v11 != -67108864) & *(a1 + 673);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  v257 = v17;
  v304 = 0;
  v305 = 0;
  v302 = 0x70000000FFFFFFFELL;
  v303 = 1879048192;
  v301 = 0;
  v19 = (a1 + 2288);
  *(a1 + 2296) = 0;
  v272 = a1;
  v263 = v10;
  v259 = (a1 + 2288);
  if (v274 >= a3)
  {
    v29 = *(a1 + 2216);
    if ((*(v29 + 68) & 0xFFFFFFFD) != 0)
    {
      SeededWeights = 0;
    }

    else
    {
      SeededWeights = Constraint::getSeededWeights(v29, v6, *(a1 + 288) + *(a1 + 316));
    }

    if (*(a1 + 304) == 1)
    {
      v299 = 0;
      v300 = 0;
      v30 = *(a1 + 544);
      v267 = v6;
      Legal = Constraint::getLegal(*(a1 + 2216), v6, *(a1 + 36), 1u, &v301, (*(a1 + 288) + *(a1 + 316)), (a1 + 1232), a1 + 536, (a1 + 552), a1 + 2360, 0);
      v271 = (a1 + 536);
      v264 = v5;
      if (v8 == -50331650 && *(a1 + 2368))
      {
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v33 = (*(*v278 + 32))(v278, v266, *(a1 + 604));
          v34 = v33;
          if (v33)
          {
            break;
          }

          ++v32;
          v31 += 12;
          if (v32 >= *(a1 + 2368))
          {
            goto LABEL_39;
          }
        }

        if ((v261 & 1) != 0 && (*(*(v9 + 8) + 114) & 1) == 0)
        {
          v47 = -2;
        }

        else
        {
          v47 = *(v33 + 4);
        }

        v228 = *(v33 + 8);
        HIDWORD(v302) = v47;
        v229 = *v33;
        v230 = *(a1 + 612);
        LOBYTE(v288) = 0;
        v231 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v229, v6, 0, v230, v230, &v288);
        if (v288 == 1)
        {
          ++*(v272 + 1212);
        }

        v232 = (*(v272 + 2360) + v31);
        v233 = *v232;
        v234 = *(v232 + 2);
        v235 = *(v272 + 612);
        v236 = *(v272 + 2352);
        if (v236 == *(v272 + 2356))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v272 + 2344, 1, 1);
          v236 = *(v272 + 2352);
        }

        v237 = v263 + v228;
        v238 = *(v272 + 2344) + 28 * v236;
        *v238 = v233;
        *(v238 + 8) = v234;
        *(v238 + 12) = v263 + v228;
        *(v238 + 16) = v266;
        *(v238 + 20) = v231;
        *(v238 + 24) = v235;
        ++*(v272 + 2352);
        v239 = **(v272 + 256);
        v240 = *(v272 + 2300);
        if (v239 > v240)
        {
          DgnArray<RuleDesc>::reallocElts(v259, v239 - v240, 0);
        }

        v241 = *(v272 + 2296);
        if (v241 < v239)
        {
          v242 = v239 - v241;
          v243 = 12 * v241;
          do
          {
            v244 = *v259 + v243;
            *v244 = 0x70000000FFFFFFFELL;
            *(v244 + 8) = 1879048192;
            v243 += 12;
            --v242;
          }

          while (v242);
        }

        *(v272 + 2296) = v239;
        if (v239)
        {
          v245 = 0;
          do
          {
            v246 = *(v272 + 324) + v237;
            v247 = *(v34 + 4);
            if (*(*(v9 + 8) + 114))
            {
              v248 = *(v34 + 4);
            }

            else
            {
              v248 = -2;
            }

            if (v261)
            {
              v247 = v248;
            }

            v249 = (*(v272 + 2288) + v245);
            v249[1] = v247;
            v249[2] = v246;
            *v249 = v231;
            v245 += 12;
          }

          while (12 * v239 != v245);
        }

        Recognizer::dropCrumbs(v272, v267, a3, v263, &v302, v259);
        goto LABEL_346;
      }

LABEL_39:
      if (v13)
      {
        v297 = 0;
        v298 = 0;
        v295 = 0;
        v296 = 0;
        v293 = 0;
        v294 = 0;
        v292 = -2;
        v290 = 0;
        v291 = 0;
        (*(*v278 + 40))(v278, &v297, &v295, &v292, &v293, &v290);
        v35 = v292;
        v280 = v298;
        v36 = v264;
        v37 = v298 >= 1 && *v297 == -50331651;
        v39 = v6;
        if (v298 <= (v37 + 1))
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v290);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v295);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v297);
LABEL_346:
          DgnIArray<Utterance *>::~DgnIArray(&v299);
          return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v304);
        }

        HIDWORD(v288) = 0x3FFF;
        v289 = xmmword_26286CC40;
        v255 = (*(*v278 + 32))(v278, 0, *(a1 + 604));
        v48 = v292;
        if (!*(a1 + 2300))
        {
          DgnArray<RuleDesc>::reallocElts(v259, 1, 0);
        }

        if (!*(a1 + 2296))
        {
          v49 = *v259;
          *v49 = 0x70000000FFFFFFFELL;
          *(v49 + 8) = 1879048192;
        }

        *(a1 + 2296) = 1;
        v50 = v37;
        v51 = (v280 - 2);
        v52 = v297;
        if (v51 > v37)
        {
          v53 = 0;
          v251 = *(*(**VocMgr::smpVocMgr + ((*(v297 + v37) >> 22) & 0x3F8)) + 48);
          v277 = -50331650;
          v40 = (a1 + 536);
          v253 = v50;
          while (1)
          {
            v54 = *(v295 + 4 * v51);
            *(a1 + 2296) = 0;
            if ((*(v297 + v51) & 0xFFFFFF) != 0xFFFFF9)
            {
              break;
            }

            --v51;
LABEL_90:
            if (v51 <= v50)
            {
              v52 = v297;
              v39 = v267;
              v36 = v264;
              v72 = v277;
              goto LABEL_94;
            }
          }

          LODWORD(v288) = *(v297 + v51);
          HIDWORD(v288) = 0x3FFF;
          v289 = xmmword_26286CC40;
          LODWORD(v289) = *((*(*v278 + 24))(v278) + 8);
          HIDWORD(v289) = *(v297 + v51) & 0xFE000000 | *(v290 + v51) & 0xFFFFFF;
          DWORD2(v289) = v277;
          v277 = *(v297 + v51);
          v55 = *(*(a1 + 328) + 4 * *(v295 + 4 * v51));
          LOBYTE(v286) = 0;
          v35 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v35, &v288, 0, v54 + 1, v54 + 1, &v286);
          if (v286 == 1)
          {
            ++*(a1 + 1212);
          }

          v56 = *(v293 + 4 * v51);
          if (*(*(v9 + 8) + 114))
          {
            v57 = *(v255 + 4);
          }

          else
          {
            v57 = -2;
          }

          if (v261)
          {
            v58 = v57;
          }

          else
          {
            v58 = *(v255 + 4);
          }

          v59 = *(v297 + (v51 - 1)) & 0xFFFFFF;
          if (v59 == 16777209)
          {
            if (v51 < 2)
            {
              goto LABEL_78;
            }

            v60 = *(v297 + v51 - 2);
            if (v60 == -50331651)
            {
              goto LABEL_78;
            }

            v59 = v60 & 0xFFFFFF;
          }

          v53 = *(*(v251 + 592) + 2 * v59);
LABEL_78:
          v61 = v53 + 1;
          v62 = *(v272 + 2300);
          if (v62 <= v53)
          {
            DgnArray<RuleDesc>::reallocElts(v259, v61 - v62, 0);
          }

          v63 = *(v272 + 2296);
          if (v63 <= v53)
          {
            v64 = v53 - v63 + 1;
            v65 = 12 * v63;
            do
            {
              v66 = *v259 + v65;
              *v66 = 0x70000000FFFFFFFELL;
              *(v66 + 8) = 1879048192;
              v65 += 12;
              --v64;
            }

            while (v64);
          }

          v67 = v56 + v55;
          a1 = v272;
          *(v272 + 2296) = v61;
          v68 = (*(v272 + 2288) + 12 * v53);
          v68[1] = v58;
          v68[2] = v67;
          *v68 = v35;
          v69 = *(v295 + 4 * v51);
          v286 = 0;
          v287 = 0;
          v284 = 0;
          v285 = 0;
          v282 = 0;
          v283 = 0;
          CWIDCrumbBank::getFrameInfo(*(v272 + 368), 0, v69, &v286, &v284, &v282);
          if (v287)
          {
            v70 = 0;
            v71 = 0;
            while (!CWIDAC::operator==(v286 + v70, &v288) || CWIDCrumbBank::getHistory(*(v272 + 368), v69, v286 + v70, v53) != v35)
            {
              ++v71;
              v70 += 24;
              if (v71 >= v287)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
LABEL_88:
            CWIDCrumbBank::addCrumbWACSRecordEFst(*(v272 + 368), v69, &v288, *(v293 + 4 * v51) + v263, &v302, v259, v53);
          }

          DgnIArray<Utterance *>::~DgnIArray(&v282);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v284);
          DgnIArray<Utterance *>::~DgnIArray(&v286);
          --v51;
          v48 = v35;
          v40 = v271;
          v50 = v253;
          goto LABEL_90;
        }

        v72 = -50331650;
        v40 = (a1 + 536);
LABEL_94:
        v73 = *(v52 + v50);
        v19 = v259;
        if ((v73 & 0xFFFFFF) != 0xFFFFF9)
        {
          v74 = v39[2];
          v306 = v73;
          v307 = 0x3FFF;
          *&v308 = v74 | 0xFFFFFFFE00000000;
          *(&v308 + 1) = v72 | 0xFAFFFFFC00000000;
        }

        v75 = **(*((*(*v278 + 16))(v278) + 8) + 72);
        *v75 = v48;
        v75[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v290);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v295);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v297);
      }

      else
      {
        v280 = 0;
        v39 = v6;
        v36 = v264;
        v40 = (a1 + 536);
      }

      if (*(a1 + 361) == 1 && (v76 = *(a1 + 2216), (*(v76 + 68) & 0xFFFFFFFD) == 0) && ((v220 = *v39, v220 >> 25 == 126) || (v221 = *(*(**VocMgr::smpVocMgr + ((v220 >> 22) & 0x3F8)) + 48), v222 = v220 & 0xFFFFFF, *(*(v221 + 32) + 2 * v222) != 1) || *(*(v221 + 592) + 2 * v222)))
      {
        SeededPrecedingNonAcousticWords = Constraint::getSeededPrecedingNonAcousticWords(v76, v39);
      }

      else
      {
        SeededPrecedingNonAcousticWords = 0;
      }

      if (v30 < *(a1 + 544))
      {
        do
        {
          if (!PhnMgr::operator==(*(a1 + 256), *(**v36 + 8 * *(*(a1 + 536) + 2 * v30)) + 184))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 5223, "kernel/recog", 4, "%u", *(*v40 + 2 * v30));
          }

          ++v30;
        }

        while (v30 < *(a1 + 544));
      }

      DgnIArray<Utterance *>::~DgnIArray(&v299);
      v10 = v263;
      v25 = Legal;
    }

    else
    {
      v25 = Constraint::getLegal(*(a1 + 2216), v6, 0, 0, &v301, (*(a1 + 288) + *(a1 + 316)), (a1 + 1232), 0, 0, 0, 0);
      SeededPrecedingNonAcousticWords = 0;
      v280 = 0;
    }

    v77 = *(v25 + 8);
    if (v77)
    {
LABEL_109:
      v28 = v77;
      v80 = *(a1 + 2300);
      if (v28 > v80)
      {
        DgnArray<RuleDesc>::reallocElts(v19, v28 - v80, 0);
      }

      v24 = SeededPrecedingNonAcousticWords;
      v21 = v9;
      v81 = *(a1 + 2296);
      if (v81 < v28)
      {
        v82 = v28 - v81;
        v83 = 12 * v81;
        do
        {
          v84 = *v19 + v83;
          *v84 = 0x70000000FFFFFFFELL;
          *(v84 + 8) = 1879048192;
          v83 += 12;
          --v82;
        }

        while (v82);
      }

      *(a1 + 2296) = v28;
      v26 = (a1 + 624);
      v27 = (a1 + 1056);
      v288 = (a1 + 624);
      LOBYTE(v289) = 1;
      v23 = v280;
      goto LABEL_115;
    }

    v78 = v25;
    if (*(v25 + 12))
    {
      goto LABEL_107;
    }

    DgnArray<DgnPrimArray<double>>::reallocElts(v25, 1, 0);
    v91 = *(v25 + 8);
    if (v91 > 1)
    {
      if (v91 >= 2)
      {
        v92 = 16 * v91 - 16;
        do
        {
          --v91;
          DgnIArray<Utterance *>::~DgnIArray(*v78 + v92);
          v92 -= 16;
        }

        while (v91 > 1);
      }

      goto LABEL_108;
    }

    if (!v91)
    {
LABEL_107:
      v79 = *v25;
      *v79 = 0;
      v79[1] = 0;
    }

LABEL_108:
    LOWORD(v77) = 1;
    *(v78 + 8) = 1;
    v25 = v78;
    goto LABEL_109;
  }

  if (v18 && (v20 = *(a1 + 2216), (*(v20 + 68) & 0xFFFFFFFD) == 0))
  {
    WeightsForState = Constraint::getWeightsForState(v20, v6);
    if (WeightsForState != 0xFFFF)
    {
      v42 = *v6 >> 25;
      v43 = v42 + 1;
      if (HIDWORD(v305) <= v42)
      {
        v288 = 0;
        HIDWORD(v305) = realloc_array(v304, &v288, 16 * v43, 16 * v305, 16 * v305, 1) >> 4;
        v304 = v288;
      }

      v44 = v9;
      v45 = v305;
      if (v305 <= v43)
      {
        if (v305 <= v42)
        {
          v223 = v42 - v305 + 1;
          v224 = 16 * v305;
          do
          {
            v225 = (v304 + v224);
            *v225 = 0;
            v225[1] = 0;
            v224 += 16;
            --v223;
          }

          while (v223);
        }
      }

      else if (v305 > v43)
      {
        v46 = 16 * v305 - 16;
        do
        {
          --v45;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v304 + v46);
          v46 -= 16;
        }

        while (v45 > v43);
      }

      LODWORD(v305) = v42 + 1;
      v226 = (v304 + 16 * v42);
      v227 = *(v226 + 2);
      v9 = v44;
      v19 = (a1 + 2288);
      if (v227 == *(v226 + 3))
      {
        DgnPrimArray<unsigned int>::reallocElts(v304 + 16 * v42, 1, 1);
        v227 = *(v226 + 2);
      }

      *(*v226 + 4 * v227) = WeightsForState;
      ++*(v226 + 2);
    }

    SeededWeights = &v304;
  }

  else
  {
    SeededWeights = 0;
  }

  if (!*(a1 + 2300))
  {
    DgnArray<RuleDesc>::reallocElts(v19, 1, 0);
  }

  v21 = v9;
  if (!*(a1 + 2296))
  {
    v22 = *v19;
    *v22 = 0x70000000FFFFFFFELL;
    *(v22 + 8) = 1879048192;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v279 = 0;
  v270 = 0;
  v276 = 0;
  v254 = 0;
  *(a1 + 2296) = 1;
  v26 = (a1 + 624);
  v288 = (a1 + 624);
  v27 = (a1 + 1056);
  LOBYTE(v289) = v18;
  LODWORD(v28) = 0xFFFF;
  if (v18)
  {
LABEL_115:
    v254 = 1;
    v85 = v27;
    SearchLMScorer::setContext(v26, 0xFAFFFFFC, &v306, v25, 1, SeededWeights, v27, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    v27 = v85;
    v279 = v23;
    v270 = v24;
    v276 = v25;
  }

  v148 = v274 < a3;
  v260 = v28;
  v273 = v27;
  v275 = v26;
  if (v148)
  {
    v268 = 0;
    v265 = 20000;
    v86 = v21;
    goto LABEL_160;
  }

  v268 = 0;
  v265 = 20000;
  v86 = v21;
  if (*(a1 + 304) == 1 && v266)
  {
    v87 = v27;
    v88 = (*(*v278 + 32))(v278, 0xFFFFLL, *(a1 + 604));
    if (v88)
    {
      if (v261)
      {
        v89 = *(v21 + 8);
        if (v89[114] == 1)
        {
          v90 = *(v88 + 4);
        }

        else
        {
          v90 = -2;
        }
      }

      else
      {
        v90 = *(v88 + 4);
        v89 = *(v21 + 8);
      }

      v93 = *(v88 + 8);
      HIDWORD(v302) = v90;
      v94 = *v88;
      v95 = (*(*v89 + 104))(v89);
      v96 = *(a1 + 612);
      LOBYTE(v299) = 0;
      v97 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v94, &v306, 1, v95, v96, &v299);
      v265 = v10 + v93;
      if (v299 == 1)
      {
        ++*(a1 + 1212);
      }

      LODWORD(v302) = v97;
      v268 = 1;
    }

    else
    {
      v268 = 0;
      v265 = 20000;
    }

    v27 = v87;
  }

  if (v28)
  {
    v98 = v86;
    v99 = 0;
    v100 = 4;
    v101 = 8;
    v102 = v28;
    while (1)
    {
      v103 = (*v276 + v101);
      v105 = *v103;
      v104 = (v103 - 2);
      if (!v105 && !v279 && (v99 != 0) | (*(a1 + 304) ^ 1) & 1)
      {
        goto LABEL_158;
      }

      v106 = (*(*v278 + 32))(v278, v99, *(a1 + 604));
      v107 = v106;
      if (v106)
      {
        v108 = *(v106 + 8);
        v109 = *v106;
        v110 = *(a1 + 612);
        LOBYTE(v299) = 0;
        v111 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v109, &v306, 0, v110, v110, &v299);
        v112 = v111;
        if (v299 == 1)
        {
          ++*(a1 + 1212);
        }

        v113 = v263 + v108;
        v114 = *(a1 + 324) + v263 + v108;
        v115 = *(v107 + 4);
        if (*(*(v98 + 8) + 114))
        {
          v116 = *(v107 + 4);
        }

        else
        {
          v116 = -2;
        }

        if (v261)
        {
          v115 = v116;
        }

        v117 = (*(a1 + 2288) + v100);
        *v117 = v115;
        v117[1] = v114;
        *(v117 - 1) = v111;
        if (v111 != -2)
        {
          v268 = 1;
          v118 = v302;
          goto LABEL_157;
        }

        v268 = 1;
      }

      else
      {
        v113 = 20000;
      }

      v118 = v302;
      if (v302 != -2)
      {
        v112 = -2;
LABEL_157:
        Recognizer::seedFromOnePredToOnePhoneForward(a1, v278, v266, v113, v265, v112, v118, v104);
      }

LABEL_158:
      ++v99;
      v100 += 12;
      v101 += 16;
      if (v102 == v99)
      {
        v10 = v263;
        v86 = v98;
        v19 = v259;
        v27 = v273;
        v26 = v275;
        break;
      }
    }
  }

LABEL_160:
  if (v257)
  {
    v119 = v27;
    v120 = 600;
    if (*(a1 + 24))
    {
      v120 = 604;
    }

    v121 = (*(*v278 + 32))(v278, 0, *(a1 + v120));
    v122 = v121;
    if (v121)
    {
      v123 = *(v121 + 8);
      v124 = *v121;
      v125 = *(a1 + 612);
      LOBYTE(v299) = 0;
      v126 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v124, &v306, 0, v125, v125, &v299);
      v127 = v126;
      v128 = v10 + v123;
      if (v299 == 1)
      {
        ++*(a1 + 1212);
      }

      v129 = *(a1 + 324) + v128;
      v130 = *(v122 + 4);
      if (*(*(v86 + 8) + 114))
      {
        v131 = *(v122 + 4);
      }

      else
      {
        v131 = -2;
      }

      if (v261)
      {
        v130 = v131;
      }

      v132 = *(a1 + 2288);
      v132[1] = v130;
      v132[2] = v129;
      *v132 = v126;
      if (v254)
      {
        v133 = SearchLMScorer::lmScoreFinalSilence(v26, v119);
      }

      else
      {
        v133 = SearchLMScorer::lmScoreFinalSilenceWithoutActualLM(v26, 4211081212, &v306);
      }

      Recognizer::seedOneFromPort(a1, v278, v266, v128, v133, 0, 0, 0, *(a1 + 160), v127, a1 + 832, v250, 20000);
      v268 = 1;
    }
  }

  if (!v270 || !*(v270 + 8))
  {
    v164 = v265;
    goto LABEL_306;
  }

  v299 = 0;
  v300 = 0;
  v281 = *(a1 + 64) + *(a1 + 604);
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v296 = 0;
  v293 = 0;
  v294 = 0;
  v290 = 0;
  v291 = 0;
  v286 = 0;
  v287 = 0;
  v256 = v86;
  if (*(SeededWeights + 2))
  {
    v134 = v270;
    v135 = *(v270 + 8);
    if (v135 >= 1)
    {
      do
      {
        v136 = v135--;
        v137 = *(*v134 + 4 * v135) >> 25;
        if (v137 < *(SeededWeights + 2))
        {
          v138 = *SeededWeights + 16 * v137;
          v139 = *(v138 + 8);
          if (v139)
          {
            LODWORD(v298) = 0;
            v140 = v290;
            v258 = v136;
            if (!HIDWORD(v291))
            {
              v284 = 0;
              HIDWORD(v291) = realloc_array(v290, &v284, 4uLL, 4 * v291, 4 * v291, 1) >> 2;
              v140 = v284;
              v290 = v284;
            }

            v141 = 0;
            v142 = 0;
            LODWORD(v291) = 1;
            v143 = 20000;
            *v140 = 20000;
            do
            {
              v144 = *(*v138 + 4 * v141);
              v145 = SearchLMScorer::lmScoreNonAcousticWord(v275, *(*v270 + 4 * v135), v144, v273);
              v146 = v145;
              v147 = *(v272 + 60);
              v148 = v147 == -1 || v145 <= v147;
              v150 = v148 && v145 + a3 <= v281;
              v151 = v298;
              if (v298 == HIDWORD(v298))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v297, 1, 1);
                v151 = v298;
              }

              *(v297 + v151) = v144;
              v152 = v298;
              LODWORD(v298) = v298 + 1;
              if (v143 >= v146)
              {
                v153 = v146;
              }

              else
              {
                v153 = v143;
              }

              if (v152)
              {
                v143 = v153;
              }

              else
              {
                v143 = v146;
              }

              if (v144 == 0xFFFF)
              {
                v154 = v290;
              }

              else
              {
                v155 = v291;
                if (v291 <= v144)
                {
                  do
                  {
                    if (v155 == HIDWORD(v291))
                    {
                      DgnPrimArray<unsigned int>::reallocElts(&v290, 1, 1);
                      v155 = v291;
                    }

                    v156 = v290;
                    *(v290 + v155) = 20000;
                    v155 = v291 + 1;
                    LODWORD(v291) = v155;
                  }

                  while (v155 <= v144);
                }

                else
                {
                  v156 = v290;
                }

                v154 = v156 + v144;
              }

              v142 |= v150;
              *v154 = v146;
              ++v141;
            }

            while (v141 != v139);
            a1 = v272;
            v136 = v258;
            if (v142)
            {
              v157 = v296;
              if (v296 == HIDWORD(v296))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v295, 1, 1);
                v157 = v296;
              }

              v158 = (v295 + 16 * v157);
              *v158 = 0;
              v158[1] = 0;
              DgnPrimArray<int>::copyArraySlice(v158, &v297, 0, v298);
              LODWORD(v296) = v296 + 1;
              v159 = v294;
              if (v294 == HIDWORD(v294))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v293, 1, 1);
                v159 = v294;
              }

              *(v293 + 4 * v159) = v143;
              LODWORD(v294) = v294 + 1;
              v160 = v287;
              if (v287 == HIDWORD(v287))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v286, 1, 1);
                v160 = v287;
              }

              v161 = (v286 + 16 * v160);
              *v161 = 0;
              v161[1] = 0;
              DgnPrimArray<int>::copyArraySlice(v161, &v290, 0, v291);
              LODWORD(v287) = v287 + 1;
              v162 = *(*v270 + 4 * v135);
              v163 = v300;
              if (v300 == HIDWORD(v300))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v299, 1, 1);
                v163 = v300;
              }

              *(v299 + 4 * v163) = v162;
              LODWORD(v300) = v300 + 1;
            }
          }
        }

        v134 = v270;
      }

      while (v136 > 1);
    }
  }

  else
  {
    v284 = 0;
    v165 = realloc_array(0, &v284, 4uLL, 0, 0, 1);
    v290 = v284;
    LODWORD(v291) = 1;
    HIDWORD(v291) = v165 >> 2;
    if (!HIDWORD(v298))
    {
      v284 = 0;
      HIDWORD(v298) = realloc_array(v297, &v284, 4uLL, 4 * v298, 4 * v298, 1) >> 2;
      v297 = v284;
    }

    LODWORD(v298) = 1;
    v166 = *(v270 + 8);
    if (v166 >= 1)
    {
      v167 = v166 - 1;
      do
      {
        v168 = SearchLMScorer::lmScoreNonAcousticWord(v275, *(*v270 + 4 * v167), 0xFFFFLL, v273);
        v169 = v168;
        v170 = *(a1 + 60);
        if ((v168 <= v170 || v170 == -1) && v168 + a3 <= v281)
        {
          *v297 = 0xFFFF;
          v173 = v296;
          if (v296 == HIDWORD(v296))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v295, 1, 1);
            v173 = v296;
          }

          v174 = (v295 + 16 * v173);
          *v174 = 0;
          v174[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v174, &v297, 0, v298);
          LODWORD(v296) = v296 + 1;
          v175 = v294;
          if (v294 == HIDWORD(v294))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v293, 1, 1);
            v175 = v294;
          }

          *(v293 + 4 * v175) = v169;
          LODWORD(v294) = v294 + 1;
          *v290 = v169;
          v176 = v287;
          if (v287 == HIDWORD(v287))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v286, 1, 1);
            v176 = v287;
          }

          v177 = (v286 + 16 * v176);
          *v177 = 0;
          v177[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v177, &v290, 0, v291);
          LODWORD(v287) = v287 + 1;
          v178 = *(*v270 + 4 * v167);
          v179 = v300;
          if (v300 == HIDWORD(v300))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v299, 1, 1);
            v179 = v300;
          }

          *(v299 + 4 * v179) = v178;
          LODWORD(v300) = v300 + 1;
        }

        v180 = v167-- + 1;
      }

      while (v180 > 1);
    }
  }

  v181 = v300;
  if (v300 >= 1)
  {
    v10 = v263;
    if (v289)
    {
      SearchLMScorer::unsetContext(v288);
      v182 = v260;
      v181 = v300;
      LOBYTE(v289) = 0;
      v284 = 0;
      v285 = 0;
      if (v300 < 1)
      {
LABEL_304:
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v284);
        goto LABEL_305;
      }
    }

    else
    {
      LOBYTE(v289) = 0;
      v284 = 0;
      v285 = 0;
      v182 = v260;
    }

    v183 = v181;
    v184 = v182;
    while (1)
    {
      v185 = v183 - 1;
      v186 = *(v299 + 4 * (v183 - 1));
      if (v266 && (v187 = (*(*v278 + 32))(v278, 0xFFFFLL, (v281 - *(v293 + 4 * v185)))) != 0)
      {
        if (v302 == -2)
        {
          if (v261)
          {
            v188 = *(v256 + 8);
            if (v188[114] == 1)
            {
              v189 = *(v187 + 4);
            }

            else
            {
              v189 = -2;
            }
          }

          else
          {
            v189 = *(v187 + 4);
            v188 = *(v256 + 8);
          }

          v191 = *(v187 + 8);
          HIDWORD(v302) = v189;
          v192 = *v187;
          v193 = (*(*v188 + 104))(v188);
          v194 = *(a1 + 612);
          LOBYTE(v282) = 0;
          v195 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v192, &v306, 1, v193, v194, &v282);
          if (v282 == 1)
          {
            ++*(a1 + 1212);
          }

          v265 = v10 + v191;
          LODWORD(v302) = v195;
        }

        v190 = 1;
        v268 = 1;
      }

      else
      {
        v190 = 0;
      }

      v196 = (v295 + 16 * v185);
      if (*(v196 + 2) != 1)
      {
        break;
      }

      v197 = **v196;
      v198 = v285;
      if (v197 != 0xFFFF)
      {
        goto LABEL_272;
      }

      if (v285 >= 1)
      {
        v199 = 16 * v285 - 16;
        do
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(v284 + v199);
          v199 -= 16;
        }

        while (v199 != -16);
      }

      LODWORD(v285) = 0;
LABEL_285:
      v282 = v275;
      LOBYTE(v283) = 1;
      SearchLMScorer::setContext(v275, 0xFAFFFFFC, &v306, v276, 1, &v284, v273, 1, v186, 0xFAFFFFFC);
      if (v260)
      {
        v207 = 0;
        v208 = 8;
        do
        {
          if (v207)
          {
            v209 = (*v276 + v208);
            v211 = *v209;
            v210 = (v209 - 2);
            if (v211)
            {
              v212 = (*(*v278 + 32))(v278, v207, (v281 - *(v293 + 4 * v185)));
              if (v212)
              {
                v213 = *(v212 + 8);
                v214 = *v212;
                v215 = *(a1 + 612);
                LOBYTE(v292) = 0;
                v216 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v214, &v306, 0, v215, v215, &v292);
                if (v292 == 1)
                {
                  ++*(a1 + 1212);
                }

                v217 = v10 + v213;
                v268 = 1;
              }

              else
              {
                v216 = -2;
                v217 = 20000;
              }

              if (((v216 == -2) & ~v190) == 0)
              {
                if (v190)
                {
                  v218 = v302;
                }

                else
                {
                  v218 = -2;
                }

                Recognizer::seedFromOnePredToOnePhoneWithNonAcousticWordForward(a1, v278, v266, v217, v265, v216, v218, v210, *(v299 + 4 * v185), (v286 + 16 * v185));
              }
            }
          }

          ++v207;
          v208 += 16;
        }

        while (v184 != v207);
      }

      if (v283 == 1)
      {
        SearchLMScorer::unsetContext(v282);
      }

      v148 = v183-- <= 1;
      if (v148)
      {
        goto LABEL_304;
      }
    }

    v198 = v285;
LABEL_272:
    if (v198)
    {
      *(v284 + 4 * v198 - 2) = 0;
    }

    v200 = v186 >> 25;
    v201 = (v186 >> 25) + 1;
    if (HIDWORD(v285) <= (v186 >> 25))
    {
      v282 = 0;
      HIDWORD(v285) = realloc_array(v284, &v282, 16 * v201, 16 * v198, 16 * v198, 1) >> 4;
      v284 = v282;
      v198 = v285;
    }

    if (v198 <= v201)
    {
      if (v198 <= v200)
      {
        v204 = v200 - v198 + 1;
        v205 = 16 * v198;
        do
        {
          v206 = v284 + v205;
          *v206 = 0;
          v206[1] = 0;
          v205 += 16;
          --v204;
        }

        while (v204);
      }
    }

    else if (v198 > v201)
    {
      v202 = v198;
      v203 = 16 * v198 - 16;
      do
      {
        --v202;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v284 + v203);
        v203 -= 16;
      }

      while (v202 > v201);
    }

    LODWORD(v285) = (v186 >> 25) + 1;
    DgnPrimArray<int>::copyArraySlice(v284 + 2 * v200, (v295 + 16 * v185), 0, *(v295 + 16 * v185 + 8));
    a1 = v272;
    v10 = v263;
    goto LABEL_285;
  }

  LOWORD(v10) = v263;
LABEL_305:
  v19 = v259;
  v164 = v265;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v286);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v290);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v295);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v297);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v299);
LABEL_306:
  if ((v268 & 1) != 0 && *(a1 + 312) != 3)
  {
    if (v164 != 20000)
    {
      v303 = *(a1 + 324) + v164;
    }

    Recognizer::dropCrumbs(a1, &v306, a3, v10, &v302, v19);
  }

  if (v289 == 1)
  {
    SearchLMScorer::unsetContext(v288);
  }

  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v304);
}

void sub_2627B767C(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v1 - 184);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 144);
  _Unwind_Resume(a1);
}

uint64_t Recognizer::dropCrumbs(uint64_t a1, unsigned int *a2, __int16 a3, __int16 a4, _DWORD *a5, uint64_t *a6)
{
  v7 = *a2;
  if (v7 >> 25 == 126)
  {
    v8 = *(a1 + 368);
    v9 = *(a1 + 608);
    return CWIDCrumbBank::addCrumbWACSRecord(v8, v9, a2, a4 + a3, a5, a6);
  }

  v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v7 >> 22) & 0x3F8)) + 56) + 528) + 2 * a2[2]);
  v8 = *(a1 + 368);
  v9 = *(a1 + 608);
  if (v10 == 127)
  {
    return CWIDCrumbBank::addCrumbWACSRecord(v8, v9, a2, a4 + a3, a5, a6);
  }

  return CWIDCrumbBank::addCrumbWACSRecordEFst(*(a1 + 368), v9, a2, a4 + a3, a5, a6, 0xFFFFu);
}

HmmNet *Recognizer::doFinalSilForward(Recognizer *this)
{
  v2 = *(this + 35);
  v18 = 0x3FFFFCFFFFFDLL;
  v19 = xmmword_26286CC40;
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v2 + 303024, &v18);
  if (*result)
  {
    v4 = *(*result + 40);
    if (v4)
    {
      result = *(v4 + 8);
      if (*(result + 26) || *(result + 112) == 1)
      {
        result = HmmNet::getNonSilOutPort(result, 0);
        v5 = result;
        v6 = 0;
        v7 = *(this + 78);
        if (!v7)
        {
          v6 = *(this + 25);
        }

        v8 = *(result + 4);
        if ((*(this + 304) & 1) == 0)
        {
          v18 = &unk_2875254F8;
          *&v19 = v4;
          result = Recognizer::seedOneFromPort(this, &v18, 0, v8, 0, 0, 0, 0, 0, *result, this + 832, v17, 20000);
          v7 = *(this + 78);
        }

        if (v7 != 3)
        {
          v9 = *v5;
          v10 = *(v4 + 8);
          v11 = *(this + 153);
          LOBYTE(v18) = 0;
          v12 = HistoryMgr::extendHistory(*(this + 35) + 72, v9, (v10 + 16), 0, v11, v11, &v18);
          if (v18 == 1)
          {
            ++*(this + 303);
          }

          v13 = *(this + 81) + v8;
          *(this + 574) = 0;
          if (*(this + 575) || (DgnArray<RuleDesc>::reallocElts(this + 2288, 1, 0), !*(this + 574)))
          {
            v14 = *(this + 286);
            *v14 = 0x70000000FFFFFFFELL;
            *(v14 + 8) = 1879048192;
          }

          *(this + 574) = 1;
          v15 = v5[1];
          if (v6)
          {
            v15 = -2;
          }

          v16 = *(this + 286);
          v16[1] = v15;
          v16[2] = v13;
          *v16 = v12;
          return CWIDCrumbBank::addFinalSilHABS(*(this + 46), *(this + 152), *(v4 + 8) + 16, v12, v13);
        }
      }
    }
  }

  return result;
}

void Recognizer::doForward(uint64_t a1, uint64_t a2)
{
  DgnDelete<RecogGermIterator>(*(a1 + 376));
  *(a1 + 376) = 0;
  if (a2)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    *(v4 + 2) = 0;
    *(v4 + 32) = 0;
    v4[3] = 0;
    *v4 = &unk_287525768;
    v4[5] = a2;
    *(v4 + 3) = *(a2 + 8);
    *(a1 + 376) = v4;
    v5 = *(a1 + 2216);
  }

  else
  {
    v5 = *(a1 + 2216);
    v4 = 0;
  }

  Constraint::prunePreList(v5, v4, 0);
  v6 = *(a1 + 604);
  v7 = v6;
  if ((*(a1 + 24) & 1) == 0)
  {
    v7 = *(a1 + 600);
  }

  v8 = *(a1 + 392);
  if (v8)
  {
    *(a1 + 408) = 0;
    *(a1 + 416) = 1;
  }

  v9 = *(a1 + 280) + 303104;
  v10 = *(*(a1 + 280) + 303248);
  v11 = (v10 - 1);
  if (v10 - 1 >= 0)
  {
    do
    {
      v12 = *(*(v9 + 136) + 8 * v11);
      v13 = *(v12 + 1);
      v14 = *(v13 + 108);
      if (*(v13 + 104) || *(v13 + 112) == 1)
      {
        v15 = *(v13 + 16) == -50331651 || v7 < v14;
        if (!v15)
        {
          if (*(v13 + 24) == -1 || *(v13 + 28) == -3)
          {
            MergedActive::add((a1 + 392), v12);
          }

          else
          {
            v25[0] = &unk_2875254F8;
            v25[1] = v12;
            Recognizer::seedFromOnePredForward(a1, v25, v14);
          }

          if (v6 >= v14)
          {
            ++*(a1 + 1600);
          }
        }
      }

      v15 = v11-- < 1;
    }

    while (!v15);
    v8 = *(a1 + 392);
  }

  if (v8)
  {
    *(a1 + 416) = 2;
    v16 = *(a1 + 408);
    if (!v16)
    {
      goto LABEL_35;
    }

    for (i = 0; i != v16; ++i)
    {
      v18 = MergedActive::processMergedWord((a1 + 392), i, v7);
      v19 = *(v18 + 24);
      if (v19 >= 1)
      {
        v20 = v18;
        v21 = v19 - 1;
        do
        {
          v22 = *(v20 + 16);
          if (*(v22 + 2 * v21) != 20000)
          {
            *(v20 + 88) = v21;
            v23 = *(*(v20 + 8) + 24);
            *(v20 + 68) = 0x3FFF;
            *(v20 + 72) = *(*v23 + 8 * v21);
            Recognizer::seedFromOnePredForward(a1, v20, *(v22 + 2 * v21));
          }

          v24 = v21-- + 1;
        }

        while (v24 > 1);
      }
    }

    if (*(a1 + 392))
    {
LABEL_35:
      *(a1 + 416) = 0;
    }
  }
}

uint64_t *MergedActive::add(uint64_t *this, ActiveWord *a2)
{
  v3 = this;
  v4 = *(this + 4);
  if (v4 == *(this + 5))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts((this + 1), 1, 1);
    v4 = *(v3 + 16);
  }

  *(*(v3 + 8) + 8 * v4) = a2;
  *(v3 + 16) = v4 + 1;
  return this;
}

uint64_t MergedActive::processMergedWord(MergedActive *this, unsigned int a2, uint64_t a3)
{
  v6 = *(*(*(this + 1) + 8 * a2) + 8);
  v7 = (*(*v6 + 192))(v6);
  SeedMergedActiveWord::processMergedWord((this + 32), *(*(this + 1) + 8 * a2), *this, v7, a3);
  return this + 32;
}

uint64_t Recognizer::setConstraint(Constraint **this, Constraint *a2)
{
  result = DgnDelete<Constraint>(this[277]);
  this[277] = a2;
  if (a2)
  {
    result = Constraint::setupConstraint(a2);
    v5 = *(this + 168) == 1 && (*(this[277] + 17) & 0xFFFFFFFD) == 0;
    v7 = *(this + 169) == 1 && (v6 = this[277], (*(v6 + 17) & 0xFFFFFFFD) == 0) && *(v6 + 27) != 0;
    if (v5 || v7)
    {
      result = MergedActive::initMergedActive((this + 49), this[35] + 72, v5, v7);
    }
  }

  *(this[35] + 37875) = this[277];
  return result;
}

uint64_t Recognizer::addCrumbsToPrefilterResult(CWIDCrumbBank **this, char a2, const PrefilterResult *a3, unsigned int a4, PrefilterResult *a5)
{
  result = CWIDCrumbBank::getLastFrame(this[46]);
  if ((a2 & 1) == 0 && (this[288] & 1) == 0)
  {
    v9 = result + 1;
    if (result != -1)
    {
      if ((*a5 & 1) == 0 && !*(a5 + 4))
      {
        PrefilterResult::initEmpty(a5, v9);
      }

      v47 = 0;
      v48 = 0;
      v46[0] = 0;
      v46[1] = 0;
      v45[0] = 0;
      v45[1] = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v42 = a4 + 1;
        v10 = v9;
        do
        {
          v41 = v10;
          CWIDCrumbBank::getFrameInfo(this[46], 0, v10, &v47, v46, v45);
          if (v48)
          {
            v11 = 0;
            do
            {
              v12 = *(v47 + 24 * v11);
              if ((v12 + 0x8000000) >> 25 >= 5)
              {
                v13 = **(v45[0] + 24 * v11 + 16);
                if (v13 != -2)
                {
                  v31 = *(this[35] + 10);
                  v32 = (v31 + 36 * v13);
                  if (*v32 == -50331650 || (v33 = v32[8], v33 == -2))
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = *(v31 + 36 * v33 + 28);
                  }

                  PrefilterResult::addEntry(a5, v34, *(v47 + 24 * v11), 20000);
                  v35 = v42 + v34;
                  if (v34 >= a4)
                  {
                    v36 = v34 - a4;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (v35 >= v9)
                  {
                    v37 = v9;
                  }

                  else
                  {
                    v37 = v35;
                  }

                  while (v36 < v37)
                  {
                    if (a3)
                    {
                      GermsForFrame = PrefilterResult::getGermsForFrame(a3, v36);
                      v39 = *(GermsForFrame + 8);
                      if (v39)
                      {
                        v40 = (*GermsForFrame + 4);
                        while (*(v40 - 1) != v12)
                        {
                          v40 += 4;
                          if (!--v39)
                          {
                            goto LABEL_67;
                          }
                        }

                        PrefilterResult::addEntry(a5, v36, v12, *v40);
                      }
                    }

                    else
                    {
                      PrefilterResult::addEntry(a5, v36, v12, 20000);
                    }

LABEL_67:
                    ++v36;
                  }
                }

                v14 = v45[0];
                v15 = *(v45[0] + 24 * v11);
                if (v15)
                {
                  v16 = 0;
                  do
                  {
                    v17 = *(v15 + 8);
                    v18 = *(v14 + 24 * v11 + 16);
                    if (v18)
                    {
                      v19 = (v17 + 1);
                    }

                    else
                    {
                      v19 = v17;
                    }

                    if (v16 >= v19)
                    {
                      break;
                    }

                    if (v16 != v17)
                    {
                      v18 = (*v15 + 12 * v16);
                    }

                    if (v18)
                    {
                      if (v18[2] != 1879048192)
                      {
                        v20 = *v18;
                        if (v20 != -2)
                        {
                          v21 = *(this[35] + 10);
                          v22 = (v21 + 36 * v20);
                          if (*v22 == -50331650 || (v23 = v22[8], v23 == -2))
                          {
                            v24 = 0;
                          }

                          else
                          {
                            v24 = *(v21 + 36 * v23 + 28);
                          }

                          PrefilterResult::addEntry(a5, v24, v12, 20000);
                          v25 = v42 + v24;
                          if (v24 >= a4)
                          {
                            v26 = v24 - a4;
                          }

                          else
                          {
                            v26 = 0;
                          }

                          if (v25 >= v9)
                          {
                            v27 = v9;
                          }

                          else
                          {
                            v27 = v25;
                          }

                          while (v26 < v27)
                          {
                            if (a3)
                            {
                              v28 = PrefilterResult::getGermsForFrame(a3, v26);
                              v29 = *(v28 + 8);
                              if (v29)
                              {
                                v30 = (*v28 + 4);
                                while (*(v30 - 1) != v12)
                                {
                                  v30 += 4;
                                  if (!--v29)
                                  {
                                    goto LABEL_45;
                                  }
                                }

                                PrefilterResult::addEntry(a5, v26, v12, *v30);
                              }
                            }

                            else
                            {
                              PrefilterResult::addEntry(a5, v26, v12, 20000);
                            }

LABEL_45:
                            ++v26;
                          }
                        }
                      }
                    }

                    ++v16;
                    v14 = v45[0];
                    v15 = *(v45[0] + 24 * v11);
                  }

                  while (v15);
                }
              }

              ++v11;
            }

            while (v11 < v48);
          }

          v10 = v41 - 1;
        }

        while (v41 > 0);
      }

      DgnIArray<Utterance *>::~DgnIArray(v45);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v46);
      return DgnIArray<Utterance *>::~DgnIArray(&v47);
    }
  }

  return result;
}

void sub_2627B820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::setEmbeddedTransducers(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    return DgnArray<StateSpec>::copyArraySlice(result + 297, a2, 0, *(a2 + 8));
  }

  return result;
}

void GermRecogGermIterator::~GermRecogGermIterator(GermRecogGermIterator *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void MergedActive::MergedActive(MergedActive *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  SeedMergedActiveWord::SeedMergedActiveWord((this + 32));
  *(this + 64) = 0;
}

void SeedMergedActiveWord::SeedMergedActiveWord(SeedMergedActiveWord *this)
{
  *this = &unk_287525AE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  DgnString::DgnString((this + 32));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 17) = 0x3FFF;
  *(this + 72) = xmmword_26286CC40;
  *(this + 22) = -1;
}

void SeedMergedActiveWord::~SeedMergedActiveWord(SeedMergedActiveWord *this)
{
  *this = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 48);
  BitArray::~BitArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

{
  *this = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 48);
  BitArray::~BitArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  JUMPOUT(0x26672B1B0);
}

uint64_t SeedMergedActiveWord::maybeGetActiveOutPort(SeedMergedActiveWord *this, unsigned int a2, int a3)
{
  if (a2 == 0xFFFF)
  {
    if (((*(*(this + 4) + ((*(this + 22) >> 3) & 0x1FFFFFFC)) >> *(this + 22)) & 1) == 0)
    {
      return 0;
    }

    result = **(*(*(this + 1) + 8) + 72);
  }

  else
  {
    result = HmmNet::maybeGetNonSilOutPort(*(*(this + 1) + 8), a2);
    if (((*(*(*(this + 6) + 16 * *(this + 22)) + 4 * (a2 >> 5)) >> a2) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(result + 8) > a3)
  {
    return 0;
  }

  return result;
}

void *MemChunkRegion::getCurrentRegion(MemChunkRegion *this)
{
  if (MemChunkRegion::smTlsID != -1)
  {
    v1 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v1)
    {
      result = *v1;
      if (result)
      {
        return result;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  return &gGlobalMemChunkRegion;
}

BOOL MergedActive::isCWIDAllowMerge(MergedActive *this, unsigned int a2)
{
  v2 = *(*(**VocMgr::smpVocMgr + 8 * (a2 >> 25)) + 48);
  v3 = a2 & 0xFFFFFF;
  if (*(v2[4] + 2 * (a2 & 0xFFFFFF)) < 2u)
  {
    return 0;
  }

  if (*(v2[74] + 2 * v3))
  {
    return 1;
  }

  return *(v2[76] + 2 * v3) != 0;
}

uint64_t SeedUnmergedActiveWord::maybeGetActiveOutPort(SeedUnmergedActiveWord *this, unsigned int a2, int a3)
{
  v4 = *(*(this + 1) + 8);
  if (a2 == 0xFFFF)
  {
    result = **(v4 + 9);
  }

  else
  {
    result = HmmNet::maybeGetNonSilOutPort(v4, a2);
  }

  if (*(result + 8) > a3)
  {
    return 0;
  }

  return result;
}

void *DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<CWIDCrumbWACSFrame>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

CWIDCrumbWACSFrame *DgnDelete<CWIDCrumbWACSFrame>(CWIDCrumbWACSFrame *result)
{
  if (result)
  {
    CWIDCrumbWACSFrame::~CWIDCrumbWACSFrame(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitLibrary_fst(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_arcgraph_fst();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_fstcore_fst();
  MrecInitModule_fstsrch_fst();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_fwdbwd_fst();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_virtmap_fst();
}

void MrecInitLibrarySet_throughFst(void)
{
  MrecInitLibrarySet_throughKernel();

  MrecInitLibrary_fst();
}

void FeatureFrame::~FeatureFrame(FeatureFrame *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t FeatureFrame::getScaledFeature(FeatureFrame *this, unsigned int a2, int a3, int a4, const BinaryIntScale *a5)
{
  if (*(this + 4) == 1)
  {
    LOBYTE(v5) = *(*(this + 1) + a2);
  }

  else
  {
    v6 = 1 << (*a5 - 1);
    if (!*a5)
    {
      LODWORD(v6) = 0;
    }

    v5 = (v6 + (a4 + *(*(this + 3) + 8 * a2) * a3)) >> *a5;
    if (v5 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    if (v5 >= 0x100)
    {
      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

uint64_t *FeatureFrame::scaleFeatureToUns8(uint64_t *this, void *a2, void *a3, BinaryIntScale *a4)
{
  v7 = this;
  v8 = *(this + 8);
  v9 = v8;
  if (*(this + 5) < v8)
  {
    v11 = 0;
    this = realloc_array(this[1], &v11, v8, *(this + 4), *(this + 4), 1);
    *(v7 + 5) = this;
    v7[1] = v11;
    v9 = *(v7 + 8);
  }

  *(v7 + 4) = v8;
  if (v9)
  {
    v10 = 0;
    do
    {
      this = FeatureFrame::getScaledFeature(v7, v10, *(*a2 + 4 * v10), *(*a3 + 4 * v10), a4);
      *(v7[1] + v10++) = this;
    }

    while (v10 < *(v7 + 8));
  }

  *(v7 + 4) = 1;
  return this;
}

void MrecInitModule_lookahsc_prefilt(void)
{
  if (!gParDebugPrefiltererLookahead)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugPrefiltererLookahead", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugPrefiltererLookahead = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugPrefiltererLookahead);
  }
}

uint64_t SimpleLookaheadScorer::SimpleLookaheadScorer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_2875256D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *(a2 + 40);
  *(a1 + 28) = a4;
  *(a1 + 32) = -16;
  v7 = *(a2 + 128);
  *(a1 + 40) = 0;
  v8 = (a1 + 40);
  *(a1 + 48) = 0;
  if (v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 40, v7, 0);
    v9 = *(a1 + 48);
    if (v9 > v7)
    {
      if (v9 > v7)
      {
        v10 = v9;
        v11 = 16 * v9 - 16;
        do
        {
          --v10;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v8 + v11);
          v11 -= 16;
        }

        while (v10 > v7);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v7)
  {
    v12 = v7 - v9;
    v13 = 16 * v9;
    do
    {
      v14 = (*v8 + v13);
      *v14 = 0;
      v14[1] = 0;
      v13 += 16;
      --v12;
    }

    while (v12);
  }

LABEL_11:
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  if (!a4)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    goto LABEL_19;
  }

  v15 = *(a2 + 128);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!v15)
  {
LABEL_19:
    LODWORD(v15) = 0;
    v16 = 0;
    goto LABEL_20;
  }

  DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 64, v15, 0);
  v16 = *(a1 + 72);
  if (v16 > v15)
  {
    if (v16 > v15)
    {
      v17 = v16;
      v18 = 16 * v16 - 16;
      do
      {
        --v17;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(a1 + 64) + v18);
        v18 -= 16;
      }

      while (v17 > v15);
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v16 < v15)
  {
    v19 = v15 - v16;
    v20 = (*(a1 + 64) + 16 * v16 + 8);
    do
    {
      *(v20 - 1) = 0;
      *v20 = 0;
      v20 += 4;
      --v19;
    }

    while (v19);
  }

LABEL_23:
  *(a1 + 72) = v15;
  *(a1 + 80) = 0u;
  v21 = **(*(a1 + 8) + 64);
  *(a1 + 96) = 0;
  v22 = v21 - 2;
  if (v21 != 2)
  {
    *(a1 + 88) = MemChunkAlloc(2 * (v21 - 2), 0);
    *(a1 + 96) = v22;
  }

  v23 = *(a2 + 40);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v23)
  {
    v26 = 0;
    *(a1 + 116) = realloc_array(0, &v26, v23, 0, 0, 1);
    *(a1 + 104) = v26;
  }

  v24 = *(a2 + 40);
  *(a1 + 120) = 0;
  *(a1 + 112) = v23;
  *(a1 + 128) = 0;
  if (v24)
  {
    DgnPrimArray<short>::reallocElts(a1 + 120, v24, 0);
  }

  *(a1 + 128) = v24;
  return a1;
}

void SimpleLookaheadScorer::~SimpleLookaheadScorer(SimpleLookaheadScorer *this)
{
  *this = &unk_2875256D8;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 8) = -16;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  ScoreFixArraySpinQueue::~ScoreFixArraySpinQueue((this + 64));
  FeatureArraySpinQueue::~FeatureArraySpinQueue((this + 40));
}

{
  SimpleLookaheadScorer::~SimpleLookaheadScorer(this);

  JUMPOUT(0x26672B1B0);
}

double SimpleLookaheadScorer::reset(SimpleLookaheadScorer *this)
{
  result = 0.0;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 8) = -16;
  return result;
}

void SimpleLookaheadScorer::printSize(SimpleLookaheadScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 125);
  if (v63)
  {
    v13 = v62;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v62);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 126);
  if (v63)
  {
    v19 = v62;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v62);
  *a4 += v15;
  *a5 += v15;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 127);
  if (v63)
  {
    v22 = v62;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v62);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 128);
  if (v63)
  {
    v24 = v62;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 129);
  if (v63)
  {
    v26 = v62;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, 4, 4, 0);
  v61 = a3;
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 138);
  if (v63)
  {
    v28 = v62;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, 4, 4, 0);
  DgnString::~DgnString(&v62);
  *a4 += 4;
  *a5 += 4;
  v29 = sizeObject<DgnPrimArray<unsigned char>>(this + 40, 0) + 8;
  v30 = sizeObject<DgnPrimArray<unsigned char>>(this + 40, 1) + 8;
  v62 = 0;
  v63 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v62);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 139);
  if (v63)
  {
    v32 = v62;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v16, &byte_262899963, v17, v17, v32, v29, v30, 0);
  DgnString::~DgnString(&v62);
  *a4 += v29;
  *a5 += v30;
  v33 = sizeObject<ScoreFixArray>(this + 64, 0) + 8;
  v34 = sizeObject<ScoreFixArray>(this + 64, 1) + 8;
  v62 = 0;
  LODWORD(v63) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v62);
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 140);
  if (v63)
  {
    v36 = v62;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v16, &byte_262899963, v17, v17, v36, v33, v34, 0);
  DgnString::~DgnString(&v62);
  *a4 += v33;
  *a5 += v34;
  v37 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 8;
  }

  v38 = *(this + 24);
  if (v38 <= 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = (2 * v38);
  }

  v40 = v37 + v39;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 142);
  if (v63)
  {
    v42 = v62;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v16, &byte_262899963, v17, v17, v42, v40, v40, 0);
  DgnString::~DgnString(&v62);
  *a4 += v40;
  *a5 += v40;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  else
  {
    v43 = 16;
  }

  v44 = *(this + 28);
  v45 = *(this + 29);
  v46 = v45 >= v44;
  v47 = v45 - v44;
  if (v46)
  {
    if (v44 > 0)
    {
      v48 = (v44 - 1) + v43 + 1;
    }

    else
    {
      v48 = v43;
    }

    v43 = v48 + v47;
    v44 = 0;
  }

  else
  {
    v48 = v43;
  }

  v49 = v44;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 143);
  if (v63)
  {
    v51 = v62;
  }

  else
  {
    v51 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v16, &byte_262899963, v17, v17, v51, v43, v48, v49);
  DgnString::~DgnString(&v62);
  *a4 += v43;
  *a5 += v48;
  *a6 += v49;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  else
  {
    v52 = 16;
  }

  v53 = *(this + 32);
  v54 = *(this + 33);
  if (v54 >= v53)
  {
    v55 = 0;
    if (v53 > 0)
    {
      v52 += 2 * (v53 - 1) + 2;
    }

    v56 = v52 + 2 * (v54 - v53);
  }

  else
  {
    v55 = 2 * v53;
    v56 = v52;
  }

  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 145);
  if (v63)
  {
    v58 = v62;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v16, &byte_262899963, v17, v17, v58, v56, v52, v55);
  DgnString::~DgnString(&v62);
  *a4 += v56;
  *a5 += v52;
  *a6 += v55;
  getShipObjectSizeDescription(&v62, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 147);
  if (v63)
  {
    v60 = v62;
  }

  else
  {
    v60 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v61, &byte_262899963, (35 - v61), (35 - v61), v60, *a4, *a5, *a6);
  DgnString::~DgnString(&v62);
}

void sub_2627B944C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *SimpleLookaheadScorer::scoreForLookahead(uint64_t *result, int a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  if (a3)
  {
    v8 = *(result + 15);
    v9 = *(result + 12);
    if (v8 >= v9)
    {
      v18 = *(result + 14);
      if (v18 + 1 < v9)
      {
        v10 = v18 + 1;
      }

      else
      {
        v10 = 0;
      }

      *(result + 14) = v10;
      v11 = v8 - 1;
    }

    else
    {
      *(result + 15) = v8 + 1;
      v10 = *(result + 14);
      v11 = v8;
    }

    result = DgnPrimArray<unsigned char>::copyArraySlice((result[5] + 16 * ((v11 + v10) % v9)), a3, 0, *(a3 + 8));
    if (*(v5 + 28))
    {
      v25 = 0;
      v26 = 0;
      DgnPrimArray<unsigned char>::copyArraySlice(&v25, a3, 0, *(a3 + 8));
      LODWORD(v26) = *(v5 + 24);
      SimpleLookaheadScorer::doScore(v5, &v25);
      v19 = *(v5 + 84);
      v20 = *(v5 + 72);
      if (v19 >= v20)
      {
        v22 = *(v5 + 80);
        if (v22 + 1 < v20)
        {
          v21 = v22 + 1;
        }

        else
        {
          v21 = 0;
        }

        *(v5 + 80) = v21;
        --v19;
      }

      else
      {
        *(v5 + 84) = v19 + 1;
        v21 = *(v5 + 80);
      }

      DgnPrimFixArray<short>::copyArraySlice((*(v5 + 64) + 16 * ((v19 + v21) % v20)), (v5 + 88), 0, *(v5 + 96));
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
    }

    v23 = *(v5 + 32);
    if (v23 == -16)
    {
      *(v5 + 32) = a2;
      v23 = a2;
    }

    v24 = *(*(v5 + 8) + 128);
    if (*(v5 + 60) >= v24)
    {
      if (v8 == v24)
      {
        *(v5 + 32) = v23 + 1;
      }

      return SimpleLookaheadScorer::doOverallScore(v5, a4);
    }
  }

  else
  {
    v12 = *(result + 15);
    if (*(result[1] + 128) > v12)
    {
      result = SimpleLookaheadScorer::doOverallScore(result, a4);
      v12 = *(v5 + 60);
    }

    if (v12 >= 2)
    {
      do
      {
        v13 = v12 - 1;
        v14 = *(v5 + 56);
        if ((v14 + 1) < *(v5 + 48))
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = 0;
        }

        *(v5 + 56) = v15;
        *(v5 + 60) = v13;
        if (*(v5 + 28))
        {
          v16 = *(v5 + 84);
          if (v16)
          {
            *(v5 + 84) = --v16;
            if (v16)
            {
              v17 = *(v5 + 80);
              if ((v17 + 1) < *(v5 + 72))
              {
                v16 = v17 + 1;
              }

              else
              {
                v16 = 0;
              }
            }
          }

          *(v5 + 80) = v16;
        }

        ++*(v5 + 32);
        result = SimpleLookaheadScorer::doOverallScore(v5, a4);
        v12 = *(v5 + 60);
      }

      while (v12 > 1);
    }

    *a4 = 1;
  }

  return result;
}

uint64_t *SimpleLookaheadScorer::doOverallScore(SimpleLookaheadScorer *a1, uint64_t a2)
{
  v4 = *(a1 + 7);
  if (v4 == 1)
  {
    SimpleLookaheadScorer::computeMinimumScore(a1);
  }

  else if (v4)
  {
    SimpleLookaheadScorer::computeCombinedScore(a1);
  }

  else
  {
    SimpleLookaheadScorer::computeSmoothFrame(a1);
    SimpleLookaheadScorer::doScore(a1, a1 + 13);
  }

  v5 = *(a1 + 8);

  return SynchronizedArray<ScoreFixArray>::add(a2, v5, a1 + 88);
}

uint64_t SimpleLookaheadScorer::doScore(uint64_t result, unsigned __int8 **a2)
{
  v2 = *(result + 96);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      if (i)
      {
        result = *(v4 + 8);
        if (*(*(result + 64) + 56) == i)
        {
          *(*(v4 + 88) + 2 * i) = 20000;
        }

        else
        {
          result = Lookahead::scoreOneForLookahead(result, a2, *(*(result + 104) + 4 * i));
          *(*(v4 + 88) + 2 * i) = result;
          v2 = *(v4 + 96);
        }
      }

      else
      {
        **(v4 + 88) = 20000;
      }
    }
  }

  return result;
}

uint64_t SimpleLookaheadScorer::getNextFrameTime(SimpleLookaheadScorer *this)
{
  v1 = *(this + 8);
  if (v1 == -16)
  {
    v1 = 0;
  }

  return (*(this + 15) + v1);
}

uint64_t SimpleLookaheadScorer::scoreLookaheadUntil(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v14[1] = 0;
  v8 = (*(*a1 + 32))(a1);
  v9 = *(a4 + 16);
  if (v9 <= a2)
  {
    for (i = v8; ; ++i)
    {
      v11 = *(a3 + 16);
      if (v11 <= i)
      {
        break;
      }

      v12 = *(a3 + 8) + 16 * i;
      DgnPrimArray<unsigned char>::copyArraySlice(v14, v12, 0, *(v12 + 8));
      SimpleLookaheadScorer::scoreForLookahead(a1, i, v14, a4);
      v9 = *(a4 + 16);
      if (v9 > a2)
      {
        return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
      }
    }

    if (*a3 == 1 && (*a4 & 1) == 0)
    {
      *(a4 + 4) = v9;
      SimpleLookaheadScorer::scoreForLookahead(a1, v11, 0, a4);
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
}

uint64_t SimpleLookaheadScorer::computeSmoothFrame(uint64_t this)
{
  if (*(this + 24))
  {
    v1 = 0;
    v2 = *(*(*(this + 8) + 136) + 4 * (*(this + 60) - 1));
    do
    {
      v3 = *(this + 60);
      if (v3)
      {
        v4 = 0;
        v5 = *(*(this + 8) + 120);
        v6 = *(this + 56);
        v7 = *(this + 48);
        do
        {
          v8 = v6;
          if (v6 >= v7)
          {
            v8 = v6 % v7;
          }

          v9 = *v5++;
          v4 += v9 * *(*(*(this + 40) + 16 * v8) + v1);
          ++v6;
          --v3;
        }

        while (v3);
      }

      else
      {
        v4 = 0;
      }

      *(*(this + 104) + v1++) = (v4 + (v2 >> 1)) / v2;
    }

    while (v1 < *(this + 24));
  }

  return this;
}

uint64_t SimpleLookaheadScorer::computeMinimumScore(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 72);
    v4 = *(this + 64);
    v5 = *(this + 80);
    v6 = *(this + 84);
    v7 = *(this + 88);
    do
    {
      v8 = v5;
      if (v5 >= v3)
      {
        v8 = v5 % v3;
      }

      v9 = *(v4 + 16 * v8);
      this = v2;
      v10 = *(v9 + 2 * v2);
      v11 = v6 - 1;
      v12 = v5 + 1;
      if (v6 >= 2)
      {
        do
        {
          if (v12 >= v3)
          {
            v13 = 16 * (v12 % v3);
          }

          else
          {
            v13 = 16 * v12;
          }

          v14 = *(*(v4 + v13) + 2 * v2);
          if (v14 < v10)
          {
            v10 = v14;
          }

          ++v12;
          --v11;
        }

        while (v11);
      }

      *(v7 + 2 * v2++) = v10;
    }

    while (v1 > v2);
  }

  return this;
}

uint64_t SimpleLookaheadScorer::computeCombinedScore(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 72);
    v4 = *(this + 64);
    v5 = *(this + 80);
    v6 = *(this + 84);
    v7 = *(this + 88);
    do
    {
      v8 = v5;
      if (v5 >= v3)
      {
        v8 = v5 % v3;
      }

      v9 = *(*(v4 + 16 * v8) + 2 * v2);
      if (v6 >= 2)
      {
        v10 = *(this + 8);
        v11 = v5 + 1;
        v12 = v6 - 1;
        do
        {
          v13 = v11;
          if (v11 >= v3)
          {
            v13 = v11 % v3;
          }

          v14 = *(*(v4 + 16 * v13) + 2 * v2);
          v16 = v14 - v9;
          v15 = v14 - v9 < 0;
          if (v14 < v9)
          {
            v9 = v14;
          }

          if (v15)
          {
            v17 = -v16;
          }

          else
          {
            v17 = v16;
          }

          if (v17 < *(v10 + 80))
          {
            v9 -= *(*(v10 + 72) + 4 * v17);
          }

          ++v11;
          --v12;
        }

        while (v12);
      }

      *(v7 + 2 * v2++) = v9;
    }

    while (v1 > v2);
  }

  return this;
}

uint64_t *SynchronizedArray<ScoreFixArray>::add(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  v7 = *(a1 + 8);
  v8 = v7 + 16 * v6;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(a1 + 16) = v6 + 1;
  v9 = *(a3 + 8);

  return DgnPrimFixArray<short>::copyArraySlice((v7 + 16 * a2), a3, 0, v9);
}

void LookaheadScorerThreadWorker::~LookaheadScorerThreadWorker(LookaheadScorerThreadWorker *this)
{
  *this = &unk_287524800;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  *this = &unk_287524800;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t LookaheadScorerThreadWorker::onStartup(LookaheadScorerThreadWorker *this)
{
  v2 = *(this + 6);
  v3 = MemChunkAlloc(0x88uLL, 0);
  *(this + 33) = SimpleLookaheadScorer::SimpleLookaheadScorer(v3, *(v2 + 1576), *(v2 + 1584), *(v2 + 1592));
  v4 = MemChunkAlloc(0x18uLL, 0);
  *(this + 34) = SynchronizedArray<ScoreFixArray>::SynchronizedArray(v4);
  v5 = MemChunkAlloc(0x18uLL, 0);
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v5);
  *(this + 35) = result;
  return result;
}

void *LookaheadScorerThreadWorker::onShutdown(LookaheadScorerThreadWorker *this)
{
  DgnDelete<SimpleLookaheadScorer>(*(this + 33));
  DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 34));
  v2 = *(this + 35);

  return DgnDelete<UttFeatureArraySynchronizedArray>(v2);
}

void (***DgnDelete<SimpleLookaheadScorer>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<SynchronizedArray<ScoreFixArray>>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnVector>::releaseAll((result + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

_BYTE *LookaheadScorerThreadWorker::onPlay(LookaheadScorerThreadWorker *this)
{
  v1 = *(this + 6);
  *(this + 64) = *(v1 + 1604);
  result = *(this + 35);
  if ((*result & 1) == 0)
  {
    return SynchronizedArray<DgnPrimArray<unsigned char>>::update(result, *(v1 + 1608));
  }

  return result;
}

uint64_t LookaheadScorerThreadWorker::playOne(LookaheadScorerThreadWorker *this)
{
  v1 = *(this + 34);
  if (*v1)
  {
    return 4;
  }

  v4 = *(this + 64);
  if (v4 != -16 && *(v1 + 16) > v4)
  {
    return 4;
  }

  v5 = (*(**(this + 33) + 32))(*(this + 33));
  v6 = v5;
  v7 = *(this + 35);
  if (*(v7 + 16) <= v5)
  {
    if (*v7 == 1)
    {
      v10 = *(this + 33);
      v11 = *(this + 34);
      *(v11 + 4) = *(v11 + 16);
      SimpleLookaheadScorer::scoreForLookahead(v10, v6, 0, v11);
    }

    return 4;
  }

  v8 = *(v7 + 8) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 36, v8, 0, *(v8 + 8));
  SimpleLookaheadScorer::scoreForLookahead(*(this + 33), v6, this + 288, *(this + 34));
  v9 = *(this + 64);
  if (v9 != -16 && *(*(this + 34) + 16) > v9)
  {
    return 4;
  }

  return 1;
}

uint64_t *LookaheadScorerThreadWorker::reset(LookaheadScorerThreadWorker *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v6, *(this + 5));
  v2 = *(this + 33);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    SynchronizedArray<ScoreFixArray>::reset(v4);
  }

  *(this + 64) = -16;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v6);
}

void sub_2627B9F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void LookaheadScorerThreadWorker::printSize(LookaheadScorerThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 635);
  if (v45)
  {
    v12 = v44;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v44);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  v14 = (a3 + 1);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 638);
  if (v45)
  {
    v17 = v44;
  }

  else
  {
    v17 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v44);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 639);
  if (v45)
  {
    v20 = v44;
  }

  else
  {
    v20 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v20, v18, v18, 0);
  DgnString::~DgnString(&v44);
  *a4 += v18;
  *a5 += v18;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 640);
  if (v45)
  {
    v23 = v44;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v23, v21, v21, 0);
  DgnString::~DgnString(&v44);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 641);
  if (v45)
  {
    v26 = v44;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, v24, v24, 0);
  v39 = a3;
  DgnString::~DgnString(&v44);
  *a4 += v24;
  *a5 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  v28 = *(this + 74);
  v29 = *(this + 75);
  v30 = a2;
  v31 = v29 >= v28;
  v32 = v29 - v28;
  if (v31)
  {
    if (v28 > 0)
    {
      v33 = (v28 - 1) + v27 + 1;
    }

    else
    {
      v33 = v27;
    }

    v27 = v33 + v32;
    v28 = 0;
  }

  else
  {
    v33 = v27;
  }

  v34 = v28;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 643);
  if (v45)
  {
    v36 = v44;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v14, &byte_262899963, v15, v15, v36, v27, v33, v34);
  DgnString::~DgnString(&v44);
  *a4 += v27;
  *a5 += v33;
  *a6 += v34;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  DgnThreadWorker::printSize(this, v30, v14, &v43, &v41, &v42);
  *a4 += v43;
  *a5 += v41;
  *a6 += v42;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 651);
  if (v45)
  {
    v38 = v44;
  }

  else
  {
    v38 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v39, &byte_262899963, (35 - v39), (35 - v39), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v44);
}