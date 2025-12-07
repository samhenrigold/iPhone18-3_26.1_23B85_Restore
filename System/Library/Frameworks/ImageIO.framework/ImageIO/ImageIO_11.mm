uint64_t check_coding_partition(uint64_t result, unint64_t a2)
{
  v2 = a2;
  if ((result & 0xFFFFFFFEFFFFFFFELL) != 0)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Kakadu Core Error:\n");
    (*(v7 + 16))(&v7, "Coding partitions (code-blocks and precinct partitions) must have origin coordinates equal to 1 or 0 only!");
    kdu_error::~kdu_error(&v7);
  }

  v3 = HIDWORD(a2);
  if (SHIDWORD(a2) >= 2)
  {
    while ((v3 & 1) == 0)
    {
      LODWORD(v4) = v3 >> 1;
      v5 = v3 > 2;
      LODWORD(v3) = v3 >> 1;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_15;
  }

  v4 = HIDWORD(a2);
LABEL_8:
  if (v4 != 1)
  {
    goto LABEL_15;
  }

  if (a2 >= 2)
  {
    while ((v2 & 1) == 0)
    {
      v6 = v2 >> 1;
      v5 = v2 > 2;
      v2 >>= 1;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v6 = a2;
LABEL_14:
  if (v6 != 1)
  {
LABEL_15:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Kakadu Core Error:\n");
    (*(v7 + 16))(&v7, "Coding partitions (namely, code-block and precinct partitions) must have exact power-of-2 dimensions!");
    kdu_error::~kdu_error(&v7);
  }

  return result;
}

unint64_t get_partition_indices(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = (HIDWORD(a3) - HIDWORD(a1));
  v5 = a3 - a1;
  v6 = HIDWORD(a2);
  if (!HIDWORD(a2) || !a2)
  {
    goto LABEL_15;
  }

  if (SHIDWORD(a2) <= 1)
  {
    LODWORD(v6) = 1;
  }

  v4 = (v4 & 0x80000000) != 0 ? ~(~v4 / v6) : v4 / v6;
  v7 = a2 <= 1 ? 1 : a2;
  if ((v5 & 0x80000000) != 0)
  {
    v5 = ~(~v5 / v7);
  }

  else
  {
    v5 /= v7;
  }

  if (a3 - a1 + a4 <= 0)
  {
    if ((v4 & 0x80000000) != 0)
    {
LABEL_19:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  else
  {
LABEL_15:
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  return v5 | (v4 << 32);
}

uint64_t kdu_dims::operator&=(_DWORD *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3] + v5;
  if (a1[3] + v2 < v6)
  {
    v6 = a1[3] + v2;
  }

  if (a1[2] + *a1 >= a2[2] + *a2)
  {
    v7 = a2[2] + v4;
  }

  else
  {
    v7 = a1[2] + *a1;
  }

  if (v2 < v5)
  {
    a1[1] = v5;
    v2 = v5;
  }

  if (v3 < v4)
  {
    *a1 = v4;
    v3 = v4;
  }

  v8 = (v6 - v2);
  v9 = (v7 - v3);
  *(a1 + 1) = v9 | (v8 << 32);
  if ((v8 & 0x80000000) != 0)
  {
    a1[3] = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return *a1;
    }

LABEL_14:
    a1[2] = 0;
    return *a1;
  }

  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  return *a1;
}

uint64_t kd_resolution::complete_initialization(kd_resolution *this)
{
  v2 = 0;
  *(this + 54) = 0;
  v3 = 1;
  do
  {
    v4 = 0;
    v5 = v3;
    v29 = v2;
    v6 = 1;
    do
    {
      v7 = v6;
      *(this + 100) = *(this + 168);
      *(this + 100) = vmla_s32(*(this + 100), *(this + 108), vadd_s32(*(this + 184), __PAIR64__(v4, v29)));
      result = kdu_dims::operator&=(this + 25, this + 12);
      if (*(this + 28) >= 1 && *(this + 27) >= 1)
      {
        if (*(this + 223))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = *(this + 28) + v9;
            LODWORD(v12) = *(*v11 + 68);
            LODWORD(v13) = *(*v11 + 72);
            v14 = *(v11 + 48);
            v15 = *(v11 + 49);
            v16 = *(*v11 + 80) + v13;
            v17 = *(*v11 + 76) + v12;
            result = ((v16 - v14 + 1) >> 1);
            if (v14 <= 1)
            {
              v13 = ((v13 - v14 + 1) >> 1);
            }

            else
            {
              v13 = v13;
            }

            if (v14 <= 1)
            {
              v16 = (v16 - v14 + 1) >> 1;
            }

            if (v15 <= 1)
            {
              v12 = ((v12 - v15 + 1) >> 1);
            }

            else
            {
              v12 = v12;
            }

            if (v15 <= 1)
            {
              v17 = (v17 - v15 + 1) >> 1;
            }

            *(v11 + 68) = v12 | (v13 << 32);
            *(v11 + 76) = (v17 - v12) | ((v16 - v13) << 32);
            ++v10;
            v9 += 136;
          }

          while (v10 < *(this + 223));
        }

        if (*(this + 222))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = *(this + 30) + 144 * v18;
            LODWORD(v21) = *(*v20 + 68);
            LODWORD(v22) = *(*v20 + 72);
            v23 = *(v20 + 48);
            v24 = *(v20 + 49);
            v25 = *(*v20 + 76) + v21;
            if (v23 <= 1)
            {
              v22 = ((v22 - v23 + 1) >> 1);
            }

            else
            {
              v22 = v22;
            }

            if (v24 <= 1)
            {
              v21 = ((v21 - v24 + 1) >> 1);
            }

            else
            {
              v21 = v21;
            }

            if (v24 <= 1)
            {
              v25 = (v25 - v24 + 1) >> 1;
            }

            result = get_partition_indices(*(v20 + 76), *(v20 + 84), v21 | (v22 << 32), v25 - v21);
            v19 += HIDWORD(v26) * v26;
            if (HIDWORD(v26) * v26 >= 2)
            {
              do
              {
                v27 = ((HIDWORD(v26) + 1) >> 1);
                v28 = ((v26 + 1) >> 1);
                v26 = v28 | (v27 << 32);
                LODWORD(v27) = v27 * v28;
                v19 += v27;
              }

              while (v27 > 1);
            }

            ++v18;
          }

          while (v18 < *(this + 222));
        }

        else
        {
          v19 = 0;
        }

        if (v19 > *(this + 54))
        {
          *(this + 54) = v19;
        }
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint64_t kd_tile::set_elements_of_interest(int **this)
{
  v1 = this;
  v2 = *this;
  if (this[32] && !*(v2 + 2) && !v2[46])
  {
    kd_mct_stage::apply_output_restrictions(this[33], *(v2 + 40), 0, 0);
    v2 = *v1;
  }

  v3 = v2[63];
  if (v3 >= *(v1 + 48))
  {
    v3 = *(v1 + 48);
  }

  *(v1 + 49) = v3;
  v98 = *(v1 + 212);
  result = kdu_dims::operator&=(&v98, v2 + 66);
  *(v1 + 228) = v98;
  if (*(*v1 + 1) && (*(*v1 + 417) & 1) == 0)
  {
    *(v1 + 50) = *(v1 + 49);
    *(v1 + 52) = 0;
    v97 = 1;
  }

  else
  {
    v97 = 0;
  }

  if (*(v1 + 47) >= 1)
  {
    v5 = 0;
    v96 = v1;
    do
    {
      v6 = &v1[34][56 * v5];
      *(v6 + 185) = 1;
      *(v6 + 156) = -1082130432;
      v7 = *v1;
      if (!*(*v1 + 2))
      {
        if (v7[46] == 1)
        {
          v8 = *(*(v7 + 39) + 104 * v5 + 88);
          goto LABEL_19;
        }

        v9 = v1[32];
        if (v9)
        {
          v8 = *(*(v9 + 1) + 4 * v5);
          goto LABEL_19;
        }

        if (v5 > 2 || (*(v1 + 286) & 1) == 0)
        {
          if (v5 >= v7[44])
          {
            v10 = 0;
          }

          else
          {
            v8 = *(*(v7 + 40) + 48 * v5 + 16);
LABEL_19:
            v10 = v8 >= 0;
          }

          *(v6 + 184) = v10;
          goto LABEL_21;
        }

        v93 = 0;
        *(v6 + 184) = 0;
        v94 = 16;
        while (v93 >= v7[44] || (*(*(v7 + 40) + v94) & 0x80000000) != 0)
        {
          ++v93;
          v94 += 48;
          if (v93 == 3)
          {
            goto LABEL_21;
          }
        }
      }

      *(v6 + 184) = 1;
LABEL_21:
      if (!*(v6 + 28))
      {
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
        (*(v98 + 16))(&v98, "File corruption: tc->sub_sampling = (0,0)\n");
        kdu_error::~kdu_error(&v98);
      }

      v11 = *(v1 + 57);
      v12 = *(v1 + 58);
      v13 = *(v1 + 59);
      v14 = *(v1 + 60);
      if (*(v6 + 32) <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(v6 + 32);
      }

      if (v12 <= 0)
      {
        v16 = -(-v12 / v15);
      }

      else
      {
        v16 = (v12 - 1) / v15 + 1;
      }

      v17 = __OFADD__(v14, v12);
      v18 = v14 + v12;
      if ((v18 < 0) ^ v17 | (v18 == 0))
      {
        v19 = -(-v18 / v15);
      }

      else
      {
        v19 = (v18 - 1) / v15 + 1;
      }

      if (*(v6 + 28) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(v6 + 28);
      }

      if (v11 <= 0)
      {
        v21 = -(-v11 / v20);
      }

      else
      {
        v21 = (v11 - 1) / v20 + 1;
      }

      v95 = v5;
      v17 = __OFADD__(v13, v11);
      v22 = v13 + v11;
      if ((v22 < 0) ^ v17 | (v22 == 0))
      {
        v23 = -(-v22 / v20);
      }

      else
      {
        v23 = (v22 - 1) / v20 + 1;
      }

      *(v6 + 52) = v21 | (v16 << 32);
      *(v6 + 60) = (v23 - v21) | ((v19 - v16) << 32);
      v24 = *(v6 + 68);
      v25 = v24 - (*v1)[61];
      *(v6 + 72) = v25;
      if (v25 >= 0)
      {
        if (!*(v6 + 176))
        {
          v100 = 0;
          v98 = 0u;
          v99 = 0u;
          kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
          (*(v98 + 16))(&v98, "File corruption: tc->resolutions = NULL\n");
          kdu_error::~kdu_error(&v98);
        }

        if ((v24 & 0x80000000) == 0)
        {
          v26 = v24;
          do
          {
            v27 = *(v6 + 176) + 704 * v26;
            v28 = *(v27 + 32);
            if (v28)
            {
              v29 = *(v28 + 32);
              v30 = *(v28 + 40);
              v31 = *(v27 + 80);
              v32 = *(v27 + 81);
              if (v26 >= *(v6 + 72))
              {
                LODWORD(v30) = v30 + v29;
                v44 = (HIDWORD(v30) + HIDWORD(v29) - v31 + 1) >> 1;
                v45 = v31 > 1;
                if (v31 <= 1)
                {
                  v39 = ((HIDWORD(v29) - v31 + 1) >> 1);
                }

                else
                {
                  v39 = HIDWORD(v29);
                }

                if (v45)
                {
                  v40 = HIDWORD(v30) + HIDWORD(v29);
                }

                else
                {
                  v40 = v44;
                }

                v42 = (v29 - v32 + 1) >> 1;
                v43 = v30 - v32;
              }

              else
              {
                v33 = *(v6 + 136);
                LODWORD(v30) = v30 + v29;
                if (*(v27 + 80))
                {
                  v34 = *(v6 + 148);
                }

                else
                {
                  v34 = *(v6 + 140);
                }

                if (*(v27 + 80))
                {
                  v35 = *(v6 + 144);
                }

                else
                {
                  v35 = *(v6 + 136);
                }

                v36 = (HIDWORD(v29) - (v34 + v31) + 1) >> 1;
                v37 = (HIDWORD(v30) + HIDWORD(v29) - (v35 + v31) + 1) >> 1;
                v38 = v31 > 1;
                if (v31 <= 1)
                {
                  v39 = v36;
                }

                else
                {
                  v39 = HIDWORD(v29);
                }

                if (v38)
                {
                  v40 = HIDWORD(v30) + HIDWORD(v29);
                }

                else
                {
                  v40 = v37;
                }

                if (*(v27 + 81))
                {
                  v41 = *(v6 + 148);
                }

                else
                {
                  v41 = *(v6 + 140);
                }

                if (*(v27 + 81))
                {
                  v33 = *(v6 + 144);
                }

                v42 = (v29 - (v41 + v32) + 1) >> 1;
                v43 = v30 - (v33 + v32);
              }

              v46 = (v43 + 1) >> 1;
              if (v32 <= 1)
              {
                v29 = v42;
              }

              else
              {
                v29 = v29;
              }

              if (v32 <= 1)
              {
                v47 = v46;
              }

              else
              {
                v47 = v30;
              }

              *(v27 + 64) = v29 | (v39 << 32);
              *(v27 + 72) = (v47 - v29) | ((v40 - v39) << 32);
            }

            else
            {
              *(v27 + 64) = *(v6 + 52);
            }

            result = kdu_dims::operator&=((v27 + 64), (v27 + 48));
            *(v27 + 92) = 0;
            *(v27 + 84) = 0;
            if (v26 <= *(v6 + 72) && *(v6 + 184) == 1)
            {
              LODWORD(v48) = *(v27 + 223);
              if (*(v27 + 223))
              {
                v49 = 0;
                v50 = 0;
                do
                {
                  v51 = *(v27 + 224) + v49;
                  LODWORD(v52) = *(*v51 + 32);
                  LODWORD(v53) = *(*v51 + 36);
                  v54 = *(v51 + 48);
                  v55 = *(v51 + 49);
                  v56 = *(v6 + 136);
                  v57 = *(*v51 + 44) + v53;
                  v58 = *(*v51 + 40) + v52;
                  if (*(v51 + 48))
                  {
                    v59 = *(v6 + 148);
                  }

                  else
                  {
                    v59 = *(v6 + 140);
                  }

                  if (*(v51 + 48))
                  {
                    v60 = *(v6 + 144);
                  }

                  else
                  {
                    v60 = *(v6 + 136);
                  }

                  v61 = (v53 - (v59 + v54) + 1) >> 1;
                  v62 = (v57 - (v60 + v54) + 1) >> 1;
                  if (v54 <= 1)
                  {
                    v53 = v61;
                  }

                  else
                  {
                    v53 = v53;
                  }

                  if (v54 <= 1)
                  {
                    v57 = v62;
                  }

                  if (*(v51 + 49))
                  {
                    v63 = *(v6 + 148);
                  }

                  else
                  {
                    v63 = *(v6 + 140);
                  }

                  if (*(v51 + 49))
                  {
                    v56 = *(v6 + 144);
                  }

                  v64 = (v52 - (v63 + v55) + 1) >> 1;
                  v65 = (v58 - (v56 + v55) + 1) >> 1;
                  if (v55 <= 1)
                  {
                    v52 = v64;
                  }

                  else
                  {
                    v52 = v52;
                  }

                  if (v55 <= 1)
                  {
                    v58 = v65;
                  }

                  *(v51 + 32) = v52 | (v53 << 32);
                  *(v51 + 40) = (v58 - v52) | ((v57 - v53) << 32);
                  v66 = v51 + 32;
                  kdu_dims::operator&=(v66, (v66 - 16));
                  ++v50;
                  *(v66 + 28) = 0;
                  *(v66 + 20) = 0;
                  v48 = *(v27 + 223);
                  v49 += 136;
                }

                while (v50 < v48);
              }

              if (*(v27 + 222))
              {
                v67 = 0;
                v68 = 0;
                do
                {
                  v69 = *(v27 + 240);
                  v70 = *(v69 + v67);
                  if (!v70)
                  {
                    v100 = 0;
                    v98 = 0u;
                    v99 = 0u;
                    kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
                    (*(v98 + 16))(&v98, "corrupt file: band->parent == NULL\n");
                    kdu_error::~kdu_error(&v98);
                  }

                  LODWORD(v71) = v70[8];
                  LODWORD(v72) = v70[9];
                  v73 = v70[10];
                  v74 = v69 + v67;
                  v75 = *(v69 + v67 + 48);
                  v76 = *(v69 + v67 + 49);
                  v77 = *(v6 + 136);
                  v78 = v70[11] + v72;
                  v79 = v73 + v71;
                  if (*(v69 + v67 + 48))
                  {
                    v80 = *(v6 + 148);
                  }

                  else
                  {
                    v80 = *(v6 + 140);
                  }

                  if (*(v69 + v67 + 48))
                  {
                    v81 = *(v6 + 144);
                  }

                  else
                  {
                    v81 = *(v6 + 136);
                  }

                  v82 = (v72 - (v80 + v75) + 1) >> 1;
                  v83 = (v78 - (v81 + v75) + 1) >> 1;
                  if (v75 <= 1)
                  {
                    v72 = v82;
                  }

                  else
                  {
                    v72 = v72;
                  }

                  if (v75 <= 1)
                  {
                    v78 = v83;
                  }

                  if (*(v69 + v67 + 49))
                  {
                    v84 = *(v6 + 148);
                  }

                  else
                  {
                    v84 = *(v6 + 140);
                  }

                  if (*(v69 + v67 + 49))
                  {
                    v77 = *(v6 + 144);
                  }

                  v85 = (v71 - (v84 + v76) + 1) >> 1;
                  v86 = (v79 - (v77 + v76) + 1) >> 1;
                  if (v76 <= 1)
                  {
                    v71 = v85;
                  }

                  else
                  {
                    v71 = v71;
                  }

                  if (v76 <= 1)
                  {
                    v79 = v86;
                  }

                  *(v74 + 32) = v71 | (v72 << 32);
                  *(v74 + 40) = (v79 - v71) | ((v78 - v72) << 32);
                  kdu_dims::operator&=((v74 + 32), (v74 + 16));
                  *(v74 + 108) = get_partition_indices(*(v74 + 76), *(v74 + 84), *(v74 + 32), *(v74 + 40));
                  *(v74 + 116) = v87;
                  if (*(v74 + 44) >= 1 && *(v74 + 40) >= 1)
                  {
                    kd_node::adjust_cover(*(v69 + v67), *(v74 + 32), *(v74 + 40), *(v74 + 48), *(v74 + 49));
                  }

                  ++v68;
                  v67 += 144;
                }

                while (v68 < *(v27 + 222));
                LODWORD(v48) = *(v27 + 223);
              }

              if (v48)
              {
                v88 = v48 + 1;
                v89 = 136 * v48;
                do
                {
                  v90 = *(v27 + 224);
                  v91 = v90 + v89;
                  if (*(v90 + v89 - 92) >= 1 && *(v91 - 96) >= 1)
                  {
                    kd_node::adjust_cover(*(v91 - 136), *(v90 + v89 - 84), *(v90 + v89 - 76), *(v90 + v89 - 88), *(v90 + v89 - 87));
                  }

                  --v88;
                  v89 -= 136;
                }

                while (v88 > 1);
              }

              *(v27 + 200) = get_partition_indices(*(v27 + 168), *(v27 + 176), *(v27 + 84), *(v27 + 92));
              *(v27 + 208) = v92;
              result = kdu_dims::operator&=((v27 + 200), (v27 + 184));
              if (v97)
              {
                v96[52] += *(v27 + 212) * v96[50] * *(v27 + 208);
              }
            }

            else
            {
              *(v27 + 200) = 0;
              *(v27 + 208) = 0;
            }

            v38 = v26-- <= 0;
          }

          while (!v38);
        }
      }

      v1 = v96;
      v5 = v95 + 1;
    }

    while ((v95 + 1) < v96[47]);
  }

  return result;
}

uint64_t kd_tile::finished_reading(kd_tile *this, uint64_t a2)
{
  if (*(this + 292) != 1)
  {
    return 0;
  }

  if (*(*this + 440) == this)
  {
    if (*(this + 328) == 1)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      kdu_error::kdu_error(v15, "Kakadu Core Error:\n");
      (*(*&v15[0] + 16))(v15, "Assert ");
      (*(*&v15[0] + 16))(v15, "!exhausted");
      (*(*&v15[0] + 16))(v15, " FAILED");
      kdu_error::~kdu_error(v15);
    }

    *(*this + 440) = 0;
    kd_tile::adjust_unloadability(this, a2);
  }

  else
  {
    kd_tile::adjust_unloadability(this, a2);
    if (*(this + 328))
    {
      return 0;
    }
  }

  *(this + 328) = 1;
  if (*(this + 291))
  {
    if ((*(*this + 408) & 1) == 0)
    {
      kd_tile::release(this);
      return 1;
    }
  }

  else
  {
    v4 = *(this + 47);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(this + 34) + 224 * i;
        v7 = *(v6 + 68);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = 0;
          do
          {
            v9 = *(v6 + 176) + 704 * v8;
            if (*(v9 + 192) * *(v9 + 196) >= 1)
            {
              v10 = 0;
              v11 = 8 * (*(v9 + 192) * *(v9 + 196));
              do
              {
                v12 = *(*(v9 + 232) + v10);
                if (v12)
                {
                  v13 = (*(*(v9 + 232) + v10) & 1) == 0;
                }

                else
                {
                  v13 = 0;
                }

                if (v13)
                {
                  kd_precinct::finished_desequencing(v12);
                }

                v10 += 8;
              }

              while (v11 != v10);
              v7 = *(v6 + 68);
            }
          }

          while (v8++ < v7);
          v4 = *(this + 47);
        }
      }
    }
  }

  return 0;
}

void kd_tile::recycle(kd_tile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 70))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "structure_bytes == 0");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  if (*(this + 3) || (*(this + 2) & 0x80000000) == 0 || (*(this + 184) & 1) == 0)
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "(tile_ref == NULL) && (t_num < 0) && is_typical");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  *(this + 3) = a2;
  *(this + 12) = a3;
  v7 = *this;
  *(this + 2) = HIDWORD(a3) + *(*this + 224) * a3;
  *(this + 184) = 0;
  *(this + 212) = a4;
  *(this + 220) = a5;
  *(this + 236) = 0;
  *(this + 9) = 0;
  if (*(this + 5) != 0 || *(this + 12) || *(this + 7) || *(this + 8))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "(ppt_markers == NULL) && (packed_headers == NULL) && (sequencer == NULL) && (unloadable_next == NULL) && (unloadable_prev == NULL)");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  *(this + 328) = 0;
  *(this + 287) = 0;
  v8 = this + 308;
  *(this + 80) = 0;
  *(this + 293) = 0;
  *(this + 289) = 0;
  *(this + 316) = 0;
  *(this + 308) = 0;
  *(this + 300) = 0;
  if (*(this + 47) != *(v7 + 168))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "num_components == codestream->num_components");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  if (*(v7 + 8))
  {
    *(this + 4) = **(this + 3);
    v9 = kd_tile::read_tile_part_header(this) ^ 1;
    v7 = *this;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = kdu_params::check_typical_tile(*(v7 + 24), *(this + 2));
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    v11 = *(this + 34);
    if (v11)
    {
      v12 = v11 - 16;
      v13 = *(v11 - 8);
      if (v13)
      {
        v14 = (v11 + 224 * v13 - 224);
        v15 = -224 * v13;
        do
        {
          kd_tile_comp::~kd_tile_comp(v14);
          v14 = (v16 - 224);
          v15 += 224;
        }

        while (v15);
      }

      MEMORY[0x186602830](v12, 0x10A0C802A3299D9);
    }

    v17 = *(this + 32);
    *(this + 33) = v17;
    for (*(this + 34) = 0; v17; *(this + 33) = v17)
    {
      *(this + 32) = *(v17 + 7);
      kd_mct_stage::~kd_mct_stage(v17);
      MEMORY[0x186602850]();
      v17 = *(this + 32);
    }

    *(this + 292) = 1;
    *(this + 294) = 0;
    kd_tile::initialize(this);
  }

  *(this + 184) = 1;
  v19 = *(this + 47);
  v18 = *(this + 48);
  *(this + 49) = v18;
  v20 = *(this + 34);
  *(this + 51) = 0;
  if (v19 < 1)
  {
    v74 = 0;
  }

  else
  {
    v21 = 0;
    v78 = HIDWORD(a5) + HIDWORD(a4) - 1;
    v79 = a5 + a4;
    v80 = HIDWORD(a5) + HIDWORD(a4);
    v76 = -(HIDWORD(a5) + HIDWORD(a4));
    v77 = a5 + a4 - 1;
    v75 = -(a5 + a4);
    v22 = 336;
    do
    {
      *(v20 + 184) = 257;
      *(v20 + 156) = -1082130432;
      if (*(v20 + 32) <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = *(v20 + 32);
      }

      if (a4 <= 0)
      {
        v24 = -(-HIDWORD(a4) / v23);
      }

      else
      {
        v24 = (HIDWORD(a4) - 1) / v23 + 1;
      }

      if (v80 <= 0)
      {
        v25 = -(v76 / v23);
      }

      else
      {
        v25 = v78 / v23 + 1;
      }

      if (*(v20 + 28) <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = *(v20 + 28);
      }

      if (a4 <= 0)
      {
        v27 = -(-a4 / v26);
      }

      else
      {
        v27 = (a4 - 1) / v26 + 1;
      }

      if (v79 <= 0)
      {
        v28 = -(v75 / v26);
      }

      else
      {
        v28 = v77 / v26 + 1;
      }

      v22 += 224;
      *(v20 + 36) = v27 | (v24 << 32);
      *(v20 + 44) = (v28 - v27) | ((v25 - v24) << 32);
      v29 = *(v20 + 68);
      *(v20 + 72) = v29;
      if ((v29 & 0x80000000) == 0)
      {
        do
        {
          v30 = *(v20 + 176) + 704 * v29;
          if (v29 == *(v20 + 68))
          {
            *(v30 + 48) = *(v20 + 36);
            v31 = *(v30 + 48);
            v32 = *(v30 + 56);
          }

          else
          {
            v33 = *(v30 + 32);
            LODWORD(v34) = v33[4];
            LODWORD(v35) = v33[5];
            v36 = v33[6];
            v37 = *(v30 + 80);
            v38 = *(v30 + 81);
            v39 = v33[7] + v35;
            v40 = v36 + v34;
            if (v37 <= 1)
            {
              v35 = ((v35 - v37 + 1) >> 1);
            }

            else
            {
              v35 = v35;
            }

            if (v37 <= 1)
            {
              v39 = (v39 - v37 + 1) >> 1;
            }

            if (v38 <= 1)
            {
              v34 = ((v34 - v38 + 1) >> 1);
            }

            else
            {
              v34 = v34;
            }

            if (v38 <= 1)
            {
              v40 = (v40 - v38 + 1) >> 1;
            }

            v31 = v34 | (v35 << 32);
            v32 = (v40 - v34) | ((v39 - v35) << 32);
            *(v30 + 48) = v31;
            *(v30 + 56) = v32;
          }

          *(v30 + 16) = 0;
          v41 = *(v30 + 192) * *(v30 + 196);
          *(v30 + 200) = get_partition_indices(*(v30 + 168), *(v30 + 176), v31, v32);
          *(v30 + 208) = v42;
          *(v30 + 184) = *(v30 + 200);
          v43 = *(v30 + 192) * *(v30 + 196);
          if (v41 != v43)
          {
            v44 = *(v30 + 232);
            if (v44)
            {
              v45 = *(v44 - 8);
              if (v45)
              {
                v46 = (v44 + 8 * v45 - 8);
                v47 = -8 * v45;
                do
                {
                  kd_precinct_ref::~kd_precinct_ref(v46);
                  v46 = (v48 - 8);
                  v47 += 8;
                }

                while (v47);
              }

              MEMORY[0x186602830](v44 - 16, 0x1000C8000313F17);
            }

            operator new[]();
          }

          *(this + 51) += v43;
          v49 = *this;
          if (v21 <= 3 && !v29 && *(v49 + 160) <= 1)
          {
            v50 = *(v30 + 8);
            if (*(v50 + 32) * *(v30 + 60) > 128 || *(v50 + 28) * *(v30 + 56) >= 129)
            {
              v84 = 0;
              v82 = 0u;
              v83 = 0u;
              kdu_warning::kdu_warning(&v82, "Kakadu Core Warning:\n");
              (*(v82 + 16))(&v82, "Profile violation detected (code-stream is technically illegal).  Profile-0 and Profile-1 code-streams must have sufficient DWT levels to permit extraction of a low resolution image which is no larger than 128x128.   Try setting a larger value for Clevels or else set Sprofile to 2.");
              *(*this + 160) = 2;
              kdu_warning::~kdu_warning(&v82);
              v49 = *this;
            }
          }

          if (!*(v49 + 160) && *(v30 + 60) <= 128 && *(v30 + 56) <= 128 && *(v30 + 192) * *(v30 + 196) >= 2)
          {
            v84 = 0;
            v82 = 0u;
            v83 = 0u;
            kdu_warning::kdu_warning(&v82, "Kakadu Core Warning:\n");
            (*(v82 + 16))(&v82, "Profile violation detected (code-stream is technically illegal).  Profile-0 code-streams may have multiple precincts only in those tile-component resolutions whose dimensions are greater than 128x128.");
            *(*this + 160) = 2;
            kdu_warning::~kdu_warning(&v82);
          }

          if (*(v30 + 223))
          {
            v51 = 0;
            v52 = 0;
            do
            {
              v53 = *(v30 + 224) + v51;
              LODWORD(v54) = *(*v53 + 16);
              LODWORD(v55) = *(*v53 + 20);
              v56 = *(v53 + 48);
              v57 = *(v53 + 49);
              v58 = *(*v53 + 28) + v55;
              v59 = *(*v53 + 24) + v54;
              if (v56 <= 1)
              {
                v55 = ((v55 - v56 + 1) >> 1);
              }

              else
              {
                v55 = v55;
              }

              if (v56 <= 1)
              {
                v58 = (v58 - v56 + 1) >> 1;
              }

              if (v57 <= 1)
              {
                v54 = ((v54 - v57 + 1) >> 1);
              }

              else
              {
                v54 = v54;
              }

              if (v57 <= 1)
              {
                v59 = (v59 - v57 + 1) >> 1;
              }

              *(v53 + 16) = v54 | (v55 << 32);
              *(v53 + 24) = (v59 - v54) | ((v58 - v55) << 32);
              ++v52;
              v51 += 136;
            }

            while (v52 < *(v30 + 223));
          }

          if (*(v30 + 222))
          {
            v60 = 0;
            v61 = 100;
            do
            {
              v62 = (*(v30 + 240) + v61);
              v63 = *(v62 - 100);
              LODWORD(v64) = v63[4];
              LODWORD(v65) = v63[5];
              v66 = v63[6];
              v67 = *(v62 - 52);
              v68 = *(v62 - 51);
              v69 = v63[7] + v65;
              v70 = v66 + v64;
              if (v67 <= 1)
              {
                v65 = ((v65 - v67 + 1) >> 1);
              }

              else
              {
                v65 = v65;
              }

              if (v67 <= 1)
              {
                v69 = (v69 - v67 + 1) >> 1;
              }

              if (v68 <= 1)
              {
                v64 = ((v64 - v68 + 1) >> 1);
              }

              else
              {
                v64 = v64;
              }

              if (v68 <= 1)
              {
                v70 = (v70 - v68 + 1) >> 1;
              }

              v71 = v64 | (v65 << 32);
              *(v62 - 84) = v71;
              *(v62 - 76) = (v70 - v64) | ((v69 - v65) << 32);
              *(v62 - 1) = get_partition_indices(*(v62 - 3), *(v62 - 2), v71, v70 - v64);
              *v62 = v72;
              ++v60;
              v61 += 144;
            }

            while (v60 < *(v30 + 222));
          }

          v22 += 704 + 8 * v43;
          kd_resolution::complete_initialization(v30);
        }

        while (v29-- > 0);
      }

      ++v21;
      v20 += 224;
    }

    while (v21 < *(this + 47));
    v18 = *(this + 48);
    v74 = *(this + 51);
    v8 = this + 308;
  }

  *(this + 50) = v18;
  *(this + 52) = v74 * v18;
  *(this + 292) = 1;
  *v8 = 0;
  v8[8] = 0;
  if (*(this + 12))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "sequencer == NULL");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  operator new();
}

uint64_t *kd_tile::restart(kd_tile *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = **this;
  if (v2)
  {
    if (*(this + 288) == 1)
    {
      kd_tile::remove_from_in_progress_list(this);
      v2 = **this;
    }

    (*(*v2 + 16))(v2, "\n>> New attributes for tile ");
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    if (*(v2 + 8))
    {
      sprintf(v29, "%x");
    }

    else
    {
      sprintf(v29, "%d");
    }

    (*(*v2 + 16))(v2, v29);
    (*(*v2 + 16))(v2, ":\n");
    kdu_params::textualize_attributes(*(*this + 24), v2, *(this + 2), *(this + 2), 1);
    (*(*v2 + 32))(v2, 0);
  }

  *(this + 184) = 0;
  *(this + 4) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 11) = 0;
  result = kd_precinct_pointer_server::disable(this + 13);
  *(this + 308) = 0;
  *(this + 300) = 0;
  *(this + 291) = 0;
  *(this + 293) = 1;
  v6 = *(this + 47);
  v5 = *(this + 48);
  *(this + 50) = v5;
  v7 = *(this + 51) * v5;
  *(this + 236) = 0;
  *(this + 328) = 0;
  *(this + 52) = v7;
  *(this + 316) = 0;
  *(this + 80) = 0;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(this + 34) + 224 * v8;
      *(v9 + 184) = 257;
      *(v9 + 156) = -1082130432;
      v10 = *(v9 + 68);
      *(v9 + 72) = v10;
      *(v9 + 52) = *(v9 + 36);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = 0;
        do
        {
          v12 = *(v9 + 176) + 704 * v11;
          *(v12 + 16) = 0;
          v13 = *(v12 + 48);
          *(v12 + 84) = v13;
          *(v12 + 64) = v13;
          *(v12 + 200) = *(v12 + 184);
          if (*(v12 + 223))
          {
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = (*(v12 + 224) + v14);
              v17 = v16[1];
              *(v16 + 52) = v17;
              v16[2] = v17;
              ++v15;
              v14 += 136;
            }

            while (v15 < *(v12 + 223));
          }

          if (*(v12 + 222))
          {
            v18 = 0;
            v19 = 0;
            do
            {
              v20 = (*(v12 + 240) + v18);
              v20[2] = v20[1];
              *(v20 + 108) = *(v20 + 92);
              ++v19;
              v18 += 144;
            }

            while (v19 < *(v12 + 222));
          }

          v21 = *(v12 + 192);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *(v12 + 196);
            do
            {
              if (v23 >= 1)
              {
                for (i = 0; i < v23; *(v25 + 8 * i++) = 0)
                {
                  v25 = *(v12 + 232) + 8 * v22 * v23;
                  v26 = *(v25 + 8 * i);
                  if (v26)
                  {
                    v27 = (*(v25 + 8 * i) & 1) == 0;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (v27)
                  {
                    *(v26 + 8) = 0;
                    kd_precinct::closing(v26);
                    result = kd_precinct_size_class::release(*(v26 + 72), v26);
                    v23 = *(v12 + 196);
                  }
                }

                v21 = *(v12 + 192);
              }

              ++v22;
            }

            while (v22 < v21);
          }
        }

        while (v11++ < *(v9 + 68));
      }

      ++v8;
    }

    while (v8 < *(this + 47));
  }

  return result;
}

uint64_t kd_tile::reinitialize(kd_tile *this)
{
  if (*(this + 293) != 1 || *(this + 289) == 1)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    kdu_error::kdu_error(&v15, "Kakadu Core Error:\n");
    (*(v15 + 16))(&v15, "Assert ");
    (*(v15 + 16))(&v15, "needs_reinit && !is_open");
    (*(v15 + 16))(&v15, " FAILED");
    kdu_error::~kdu_error(&v15);
  }

  *(this + 293) = 0;
  v2 = *(this + 3);
  if (*(v2 + 16) != this)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    kdu_error::kdu_error(&v15, "Kakadu Core Error:\n");
    (*(v15 + 16))(&v15, "Assert ");
    (*(v15 + 16))(&v15, "tile_ref->tile == this");
    (*(v15 + 16))(&v15, " FAILED");
    kdu_error::~kdu_error(&v15);
  }

  *(this + 4) = *v2;
  v3 = *this;
  if (*(*this + 8))
  {
    if (!kd_tile::read_tile_part_header(this))
    {
      v12 = 1;
      goto LABEL_22;
    }

    v3 = *this;
  }

  if (kdu_params::any_changes(*(v3 + 24)))
  {
    v4 = *(this + 12);
    if (v4)
    {
      MEMORY[0x186602850](v4, 0x1020C40539952E0);
    }

    *(this + 12) = 0;
    v5 = *(this + 34);
    if (v5)
    {
      v6 = v5 - 16;
      v7 = *(v5 - 8);
      if (v7)
      {
        v8 = (v5 + 224 * v7 - 224);
        v9 = -224 * v7;
        do
        {
          kd_tile_comp::~kd_tile_comp(v8);
          v8 = (v10 - 224);
          v9 += 224;
        }

        while (v9);
      }

      MEMORY[0x186602830](v6, 0x10A0C802A3299D9);
    }

    v11 = *(this + 32);
    *(this + 33) = v11;
    for (*(this + 34) = 0; v11; *(this + 33) = v11)
    {
      *(this + 32) = *(v11 + 7);
      kd_mct_stage::~kd_mct_stage(v11);
      MEMORY[0x186602850]();
      v11 = *(this + 32);
    }

    *(this + 294) = 0;
    *(this + 292) = 1;
    kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
    *(this + 70) = 0;
    kd_tile::initialize(this);
  }

  v12 = 0;
LABEL_22:
  *(this + 292) = 1;
  kd_packet_sequencer::init(*(this + 12));
  if ((*(*this + 417) & 1) == 0)
  {
    kd_tile::set_elements_of_interest(this);
  }

  if (v12)
  {
    kd_tile::finished_reading(this, v13);
  }

  result = kdu_params::check_typical_tile(*(*this + 24), *(this + 2));
  *(this + 184) = result;
  return result;
}

uint64_t *kd_tile::open(kd_tile *this, uint64_t a2)
{
  v2 = this;
  if (*(this + 289) == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
    (*(v43 + 16))(&v43, "You must close a tile before you can re-open it.");
    kdu_error::~kdu_error(&v43);
  }

  if (!*(this + 34))
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
    (*(v43 + 16))(&v43, "kd_tile::initialize failed.");
    kdu_error::~kdu_error(&v43);
  }

  v3 = *this;
  if (*(*this + 417) == 1)
  {
    kd_tile::set_elements_of_interest(this);
    v3 = *v2;
  }

  if (*(v3 + 16))
  {
    if ((v2[36] & 1) != 0 || v2[5])
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
      (*(v43 + 16))(&v43, "Assert ");
      (*(v43 + 16))(&v43, "(!is_in_progress) && (in_progress_next == NULL)");
      (*(v43 + 16))(&v43, " FAILED");
      kdu_error::~kdu_error(&v43);
    }

    v4 = *(v3 + 344);
    v2[6] = v4;
    v5 = (v4 ? v4 + 40 : v3 + 336);
    *v5 = v2;
    *(v3 + 344) = v2;
    *(v2 + 288) = 1;
    if (*(v2 + 47) >= 1)
    {
      v6 = 0;
      v34 = v2;
      do
      {
        v7 = v2[34] + 224 * v6;
        v8 = *(*v2 + 352) + 88 * v6;
        v9 = *(v7 + 68);
        if ((v9 & 0x80000000) != 0)
        {
LABEL_78:
          v31 = 33 - v9;
          do
          {
            kd_global_rescomp::notify_tile_status(v8, *(v2 + 212), *(v2 + 220), 0);
            v29 = *(v2 + 47);
            v8 += 88 * v29;
            --v31;
          }

          while (v31 > 1);
          goto LABEL_80;
        }

        v33 = v6;
        v37 = 0;
        v35 = v2[34] + 224 * v6;
        do
        {
          v10 = (*(v7 + 176) + 704 * v9);
          v11 = v10[2];
          v37 |= *&v11 != 0;
          if ((v37 & 1) == 0)
          {
            v10[2] = v8;
            kd_global_rescomp::notify_tile_status(v8, *(v2 + 212), *(v2 + 220), 1);
            if (!v10[3].i8[0] || v10[24].i32[1] < 1 || v10[24].i32[0] < 1)
            {
              goto LABEL_73;
            }

            v36 = v9;
            v12 = 0;
            v38 = v10[17];
            v39 = v10[16];
            v13 = v10[23];
            v41 = 0;
            v42 = 0;
            v14 = v10[22];
            v15 = vmla_s32(v10[21], v14, v13);
            while (2)
            {
              if ((v12 & 1) == 0)
              {
                v16 = 0;
                goto LABEL_32;
              }

              v17 = v10[24].i32[1];
              if (v17 >= 2 && *&v39 != 0)
              {
                v16 = v17 - 1;
LABEL_32:
                if (v12 >= 2)
                {
                  v20 = v10[24].i32[0];
                  if (v20 >= 2 && *&v38 != 0)
                  {
                    v19 = v20 - 1;
                    goto LABEL_39;
                  }
                }

                else
                {
                  v19 = 0;
LABEL_39:
                  v41 = vmla_s32(v15, __PAIR64__(v16, v19), v14);
                  v42 = v14;
                  kdu_dims::operator&=(&v41, &v10[6]);
                  if ((!*&v39 || v42.i32[1] == 1 && (v41.i8[4] & 1) == 0) && (!*&v38 || v42.i32[0] == 1 && (v41.i8[0] & 1) == 0))
                  {
                    if (v39)
                    {
                      v40 = 1;
                    }

                    else
                    {
                      if (v16)
                      {
                        v45 = 0;
                        v43 = 0u;
                        v44 = 0u;
                        kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
                        (*(v43 + 16))(&v43, "Assert ");
                        (*(v43 + 16))(&v43, "p_idx.x == 0");
                        (*(v43 + 16))(&v43, " FAILED");
                        kdu_error::~kdu_error(&v43);
                      }

                      v40 = v10[24].i32[1];
                    }

                    if (v38)
                    {
                      v22 = 1;
LABEL_55:
                      v23 = v16;
                      while (v40 < 1)
                      {
LABEL_69:
                        ++v19;
                        v28 = __OFSUB__(v22--, 1);
                        if ((v22 < 0) ^ v28 | (v22 == 0))
                        {
                          goto LABEL_71;
                        }
                      }

                      v24 = v23;
                      v25 = v40 + 1;
                      while (2)
                      {
                        v26 = (*&v10[29] + 8 * (v24 + v10[24].i32[1] * v19));
                        v27 = *v26;
                        if (!*v26)
                        {
                          goto LABEL_64;
                        }

                        if (v27 == 3)
                        {
                          v27 = 0;
                          goto LABEL_65;
                        }

                        if (v27)
                        {
LABEL_64:
                          v27 = kd_precinct_ref::instantiate_precinct(v26, v10, v19 | (v24 << 32));
                        }

                        else
                        {
                          if (*(v27 + 20) == 1)
                          {
                            kd_precinct_size_class::withdraw_from_inactive_list(*(v27 + 72), v27);
                            goto LABEL_68;
                          }

                          if (*(v27 + 19) == 1)
                          {
LABEL_68:
                            kd_precinct::activate(v27);
                          }
                        }

LABEL_65:
                        kd_global_rescomp::add_ready_precinct(v8, v27);
                        --v25;
                        ++v24;
                        if (v25 <= 1)
                        {
                          goto LABEL_69;
                        }

                        continue;
                      }
                    }

                    if (v19)
                    {
                      v45 = 0;
                      v43 = 0u;
                      v44 = 0u;
                      kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
                      (*(v43 + 16))(&v43, "Assert ");
                      (*(v43 + 16))(&v43, "p_idx.y == 0");
                      (*(v43 + 16))(&v43, " FAILED");
                      kdu_error::~kdu_error(&v43);
                    }

                    v22 = v10[24].i32[0];
                    if (v22 >= 1)
                    {
                      goto LABEL_55;
                    }
                  }
                }
              }

LABEL_71:
              if (++v12 == 4)
              {
                v2 = v34;
                v7 = v35;
                v9 = v36;
                goto LABEL_73;
              }

              continue;
            }
          }

          if (*&v11 != v8)
          {
            v45 = 0;
            v43 = 0u;
            v44 = 0u;
            kdu_error::kdu_error(&v43, "Kakadu Core Error:\n");
            (*(v43 + 16))(&v43, "Assert ");
            (*(v43 + 16))(&v43, "res->rescomp == rc");
            (*(v43 + 16))(&v43, " FAILED");
            kdu_error::~kdu_error(&v43);
          }

LABEL_73:
          v29 = *(v2 + 47);
          v8 += 88 * v29;
        }

        while (v9-- > 0);
        if (v37)
        {
          v6 = v33;
        }

        else
        {
          LODWORD(v9) = *(v7 + 68);
          v6 = v33;
          if (v9 <= 31)
          {
            goto LABEL_78;
          }
        }

LABEL_80:
        ++v6;
      }

      while (v6 < v29);
    }
  }

  *(v2 + 289) = 1;
  result = kd_tile::adjust_unloadability(v2, a2);
  ++*(*v2 + 260);
  return result;
}

uint64_t *kd_tile::adjust_unloadability(uint64_t *this, uint64_t a2)
{
  v3 = *this;
  if (*(*this + 417) == 1 && (*(v3 + 72) || (*(v3 + 418) & 1) != 0))
  {
    if ((*(this + 289) & 1) != 0 || *(v3 + 440) == this)
    {
      if (*(this + 290) == 1)
      {

        return kd_tile::withdraw_from_unloadable_list(this);
      }
    }

    else if ((*(this + 290) & 1) == 0)
    {

      return kd_tile::add_to_unloadable_list(this);
    }
  }

  else if (*(this + 290) == 1)
  {
    kd_tile::adjust_unloadability();
  }

  return this;
}

uint64_t kd_node::adjust_cover(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if ((a3 & 0x8000000080000000) == 0)
  {
    if (a4 <= 1)
    {
      v5 = a4 | (2 * HIDWORD(a2));
    }

    else
    {
      v5 = HIDWORD(a2);
    }

    if (a4 <= 1)
    {
      v6 = a4 + 2 * (HIDWORD(a3) + HIDWORD(a2)) - 1;
    }

    else
    {
      v6 = HIDWORD(a3) + HIDWORD(a2);
    }

    if (a5 <= 1)
    {
      v7 = a5 | (2 * a2);
    }

    else
    {
      v7 = a2;
    }

    if (a5 <= 1)
    {
      v8 = a5 + 2 * (a3 + a2) - 1;
    }

    else
    {
      v8 = a3 + a2;
    }

    v9 = *(result + 64);
    if (v9 < 1 || (v10 = *(result + 60), v10 <= 0))
    {
      *(result + 52) = v7 | (v5 << 32);
      *(result + 60) = (v8 - v7) | ((v6 - v5) << 32);
    }

    else
    {
      v11 = *(result + 56) - v5;
      if (v11 < 1)
      {
        LODWORD(v5) = *(result + 56);
      }

      else
      {
        *(result + 56) = v5;
        v9 += v11;
        *(result + 64) = v9;
      }

      v12 = v6 - v5;
      if (v12 > v9)
      {
        *(result + 64) = v12;
      }

      v13 = *(result + 52) - v7;
      if (v13 < 1)
      {
        LODWORD(v7) = *(result + 52);
      }

      else
      {
        *(result + 52) = v7;
        v10 += v13;
        *(result + 60) = v10;
      }

      v14 = v8 - v7;
      if (v14 > v10)
      {
        *(result + 60) = v14;
      }
    }
  }

  return result;
}

uint64_t kd_tile::add_to_unloadable_list(uint64_t this)
{
  v1 = this;
  if (*(this + 290) == 1)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "!is_unloadable");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  v2 = *this;
  v3 = *(*this + 488);
  *(this + 56) = 0;
  *(this + 64) = v3;
  if (v3)
  {
    v4 = (v3 + 56);
  }

  else
  {
    if (*(v2 + 480))
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->unloadable_tiles_head == NULL");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    v4 = (v2 + 480);
  }

  *v4 = this;
  *(v2 + 488) = this;
  ++*(v2 + 504);
  *(this + 290) = 1;
  if (!*(v2 + 496))
  {
    this = kdu_dims::intersects((this + 212), (v2 + 264));
    if ((this & 1) == 0)
    {
      *(*v1 + 496) = v1;
    }
  }

  return this;
}

BOOL kdu_dims::intersects(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a2[1];
  if (v3 + v2 <= v4)
  {
    return 0;
  }

  v5 = a1[2];
  if (v5 + *a1 <= *a2)
  {
    return 0;
  }

  v6 = a2[3];
  if (v2 >= v6 + v4)
  {
    return 0;
  }

  v7 = a2[2];
  if (*a1 >= v7 + *a2)
  {
    return 0;
  }

  return v3 > 0 && v5 > 0 && v6 > 0 && v7 > 0;
}

uint64_t kd_precinct::desequence_packet(kd_precinct *this, uint64_t a2)
{
  if ((*(this + 17) & 1) != 0 || *(this + 18) == 1)
  {
    kd_precinct::desequence_packet();
  }

  v3 = *(*(*this + 8) + 8);
  packet = kd_precinct::read_packet(this, a2);
  if (packet)
  {
    v6 = *(this + 7) + 1;
    *(this + 7) = v6;
    if (v6 == *(v3 + 48))
    {
      kd_precinct::finished_desequencing(this);
    }

    ++*(v3 + 78);
    if (*(this + 21) == 1 && *(this + 7) <= *(v3 + 50))
    {
      v7 = *(v3 + 77) + 1;
      *(v3 + 77) = v7;
      if (v7 == *(v3 + 52))
      {
        kd_tile::finished_reading(v3, v4);
      }
    }
  }

  return packet;
}

uint64_t *kd_precinct::finished_desequencing(uint64_t *this)
{
  if ((*(this + 17) & 1) == 0)
  {
    *(this + 17) = 1;
    if (!*(this + 7))
    {
      *(this + 18) = 1;
      this[5] = 0;
    }

    if (!*(this + 9))
    {
      return kd_precinct::release(this);
    }
  }

  return this;
}

unint64_t kd_tile::generate_tile_part(kd_tile *this, int a2, unsigned __int16 *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(this + 77) == *(this + 52))
  {
    return 0;
  }

  if ((*(this + 288) & 1) == 0)
  {
    *&v64 = 0;
    *v62 = 0u;
    v63 = 0u;
    kdu_error::kdu_error(v62, "Kakadu Core Error:\n");
    (*(*v62 + 16))(v62, "Assert ");
    (*(*v62 + 16))(v62, "is_in_progress");
    (*(*v62 + 16))(v62, " FAILED");
    kdu_error::~kdu_error(v62);
  }

  v4 = *(this + 76);
  if (v4 >= 255)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Too many tile-parts for tile ");
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    (*(v59 + 16))(&v59, ".  No tile may have more than 255 parts.");
    kdu_error::~kdu_error(&v59);
  }

  if (*(*this + 104) >= 1 && *(*this + 108) <= v4)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Too many tile-parts for tile ");
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    (*(v59 + 16))(&v59, ".");
    kdu_error::~kdu_error(&v59);
  }

  v5 = *this;
  if (*(*this + 364) < a2)
  {
    *&v64 = 0;
    *v62 = 0u;
    v63 = 0u;
    kdu_error::kdu_error(v62, "Kakadu Core Error:\n");
    (*(*v62 + 16))(v62, "Assert ");
    (*(*v62 + 16))(v62, "max_layers <= codestream->num_sized_layers");
    (*(*v62 + 16))(v62, " FAILED");
    kdu_error::~kdu_error(v62);
  }

  v6 = *(this + 76);
  *(this + 76) = v6 + 1;
  marker_segments = kdu_params::generate_marker_segments(*(v5 + 24), 0, *(this + 2), v6);
  bzero(v62, 0x400uLL);
  v8 = *this;
  if (!*(*this + 160))
  {
    v9 = v8[114];
    if ((v9 & 0x80000000) == 0)
    {
      if (v9 != *(this + 2))
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_warning::kdu_warning(&v59, "Kakadu Core Warning:\n");
        (*(v59 + 16))(&v59, "Profile violation detected (code-stream is technically illegal).  In a Profile-0 code-stream, all first tile-parts of all tiles must appear first, in exactly the same order as their respective tile numbers.");
        *(*this + 160) = 2;
        kdu_warning::~kdu_warning(&v59);
        v8 = *this;
        v9 = *(*this + 456);
      }

      if (v9 + 1 == v8[55] * v8[56])
      {
        v10 = -1;
      }

      else
      {
        v10 = v9 + 1;
      }

      v8[114] = v10;
    }
  }

  v57 = 0;
  v58 = 0;
  kd_packet_sequencer::save_state(*(this + 12));
  v11 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
  if (!v11)
  {
    goto LABEL_71;
  }

  v12 = 0;
  v13 = marker_segments + 14;
  v14 = 0xFFFFFFFFLL;
  v15 = -1;
  v51 = -1;
  v53 = -1;
  do
  {
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_35;
    }

    if (v16 == 3)
    {
      goto LABEL_36;
    }

    if (v16)
    {
LABEL_35:
      v16 = kd_precinct_ref::instantiate_precinct(v11, v58, v57);
      if (!v16)
      {
LABEL_36:
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
        (*(v59 + 16))(&v59, "Assert ");
        (*(v59 + 16))(&v59, "precinct != NULL");
        (*(v59 + 16))(&v59, " FAILED");
        kdu_error::~kdu_error(&v59);
      }
    }

    else if (*(v16 + 20) == 1)
    {
      kd_precinct_size_class::withdraw_from_inactive_list(*(v16 + 72), v16);
      kd_precinct::activate(v16);
    }

    else if (*(v16 + 19) == 1)
    {
      kd_precinct::activate(*v11);
    }

    if (*(v16 + 36) > 0)
    {
      break;
    }

    v17 = *(v16 + 28);
    if (v17 >= *(this + 48))
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "layer_idx < num_layers");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    if (v15 < 0)
    {
      v15 = *(*v16 + 24);
      v51 = *(*(*v16 + 8) + 24);
      v53 = *(v16 + 28);
    }

    if (*(this + 295) == 1 && v15 != *(*v16 + 24) || *(this + 296) == 1 && v51 != *(*(*v16 + 8) + 24) || *(this + 297) == 1 && v53 != v17)
    {
      break;
    }

    v18 = *(v16 + 40);
    if (!v18 || (v19 = *(v18 + 8 * v17)) == 0)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Attempting to generate tile-part data without first determining packet lengths.  This may be a consequence of incomplete simulation of the packet construction process.");
      kdu_error::~kdu_error(&v59);
    }

    v13 += v19;
    if (*(this + 294) == 1)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v14 = 0;
        *v62 = 5;
      }

      v20 = 1;
      if (v19 >= 128)
      {
        do
        {
          v21 = v19 >> 14;
          v19 = v19 >> 7;
          ++v20;
        }

        while (v21);
      }

      v22 = *&v62[4 * v14];
      *&v62[4 * v14] = v22 + v20;
      if (v22 + v20 >= 65538)
      {
        *&v62[4 * v14] = v22;
        if (v14 >= 0xFF)
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
          (*(v59 + 16))(&v59, "Cannot satisfy the request to generate PLT marker segments!  There are so many packets in one tile-part that it is beyond the capacity of the maximum 256 marker segments to represent length information for all tile-parts!!");
          kdu_error::~kdu_error(&v59);
        }

        v13 += v22;
        ++v14;
        *&v62[4 * v14] = v20 + 5;
      }
    }

    ++*(v16 + 28);
    ++*(this + 77);
    v11 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
    ++v12;
  }

  while (v11);
  if (!v12)
  {
LABEL_71:
    --*(this + 76);
    kd_packet_sequencer::restore_state(*(this + 12));
    return 0;
  }

  if ((v14 & 0x80000000) == 0)
  {
    v13 += *&v62[4 * v14];
  }

  v54 = v13;
  if (v13 >= 0x100000000)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Length of current tile-part exceeds the maximum value which can be represented by the 32-bit length field in the SOT marker!  You will have to split the code-stream into smaller tile-parts -- see the ORGtparts parameter attribute.");
    kdu_error::~kdu_error(&v59);
  }

  v23 = *(*this + 16);
  v50 = *(v23 + 65);
  v52 = *(v23 + 68);
  kdu_output::put(v23, 255);
  kdu_output::put(v23, 144);
  kdu_output::put(v23, 0);
  kdu_output::put(v23, 10);
  v24 = *(this + 2);
  kdu_output::put(v23, SBYTE1(v24));
  kdu_output::put(v23, v24);
  kdu_output::put(v23, v13);
  kdu_output::put(v23, *(this + 304) - 1);
  if (*(*this + 104) < 1)
  {
    if (*(this + 77) == *(this + 52))
    {
      v25 = *(this + 76);
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  else
  {
    v25 = *(*this + 108);
  }

  kdu_output::put(v23, v25);
  **(*this + 368) += (kdu_params::generate_marker_segments(*(*this + 24), v23, *(this + 2), (*(this + 76) - 1)) + 12);
  if ((v14 & 0x80000000) == 0)
  {
    if ((*(this + 294) & 1) == 0)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "insert_plt_segments");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    kd_packet_sequencer::restore_state(*(this + 12));
    v28 = 0;
    LODWORD(v29) = -1;
    while (1)
    {
      v30 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
      if (!v30)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
        (*(v59 + 16))(&v59, "Assert ");
        (*(v59 + 16))(&v59, "p_ref != NULL");
        (*(v59 + 16))(&v59, " FAILED");
        kdu_error::~kdu_error(&v59);
      }

      v31 = *v30;
      if (*v30)
      {
        if (v31 == 3)
        {
          v31 = 0;
          goto LABEL_90;
        }

        if ((v31 & 1) == 0)
        {
          if (*(v31 + 20) == 1)
          {
            kd_precinct_size_class::withdraw_from_inactive_list(*(v31 + 72), *v30);
            kd_precinct::activate(v31);
          }

          else if (*(v31 + 19) == 1)
          {
            kd_precinct::activate(*v30);
          }

          goto LABEL_90;
        }
      }

      v31 = kd_precinct_ref::instantiate_precinct(v30, v58, v57);
LABEL_90:
      if ((v29 & 0x80000000) != 0 || !*&v62[4 * v29])
      {
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 88);
        v29 = v29 + 1;
        v32 = *&v62[4 * v29];
        kdu_output::put(v23, (v32 - 2) >> 8);
        kdu_output::put(v23, v32 - 2);
        kdu_output::put(v23, v29);
        *&v62[4 * v29] = v32 - 5;
      }

      v33 = *(*(v31 + 40) + 8 * *(v31 + 28));
      v34 = -7;
      do
      {
        v34 += 7;
      }

      while (v33 >> v34 > 127);
      do
      {
        kdu_output::put(v23, (v33 >> v34) & 0x7F | ((v34 != 0) << 7));
        --*&v62[4 * v29];
        v35 = v34 <= 6;
        v34 -= 7;
      }

      while (!v35);
      ++*(v31 + 28);
      ++*(this + 77);
      if (++v28 == v12)
      {
        if (*&v62[4 * v29])
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
          (*(v59 + 16))(&v59, "Assert ");
          (*(v59 + 16))(&v59, "plt_seg_lengths[current_plt_seg] == 0");
          (*(v59 + 16))(&v59, " FAILED");
          kdu_error::~kdu_error(&v59);
        }

        break;
      }
    }
  }

  kdu_output::put(v23, 255);
  kdu_output::put(v23, 147);
  **(*this + 368) += 2;
  kd_packet_sequencer::restore_state(*(this + 12));
  do
  {
    v36 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
    if (!v36)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "p_ref != NULL");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    v37 = *v36;
    if (!*v36)
    {
      goto LABEL_112;
    }

    if (v37 == 3)
    {
      v37 = 0;
      goto LABEL_113;
    }

    if (v37)
    {
LABEL_112:
      v37 = kd_precinct_ref::instantiate_precinct(v36, v58, v57);
    }

    else if (*(v37 + 20) == 1)
    {
      kd_precinct_size_class::withdraw_from_inactive_list(*(v37 + 72), *v36);
      kd_precinct::activate(v37);
    }

    else if (*(v37 + 19) == 1)
    {
      kd_precinct::activate(*v36);
    }

LABEL_113:
    v38 = *(v37 + 28);
    if (v38 < a2)
    {
      v39 = kd_precinct::write_packet(v37, a3[v38], 0);
      v40 = *this;
      v41 = *(*this + 368);
LABEL_116:
      v43 = (v41 + 8 * v38);
      goto LABEL_118;
    }

    v42 = v38 < *(*this + 364);
    v39 = kd_precinct::write_packet(v37, 0, 1);
    v40 = *this;
    v41 = *(*this + 368);
    if (v42)
    {
      goto LABEL_116;
    }

    v43 = (v41 + 8 * *(v40 + 364) - 8);
LABEL_118:
    *v43 += v39;
    --v12;
  }

  while (v12);
  v26 = v54;
  if (v54 != *(v23 + 68) - (v52 + v50) + *(v23 + 65))
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Assert ");
    (*(v59 + 16))(&v59, "tpart_bytes == (out->get_bytes_written() - start_bytes)");
    (*(v59 + 16))(&v59, " FAILED");
    kdu_error::~kdu_error(&v59);
  }

  v45 = *(v40 + 104);
  v44 = v40 + 104;
  ++*(v44 + 356);
  if (v45 >= 1)
  {
    kd_tlm_generator::add_tpart_length(v44, *(this + 2), v54);
    v26 = v54;
  }

  if (*(this + 77) == *(this + 52))
  {
    if (*(*this + 104) >= 1)
    {
      v46 = *(*this + 108);
      v47 = *(this + 76);
      while (v46 > v47)
      {
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 144);
        kdu_output::put(v23, 0);
        kdu_output::put(v23, 10);
        v48 = *(this + 2);
        kdu_output::put(v23, SBYTE1(v48));
        kdu_output::put(v23, v48);
        kdu_output::put(v23, 12);
        kdu_output::put(v23, *(this + 304));
        kdu_output::put(v23, *(*this + 108));
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 147);
        v49 = *this;
        **(*this + 368) += 14;
        kd_tlm_generator::add_tpart_length(v49 + 104, *(this + 2), 0xEuLL);
        v47 = *(this + 76) + 1;
        *(this + 76) = v47;
        v46 = *(*this + 108);
      }
    }

    kd_tile::remove_from_in_progress_list(this);
    if (*(this + 291) == 1 && (*(*this + 408) & 1) == 0)
    {
      kd_tile::release(this);
    }

    return v54;
  }

  return v26;
}

void sub_185F199F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

uint64_t kdu_output::put(kdu_output *this, int a2)
{
  kdu_output::put(this, SHIBYTE(a2));
  kdu_output::put(this, SBYTE2(a2));
  kdu_output::put(this, SBYTE1(a2));
  kdu_output::put(this, a2);
  return 4;
}

uint64_t kdu_output::put(kdu_output *this, char a2)
{
  v4 = *(this + 65);
  if (v4 == *(this + 66))
  {
    (*(*this + 16))(this);
    v4 = *(this + 65);
    if (v4 >= *(this + 66))
    {
      kdu_output::put();
    }
  }

  *(this + 65) = v4 + 1;
  *v4 = a2;
  return 1;
}

uint64_t kd_precinct::write_packet(kd_precinct *this, unsigned int a2, char a3)
{
  v3 = a3;
  v5 = *(*(*this + 8) + 8);
  v6 = *(**this + 16);
  if (a3)
  {
    v7 = 0;
    v35 = 0x700000000;
    v36 = 0;
    v37 = v6;
  }

  else
  {
    if (*(*this + 222))
    {
      v9 = 0;
      v7 = 0;
      do
      {
        v10 = *(this + 6) + 32 * v9;
        if (!*(this + 7))
        {
          kd_block::reset_output_tree(*(v10 + 24), *(v10 + 16));
        }

        v11 = *(v10 + 16) * *(v10 + 20);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = 40 * v11;
          do
          {
            v7 += kd_block::start_packet((*(v10 + 24) + v12), *(this + 7), a2);
            v12 += 40;
          }

          while (v13 != v12);
        }

        ++v9;
      }

      while (v9 < *(*this + 222));
      v14 = *(*(*this + 8) + 8);
      v3 = a3;
    }

    else
    {
      v7 = 0;
      v14 = *(*(*this + 8) + 8);
    }

    if (*(v14 + 284) == 1)
    {
      kdu_output::put(v6, 255);
      kdu_output::put(v6, 145);
      kdu_output::put(v6, 0);
      kdu_output::put(v6, 4);
      v15 = *(v5 + 308);
      kdu_output::put(v6, SBYTE1(v15));
      kdu_output::put(v6, v15);
      v7 += 6;
    }

    v35 = 0x800000000;
    v36 = 0;
    v37 = v6;
    kd_header_out::put_bit(&v35, 1u);
    v16 = *this;
    if (*(*this + 222))
    {
      v17 = 0;
      do
      {
        v18 = *(this + 6) + 32 * v17;
        v19 = *(v18 + 16) * *(v18 + 20);
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = 40 * v19;
          do
          {
            kd_block::write_packet_header(*(v18 + 24) + v20, &v35, *(this + 7), 0);
            v20 += 40;
          }

          while (v21 != v20);
          v16 = *this;
        }

        ++v17;
      }

      while (v17 < *(v16 + 222));
    }
  }

  v22 = v7 + kd_header_out::finish(&v35);
  if (*(*(*(*this + 8) + 8) + 285) == 1)
  {
    kdu_output::put(v6, 255);
    kdu_output::put(v6, 146);
    v22 += 2;
  }

  if ((v3 & 1) == 0)
  {
    v23 = *this;
    if (*(*this + 222))
    {
      v24 = 0;
      do
      {
        v25 = *(this + 6) + 32 * v24;
        v26 = *(v25 + 16) * *(v25 + 20);
        if (v26 >= 1)
        {
          v27 = 0;
          v28 = 40 * v26;
          do
          {
            kd_block::write_body_bytes((*(v25 + 24) + v27), v6);
            v27 += 40;
          }

          while (v28 != v27);
          v23 = *this;
        }

        ++v24;
      }

      while (v24 < *(v23 + 222));
    }
  }

  v29 = *(this + 7);
  if (v22 != *(*(this + 5) + 8 * v29))
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    kdu_error::kdu_error(v33, "Kakadu Core Error:\n");
    (*(*&v33[0] + 16))(v33, "Assert ");
    (*(*&v33[0] + 16))(v33, "check_bytes == packet_bytes[next_layer_idx]");
    (*(*&v33[0] + 16))(v33, " FAILED");
    kdu_error::~kdu_error(v33);
  }

  v30 = v29 + 1;
  *(this + 7) = v30;
  ++*(v5 + 308);
  if (v30 == *(v5 + 192))
  {
    kd_global_rescomp::close_ready_precinct(*(*this + 16), this);
  }

  return v22;
}

uint64_t *kdu_tile::close(void *a1, kdu_thread_entity *this)
{
  v2 = this;
  if (this)
  {
    kdu_thread_entity::acquire_lock(this, 0, 1);
  }

  v4 = *a1;
  if (*(*a1 + 289) != 1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
    (*(v24 + 16))(&v24, "Assert ");
    (*(v24 + 16))(&v24, "0");
    (*(v24 + 16))(&v24, " FAILED");
    kdu_error::~kdu_error(&v24);
  }

  v5 = *v4;
  --*(*v4 + 260);
  *(v4 + 289) = 0;
  if (*(v4 + 291))
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
    (*(v24 + 16))(&v24, "Assert ");
    (*(v24 + 16))(&v24, "!state->closed");
    (*(v24 + 16))(&v24, " FAILED");
    kdu_error::~kdu_error(&v24);
  }

  if (*(v5 + 8) && *(v4 + 47) >= 1)
  {
    v22 = v2;
    v23 = a1;
    v6 = 0;
    do
    {
      v7 = v4[34] + 224 * v6;
      if (*(v7 + 176))
      {
        v8 = *(v7 + 68);
        if ((v8 & 0x80000000) == 0)
        {
          v9 = 0;
          do
          {
            v10 = *(v7 + 176) + 704 * v9;
            v11 = *(v10 + 208);
            if (v11 >= 1)
            {
              v12 = 0;
              v13 = *(v10 + 200) - *(v10 + 184);
              v14 = *(v10 + 212);
              v15 = 8 * (*(v10 + 204) - *(v10 + 188));
              do
              {
                if (v14 >= 1)
                {
                  v16 = 0;
                  v17 = v15;
                  do
                  {
                    v18 = *(*(v10 + 232) + 8 * v13 * *(v10 + 196) + v17);
                    if (v18)
                    {
                      v19 = (*(*(v10 + 232) + 8 * v13 * *(v10 + 196) + v17) & 1) == 0;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    if (v19)
                    {
                      kd_precinct::release(v18);
                      v14 = *(v10 + 212);
                    }

                    ++v16;
                    v17 += 8;
                  }

                  while (v16 < v14);
                  v11 = *(v10 + 208);
                }

                ++v12;
                ++v13;
              }

              while (v12 < v11);
              v8 = *(v7 + 68);
            }
          }

          while (v9++ < v8);
          a1 = v23;
          v4 = *v23;
        }
      }

      ++v6;
    }

    while (v6 < *(v4 + 47));
    v5 = *v4;
    v2 = v22;
  }

  if ((*(v5 + 417) != 1 || *(v4 + 287) == 1) && ((*(v4 + 291) = 1, *(v5 + 8)) && (v4[41] & 1) != 0 || *(v5 + 16) && *(v4 + 77) == *(v4 + 52)) && (*(v5 + 408) & 1) == 0)
  {
    result = kd_tile::release(v4);
    *a1 = 0;
  }

  else
  {
    result = kd_tile::adjust_unloadability(v4, this);
  }

  *a1 = 0;
  if (v2)
  {
    return kdu_thread_entity::release_lock(v2, 0);
  }

  return result;
}

uint64_t kdu_thread_entity::acquire_lock(uint64_t this, int a2, int a3)
{
  if (a2 < 0 || (v3 = this, *(this + 48) <= a2) || (v4 = *(this + 56) + 80 * a2, *(v4 + 72) == this))
  {
    kdu_thread_entity::acquire_lock();
  }

  if (a3 && **(this + 40) == 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = *(*(v3 + 40) + 4);
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (*(v4 + 64) == 1)
  {
    this = pthread_mutex_lock((*(this + 56) + 80 * a2));
  }

  *(v4 + 72) = v3;
  return this;
}

uint64_t kdu_thread_entity::release_lock(uint64_t this, int a2)
{
  if (a2 < 0 || *(this + 48) <= a2 || (result = *(this + 56) + 80 * a2, *(result + 72) != this))
  {
    kdu_thread_entity::release_lock();
  }

  *(result + 72) = 0;
  if (*(result + 64) == 1)
  {

    return pthread_mutex_unlock(result);
  }

  return result;
}

uint64_t *kd_precinct::release(uint64_t *this)
{
  v1 = **this;
  if (!*(v1 + 8))
  {
    kd_precinct::release();
  }

  *(this + 9) = 0;
  *(this + 19) = 1;
  if ((*(this + 18) & 1) != 0 || *(this + 17) == 1 && (*(v1 + 417) & 1) == 0)
  {
    this = this[1];
    v2 = *this;
    if (*this)
    {
      v3 = (*this & 1) == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      kd_precinct::release();
    }

    if ((*(v2 + 20) & 1) == 0)
    {
      *(v2 + 19) = 1;
      if (*(v2 + 18) != 1 || (*(**v2 + 418) & 1) != 0 || (v4 = *(v2 + 32)) != 0 && v4 != *(v2 + 28))
      {

        return kd_precinct_ref::close(this);
      }

      else
      {
        v5 = *(v2 + 72);

        return kd_precinct_size_class::move_to_inactive_list(v5, v2);
      }
    }
  }

  return this;
}

uint64_t kdu_tile::get_tile_idx(unsigned __int8 ***this)
{
  LODWORD(v1) = *(*this + 4);
  v2 = **this;
  v3 = v2[409];
  v4 = v2[410];
  v5 = v2[411];
  v6 = v3 == 0;
  if (v3)
  {
    v7 = *(*this + 3);
  }

  else
  {
    v7 = *(*this + 4);
  }

  if (v6)
  {
    LODWORD(v1) = *(*this + 3);
  }

  if (v5)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  if (v4)
  {
    v1 = -v1;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v8 << 32);
}

uint64_t kdu_tile::get_ycc(kdu_tile *this)
{
  v1 = *this;
  if (*(*this + 286) != 1)
  {
    return 0;
  }

  if (*(v1 + 188) < 3)
  {
    return 0;
  }

  v2 = *(v1 + 272);
  if (v2[184] != 1 || v2[408] != 1 || v2[632] != 1)
  {
    return 0;
  }

  if (*(*v1 + 184) != 1)
  {
    return 1;
  }

  v3 = 88;
  do
  {
    v4 = *(*(*v1 + 312) + v3);
    if (v4 < 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
      (*(*&v7[0] + 16))(v7, "Assert ");
      (*(*&v7[0] + 16))(v7, "apparent_idx >= 0");
      (*(*&v7[0] + 16))(v7, " FAILED");
      kdu_error::~kdu_error(v7);
    }

    result = *(*(v1 + 272) + 224 * v4 + 185);
    if (result != 1)
    {
      break;
    }

    v6 = v3 == 296;
    v3 += 104;
  }

  while (!v6);
  return result;
}

int64x2_t kdu_tile::set_components_of_interest(uint64_t **this, uint64_t a2, unsigned int *a3, int64x2_t result)
{
  v4 = a3;
  v5 = *this;
  v6 = **this;
  v7 = *(v6 + 184);
  if (v7 || !v5[32])
  {
    v8 = v5[34];
    v9 = v7 == 1;
    v10 = 180;
    if (v9)
    {
      v10 = 172;
    }

    v11 = *(v6 + v10);
    if (a2)
    {
      if (a3)
      {
        if (v11 >= 1)
        {
          v12 = 0;
          result = vdupq_n_s64(v11 - 1);
          v13 = xmmword_186205E50;
          v14 = xmmword_186205E60;
          v15 = xmmword_186205E70;
          v16 = xmmword_186205E80;
          v17 = xmmword_186205E90;
          v18 = xmmword_186205EA0;
          v19 = xmmword_186205EB0;
          v20 = xmmword_186205EC0;
          v21 = vdupq_n_s64(0x10uLL);
          do
          {
            v22 = vmovn_s64(vcgeq_u64(result, v20));
            if (vuzp1_s8(vuzp1_s16(v22, *result.i8), *result.i8).u8[0])
            {
              v8[v12 + 185] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&result), *&result).i8[1])
            {
              v8[v12 + 409] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v19))), *&result).i8[2])
            {
              v8[v12 + 633] = 0;
              v8[v12 + 857] = 0;
            }

            v23 = vmovn_s64(vcgeq_u64(result, v18));
            if (vuzp1_s8(*&result, vuzp1_s16(v23, *&result)).i32[1])
            {
              v8[v12 + 1081] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(v23, *&result)).i8[5])
            {
              v8[v12 + 1305] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v17)))).i8[6])
            {
              v8[v12 + 1529] = 0;
              v8[v12 + 1753] = 0;
            }

            v24 = vmovn_s64(vcgeq_u64(result, v16));
            if (vuzp1_s8(vuzp1_s16(v24, *result.i8), *result.i8).u8[0])
            {
              v8[v12 + 1977] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v24, *&result), *&result).i8[1])
            {
              v8[v12 + 2201] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v15))), *&result).i8[2])
            {
              v8[v12 + 2425] = 0;
              v8[v12 + 2649] = 0;
            }

            v25 = vmovn_s64(vcgeq_u64(result, v14));
            if (vuzp1_s8(*&result, vuzp1_s16(v25, *&result)).i32[1])
            {
              v8[v12 + 2873] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(v25, *&result)).i8[5])
            {
              v8[v12 + 3097] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v13)))).i8[6])
            {
              v8[v12 + 3321] = 0;
              v8[v12 + 3545] = 0;
            }

            v18 = vaddq_s64(v18, v21);
            v19 = vaddq_s64(v19, v21);
            v20 = vaddq_s64(v20, v21);
            v17 = vaddq_s64(v17, v21);
            v16 = vaddq_s64(v16, v21);
            v15 = vaddq_s64(v15, v21);
            v14 = vaddq_s64(v14, v21);
            v12 += 3584;
            v13 = vaddq_s64(v13, v21);
          }

          while (3584 * ((v11 + 15) >> 4) != v12);
        }

        if (a2 >= 1)
        {
          v26 = a2;
          do
          {
            v28 = *v4++;
            v27 = v28;
            if ((v28 & 0x80000000) == 0 && v27 < v11)
            {
              v8[224 * v27 + 185] = 1;
            }

            --v26;
          }

          while (v26);
        }
      }

      else if (v11 >= 1)
      {
        result = vdupq_n_s64(v11 - 1);
        v45 = -((v11 + 15) & 0xFFFFFFF0);
        v46 = xmmword_186205E50;
        v47 = xmmword_186205E60;
        v48 = xmmword_186205E70;
        v49 = xmmword_186205E80;
        v50 = xmmword_186205E90;
        v51 = xmmword_186205EA0;
        v52 = xmmword_186205EB0;
        v53 = xmmword_186205EC0;
        v54 = 15;
        v55 = vdupq_n_s64(0x10uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(result, v53));
          if (vuzp1_s8(vuzp1_s16(v56, *result.i8), *result.i8).u8[0])
          {
            v8[185] = v54 - 15 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(v56, *&result), *&result).i8[1])
          {
            v8[409] = v54 - 14 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v52))), *&result).i8[2])
          {
            v8[633] = v54 - 13 < a2;
            v8[857] = v54 - 12 < a2;
          }

          v57 = vmovn_s64(vcgeq_u64(result, v51));
          if (vuzp1_s8(*&result, vuzp1_s16(v57, *&result)).i32[1])
          {
            v8[1081] = v54 - 11 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(v57, *&result)).i8[5])
          {
            v8[1305] = v54 - 10 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v50)))).i8[6])
          {
            v8[1529] = v54 - 9 < a2;
            v8[1753] = v54 - 8 < a2;
          }

          v58 = vmovn_s64(vcgeq_u64(result, v49));
          if (vuzp1_s8(vuzp1_s16(v58, *result.i8), *result.i8).u8[0])
          {
            v8[1977] = v54 - 7 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(v58, *&result), *&result).i8[1])
          {
            v8[2201] = v54 - 6 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v48))), *&result).i8[2])
          {
            v8[2425] = v54 - 5 < a2;
            v8[2649] = v54 - 4 < a2;
          }

          v59 = vmovn_s64(vcgeq_u64(result, v47));
          if (vuzp1_s8(*&result, vuzp1_s16(v59, *&result)).i32[1])
          {
            v8[2873] = v54 - 3 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(v59, *&result)).i8[5])
          {
            v8[3097] = v54 - 2 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v46)))).i8[6])
          {
            v8[3321] = v54 - 1 < a2;
            v8[3545] = v54 < a2;
          }

          v51 = vaddq_s64(v51, v55);
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v50 = vaddq_s64(v50, v55);
          v49 = vaddq_s64(v49, v55);
          v48 = vaddq_s64(v48, v55);
          v47 = vaddq_s64(v47, v55);
          v46 = vaddq_s64(v46, v55);
          v54 += 16;
          v8 += 3584;
        }

        while (v45 + v54 != 15);
      }
    }

    else if (v11 >= 1)
    {
      v30 = 0;
      result = vdupq_n_s64(v11 - 1);
      v31 = 3584 * ((v11 + 15) >> 4);
      v32 = xmmword_186205E50;
      v33 = xmmword_186205E60;
      v34 = xmmword_186205E70;
      v35 = xmmword_186205E80;
      v36 = xmmword_186205E90;
      v37 = xmmword_186205EA0;
      v38 = xmmword_186205EB0;
      v39 = xmmword_186205EC0;
      v40 = vdupq_n_s64(0x10uLL);
      do
      {
        v41 = vmovn_s64(vcgeq_u64(result, v39));
        if (vuzp1_s8(vuzp1_s16(v41, *result.i8), *result.i8).u8[0])
        {
          v8[v30 + 185] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v41, *&result), *&result).i8[1])
        {
          v8[v30 + 409] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v38))), *&result).i8[2])
        {
          v8[v30 + 633] = 1;
          v8[v30 + 857] = 1;
        }

        v42 = vmovn_s64(vcgeq_u64(result, v37));
        if (vuzp1_s8(*&result, vuzp1_s16(v42, *&result)).i32[1])
        {
          v8[v30 + 1081] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(v42, *&result)).i8[5])
        {
          v8[v30 + 1305] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v36)))).i8[6])
        {
          v8[v30 + 1529] = 1;
          v8[v30 + 1753] = 1;
        }

        v43 = vmovn_s64(vcgeq_u64(result, v35));
        if (vuzp1_s8(vuzp1_s16(v43, *result.i8), *result.i8).u8[0])
        {
          v8[v30 + 1977] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v43, *&result), *&result).i8[1])
        {
          v8[v30 + 2201] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v34))), *&result).i8[2])
        {
          v8[v30 + 2425] = 1;
          v8[v30 + 2649] = 1;
        }

        v44 = vmovn_s64(vcgeq_u64(result, v33));
        if (vuzp1_s8(*&result, vuzp1_s16(v44, *&result)).i32[1])
        {
          v8[v30 + 2873] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(v44, *&result)).i8[5])
        {
          v8[v30 + 3097] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v32)))).i8[6])
        {
          v8[v30 + 3321] = 1;
          v8[v30 + 3545] = 1;
        }

        v37 = vaddq_s64(v37, v40);
        v38 = vaddq_s64(v38, v40);
        v39 = vaddq_s64(v39, v40);
        v36 = vaddq_s64(v36, v40);
        v35 = vaddq_s64(v35, v40);
        v34 = vaddq_s64(v34, v40);
        v33 = vaddq_s64(v33, v40);
        v30 += 3584;
        v32 = vaddq_s64(v32, v40);
      }

      while (v31 != v30);
    }
  }

  else
  {
    kd_mct_stage::apply_output_restrictions(v5[33], *(v6 + 320), a2, a3);
    v5 = *this;
  }

  v60 = *(v5 + 47);
  if (v60 >= 1)
  {
    v61 = v5[34];
    v62 = (v60 + 3) & 0xFFFFFFFC;
    result = xmmword_186205EB0;
    v63 = xmmword_186205EC0;
    v64 = vdupq_n_s64(v60 - 1);
    v65 = vdupq_n_s64(4uLL);
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v64, v63));
      if (vuzp1_s16(v66, *result.i8).u8[0])
      {
        v61[39] = -1082130432;
      }

      if (vuzp1_s16(v66, *&result).i8[2])
      {
        v61[95] = -1082130432;
      }

      if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v64, *&result))).i32[1])
      {
        v61[151] = -1082130432;
        v61[207] = -1082130432;
      }

      result = vaddq_s64(result, v65);
      v63 = vaddq_s64(v63, v65);
      v61 += 224;
      v62 -= 4;
    }

    while (v62);
  }

  return result;
}

uint64_t kdu_tile::get_mct_block_info(uint64_t **this, int a2, int a3, int *a4, int *a5, int *a6, int *a7, unint64_t a8, int *a9, unint64_t a10, int *a11, int *a12)
{
  v16 = a3;
  v18 = a10;
  v109 = *MEMORY[0x1E69E9840];
  v19 = **this;
  v20 = *(v19 + 184);
  if (v20 == 1 || (v21 = (*this)[32]) == 0)
  {
    if (a3 | a2)
    {
      return 0;
    }

    v27 = 172;
    if (v20 != 1)
    {
      v27 = 180;
    }

    v28 = *(v19 + v27);
    *a5 = v28;
    *a7 = v28;
    *a6 = v28;
    *a4 = v28;
    ycc = kdu_tile::get_ycc(this);
    v30 = v20 == 1 || ycc == 0;
    if (v30)
    {
      v107 = -1;
      v108 = -1;
      v43 = a11;
      if (!ycc)
      {
        v41 = 0;
LABEL_55:
        v37 = a10;
        goto LABEL_56;
      }
    }

    else
    {
      v42 = 16;
      v43 = a11;
      while (1)
      {
        v44 = *(*(v19 + 320) + v42);
        if (v44 & 0x80000000) == 0 && (*((*this)[34] + 224 * v44 + 185))
        {
          break;
        }

        v42 += 48;
        if (v42 == 160)
        {
          v41 = 0;
          v107 = -1;
          v108 = -1;
          goto LABEL_55;
        }
      }

      v107 = -1;
      v108 = -1;
    }

    v31 = 0;
    v32 = *this;
    v33 = **this;
    v34 = *a4;
    v35 = (*(v33 + 312) + 88);
    v36 = 16;
    v37 = a10;
    do
    {
      v38 = *v35;
      v35 += 26;
      *(&v107 + v31) = v38;
      if (v38 < 0 || (v39 = *(v33 + 176), v31 > v39))
      {
LABEL_196:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -50;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      if (v20 != 1)
      {
        if (v31 >= v39)
        {
          goto LABEL_196;
        }

        v40 = *(*(v19 + 320) + v36);
        if ((v40 & 0x80000000) != 0)
        {
          goto LABEL_196;
        }

        if ((*(v32[34] + 224 * v40 + 185) & 1) == 0)
        {
          *a4 = ++v34;
        }
      }

      ++v31;
      v36 += 48;
    }

    while (v31 != 3);
    v41 = 1;
LABEL_56:
    v49 = *a4;
    v50 = *a5;
    if (*a5 >= 1)
    {
      v51 = 0;
      v52 = ((*this)[34] + 185);
      do
      {
        v53 = *v52;
        v52 += 224;
        if ((v53 & 1) == 0)
        {
          --*a4;
          --*a6;
          --*a7;
          v50 = *a5;
        }

        ++v51;
      }

      while (v51 < v50);
    }

    if (a9)
    {
      if (v50 < 1)
      {
        v55 = 0;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = ((*this)[34] + 185);
        do
        {
          v57 = *v56;
          v56 += 224;
          if (v57 == 1)
          {
            a9[v55++] = v54;
            v50 = *a5;
          }

          ++v54;
        }

        while (v54 < v50);
      }

      if (v55 != *a7)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    if (v37 | v43)
    {
      v58 = *a5;
      if (*a5 >= 1)
      {
        v59 = 0;
        v60 = 0;
        v61 = ((*this)[34] + 185);
        v62 = 20;
        v63 = 96;
        while (1)
        {
          v64 = *v61;
          v61 += 224;
          if (v64 == 1)
          {
            break;
          }

LABEL_86:
          ++v59;
          v62 += 48;
          v63 += 104;
          if (v59 >= v58)
          {
            goto LABEL_89;
          }
        }

        if (v20 == 1)
        {
          v65 = (*(v19 + 312) + v63);
        }

        else
        {
          v65 = (*(v19 + 320) + 48 * *(*(v19 + 320) + v62) + 8);
        }

        v66 = *v65;
        if (*(v66 + 20))
        {
          v67 = 0;
          if (!v43)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v67 = 1 << (*(v66 + 16) - 1);
          if (!v43)
          {
LABEL_83:
            if (v37)
            {
              *(v37 + 4 * v60) = v67;
            }

            ++v60;
            v58 = *a5;
            goto LABEL_86;
          }
        }

        *(v43 + 4 * v60) = v67;
        goto LABEL_83;
      }

      v60 = 0;
LABEL_89:
      if (v60 != *a7)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    if (!(a8 | a12))
    {
      return 1;
    }

    if (v20 != 1)
    {
      v69 = v41 ^ 1;
      if (!a12)
      {
        v69 = 1;
      }

      if ((v69 & 1) == 0)
      {
        *a12 = 0x100000000;
        a12[2] = 2;
      }

      if (v41)
      {
        v70 = 3;
      }

      else
      {
        v70 = 0;
      }

      v71 = *a5;
      if (*a5 < 1)
      {
        v73 = 0;
      }

      else
      {
        v72 = 0;
        v73 = 0;
        v74 = ((*this)[34] + 185);
        v75 = 20;
        do
        {
          v76 = *v74;
          v74 += 224;
          if (v76 == 1)
          {
            v77 = *(*(v19 + 320) + v75);
            if ((v41 & (v77 < 3)) != 0)
            {
              v78 = *(*(v19 + 320) + v75);
            }

            else
            {
              v78 = v70;
            }

            if (a12)
            {
              a12[v78] = v77;
            }

            if (a8)
            {
              *(a8 + 4 * v73) = v78;
            }

            v70 += !(v41 & (v77 < 3));
            ++v73;
            v71 = *a5;
          }

          ++v72;
          v75 += 48;
        }

        while (v72 < v71);
      }

      if (v70 != *a4)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "non_ycc_idx == num_stage_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      if (v73 != *a6)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      return 1;
    }

    if (v49 < 1)
    {
      v80 = 0;
LABEL_155:
      if (v80 != *a6)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      return 1;
    }

    v79 = 0;
    v80 = 0;
    if (v41)
    {
      v81 = 3;
    }

    else
    {
      v81 = 0;
    }

    v82 = v107;
    v83 = HIDWORD(v107);
    v84 = v108;
    v85 = 185;
    while (1)
    {
      if (v82 == v79)
      {
        v86 = 0;
        if (a12)
        {
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (v83 == v79)
      {
        v86 = 1;
        if (a12)
        {
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (v84 == v79)
      {
        break;
      }

      if (*((*this)[34] + v85) == 1)
      {
        v86 = v81++;
        if (!a12)
        {
          goto LABEL_122;
        }

LABEL_121:
        a12[v86] = v79;
LABEL_122:
        if (a8)
        {
          *(a8 + 4 * v80) = v86;
        }

        ++v80;
      }

      ++v79;
      v85 += 224;
      if (v49 == v79)
      {
        goto LABEL_155;
      }
    }

    v86 = 2;
    if (a12)
    {
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (a2 >= 1)
  {
    do
    {
      v22 = a2;
      v21 = *(v21 + 56);
      --a2;
    }

    while (v22 >= 2 && v21);
    if (!v21)
    {
      return 0;
    }
  }

  *a4 = *(v21 + 4);
  *a5 = *(v21 + 20);
  if (a12)
  {
    if (a2)
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "stage_idx == 0");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }

    v23 = *v21;
    if (*v21 < 1)
    {
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (v25 >= *(v21 + 4))
        {
          break;
        }

        v26 = *(*(v21 + 8) + 4 * v24);
        if ((v26 & 0x80000000) == 0)
        {
          if (v26 != v25)
          {
            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
            (*(v104 + 16))(&v104, "Assert ");
            (*(v104 + 16))(&v104, "stage->input_required_indices[n] == m");
            (*(v104 + 16))(&v104, " FAILED");
            kdu_error::~kdu_error(&v104);
          }

          a12[v25++] = v24;
          v23 = *v21;
        }

        ++v24;
      }

      while (v24 < v23);
    }

    if (v25 != *(v21 + 4))
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == stage->num_required_inputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  v45 = *(v21 + 32);
  if (v45 <= a3)
  {
    return 0;
  }

  v46 = *(v21 + 40);
  if (v45 >= 1)
  {
    v47 = 0;
    v48 = a8;
    do
    {
      if (*(v46 + 36) >= 1)
      {
        if (!v16)
        {
          goto LABEL_137;
        }

        --v16;
      }

      ++v47;
      v46 += 152;
    }

    while (v45 != v47);
    return 0;
  }

  v47 = 0;
  v48 = a8;
LABEL_137:
  v87 = a11;
  if (v47 == v45)
  {
    return 0;
  }

  *a6 = *(v46 + 12);
  *a7 = *(v46 + 36);
  if (v48)
  {
    v88 = *(v46 + 8);
    if (v88 < 1)
    {
      v90 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      do
      {
        if (v90 >= *(v46 + 12))
        {
          break;
        }

        if (*(*(v46 + 24) + v89) == 1)
        {
          v91 = *(*(v21 + 8) + 4 * *(*(v46 + 16) + 4 * v89));
          if (v91 < 0)
          {
            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
            (*(v104 + 16))(&v104, "Assert ");
            (*(v104 + 16))(&v104, "stage->input_required_indices[idx] >= 0");
            (*(v104 + 16))(&v104, " FAILED");
            kdu_error::~kdu_error(&v104);
          }

          *(v48 + 4 * v90++) = v91;
          v88 = *(v46 + 8);
        }

        ++v89;
      }

      while (v89 < v88);
    }

    v30 = v90 == *(v46 + 12);
    v87 = a11;
    if (!v30)
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == block->num_required_inputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  if (a9)
  {
    v92 = *(v46 + 32);
    if (v92 < 1)
    {
      v94 = 0;
    }

    else
    {
      v93 = 0;
      v94 = 0;
      do
      {
        if (v94 >= *(v46 + 36))
        {
          break;
        }

        v95 = *(v21 + 24) + 48 * *(*(v46 + 40) + 4 * v93);
        if (*(v95 + 40) == 1)
        {
          a9[v94++] = *(v95 + 16);
          v92 = *(v46 + 32);
        }

        ++v93;
      }

      while (v93 < v92);
    }

    if (v94 != *(v46 + 36))
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == block->num_apparent_outputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  if (*(v46 + 64) && !*(v46 + 80))
  {
    if (a10 | v87)
    {
      v98 = *(v46 + 32);
      if (v98 < 1)
      {
        v100 = 0;
      }

      else
      {
        v99 = 0;
        v100 = 0;
        do
        {
          if (v100 >= *(v46 + 36))
          {
            break;
          }

          if (*(*(v21 + 24) + 48 * *(*(v46 + 40) + 4 * v99) + 40) == 1)
          {
            v101 = v18 != 0;
            LODWORD(v104) = 0;
            kdu_params::get(*(v46 + 64), "Mvector_coeffs", v99, 0, &v104, 1, 1, 1);
            v18 = a10;
            if (v101)
            {
              *(a10 + 4 * v100) = v104;
            }

            if (a11)
            {
              a11[v100] = vcvtmd_s64_f64(*&v104 + 0.5);
            }

            ++v100;
            v98 = *(v46 + 32);
          }

          ++v99;
        }

        while (v99 < v98);
      }

      if (v100 != *(v46 + 36))
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "m == block->num_apparent_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    return 1;
  }

  if (a10)
  {
    v96 = *(v46 + 36);
    if (v96 >= 1)
    {
      bzero(a10, 4 * v96);
    }
  }

  if (!v87 || *(v46 + 36) < 1)
  {
    return 1;
  }

  v97 = 0;
  result = 1;
  do
  {
    *(v87 + 4 * v97++) = 0;
  }

  while (v97 < *(v46 + 36));
  return result;
}

uint64_t kdu_tile::get_mct_matrix_info(kdu_tile *this, unsigned int a2, int a3, float *a4)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v6 = *(*this + 256);
  if (a2 >= 1 && v6)
  {
    do
    {
      v6 = *(v6 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v6);
  }

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  if (v7 <= a3)
  {
    return 0;
  }

  v8 = *(v6 + 40);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*(v8 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_18;
        }

        --a3;
      }

      v8 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_18:
  if (i == v7 || !*(v8 + 72) || (*(v8 + 57) & 1) != 0 || (*(v8 + 56) & 1) != 0)
  {
    return 0;
  }

  if (a4)
  {
    v10 = *(v8 + 32);
    if (v10 < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *(v8 + 8);
        if (*(*(v6 + 24) + 48 * *(*(v8 + 40) + 4 * v11) + 40) == 1)
        {
          if (v14 >= 1)
          {
            for (j = 0; j < v14; ++j)
            {
              if (*(*(v8 + 24) + j) == 1)
              {
                LODWORD(v16[0]) = 0;
                kdu_params::get(*(v8 + 72), "Mmatrix_coeffs", v13 + j, 0, v16, 1, 1, 1);
                a4[v12++] = *v16;
                v14 = *(v8 + 8);
              }
            }

            v10 = *(v8 + 32);
            v13 += j;
          }
        }

        else
        {
          v13 += v14;
        }

        ++v11;
      }

      while (v11 < v10);
    }

    if (v12 != *(v8 + 12) * *(v8 + 36))
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
      (*(*&v16[0] + 16))(v16, "Assert ");
      (*(*&v16[0] + 16))(v16, "c_out==(block->num_apparent_outputs*block->num_required_inputs)");
      (*(*&v16[0] + 16))(v16, " FAILED");
      kdu_error::~kdu_error(v16);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_rxform_info(kdu_tile *this, unsigned int a2, int a3, int *a4, int *a5)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v8 = *(*this + 256);
  if (a2 >= 1 && v8)
  {
    do
    {
      v8 = *(v8 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v8);
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 32);
  if (v9 <= a3)
  {
    return 0;
  }

  v10 = *(v8 + 40);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*(v10 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        --a3;
      }

      v10 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_17:
  if (i == v9 || !*(v10 + 72) || (*(v10 + 57) & 1) != 0 || *(v10 + 56) != 1)
  {
    return 0;
  }

  if (*(v10 + 12) != *(v10 + 8))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    kdu_error::kdu_error(&v17, "Kakadu Core Error:\n");
    (*(v17 + 16))(&v17, "Assert ");
    (*(v17 + 16))(&v17, "block->num_required_inputs == block->num_inputs");
    (*(v17 + 16))(&v17, " FAILED");
    kdu_error::~kdu_error(&v17);
  }

  if (a4)
  {
    v12 = (*(v10 + 12) + *(v10 + 12) * *(v10 + 12));
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        LODWORD(v17) = 0;
        kdu_params::get(*(v10 + 72), "Mmatrix_coeffs", j, 0, &v17, 1, 1, 1);
        a4[j] = vcvtmd_s64_f64(*&v17 + 0.5);
      }
    }
  }

  if (a5)
  {
    v14 = *(v10 + 32);
    if (v14 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (v16 >= *(v10 + 36))
        {
          break;
        }

        if (*(*(v8 + 24) + 48 * *(*(v10 + 40) + 4 * v15) + 40) == 1)
        {
          a5[v16++] = v15;
          v14 = *(v10 + 32);
        }

        ++v15;
      }

      while (v15 < v14);
    }

    if (v16 != *(v10 + 36))
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      kdu_error::kdu_error(&v17, "Kakadu Core Error:\n");
      (*(v17 + 16))(&v17, "Assert ");
      (*(v17 + 16))(&v17, "m == block->num_apparent_outputs");
      (*(v17 + 16))(&v17, " FAILED");
      kdu_error::~kdu_error(&v17);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_dependency_info(kdu_tile *this, unsigned int a2, int a3, BOOL *a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int *a9)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v14 = *(*this + 256);
  if (a2 >= 1 && v14)
  {
    do
    {
      v14 = *(v14 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v14);
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 32);
  if (v15 <= a3)
  {
    return 0;
  }

  v16 = *(v14 + 40);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*(v16 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        --a3;
      }

      v16 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_17:
  if (i == v15 || !*(v16 + 80) || (*(v16 + 57) & 1) != 0)
  {
    return 0;
  }

  v18 = *(v16 + 56);
  *a4 = v18;
  if (v18 == 1)
  {
    if (a5 | a6)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "(irrev_coefficients == NULL) && (irrev_offsets == NULL)");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }

    if (a7)
    {
      v19 = *(v16 + 12) + *(v16 + 12) * *(v16 + 12);
      if (v19 >= 4)
      {
        v20 = 0;
        v21 = (v19 >> 1) - 1;
        do
        {
          LODWORD(v30) = 0;
          kdu_params::get(*(v16 + 80), "Mtriang_coeffs", v20, 0, &v30, 1, 1, 1);
          *(a7 + 4 * v20++) = vcvtmd_s64_f64(*&v30 + 0.5);
        }

        while (v21 != v20);
      }
    }

    if (a8 && *(v16 + 12) >= 1)
    {
      v22 = 0;
      do
      {
        LODWORD(v30) = 0;
        kdu_params::get(*(v16 + 64), "Mvector_coeffs", v22, 0, &v30, 1, 1, 1);
        *(a8 + 4 * v22++) = vcvtmd_s64_f64(*&v30 + 0.5);
      }

      while (v22 < *(v16 + 12));
    }
  }

  else
  {
    if (a7 | a8)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "(rev_coefficients == NULL) && (rev_offsets == NULL)");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }

    if (a5)
    {
      v23 = (*(v16 + 12) - 1) * *(v16 + 12);
      if (v23 >= 2)
      {
        v24 = 0;
        v25 = v23 >> 1;
        do
        {
          LODWORD(v30) = 0;
          kdu_params::get(*(v16 + 80), "Mtriang_coeffs", v24, 0, &v30, 1, 1, 1);
          *(a5 + 4 * v24++) = v30;
        }

        while (v25 != v24);
      }
    }

    if (a6 && *(v16 + 12) >= 1)
    {
      v26 = 0;
      do
      {
        LODWORD(v30) = 0;
        kdu_params::get(*(v16 + 64), "Mvector_coeffs", v26, 0, &v30, 1, 1, 1);
        *(a6 + 4 * v26++) = v30;
      }

      while (v26 < *(v16 + 12));
    }
  }

  if (a9)
  {
    v27 = *(v16 + 32);
    if (v27 < 1)
    {
      v29 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      do
      {
        if (v29 >= *(v16 + 36))
        {
          break;
        }

        if (*(*(v14 + 24) + 48 * *(*(v16 + 40) + 4 * v28) + 40) == 1)
        {
          a9[v29++] = v28;
          v27 = *(v16 + 32);
        }

        ++v28;
      }

      while (v28 < v27);
    }

    if (v29 != *(v16 + 36))
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "m == block->num_apparent_outputs");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_dwt_info(kdu_tile *this, unsigned int a2, int a3, BOOL *a4, int *a5, int *a6, int *a7, int *a8, BOOL *a9, BOOL *a10, const float **a11, int *a12, int *a13)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v14 = *(*this + 256);
  if (a2 >= 1 && v14)
  {
    do
    {
      v14 = *(v14 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v14);
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 32);
  if (v15 <= a3)
  {
    return 0;
  }

  v16 = *(v14 + 40);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*(v16 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_18;
        }

        --a3;
      }

      v16 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_18:
  if (i == v15)
  {
    return 0;
  }

  if (!*(v16 + 104))
  {
    return 0;
  }

  v18 = *(v16 + 92);
  if (v18 < 1 || (*(v16 + 57) & 1) != 0)
  {
    return 0;
  }

  *a4 = *(v16 + 56);
  *a5 = v18;
  v19 = *(v16 + 96);
  *a6 = v19;
  *a7 = *(v16 + 8) + v19;
  *a8 = *(v16 + 88);
  *a9 = *(v16 + 100);
  *a10 = *(v16 + 101);
  *a11 = *(v16 + 112);
  if (a12)
  {
    v20 = *(v16 + 8);
    if (v20 < 1)
    {
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (v22 >= *(v16 + 12))
        {
          break;
        }

        if (*(*(v16 + 24) + v21) == 1)
        {
          a12[v22++] = v21;
          v20 = *(v16 + 8);
        }

        ++v21;
      }

      while (v21 < v20);
    }

    if (v22 != *(v16 + 12))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
      (*(v26 + 16))(&v26, "Assert ");
      (*(v26 + 16))(&v26, "m == block->num_required_inputs");
      (*(v26 + 16))(&v26, " FAILED");
      kdu_error::~kdu_error(&v26);
    }
  }

  if (a13)
  {
    v23 = *(v16 + 32);
    if (v23 < 1)
    {
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (v25 >= *(v16 + 36))
        {
          break;
        }

        if (*(*(v14 + 24) + 48 * *(*(v16 + 40) + 4 * v24) + 40) == 1)
        {
          a13[v25++] = v24;
          v23 = *(v16 + 32);
        }

        ++v24;
      }

      while (v24 < v23);
    }

    if (v25 != *(v16 + 36))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
      (*(v26 + 16))(&v26, "Assert ");
      (*(v26 + 16))(&v26, "m == block->num_apparent_outputs");
      (*(v26 + 16))(&v26, " FAILED");
      kdu_error::~kdu_error(&v26);
    }
  }

  return *(v16 + 104);
}

uint64_t kdu_tile::access_component(uint64_t **this, signed int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = **this;
  if (*(v3 + 172) <= a2)
  {
    return 0;
  }

  v4 = -991146299 * ((*(*(v3 + 312) + 104 * a2 + 96) - *(v3 + 312)) >> 3);
  if (v4 < 0 || *(v2 + 47) <= v4)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
    (*(*&v7[0] + 16))(v7, "Assert ");
    (*(*&v7[0] + 16))(v7, "(true_idx >= 0) && (true_idx < state->num_components)");
    (*(*&v7[0] + 16))(v7, " FAILED");
    kdu_error::~kdu_error(v7);
  }

  v5 = v2[34] + 224 * v4;
  if (*(v5 + 184))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void kd_tile_comp::~kd_tile_comp(kd_tile_comp *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 13);
  if (v3 && v3 != *(this + 12))
  {
    MEMORY[0x186602830](v3, 0x1000C80451B5BE8);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 15);
  if (v5 && v5 != *(this + 14))
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 22);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = (v6 + 704 * v8 - 704);
      v10 = -704 * v8;
      do
      {
        kd_resolution::~kd_resolution(v9);
        v9 = (v11 - 704);
        v10 += 704;
      }

      while (v10);
    }

    MEMORY[0x186602830](v7, 0x10A0C80EE9AF17DLL);
  }
}

uint64_t kdu_tile_comp::get_bit_depth(kdu_tile_comp *this, int a2)
{
  v2 = *this;
  result = *(*(*this + 16) + 16);
  if (a2)
  {
    return (*(v2 + 160) + result);
  }

  return result;
}

uint64_t kdu_tile_comp::access_resolution(uint64_t **this, int a2)
{
  if (a2 < 0 || (v2 = *this, *(*this + 18) < a2))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
    (*(v6 + 16))(&v6, "Attempting to access a non-existent resolution level within some tile-component.  Problem almost certainly caused by trying to discard more resolution levels than the number of DWT levels used to compress a tile-component.");
    kdu_error::~kdu_error(&v6);
  }

  v3 = v2[22] + 704 * a2;
  if ((*(v3 + 221) & 1) == 0)
  {
    v4 = *v2;
    if ((*(v4 + 410) & 1) != 0 || *(v4 + 411) == 1)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v6);
    }
  }

  return v3;
}

uint64_t create_child_node(_DWORD *a1, unsigned int a2, char a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7, unsigned int a8, int a9, unsigned int a10, char a11, char a12, int a13, BOOL *a14, int a15, BOOL *a16, kdu_kernels *a17)
{
  if ((a9 - 1) >= 3)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
    (*(v44 + 16))();
    (*(v44 + 16))(&v44, "(sub_level >= 1) && (sub_level <= 3)");
    (*(v44 + 16))(&v44, " FAILED");
    kdu_error::~kdu_error(&v44);
  }

  if (a9 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a8 >> 2;
  }

  v18 = a8 & 3;
  if ((a8 & 3) != 0)
  {
    v19 = (*a5)++;
    v20 = a4 + 136 * v19;
    v21 = v20;
  }

  else
  {
    v20 = 0;
    v22 = (*a7)++;
    v21 = a6 + 144 * v22;
  }

  *v21 = a1;
  if (a3)
  {
    *(v21 + 48) = a2 & 1;
    if (a13 >= 3)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
      (*(v44 + 16))();
      (*(v44 + 16))(&v44, "num_hor_extra_stages < 3");
      (*(v44 + 16))(&v44, " FAILED");
      kdu_error::~kdu_error(&v44);
    }

    v41 = a13 + 1;
    a14[a13] = (a2 & 1) != 0;
    if (a2)
    {
      v23 = 1;
    }

    else
    {
      v23 = a11;
    }

    if ((a2 & 1) != 0 && a11)
    {
      *(*(v21 + 8) + 221) = 0;
      v38 = 1;
    }

    else
    {
      v38 = v23;
    }
  }

  else
  {
    *(v21 + 48) = 2;
    v38 = a11;
    if (a2)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
      (*(v44 + 16))();
      (*(v44 + 16))(&v44, "!(child_idx & 1)");
      (*(v44 + 16))(&v44, " FAILED");
      kdu_error::~kdu_error(&v44);
    }

    v41 = a13;
  }

  v24 = a12;
  if ((a3 & 2) != 0)
  {
    v26 = (a2 >> 1) & 1;
    *(v21 + 49) = (a2 & 2) != 0;
    if (a15 >= 3)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
      (*(v44 + 16))();
      (*(v44 + 16))(&v44, "num_vert_extra_stages < 3");
      (*(v44 + 16))(&v44, " FAILED");
      kdu_error::~kdu_error(&v44);
    }

    v25 = a15 + 1;
    a16[a15] = v26 != 0;
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = a12;
    }

    if (v26 && a12)
    {
      *(*(v21 + 8) + 221) = 0;
      v24 = 1;
    }

    else
    {
      v24 = v27;
    }
  }

  else
  {
    *(v21 + 49) = 2;
    if ((a2 & 2) != 0)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
      (*(v44 + 16))();
      (*(v44 + 16))(&v44, "!(child_idx & 2)");
      (*(v44 + 16))(&v44, " FAILED");
      kdu_error::~kdu_error(&v44);
    }

    v25 = a15;
  }

  if (v20)
  {
    if ((a8 & 3) != 0)
    {
      if (a8)
      {
        v28 = *(*(*(v21 + 8) + 8) + 88);
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      *(v20 + 120) = v28;
      if ((a8 & 2) != 0)
      {
        v29 = *(*(*(v21 + 8) + 8) + 88);
      }

      else
      {
        LOBYTE(v29) = 0;
      }

      *(v20 + 121) = v29;
      operator new[]();
    }

    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
    (*(v44 + 16))();
    (*(v44 + 16))(&v44, "next_branch_mask != 0");
    (*(v44 + 16))(&v44, " FAILED");
    kdu_error::~kdu_error(&v44);
  }

  LODWORD(v30) = a1[4];
  LODWORD(v31) = a1[5];
  v32 = *(v21 + 48);
  v33 = *(v21 + 49);
  v34 = a1[7] + v31;
  v35 = a1[6] + v30;
  if (v32 <= 1)
  {
    v31 = ((v31 - v32 + 1) >> 1);
  }

  else
  {
    v31 = v31;
  }

  if (v32 <= 1)
  {
    v34 = (v34 - v32 + 1) >> 1;
  }

  if (v33 <= 1)
  {
    v30 = ((v30 - v33 + 1) >> 1);
  }

  else
  {
    v30 = v30;
  }

  if (v33 <= 1)
  {
    v35 = (v35 - v33 + 1) >> 1;
  }

  *(v21 + 16) = v30 | (v31 << 32);
  *(v21 + 24) = (v35 - v30) | ((v34 - v31) << 32);
  if ((a8 & 3) != 0)
  {
    for (i = 0; i != 4; ++i)
    {
      if (i == (v18 & i))
      {
        *(8 * i + 0x58) = create_child_node(0, i, v18, a4, a5, a6, a7, v17 & 3, a9 + 1, a10, v38, v24, v41, a14, v25, a16, a17);
        v17 >>= 2;
      }
    }
  }

  else
  {
    if ((*(v21 + 50) & 1) == 0)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      kdu_error::kdu_error(&v44, "Kakadu Core Error:\n");
      (*(v44 + 16))();
      (*(v44 + 16))(&v44, "result->is_leaf");
      (*(v44 + 16))(&v44, " FAILED");
      kdu_error::~kdu_error(&v44);
    }

    *(v21 + 54) = a10;
  }

  return v21;
}

uint64_t kdu_resolution::which(kdu_resolution *this)
{
  if (!*this)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
    (*(*&v2[0] + 16))(v2, "Assert ");
    (*(*&v2[0] + 16))(v2, "state != NULL");
    (*(*&v2[0] + 16))(v2, " FAILED");
    kdu_error::~kdu_error(v2);
  }

  return *(*this + 24);
}

int32x4_t *kdu_resolution::get_dims(BOOL ***this, int32x4_t *a2)
{
  if (!*this)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "state != NULL");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  *a2 = *(*this + 4);
  v2 = **this;
  if (!v2)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "state->codestream != NULL");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  return kdu_dims::to_apparent(a2, v2[409], v2[410], v2[411]);
}

int32x4_t *kdu_dims::to_apparent(int32x4_t *this, int a2, int a3, int a4)
{
  if (a2)
  {
    *this = vrev64q_s32(*this);
    if (!a4)
    {
LABEL_3:
      if (!a3)
      {
        return this;
      }

LABEL_7:
      this->i32[0] = 1 - (this->i32[0] + this->i32[2]);
      return this;
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  this->i32[1] = 1 - (this->i32[1] + this->i32[3]);
  if (a3)
  {
    goto LABEL_7;
  }

  return this;
}

uint64_t kd_precinct::load_required_packets(uint64_t this)
{
  if (*(this + 18) == 1)
  {
    v1 = this;
    v2 = *(this + 40);
    if (v2)
    {
      if (!*(this + 32))
      {
        if (*(this + 17) != 1 || *(this + 28) < *(this + 24))
        {
          kd_precinct::load_required_packets();
        }

        this = kd_compressed_input::seek(*(**this + 8), v2);
        do
        {
          if (*(v1 + 32) >= *(v1 + 24))
          {
            break;
          }

          this = kd_precinct::read_packet(v1, v3);
        }

        while ((this & 1) != 0);
      }
    }
  }

  return this;
}

uint64_t kdu_resolution::access_node(kdu_resolution *this)
{
  if (!*this)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
    (*(*&v2[0] + 16))(v2, "Assert ");
    (*(*&v2[0] + 16))(v2, "state != NULL");
    (*(*&v2[0] + 16))(v2, " FAILED");
    kdu_error::~kdu_error(v2);
  }

  return *this + 32;
}

uint64_t kdu_resolution::access_subband(kdu_resolution *this, int a2)
{
  v2 = *this;
  v3 = a2 - (*(*this + 24) != 0);
  if (v3 < 0 || v3 >= *(v2 + 222))
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Kakadu Core Error:\n");
    (*(*&v6[0] + 16))(v6, "Assert ");
    (*(*&v6[0] + 16))(v6, "(band_idx >= 0) && (band_idx < state->num_subbands)");
    (*(*&v6[0] + 16))(v6, " FAILED");
    kdu_error::~kdu_error(v6);
  }

  v4 = *(v2 + 240);
  result = v4 + 144 * v3;
  if (*(*v2 + 409) == 1)
  {
    return v4 + 144 * *(result + 56);
  }

  return result;
}

uint64_t kdu_node::access_child(kdu_node *this, unsigned int a2)
{
  if (a2 >= 4)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
    (*(v10 + 16))(&v10, "Assert ");
    (*(v10 + 16))(&v10, "(child_idx >= 0) && (child_idx <= 3)");
    (*(v10 + 16))(&v10, " FAILED");
    kdu_error::~kdu_error(&v10);
  }

  v2 = *this;
  if (*(*this + 50))
  {
    return 0;
  }

  v4 = __rbit32(a2) >> 30;
  if (*(**(v2 + 8) + 409))
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  v3 = *(v2 + 8 * v5 + 88);
  if (v3)
  {
    v6 = *(v3 + 8);
    if (!*(v6 + 24))
    {
      v7 = v6 + 32;
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == v7;
      }

      if (!v8)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
        (*(v10 + 16))(&v10, "Assert ");
        (*(v10 + 16))(&v10, "(child_idx==LL_BAND) && (result==&(result->resolution->node))");
        (*(v10 + 16))(&v10, " FAILED");
        kdu_error::~kdu_error(&v10);
      }

      v3 = *(v3 + 88);
      if ((*(v3 + 50) & 1) == 0)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
        (*(v10 + 16))(&v10, "Assert ");
        (*(v10 + 16))(&v10, "result->is_leaf");
        (*(v10 + 16))(&v10, " FAILED");
        kdu_error::~kdu_error(&v10);
      }
    }
  }

  return v3;
}

uint64_t kdu_node::access_subband(kdu_node *this)
{
  if (*(*this + 50))
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

int32x4_t *kdu_node::get_dims(int32x4_t **this, int32x4_t *a2)
{
  v4 = *(*this)->i64[1];
  *a2 = (*this)[2];
  result = kdu_dims::to_apparent(a2, v4[409], v4[410], v4[411]);
  if ((v4[410] & 1) != 0 || v4[411] == 1)
  {
    v6 = *this;
    if (*this == ((*this)->i64[1] + 32))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v4[409])
        {
          v9 = *(v6 + 49);
        }

        else
        {
          v9 = *(v6 + 48);
        }

        if (v4[409])
        {
          v10 = *(v6 + 48);
        }

        else
        {
          v10 = *(v6 + 49);
        }

        if (v9 == 1 && v4[411] == 1)
        {
          if (v8)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.x");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v8 = 1;
        }

        if (v10 == 1 && v4[410] == 1)
        {
          if (v7)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.y");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v7 = 1;
        }

        v6 = *v6;
      }

      while (v6 != (v6[1] + 32));
    }

    v11 = a2->i32[1] - v8;
    a2->i32[0] -= v7;
    a2->i32[1] = v11;
  }

  return result;
}

uint64_t kdu_node::get_kernel_info(kdu_node *this, int *a2, float *a3, float *a4, BOOL *a5, BOOL *a6, int *a7, int *a8, int *a9, int *a10, BOOL a11)
{
  v11 = *(*(*this + 8) + 8);
  v12 = 410;
  if (!a11)
  {
    v12 = 411;
  }

  v13 = *(*v11 + v12);
  *a2 = *(v11 + 88);
  *a3 = *(v11 + 128);
  *a4 = *(v11 + 132);
  *a5 = *(v11 + 84);
  *a6 = *(v11 + 85);
  if (v13 == 1)
  {
    *a7 = -*(v11 + 140);
    *a8 = -*(v11 + 136);
    *a9 = -*(v11 + 148);
    v14 = -*(v11 + 144);
    v15 = 104;
  }

  else
  {
    *a7 = *(v11 + 136);
    *a8 = *(v11 + 140);
    *a9 = *(v11 + 144);
    v14 = *(v11 + 148);
    v15 = 96;
  }

  *a10 = v14;
  return *(v11 + v15);
}

uint64_t kdu_node::get_kernel_coefficients(kdu_node *this, int a2)
{
  v2 = *(*(*this + 8) + 8);
  v3 = 410;
  if (!a2)
  {
    v3 = 411;
  }

  v4 = 14;
  if (*(*v2 + v3))
  {
    v4 = 15;
  }

  return v2[v4];
}

uint64_t kdu_node::get_bibo_gains(kdu_node *this, int *a2, unsigned __int8 a3)
{
  v3 = *this;
  v4 = *(**(*this + 8) + 409) ^ a3;
  if (*(*this + 50) == 1)
  {
    *a2 = 0;
    v5 = *v3;
    v6 = *(*v3 + 128);
    if (v4)
    {
      v7 = *(v5 + 121);
    }

    else
    {
      v7 = *(v5 + 120);
    }

    return v6 + 4 * (v7 & 0xFE);
  }

  else if ((*(**(*this + 8) + 409) ^ a3))
  {
    *a2 = *(v3 + 121);
    return v3[16] + 4 * *(v3 + 120) + 4;
  }

  else
  {
    *a2 = *(v3 + 120);
    return v3[16];
  }
}

uint64_t kdu_subband::get_band_idx(kdu_subband *this)
{
  if (*(*(*this + 8) + 24))
  {
    return *(*this + 55) + 1;
  }

  else
  {
    return *(*this + 55);
  }
}

float kdu_subband::get_delta(kdu_subband *this)
{
  result = 0.0;
  if ((*(*(*(*this + 8) + 8) + 76) & 1) == 0)
  {
    return *(*this + 60);
  }

  return result;
}

float kdu_subband::get_msb_wmse(kdu_subband *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  result = 1.0;
  if (!*(*v2 + 8))
  {
    v4 = *(v1 + 60);
    v5 = *(v1 + 59);
    if (v5 < 0x1F)
    {
      v6 = *(v1 + 59);
    }

    else
    {
      do
      {
        v4 = v4 * 1073741820.0;
        v6 = v5 - 30;
        v7 = v5 > 0x3C;
        v5 -= 30;
      }

      while (v7);
    }

    v8 = v4 * (1 << (v6 - 1)) * (v4 * (1 << (v6 - 1))) * *(v1 + 64);
    v9 = *(v2[1] + 152);
    v7 = v9 <= 0.0;
    v10 = v8 * v9;
    if (!v7)
    {
      v8 = v10;
    }

    return v8 * *(v1 + 68) * *(v1 + 68);
  }

  return result;
}

BOOL kdu_subband::get_roi_weight(kdu_subband *this, float *a2)
{
  v2 = *(*this + 72);
  if (v2 >= 0.0)
  {
    *a2 = v2 * v2;
  }

  return v2 >= 0.0;
}

int32x4_t *kdu_subband::get_dims(int32x4_t **this, int32x4_t *a2)
{
  v4 = *(*this)->i64[1];
  *a2 = (*this)[2];
  result = kdu_dims::to_apparent(a2, v4[409], v4[410], v4[411]);
  if ((v4[410] & 1) != 0 || v4[411] == 1)
  {
    v6 = *this;
    if (*this == ((*this)->i64[1] + 32))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v4[409])
        {
          v9 = *(v6 + 49);
        }

        else
        {
          v9 = *(v6 + 48);
        }

        if (v4[409])
        {
          v10 = *(v6 + 48);
        }

        else
        {
          v10 = *(v6 + 49);
        }

        if (v9 == 1 && v4[411] == 1)
        {
          if (v8)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.x");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v8 = 1;
        }

        if (v10 == 1 && v4[410] == 1)
        {
          if (v7)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.y");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v7 = 1;
        }

        v6 = *v6;
      }

      while (v6 != (v6[1] + 32));
    }

    v11 = a2->i32[1] - v8;
    a2->i32[0] -= v7;
    a2->i32[1] = v11;
  }

  return result;
}

int32x4_t *kdu_subband::get_valid_blocks(kdu_subband *this, int32x4_t *a2)
{
  v2 = **(*this + 8);
  *a2 = *(*this + 108);
  return kdu_dims::to_apparent(a2, v2[409], v2[410], v2[411]);
}

int32x2_t kdu_subband::get_block_size(uint64_t *a1, int32x2_t *a2, int32x2_t *a3)
{
  v5 = **(*a1 + 8);
  *a2 = *(*a1 + 84);
  v6 = *a1;
  v7 = **(*a1 + 8);
  v8 = *(*a1 + 108);
  v9 = *(*a1 + 116);
  v10 = v7[409];
  v11 = v7[410];
  v12 = v7[411];
  v13 = v10 == 1;
  if (v10 == 1)
  {
    v14 = *(*a1 + 112);
  }

  else
  {
    v14 = *(*a1 + 108);
  }

  if (v13)
  {
    v15 = *(*a1 + 120);
  }

  else
  {
    v8 = *(*a1 + 112);
    v15 = *(*a1 + 116);
  }

  if (!v13)
  {
    v9 = *(*a1 + 120);
  }

  v16 = 1 - (v8 + v9);
  if (v12)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = 1 - (v14 + v15);
  if (!v11)
  {
    v18 = v14;
  }

  if (v5[411])
  {
    v17 = -v17;
  }

  if (v5[410])
  {
    v18 = -v18;
  }

  if (v5[409])
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (!v5[409])
  {
    v17 = v18;
  }

  v21 = *(v6 + 76);
  LODWORD(v21) = v21 + DWORD2(v21) * v17;
  DWORD1(v21) += v19 * HIDWORD(v21);
  kdu_dims::operator&=(&v21, (v6 + 32));
  *a3 = *(&v21 + 8);
  if (v5[409] == 1)
  {
    *a2 = vrev64_s32(*a2);
    result = vrev64_s32(*a3);
    *a3 = result;
  }

  return result;
}

uint64_t kdu_subband::open_block(uint64_t *a1, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = HIDWORD(a2);
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *v6;
  if (*(*v6 + 411))
  {
    LODWORD(v4) = -HIDWORD(a2);
  }

  if (*(*v6 + 410))
  {
    v8 = -a2;
  }

  else
  {
    v8 = a2;
  }

  if (*(*v6 + 409))
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (!*(*v6 + 409))
  {
    LODWORD(v4) = v8;
  }

  v10 = v5[28];
  v11 = v4 - v5[27];
  if (v9 - v10 < 0 || v9 - v10 >= v5[30] || v11 < 0 || v11 >= v5[29])
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "Assert ");
    (*(v48 + 16))(&v48, "(block_idx.x >= 0) && (block_idx.x < state->region_indices.size.x) && (block_idx.y >= 0) && (block_idx.y < state->region_indices.size.y)");
    (*(v48 + 16))(&v48, " FAILED");
    kdu_error::~kdu_error(&v48);
  }

  v12 = *(*(v6 + 8) + 8);
  if ((*(v12 + 289) & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "Assert ");
    (*(v48 + 16))(&v48, "tile->is_open");
    (*(v48 + 16))(&v48, " FAILED");
    kdu_error::~kdu_error(&v48);
  }

  v13 = v9;
  v14 = v4;
  v15 = ((v9 >> v5[34]) - *(v6 + 188));
  v16 = ((v4 >> v5[33]) - *(v6 + 184));
  v17 = *(v6 + 196);
  v18 = (v15 + v16 * v17);
  if ((v18 & 0x80000000) != 0 || *(v6 + 192) * v17 <= v18)
  {
    return 0;
  }

  v19 = *(v6 + 232);
  v20 = *(v19 + 8 * v18);
  if (v20)
  {
    v21 = (*(v19 + 8 * v18) & 1) == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21 && (*(v20 + 20) & 1) == 0 && *(v20 + 19) != 1)
  {
    v22 = 0;
    goto LABEL_39;
  }

  v22 = a4 != 0;
  if (a4)
  {
    kdu_thread_entity::acquire_lock(a4, 0, 1);
    v19 = *(v6 + 232);
    v20 = *(v19 + 8 * v18);
  }

  if (!v20)
  {
    goto LABEL_35;
  }

  if (v20 == 3)
  {
    goto LABEL_37;
  }

  if (v20)
  {
LABEL_35:
    v24 = kd_precinct_ref::instantiate_precinct((v19 + 8 * v18), v6, (v15 << 32) | v16);
    if (v24)
    {
      v20 = v24;
      goto LABEL_39;
    }

LABEL_37:
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "You are permitted to open each code-block only once from an open tile before closing that tile.  If the codestream object is marked as persistent, you may re-open code-blocks only after re-opening their containing tiles.");
    kdu_error::~kdu_error(&v48);
  }

  if (*(v20 + 20) == 1)
  {
    kd_precinct_size_class::withdraw_from_inactive_list(*(v20 + 72), v20);
    kd_precinct::activate(v20);
LABEL_39:
    v25 = a4;
    goto LABEL_40;
  }

  v25 = a4;
  if (*(v20 + 19) == 1)
  {
    kd_precinct::activate(v20);
  }

LABEL_40:
  if (*(v7 + 8) && *(v20 + 32) < *(v20 + 24))
  {
    if (v25)
    {
      v26 = v22;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      LOBYTE(v22) = 1;
      kdu_thread_entity::acquire_lock(v25, 0, 1);
    }

    if (*(v7 + 418) & 1) != 0 || (*(v12 + 328))
    {
LABEL_49:
      kd_precinct::load_required_packets(v20);
      if (!v22)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    while (1)
    {
      if (*(v20 + 28) >= *(v20 + 24))
      {
        goto LABEL_49;
      }

      if (v12 != *(v7 + 440) && (kd_tile::read_tile_part_header(v12, a2) & 1) == 0)
      {
        if (*(v12 + 291) == 1)
        {
          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
          (*(v48 + 16))(&v48, "Assert ");
          (*(v48 + 16))(&v48, "!tile->closed");
          (*(v48 + 16))(&v48, " FAILED");
          kdu_error::~kdu_error(&v48);
        }

        kd_tile::finished_reading(v12, v39);
        goto LABEL_49;
      }

      *&v46 = 0;
      v47 = 0;
      v40 = *(v12 + 96);
      if (!v40)
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Corrupt jp2 data: tile->sequencer = NULL");
        kdu_error::~kdu_error(&v48);
      }

      v41 = kd_packet_sequencer::next_in_sequence(v40, &v46, &v47);
      if (!v41)
      {
        goto LABEL_88;
      }

      v42 = *v41;
      if (*v41)
      {
        if (v42 & 1) != 0 || (*(v42 + 17))
        {
          goto LABEL_89;
        }

        if (v42 == 3)
        {
          v42 = 0;
        }

        else if (*(v42 + 20) == 1)
        {
          kd_precinct_size_class::withdraw_from_inactive_list(*(v42 + 72), v42);
          kd_precinct::activate(v42);
        }
      }

      else
      {
        v42 = kd_precinct_ref::instantiate_precinct(v41, v46, v47);
      }

      if ((kd_precinct::desequence_packet(v42, a2) & 1) == 0)
      {
LABEL_88:
        kd_tile::read_tile_part_header(v12, a2);
      }

LABEL_89:
      if (*(v12 + 328) == 1)
      {
        goto LABEL_49;
      }
    }
  }

  if (v22)
  {
LABEL_52:
    kdu_thread_entity::release_lock(v25, 0);
  }

LABEL_53:
  v27 = *a1;
  v46 = *(*a1 + 76);
  LODWORD(v46) = v46 + DWORD2(v46) * v14;
  DWORD1(v46) += HIDWORD(v46) * v13;
  kdu_dims::operator&=(&v46, (v27 + 16));
  if (SDWORD2(v46) * SHIDWORD(v46) <= 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "Assert ");
    (*(v48 + 16))(&v48, "band_dims.area() > 0");
    (*(v48 + 16))(&v48, " FAILED");
    kdu_error::~kdu_error(&v48);
  }

  v28 = *(v20 + 48) + 32 * *(*a1 + 55);
  v29 = v13 - *(v28 + 12);
  v30 = v14 - *(v28 + 8);
  if (v29 < 0 || v30 < 0 || v29 >= *(v28 + 20) || v30 >= *(v28 + 16))
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "Assert ");
    (*(v48 + 16))(&v48, "(block_idx.x >= 0) && (block_idx.y >= 0) && (block_idx.x < pband->block_indices.size.x) && (block_idx.y < pband->block_indices.size.y)");
    (*(v48 + 16))(&v48, " FAILED");
    kdu_error::~kdu_error(&v48);
  }

  if (v25)
  {
    v23 = *(v25 + 80) + 144;
  }

  else
  {
    v23 = *(v7 + 56);
  }

  if (*(v23 + 168))
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
    (*(v48 + 16))(&v48, "Assert ");
    (*(v48 + 16))(&v48, "result->precinct == NULL");
    (*(v48 + 16))(&v48, " FAILED");
    kdu_error::~kdu_error(&v48);
  }

  *(v23 + 168) = v20;
  *(v23 + 176) = *(v28 + 24) + 40 * v29 + 40 * *(v28 + 20) * v30;
  *v23 = *(&v46 + 1);
  v31 = *a1;
  v48 = v46;
  kdu_dims::operator&=(&v48, (v31 + 32));
  v32 = v48;
  v33 = DWORD1(v48);
  *(v23 + 16) = *(&v48 + 1);
  v34 = v33 - DWORD1(v46);
  *(v23 + 8) = v32 - v46;
  *(v23 + 12) = v34;
  v35 = *a1;
  *(v23 + 28) = *(*(*(*a1 + 8) + 8) + 172);
  *(v23 + 32) = *(v35 + 54);
  *(v23 + 40) = *(v35 + 59);
  *(v23 + 25) = *(v7 + 410);
  *(v23 + 24) = *(v7 + 409);
  *(v23 + 36) = *(v7 + 412);
  *(v23 + 37) = *(v7 + 414);
  v36 = *(v23 + 176);
  if (*(v7 + 8))
  {
    v37 = a3;
    if (v36 && kd_block::retrieve_data(v36, v23, *(v20 + 24)))
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
      (*(v48 + 16))(&v48, "Corrupt JP2 data");
      goto LABEL_71;
    }
  }

  else
  {
    v37 = a3;
    if (*v36)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
      (*(v48 + 16))(&v48, "Attempting to open the same code-block more than once for writing!");
LABEL_71:
      kdu_error::~kdu_error(&v48);
    }
  }

  if (v37)
  {
    *v37 = *(*(*(*v20 + 8) + 8) + 304) - 1;
  }

  return v23;
}

double kdu_subband::close_block(kd_block *result, kdu_block *a2, uint64_t a3)
{
  v4 = *(a2 + 21);
  v5 = *(a2 + 22);
  v6 = **(*result + 8);
  if (!v4)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct != NULL");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (a3)
  {
    v7 = *(a3 + 80);
    if (v7 + 36 == a2)
    {
      *(a2 + 21) = 0;
      block_state = kd_thread_env::get_block_state(v7, v6, v4, v5);
      if (!*(v6 + 8))
      {
        kd_block::store_data(block_state, a2, (v7 + 8290));
        if (*(v6 + 64))
        {
          kd_compressed_stats::update_stats((v7 + 82), a2);
        }

        if (!*(v6 + 16))
        {
          kd_thread_env::flush(v7, 1);
        }
      }

      if (v7[8302] >= 6)
      {
        kd_thread_env::flush(v7, 0);
      }

      return v9;
    }

LABEL_7:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "((env == NULL) && (result == cs->block)) || ((env != NULL) && (result == &(env->get_state()->block)))");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (*(v6 + 56) != a2)
  {
    goto LABEL_7;
  }

  *(a2 + 21) = 0;
  if (v4[9] <= 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct->num_outstanding_blocks > 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (*(v6 + 8))
  {
    if ((*(v6 + 417) & 1) == 0)
    {
      kd_block::cleanup(v5, *(v6 + 48));
    }

    v10 = v4[9] - 1;
    v4[9] = v10;
    if (!v10)
    {
      kd_precinct::release(v4);
    }
  }

  else
  {
    v11 = *(v6 + 64);
    if (v11)
    {
      updated = kd_compressed_stats::update_stats(v11, a2);
      kd_compressed_stats::update_quant_slope_thresholds(*(v6 + 64));
    }

    else
    {
      updated = 0;
    }

    if (*v5)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
      (*(v14 + 16))(&v14, "Assert ");
      (*(v14 + 16))(&v14, "block->empty()");
      (*(v14 + 16))(&v14, " FAILED");
      kdu_error::~kdu_error(&v14);
    }

    kd_block::store_data(v5, a2, *(v6 + 48));
    v13 = v4[9] - 1;
    v4[9] = v13;
    if (updated && (*(v6 + 422) & 1) == 0)
    {
      kd_codestream::trim_compressed_data(v6);
      v13 = v4[9];
    }

    if (!v13)
    {
      *&v9 = kd_global_rescomp::add_ready_precinct(*(*v4 + 16), v4).n128_u64[0];
    }
  }

  return v9;
}

uint64_t kd_thread_env::get_block_state(kd_thread_env *this, kd_codestream *a2, kd_precinct *a3, kd_block *a4)
{
  if (*(this + 8302) == 8)
  {
    kd_thread_env::flush(this, 1);
  }

  *(this + 16) = a2;
  result = this + 33216;
  v9 = 8;
  while (*(result + 40))
  {
    result += 56;
    if (!--v9)
    {
      return 0;
    }
  }

  ++*(this + 8302);
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(*(this + 17) + 88) = 1;
  return result;
}

uint64_t kd_compressed_stats::update_stats(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32) + *a2 * a2[1];
  *(a1 + 32) = v2;
  v3 = a2[12];
  if (v3 >= 1)
  {
    LODWORD(v4) = 0;
    v5 = *(a2 + 7);
    v6 = *(a2 + 8);
    v7 = a1 + 40;
    do
    {
      v8 = *v5++;
      v4 = v8 + v4;
      LODWORD(v8) = *v6++;
      v9 = v8;
      if (v8)
      {
        v10 = v9 >> 4;
        if (*(a1 + 32808) > v10)
        {
          *(a1 + 32808) = v10;
        }

        if (*(a1 + 32812) < v10)
        {
          *(a1 + 32812) = v10;
        }

        v11 = *(v7 + 8 * v10) + v4;
        LODWORD(v4) = 0;
        *(v7 + 8 * v10) = v11;
      }

      --v3;
    }

    while (v3);
  }

  if ((*(a1 + 32824) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  if (v2 <= v12)
  {
    return 0;
  }

  *(a1 + 16) = v12 + ((*(a1 + 8) + 7) >> 4);
  return 1;
}

uint64_t kd_block::cleanup(uint64_t this, kd_buf_server *a2)
{
  v3 = this;
  v4 = *this;
  for (*(this + 8) = *this; v4; *(v3 + 8) = *v3)
  {
    *v3 = *v4;
    this = kd_buf_server::release(a2, v4);
    v4 = *v3;
  }

  *(v3 + 18) = -1;
  return this;
}

uint64_t kd_compressed_stats::update_quant_slope_thresholds(uint64_t this)
{
  v1 = *(this + 32812);
  v2 = *(this + 32808);
  if (v1 >= v2)
  {
    v3 = 0;
    v4 = *this;
    v5 = v1 + 1;
    v6 = this + 8 * v1;
    v7 = (v6 + 40);
    v8 = *(this + 32812);
    while (1)
    {
      v9 = *v7--;
      v3 += v9;
      if (v3 > (*this * (*(this + 24) + *(this + 32))))
      {
        break;
      }

      --v8;
      if (--v5 <= v2)
      {
        v8 = v2 - 1;
        break;
      }
    }

    v10 = 0;
    *(this + 32816) = v8;
    v11 = v1 + 1;
    v12 = (v6 + 40);
    while (1)
    {
      v13 = *v12--;
      v10 += v13;
      if (v10 > (v4 * *(this + 8)))
      {
        break;
      }

      --v1;
      if (--v11 <= v2)
      {
        v1 = v2 - 1;
        break;
      }
    }
  }

  else
  {
    *(this + 32816) = v1;
  }

  *(this + 32820) = v1;
  return this;
}

uint64_t kdu_subband::get_conservative_slope_threshold(kdu_subband *this)
{
  v1 = **(*this + 8);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = 16 * *(v2 + 32816);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if ((v5 < 0) ^ v4 | (v5 == 0))
    {
      LOWORD(v5) = 1;
    }
  }

  else
  {
    LOWORD(v5) = 1;
  }

  v6 = *(v1 + 464);
  if (v6 <= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t kd_precinct::initialize(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 47) + HIDWORD(a3);
  v8 = *(v6 + 8);
  v9 = *(a2 + 46) + a3;
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 21) = 1;
  if (*(v5 + 8))
  {
    if ((*(v5 + 417) & 1) == 0)
    {
      if (*(v6 + 72) < *(a2 + 24) || *(v6 + 184) != 1 || (v10 = *(a2 + 51), v7 < v10) || (v11 = *(a2 + 50), v9 < v11) || v7 >= *(a2 + 53) + v10 || v9 >= *(a2 + 52) + v11)
      {
        *(a1 + 21) = 0;
      }
    }
  }

  *(a1 + 24) = *(v8 + 196);
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a2 + 100) = *(a2 + 21);
  v12 = *(a2 + 26) + *(a2 + 28) * v7;
  *(a2 + 25) += *(a2 + 27) * v9;
  *(a2 + 26) = v12;
  result = kdu_dims::operator&=(a2 + 25, a2 + 12);
  if (*(a2 + 28) < 1 || *(a2 + 27) <= 0)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    kdu_error::kdu_error(v51, "Kakadu Core Error:\n");
    (*(*&v51[0] + 16))(v51, "Assert ");
    (*(*&v51[0] + 16))(v51, "(resolution->node.prec_dims.size.x > 0) && (resolution->node.prec_dims.size.y > 0)");
    (*(*&v51[0] + 16))(v51, " FAILED");
    kdu_error::~kdu_error(v51);
  }

  if ((*(v5 + 417) != 1 || *(v8 + 289) == 1) && *(v6 + 72) >= *(a2 + 24))
  {
    v14 = *(v6 + 184) ^ 1;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 48) = a1 + 80;
  v15 = *(a2 + 222);
  v50 = (a1 + 80 + 32 * v15);
  v47 = v8;
  if (*(a2 + 223))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = a2[28] + v16;
      LODWORD(v19) = *(*v18 + 68);
      LODWORD(v20) = *(*v18 + 72);
      v21 = *(v18 + 48);
      v22 = *(v18 + 49);
      v23 = *(*v18 + 80) + v20;
      v24 = *(*v18 + 76) + v19;
      result = ((v23 - v21 + 1) >> 1);
      if (v21 <= 1)
      {
        v20 = ((v20 - v21 + 1) >> 1);
      }

      else
      {
        v20 = v20;
      }

      if (v21 <= 1)
      {
        v23 = (v23 - v21 + 1) >> 1;
      }

      if (v22 <= 1)
      {
        v19 = ((v19 - v22 + 1) >> 1);
      }

      else
      {
        v19 = v19;
      }

      if (v22 <= 1)
      {
        v24 = (v24 - v22 + 1) >> 1;
      }

      *(v18 + 68) = v19 | (v20 << 32);
      *(v18 + 76) = (v24 - v19) | ((v23 - v20) << 32);
      ++v17;
      v16 += 136;
    }

    while (v17 < *(a2 + 223));
    LODWORD(v15) = *(a2 + 222);
  }

  if (v15)
  {
    v25 = 0;
    do
    {
      v26 = *(a1 + 48) + 32 * v25;
      v48 = v25;
      v27 = a2[30] + 144 * v25;
      *v26 = v27;
      LODWORD(v25) = *(*v27 + 68);
      LODWORD(v28) = *(*v27 + 72);
      v29 = *(v27 + 48);
      v30 = *(v27 + 49);
      v31 = *(*v27 + 76) + v25;
      if (v29 <= 1)
      {
        v28 = ((v28 - v29 + 1) >> 1);
      }

      else
      {
        v28 = v28;
      }

      if (v30 <= 1)
      {
        v25 = ((v25 - v30 + 1) >> 1);
      }

      else
      {
        v25 = v25;
      }

      if (v30 <= 1)
      {
        v31 = (v31 - v30 + 1) >> 1;
      }

      *(v26 + 8) = get_partition_indices(*(v27 + 76), *(v27 + 84), v25 | (v28 << 32), v31 - v25);
      *(v26 + 16) = v32;
      result = kd_block::build_tree(v32, &v50, *(*(a1 + 72) + 24) + a1 - v50);
      *(v26 + 24) = result;
      v51[0] = 0uLL;
      v51[0] = *(v27 + 76);
      v33 = DWORD2(v51[0]);
      v49 = DWORD1(v51[0]) + *(v26 + 12) * HIDWORD(v51[0]);
      v34 = LODWORD(v51[0]) + *(v26 + 8) * DWORD2(v51[0]);
      v35 = *(v26 + 24);
      if (*(v5 + 8))
      {
        LODWORD(v51[0]) += *(v26 + 8) * DWORD2(v51[0]);
        v36 = *(v26 + 16);
        if (v36 >= 1)
        {
          v37 = 0;
          v38 = *(v26 + 20);
          do
          {
            DWORD1(v51[0]) = v49;
            if (v38 >= 1)
            {
              v39 = 0;
              do
              {
                v40 = *(a2[1] + 172);
                if (v40 >= 0x100)
                {
                  kd_precinct::initialize();
                }

                *(v35 + 25) = v40;
                if ((v14 & 1) != 0 || (result = kdu_dims::intersects(v51, (v27 + 32)), (result & 1) == 0))
                {
                  if ((*(v5 + 417) & 1) == 0)
                  {
                    *(v35 + 18) = -1;
                  }
                }

                else
                {
                  ++*(a1 + 36);
                }

                ++v39;
                DWORD1(v51[0]) += HIDWORD(v51[0]);
                v35 += 40;
                v38 = *(v26 + 20);
              }

              while (v39 < v38);
              v33 = DWORD2(v51[0]);
              v34 = v51[0];
              v36 = *(v26 + 16);
            }

            ++v37;
            v34 += v33;
            LODWORD(v51[0]) = v34;
          }

          while (v37 < v36);
        }
      }

      else
      {
        v41 = *(v26 + 16);
        if (v41 >= 1)
        {
          v42 = 0;
          v43 = *(v26 + 20);
          do
          {
            if (v43 >= 1)
            {
              v44 = *(a2[1] + 172);
              if (v44 > 0xFF)
              {
                *&v51[0] = __PAIR64__(v49, v34);
                __assert_rtn("set_modes", "compressed_local.h", 3522, "modes == (modes & 0xFF)");
              }

              v45 = *(a1 + 36);
              v46 = v43;
              do
              {
                *(v35 + 25) = v44;
                v35 += 40;
                --v46;
              }

              while (v46);
              *(a1 + 36) = v43 + v45;
            }

            ++v42;
            v34 += v33;
          }

          while (v42 != v41);
        }
      }

      v25 = v48 + 1;
    }

    while (v48 + 1 < *(a2 + 222));
  }

  if (!*(a1 + 36) && *(v5 + 8))
  {
    *(a1 + 19) = 1;
  }

  if (*(v47 + 287) == 1)
  {
    *(a1 + 32) = -1;
  }

  return result;
}

unsigned __int8 **kd_precinct::closing(unsigned __int8 **this)
{
  v1 = this;
  if (this[1])
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    kdu_error::kdu_error(v9, "Kakadu Core Error:\n");
    (*(*&v9[0] + 16))(v9, "Assert ");
    (*(*&v9[0] + 16))(v9, "ref == NULL");
    (*(*&v9[0] + 16))(v9, " FAILED");
    kdu_error::~kdu_error(v9);
  }

  v2 = *this;
  if ((*this)[222])
  {
    v3 = 0;
    v4 = *(*v2 + 48);
    do
    {
      v5 = &v1[6][32 * v3];
      if (*(v5 + 24))
      {
        v6 = *(v5 + 16) * *(v5 + 20);
        if (v6 >= 1)
        {
          v7 = 0;
          v8 = 40 * v6;
          do
          {
            this = kd_block::cleanup(*(v5 + 24) + v7, v4);
            v7 += 40;
          }

          while (v8 != v7);
          v2 = *v1;
        }

        *(v5 + 24) = 0;
      }

      ++v3;
    }

    while (v3 < v2[222]);
  }

  if ((*(v1 + 18) & 1) == 0)
  {
    this = v1[5];
    if (this)
    {
      this = MEMORY[0x186602830](this, 0x1000C8000313F17);
      v1[5] = 0;
    }
  }

  return this;
}

uint64_t kd_precinct::activate(uint64_t this)
{
  v1 = this;
  v2 = *this;
  v3 = *(*this + 8);
  v4 = *(v3 + 8);
  if (*(this + 19) != 1 || *(this + 36) || (*(v4 + 289) & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
    (*(*&v16[0] + 16))(v16, "Assert ");
    (*(*&v16[0] + 16))(v16, "released && (num_outstanding_blocks == 0) && tile->is_open");
    (*(*&v16[0] + 16))(v16, " FAILED");
    kdu_error::~kdu_error(v16);
  }

  *(this + 19) = 0;
  *(this + 24) = *(v4 + 196);
  if (*(v3 + 72) >= *(v2 + 24) && *(v3 + 184) == 1 && *(v2 + 222))
  {
    v5 = 0;
    do
    {
      v6 = (*(v1 + 48) + 32 * v5);
      v7 = *(v2 + 240) + 144 * v5;
      v16[0] = 0uLL;
      v16[0] = *(v7 + 76);
      v8 = DWORD2(v16[0]);
      v9 = v6[3];
      v10 = LODWORD(v16[0]) + v6[2] * DWORD2(v16[0]);
      LODWORD(v16[0]) = v10;
      v11 = v6[4];
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = DWORD1(v16[0]) + v9 * HIDWORD(v16[0]);
        v14 = v6[5];
        do
        {
          DWORD1(v16[0]) = v13;
          if (v14 >= 1)
          {
            for (i = 0; i < v14; ++i)
            {
              this = kdu_dims::intersects(v16, (v7 + 32));
              if (this)
              {
                ++*(v1 + 36);
              }

              DWORD1(v16[0]) += HIDWORD(v16[0]);
              v14 = v6[5];
            }

            v8 = DWORD2(v16[0]);
            v10 = v16[0];
            v11 = v6[4];
          }

          ++v12;
          v10 += v8;
          LODWORD(v16[0]) = v10;
        }

        while (v12 < v11);
        v2 = *v1;
      }

      ++v5;
    }

    while (v5 < *(v2 + 222));
  }

  return this;
}

uint64_t kd_precinct::read_packet(uint64_t **this, uint64_t a2)
{
  v3 = *(this + 8);
  if (v3 < 0)
  {
    if ((*(this + 18) & 1) == 0)
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
      (*(v52 + 16))(&v52, "Assert ");
      (*(v52 + 16))(&v52, "addressable");
      (*(v52 + 16))(&v52, " FAILED");
      kdu_error::~kdu_error(&v52);
    }

    return 0;
  }

  v4 = **this;
  v5 = *((*this)[1] + 8);
  if (v3 >= *(v5 + 192))
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
    (*(v52 + 16))(&v52, "Assert ");
    (*(v52 + 16))(&v52, "num_packets_read < tile->num_layers");
    (*(v52 + 16))(&v52, " FAILED");
    kdu_error::~kdu_error(&v52);
  }

  if ((*(this + 18) & 1) == 0 && v5 != *(v4 + 440))
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
    (*(v52 + 16))(&v52, "Assert ");
    (*(v52 + 16))(&v52, "addressable || (tile == codestream->active_tile)");
    (*(v52 + 16))(&v52, " FAILED");
    kdu_error::~kdu_error(&v52);
  }

  v6 = *((*this)[1] + 8);
  v7 = *(v6 + 284);
  if (v7 == 1 && *(v4 + 413) == 1)
  {
    v8 = *(v4 + 412);
  }

  else
  {
    v8 = 0;
  }

  if (this[2])
  {
    return kd_precinct::handle_corrupt_packet(this);
  }

  v9 = *(v6 + 285);
  if (*(v5 + 316) != 1)
  {
    goto LABEL_25;
  }

  v10 = *(v5 + 320);
  if (v10 >= 0x10000)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
    (*(v52 + 16))(&v52, "Assert ");
    (*(v52 + 16))(&v52, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v52 + 16))(&v52, " FAILED");
    kdu_error::~kdu_error(&v52);
  }

  if (v10 != *(v5 + 312))
  {
    return kd_precinct::handle_corrupt_packet(this);
  }

  if (*(v5 + 316))
  {
    v12 = *(v5 + 320);
    if (v12 >= 0x10000)
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
      (*(v52 + 16))(&v52, "Assert ");
      (*(v52 + 16))(&v52, "(sop_num >= 0) && (sop_num < (1<<16))");
      (*(v52 + 16))(&v52, " FAILED");
      kdu_error::~kdu_error(&v52);
    }

    if (v12 != *(v5 + 312))
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
      (*(v52 + 16))(&v52, "Assert ");
      (*(v52 + 16))(&v52, "compare_sop_num(tile->next_sop_sequence_num, tile->next_input_packet_num) == 0");
      (*(v52 + 16))(&v52, " FAILED");
      kdu_error::~kdu_error(&v52);
    }

    *(v5 + 316) = 0;
  }

  else
  {
LABEL_25:
    v13 = *(v4 + 32);
    while (kd_marker::read(v13, 1, v8 & 1))
    {
      v13 = *(v4 + 32);
      v14 = *(v13 + 16);
      if (v14 == 65424)
      {
        if (*(*(v4 + 8) + 544) == 1)
        {
          goto LABEL_44;
        }

        *(v4 + 440) = 0;
        kd_tile::adjust_unloadability(v5, a2);
        return 0;
      }

      if (v14 == 65425 && v7 != 0)
      {
        if (*(this + 18))
        {
          break;
        }

        v16 = __rev16(**(v13 + 32));
        if (!compare_sop_num(v16, *(v5 + 312)))
        {
          break;
        }

        if ((*(v4 + 412) & 1) == 0)
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
          (*(v52 + 16))(&v52, "Out-of-sequence SOP marker found while attempting to read a packet from the code-stream!\n");
          (*(v52 + 16))(&v52, "\tFound sequence number ");
          v17 = kdu_message::operator<<(&v52);
          (*(*v17 + 16))(v17, ", but expected ");
          v18 = kdu_message::operator<<(v17);
          (*(*v18 + 16))(v18, ".\n");
          (*(v52 + 16))(&v52, "Use the resilient option if you would like to try to recover from this error.");
          kdu_error::~kdu_error(&v52);
        }

        *(v5 + 316) = 1;
        *(v5 + 320) = v16;
        return kd_precinct::handle_corrupt_packet(this);
      }

      if ((v8 & 1) == 0)
      {
        if ((*(v4 + 412) & 1) == 0)
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
          (*(v52 + 16))(&v52, "Illegal marker code found while attempting to read a packet from the code-stream!\n");
          (*(v52 + 16))(&v52, "\tIllegal marker code is ");
          print_marker_code(*(*(v4 + 32) + 16), &v52);
          (*(v52 + 16))(&v52, ".\n");
          (*(v52 + 16))(&v52, "Use the resilient option if you would like to try to recover from this error.");
          kdu_error::~kdu_error(&v52);
        }

        return kd_precinct::handle_corrupt_packet(this);
      }
    }
  }

  v19 = *(v4 + 8);
  if (*(v19 + 544))
  {
LABEL_44:
    kd_tile::finished_reading(v5, a2);
    if (!*(this + 8) && *(this + 18) == 1)
    {
      v11 = 0;
      *(this + 8) = -1;
      return v11;
    }

    return 0;
  }

  if (*(v4 + 416) == 1 && (*(this + 8) >= *(this + 6) || (*(this + 21) & 1) == 0))
  {
    v49 = 1;
    kd_compressed_input::set_suspend(v19, 1);
  }

  else
  {
    v49 = 0;
  }

  v20 = *(v5 + 88);
  if (!v20)
  {
    v20 = *(v4 + 8);
  }

  LOBYTE(v21) = 0;
  v51[0] = v20;
  v51[1] = 0;
  if ((*(v4 + 412) & 1) != 0 || (v21 = *(v4 + 414), v21 == 1))
  {
    *(v20 + 547) = v21;
    *(v20 + 545) = 1;
  }

  v48 = v9;
  if (kd_header_in::get_bit(v51) && (v22 = *this, *(*this + 222)))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = &this[6][4 * v23];
      v26 = *(v25 + 4);
      if (v26 >= 1)
      {
        v27 = v25[3];
        do
        {
          v28 = *(v25 + 5);
          if (v28 >= 1)
          {
            v29 = v28 + 1;
            do
            {
              v24 += kd_block::parse_packet_header(v27, v51, *(v4 + 48), *(this + 8));
              v27 = (v27 + 40);
              --v29;
            }

            while (v29 > 1);
          }

          v30 = __OFSUB__(v26--, 1);
        }

        while (!((v26 < 0) ^ v30 | (v26 == 0)));
        v22 = *this;
      }

      ++v23;
    }

    while (v23 < *(v22 + 222));
  }

  else
  {
    v24 = 0;
  }

  kd_header_in::finish(v51);
  if (*(v20 + 545) == 1)
  {
    *(v20 + 545) = 0;
    if (*(v20 + 544) == 1)
    {
      *(v20 + 546) = 0;
    }

    else if (*(v20 + 546))
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
      (*(v52 + 16))(&v52, "Assert ");
      (*(v52 + 16))(&v52, "0");
      (*(v52 + 16))(&v52, " FAILED");
      kdu_error::~kdu_error(&v52);
    }
  }

  if (v48)
  {
    v50 = 0;
    if (kd_input::get(v20, &v50))
    {
      v31 = v50;
    }

    else
    {
      v31 = 0;
    }

    if (kd_input::get(v20, &v50))
    {
      v31 = v50 | (v31 << 8);
    }

    if (*(v20 + 544) == 1)
    {
      v33 = *(v5 + 88);
      if (v20 == v33)
      {
        if ((*(v33 + 544) & 1) == 0)
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
          (*(v52 + 16))(&v52, "Assert ");
          (*(v52 + 16))(&v52, "tile->packed_headers->failed()");
          (*(v52 + 16))(&v52, " FAILED");
          kdu_error::~kdu_error(&v52);
        }

        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
        (*(v52 + 16))(&v52, "Exhausted PPM/PPT marker segment data while attempting to parse a packet header!");
        kdu_error::~kdu_error(&v52);
      }

      if ((*(*(v4 + 8) + 544) & 1) == 0)
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
        (*(v52 + 16))(&v52, "Assert ");
        (*(v52 + 16))(&v52, "codestream->in->failed()");
        (*(v52 + 16))(&v52, " FAILED");
        kdu_error::~kdu_error(&v52);
      }

      kd_tile::finished_reading(v5, v32);
      if (!*(this + 8) && *(this + 18) == 1)
      {
        *(this + 8) = -1;
      }

      if (v49)
      {
        kd_compressed_input::set_suspend(*(v4 + 8), 0);
      }

      return 0;
    }

    if (v31 != 65426)
    {
      if (*(v4 + 412) != 1 || (v35 = *(v4 + 8), v20 != v35))
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
        (*(v52 + 16))(&v52, "Expected to find EPH marker following packet header.  Found ");
        print_marker_code(v31, &v52);
        (*(v52 + 16))(&v52, " instead.");
        kdu_error::~kdu_error(&v52);
      }

      if (!v49)
      {
        return kd_precinct::handle_corrupt_packet(this);
      }

      goto LABEL_129;
    }
  }

  if (v24 >= 1)
  {
    if (*(v4 + 412))
    {
      LOBYTE(v36) = 0;
    }

    else
    {
      v36 = *(v4 + 414);
      if (v36 != 1)
      {
        goto LABEL_105;
      }
    }

    v37 = *(v4 + 8);
    *(v37 + 547) = v36;
    *(v37 + 545) = 1;
LABEL_105:
    v38 = *this;
    if (*(*this + 222))
    {
      v39 = 0;
      do
      {
        v40 = &this[6][4 * v39];
        v41 = *(v40 + 4);
        if (v41 >= 1)
        {
          v42 = v40[3];
          do
          {
            v43 = *(v40 + 5);
            if (v43 >= 1)
            {
              v44 = v43 + 1;
              do
              {
                v45 = *(v4 + 8);
                if (*(v45 + 544) == 1)
                {
                  exception = __cxa_allocate_exception(4uLL);
                  *exception = -1;
                  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                }

                kd_block::read_body_bytes(v42, v45, *(v4 + 48));
                v42 += 40;
                --v44;
              }

              while (v44 > 1);
            }

            v30 = __OFSUB__(v41--, 1);
          }

          while (!((v41 < 0) ^ v30 | (v41 == 0)));
          v38 = *this;
        }

        ++v39;
      }

      while (v39 < *(v38 + 222));
    }
  }

  v46 = *(v4 + 8);
  if (v46[545] == 1)
  {
    v46[545] = 0;
    if (v46[544] == 1)
    {
      v46[546] = 0;
    }

    else if (v46[546])
    {
      if (*(v4 + 412) != 1)
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_error::kdu_error(&v52, "Kakadu Core Error:\n");
        (*(v52 + 16))(&v52, "Packet body terminated with an FF!");
        kdu_error::~kdu_error(&v52);
      }

      kd_input::putback(v46, 255);
      if (!v49)
      {
        return kd_precinct::handle_corrupt_packet(this);
      }

      v35 = *(v4 + 8);
LABEL_129:
      kd_compressed_input::set_suspend(v35, 0);
      return kd_precinct::handle_corrupt_packet(this);
    }
  }

  ++*(this + 8);
  if (v49)
  {
    kd_compressed_input::set_suspend(*(v4 + 8), 0);
  }

  return 1;
}

uint64_t compare_sop_num(unsigned int a1, int a2)
{
  if (a1 >= 0x10000)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
    (*(*&v5[0] + 16))(v5, "Assert ");
    (*(*&v5[0] + 16))(v5, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(*&v5[0] + 16))(v5, " FAILED");
    kdu_error::~kdu_error(v5);
  }

  v2 = a1 - a2;
  if (a1 == a2)
  {
    return 0;
  }

  if ((a1 - a2) >= 0x8001u && (a1 - a2) <= 0)
  {
    return v2 - 0x10000;
  }

  else
  {
    return v2;
  }
}

uint64_t kd_precinct::handle_corrupt_packet(kd_precinct *this)
{
  if (*(this + 18) == 1)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
    (*(v26 + 16))(&v26, "Encountered a corrupted packet while using packet length information to access the compressed data source in a random access fashion.  To process corrupted code-streams in an error resilient manner, you must disable seeking on the compressed data source (i.e., force sequential access) as well as enabling the resilient parsing mode.");
    kdu_error::~kdu_error(&v26);
  }

  v2 = *(*(*this + 8) + 8);
  v3 = *v2;
  v4 = *(*v2 + 413) ^ 1;
  *(this + 16) = 1;
  v5 = v4;
  if ((*(v2 + 316) & 1) == 0)
  {
    goto LABEL_35;
  }

  v6 = *(v2 + 80);
  v7 = *(v2 + 78);
  if (v6 >= 0x10000)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
    (*(v26 + 16))(&v26, "Assert ");
    (*(v26 + 16))(&v26, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v26 + 16))(&v26, " FAILED");
    kdu_error::~kdu_error(&v26);
  }

LABEL_6:
  v8 = v6 - v7;
  v9 = v4;
  if (v6 == v7)
  {
    goto LABEL_42;
  }

  if ((v6 - v7) >= 0x8001u && v8 <= 0)
  {
    v8 -= 0x10000;
  }

  v9 = v4;
  if (v8 < 1)
  {
LABEL_42:
    *(v2 + 316) = 0;
    v5 = v9;
    goto LABEL_35;
  }

  v11 = *(v2 + 80);
  v12 = *(v2 + 78);
  if (v11 >= 0x10000)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
    (*(v26 + 16))(&v26, "Assert ");
    (*(v26 + 16))(&v26, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v26 + 16))(&v26, " FAILED");
    kdu_error::~kdu_error(&v26);
  }

  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v11 - v12) >= 0x8001u && v13 <= 0)
    {
      v13 -= 0x10000;
    }

    if (!((v13 < 4) | v5 & 1))
    {
      v9 = 1;
      goto LABEL_42;
    }
  }

  v15 = *(v2 + 80);
  v16 = *(v2 + 48) * *(v2 + 51);
  if (v15 >= 0x10000)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
    (*(v26 + 16))(&v26, "Assert ");
    (*(v26 + 16))(&v26, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v26 + 16))(&v26, " FAILED");
    kdu_error::~kdu_error(&v26);
  }

  v17 = v15 - v16;
  v9 = v4;
  if (v15 == v16)
  {
    goto LABEL_42;
  }

  if ((v15 - v16) >= 0x8001u && v17 <= 0)
  {
    v17 -= 0x10000;
  }

  v9 = v4;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  if (*(v2 + 316))
  {
    v25 = *(this + 8);
    if (v25 >= *(v2 + 48))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
      (*(v26 + 16))(&v26, "Assert ");
      (*(v26 + 16))(&v26, "num_packets_read < tile->num_layers");
      (*(v26 + 16))(&v26, " FAILED");
      kdu_error::~kdu_error(&v26);
    }

    *(this + 8) = v25 + 1;
    return 1;
  }

LABEL_35:
  v19 = v3[4];
  while ((kd_marker::read(v19, 1, 1) & 1) != 0)
  {
    v19 = v3[4];
    v21 = *(v19 + 16);
    if (v21 == 65425)
    {
      v22 = *(v19 + 32);
      v23 = *v22;
      *(v2 + 80) = v23 << 8;
      v6 = v22[1] | (v23 << 8);
      *(v2 + 80) = v6;
      *(v2 + 316) = 1;
      v7 = *(v2 + 78);
      goto LABEL_6;
    }

    if (v21 == 65424)
    {
      v3[55] = 0;
      kd_tile::adjust_unloadability(v2, v20);
      return 0;
    }
  }

  if ((*(v3[1] + 544) & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
    (*(v26 + 16))(&v26, "Assert ");
    (*(v26 + 16))(&v26, "codestream->in->failed()");
    (*(v26 + 16))(&v26, " FAILED");
    kdu_error::~kdu_error(&v26);
  }

  kd_tile::finished_reading(v2, v20);
  return 0;
}

uint64_t kd_compressed_input::set_suspend(uint64_t this, uint64_t a2)
{
  if ((*(this + 608) & 1) == 0)
  {
    v2 = *(this + 592);
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2 == 0;
    }

    if (v3)
    {
      if (v2)
      {
        if ((a2 & 1) == 0)
        {
          v4 = *(this + 528);
          v5 = v4 - v2 + *(this + 584);
          *(this + 584) = v5;
          *(this + 592) = 0;
          v6 = *(this + 568) + v5 - *(this + 560);
          v7 = *(this + 536);
          v8 = v7 - this - 14;
          v9 = v6 < v8;
          v10 = v6 - v8;
          if (v9)
          {
            *(this + 600) = v7;
            v11 = v7 + v10;
            *(this + 536) = v11;
            if (v11 < v4)
            {
              *(this + 544) = 1;
              *(this + 584) = v5 - v4 + v11;
              *(this + 536) = v4;
            }
          }
        }
      }
    }

    else
    {
      *(this + 592) = *(this + 528);
      v12 = *(this + 600);
      if (v12)
      {
        if (v12 <= *(this + 536))
        {
          kd_compressed_input::set_suspend();
        }

        *(this + 536) = v12;
        *(this + 600) = 0;
      }
    }
  }

  return this;
}

uint64_t kd_header_in::get_bit(kd_header_in *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    if (*(this + 8) == 255)
    {
      v3 = 7;
    }

    else
    {
      v3 = 8;
    }

    *(this + 3) = v3;
    if (!kd_input::get(*this, this + 8))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = this;
    }

    v2 = *(this + 3);
  }

  v4 = v2 - 1;
  *(this + 3) = v4;
  return (*(this + 8) >> v4) & 1;
}

uint64_t kd_header_in::finish(uint64_t this)
{
  if (!*(this + 12))
  {
    v1 = this;
    if (*(this + 8) == 255)
    {
      *(this + 12) = 7;
      this = kd_input::get(*this, (this + 8));
      if ((this & 1) == 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = v1;
      }
    }
  }

  return this;
}

uint64_t kd_input::get(kd_input *this, unsigned __int8 *a2)
{
  if (*(this + 544))
  {
    return 0;
  }

  v5 = *(this + 66);
  if (v5 == *(this + 67))
  {
    result = (*(*this + 24))(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 66);
  }

  *(this + 66) = v5 + 1;
  v6 = *v5;
  *a2 = v6;
  if (*(this + 545) == 1)
  {
    if (*(this + 546) == 1 && v6 >= 0x90)
    {
      kd_input::process_unexpected_marker(this, v6);
      v6 = *a2;
    }

    *(this + 546) = v6 == 255;
  }

  return 1;
}

uint64_t kd_input::putback(uint64_t this, char a2)
{
  if (*(this + 544) == 1)
  {
    kd_input::putback();
  }

  if (*(this + 545) == 1)
  {
    kd_input::putback();
  }

  v2 = *(this + 528);
  if (v2 <= this + 8)
  {
    kd_input::putback();
  }

  *(this + 528) = v2 - 1;
  *(v2 - 1) = a2;
  return this;
}

uint64_t kd_precinct::simulate_packet(kd_precinct *this, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, int a8)
{
  v10 = a2;
  v12 = *(this + 6);
  v50 = *(*(*this + 8) + 8);
  if (v12 != *(v50 + 192))
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "Assert ");
    (*(v57 + 16))(&v57, "required_layers == tile->num_layers");
    (*(v57 + 16))(&v57, " FAILED");
    kdu_error::~kdu_error(&v57);
  }

  v13 = *(**this + 48);
  if (v12 <= a3)
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "Assert ");
    (*(v57 + 16))(&v57, "layer_idx < required_layers");
    (*(v57 + 16))(&v57, " FAILED");
    kdu_error::~kdu_error(&v57);
  }

  if (*(this + 9))
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "You may not currently flush compressed code-stream data without completing the compression of all code-blocks in all precincts of all tiles.");
    kdu_error::~kdu_error(&v57);
  }

  v14 = *(this + 5);
  if (!v14)
  {
    if (a3)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "layer_idx == 0");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    operator new[]();
  }

  if (!a3)
  {
    v15 = *(this + 6);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 3;
      if (!*(v50 + 285))
      {
        v17 = 1;
      }

      v18 = 8 * v15;
      do
      {
        *(*(this + 5) + v16) = v17;
        v16 += 8;
      }

      while (v18 != v16);
      v14 = *(this + 5);
    }
  }

  *(v14 + 8 * a3) = 0;
  if (a8)
  {
    if (!a5 || (a6 & 1) == 0)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "last_layer && finalize_layer");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    v19 = *this;
    if (*(*this + 222))
    {
      v20 = 0;
      do
      {
        v21 = *(this + 6) + 32 * v20;
        v22 = *(v21 + 16) * *(v21 + 20);
        if (v22 >= 1)
        {
          v23 = 0;
          v24 = 40 * v22;
          do
          {
            kd_block::trim_data((*(v21 + 24) + v23), a4, v13);
            v23 += 40;
          }

          while (v24 != v23);
          v19 = *this;
        }

        ++v20;
      }

      while (v20 < *(v19 + 222));
      v25 = *(v19 + 222);
      v10 = a2;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = *(*this + 222);
  }

  v26 = 0;
  while (1)
  {
    v27 = 7;
    if (!*(v50 + 284))
    {
      v27 = 1;
    }

    *v10 = v27;
    if (*(v50 + 285) == 1)
    {
      *v10 = v27 + 2;
    }

    v51 = v25;
    if (*(*this + 222))
    {
      break;
    }

    v29 = 0;
LABEL_58:
    v56[0] = 0x800000000;
    v56[1] = 0;
    v56[2] = 0;
    kd_header_out::put_bit(v56, 1u);
    v39 = *this;
    if (*(*this + 222))
    {
      v40 = 0;
      do
      {
        v41 = *(this + 6) + 32 * v40;
        v42 = *(v41 + 16) * *(v41 + 20);
        if (v42 >= 1)
        {
          v43 = 0;
          v44 = 40 * v42;
          do
          {
            kd_block::write_packet_header(*(v41 + 24) + v43, v56, a3, 1);
            v43 += 40;
          }

          while (v44 != v43);
          v39 = *this;
        }

        ++v40;
      }

      while (v40 < *(v39 + 222));
    }

    v10 = a2;
    v45 = *a2 + (kd_header_out::finish(v56) - 1);
    *a2 = v45;
    result = v45 + v29;
    if (v45 + v29 <= a7)
    {
      v25 = v51;
      if (!a5 || !*(*this + 222))
      {
        goto LABEL_80;
      }

      v47 = 0;
      v48 = 0;
      do
      {
        kd_block::save_output_tree(*(*(this + 6) + v47 + 24), *(*(this + 6) + v47 + 16));
        ++v48;
        v47 += 32;
      }

      while (v48 < *(*this + 222));
    }

    else
    {
      v25 = v51;
      if (!a5)
      {
        return result;
      }

      if (!a8)
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
        (*(v57 + 16))(&v57, "Assert ");
        (*(v57 + 16))(&v57, "trim_to_limit");
        (*(v57 + 16))(&v57, " FAILED");
        kdu_error::~kdu_error(&v57);
      }

      do
      {
        while (1)
        {
          v46 = *(this + 6) + 32 * v25;
          if (v26)
          {
            break;
          }

          if (v25 <= 0)
          {
            v59 = 0;
            v57 = 0u;
            v58 = 0u;
            kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
            (*(v57 + 16))(&v57, "Assert ");
            (*(v57 + 16))(&v57, "last_trimmed_subband >= 0");
            (*(v57 + 16))(&v57, " FAILED");
            kdu_error::~kdu_error(&v57);
          }

          v25 = (v25 - 1);
          v26 = *(v46 - 16) * *(v46 - 12);
        }

        --v26;
      }

      while ((kd_block::trim_data((*(v46 + 24) + 40 * v26), (a4 + 1), v13) & 1) == 0);
    }

    v10 = a2;
LABEL_80:
    v49 = *v10 + v29;
    if (v49 <= a7)
    {
      *(*(this + 5) + 8 * a3) = v49;
      return *v10 + v29;
    }
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = *(this + 6) + 32 * v28;
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (a3)
    {
      kd_block::restore_output_tree(v31, v32);
    }

    else
    {
      kd_block::reset_output_tree(v31, v32);
    }

    v33 = *(v30 + 16) * *(v30 + 20);
    if (v33 >= 1)
    {
      v34 = 0;
      v35 = 40 * v33;
      do
      {
        v29 += kd_block::start_packet((*(v30 + 24) + v34), a3, a4);
        v34 += 40;
      }

      while (v35 != v34);
    }

    result = *a2 + v29;
    v37 = a5 ^ 1;
    if (result <= a7)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0 && (a8 & 1) == 0)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "trim_to_limit");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    if (result > a7 && a5 == 0)
    {
      return result;
    }

    if (++v28 >= *(*this + 222))
    {
      goto LABEL_58;
    }
  }
}

unsigned __int8 *kd_header_out::put_bit(unsigned __int8 *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    kd_header_out::put_bit();
  }

  v2 = a2;
  v3 = this;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = 2 * *this;
  }

  else
  {
    this = *(this + 2);
    if (this)
    {
      this = kdu_output::put(this, *v3);
    }

    v5 = 0;
    ++*(v3 + 2);
    if (*v3 == 255)
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }
  }

  *v3 = v5 | v2;
  *(v3 + 1) = v4 - 1;
  return this;
}

uint64_t kd_header_out::finish(kd_header_out *this)
{
  v2 = *(this + 1);
  if (v2 >= 8)
  {
    return *(this + 2);
  }

  v3 = *this << v2;
  *this = v3;
  v4 = *(this + 2);
  if (v4)
  {
    kdu_output::put(v4, v3);
    LOBYTE(v3) = *this;
  }

  result = (*(this + 2) + 1);
  *(this + 2) = result;
  if (v3 == 0xFF)
  {
    if (*(this + 2))
    {
      kdu_output::put(*(this + 2), 0);
      LODWORD(result) = *(this + 2);
    }

    result = (result + 1);
    *(this + 2) = result;
  }

  return result;
}

uint64_t *kd_precinct_ref::close(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = (*this & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = this;
    if (*(v1 + 8) != this)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
      (*(*&v5[0] + 16))(v5, "Assert ");
      (*(*&v5[0] + 16))(v5, "precinct->ref == this");
      (*(*&v5[0] + 16))(v5, " FAILED");
      kdu_error::~kdu_error(v5);
    }

    *(v1 + 8) = 0;
    kd_precinct::closing(v1);
    if (*(v1 + 18) == 1)
    {
      v4 = (2 * *(v1 + 40)) | 1;
    }

    else
    {
      v4 = 3;
    }

    *v3 = v4;
    return kd_precinct_size_class::release(*(v1 + 72), v1);
  }

  return this;
}

void *kd_precinct_size_class::augment_free_list(kd_precinct_size_class *this)
{
  v2 = *(this + 6);
  if (v2 < 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Heap exhausted.  Unable to allocate memory for code-block state information.");
    kdu_error::~kdu_error(&v5);
  }

  result = malloc_type_malloc(v2, 0x103204094352379uLL);
  if (!result)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Heap exhausted.  Unable to allocate sufficient memory for code-block state information.");
    kdu_error::~kdu_error(&v5);
  }

  result[9] = this;
  result[7] = *(this + 4);
  *(this + 4) = result;
  v4 = *(this + 6);
  ++*(this + 7);
  *(*this + 8) += v4;
  return result;
}

uint64_t *kd_precinct_size_class::move_to_inactive_list(uint64_t *this, kd_precinct *a2)
{
  if (*(a2 + 8) || *(a2 + 7) || *(a2 + 20) == 1)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
    (*(*&v5[0] + 16))(v5, "Assert ");
    (*(*&v5[0] + 16))(v5, "(precinct->prev == NULL) && (precinct->next == NULL) && !precinct->inactive");
    (*(*&v5[0] + 16))(v5, " FAILED");
    kdu_error::~kdu_error(v5);
  }

  *(a2 + 20) = 1;
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 8) = v3;
  if (v3)
  {
    v4 = (v3 + 56);
  }

  else
  {
    v4 = (v2 + 16);
  }

  *v4 = a2;
  *(v2 + 24) = a2;
  return this;
}

uint64_t kd_precinct_size_class::withdraw_from_inactive_list(uint64_t this, kd_precinct *a2)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "precinct->inactive");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 7);
    *(v2 + 56) = v3;
    if (v3)
    {
LABEL_5:
      *(v3 + 64) = *(a2 + 8);
      goto LABEL_12;
    }
  }

  else
  {
    if (*(*this + 16) != a2)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
      (*(v4 + 16))(&v4, "Assert ");
      (*(v4 + 16))(&v4, "precinct == server->inactive_head");
      (*(v4 + 16))(&v4, " FAILED");
      kdu_error::~kdu_error(&v4);
    }

    v3 = *(a2 + 7);
    *(*this + 16) = v3;
    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (*(*this + 24) != a2)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "precinct == server->inactive_tail");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  *(*this + 24) = *(a2 + 8);
LABEL_12:
  *(a2 + 20) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  return this;
}

uint64_t kd_precinct_server::get(kd_precinct_server *this, int a2, int a3)
{
  v4 = *this;
  if (!*this)
  {
LABEL_5:
    operator new();
  }

  while (*(v4 + 16) != a2 || *(v4 + 20) != a3)
  {
    v4 = *(v4 + 40);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  for (i = *(this + 2); i; i = *(this + 2))
  {
    if (*(*(this + 4) + 56) >= *(*(this + 4) + 40) + 220 * *(*(this + 4) + 24))
    {
      break;
    }

    if (*(i + 19) != 1 || (*(i + 20) & 1) == 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
      (*(*&v7[0] + 16))(v7, "Assert ");
      (*(*&v7[0] + 16))(v7, "tmp->released && tmp->inactive");
      (*(*&v7[0] + 16))(v7, " FAILED");
      kdu_error::~kdu_error(v7);
    }

    kd_precinct_ref::close(*(i + 8));
  }

  return kd_precinct_size_class::get(v4);
}

uint64_t kd_precinct_size_class::get(kd_precinct_size_class *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    kd_precinct_size_class::augment_free_list(this);
    v2 = *(this + 4);
  }

  *(this + 4) = *(v2 + 56);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  kd_buf_server::augment_structure_bytes(*(this + 1), *(this + 6));
  return v2;
}

uint64_t kd_precinct_ref::instantiate_precinct(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = kd_precinct_server::get(*(*a2 + 80), *(a2 + 216), *(a2 + 222));
  kd_precinct::initialize(v6, a2, a3);
  *(v6 + 8) = a1;
  v7 = *a1;
  if (*a1)
  {
    *(v6 + 18) = 1;
    *(v6 + 40) = v7 >> 1;
    *a1 = v6;
    if (v6)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "!(state & 1)");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    if ((*(*a2 + 415) & 1) == 0)
    {
      if (*(v6 + 36) <= 0)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
        (*(v16 + 16))(&v16, "Assert ");
        (*(v16 + 16))(&v16, "result->num_outstanding_blocks > 0");
        (*(v16 + 16))(&v16, " FAILED");
        kdu_error::~kdu_error(&v16);
      }

      *(v6 + 17) = 1;
      v10 = *(*(a2 + 8) + 8);
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "state == 0");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    *a1 = v6;
    if (v6)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "!(state & 1)");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    v8 = *a2;
    if ((*(*a2 + 418) & 1) != 0 || *(v8 + 415) == 1)
    {
      v9 = *(a2 + 8);
      v10 = *(v9 + 8);
      v11 = HIDWORD(a3) + *(a2 + 196) * a3;
      if (*(a2 + 24))
      {
        v12 = 704 * *(a2 + 24);
        v13 = (a2 - v12 + 196);
        do
        {
          v11 += *(v13 - 1) * *v13;
          v13 += 176;
          v12 -= 704;
        }

        while (v12);
      }

      v14 = v10[2] + (*(v9 + 24) + v11 * v10[47]) * *(v8 + 224) * *(v8 + 220);
      *(v6 + 18) = 1;
      *(v6 + 40) = ~v14;
      if ((*(*a2 + 415) & 1) == 0)
      {
        *(v6 + 17) = 1;
LABEL_19:
        *(v6 + 28) = v10[48];
      }
    }
  }

  return v6;
}

uint64_t kd_precinct_size_class::release(kd_precinct_size_class *this, kd_precinct *a2)
{
  if (*(a2 + 20) == 1)
  {
    kd_precinct_size_class::withdraw_from_inactive_list(this, a2);
  }

  *(a2 + 7) = *(this + 4);
  *(this + 4) = a2;
  v4 = *(this + 1);
  v5 = -*(this + 6);

  return kd_buf_server::augment_structure_bytes(v4, v5);
}

BOOL kd_precinct_ref::set_address(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "seek_address > 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = (*a1 & 1) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = *v5;
    *a1 = (2 * a4) | 1;
    if ((*(v8 + 417) & 1) == 0)
    {
      if (*(v4 + 72) < *(a2 + 24))
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
      }

      if (*(v4 + 184) != 1)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
      }

      v9 = *(a2 + 188) + HIDWORD(a3);
      v10 = *(a2 + 204);
      if (v9 < v10)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
      }

      v11 = *(a2 + 184) + a3;
      v12 = *(a2 + 200);
      if (v11 < v12 || v9 >= *(a2 + 212) + v10 || v11 >= *(a2 + 208) + v12)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
      }
    }

LABEL_18:
    *(v5 + 77) += *(v5 + 50);
    return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
  }

  if (*(v6 + 28))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct->next_layer_idx == 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  *(v6 + 28) = *(v5 + 48);
  *(v6 + 18) = 1;
  *(v6 + 40) = a4;
  kd_precinct::finished_desequencing(v6);
  if (*(v6 + 21))
  {
    goto LABEL_18;
  }

  return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5, a2) & 1) == 0;
}

uint64_t *kd_precinct_pointer_server::disable(uint64_t *this)
{
  if (*this)
  {
    for (i = this; ; this = kd_buf_server::release(*i, v2))
    {
      v2 = i[1];
      i[2] = v2;
      if (!v2)
      {
        break;
      }

      i[1] = *v2;
    }

    *i = 0;
  }

  return this;
}

void kd_mct_stage::~kd_mct_stage(kd_mct_stage *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1020C806B39A6A2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + 152 * v6 - 152);
      v8 = -152 * v6;
      do
      {
        kd_mct_block::~kd_mct_block(v7);
        v7 = (v9 - 152);
        v8 += 152;
      }

      while (v8);
    }

    MEMORY[0x186602830](v5, 0x10B0C80C861A3ACLL);
  }
}

void kd_mct_block::~kd_mct_block(kd_mct_block *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8077774924);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 13);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C80451B5BE8);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8052888210);
  }

  v7 = *(this + 18);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8052888210);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v11 = *(v8 - 8);
    v10 = v8 - 8;
    v9 = v11;
    if (v11)
    {
      v12 = 24 * v9;
      do
      {
        v13 = *(v10 + v12);
        if (v13)
        {
          MEMORY[0x186602830](v13, 0x1000C8052888210);
        }

        v12 -= 24;
      }

      while (v12);
    }

    MEMORY[0x186602830](v10 - 8, 0x1080C80C4643742);
  }
}

void kd_resolution::~kd_resolution(kd_resolution *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 223);
  if (*(this + 223))
  {
    v4 = 0;
    v5 = 128;
    do
    {
      v6 = *(*(this + 28) + v5);
      if (v6)
      {
        MEMORY[0x186602830](v6, 0x1000C8052888210);
        v3 = *(this + 223);
      }

      ++v4;
      v5 += 136;
    }

    while (v4 < v3);
  }

  v7 = *(this + 29);
  if (v7)
  {
    v8 = v7 - 16;
    v9 = *(v7 - 8);
    if (v9)
    {
      v10 = (v7 + 8 * v9 - 8);
      v11 = -8 * v9;
      do
      {
        kd_precinct_ref::~kd_precinct_ref(v10);
        v10 = (v12 - 8);
        v11 += 8;
      }

      while (v11);
    }

    MEMORY[0x186602830](v8, 0x1000C8000313F17);
  }

  v13 = *(this + 31);
  if (v13)
  {
    MEMORY[0x186602830](v13, 0x1020C8068AD3B9FLL);
  }

  v14 = *(this + 28);
  if (v14)
  {
    MEMORY[0x186602830](v14, 0x10A0C80A1ACF372);
  }
}

void kd_precinct_ref::~kd_precinct_ref(kd_precinct_ref *this)
{
  if (*this)
  {
    v1 = (*this & 1) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    kd_precinct_ref::close(this);
  }
}

void _cg_JP2ResetSource(void *a1)
{
  v2 = a1[7];
  _cg_JP2TearDownJP2Storage(a1);
  OpenJP2Input(a1, v2);
}

void sub_185F250A0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185F25090);
}

void *_cg_JP2TearDownJP2Storage(void *result)
{
  v1 = result[7];
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      jp2_family_src::close(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*v1)
    {
      (*(**v1 + 8))(*v1);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[1];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

uint64_t JP2SetOptimalScalingFactor(void *a1)
{
  v2 = a1[7];
  v3 = 1.0;
  kdu_region_compositor::set_scale(*(v2 + 24), 0, 0, 0, 1.0);
  v12 = 0uLL;
  kdu_region_compositor::get_total_composition_dims(*(v2 + 24), &v12);
  v4 = a1[20];
  v5 = a1[21];
  if (v5 >= 2)
  {
    do
    {
      v3 = v3 * 0.5;
      v6 = v5 > 3;
      v5 >>= 1;
    }

    while (v6);
  }

  if (v4 >= 0x10)
  {
    v7 = v4;
    while ((v3 * SHIDWORD(v12)) * 0.5 >= v7 || (v3 * SDWORD2(v12)) * 0.5 >= v7)
    {
      v3 = v3 * 0.5;
    }
  }

  v9 = 0.015625;
  if (v3 >= 0.015625)
  {
    v9 = v3;
  }

  *(v2 + 48) = v9;
  while (1)
  {
    kdu_region_compositor::set_scale(*(v2 + 24), 0, 0, 0, v9);
    total_composition_dims = kdu_region_compositor::get_total_composition_dims(*(v2 + 24), (v2 + 32));
    if (total_composition_dims)
    {
      break;
    }

    v9 = *(v2 + 48) + *(v2 + 48);
    *(v2 + 48) = v9;
    if (v9 > 1.0)
    {
      *(v2 + 32) = v12;
      fwrite("get_total_composition_dims never succeeded\n", 0x2BuLL, 1uLL, *MEMORY[0x1E69E9848]);
      return total_composition_dims;
    }
  }

  return total_composition_dims;
}

void _cg_JP2SetupDecompressor(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(0x38uLL, 1uLL, 0x1020040F5CEC97BuLL);
  *(a2 + 56) = v4;
  OpenJP2Input(a1, v4);
}

void sub_185F258BC(void *a1)
{
  __cxa_begin_catch(a1);
  jp2_family_src::close(*(v1 + 8));
  __cxa_end_catch();
  JUMPOUT(0x185F25884);
}

uint64_t _cg_JP2DecompressBlock(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v10 = *(a1 + 56);
  BytePtr = *(a1 + 152);
  if (!BytePtr)
  {
    v22 = *(a1 + 144);
    if (!v22)
    {
      goto LABEL_20;
    }

    BytePtr = CFDataGetBytePtr(v22);
    if (!BytePtr)
    {
      goto LABEL_20;
    }
  }

  v12 = *(a1 + 128);
  v24[0] = 0;
  v24[1] = 0;
  if ((a2 & 0x80000000) != 0 || (v13 = *(a1 + 64), v13 < a4 + a2))
  {
    v15 = "origin_x >= 0 && origin_x + size_x <= info->width";
    v16 = 692;
    goto LABEL_25;
  }

  if ((a3 & 0x80000000) != 0 || (v14 = *(a1 + 72), v14 < (a5 + a3)))
  {
    v15 = "origin_y >= 0 && origin_y + size_y <= info->height";
    v16 = 693;
    goto LABEL_25;
  }

  v15 = "size_x > 0 && size_x <= info->width";
  v16 = 694;
  if (a4 < 1 || v13 < a4)
  {
LABEL_25:
    __assert_rtn("_cg_JP2DecompressBlock", "JP2LibDecompress.cpp", v16, v15);
  }

  if (a5 < 1 || v14 < a5)
  {
    v15 = "size_y > 0 && size_y <= info->height";
    v16 = 695;
    goto LABEL_25;
  }

  if (!v10)
  {
    abort();
  }

  v17 = v12 >> 3;
  v18 = *(v10 + 24);
  *(v18 + 536) = BytePtr;
  *(v18 + 548) = a4;
  *(v18 + 544) = v17;
  kdu_region_compositor::set_buffer_surface(v18, a3 | (a2 << 32), a5 | (a4 << 32), -1);
  *(a1 + 184) = 0;
  *(a1 + 48) = 0;
  v19 = v17 * a5 * a4;
  while (1)
  {
    v20 = *(v10 + 24);
    if (v20[428] == 1 && v20[429] != 1)
    {
      break;
    }

    if (((*(*v20 + 32))(v20, v19, v24) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 178) == 1 && *(a1 + 48))
    {
      v21 = 0xFFFFFFFFLL;
      goto LABEL_21;
    }
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  kdu_region_compositor::reset(*(v10 + 24));
  *(*(v10 + 24) + 536) = 0u;
  return v21;
}

void sub_185F25B08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185F25A6CLL);
}

void _cg_JP2TearDownDecompressor(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    _cg_JP2TearDownJP2Storage(a1);
    free(v2);
  }

  v3 = a1[18];
  if (v3)
  {

    CFRelease(v3);
  }
}

_BYTE *_cg_JP2GetPalette(uint64_t a1, signed int a2, int *a3, int *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 179) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0;
  }

  v18 = jpx_source::access_codestream(*(v4 + 16), 0, 1);
  if (!v18)
  {
    return 0;
  }

  v17 = jpx_codestream_source::access_palette(&v18, v8);
  if (!v17)
  {
    return 0;
  }

  num_entries = jp2_palette::get_num_entries(&v17, v9);
  num_luts = jp2_palette::get_num_luts(&v17, v11);
  if (num_luts >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = num_luts;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    while (jp2_palette::get_bit_depth(&v17, v14) <= 8)
    {
      if (v13 == ++v14)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  *a3 = num_entries;
  *a4 = v13;
  v15 = malloc_type_malloc(v13 * num_entries, 0x100004077774924uLL);
  if (v15)
  {
    operator new[]();
  }

  return v15;
}

void MyJP2Source::~MyJP2Source(MyJP2Source *this)
{
  *this = &unk_1EF4D2658;
}

{
  *this = &unk_1EF4D2658;
  JUMPOUT(0x186602850);
}

uint64_t MyJP2Source::read(MyJP2Source *this, unsigned __int8 *a2, int a3)
{
  v5 = *(this + 1);
  *(this + 2) += a3;
  result = (*(v5 + 24))(*v5, a2, a3);
  if (result < a3)
  {
    *(*(this + 1) + 48) = -1;
  }

  return result;
}

uint64_t MyJP2Source::seek(MyJP2Source *this, uint64_t a2)
{
  *(this + 2) = a2;
  (*(*(this + 1) + 32))(**(this + 1), *(*(this + 1) + 16) + a2);
  return 1;
}

void jp2_family_src::~jp2_family_src(jp2_family_src *this)
{
  jp2_family_src::~jp2_family_src(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D26B0;
  jp2_family_src::close(this);
}

void MyRegionCompositor::~MyRegionCompositor(MyRegionCompositor *this)
{
  MyRegionCompositor::~MyRegionCompositor(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D26F0;
  kdu_region_compositor::pre_destroy(this);
  *(this + 536) = 0u;

  kdu_region_compositor::~kdu_region_compositor(this);
}

uint64_t MyRegionCompositor::allocate_buffer(uint64_t a1)
{
  if (*(a1 + 536))
  {
    operator new();
  }

  return 0;
}

uint64_t MyRegionCompositor::delete_buffer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void kdu_region_compositor::~kdu_region_compositor(kdu_region_compositor *this)
{
  *this = &unk_1EF4D3CC0;
  off_1EF4D3CD0(this);
  jpx_input_box::~jpx_input_box((this + 32));
}

{
  kdu_region_compositor::~kdu_region_compositor(this);

  JUMPOUT(0x186602850);
}

void jpx_input_box::~jpx_input_box(jpx_input_box *this)
{
  *this = &unk_1EF4D3D28;
  off_1EF4D3D38(this);

  jp2_input_box::~jp2_input_box(this);
}

{
  jpx_input_box::~jpx_input_box(this);

  JUMPOUT(0x186602850);
}