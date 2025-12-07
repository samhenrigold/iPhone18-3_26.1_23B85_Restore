uint64_t sub_2621D3088(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 144);
    result = *v3;
    if (v2 >= 2)
    {
      v5 = v2 - 1;
      v6 = (v3 + 1);
      do
      {
        v7 = *v6++;
        result = (v7 + result);
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *(a1 + 144);
    result = *v8;
    if (v2 >= 2)
    {
      v9 = *(a1 + 56);
      v10 = v2 - 1;
      v11 = 1;
      do
      {
        result = v8[v9 * v11] + result;
        if (v11 + 1 == v2)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }

        --v10;
      }

      while (v10);
    }
  }

  return result;
}

int8x16_t sub_2621D3108(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 1;
  v106 = a2 - 3;
  v107 = a2 - 2;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3uLL:
        v63 = (*a3)(v10 + 1, v10);
        v64 = (*a3)(a2 - 1, v10 + 1);
        if (v63)
        {
          v62 = *v10;
          if (v64)
          {
LABEL_108:
            *v10 = *v9;
          }

          else
          {
            *v10 = v10[1];
            v10[1] = v62;
            if (!(*a3)(a2 - 1, v10 + 1))
            {
              return result;
            }

            v62 = v10[1];
            v10[1] = *v9;
          }

          *v9 = v62;
          return result;
        }

        if (!v64)
        {
          return result;
        }

        v100 = v10[1];
        v10[1] = *v9;
        *v9 = v100;
        goto LABEL_182;
      case 4uLL:
        v65 = (*a3)(v10 + 1, v10);
        v66 = (*a3)(v10 + 2, v10 + 1);
        if (v65)
        {
          v67 = *v10;
          if (v66)
          {
            *v10 = v10[2];
            v10[2] = v67;
          }

          else
          {
            *v10 = v10[1];
            v10[1] = v67;
            if ((*a3)(v10 + 2, v10 + 1))
            {
              *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
            }
          }
        }

        else if (v66)
        {
          *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          if ((*a3)(v10 + 1, v10))
          {
            *v10 = vextq_s8(*v10, *v10, 8uLL);
          }
        }

        if (!(*a3)(a2 - 1, v10 + 2))
        {
          return result;
        }

        v105 = v10[2];
        v10[2] = *v9;
        *v9 = v105;
        if (!(*a3)(v10 + 2, v10 + 1))
        {
          return result;
        }

        *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
LABEL_182:
        if ((*a3)(v10 + 1, v10))
        {
          result = vextq_s8(*v10, *v10, 8uLL);
          *v10 = result;
        }

        return result;
      case 5uLL:

        sub_2621D3CB4(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
        return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v68 = v10 + 1;
      v70 = v10 == a2 || v68 == a2;
      if (a5)
      {
        if (!v70)
        {
          v71 = 0;
          v72 = v10;
          do
          {
            v73 = v72;
            v72 = v68;
            if ((*a3)(v68, v73))
            {
              v111 = *v72;
              v74 = v71;
              while (1)
              {
                *(v10 + v74 + 8) = *(v10 + v74);
                if (!v74)
                {
                  break;
                }

                v74 -= 8;
                if (((*a3)(&v111, (v10 + v74)) & 1) == 0)
                {
                  v75 = (v10 + v74 + 8);
                  goto LABEL_128;
                }
              }

              v75 = v10;
LABEL_128:
              *v75 = v111;
            }

            v68 = v72 + 1;
            v71 += 8;
          }

          while (v72 + 1 != a2);
        }
      }

      else if (!v70)
      {
        do
        {
          v101 = a1;
          a1 = v68;
          if ((*a3)(v68, v101))
          {
            v111 = *a1;
            v102 = a1;
            do
            {
              v103 = v102;
              v104 = *--v102;
              *v103 = v104;
            }

            while (((*a3)(&v111, v103 - 2) & 1) != 0);
            *v102 = v111;
          }

          v68 = a1 + 1;
        }

        while (a1 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v109 = a2;
        v76 = v12 >> 1;
        v77 = v12 >> 1;
        do
        {
          v78 = v77;
          if (v76 >= v77)
          {
            v79 = (2 * v77) | 1;
            v80 = &a1[v79];
            if (2 * v77 + 2 < v11 && (*a3)(&a1[v79], v80 + 1))
            {
              ++v80;
              v79 = 2 * v78 + 2;
            }

            v81 = &a1[v78];
            if (((*a3)(v80, v81) & 1) == 0)
            {
              v111 = *v81;
              do
              {
                v82 = v80;
                *v81 = *v80;
                if (v76 < v79)
                {
                  break;
                }

                v83 = (2 * v79) | 1;
                v80 = &a1[v83];
                v84 = 2 * v79 + 2;
                if (v84 < v11 && (*a3)(&a1[v83], v80 + 1))
                {
                  ++v80;
                  v83 = v84;
                }

                v81 = v82;
                v79 = v83;
              }

              while (!(*a3)(v80, &v111));
              *v82 = v111;
            }
          }

          v77 = v78 - 1;
        }

        while (v78);
        v85 = v109;
        do
        {
          v86 = v85;
          v87 = 0;
          v110 = *a1;
          v88 = a1;
          do
          {
            v89 = &v88[v87];
            v90 = v89 + 1;
            v91 = (2 * v87) | 1;
            v92 = 2 * v87 + 2;
            if (v92 < v11)
            {
              v93 = v89 + 2;
              if ((*a3)(v89 + 1, v89 + 2))
              {
                v90 = v93;
                v91 = v92;
              }
            }

            *v88 = *v90;
            v88 = v90;
            v87 = v91;
          }

          while (v91 <= ((v11 - 2) >> 1));
          v85 = v86 - 1;
          if (v90 == v86 - 1)
          {
            *v90 = v110;
          }

          else
          {
            *v90 = *v85;
            *v85 = v110;
            v94 = (v90 - a1 + 8) >> 3;
            v95 = v94 < 2;
            v96 = v94 - 2;
            if (!v95)
            {
              v97 = v96 >> 1;
              v98 = &a1[v96 >> 1];
              if ((*a3)(v98, v90))
              {
                v111 = *v90;
                do
                {
                  v99 = v98;
                  *v90 = *v98;
                  if (!v97)
                  {
                    break;
                  }

                  v97 = (v97 - 1) >> 1;
                  v98 = &a1[v97];
                  v90 = v99;
                }

                while (((*a3)(v98, &v111) & 1) != 0);
                *v99 = v111;
              }
            }
          }

          v95 = v11-- <= 2;
        }

        while (!v95);
      }

      return result;
    }

    v13 = &v10[v11 >> 1];
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = v14(&v10[v11 >> 1], v10);
      v16 = (*a3)(a2 - 1, &v10[v11 >> 1]);
      if (v15)
      {
        v17 = *v10;
        if (v16)
        {
          *v10 = *v9;
          goto LABEL_26;
        }

        *v10 = *v13;
        *v13 = v17;
        if ((*a3)(a2 - 1, &v10[v11 >> 1]))
        {
          v17 = *v13;
          *v13 = *v9;
LABEL_26:
          *v9 = v17;
        }
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v9;
        *v9 = v21;
        if ((*a3)(&v10[v11 >> 1], v10))
        {
          v22 = *v10;
          *v10 = *v13;
          *v13 = v22;
        }
      }

      v25 = v13 - 1;
      v26 = (*a3)(v13 - 1, a1 + 1);
      v27 = (*a3)(v107, v13 - 1);
      if (v26)
      {
        v28 = a1[1];
        if (v27)
        {
          v29 = a2 - 2;
          a1[1] = *v107;
          goto LABEL_38;
        }

        a1[1] = *v25;
        *v25 = v28;
        if ((*a3)(v107, v13 - 1))
        {
          v28 = *v25;
          v29 = a2 - 2;
          *v25 = *v107;
LABEL_38:
          *v29 = v28;
        }
      }

      else if (v27)
      {
        v30 = *v25;
        *v25 = *v107;
        *v107 = v30;
        if ((*a3)(v13 - 1, a1 + 1))
        {
          v31 = a1[1];
          a1[1] = *v25;
          *v25 = v31;
        }
      }

      v32 = (*a3)(v13 + 1, a1 + 2);
      v33 = (*a3)(v106, v13 + 1);
      if (v32)
      {
        v34 = a1[2];
        if (v33)
        {
          v35 = a2 - 3;
          a1[2] = *v106;
          goto LABEL_47;
        }

        a1[2] = v13[1];
        v13[1] = v34;
        if ((*a3)(v106, v13 + 1))
        {
          v34 = v13[1];
          v35 = a2 - 3;
          v13[1] = *v106;
LABEL_47:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v36 = v13[1];
        v13[1] = *v106;
        *v106 = v36;
        if ((*a3)(v13 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v13[1];
          v13[1] = v37;
        }
      }

      v38 = (*a3)(&a1[v11 >> 1], v13 - 1);
      v39 = (*a3)(v13 + 1, &a1[v11 >> 1]);
      if (v38)
      {
        v40 = *v25;
        if (v39)
        {
          v41 = *v13;
          *v25 = v13[1];
          v13[1] = v40;
LABEL_57:
          v45 = *a1;
          *a1 = v41;
          *v13 = v45;
          goto LABEL_58;
        }

        *v25 = *v13;
        *v13 = v40;
        v44 = (*a3)(v13 + 1, &a1[v11 >> 1]);
        v41 = *v13;
        if (!v44)
        {
          goto LABEL_57;
        }

        v43 = v13[1];
        *v13 = v43;
        v13[1] = v41;
      }

      else
      {
        v41 = *v13;
        if (!v39)
        {
          goto LABEL_57;
        }

        *v13 = v13[1];
        v13[1] = v41;
        v42 = (*a3)(&a1[v11 >> 1], v13 - 1);
        v41 = *v13;
        if (!v42)
        {
          goto LABEL_57;
        }

        v43 = *v25;
        *v25 = v41;
        *v13 = v43;
      }

      v41 = v43;
      goto LABEL_57;
    }

    v18 = v14(v10, &v10[v11 >> 1]);
    v19 = (*a3)(a2 - 1, v10);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v23 = *v10;
        *v10 = *v9;
        *v9 = v23;
        if ((*a3)(v10, &v10[v11 >> 1]))
        {
          v24 = *v13;
          *v13 = *v10;
          *v10 = v24;
        }
      }

      goto LABEL_58;
    }

    v20 = *v13;
    if (v19)
    {
      *v13 = *v9;
LABEL_35:
      *v9 = v20;
      goto LABEL_58;
    }

    *v13 = *v10;
    *v10 = v20;
    if ((*a3)(a2 - 1, v10))
    {
      v20 = *v10;
      *v10 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a4;
    if (a5)
    {
      v46 = *a1;
LABEL_61:
      v111 = v46;
      v48 = a1;
      do
      {
        v49 = v48++;
      }

      while (((*a3)(v48, &v111) & 1) != 0);
      v50 = a2;
      if (v49 == a1)
      {
        v50 = a2;
        do
        {
          if (v48 >= v50)
          {
            break;
          }

          --v50;
        }

        while (((*a3)(v50, &v111) & 1) == 0);
      }

      else
      {
        do
        {
          --v50;
        }

        while (!(*a3)(v50, &v111));
      }

      if (v48 < v50)
      {
        v51 = v48;
        v52 = v50;
        do
        {
          v53 = *v51;
          *v51 = *v52;
          *v52 = v53;
          do
          {
            v49 = v51++;
          }

          while (((*a3)(v51, &v111) & 1) != 0);
          do
          {
            --v52;
          }

          while (!(*a3)(v52, &v111));
        }

        while (v51 < v52);
      }

      if (v49 != a1)
      {
        *a1 = *v49;
      }

      *v49 = v111;
      if (v48 < v50)
      {
        goto LABEL_80;
      }

      v54 = sub_2621D3EA4(a1, v49, a3);
      v10 = v49 + 1;
      if (sub_2621D3EA4(v49 + 1, a2, a3))
      {
        a2 = v49;
        if (!v54)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v54)
      {
LABEL_80:
        result = sub_2621D3108(a1, v49, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v49 + 1;
      }
    }

    else
    {
      v47 = (*a3)(a1 - 1, a1);
      v46 = *a1;
      if (v47)
      {
        goto LABEL_61;
      }

      v111 = *a1;
      if ((*a3)(&v111, a2 - 1))
      {
        v10 = a1;
        do
        {
          ++v10;
        }

        while (((*a3)(&v111, v10) & 1) == 0);
      }

      else
      {
        v55 = a1 + 1;
        do
        {
          v10 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v56 = (*a3)(&v111, v55);
          v55 = v10 + 1;
        }

        while (!v56);
      }

      v57 = a2;
      if (v10 < a2)
      {
        v57 = a2;
        do
        {
          --v57;
        }

        while (((*a3)(&v111, v57) & 1) != 0);
      }

      while (v10 < v57)
      {
        v58 = *v10;
        *v10 = *v57;
        *v57 = v58;
        do
        {
          ++v10;
        }

        while (!(*a3)(&v111, v10));
        do
        {
          --v57;
        }

        while (((*a3)(&v111, v57) & 1) != 0);
      }

      v59 = v10 - 1;
      if (v10 - 1 != a1)
      {
        *a1 = *v59;
      }

      a5 = 0;
      *v59 = v111;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_9;
  }

  if ((*a3)(a2 - 1, v10))
  {
    v62 = *v10;
    goto LABEL_108;
  }

  return result;
}

uint64_t sub_2621D3CB4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_2621D3EA4(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v17;
        *v17 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        sub_2621D3CB4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v30 = *v22;
      v25 = v23;
      while (1)
      {
        v26 = (a1 + v25);
        *(a1 + v25 + 24) = *(a1 + v25 + 16);
        if (v25 == -16)
        {
          break;
        }

        v25 -= 8;
        if (((*a3)(&v30, v26 + 1) & 1) == 0)
        {
          v27 = (a1 + v25 + 24);
          goto LABEL_40;
        }
      }

      v27 = a1;
LABEL_40:
      *v27 = v30;
      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2621D4260(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *(a1 + 2);
      v15 = *a1;
      v16 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v16;
LABEL_9:
      *a3 = v15;
      *(a3 + 2) = v14;
      goto LABEL_10;
    }

    v23 = *(a1 + 2);
    v24 = *a1;
    v25 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v25;
    *a2 = v24;
    *(a2 + 2) = v23;
    if ((*a6)(a3, a2))
    {
      v14 = *(a2 + 2);
      v15 = *a2;
      v26 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = *(a2 + 2);
    v18 = *a2;
    v19 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v19;
    *a3 = v18;
    *(a3 + 2) = v17;
    if ((*a6)(a2, a1))
    {
      v20 = *(a1 + 2);
      v21 = *a1;
      v22 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v22;
      *a2 = v21;
      *(a2 + 2) = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    if ((*a6)(a3, a2))
    {
      v30 = *(a2 + 2);
      v31 = *a2;
      v32 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v32;
      *a3 = v31;
      *(a3 + 2) = v30;
      if ((*a6)(a2, a1))
      {
        v33 = *(a1 + 2);
        v34 = *a1;
        v35 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v35;
        *a2 = v34;
        *(a2 + 2) = v33;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v37 = *(a4 + 2);
    v38 = *a4;
    v39 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v39;
    *a5 = v38;
    *(a5 + 2) = v37;
    result = (*a6)(a4, a3);
    if (result)
    {
      v40 = *(a3 + 2);
      v41 = *a3;
      v42 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v42;
      *a4 = v41;
      *(a4 + 2) = v40;
      result = (*a6)(a3, a2);
      if (result)
      {
        v43 = *(a2 + 2);
        v44 = *a2;
        v45 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v45;
        *a3 = v44;
        *(a3 + 2) = v43;
        result = (*a6)(a2, a1);
        if (result)
        {
          v46 = *(a1 + 2);
          v47 = *a1;
          v48 = *(a2 + 2);
          *a1 = *a2;
          *(a1 + 2) = v48;
          *a2 = v47;
          *(a2 + 2) = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_2621D4518(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = a2 - 12;
      v12 = (*a3)((a1 + 12), a1);
      v13 = (*a3)(v11, (a1 + 12));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 8);
          v15 = *a1;
          v16 = *(v11 + 8);
          *a1 = *v11;
          *(a1 + 8) = v16;
        }

        else
        {
          v38 = *(a1 + 8);
          v39 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v39;
          *(a1 + 20) = v38;
          if (!(*a3)(v11, (a1 + 12)))
          {
            return 1;
          }

          v14 = *(a1 + 20);
          v15 = *(a1 + 12);
          v40 = *(v11 + 8);
          *(a1 + 12) = *v11;
          *(a1 + 20) = v40;
        }

        *v11 = v15;
        *(v11 + 8) = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 20);
      v28 = *(a1 + 12);
      v29 = *(v11 + 8);
      *(a1 + 12) = *v11;
      *(a1 + 20) = v29;
      *v11 = v28;
      *(v11 + 8) = v27;
LABEL_50:
      if ((*a3)((a1 + 12), a1))
      {
        v56 = *(a1 + 8);
        v57 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v57;
        *(a1 + 20) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_2621D4260(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12), a3);
      return 1;
    }

    v22 = a2 - 12;
    v23 = (*a3)((a1 + 12), a1);
    v24 = (*a3)((a1 + 24), (a1 + 12));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 20);
        v35 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v35;
        *(a1 + 32) = v34;
        if ((*a3)((a1 + 12), a1))
        {
          v36 = *(a1 + 8);
          v37 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v37;
          *(a1 + 20) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 8);
      v26 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    else
    {
      v49 = *(a1 + 8);
      v50 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v50;
      *(a1 + 20) = v49;
      if (!(*a3)((a1 + 24), (a1 + 12)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 20);
      v26 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    *(a1 + 24) = v26;
    *(a1 + 32) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 24)))
    {
      return 1;
    }

    v51 = *(a1 + 32);
    v52 = *(a1 + 24);
    v53 = *(v22 + 8);
    *(a1 + 24) = *v22;
    *(a1 + 32) = v53;
    *v22 = v52;
    *(v22 + 8) = v51;
    if (!(*a3)((a1 + 24), (a1 + 12)))
    {
      return 1;
    }

    v54 = *(a1 + 20);
    v55 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v55;
    *(a1 + 32) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 12);
    if ((*a3)((a2 - 12), a1))
    {
      v8 = *(a1 + 8);
      v9 = *a1;
      v10 = *(a2 - 4);
      *a1 = *v7;
      *(a1 + 8) = v10;
      *v7 = v9;
      *(a2 - 4) = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 24);
  v18 = (*a3)((a1 + 12), a1);
  v19 = (*a3)((a1 + 24), (a1 + 12));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 8);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 8) = *(a1 + 32);
    }

    else
    {
      v41 = *(a1 + 8);
      v42 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v42;
      *(a1 + 20) = v41;
      if (!(*a3)((a1 + 24), (a1 + 12)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 20);
      v21 = *(a1 + 12);
      *(a1 + 12) = *v17;
      *(a1 + 20) = *(a1 + 32);
    }

    *v17 = v21;
    *(a1 + 32) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 20);
    v31 = *(a1 + 12);
    *(a1 + 12) = *v17;
    *(a1 + 20) = *(a1 + 32);
    *v17 = v31;
    *(a1 + 32) = v30;
    if ((*a3)((a1 + 12), a1))
    {
      v32 = *(a1 + 8);
      v33 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v33;
      *(a1 + 20) = v32;
    }
  }

LABEL_33:
  v43 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = *(v43 + 8);
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 36) = *(a1 + v46 + 24);
        *(v47 + 44) = *(a1 + v46 + 32);
        if (v46 == -24)
        {
          break;
        }

        v46 -= 12;
        if (((*a3)(&v59, (v47 + 12)) & 1) == 0)
        {
          v48 = a1 + v46 + 36;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 8) = v60;
      if (++v45 == 8)
      {
        return v43 + 12 == a2;
      }
    }

    v17 = v43;
    v44 += 12;
    v43 += 12;
    if (v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_2621D4A3C(uint64_t *result, void *a2, signed int a3, int a4, int a5)
{
  v7 = a3;
  v9 = result;
  v67 = a5;
  v10 = *result;
  if (a3 < 0 && (v7 = v10 + a3, v10 + a3 < 0) || v10 < v7)
  {
    v11 = MEMORY[0x277D82670];
    v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v14 = sub_2621D552C(v13, " ", 1);
    v15 = MEMORY[0x266727260](v14, 264);
    v16 = sub_2621D552C(v15, " ", 1);
    v17 = sub_2621D552C(v16, "compute_range_inner", 19);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5854("err", "view shape should large equal 0 and less ", v9);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v19 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (a4)
  {
    if (a4 < 0)
    {
      a4 += *v9;
    }
  }

  else
  {
    v20 = MEMORY[0x277D82670];
    v21 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v22 = sub_2621D552C(v21, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v23 = sub_2621D552C(v22, " ", 1);
    v24 = MEMORY[0x266727260](v23, 265);
    v25 = sub_2621D552C(v24, " ", 1);
    v26 = sub_2621D552C(v25, "compute_range_inner", 19);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D58EC("err", "end should not be zero");
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v28 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
    a4 = 0;
  }

  if (a5 <= 0)
  {
    v29 = MEMORY[0x277D82670];
    v30 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v31 = sub_2621D552C(v30, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v32 = sub_2621D552C(v31, " ", 1);
    v33 = MEMORY[0x266727260](v32, 272);
    v34 = sub_2621D552C(v33, " ", 1);
    v35 = sub_2621D552C(v34, "compute_range_inner", 19);
    std::ios_base::getloc((v35 + *(*v35 - 24)));
    v36 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "at least step > 0", &v67);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v37 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v38 = a4 - v7;
  if (a4 <= v7)
  {
    v39 = MEMORY[0x277D82670];
    v40 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v41 = sub_2621D552C(v40, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v42 = sub_2621D552C(v41, " ", 1);
    v43 = MEMORY[0x266727260](v42, 273);
    v44 = sub_2621D552C(v43, " ", 1);
    v45 = sub_2621D552C(v44, "compute_range_inner", 19);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5A90("err", "end >start");
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v47 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (*v9 < a4)
  {
    v48 = MEMORY[0x277D82670];
    v49 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v50 = sub_2621D552C(v49, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v51 = sub_2621D552C(v50, " ", 1);
    v52 = MEMORY[0x266727260](v51, 274);
    v53 = sub_2621D552C(v52, " ", 1);
    v54 = sub_2621D552C(v53, "compute_range_inner", 19);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v55->__vftable[2].~facet_0)(v55, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "out ouf range");
    std::ios_base::getloc((v48 + *(*v48 - 24)));
    v56 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v56->__vftable[2].~facet_0)(v56, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v66 = v38 / a5;
  if (v38 / a5 <= 0)
  {
    v57 = MEMORY[0x277D82670];
    v58 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v59 = sub_2621D552C(v58, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v60 = sub_2621D552C(v59, " ", 1);
    v61 = MEMORY[0x266727260](v60, 276);
    v62 = sub_2621D552C(v61, " ", 1);
    v63 = sub_2621D552C(v62, "compute_range_inner", 19);
    std::ios_base::getloc((v63 + *(*v63 - 24)));
    v64 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v64->__vftable[2].~facet_0)(v64, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "length > 0", &v66);
    std::ios_base::getloc((v57 + *(*v57 - 24)));
    v65 = std::locale::use_facet(&v68, MEMORY[0x277D82680]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&v68);
    std::ostream::put();
    result = std::ostream::flush();
  }

  *a2 = v7;
  a2[1] = a4;
  a2[2] = a5;
  return result;
}

void sub_2621D540C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2874EE910;
  *(a1 + 120) = 0;
  v4 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *a3;
  v6 = a3[2];
  v7 = vcvtps_u32_f32((a3[1] - *a3) / v6);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = v7;
  *(a1 + 56) *= v6;
  v8 = *(a1 + 112) + *(a2 + 56) * v5;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
      v9 = *v4;
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v9 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v13 = *(a1 + 8) == 1 || *(a1 + 56) == 1;
  *(a1 + 136) = v13;
}

void *sub_2621D552C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x266727230](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2621CC980();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x266727240](v20);
  return a1;
}

void sub_2621D57D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x266727240](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2621D57A8);
}

uint64_t sub_2621D5854(const char *a1, const char *a2, uint64_t *a3)
{
  v6 = strlen(a1);
  v7 = MEMORY[0x277D82670];
  v8 = sub_2621D552C(MEMORY[0x277D82670], a1, v6);
  sub_2621D552C(v8, " ", 1);
  v9 = strlen(a2);
  v10 = sub_2621D552C(v7, a2, v9);
  sub_2621D552C(v10, " ", 1);
  v11 = *a3;

  return sub_2621D5D6C(v11);
}

uint64_t sub_2621D58EC(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D59F8(const char *a1, const char *a2, unsigned int *a3)
{
  v6 = strlen(a1);
  v7 = MEMORY[0x277D82670];
  v8 = sub_2621D552C(MEMORY[0x277D82670], a1, v6);
  sub_2621D552C(v8, " ", 1);
  v9 = strlen(a2);
  v10 = sub_2621D552C(v7, a2, v9);
  sub_2621D552C(v10, " ", 1);
  v11 = *a3;

  return sub_2621D5CA8(v11);
}

uint64_t sub_2621D5A90(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D5B9C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D5CA8(uint64_t a1)
{
  v1 = MEMORY[0x266727260](MEMORY[0x277D82670], a1);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D5D6C(uint64_t a1)
{
  v1 = MEMORY[0x266727270](MEMORY[0x277D82670], a1);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_2621D5E30(void *a1)
{
  *a1 = &unk_2874EE910;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2621D5E9C(void *a1)
{
  *a1 = &unk_2874EE910;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_2621D5EE8(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_2621D5FF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_2874EE910;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_2621D6120(&v13, a2 + 8, a3);
  v7 = v13;
  *(a1 + 8) = *(v6 + 8 * v13);
  *(a1 + 56) = *(a2 + 8 * v7 + 56);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 128);
  *(a1 + 120) = v8;
  *(a1 + 128) = v9;
  if (v10)
  {
    sub_2621D1B78(v10);
    v8 = *v5;
  }

  *(a1 + 144) = *v8 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v12 = *(a1 + 8) == 1 || *(a1 + 56) == 1;
  *(a1 + 136) = v12;
}

void sub_2621D6104(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621D6120(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v5 = a3 + 2 * (a3 >> 31);
  v6 = v5;
  if (v5 >= 2)
  {
    v7 = MEMORY[0x277D82670];
    v8 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v9 = sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
    v10 = sub_2621D552C(v9, " ", 1);
    v11 = MEMORY[0x266727260](v10, 66);
    v12 = sub_2621D552C(v11, " ", 1);
    v13 = sub_2621D552C(v12, "init", 4);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "which_dim<dim");
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v15 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
    if ((v6 & 0x80000000) != 0)
    {
      v16 = MEMORY[0x277D82670];
      v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
      v19 = sub_2621D552C(v18, " ", 1);
      v20 = MEMORY[0x266727260](v19, 67);
      v21 = sub_2621D552C(v20, " ", 1);
      v22 = sub_2621D552C(v21, "init", 4);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v59);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6874("err", "which_dim>=0");
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v59);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  if (*(a2 + 8 * v6) != 1)
  {
    v25 = MEMORY[0x277D82670];
    v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v27 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
    v28 = sub_2621D552C(v27, " ", 1);
    v29 = MEMORY[0x266727260](v28, 68);
    v30 = sub_2621D552C(v29, " ", 1);
    v31 = sub_2621D552C(v30, "init", 4);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6980("err", "shape[which_dim]==1");
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v33 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
  }

  v59.__locale_ = v6;
  sub_2621C9004(&v56, &v59);
  v34 = v56;
  if (v57 != v56)
  {
    v35 = 0;
    v36 = 0;
    v37 = v57 - v56;
    v38 = v37 - 1;
    if (v37 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v57 - v56;
    }

    v40 = v56 + 1;
    do
    {
      v41 = v35 + 1;
      if (v35 + 1 < v37)
      {
        v42 = v56[v35];
        v43 = v40;
        v44 = v38;
        do
        {
          v45 = *v43++;
          v36 |= v42 == v45;
          --v44;
        }

        while (v44);
      }

      --v38;
      ++v40;
      v35 = v41;
    }

    while (v41 != v39);
    if (v36)
    {
      v46 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v47 = sub_2621D552C(v46, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
      sub_2621D552C(v47, " ", 1);
      v48 = MEMORY[0x277D82670];
      v49 = MEMORY[0x266727260](MEMORY[0x277D82670], 79);
      sub_2621D552C(v49, " ", 1);
      sub_2621D552C(v49, "init", 4);
      std::ios_base::getloc((v49 + *(*v49 - 24)));
      v50 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
      (v50->__vftable[2].~facet_0)(v50, 10);
      std::locale::~locale(&v59);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6A8C("err", "duplicate dim idx");
      std::ios_base::getloc((v48 + *(*v48 - 24)));
      v51 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
      (v51->__vftable[2].~facet_0)(v51, 10);
      std::locale::~locale(&v59);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v52 = 0;
  v53 = 0;
  v54 = 1;
  do
  {
    v55 = v54;
    if (v52 != *v34)
    {
      *(a1 + 8 * v53++) = v52;
    }

    v54 = 0;
    v52 = 1;
  }

  while ((v55 & 1) != 0);
  operator delete(v34);
}

uint64_t sub_2621D6874(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D6980(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D6A8C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D6B98(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

_OWORD *sub_2621D6CA4(_OWORD *__b, char **a2)
{
  __b[1] = 0u;
  __b[2] = 0u;
  *__b = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 89);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "Shape", 5);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D72FC("err", "size of input shape vector is 0");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
  }

  v15 = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    v16 = MEMORY[0x277D82670];
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v19 = sub_2621D552C(v18, " ", 1);
    v20 = MEMORY[0x266727260](v19, 90);
    v21 = sub_2621D552C(v20, " ", 1);
    v22 = sub_2621D552C(v21, "Shape", 5);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D7408("err", "size of input shape vector > current dim");
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v24 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
    v15 = v5 - *a2;
  }

  v25 = v15 >> 3;
  if (v15 == 16)
  {
    v26 = 0;
  }

  else
  {
    if (v25 != 1 && v25 != 2)
    {
      v26 = 2 - v25;
    }

    else
    {
      v26 = 1;
    }

    memset_pattern16(__b, &unk_2623A7E50, 8 * v26);
  }

  if (v5 != v4)
  {
    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = __b + v26;
    do
    {
      v29 = *v4;
      v4 += 8;
      *v28++ = v29;
      --v27;
    }

    while (v27);
  }

  return __b;
}

uint64_t sub_2621D7078(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EEB10;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  v6 = v5 * v4;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  if (v6)
  {
    sub_2621D7174(&v7, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2621D715C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621D721C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2621D7238(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8052888210);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_2621D7288(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EE9C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2621D72FC(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D7408(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D7514(uint64_t result, uint64_t a2, unsigned int a3, signed int a4, int a5, int a6)
{
  v8 = a4;
  v70 = a6;
  v11 = (result + 8 * a3);
  v12 = *v11;
  if (a4 < 0 && (v8 = v12 + a4, v12 + a4 < 0) || v12 < v8)
  {
    v13 = MEMORY[0x277D82670];
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v16 = sub_2621D552C(v15, " ", 1);
    v17 = MEMORY[0x266727260](v16, 264);
    v18 = sub_2621D552C(v17, " ", 1);
    v19 = sub_2621D552C(v18, "compute_range_inner", 19);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5854("err", "view shape should large equal 0 and less ", v11);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v21 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (a5)
  {
    if (a5 < 0)
    {
      a5 += *v11;
    }
  }

  else
  {
    v22 = MEMORY[0x277D82670];
    v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v25 = sub_2621D552C(v24, " ", 1);
    v26 = MEMORY[0x266727260](v25, 265);
    v27 = sub_2621D552C(v26, " ", 1);
    v28 = sub_2621D552C(v27, "compute_range_inner", 19);
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D58EC("err", "end should not be zero");
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v30 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
    a5 = 0;
  }

  if (a6 <= 0)
  {
    v31 = MEMORY[0x277D82670];
    v32 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v33 = sub_2621D552C(v32, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v34 = sub_2621D552C(v33, " ", 1);
    v35 = MEMORY[0x266727260](v34, 272);
    v36 = sub_2621D552C(v35, " ", 1);
    v37 = sub_2621D552C(v36, "compute_range_inner", 19);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "at least step > 0", &v70);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v39 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v40 = a5 - v8;
  if (a5 <= v8)
  {
    v41 = MEMORY[0x277D82670];
    v42 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v43 = sub_2621D552C(v42, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v44 = sub_2621D552C(v43, " ", 1);
    v45 = MEMORY[0x266727260](v44, 273);
    v46 = sub_2621D552C(v45, " ", 1);
    v47 = sub_2621D552C(v46, "compute_range_inner", 19);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5A90("err", "end >start");
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v49 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v49->__vftable[2].~facet_0)(v49, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (*v11 < a5)
  {
    v50 = MEMORY[0x277D82670];
    v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v53 = sub_2621D552C(v52, " ", 1);
    v54 = MEMORY[0x266727260](v53, 274);
    v55 = sub_2621D552C(v54, " ", 1);
    v56 = sub_2621D552C(v55, "compute_range_inner", 19);
    std::ios_base::getloc((v56 + *(*v56 - 24)));
    v57 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v57->__vftable[2].~facet_0)(v57, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "out ouf range");
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v58 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v58->__vftable[2].~facet_0)(v58, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v69 = v40 / a6;
  if (v40 / a6 <= 0)
  {
    v59 = MEMORY[0x277D82670];
    v60 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v61 = sub_2621D552C(v60, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v62 = sub_2621D552C(v61, " ", 1);
    v63 = MEMORY[0x266727260](v62, 276);
    v64 = sub_2621D552C(v63, " ", 1);
    v65 = sub_2621D552C(v64, "compute_range_inner", 19);
    std::ios_base::getloc((v65 + *(*v65 - 24)));
    v66 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v66->__vftable[2].~facet_0)(v66, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "length > 0", &v69);
    std::ios_base::getloc((v59 + *(*v59 - 24)));
    v67 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v67->__vftable[2].~facet_0)(v67, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v68 = (a2 + 24 * a3);
  *v68 = v8;
  v68[1] = a5;
  v68[2] = a6;
  return result;
}

void sub_2621D7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = &unk_2874EEB10;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = 1;
  v7 = *(a1 + 112);
  do
  {
    v8 = (a3 + 24 * v4);
    v9 = *v8;
    v10 = (v8[1] - *v8);
    v11 = v8[2];
    *(a1 + 8 + 8 * v4) = vcvtps_u32_f32(v10 / v11);
    *(a1 + 56 + 8 * v4) *= v11;
    LOBYTE(v11) = v6;
    v7 += *(a2 + 56 + 8 * v4) * v9;
    v4 = 1;
    v6 = 0;
  }

  while ((v11 & 1) != 0);
  *(a1 + 104) = *(a1 + 16) * *(a1 + 8);
  *(a1 + 112) = v7;
  v12 = *(a2 + 120);
  v13 = *(a2 + 128);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v14 = *(a1 + 128);
    *(a1 + 120) = v12;
    *(a1 + 128) = v13;
    if (v14)
    {
      sub_2621D1B78(v14);
      v12 = *v5;
    }
  }

  else
  {
    *(a1 + 120) = v12;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v12 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v15 = (a1 + 64);
  v16 = -2;
  v17 = 1;
  while (1)
  {
    v18 = *(v15 - 6);
    if (v18 != 1)
    {
      break;
    }

LABEL_11:
    --v15;
    if (__CFADD__(v16++, 1))
    {
      v20 = 1;
      goto LABEL_15;
    }
  }

  if (*v15 == v17)
  {
    v17 *= v18;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_15:
  *(a1 + 136) = v20;
}

uint64_t sub_2621D8074(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_2621D8180(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v162 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 232))
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 240);
          do
          {
            v12 = *v11++;
            *v10++ = v12 > *(a2 + 296);
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v81 = 0;
        v82 = *(result + 56);
        v83 = *(result + 64);
        v84 = *(a2 + 240);
        do
        {
          v85 = 0;
          v10[v83 * *(&v147 + 1) + v82 * v147] = *(v84 + 4 * v81) > *(a2 + 296);
          do
          {
            v86 = *(&v147 + v85 + 8) + 1;
            *(&v147 + v85 + 8) = v86;
            result = *(v3 + 16 + v85);
            if (v86 != result)
            {
              break;
            }

            *(&v147 + v85 + 8) = 0;
            v85 -= 8;
          }

          while (v85 != -16);
          ++v81;
        }

        while (v81 != v9);
      }
    }

    else
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v41 = *(result + 104);
      v42 = *(result + 144);
      if (*(result + 136))
      {
        if (v41)
        {
          v43 = 0;
          v44 = *(a2 + 152);
          v45 = *(a2 + 160);
          v46 = *(a2 + 240);
          do
          {
            v47 = 0;
            *(v42 + 4 * v43) = *(v46 + 4 * v45 * *(&v147 + 1) + 4 * v44 * v147) > *(a2 + 296);
            do
            {
              v48 = *(&v147 + v47 + 8) + 1;
              *(&v147 + v47 + 8) = v48;
              result = *(v3 + 16 + v47);
              if (v48 != result)
              {
                break;
              }

              *(&v147 + v47 + 8) = 0;
              v47 -= 8;
            }

            while (v47 != -16);
            ++v43;
          }

          while (v43 != v41);
        }
      }

      else if (v41)
      {
        v87 = 0;
        v88 = *(result + 56);
        v89 = *(result + 64);
        v90 = *(a2 + 152);
        v91 = *(a2 + 160);
        v92 = *(a2 + 240);
        do
        {
          result = 0;
          *(v42 + 4 * v89 * *(&v147 + 1) + 4 * v88 * v147) = *(v92 + 4 * v91 * *(&v147 + 1) + 4 * v90 * v147) > *(a2 + 296);
          do
          {
            v93 = *(&v147 + result + 8) + 1;
            *(&v147 + result + 8) = v93;
            if (v93 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v147 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v87;
        }

        while (v87 != v41);
      }
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v13 = 0;
      v14 = &v138;
      v15 = 1;
      do
      {
        v16 = *v14;
        v17 = *(v5 + v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v15 = 0;
        v14 = &v138 + 1;
        v13 = 1;
      }

      while (v16 == v17);
      if (v16 != v17)
      {
        v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v19, " ", 1);
        v20 = MEMORY[0x277D82670];
        v21 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v23 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v24 = *(v3 + 104);
      v25 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v24)
        {
          v26 = 0;
          v28 = *(&v148 + 1);
          v27 = v149;
          v29 = (v149 - *(&v148 + 1)) >> 3;
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = *(a2 + 240);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v27 != v28)
            {
              v31 = v28;
              v32 = v29;
              do
              {
                v33 = *v31++;
                *(&v141 + v33) = 0;
                --v32;
              }

              while (v32);
            }

            v34 = 0;
            v35 = 0;
            v36 = &v141;
            v37 = 1;
            do
            {
              v38 = v37;
              v35 += *(&v159 + v34) * *v36;
              v36 = (&v141 + 8);
              v34 = 1;
              v37 = 0;
            }

            while ((v38 & 1) != 0);
            *(v25 + 4 * v26) = *(v30 + 4 * v35) > *(a2 + 296);
            for (i = 1; i != -1; --i)
            {
              v40 = (v144[i].__locale_ + 1);
              v144[i].__locale_ = v40;
              if (v40 != *(&v138 + i * 8))
              {
                break;
              }

              v144[i].__locale_ = 0;
            }

            ++v26;
          }

          while (v26 != v24);
        }
      }

      else if (v24)
      {
        v94 = 0;
        v96 = *(&v148 + 1);
        v95 = v149;
        v97 = (v149 - *(&v148 + 1)) >> 3;
        if (v97 <= 1)
        {
          v97 = 1;
        }

        v98 = *(v3 + 56);
        v99 = *(v3 + 64);
        v100 = *(a2 + 240);
        do
        {
          locale = v144[0].__locale_;
          v102 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v95 != v96)
          {
            v103 = v96;
            v104 = v97;
            do
            {
              v105 = *v103++;
              *(&v141 + v105) = 0;
              --v104;
            }

            while (v104);
          }

          v106 = 0;
          v107 = 0;
          v108 = &v141;
          v109 = 1;
          do
          {
            v110 = v109;
            v107 += *(&v159 + v106) * *v108;
            v108 = (&v141 + 8);
            v106 = 1;
            v109 = 0;
          }

          while ((v110 & 1) != 0);
          *(v25 + 4 * v102 * v99 + 4 * locale * v98) = *(v100 + 4 * v107) > *(a2 + 296);
          for (j = 1; j != -1; --j)
          {
            v112 = (v144[j].__locale_ + 1);
            v144[j].__locale_ = v112;
            if (v112 != *(&v138 + j * 8))
            {
              break;
            }

            v144[j].__locale_ = 0;
          }

          ++v94;
        }

        while (v94 != v24);
      }
    }

    else
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v49 = 0;
      v50 = &v138;
      v51 = 1;
      do
      {
        v52 = *v50;
        v53 = *(v5 + v49);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v51 = 0;
        v50 = &v138 + 1;
        v49 = 1;
      }

      while (v52 == v53);
      if (v52 != v53)
      {
        v54 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v55 = sub_2621D552C(v54, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v55, " ", 1);
        v56 = MEMORY[0x277D82670];
        v57 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v57, " ", 1);
        sub_2621D552C(v57, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v59 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v60 = *(v3 + 104);
      v61 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v60)
        {
          v62 = 0;
          v64 = *(&v148 + 1);
          v63 = v149;
          v65 = (v149 - *(&v148 + 1)) >> 3;
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = *(a2 + 232);
          v67 = *(a2 + 152);
          v68 = *(a2 + 160);
          v69 = *(a2 + 240);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v63 != v64)
            {
              v70 = v64;
              v71 = v65;
              do
              {
                v72 = *v70++;
                *(&v141 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v141;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v159 + v73) * *v75;
              v75 = (&v141 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            v78 = (v69 + 4 * v74);
            if (!v66)
            {
              v78 = (v69 + 4 * *(&v141 + 1) * v68 + 4 * v141 * v67);
            }

            *(v61 + 4 * v62) = *v78 > *(a2 + 296);
            for (k = 1; k != -1; --k)
            {
              v80 = (v144[k].__locale_ + 1);
              v144[k].__locale_ = v80;
              if (v80 != *(&v138 + k * 8))
              {
                break;
              }

              v144[k].__locale_ = 0;
            }

            ++v62;
          }

          while (v62 != v60);
        }
      }

      else if (v60)
      {
        v113 = 0;
        v115 = *(&v148 + 1);
        v114 = v149;
        v116 = (v149 - *(&v148 + 1)) >> 3;
        if (v116 <= 1)
        {
          v116 = 1;
        }

        v117 = *(v3 + 56);
        v118 = *(v3 + 64);
        v119 = *(a2 + 232);
        v120 = *(a2 + 152);
        v121 = *(a2 + 160);
        v122 = *(a2 + 240);
        do
        {
          v123 = v144[0].__locale_;
          v124 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v114 != v115)
          {
            v125 = v115;
            v126 = v116;
            do
            {
              v127 = *v125++;
              *(&v141 + v127) = 0;
              --v126;
            }

            while (v126);
          }

          v128 = 0;
          v129 = 0;
          v130 = &v141;
          v131 = 1;
          do
          {
            v132 = v131;
            v129 += *(&v159 + v128) * *v130;
            v130 = (&v141 + 8);
            v128 = 1;
            v131 = 0;
          }

          while ((v132 & 1) != 0);
          v133 = v123 * v117;
          v134 = v124 * v118;
          v135 = (v122 + 4 * v129);
          if (!v119)
          {
            v135 = (v122 + 4 * *(&v141 + 1) * v121 + 4 * v141 * v120);
          }

          *(v61 + 4 * v134 + 4 * v133) = *v135 > *(a2 + 296);
          for (m = 1; m != -1; --m)
          {
            v137 = (v144[m].__locale_ + 1);
            v144[m].__locale_ = v137;
            if (v137 != *(&v138 + m * 8))
            {
              break;
            }

            v144[m].__locale_ = 0;
          }

          ++v113;
        }

        while (v113 != v60);
      }
    }

    return sub_2621C57C8(&v147);
  }

  return result;
}

void sub_2621D8C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2621D8C64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v163 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = (a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v5 + v4);
    v9 = *(v6 + v4);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v4 = 1;
  }

  while (v8 == v9);
  if (v8 == v9)
  {
    if (*(a2 + 136))
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 144);
          do
          {
            v13 = *v12++;
            *v11++ = v13;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 144);
        do
        {
          v86 = 0;
          v11[v84 * *(&v148 + 1) + v83 * v148] = *(v85 + 4 * v82);
          do
          {
            v87 = *(&v148 + v86 + 8) + 1;
            *(&v148 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v148 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 56);
          v46 = *(a2 + 64);
          v47 = *(a2 + 144);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = *(v47 + 4 * v46 * *(&v148 + 1) + 4 * v45 * v148);
            do
            {
              v49 = *(&v148 + v48 + 8) + 1;
              *(&v148 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v148 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 56);
        v92 = *(a2 + 64);
        v93 = *(a2 + 144);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v148 + 1) + 4 * v89 * v148) = *(v93 + 4 * v92 * *(&v148 + 1) + 4 * v91 * v148);
          do
          {
            v94 = *(&v148 + result + 8) + 1;
            *(&v148 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v148 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v139 = 0uLL;
      sub_2621D96E4(&v148, v5, v6, &v139);
      v14 = 0;
      v15 = &v139;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v139 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      *&v145[0].__locale_ = 0u;
      v142 = 0u;
      v143 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v149 + 1);
          v28 = v150;
          v30 = (v150 - *(&v149 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 144);
          do
          {
            v142 = *&v145[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v142 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v142;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v160 + v35) * *v37;
              v37 = (&v142 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = *(v31 + 4 * v36);
            for (i = 1; i != -1; --i)
            {
              v41 = (v145[i].__locale_ + 1);
              v145[i].__locale_ = v41;
              if (v41 != *(&v139 + i * 8))
              {
                break;
              }

              v145[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v149 + 1);
        v96 = v150;
        v98 = (v150 - *(&v149 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 144);
        do
        {
          locale = v145[0].__locale_;
          v103 = v145[1].__locale_;
          v142 = *&v145[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v142 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v142;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v160 + v107) * *v109;
            v109 = (&v142 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = *(v101 + 4 * v108);
          for (j = 1; j != -1; --j)
          {
            v113 = (v145[j].__locale_ + 1);
            v145[j].__locale_ = v113;
            if (v113 != *(&v139 + j * 8))
            {
              break;
            }

            v145[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v139 = 0uLL;
      sub_2621D96E4(&v148, v5, v6, &v139);
      v50 = 0;
      v51 = &v139;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v139 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      *&v145[0].__locale_ = 0u;
      v142 = 0u;
      v143 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v149 + 1);
          v64 = v150;
          v66 = (v150 - *(&v149 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 136);
          v68 = *(a2 + 56);
          v69 = *(a2 + 64);
          v70 = *(a2 + 144);
          do
          {
            v142 = *&v145[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v142 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v142;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v160 + v74) * *v76;
              v76 = (&v142 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v142 + 1) * v69 + 4 * v142 * v68);
            }

            *(v62 + 4 * v63) = *v79;
            for (k = 1; k != -1; --k)
            {
              v81 = (v145[k].__locale_ + 1);
              v145[k].__locale_ = v81;
              if (v81 != *(&v139 + k * 8))
              {
                break;
              }

              v145[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v149 + 1);
        v115 = v150;
        v117 = (v150 - *(&v149 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 136);
        v121 = *(a2 + 56);
        v122 = *(a2 + 64);
        v123 = *(a2 + 144);
        do
        {
          v124 = v145[0].__locale_;
          v125 = v145[1].__locale_;
          v142 = *&v145[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v142 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v142;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v160 + v129) * *v131;
            v131 = (&v142 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v142 + 1) * v122 + 4 * v142 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = *v136;
          for (m = 1; m != -1; --m)
          {
            v138 = (v145[m].__locale_ + 1);
            v145[m].__locale_ = v138;
            if (v138 != *(&v139 + m * 8))
            {
              break;
            }

            v145[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    return sub_2621C57C8(&v148);
  }

  return result;
}

void sub_2621D96B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2621D96E4(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[2];
  *(a1 + 64) = a2[1];
  *(a1 + 80) = v9;
  *(a1 + 48) = v8;
  v10 = *a3;
  v11 = a3[2];
  *(a1 + 112) = a3[1];
  *(a1 + 128) = v11;
  *(a1 + 96) = v10;
  v12 = 1;
  v13 = MEMORY[0x277D82670];
  v14 = MEMORY[0x277D82680];
  do
  {
    v15 = *(a2 + v12);
    v16 = *(a3 + v12);
    if (v15 == v16)
    {
      *(a4 + 8 * v12) = v15;
      goto LABEL_10;
    }

    if (v15 == 1)
    {
      v26.__locale_ = v12;
      sub_2621C9004(a1, &v26);
      v17 = *(a3 + v12);
LABEL_8:
      *(a4 + 8 * v12) = v17;
      goto LABEL_10;
    }

    if (v16 == 1)
    {
      v26.__locale_ = v12;
      sub_2621C9004(a1 + 24, &v26);
      v17 = *(a2 + v12);
      goto LABEL_8;
    }

    v18 = sub_2621D552C(v13, "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/broadcast_helper.hpp", 119);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 135);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init_internal", 13);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v26, v14);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D995C("err", "cannot broadcast");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v25 = std::locale::use_facet(&v26, v14);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
LABEL_10:
    --v12;
  }

  while (v12 != -1);
  *(a1 + 144) = *(a1 + 56);
  *(a1 + 152) = 1;
  *(a1 + 192) = *(a1 + 104);
  *(a1 + 200) = 1;
}

uint64_t sub_2621D995C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v5, " ", 1);

  return sub_2621D99BC(a2);
}

uint64_t sub_2621D99BC(const char *a1)
{
  v2 = strlen(a1);
  v3 = sub_2621D552C(MEMORY[0x277D82670], a1, v2);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  return std::ostream::flush();
}

BOOL sub_2621D9A90(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(a1 + 8 * v2);
    v5 = *(a2 + 8 * v2);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while (v4 == v5);
  if (v4 != v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *(a1 + 48 + 8 * v6);
    v9 = *(a2 + 48 + 8 * v6);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
  }

  while (v8 == v9);
  return v8 == v9 && *(a1 + 104) == *(a2 + 104) && *(a1 + 96) == *(a2 + 96);
}

void sub_2621D9B1C(void *a1)
{
  *a1 = &unk_2874EEB10;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2621D9B88(void *a1)
{
  *a1 = &unk_2874EEB10;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_2621D9BD4(uint64_t a1, uint64_t a2, signed int *a3, unsigned int *a4)
{
  sub_2621D7514(a1, a2, 0, *a3, a3[1], a3[2]);
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];

  return sub_2621D7514(a1, a2, 1u, v7, v8, v9);
}

uint64_t sub_2621D9C38(uint64_t a1, int *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  memset(v29, 0, sizeof(v29));
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7630;
      v19 = xmmword_2623A7620;
      v20 = (v15 + 8);
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v20 - 2) = v13;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v20 - 1) = v13;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
        {
          *v20 = v13;
          v20[1] = v13;
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 += 4;
        v16 -= 4;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    v23 = 0;
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    do
    {
      v26 = 0;
      *(v15 + 4 * v25 * *(&v29[0] + 1) + 4 * v24 * *&v29[0]) = v13;
      do
      {
        v27 = *(v29 + v26 + 8) + 1;
        *(v29 + v26 + 8) = v27;
        if (v27 != *(a1 + 16 + v26))
        {
          break;
        }

        *(v29 + v26 + 8) = 0;
        v26 -= 8;
      }

      while (v26 != -16);
      ++v23;
    }

    while (v23 != v14);
  }

  return a1;
}

void sub_2621D9F60(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2621CBF10(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_2621DA030(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_intValue(a2, v5, v6);
  v10 = objc_msgSend_intValue(v4, v8, v9);
  if (v7 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v7 > v10;
  }

  return v11;
}

std::string *sub_2621DA094(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2621DA0DC(a1, __s, v4);
}

std::string *sub_2621DA0DC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

uint64_t sub_2621DA198(const char *a1, const char *a2, void *a3, const char *a4, void *a5, const char *a6, uint64_t *a7)
{
  v14 = strlen(a1);
  v15 = MEMORY[0x277D82670];
  v16 = sub_2621D552C(MEMORY[0x277D82670], a1, v14);
  sub_2621D552C(v16, " ", 1);
  v17 = strlen(a2);
  v18 = sub_2621D552C(v15, a2, v17);
  v19 = sub_2621D552C(v18, " ", 1);
  v20 = MEMORY[0x266727270](v19, *a3);
  sub_2621D552C(v20, " ", 1);
  v21 = strlen(a4);
  v22 = sub_2621D552C(v15, a4, v21);
  v23 = sub_2621D552C(v22, " ", 1);
  v24 = MEMORY[0x266727270](v23, *a5);
  sub_2621D552C(v24, " ", 1);
  v25 = strlen(a6);
  v26 = sub_2621D552C(v15, a6, v25);
  sub_2621D552C(v26, " ", 1);
  v27 = *a7;

  return sub_2621D5D6C(v27);
}

os_log_t sub_2621DA2C0()
{
  result = os_log_create("com.apple.RoomScanCore", "RoomScanCore");
  qword_27FF0C058 = result;
  return result;
}

os_log_t sub_2621DA2F0()
{
  result = os_log_create("com.apple.RoomScanCore", "LcnnDetector");
  qword_27FF0C068 = result;
  return result;
}

os_log_t sub_2621DA320()
{
  result = os_log_create("com.apple.RoomScanCore", "DoorWindow");
  qword_27FF0C078 = result;
  return result;
}

os_log_t sub_2621DA350()
{
  result = os_log_create("com.apple.RoomScanCore", "OnlineFloorPlan");
  qword_27FF0C088 = result;
  return result;
}

os_log_t sub_2621DA380()
{
  result = os_log_create("com.apple.RoomScanCore", "OfflineFloorPlan");
  qword_27FF0C098 = result;
  return result;
}

os_log_t sub_2621DA3B0()
{
  result = os_log_create("com.apple.RoomScanCore", "RSCaptureSession");
  qword_27FF0C0A8 = result;
  return result;
}

os_log_t sub_2621DA3E0()
{
  result = os_log_create("com.apple.RoomScanCore", "RSGenerationSession");
  qword_27FF0C0B8 = result;
  return result;
}

os_log_t sub_2621DA410()
{
  result = os_log_create("com.apple.RoomScanCore", "BoundaryRefinement");
  qword_27FF0C0C8 = result;
  return result;
}

os_log_t sub_2621DA440()
{
  result = os_log_create("com.apple.RoomScanCore", "RoomType");
  qword_27FF0C0D8 = result;
  return result;
}

void sub_2621DA470(void *a1, int32x2_t *a2, int32x2_t *a3, char *a4, double a5, double a6, int32x2_t a7, __n128 a8)
{
  if (a2 != a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_2621CBEC8(1uLL);
  }
}

void sub_2621DAA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (v17)
  {
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DAA58(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void sub_2621DAB8C(unint64_t result, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 6;
  v9 = result;
  while (1)
  {
    result = v9;
    v10 = a2 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          sub_2621DB7EC(v9, (v9 + 24), (a2 - 24));
          return;
        case 4:
          sub_2621DB7EC(v9, (v9 + 24), (v9 + 48));
          v70 = *(v9 + 48);
          v71 = *v8 < v70;
          if (*v8 == v70)
          {
            v72 = *(a2 - 4);
            v73 = *(v9 + 56);
            v71 = v72 < v73;
            if (v72 == v73)
            {
              v71 = *(a2 - 3) < *(v9 + 60);
            }
          }

          if (v71)
          {
            v74 = *(v9 + 48);
            v75 = *(v9 + 64);
            v76 = *(a2 - 1);
            *(v9 + 48) = *v8;
            *(v9 + 64) = v76;
            *(a2 - 1) = v75;
            *v8 = v74;
            LODWORD(v75) = *(v9 + 48);
            LODWORD(v76) = *(v9 + 24);
            v77 = v75 < v76;
            if (v75 == v76)
            {
              v78 = *(v9 + 56);
              v79 = *(v9 + 32);
              v77 = v78 < v79;
              if (v78 == v79)
              {
                v77 = *(v9 + 60) < *(v9 + 36);
              }
            }

            if (v77)
            {
              v80 = *(v9 + 40);
              v81 = *(v9 + 24);
              *(v9 + 24) = *(v9 + 48);
              *(v9 + 40) = *(v9 + 64);
              *(v9 + 48) = v81;
              *(v9 + 64) = v80;
              LODWORD(v80) = *(v9 + 24);
              v82 = v80 < *v9;
              if (v80 == *v9)
              {
                v83 = *(v9 + 32);
                v84 = *(v9 + 8);
                v82 = v83 < v84;
                if (v83 == v84)
                {
                  v82 = *(v9 + 36) < *(v9 + 12);
                }
              }

              if (v82)
              {
                v185 = *(v9 + 16);
                v179 = *v9;
                *v9 = *(v9 + 24);
                *(v9 + 16) = *(v9 + 40);
                *(v9 + 24) = v179;
                *(v9 + 40) = v185;
              }
            }
          }

          return;
        case 5:

          sub_2621DB980(v9, v9 + 24, v9 + 48, v9 + 72, a2 - 24);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v66 = *v8 < *v9;
        if (*v8 == *v9)
        {
          v67 = *(a2 - 4);
          v68 = *(v9 + 8);
          v66 = v67 < v68;
          if (v67 == v68)
          {
            v66 = *(a2 - 3) < *(v9 + 12);
          }
        }

        if (v66)
        {
          v184 = *(v9 + 16);
          v178 = *v9;
          v69 = *v8;
          *(v9 + 16) = *(a2 - 1);
          *v9 = v69;
          *(a2 - 1) = v184;
          *v8 = v178;
        }

        return;
      }
    }

    if (v10 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v104 = (v11 - 2) >> 1;
      v105 = v104;
      while (1)
      {
        v106 = v105;
        if (v104 >= v105)
        {
          v107 = (2 * v105) | 1;
          v108 = v9 + 24 * v107;
          if (2 * v106 + 2 < v11)
          {
            v109 = *(v108 + 24);
            v110 = *v108 < v109;
            if (*v108 == v109)
            {
              v111 = *(v108 + 8);
              v112 = *(v108 + 32);
              v110 = v111 < v112;
              if (v111 == v112)
              {
                v110 = *(v108 + 12) < *(v108 + 36);
              }
            }

            if (v110)
            {
              v108 += 24;
              v107 = 2 * v106 + 2;
            }
          }

          v113 = v9 + 24 * v106;
          v114 = *v113;
          if (*v108 == *v113)
          {
            v115 = *(v108 + 8);
            v116 = *(v113 + 8);
            v117 = v115 < v116;
            if (v115 == v116)
            {
              v116 = *(v108 + 8);
              v117 = *(v108 + 12) < *(v113 + 12);
            }

            if (!v117)
            {
              goto LABEL_186;
            }
          }

          else if (*v108 >= v114)
          {
            v116 = *(v113 + 8);
LABEL_186:
            v118 = *(v113 + 4);
            v119 = *(v113 + 12);
            v120 = *(v113 + 16);
            v121 = *(v108 + 16);
            *v113 = *v108;
            *(v113 + 16) = v121;
            while (1)
            {
              if (v104 < v107)
              {
                goto LABEL_201;
              }

              v122 = v108;
              v123 = 2 * v107;
              v107 = (2 * v107) | 1;
              v108 = v9 + 24 * v107;
              v124 = v123 + 2;
              if (v124 < v11)
              {
                v125 = *(v108 + 24);
                v126 = *v108 < v125;
                if (*v108 == v125)
                {
                  v127 = *(v108 + 8);
                  v128 = *(v108 + 32);
                  v126 = v127 < v128;
                  if (v127 == v128)
                  {
                    v126 = *(v108 + 12) < *(v108 + 36);
                  }
                }

                if (v126)
                {
                  v108 += 24;
                  v107 = v124;
                }
              }

              v129 = *v108 < v114;
              if (*v108 == v114)
              {
                v130 = *(v108 + 8);
                v129 = v130 < v116;
                if (v130 == v116)
                {
                  v129 = *(v108 + 12) < v119;
                }
              }

              if (v129)
              {
                break;
              }

              v131 = *v108;
              *(v122 + 16) = *(v108 + 16);
              *v122 = v131;
            }

            v108 = v122;
LABEL_201:
            *v108 = v114;
            *(v108 + 4) = v118;
            *(v108 + 8) = v116;
            *(v108 + 12) = v119;
            *(v108 + 16) = v120;
          }
        }

        v105 = v106 - 1;
        if (!v106)
        {
          v132 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
          while (1)
          {
            v133 = 0;
            v186 = *(v9 + 16);
            v180 = *v9;
            v134 = v9;
            do
            {
              v135 = v134;
              v136 = v134 + 6 * v133;
              v134 = (v136 + 6);
              v137 = 2 * v133;
              v133 = (2 * v133) | 1;
              v138 = v137 + 2;
              if (v138 < v132)
              {
                v139 = v136[12];
                v140 = v136[6];
                v141 = v140 < v139;
                if (v140 == v139)
                {
                  v142 = v136[8];
                  v143 = v136[14];
                  v141 = v142 < v143;
                  if (v142 == v143)
                  {
                    v141 = v136[9] < v136[15];
                  }
                }

                if (v141)
                {
                  v134 = (v136 + 12);
                  v133 = v138;
                }
              }

              v144 = *v134;
              *(v135 + 2) = *(v134 + 2);
              *v135 = v144;
            }

            while (v133 <= ((v132 - 2) >> 1));
            a2 = (a2 - 24);
            if (v134 == a2)
            {
              *(v134 + 2) = v186;
              *v134 = v180;
            }

            else
            {
              v145 = *a2;
              *(v134 + 2) = *(a2 + 2);
              *v134 = v145;
              *(a2 + 2) = v186;
              *a2 = v180;
              v146 = v134 - v9 + 24;
              if (v146 >= 25)
              {
                v147 = 0xAAAAAAAAAAAAAAABLL * (v146 >> 3) - 2;
                v148 = v147 >> 1;
                v149 = v9 + 24 * (v147 >> 1);
                v150 = *v134;
                if (*v149 == *v134)
                {
                  v151 = *(v149 + 8);
                  v152 = *(v134 + 2);
                  v153 = v151 < v152;
                  if (v151 == v152)
                  {
                    v152 = *(v149 + 8);
                    v153 = *(v149 + 12) < *(v134 + 3);
                  }

                  if (v153)
                  {
                    goto LABEL_223;
                  }
                }

                else if (*v149 < v150)
                {
                  v152 = *(v134 + 2);
LABEL_223:
                  v154 = *(v134 + 1);
                  v155 = *(v134 + 3);
                  v156 = *(v134 + 2);
                  v157 = *(v149 + 16);
                  *v134 = *v149;
                  *(v134 + 2) = v157;
                  if (v147 >= 2)
                  {
                    while (1)
                    {
                      v158 = v149;
                      v159 = v148 - 1;
                      v148 = (v148 - 1) >> 1;
                      v149 = v9 + 24 * v148;
                      v160 = *v149 < v150;
                      if (*v149 == v150)
                      {
                        v161 = *(v149 + 8);
                        v160 = v161 < v152;
                        if (v161 == v152)
                        {
                          v160 = *(v149 + 12) < v155;
                        }
                      }

                      if (!v160)
                      {
                        break;
                      }

                      v162 = *v149;
                      *(v158 + 16) = *(v149 + 16);
                      *v158 = v162;
                      if (v159 <= 1)
                      {
                        goto LABEL_230;
                      }
                    }

                    v149 = v158;
                  }

LABEL_230:
                  *v149 = v150;
                  *(v149 + 4) = v154;
                  *(v149 + 8) = v152;
                  *(v149 + 12) = v155;
                  *(v149 + 16) = v156;
                }
              }
            }

            v27 = v132-- <= 2;
            if (v27)
            {
              return;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = v9 + 24 * (v11 >> 1);
    if (v10 < 0xC01)
    {
      sub_2621DB7EC((result + 24 * v12), result, (a2 - 24));
    }

    else
    {
      sub_2621DB7EC(result, (result + 24 * v12), (a2 - 24));
      v14 = 3 * v12;
      v15 = (result + 24 * v12 - 24);
      sub_2621DB7EC((result + 24), v15, a2 - 3);
      v16 = (result + 24 + 8 * v14);
      sub_2621DB7EC((result + 48), v16, (a2 - 72));
      sub_2621DB7EC(v15, v13, v16);
      v181 = *(result + 16);
      v175 = *result;
      v17 = *(v13 + 16);
      *result = *v13;
      *(result + 16) = v17;
      *(v13 + 16) = v181;
      *v13 = v175;
    }

    --a3;
    v18 = *result;
    if (a4)
    {
      goto LABEL_22;
    }

    v19 = *(result - 24);
    if (v19 == v18)
    {
      v20 = *(result - 16);
      v21 = *(result + 8);
      if (v20 != v21)
      {
        if (v20 >= v21)
        {
          goto LABEL_70;
        }

        goto LABEL_22;
      }

      if (*(result - 12) < *(result + 12))
      {
        goto LABEL_22;
      }

      v21 = *(result - 16);
LABEL_70:
      v44 = *(result + 12);
      v45 = *v8;
      v46 = v18 < *v8;
      if (v18 == *v8)
      {
        v47 = *(a2 - 4);
        v46 = v21 < v47;
        if (v21 == v47)
        {
          v46 = v44 < *(a2 - 3);
        }
      }

      v9 = result + 24;
      if (v46)
      {
        while (1)
        {
          v48 = v18 < *v9;
          if (v18 == *v9)
          {
            v49 = *(v9 + 8);
            v48 = v21 < v49;
            if (v21 == v49)
            {
              v48 = v44 < *(v9 + 12);
            }
          }

          if (v48)
          {
            break;
          }

          v9 += 24;
        }
      }

      else
      {
        while (v9 < a2)
        {
          v50 = v18 < *v9;
          if (v18 == *v9)
          {
            v51 = *(v9 + 8);
            v50 = v21 < v51;
            if (v21 == v51)
            {
              v50 = v44 < *(v9 + 12);
            }
          }

          if (v50)
          {
            break;
          }

          v9 += 24;
        }
      }

      v52 = *(result + 4);
      v53 = *(result + 16);
      i = a2;
      if (v9 < a2)
      {
        for (i = a2 - 24; ; i -= 24)
        {
          v55 = v18 < v45;
          if (v18 == v45)
          {
            v56 = *(i + 8);
            v55 = v21 < v56;
            if (v21 == v56)
            {
              v55 = v44 < *(i + 12);
            }
          }

          if (!v55)
          {
            break;
          }

          v57 = *(i - 24);
          v45 = v57;
        }
      }

      while (v9 < i)
      {
        v183 = *(v9 + 16);
        v177 = *v9;
        v58 = *i;
        *(v9 + 16) = *(i + 16);
        *v9 = v58;
        *(i + 16) = v183;
        *i = v177;
        do
        {
          v59 = *(v9 + 24);
          v9 += 24;
          v60 = v18 < v59;
          if (v18 == v59)
          {
            v61 = *(v9 + 8);
            v60 = v21 < v61;
            if (v21 == v61)
            {
              v60 = v44 < *(v9 + 12);
            }
          }
        }

        while (!v60);
        do
        {
          v62 = *(i - 24);
          i -= 24;
          v63 = v18 < v62;
          if (v18 == v62)
          {
            v64 = *(i + 8);
            v63 = v21 < v64;
            if (v21 == v64)
            {
              v63 = v44 < *(i + 12);
            }
          }
        }

        while (v63);
      }

      if (v9 - 24 != result)
      {
        v65 = *(v9 - 24);
        *(result + 16) = *(v9 - 8);
        *result = v65;
      }

      a4 = 0;
      *(v9 - 24) = v18;
      *(v9 - 20) = v52;
      *(v9 - 16) = v21;
      *(v9 - 12) = v44;
      *(v9 - 8) = v53;
    }

    else
    {
      if (v19 >= v18)
      {
        v21 = *(result + 8);
        goto LABEL_70;
      }

LABEL_22:
      v22 = *(result + 4);
      v23 = *(result + 8);
      v24 = *(result + 12);
      v25 = (result + 24);
      v26 = *(result + 16);
      while (1)
      {
        v27 = *v25 < v18;
        if (*v25 == v18)
        {
          v28 = v25[2];
          v27 = v28 < v23;
          if (v28 == v23)
          {
            v27 = v25[3] < v24;
          }
        }

        if (!v27)
        {
          break;
        }

        v25 += 6;
      }

      j = a2 - 6;
      if (v25 - 6 == result)
      {
        j = a2;
        if (v25 < a2)
        {
          for (j = a2 - 6; ; j -= 6)
          {
            if (*j == v18)
            {
              v32 = j[2];
              if (v32 == v23)
              {
                if (v25 >= j || j[3] < v24)
                {
                  break;
                }
              }

              else if (v25 >= j || v32 < v23)
              {
                break;
              }
            }

            else if (*j < v18 || v25 >= j)
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v30 = *j < v18;
          if (*j == v18)
          {
            v31 = j[2];
            v30 = v31 < v23;
            if (v31 == v23)
            {
              v30 = j[3] < v24;
            }
          }

          if (v30)
          {
            break;
          }

          j -= 6;
        }
      }

      v9 = v25;
      if (v25 < j)
      {
        v9 = v25;
        v34 = j;
        do
        {
          v182 = *(v9 + 16);
          v176 = *v9;
          v35 = *v34;
          *(v9 + 16) = *(v34 + 2);
          *v9 = v35;
          *(v34 + 2) = v182;
          *v34 = v176;
          do
          {
            v36 = *(v9 + 24);
            v9 += 24;
            v37 = v36 < v18;
            if (v36 == v18)
            {
              v38 = *(v9 + 8);
              v37 = v38 < v23;
              if (v38 == v23)
              {
                v37 = *(v9 + 12) < v24;
              }
            }
          }

          while (v37);
          do
          {
            v39 = *(v34 - 6);
            v34 -= 6;
            v40 = v39 < v18;
            if (v39 == v18)
            {
              v41 = v34[2];
              v40 = v41 < v23;
              if (v41 == v23)
              {
                v40 = v34[3] < v24;
              }
            }
          }

          while (!v40);
        }

        while (v9 < v34);
      }

      if (v9 - 24 != result)
      {
        v42 = *(v9 - 24);
        *(result + 16) = *(v9 - 8);
        *result = v42;
      }

      *(v9 - 24) = v18;
      *(v9 - 20) = v22;
      *(v9 - 16) = v23;
      *(v9 - 12) = v24;
      *(v9 - 8) = v26;
      if (v25 < j)
      {
LABEL_69:
        sub_2621DAB8C(result, v9 - 24, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v43 = sub_2621DBBFC(result, v9 - 24);
        if (sub_2621DBBFC(v9, a2))
        {
          a2 = (v9 - 24);
          if (v43)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v43)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v85 = v9 + 24;
  v87 = v9 == a2 || v85 == a2;
  if ((a4 & 1) == 0)
  {
    if (v87)
    {
      return;
    }

    while (1)
    {
      v163 = result;
      result = v85;
      v164 = *(v163 + 24);
      if (v164 == *v163)
      {
        break;
      }

      if (v164 < *v163)
      {
        v165 = *(v163 + 32);
LABEL_242:
        v168 = *(v163 + 28);
        v169 = *(v163 + 36);
        v170 = *(v163 + 40);
        do
        {
          v171 = v163;
          *(v163 + 24) = *v163;
          *(v163 + 40) = *(v163 + 16);
          v172 = *(v163 - 24);
          v163 -= 24;
          v173 = v164 < v172;
          if (v164 == v172)
          {
            v174 = *(v171 - 16);
            v173 = v165 < v174;
            if (v165 == v174)
            {
              v173 = v169 < *(v171 - 12);
            }
          }
        }

        while (v173);
        *v171 = v164;
        *(v171 + 4) = v168;
        *(v171 + 8) = v165;
        *(v171 + 12) = v169;
        *(v171 + 16) = v170;
      }

LABEL_248:
      v85 = result + 24;
      if ((result + 24) == a2)
      {
        return;
      }
    }

    v165 = *(v163 + 32);
    v166 = *(v163 + 8);
    v167 = v165 < v166;
    if (v165 == v166)
    {
      v167 = *(v163 + 36) < *(v163 + 12);
    }

    if (!v167)
    {
      goto LABEL_248;
    }

    goto LABEL_242;
  }

  if (v87)
  {
    return;
  }

  v88 = 0;
  v89 = v9;
  while (2)
  {
    v90 = v89;
    v89 = v85;
    v91 = *(v90 + 24);
    if (v91 == *v90)
    {
      v92 = *(v90 + 32);
      v93 = *(v90 + 8);
      v94 = v92 < v93;
      if (v92 == v93)
      {
        v94 = *(v90 + 36) < *(v90 + 12);
      }

      if (!v94)
      {
        goto LABEL_166;
      }
    }

    else
    {
      if (v91 >= *v90)
      {
        goto LABEL_166;
      }

      v92 = *(v90 + 32);
    }

    v95 = *(v90 + 28);
    v96 = *(v90 + 36);
    v97 = *(v90 + 40);
    *v89 = *v90;
    *(v89 + 16) = *(v90 + 16);
    v98 = v9;
    if (v90 == v9)
    {
      goto LABEL_165;
    }

    v99 = v88;
    while (2)
    {
      v100 = v9 + v99;
      v101 = *(v9 + v99 - 24);
      v102 = v91 < v101;
      if (v91 == v101)
      {
        v103 = *(v100 - 16);
        if (v92 == v103)
        {
          v102 = v96 < *(v9 + v99 - 12);
          goto LABEL_159;
        }

        if (v92 >= v103)
        {
          v98 = v9 + v99;
          goto LABEL_165;
        }
      }

      else
      {
LABEL_159:
        if (!v102)
        {
          v98 = v90;
          goto LABEL_165;
        }
      }

      v90 -= 24;
      *v100 = *(v9 + v99 - 24);
      *(v100 + 16) = *(v9 + v99 - 8);
      v99 -= 24;
      if (v99)
      {
        continue;
      }

      break;
    }

    v98 = v9;
LABEL_165:
    *v98 = v91;
    *(v98 + 4) = v95;
    *(v98 + 8) = v92;
    *(v98 + 12) = v96;
    *(v98 + 16) = v97;
LABEL_166:
    v85 = v89 + 24;
    v88 += 24;
    if ((v89 + 24) != a2)
    {
      continue;
    }

    break;
  }
}

__int128 *sub_2621DB7EC(__int128 *result, int *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a2 < *result;
  if (*a2 == *result)
  {
    v5 = a2[2];
    v6 = *(result + 2);
    v4 = v5 < v6;
    if (v5 == v6)
    {
      v4 = a2[3] < *(result + 3);
    }
  }

  if (!v4)
  {
    v13 = *a3 < v3;
    if (*a3 == v3)
    {
      v14 = *(a3 + 2);
      v15 = a2[2];
      v13 = v14 < v15;
      if (v14 == v15)
      {
        v13 = *(a3 + 3) < a2[3];
      }
    }

    if (v13)
    {
      v16 = *(a2 + 2);
      v17 = *a2;
      v18 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v18;
      *a3 = v17;
      *(a3 + 2) = v16;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v20 = a2[2];
        v21 = *(result + 2);
        v19 = v20 < v21;
        if (v20 == v21)
        {
          v19 = a2[3] < *(result + 3);
        }
      }

      if (v19)
      {
        v22 = *(result + 2);
        v23 = *result;
        v24 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v24;
        *a2 = v23;
        *(a2 + 2) = v22;
      }
    }

    return result;
  }

  v7 = *a3 < v3;
  if (*a3 == v3)
  {
    v8 = *(a3 + 2);
    v9 = a2[2];
    v7 = v8 < v9;
    if (v8 == v9)
    {
      v7 = *(a3 + 3) < a2[3];
    }
  }

  if (v7)
  {
    v10 = *(result + 2);
    v11 = *result;
    v12 = *(a3 + 2);
    *result = *a3;
    *(result + 2) = v12;
LABEL_29:
    *a3 = v11;
    *(a3 + 2) = v10;
    return result;
  }

  v25 = *(result + 2);
  v26 = *result;
  v27 = *(a2 + 2);
  *result = *a2;
  *(result + 2) = v27;
  *a2 = v26;
  *(a2 + 2) = v25;
  v28 = *a3 < *a2;
  if (*a3 == *a2)
  {
    v29 = *(a3 + 2);
    v30 = a2[2];
    v28 = v29 < v30;
    if (v29 == v30)
    {
      v28 = *(a3 + 3) < a2[3];
    }
  }

  if (v28)
  {
    v10 = *(a2 + 2);
    v11 = *a2;
    v31 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v31;
    goto LABEL_29;
  }

  return result;
}

__n128 sub_2621DB980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2621DB7EC(a1, a2, a3);
  v11 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v12 = *(a4 + 8);
    v13 = *(a3 + 8);
    v11 = v12 < v13;
    if (v12 == v13)
    {
      v11 = *(a4 + 12) < *(a3 + 12);
    }
  }

  if (v11)
  {
    v14 = *(a3 + 16);
    result = *a3;
    v15 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = result;
    *(a4 + 16) = v14;
    v16 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = *(a3 + 8);
      v18 = *(a2 + 8);
      v16 = v17 < v18;
      if (v17 == v18)
      {
        v16 = *(a3 + 12) < *(a2 + 12);
      }
    }

    if (v16)
    {
      v19 = *(a2 + 16);
      result = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = result;
      *(a3 + 16) = v19;
      v21 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v22 = *(a2 + 8);
        v23 = *(a1 + 8);
        v21 = v22 < v23;
        if (v22 == v23)
        {
          v21 = *(a2 + 12) < *(a1 + 12);
        }
      }

      if (v21)
      {
        v24 = *(a1 + 16);
        result = *a1;
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = result;
        *(a2 + 16) = v24;
      }
    }
  }

  v26 = *a5 < *a4;
  if (*a5 == *a4)
  {
    v27 = *(a5 + 8);
    v28 = *(a4 + 8);
    v26 = v27 < v28;
    if (v27 == v28)
    {
      v26 = *(a5 + 12) < *(a4 + 12);
    }
  }

  if (v26)
  {
    v29 = *(a4 + 16);
    result = *a4;
    v30 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v30;
    *a5 = result;
    *(a5 + 16) = v29;
    v31 = *a4 < *a3;
    if (*a4 == *a3)
    {
      v32 = *(a4 + 8);
      v33 = *(a3 + 8);
      v31 = v32 < v33;
      if (v32 == v33)
      {
        v31 = *(a4 + 12) < *(a3 + 12);
      }
    }

    if (v31)
    {
      v34 = *(a3 + 16);
      result = *a3;
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      *a4 = result;
      *(a4 + 16) = v34;
      v36 = *a3 < *a2;
      if (*a3 == *a2)
      {
        v37 = *(a3 + 8);
        v38 = *(a2 + 8);
        v36 = v37 < v38;
        if (v37 == v38)
        {
          v36 = *(a3 + 12) < *(a2 + 12);
        }
      }

      if (v36)
      {
        v39 = *(a2 + 16);
        result = *a2;
        v40 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v40;
        *a3 = result;
        *(a3 + 16) = v39;
        v41 = *a2 < *a1;
        if (*a2 == *a1)
        {
          v42 = *(a2 + 8);
          v43 = *(a1 + 8);
          v41 = v42 < v43;
          if (v42 == v43)
          {
            v41 = *(a2 + 12) < *(a1 + 12);
          }
        }

        if (v41)
        {
          v44 = *(a1 + 16);
          result = *a1;
          v45 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v45;
          *a2 = result;
          *(a2 + 16) = v44;
        }
      }
    }
  }

  return result;
}

BOOL sub_2621DBBFC(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2621DB7EC(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        sub_2621DB7EC(a1, (a1 + 24), (a1 + 48));
        v27 = (a2 - 24);
        v28 = *(a2 - 24);
        v29 = *(a1 + 48);
        v30 = v28 < v29;
        if (v28 == v29)
        {
          v31 = *(a2 - 16);
          v32 = *(a1 + 56);
          v30 = v31 < v32;
          if (v31 == v32)
          {
            v30 = *(a2 - 12) < *(a1 + 60);
          }
        }

        if (v30)
        {
          v33 = *(a1 + 64);
          v34 = *(a1 + 48);
          v35 = *(a2 - 8);
          *(a1 + 48) = *v27;
          *(a1 + 64) = v35;
          *v27 = v34;
          *(a2 - 8) = v33;
          v36 = *(a1 + 48);
          LODWORD(v33) = *(a1 + 24);
          v37 = v36 < v33;
          if (v36 == v33)
          {
            v38 = *(a1 + 56);
            v39 = *(a1 + 32);
            v37 = v38 < v39;
            if (v38 == v39)
            {
              v37 = *(a1 + 60) < *(a1 + 36);
            }
          }

          if (v37)
          {
            v40 = *(a1 + 40);
            v41 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v41;
            *(a1 + 64) = v40;
            LODWORD(v40) = *(a1 + 24);
            v42 = v40 < *a1;
            if (v40 == *a1)
            {
              v43 = *(a1 + 32);
              v44 = *(a1 + 8);
              v42 = v43 < v44;
              if (v43 == v44)
              {
                v42 = *(a1 + 36) < *(a1 + 12);
              }
            }

            if (v42)
            {
              v45 = *(a1 + 16);
              v46 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v46;
              *(a1 + 40) = v45;
            }
          }
        }

        return 1;
      case 5:
        sub_2621DB980(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 24);
      v6 = *(a2 - 24);
      v7 = v6 < *a1;
      if (v6 == *a1)
      {
        v8 = *(a2 - 16);
        v9 = *(a1 + 8);
        v7 = v8 < v9;
        if (v8 == v9)
        {
          v7 = *(a2 - 12) < *(a1 + 12);
        }
      }

      if (v7)
      {
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = *(a2 - 8);
        *a1 = *v5;
        *(a1 + 16) = v12;
        *v5 = v11;
        *(a2 - 8) = v10;
      }

      return 1;
    }
  }

  v13 = a1 + 48;
  sub_2621DB7EC(a1, (a1 + 24), (a1 + 48));
  v14 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *v14;
    if (*v14 == *v13)
    {
      v18 = *(v14 + 8);
      v19 = *(v13 + 8);
      if (v18 == v19)
      {
        if (*(v14 + 12) >= *(v13 + 12))
        {
          goto LABEL_35;
        }
      }

      else if (v18 >= v19)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v17 >= *v13)
      {
        goto LABEL_35;
      }

      v18 = *(v14 + 8);
    }

    v20 = *(v14 + 4);
    v21 = *(v14 + 12);
    v22 = *(v14 + 16);
    *v14 = *v13;
    *(v14 + 16) = *(v13 + 16);
    v23 = v15;
    do
    {
      v24 = *(a1 + v23 + 24);
      v25 = v17 < v24;
      if (v17 != v24)
      {
        goto LABEL_28;
      }

      v26 = *(a1 + v23 + 32);
      if (v18 == v26)
      {
        v25 = v21 < *(a1 + v23 + 36);
LABEL_28:
        if (!v25)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (v18 >= v26)
      {
        v13 = a1 + v23 + 48;
        goto LABEL_34;
      }

LABEL_32:
      v13 -= 24;
      *(a1 + v23 + 48) = *(a1 + v23 + 24);
      *(a1 + v23 + 64) = *(a1 + v23 + 40);
      v23 -= 24;
    }

    while (v23 != -48);
    v13 = a1;
LABEL_34:
    *v13 = v17;
    *(v13 + 4) = v20;
    *(v13 + 8) = v18;
    *(v13 + 12) = v21;
    ++v16;
    *(v13 + 16) = v22;
    if (v16 != 8)
    {
LABEL_35:
      v13 = v14;
      v15 += 24;
      v14 += 24;
      if (v14 == a2)
      {
        return 1;
      }

      continue;
    }

    return v14 + 24 == a2;
  }
}

void sub_2621DBF40(double a1, double a2, double a3, double a4)
{
  *&v12 = *MEMORY[0x277D85DE8];
  *&v5 = a1;
  *(&v5 + 1) = a3;
  v6 = a1;
  v7 = a4;
  v8 = a2;
  v9 = a3;
  v10 = a2;
  v11 = a4;
  memset(v4, 0, sizeof(v4));
  sub_2621DC054(v4, &v5, &v12, 4uLL);
}

void sub_2621DC0A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DC0C4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2621CBF10(a2);
  }

  sub_2621CBEB0();
}

uint64_t *sub_2621DC104(uint64_t *result, float32x2_t *a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v3 = 0;
    v4 = result[1];
    v5 = &v30;
    v29 = *result;
    v30 = v4;
    v6 = a2[1];
    v31 = *a2;
    v32 = v6;
    v33 = v29;
    v34 = v31;
    v35 = v29;
    v36 = v6;
    v37 = v4;
    v38 = v31;
    v39 = v4;
    v40 = v6;
    do
    {
      v7 = vsub_f32(v5[-1], *v5);
      *&v28[v3++] = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
      v5 += 2;
    }

    while (v3 != 6);
    v8 = *v28;
    for (i = 1; i != 6; ++i)
    {
      if (v8 < *&v28[i])
      {
        v8 = *&v28[i];
      }
    }
  }

  else
  {
    v10 = *result;
    v11 = vsub_f32(*result, result[1]);
    v12 = vmul_f32(v11, v11);
    v13 = *a2;
    v14 = vsub_f32(*a2, a2[1]);
    v15 = vmul_f32(v14, v14);
    v16 = vsqrt_f32(vadd_f32(vzip1_s32(v12, v15), vzip2_s32(v12, v15)));
    v16.i8[0] = vcgt_f32(vdup_lane_s32(v16, 1), v16).u8[0];
    v17 = (v16.i8[0] & 1) == 0;
    if (v16.i8[0])
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vdup_n_s32(v18);
    v20 = vbsl_s8(v19, v10, v13);
    if (v17)
    {
      v21 = a2;
    }

    else
    {
      v21 = result;
    }

    v22 = vbsl_s8(v19, v13, v10);
    if (!v17)
    {
      result = a2;
    }

    v23 = vsub_f32(result[1], v22);
    v24 = vaddv_f32(vmul_f32(vsub_f32(v20, v22), v23));
    v25 = vaddv_f32(vmul_f32(v23, v23));
    if (v25 < 0.000001)
    {
      v25 = 0.000001;
    }

    v26 = vmla_n_f32(v22, v23, v24 / v25);
    v27 = vmla_n_f32(v22, v23, vaddv_f32(vmul_f32(v23, vsub_f32(v21[1], v22))) / v25);
    v29 = v26;
    v30 = v27;
    return sub_2621DC104(result, &v29, 2);
  }

  return result;
}

float sub_2621DC388(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  sub_2621DC2A8();
  v10 = vsub_f32(a4, a3);
  v11 = vaddv_f32(vmul_f32(vsub_f32(a1, a3), v10));
  v12 = vaddv_f32(vmul_f32(v10, v10));
  if (v12 < 0.000001)
  {
    v12 = 0.000001;
  }

  v13 = vsub_f32(v8, v9);
  v14 = vsub_f32(vmla_n_f32(a3, v10, v11 / v12), vmla_n_f32(a3, v10, vaddv_f32(vmul_f32(v10, vsub_f32(a2, a3))) / v12));
  return sqrtf(vaddv_f32(vmul_f32(v13, v13))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v14, v14))), 0.000001);
}

uint64_t *sub_2621DC430(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2621DC488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DC4A4(void *a1, float32x2_t *a2, float32x2_t *a3, double a4, double a5, double a6, double a7)
{
  v8 = *a2;
  v9 = vsub_f32(a2[1], *a2);
  v10 = *a3;
  v11 = vsub_f32(a3[1], *a3);
  *&a7 = -*&v9.i32[1];
  v12 = vzip1_s32(*&a7, v9);
  v13 = vmul_f32(v11, v12);
  if (vaddv_f32(v13) == 0.0)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v16 = vmul_f32(vsub_f32(v8, v10), v12);
    v17 = vmla_n_f32(v10, v11, vdiv_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), vadd_f32(v13, vdup_lane_s32(v13, 1))).f32[0]);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v18 = vsub_f32(v8, v17);
    v22 = sqrtf(vaddv_f32(vmul_f32(v18, v18)));
    sub_2621C8F2C(a1, &v22);
    v19 = vsub_f32(a2[1], v17);
    v22 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    sub_2621C8F2C(a1, &v22);
    v20 = vsub_f32(*a3, v17);
    v22 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
    sub_2621C8F2C(a1, &v22);
    v21 = vsub_f32(a3[1], v17);
    v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
    sub_2621C8F2C(a1, &v22);
  }
}

void sub_2621DC5D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621DC5F8(float32x2_t a1, float32x2_t a2, float32x2_t a3, double a4)
{
  v4 = vsub_f32(a2, a1);
  v5 = vsub_f32(*&a4, a3);
  *&a4 = -*&v4.i32[1];
  v6 = vzip1_s32(*&a4, v4);
  v7 = vmul_f32(v5, v6);
  if (vaddv_f32(v7) == 0.0)
  {
    return 0;
  }

  v9 = vmul_f32(vsub_f32(a1, a3), v6);
  return vmla_n_f32(a3, v5, vdiv_f32(vadd_f32(v9, vdup_lane_s32(v9, 1)), vadd_f32(v7, vdup_lane_s32(v7, 1))).f32[0]);
}

void sub_2621DC654(uint64_t *result, float32x2_t *a2, float32x2_t a3, float32x2_t a4, double a5, double a6, double a7)
{
  v10 = vsub_f32(a4, a3);
  v11 = *a2;
  v12 = vsub_f32(a2[1], *a2);
  *&a7 = -*&v10.i32[1];
  v13 = vzip1_s32(*&a7, v10);
  v14 = vmul_f32(v12, v13);
  if (vaddv_f32(v14) == 0.0)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    v16 = vmul_f32(vsub_f32(a3, v11), v13);
    v17 = vmla_n_f32(v11, v12, vdiv_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), vadd_f32(v14, vdup_lane_s32(v14, 1))).f32[0]);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    v19 = sub_2621DC76C(v17, a3, a4, 0.00001) < 0.01;
    sub_2621DC7FC(result, &v19);
    v18 = sub_2621DC76C(v17, *a2, a2[1], 0.00001) < 0.01;
    sub_2621DC7FC(result, &v18);
  }
}

void sub_2621DC750(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float32_t sub_2621DC76C(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4)
{
  v4 = vsub_f32(a3, a2);
  v5 = vaddv_f32(vmul_f32(vsub_f32(a1, a2), v4));
  v6 = vaddv_f32(vmul_f32(v4, v4));
  if (v6 < 0.000001)
  {
    v6 = 0.000001;
  }

  v7 = vmla_n_f32(a2, v4, v5 / v6);
  if (vaddv_f32(vmul_f32(vsub_f32(v7, a2), vsub_f32(v7, a3))) <= a4)
  {
    v12 = vsub_f32(v7, a1);
    v12.f32[0] = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
  }

  else
  {
    v8 = vsub_f32(a2, a1);
    v9 = vmul_f32(v8, v8);
    v10 = vsub_f32(a3, a1);
    v11 = vmul_f32(v10, v10);
    v12 = vsqrt_f32(vadd_f32(vzip1_s32(v11, v9), vzip2_s32(v11, v9)));
    if (v12.f32[0] >= v12.f32[1])
    {
      v12.f32[0] = v12.f32[1];
    }
  }

  return v12.f32[0];
}

void sub_2621DC7FC(uint64_t *result, _BYTE *a2)
{
  v4 = result[1];
  v5 = result[2];
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_2621CBEB0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_2621DC8A4(result, v7);
    v4 = result[1];
  }

  result[1] = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
}

void sub_2621DC8A4(void *a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2621DC9F8(&v2, a2);
    }

    sub_2621CBEB0();
  }
}

void sub_2621DC9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DC9F8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2621CBEC8(v2);
  }

  sub_2621CBEB0();
}

float sub_2621DCA3C(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v8 = sub_2621DCAD4(a3, a1, a2);
  v9 = vsub_f32(v8, sub_2621DCAD4(a4, a1, a2));
  v10 = vsub_f32(a3, a4);
  return fminf(sqrtf(vaddv_f32(vmul_f32(v9, v9))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v10, v10))), 0.000001), 1.0);
}

float32x2_t sub_2621DCAD4(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a2);
  v4 = vaddv_f32(vmul_f32(vsub_f32(a1, a2), v3));
  v5 = vaddv_f32(vmul_f32(v3, v3));
  if (v5 < 0.000001)
  {
    v5 = 0.000001;
  }

  result = vmla_n_f32(a2, v3, v4 / v5);
  v7 = vsub_f32(result, a2);
  v8 = vsub_f32(result, a3);
  if (vaddv_f32(vmul_f32(v7, v8)) > 0.00001)
  {
    v9 = vmul_f32(v7, v7);
    v10 = vmul_f32(v8, v8);
    v11 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v10), vzip2_s32(v9, v10)));
    return vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v11, 1), v11), 0), a2, a3);
  }

  return result;
}

float32x2_t sub_2621DCB54(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a2);
  v4 = vaddv_f32(vmul_f32(vsub_f32(a1, a2), v3));
  v5 = vaddv_f32(vmul_f32(v3, v3));
  if (v5 < 0.000001)
  {
    v5 = 0.000001;
  }

  result = vmla_n_f32(a2, v3, v4 / v5);
  v7 = vsub_f32(result, a2);
  v8 = vsub_f32(result, a3);
  if (vaddv_f32(vmul_f32(v7, v8)) > 0.00001)
  {
    v9 = vmul_f32(v7, v7);
    v10 = vmul_f32(v8, v8);
    v11 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v10), vzip2_s32(v9, v10)));
    return vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v11, 1), v11)), 0), a3, a2);
  }

  return result;
}

uint64_t sub_2621DCBD8(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4, float a5)
{
  v5 = vsub_f32(a3, a2);
  v6 = vaddv_f32(vmul_f32(vsub_f32(a1, a2), v5));
  v7 = vaddv_f32(vmul_f32(v5, v5));
  if (v7 < 0.000001)
  {
    v7 = 0.000001;
  }

  v8 = vmla_n_f32(a2, v5, v6 / v7);
  if (vaddv_f32(vmul_f32(vsub_f32(v8, a2), vsub_f32(v8, a3))) > a5)
  {
    return 0;
  }

  v9 = vsub_f32(a1, v8);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) >= a4)
  {
    return 0;
  }

  return v8;
}

float32x2_t sub_2621DCC54(float32x2_t a1, double a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a4, a3);
  v5 = vaddv_f32(vmul_f32(vsub_f32(a1, a3), v4));
  v6 = vaddv_f32(vmul_f32(v4, v4));
  if (v6 < 0.000001)
  {
    v6 = 0.000001;
  }

  result = vmla_n_f32(a3, v4, v5 / v6);
  v8 = vsub_f32(result, a3);
  v9 = vsub_f32(result, a4);
  if (vaddv_f32(vmul_f32(v8, v9)) > 0.00001)
  {
    v10 = vmul_f32(v8, v8);
    v11 = vmul_f32(v9, v9);
    v12 = vsqrt_f32(vadd_f32(vzip1_s32(v10, v11), vzip2_s32(v10, v11)));
    return vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v12, 1), v12)), 0), a4, a3);
  }

  return result;
}

double sub_2621DCD34(void *a1, float32x2_t *a2, float32x2_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = vsub_f32(*a2, *a3);
  v11 = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
  sub_2621C8F2C(a1, &v11);
  v7 = vsub_f32(*a2, a3[1]);
  v11 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
  sub_2621C8F2C(a1, &v11);
  v8 = vsub_f32(a2[1], *a3);
  v11 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));
  sub_2621C8F2C(a1, &v11);
  v9 = vsub_f32(a2[1], a3[1]);
  v11 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  sub_2621C8F2C(a1, &v11);
  return result;
}

void sub_2621DCE10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2621DCE38(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a2, a1);
  v5 = vsub_f32(a4, a3);
  v6 = (-v4.f32[1] * v5.f32[0]) + (v4.f32[0] * v5.f32[1]);
  v7 = 0;
  if (fabsf(v6) >= 0.000001)
  {
    v8 = vsub_f32(a3, a1);
    v9 = ((v8.f32[0] * v5.f32[1]) - (v8.f32[1] * v5.f32[0])) / v6;
    if (v9 >= -0.00001 && v9 <= 1.0)
    {
      v10 = ((v4.f32[0] * -v8.f32[1]) + (v8.f32[0] * v4.f32[1])) / v6;
      return v10 <= 1.0 && v10 >= -0.00001;
    }
  }

  return v7;
}

unint64_t sub_2621DCEC8(float32x2_t *a1, float32x2_t *a2)
{
  sub_2621C95C8(&v11, a1, a2);
  v2 = v11;
  v3 = v11 + 1;
  v4 = v11 == v12 || v3 == v12;
  v5 = v11;
  if (!v4)
  {
    v6 = *v11;
    v5 = v11;
    v7 = v11 + 1;
    do
    {
      v8 = *v7++;
      v9 = v8;
      if (v8 < v6)
      {
        v6 = v9;
        v5 = v3;
      }

      v3 = v7;
    }

    while (v7 != v12);
  }

  if (v11)
  {
    operator delete(v11);
  }

  return (v5 - v2) >> 1;
}

unint64_t sub_2621DCF58(float32x2_t *a1, float32x2_t *a2)
{
  sub_2621C95C8(&v11, a1, a2);
  v2 = v11;
  v3 = v11 + 1;
  v4 = v11 == v12 || v3 == v12;
  v5 = v11;
  if (!v4)
  {
    v6 = *v11;
    v5 = v11;
    v7 = v11 + 1;
    do
    {
      v8 = *v7++;
      v9 = v8;
      if (v6 < v8)
      {
        v6 = v9;
        v5 = v3;
      }

      v3 = v7;
    }

    while (v7 != v12);
  }

  if (v11)
  {
    operator delete(v11);
  }

  return (v5 - v2) >> 1;
}

float sub_2621DCFE8(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v8 = sub_2621DCAD4(a3, a1, a2);
  v9 = sub_2621DCAD4(a4, a1, a2);
  v10 = vsub_f32(a2, a1);
  v11 = vaddv_f32(vmul_f32(vsub_f32(a3, a1), v10));
  v12 = vaddv_f32(vmul_f32(v10, v10));
  if (v12 < 0.000001)
  {
    v12 = 0.000001;
  }

  v13 = vsub_f32(v8, v9);
  v14 = vsub_f32(vmla_n_f32(a1, v10, v11 / v12), vmla_n_f32(a1, v10, vaddv_f32(vmul_f32(v10, vsub_f32(a4, a1))) / v12));
  return fminf(sqrtf(vaddv_f32(vmul_f32(v13, v13))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v14, v14))), 0.000001), 1.0);
}

BOOL sub_2621DD0C0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x2_t a4)
{
  v4 = vsub_f32(*a2.f32, *a1.f32);
  v5 = vsub_f32(*a3.f32, *a2.f32);
  v4.f32[0] = -v4.f32[0];
  v5.f32[0] = vmuls_lane_f32(v4.f32[0], v5, 1) + (v4.f32[1] * v5.f32[0]);
  v6 = fabsf(v5.f32[0]);
  v7 = v5.f32[0] > 0.0;
  v8 = vsub_f32(a4, *a2.f32);
  v8.f32[0] = vmuls_lane_f32(v4.f32[0], v8, 1) + (v4.f32[1] * v8.f32[0]);
  v9 = fabsf(v8.f32[0]);
  v10 = v9 < 0.00001;
  v11 = v8.f32[0] <= 0.0;
  v12 = vsub_f32(a4, *a3.f32);
  v13 = vsub_f32(*a1.f32, a4);
  v12.f32[0] = -v12.f32[0];
  v14 = vmuls_lane_f32(v12.f32[0], v13, 1) + (v12.f32[1] * v13.f32[0]);
  v15 = fabsf(v14);
  v16 = v14 > 0.0;
  v17 = vsub_f32(*a2.f32, a4);
  v18 = vmuls_lane_f32(v12.f32[0], v17, 1) + (v12.f32[1] * v17.f32[0]);
  v19 = fabsf(v18);
  v20 = (v9 >= 0.00001) & (v7 ^ v11);
  if (v6 >= 0.00001)
  {
    v10 = v20;
  }

  v21 = (v19 >= 0.00001) & (v16 ^ (v18 <= 0.0));
  if (v15 < 0.00001)
  {
    v21 = v19 < 0.00001;
  }

  result = 1;
  if (v10 || v21)
  {
    if (v6 >= 0.00001 || (v23.i64[0] = a3.i64[0], v23.i64[1] = a3.i64[0], v24.i64[0] = a1.i64[0], v24.i64[1] = a1.i64[0], v25.i64[0] = a2.i64[0], v25.i64[1] = a2.i64[0], v26.i64[0] = a2.i64[0], v26.i64[1] = a1.i64[0], v27.i64[0] = a1.i64[0], v27.i64[1] = a2.i64[0], v28 = vbslq_s8(vcgtq_f32(v27, v26), v25, v24), v25.i32[0] = vmovn_s32(vcgeq_f32(v23, v28)).u32[0], v25.i32[1] = vmovn_s32(vcgeq_f32(v28, v23)).i32[1], (vminv_u16(*v25.i8) & 1) == 0))
    {
      if (v9 >= 0.00001 || (*v29.f32 = a4, *&v29.u32[2] = a4, v30.i64[0] = a1.i64[0], v30.i64[1] = a1.i64[0], v31.i64[0] = a2.i64[0], v31.i64[1] = a2.i64[0], v32.i64[0] = a2.i64[0], v32.i64[1] = a1.i64[0], v33.i64[0] = a1.i64[0], v33.i64[1] = a2.i64[0], v34 = vbslq_s8(vcgtq_f32(v33, v32), v31, v30), v31.i32[0] = vmovn_s32(vcgeq_f32(v29, v34)).u32[0], v31.i32[1] = vmovn_s32(vcgeq_f32(v34, v29)).i32[1], (vminv_u16(*v31.i8) & 1) == 0))
      {
        if (v15 >= 0.00001 || (a1.i64[1] = a1.i64[0], v35.i64[0] = a3.i64[0], v35.i64[1] = a3.i64[0], *v36.i8 = a4, v36.u64[1] = a4, *v37.f32 = a4, v37.i64[1] = a3.i64[0], v38.i64[0] = a3.i64[0], *&v38.u32[2] = a4, v39 = vbslq_s8(vcgtq_f32(v38, v37), v36, v35), v36.i32[0] = vmovn_s32(vcgeq_f32(a1, v39)).u32[0], v36.i32[1] = vmovn_s32(vcgeq_f32(v39, a1)).i32[1], (vminv_u16(*v36.i8) & 1) == 0))
        {
          if (v19 >= 0.00001)
          {
            return 0;
          }

          a2.i64[1] = a2.i64[0];
          v40.i64[0] = a3.i64[0];
          v40.i64[1] = a3.i64[0];
          *v41.i8 = a4;
          v41.u64[1] = a4;
          *v42.f32 = a4;
          v42.i64[1] = a3.i64[0];
          *&a3.u32[2] = a4;
          v43 = vbslq_s8(vcgtq_f32(a3, v42), v41, v40);
          v44.i32[0] = vmovn_s32(vcgeq_f32(a2, v43)).u32[0];
          v44.i32[1] = vmovn_s32(vcgeq_f32(v43, a2)).i32[1];
          if ((vminv_u16(v44) & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2621DD2E4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x2_t a4)
{
  v5 = *a3.f32;
  v6 = *a2.f32;
  v7 = *a1.f32;
  if (!sub_2621DD0C0(a1, a2, a3, a4))
  {
    return 0;
  }

  v9 = vsub_f32(v6, v7);
  v10 = vsub_f32(a4, v5);
  *v8.i32 = -*&v9.i32[1];
  v11 = vzip1_s32(v8, v9);
  v12 = vmul_f32(v10, v11);
  if (vaddv_f32(v12) == 0.0)
  {
    return 0;
  }

  v14 = vmul_f32(vsub_f32(v7, v5), v11);
  return vmla_n_f32(v5, v10, vdiv_f32(vadd_f32(v14, vdup_lane_s32(v14, 1)), vadd_f32(v12, vdup_lane_s32(v12, 1))).f32[0]);
}

uint64_t sub_2621DD378(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = *a4.f32;
  v8 = a3.i64[0];
  v9 = vsub_f32(*a3.f32, *a4.f32);
  v10 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  while (1)
  {
    a5.i64[0] = *v6;
    a3.i64[0] = v8;
    *a4.f32 = v7;
    v11 = sub_2621DD2E4(a3, a4, a5, *(v6 + 8));
    if (v12)
    {
      v13 = vsub_f32(v11, v7);
      if ((v10 - sqrtf(vaddv_f32(vmul_f32(v13, v13)))) > 0.1)
      {
        break;
      }
    }

    v6 += 16;
    if (v6 == a2)
    {
      return 0;
    }
  }

  return 1;
}

float sub_2621DD42C(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a2, a1);
  v5 = vaddv_f32(vmul_f32(vsub_f32(a3, a1), v4));
  v6 = vaddv_f32(vmul_f32(v4, v4));
  if (v6 < 0.000001)
  {
    v6 = 0.000001;
  }

  v7 = vsub_f32(vmla_n_f32(a1, v4, v5 / v6), a3);
  v8 = vmul_f32(v7, v7);
  v9 = vsub_f32(vmla_n_f32(a1, v4, vaddv_f32(vmul_f32(v4, vsub_f32(a4, a1))) / v6), a4);
  v10 = vmul_f32(v9, v9);
  return vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v8, v10), vzip2_s32(v8, v10)))) * 0.5;
}

uint64_t sub_2621DD4A4(float32x2_t *a1, float32x2_t *a2, float a3, float a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_2621DCFE8(*a1, v9, *a2, v11);
  v13 = sub_2621DCFE8(v10, v11, v8, v9);
  if (v12 >= v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_2621C92AC(a1, a2, 0);
  v16 = *a1;
  v17 = vsub_f32(a1[1], *a1);
  v18 = vaddv_f32(vmul_f32(vsub_f32(*a2, *a1), v17));
  v19 = vaddv_f32(vmul_f32(v17, v17));
  if (v19 < 0.000001)
  {
    v19 = 0.000001;
  }

  v20 = vsub_f32(vmla_n_f32(v16, v17, v18 / v19), *a2);
  v21 = vmul_f32(v20, v20);
  v22 = vsub_f32(vmla_n_f32(v16, v17, vaddv_f32(vmul_f32(v17, vsub_f32(a2[1], v16))) / v19), a2[1]);
  v23 = vmul_f32(v22, v22);
  v25 = (vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v21, v23), vzip2_s32(v21, v23)))) * 0.5) <= a4 && v15 <= a3;
  return v25 & (v14 >= 0.5);
}

uint64_t *sub_2621DD5D0(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2621DD628(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DD644(uint64_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float a5)
{
  v52 = 0;
  v10 = 0uLL;
  *v51 = 0u;
  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = *a2;
    v13 = 16 * v11;
    do
    {
      __p[0] = *v12;
      sub_2621CBA84(v51, __p);
      v12 += 2;
      v13 -= 16;
    }

    while (v13);
    v10 = *v51;
  }

  v14 = *a3;
  v15 = *a4;
  v17 = *(&v10 + 1);
  v16 = v10;
  if (v10 == *(&v10 + 1))
  {
    v21 = *(&v10 + 1);
    v20 = *a3;
    v19 = *a4;
  }

  else
  {
    *&v10 = vmul_f32(vadd_f32(v14, v15), 0x3F0000003F000000);
    v18 = v16;
    do
    {
      *v18 = vsub_f32(*v18, *&v10);
      ++v18;
    }

    while (v18 != *(&v10 + 1));
    v19 = *a4;
    v20 = *a3;
    v21 = v16;
  }

  memset(__p, 0, sizeof(__p));
  sub_2621DC8A4(__p, (*(&v10 + 1) - v21) >> 3);
  if (v16 != v17)
  {
    v23 = vsub_f32(v14, v15);
    v24 = vsub_f32(v19, v20);
    *v22.i32 = -*&v24.i32[1];
    v25 = vzip1_s32(v22, v24);
    v26 = vmul_f32(v24, v24);
    v26.i32[0] = vadd_f32(v26, vdup_lane_s32(v26, 1)).u32[0];
    v27 = vrsqrte_f32(v26.u32[0]);
    v28 = vmul_f32(v27, vrsqrts_f32(v26.u32[0], vmul_f32(v27, v27)));
    v29 = vmul_n_f32(v24, vmul_f32(v28, vrsqrts_f32(v26.u32[0], vmul_f32(v28, v28))).f32[0]);
    v30 = vmul_f32(v25, v25);
    v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v33 = vmul_n_f32(v25, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    v34 = sqrtf(vaddv_f32(vmul_f32(v23, v23))) * 0.5;
    do
    {
      v35 = fabsf(vaddv_f32(vmul_f32(v29, *v16))) < v34 && fabsf(vaddv_f32(vmul_f32(v33, *v16))) < a5;
      v49 = v35;
      sub_2621DC7FC(__p, &v49);
      ++v16;
    }

    while (v16 != v17);
  }

  v48 = a1;
  v36 = *(a2 + 8);
  if (v36)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    for (i = 0; i != v36; ++i)
    {
      if ((*(__p[0] + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
      {
        v42 = (v39 - v37) >> 4;
        v43 = v42 + 1;
        if ((v42 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        if (-v37 >> 3 > v43)
        {
          v43 = -v37 >> 3;
        }

        if (-v37 >= 0x7FFFFFFFFFFFFFF0)
        {
          v44 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        if (v44)
        {
          sub_2621CBF10(v44);
        }

        v45 = v38 - v37;
        v46 = (16 * v42 - (v38 - v37));
        *(16 * v42) = *(*a2 + 16 * i);
        v41 = 16 * v42 + 16;
        memcpy(v46, v37, v45);
        if (v37)
        {
          operator delete(v37);
        }

        v37 = v46;
        v39 = 16 * v42 + 16;
      }

      else
      {
        v41 = v38;
      }

      v38 = v41;
    }
  }

  else
  {
    v37 = 0;
    v41 = 0;
  }

  *v48 = 0;
  v48[1] = 0;
  v48[2] = 0;
  sub_2621DDA38(v48, v37, v41, (v41 - v37) >> 4);
  sub_2621DDAB4(v48 + 3, __p);
  if (v37)
  {
    operator delete(v37);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v47 = v51[0];
  if (v51[0])
  {

    operator delete(v47);
  }
}

void sub_2621DD9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = *v15;
  if (*v15)
  {
    *(a10 + 8) = v18;
    operator delete(v18);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2621DDA38(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621DC0C4(result, a4);
  }

  return result;
}

void sub_2621DDA98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2621DDAB4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_2621DC9F8(a1, v2);
  }

  return a1;
}

void sub_2621DDBC8(void *a1, unint64_t *a2, int a3, int a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v9 = 0;
  a5.f32[0] = a3;
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = a5;
  a5.f32[1] = a4;
  LODWORD(v11) = 0;
  *(&v11 + 1) = a4;
  v20[0] = 0;
  v20[1] = v10.u32[0];
  v20[2] = v10.u32[0];
  v20[3] = a5.i64[0];
  v20[4] = a5.i64[0];
  v20[5] = v11;
  v20[6] = v11;
  v20[7] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  do
  {
    a5.i64[0] = *a2;
    v10.i64[0] = a2[1];
    a7.i64[0] = v20[v9];
    v14 = sub_2621DD2E4(a5, v10, a7, v20[v9 + 1]);
    v15 = v12;
    if (v12)
    {
      sub_2621CBA84(v16, &v14);
    }

    v9 += 2;
  }

  while (v9 != 8);
  v13 = v16[0];
  if (v16[0] != v16[1])
  {
    memset(v19, 0, sizeof(v19));
    memset(__p, 0, sizeof(__p));
    sub_2621CBA84(v19, v16[0]);
    sub_2621CBA84(__p, v13);
    sub_2621C7F54(1uLL);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_2621DDF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DE070(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2621CBF10(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_2621DE144(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      sub_2621CBEB0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2621C7F54(v9);
    }

    v10 = (4 * v6);
    *v10 = *a2;
    v5 = 4 * v6 + 4;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *sub_2621DE214(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621DC0C4(result, a4);
  }

  return result;
}

void sub_2621DE274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_2621DE290(void *a1, uint64_t *a2, void *a3, int a4, float a5, float a6, float a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v59 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
  v75 = 0;
  v15 = 0;
  v74 = 0u;
  if (!a4)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v67 = 0;
    v16 = v10;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v70, v78, 16);
    if (v20)
    {
      v21 = *v71;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v71 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v70 + 1) + 8 * i);
          objc_msgSend_quad(v23, v18, v19, v59);
          v68[0] = v24;
          sub_2621CBA84(&v74, v68);
          objc_msgSend_quad(v23, v25, v26);
          v68[0] = v27;
          sub_2621CBA84(&v74, v68);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v70, v78, 16);
      }

      while (v20);
      v67 = v74;
    }

    v15 = v67;
  }

  v28 = 0;
  v60 = 180.0 - a6;
  v29 = v15;
  v61 = v15;
  while (objc_msgSend_count(v10, v13, v14, v59) > v28)
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(v10, v30, v28);
    v32 = sub_26223FCEC(v31).n128_u64[0];
    v34 = v33;
    v69[0] = v32;
    v69[1] = v33;

    v35 = *a2;
    if (a2[1] != *a2)
    {
      v36 = 0;
      v37 = vsub_f32(v32, v34);
      v66 = fmaxf(sqrtf(vaddv_f32(vmul_f32(v37, v37))), 0.000001);
      v38 = vsub_f32(v34, v32);
      v39 = vaddv_f32(vmul_f32(v38, v38));
      if (v39 < 0.000001)
      {
        v39 = 0.000001;
      }

      v64 = v39;
      do
      {
        if (*(*a3 + 4 * v36) == a4)
        {
          v40 = (v35 + 16 * v36);
          v41 = sub_2621C92AC(v69, v40, 0);
          v42 = *v40;
          v43 = v40[1];
          sub_2621DC2A8();
          v46 = vsub_f32(v44, v45);
          v47 = sqrtf(vaddv_f32(vmul_f32(v46, v46))) / v66;
          sub_2621DC2A8();
          v50 = vsub_f32(v48, v49);
          v51 = vsub_f32(v42, v43);
          v52 = sqrtf(vaddv_f32(vmul_f32(v50, v50))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v51, v51))), 0.000001);
          if (v47 >= v52)
          {
            v52 = v47;
          }

          if (v52 > a5)
          {
            v53 = vsub_f32(vmla_n_f32(v32, v38, vaddv_f32(vmul_f32(vsub_f32(v43, v32), v38)) / v64), v43);
            v54 = vsub_f32(vmla_n_f32(v32, v38, vaddv_f32(vmul_f32(vsub_f32(v42, v32), v38)) / v64), v42);
            v55 = (sqrtf(vaddv_f32(vmul_f32(v54, v54))) + sqrtf(vaddv_f32(vmul_f32(v53, v53)))) * 0.5;
            if (a4 || v55 >= a7)
            {
              if (a4 == 1 && v55 < a7 && (v41 <= a6 || v41 >= v60))
              {
                goto LABEL_32;
              }
            }

            else if (v41 <= a6 || v41 >= v60)
            {
              __p[0] = v32;
              __p[1] = v34;
              memset(v68, 0, sizeof(v68));
              sub_2621CC6AC(v68, __p, &v77, 2uLL);
            }
          }
        }

        ++v36;
        v35 = *a2;
      }

      while (v36 < (a2[1] - *a2) >> 4);
    }

    v56 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, v28);
    objc_msgSend_addObject_(v59, v57, v56);

LABEL_32:
    ++v28;
    v29 = v61;
  }

  if (v29)
  {
    *(&v74 + 1) = v29;
    operator delete(v29);
  }

  return v59;
}

void sub_2621DE7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2621DE86C(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(a1, a2);
  }

  return a1;
}

void sub_2621DE964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621DEC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 224) = v15;
  sub_2621CC7B4(*(v14 + 248));
  a14 = v14 + 200;
  sub_2621DEC58(&a14);
  a14 = v14 + 176;
  sub_2621DED18(&a14);
  sub_2621DED18(&a14);

  _Unwind_Resume(a1);
}

void sub_2621DEC58(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 12;
      v7 = v4 - 12;
      v8 = v4 - 12;
      do
      {
        v9 = *v8;
        v8 -= 12;
        (*v9)(v7);
        v6 -= 12;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621DED18(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2621DED6C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2621DED6C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_2621DEDBC(uint64_t a1)
{
  *a1 = &unk_2874EEB80;
  sub_2621CC7B4(*(a1 + 24));

  JUMPOUT(0x266727420);
}

uint64_t sub_2621DEE24(uint64_t a1)
{
  *a1 = &unk_2874EEB80;
  sub_2621CC7B4(*(a1 + 24));
  return a1;
}

uint64_t sub_2621DEEDC(uint64_t a1)
{
  *a1 = &unk_2874EEA40;
  v2 = *(a1 + 344);
  v3 = (a1 + 352);
  if (v2 != (a1 + 352))
  {
    do
    {
      CVPixelBufferRelease(v2[7]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_2621DF078(*(a1 + 376));
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = a1 + 376;
  sub_2621CC7B4(*(a1 + 352));
  sub_26229F680((a1 + 272));
  *a1 = &unk_2874EEB50;
  v7 = *(a1 + 256);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 264);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(a1 + 216) = &unk_2874EEB80;
  sub_2621CC7B4(*(a1 + 240));
  v10 = (a1 + 192);
  sub_2621DEC58(&v10);
  v10 = (a1 + 168);
  sub_2621DED18(&v10);
  v10 = (a1 + 144);
  sub_2621DED18(&v10);

  return a1;
}

void sub_2621DF078(char *a1)
{
  if (a1)
  {
    sub_2621DF078(*a1);
    sub_2621DF078(*(a1 + 1));
    *(a1 + 7) = &unk_2874EF0D8;
    v2 = *(a1 + 23);
    if (v2)
    {
      sub_2621D1B78(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_2621DF100(void *a1)
{
  *a1 = &unk_2874EF0D8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2621DF16C(void *a1)
{
  *a1 = &unk_2874EF0D8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_2621DF448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v28 = (v26 + 47);
  v29 = -48;
  v30 = v28;
  while (1)
  {
    v31 = *v30;
    v30 -= 24;
    if (v31 < 0)
    {
      operator delete(*(v28 - 23));
    }

    v28 = v30;
    v29 += 24;
    if (!v29)
    {
      if (a14 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

id sub_2621DF4F8(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v483 = *MEMORY[0x277D85DE8];
  v413 = a2;
  v410 = a3;
  v411 = a4;
  if (a1)
  {
    if (*(a1 + 400) == 1)
    {
      v412 = objc_msgSend_copy(v413, v8, v9);
      v424 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11);
      v14 = objc_msgSend_curvedWalls(v412, v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16);

      v420 = a1;
      if (v17)
      {
        v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
        v21 = 0x277CBE000uLL;
        v24 = objc_msgSend_walls(v412, v22, v23);
        objc_msgSend_addObjectsFromArray_(v20, v25, v24);

        v474 = 0u;
        v475 = 0u;
        v472 = 0u;
        v473 = 0u;
        obj = objc_msgSend_curvedWalls(v412, v26, v27);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v472, v482, 16);
        if (v31)
        {
          v416 = *v473;
          v415 = v20;
          do
          {
            v32 = 0;
            v418 = v31;
            do
            {
              if (*v473 != v416)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v472 + 1) + 8 * v32);
              v426 = objc_msgSend_array(*(v21 + 2840), v29, v30);
              v421 = v32;
              if (v33)
              {
                v37 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35);
                v38 = v33[85];
                v39 = v33[86];
                if (v39 >= v38)
                {
                  v40 = (v38 * 10.0);
                  v41 = ((v39 + -2.5) * 10.0);
                  if (v40 >= v41)
                  {
                    v42 = 0;
                  }

                  else
                  {
                    v42 = 0;
                    do
                    {
                      v43 = v42;
                      v44 = v42 >> 2;
                      if (((v42 >> 2) + 1) >> 62)
                      {
                        sub_2621CBEB0();
                      }

                      if (v42 >> 2 != -1)
                      {
                        sub_2621C7F54((v42 >> 2) + 1);
                      }

                      *(4 * v44) = v40 / 10.0;
                      v42 = 4 * v44 + 4;
                      memcpy(0, 0, v43);
                      v40 += 50;
                    }

                    while (v40 < v41);
                  }

                  v45 = v42 >> 2;
                  if (((v42 >> 2) + 1) >> 62)
                  {
                    sub_2621CBEB0();
                  }

                  if (v42 >> 2 != -1)
                  {
                    sub_2621C7F54((v42 >> 2) + 1);
                  }

                  v20 = v415;
                  *(4 * v45) = v39;
                  memcpy(0, 0, v42);
                  if (4 * v45 != -4)
                  {
                    __sincosf_stret(MEMORY[0] * 0.017453);
                    sub_2621CBEC8(1uLL);
                  }
                }

                objc_msgSend_addObjectsFromArray_(v426, v36, v37);
              }

              else
              {
                v37 = 0;
                objc_msgSend_addObjectsFromArray_(v426, v34, 0);
              }

              v48 = objc_msgSend_identifier(v33, v46, v47);
              objc_msgSend_setObject_forKeyedSubscript_(v424, v49, v426, v48);

              objc_msgSend_addObjectsFromArray_(v20, v50, v426);
              v32 = v421 + 1;
              v21 = 0x277CBE000;
            }

            while (v421 + 1 != v418);
            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v472, v482, 16);
            v31 = v51;
          }

          while (v51);
        }

        sub_2622AE900(v412, v20);
      }

      else
      {
        v479 = 0u;
        v480 = 0u;
        src = 0u;
        v478 = 0u;
        v20 = objc_msgSend_walls(v412, v18, v19);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v53, &src, v482, 16);
        if (v54)
        {
          v55 = *v478;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v478 != v55)
              {
                objc_enumerationMutation(v20);
              }

              v57 = *(*(&src + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = objc_msgSend_parentIdentifier(v57, v58, v59);
                v62 = objc_msgSend_objectForKey_(v424, v61, v60);
                v63 = v62 == 0;

                if (v63)
                {
                  v66 = objc_msgSend_array(MEMORY[0x277CBEB18], v64, v65);
                  v69 = objc_msgSend_parentIdentifier(v57, v67, v68);
                  objc_msgSend_setObject_forKeyedSubscript_(v424, v70, v66, v69);
                }

                v71 = objc_msgSend_parentIdentifier(v57, v64, v65);
                v73 = objc_msgSend_objectForKeyedSubscript_(v424, v72, v71);
                objc_msgSend_addObject_(v73, v74, v57);
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v58, &src, v482, 16);
          }

          while (v54);
        }
      }

      if (a5)
      {
        v438 = 7729;
        v439 = 0;
        kdebug_trace();
        v419 = v410;
        v432 = v412;
        v417 = v411;
        v456 = 0uLL;
        *&v457 = 0;
        v452 = 0uLL;
        *&v453 = 0;
        kdebug_trace();
        v466 = 0u;
        v467 = 0u;
        v464 = 0u;
        v465 = 0u;
        v435 = objc_msgSend_walls(v432, v75, v76);
        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v435, v77, &v464, v482, 16);
        if (v80)
        {
          v81 = 0;
          v82 = 0;
          v83 = *v465;
          for (j = *v465; ; j = *v465)
          {
            if (j != v83)
            {
              objc_enumerationMutation(v435);
            }

            v85 = *(*(&v464 + 1) + 8 * v82);
            objc_msgSend_quad(v85, v78, v79);
            LODWORD(src) = v86;
            sub_2621C8F2C(&v452, &src);
            v87 = v85;
            v90 = objc_msgSend_identifier(v87, v88, v89);
            v93 = objc_msgSend_UUIDString(v90, v91, v92);
            v94 = v93;
            v97 = objc_msgSend_UTF8String(v93, v95, v96);
            sub_2621D0F64(&src, v97);

            v472 = 0uLL;
            *&v473 = 0;
            LODWORD(v460) = 0;
            v99 = *(v420 + 200);
            v100 = *(v420 + 208);
            if (v99 == v100)
            {
              v122 = -1;
              goto LABEL_78;
            }

            v101 = 1;
            do
            {
              v102 = *(v99 + 31);
              if (v102 >= 0)
              {
                v103 = *(v99 + 31);
              }

              else
              {
                v103 = *(v99 + 16);
              }

              v104 = BYTE7(v478);
              if (SBYTE7(v478) < 0)
              {
                v104 = *(&src + 1);
              }

              if (v103 == v104)
              {
                v105 = v102 >= 0 ? (v99 + 8) : *(v99 + 8);
                v106 = (SBYTE7(v478) & 0x80u) == 0 ? &src : src;
                if (!memcmp(v105, v106, v103))
                {
                  sub_2621C7CD0(&v472, &v460);
                }
              }

              LODWORD(v460) = v101;
              v99 += 96;
              ++v101;
            }

            while (v99 != v100);
            v107 = v472;
            v108 = *(&v472 + 1) == v472 || v87 == 0;
            if (!v108 && v87[29])
            {
              break;
            }

            v122 = -1;
            if (v472)
            {
              goto LABEL_77;
            }

LABEL_78:
            if (SBYTE7(v478) < 0)
            {
              operator delete(src);
            }

            if (v122 != -1)
            {
LABEL_81:
              v130 = *(v420 + 200) + 96 * v122;
              *(v130 + 92) = v81;
              *(v130 + 32) = 1;
              sub_2623288BC(&v456, v130, v128, v129);
              goto LABEL_110;
            }

            v131 = v87;
            v134 = objc_msgSend_identifier(v131, v132, v133);
            v137 = objc_msgSend_UUIDString(v134, v135, v136);
            v138 = v137;
            v141 = objc_msgSend_UTF8String(v137, v139, v140);
            sub_2621D0F64(&v472, v141);

            __p = 0uLL;
            *&v469 = 0;
            LODWORD(v447[0]) = 0;
            v143 = *(v420 + 200);
            v144 = *(v420 + 208);
            if (v143 != v144)
            {
              v145 = 1;
              do
              {
                v146 = *(v143 + 31);
                if (v146 >= 0)
                {
                  v147 = *(v143 + 31);
                }

                else
                {
                  v147 = *(v143 + 16);
                }

                v148 = BYTE7(v473);
                if (SBYTE7(v473) < 0)
                {
                  v148 = *(&v472 + 1);
                }

                if (v147 == v148)
                {
                  v149 = v146 >= 0 ? (v143 + 8) : *(v143 + 8);
                  v150 = (SBYTE7(v473) & 0x80u) == 0 ? &v472 : v472;
                  if (!memcmp(v149, v150, v147))
                  {
                    sub_2621C7CD0(&__p, v447);
                  }
                }

                LODWORD(v447[0]) = v145;
                v143 += 96;
                ++v145;
              }

              while (v143 != v144);
              v151 = __p;
              if (*(&__p + 1) == __p || v131 && v131[29])
              {
                goto LABEL_103;
              }

              objc_msgSend_quad(v131, v142, v147);
              v429 = v152;
              objc_msgSend_quad(v131, v153, v154);
              v156 = vsubq_f32(v429, v155);
              if (sqrtf(vaddv_f32(*&vmulq_f32(v156, v156))) < 0.5)
              {
                goto LABEL_103;
              }

              v169 = *(v420 + 200) + 96 * *v151;
              v170 = sub_2622E8CD0(*(v169 + 40), *(v169 + 48));
              v171 = *(v169 + 36) > 3 && v170;
              if (v171 || ((v172 = sub_2622E8CD0(*(v169 + 40), *(v169 + 48)), *(v169 + 36) < 2) ? (v175 = 1) : (v175 = v172), (v175 & 1) == 0))
              {
                *(v169 + 36) = 0;
                v122 = -1;
              }

              else
              {
                *&v460 = &unk_2874EF020;
                DWORD2(v460) = 0;
                *(&v460 + 11) = 0;
                src = 0uLL;
                *&v478 = 0;
                v176 = *(v169 + 40);
                v177 = *(v169 + 48);
                if (v176 != v177)
                {
                  v178 = 0;
                  v179 = 0;
                  v180 = 0uLL;
                  do
                  {
                    for (k = *(v176 + 96); k != *(v176 + 104); k += 16)
                    {
                      ++v179;
                      v178 += *(k + 12);
                      v173.i32[0] = *(k + 8);
                      v173 = vmovl_u8(v173).u64[0];
                      v180 = vaddw_u16(v180, v173);
                    }

                    v176 += 120;
                  }

                  while (v176 != v177);
                  if (v179)
                  {
                    *v174.i32 = v179;
                    v182 = vand_s8(vmovn_s32(vcgtq_f32(vdivq_f32(vcvtq_f32_s32(v180), vdupq_lane_s32(v174, 0)), xmmword_2623A75D0)), 0x1000100010001);
                    DWORD2(v460) = vuzp1_s8(v182, v182).u32[0];
                    BYTE12(v460) = (v178 / v179) > 0.5;
                  }
                }

                p_src = &src;
                sub_26220532C(&p_src);
                if (BYTE8(v460) != 1)
                {
                  goto LABEL_103;
                }

                objc_msgSend_quad(v131, v183, v184);
                v430 = v185;
                v423 = *(*(*(v169 + 40) + 40) + 16);
                objc_msgSend_quad(v131, v186, v187);
                v190 = vsubq_f32(v430, v423);
                v191 = sqrtf(vaddv_f32(*&vmulq_f32(v190, v190)));
                v193 = vsubq_f32(v192, *(*(*(v169 + 48) - 80) + 64));
                v194 = sqrtf(vaddv_f32(*&vmulq_f32(v193, v193)));
                if (v191 < v194)
                {
                  v191 = v194;
                }

                if (v191 <= 0.15)
                {
                  objc_msgSend_quad(v131, v188, v189);
                  v431 = v195;
                  objc_msgSend_quad(v131, v196, v197);
                  *&v198 = v431;
                  *(&v198 + 1) = v199;
                  src = v198;
                  sub_2623287AC(v169, &src);
                  ++*(v169 + 36);
                  v122 = *v151;
                }

                else
                {
LABEL_103:
                  v122 = -1;
                  if (!v151)
                  {
                    goto LABEL_106;
                  }
                }
              }

              *(&__p + 1) = v151;
              operator delete(v151);
              goto LABEL_106;
            }

            v122 = -1;
LABEL_106:
            if (SBYTE7(v473) < 0)
            {
              operator delete(v472);
            }

            if (v122 != -1)
            {
              goto LABEL_81;
            }

            sub_262328B1C(&src, v420 + 8, v419, v131);
            v481 = v81;
            v159 = objc_msgSend_identifier(v131, v157, v158);
            v162 = objc_msgSend_UUIDString(v159, v160, v161);
            v163 = v162;
            v166 = objc_msgSend_UTF8String(v162, v164, v165);
            sub_2621DA094((&src + 8), v166);

            LOBYTE(v479) = 0;
            DWORD1(v479) = 0;
            sub_2623288BC(&v456, &src, v167, v168);
            sub_262324EC8(&src);
LABEL_110:
            if (++v82 >= v80)
            {
              v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v435, v78, &v464, v482, 16);
              if (!v80)
              {
                goto LABEL_150;
              }

              v82 = 0;
            }

            ++v81;
          }

          v109 = *v472;
          v110 = *(v420 + 200);
          objc_msgSend_quad(v87, v98, v103);
          v427 = v111;
          v112 = (v110 + 96 * v109);
          v422 = *(*(v112[5] + 40) + 16);
          objc_msgSend_quad(v87, v113, v114);
          v117 = vsubq_f32(v427, v422);
          v118 = sqrtf(vaddv_f32(*&vmulq_f32(v117, v117)));
          v120 = vsubq_f32(v119, *(*(v112[6] - 80) + 64));
          v121 = sqrtf(vaddv_f32(*&vmulq_f32(v120, v120)));
          if (v118 < v121)
          {
            v118 = v121;
          }

          if (v118 <= 0.15)
          {
            objc_msgSend_quad(v87, v115, v116);
            v428 = v123;
            objc_msgSend_quad(v87, v124, v125);
            *&v126 = v428;
            *(&v126 + 1) = v127;
            __p = v126;
            sub_2623287AC(v112, &__p);
            v122 = *v107;
          }

          else
          {
            v122 = -1;
          }

LABEL_77:
          operator delete(v107);
          goto LABEL_78;
        }

LABEL_150:

        kdebug_trace();
        kdebug_trace();
        v223 = v452;
        if (*(&v452 + 1) == v452)
        {
          v229 = 2.7;
        }

        else
        {
          v224 = v452 + 4;
          if (v452 + 4 != *(&v452 + 1))
          {
            v225 = *v452;
            v226 = (v452 + 4);
            do
            {
              v227 = *v226++;
              v228 = v227;
              if (v225 < v227)
              {
                v225 = v228;
                v223 = v224;
              }

              v224 = v226;
            }

            while (v226 != *(&v452 + 1));
          }

          v229 = *v223;
        }

        p_src = 0;
        v450 = 0;
        v451 = 0;
        v460 = 0u;
        v461 = 0u;
        v462 = 0u;
        v463 = 0u;
        v230 = v417;
        v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v230, v231, &v460, &src, 16);
        if (v234)
        {
          v235 = *v461;
          do
          {
            for (m = 0; m != v234; ++m)
            {
              if (*v461 != v235)
              {
                objc_enumerationMutation(v230);
              }

              v237 = *(*(&v460 + 1) + 8 * m);
              v238 = objc_msgSend_boxesDict(v237, v232, v233);
              v240 = objc_msgSend_objectForKeyedSubscript_(v238, v239, @"lshaped");
              v241 = v240 == 0;

              if (!v241)
              {
                v242 = objc_msgSend_boxesDict(v237, v232, v233);
                v244 = objc_msgSend_objectForKeyedSubscript_(v242, v243, @"lshaped");
                sub_262211250(&v472, v244);
                sub_262329E20(&p_src, &v472);
              }
            }

            v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v230, v232, &v460, &src, 16);
          }

          while (v234);
        }

        sub_26237A1F8((v420 + 64), &v456, &p_src, v229);
        sub_262329F24(*(v420 + 264), v456, *(&v456 + 1), v245, v246, v247, v248, v249, v250);
        v256 = *(&v456 + 1);
        v255 = v456;
        if (*(&v456 + 1) != v456)
        {
          v257 = 0;
          while (1)
          {
            v258 = objc_msgSend_walls(v432, v251, v252);
            v260 = objc_msgSend_objectAtIndexedSubscript_(v258, v259, v257);

            v263 = objc_msgSend_identifier(v260, v261, v262);
            v266 = objc_msgSend_UUIDString(v263, v264, v265);
            v267 = v266;
            v270 = objc_msgSend_UTF8String(v266, v268, v269);
            sub_2621D0F64(v447, v270);

            if ((*(v456 + 96 * v257 + 32) & 1) == 0)
            {
              break;
            }

LABEL_213:
            if (v448 < 0)
            {
              operator delete(v447[0]);
            }

            ++v257;
            v256 = *(&v456 + 1);
            v255 = v456;
            if (0xAAAAAAAAAAAAAAABLL * ((*(&v456 + 1) - v456) >> 5) <= v257)
            {
              goto LABEL_216;
            }
          }

          v444 = 0;
          v445 = 0;
          v446 = 0;
          LODWORD(v472) = 0;
          v271 = *(v420 + 200);
          v272 = *(v420 + 208);
          if (v272 == v271)
          {
            v284 = 0;
            v285 = (v456 + 96 * v257);
          }

          else
          {
            v273 = 0;
            v274 = 0;
            do
            {
              v275 = v271 + v273;
              v276 = *(v271 + v273 + 31);
              if (v276 >= 0)
              {
                v277 = *(v271 + v273 + 31);
              }

              else
              {
                v277 = *(v271 + v273 + 16);
              }

              v278 = v448;
              if ((v448 & 0x80u) != 0)
              {
                v278 = v447[1];
              }

              if (v277 == v278)
              {
                v281 = *(v275 + 8);
                v279 = v275 + 8;
                v280 = v281;
                v282 = (v276 >= 0 ? v279 : v280);
                v283 = (v448 & 0x80u) == 0 ? v447 : v447[0];
                if (!memcmp(v282, v283, v277))
                {
                  sub_2621C7CD0(&v444, &v472);
                  v271 = *(v420 + 200);
                  v272 = *(v420 + 208);
                }
              }

              LODWORD(v472) = ++v274;
              v273 += 96;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 5) > v274);
            v284 = v444;
            v285 = (v456 + 96 * v257);
            if (v445 != v444)
            {
              sub_26232B028(&v472, v271 + 96 * *v444);
              v476 = 1;
              sub_26232B13C(v420 + 224, &v472, v285, v286);
              if (v476 == 1)
              {
                sub_262324EC8(&v472);
              }

LABEL_212:
              v445 = v284;
              operator delete(v284);
              goto LABEL_213;
            }
          }

          while (v271 != v272)
          {
            v288 = v285[5];
            v287 = v285[6];
            if (v287 == v288)
            {
              v290 = 0;
              LOBYTE(v442) = 0;
            }

            else
            {
              v289 = *(*(v288 + 40) + 16);
              *(&v289 + 1) = *(*(v287 - 80) + 64);
              v442 = v289;
              v290 = 1;
            }

            v443 = v290;
            v292 = *(v271 + 40);
            v291 = *(v271 + 48);
            if (v291 == v292)
            {
              v294 = 0;
              LOBYTE(v440) = 0;
            }

            else
            {
              v293 = *(*(v292 + 40) + 16);
              *(&v293 + 1) = *(*(v291 - 80) + 64);
              v440 = v293;
              v294 = 1;
            }

            v441 = v294;
            if (v290 && v294)
            {
              sub_26223FEB8(&__p, &v442, &v440);
              v295 = vsub_f32(*&v442, *(&v442 + 8));
              v296 = vmul_f32(v295, v295);
              v297 = vsub_f32(*&v440, *(&v440 + 8));
              v298 = vmul_f32(v297, v297);
              v299 = vsqrt_f32(vadd_f32(vzip1_s32(v298, v296), vzip2_s32(v298, v296)));
              if (v299.f32[0] >= v299.f32[1])
              {
                v299.f32[0] = v299.f32[1];
              }

              if (v299.f32[0] >= 1.0)
              {
                v300 = 10.0;
              }

              else
              {
                v300 = 20.0;
              }

              if (*(&__p + 2) >= 0.3 && *(&v469 + 2) < v300 && *(&v469 + 1) < 0.2)
              {
                sub_26232B028(&v472, v271);
                v476 = 1;
                sub_26232B13C(v420 + 224, &v472, v285, v301);
                if (v476 == 1)
                {
                  sub_262324EC8(&v472);
                }
              }
            }

            v271 += 96;
          }

          if (!v284)
          {
            goto LABEL_213;
          }

          goto LABEL_212;
        }

LABEL_216:
        v303 = *(v420 + 200);
        v302 = *(v420 + 208);
        if (v302 != v303)
        {
          v304 = v302 - 12;
          v305 = v302 - 12;
          v306 = v302 - 12;
          do
          {
            v307 = *v306;
            v306 -= 12;
            (*v307)(v305);
            v304 -= 12;
            v108 = v305 == v303;
            v305 = v306;
          }

          while (!v108);
          v256 = *(&v456 + 1);
          v255 = v456;
        }

        *(v420 + 208) = v303;
        while (v255 != v256)
        {
          sub_2623288BC((v420 + 200), v255, v253, v254);
          v255 += 96;
        }

        sub_26232BAE8(&v456, v432);
        kdebug_trace();
        if (p_src)
        {
          operator delete(p_src);
        }

        if (v452)
        {
          operator delete(v452);
        }

        *&v472 = &v456;
        sub_2621DEC58(&v472);

        p_p_src = &v438;
      }

      else
      {
        LODWORD(p_src) = 13887;
        v450 = 0;
        kdebug_trace();
        v200 = v410;
        v436 = v412;
        v433 = v411;
        v460 = 0uLL;
        *&v461 = 0;
        v456 = 0uLL;
        *&v457 = 0;
        kdebug_trace();
        v470 = 0u;
        v471 = 0u;
        __p = 0u;
        v469 = 0u;
        v203 = objc_msgSend_walls(v436, v201, v202);
        v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v204, &__p, v482, 16);
        if (v207)
        {
          v208 = 0;
          v209 = *v469;
          do
          {
            for (n = 0; n != v207; ++n)
            {
              if (*v469 != v209)
              {
                objc_enumerationMutation(v203);
              }

              v211 = *(*(&__p + 1) + 8 * n);
              objc_msgSend_quad(v211, v205, v206);
              LODWORD(src) = v212;
              sub_2621C8F2C(&v456, &src);
              sub_262328B1C(&src, v420 + 8, v200, v211);
              v481 = v208;
              sub_2623288BC(&v460, &src, v213, v214);
              ++v208;
              sub_262324EC8(&src);
            }

            v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v205, &__p, v482, 16);
          }

          while (v207);
        }

        kdebug_trace();
        kdebug_trace();
        v215 = v456;
        if (*(&v456 + 1) == v456)
        {
          v222 = 2.7;
        }

        else
        {
          v216 = (v456 + 4);
          v217 = v456;
          if (v456 + 4 != *(&v456 + 1))
          {
            v218 = *v456;
            v217 = v456;
            v219 = (v456 + 4);
            do
            {
              v220 = *v219++;
              v221 = v220;
              if (v218 < v220)
              {
                v218 = v221;
                v217 = v216;
              }

              v216 = v219;
            }

            while (v219 != *(&v456 + 1));
          }

          v222 = *v217;
        }

        v452 = 0uLL;
        *&v453 = 0;
        v464 = 0u;
        v465 = 0u;
        v466 = 0u;
        v467 = 0u;
        v309 = v433;
        v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(v309, v310, &v464, &src, 16);
        if (v313)
        {
          v314 = *v465;
          do
          {
            for (ii = 0; ii != v313; ++ii)
            {
              if (*v465 != v314)
              {
                objc_enumerationMutation(v309);
              }

              v316 = *(*(&v464 + 1) + 8 * ii);
              v317 = objc_msgSend_boxesDict(v316, v311, v312);
              v319 = objc_msgSend_objectForKeyedSubscript_(v317, v318, @"lshaped");
              v320 = v319 == 0;

              if (!v320)
              {
                v321 = objc_msgSend_boxesDict(v316, v311, v312);
                v323 = objc_msgSend_objectForKeyedSubscript_(v321, v322, @"lshaped");
                sub_262211250(&v472, v323);
                sub_262329E20(&v452, &v472);
              }
            }

            v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(v309, v311, &v464, &src, 16);
          }

          while (v313);
        }

        sub_26237A1F8((v420 + 64), &v460, &v452, v222);
        sub_262329F24(*(v420 + 272), v460, *(&v460 + 1), v324, v325, v326, v327, v328, v329);
        sub_26232BAE8(&v460, v436);
        kdebug_trace();
        if (v452)
        {
          operator delete(v452);
        }

        if (v215)
        {
          operator delete(v215);
        }

        *&v472 = &v460;
        sub_2621DEC58(&v472);

        p_p_src = &p_src;
      }

      sub_2621CD534(p_p_src);
      v434 = v412;
      v330 = v424;
      v464 = 0u;
      v465 = 0u;
      v466 = 0u;
      v467 = 0u;
      v425 = v330;
      v333 = objc_msgSend_allKeys(v330, v331, v332);
      v336 = objc_msgSend_countByEnumeratingWithState_objects_count_(v333, v334, &v464, v482, 16);
      if (v336)
      {
        v337 = *v465;
        do
        {
          for (jj = 0; jj != v336; ++jj)
          {
            if (*v465 != v337)
            {
              objc_enumerationMutation(v333);
            }

            v339 = objc_msgSend_objectForKeyedSubscript_(v425, v335, *(*(&v464 + 1) + 8 * jj));
            if (objc_msgSend_count(v339, v340, v341))
            {
              v343 = objc_msgSend_objectAtIndexedSubscript_(v339, v342, 0);
              objc_msgSend_quad(v343, v344, v345);
              v437 = v346;

              v349 = v437;
              for (kk = 1; kk < objc_msgSend_count(v339, v347, v348); ++kk)
              {
                v352 = objc_msgSend_objectAtIndexedSubscript_(v339, v351, kk);
                objc_msgSend_quad(v352, v353, v354);
                if (v349 < v355)
                {
                  v349 = v355;
                }
              }

              v462 = 0u;
              v463 = 0u;
              v460 = 0u;
              v461 = 0u;
              v356 = v339;
              v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v356, v357, &v460, &src, 16);
              if (v358)
              {
                v359 = *v461;
                do
                {
                  v360 = 0;
                  do
                  {
                    if (*v461 != v359)
                    {
                      objc_enumerationMutation(v356);
                    }

                    v361 = *(*(&v460 + 1) + 8 * v360);
                    if (v361)
                    {
                      *(v361 + 280) = v349;
                      *(v361 + 296) = v349;
                      sub_2622C534C(v361, 0);
                      *(v361 + 16) = *(v361 + 8);
                      *(v361 + 88) = *(v361 + 80);
                      *(v361 + 40) = *(v361 + 32);
                      *(v361 + 64) = *(v361 + 56);
                    }

                    else
                    {
                      sub_2622C534C(0, 0);
                    }

                    ++v360;
                  }

                  while (v358 != v360);
                  v363 = objc_msgSend_countByEnumeratingWithState_objects_count_(v356, v362, &v460, &src, 16);
                  v358 = v363;
                }

                while (v363);
              }
            }
          }

          v336 = objc_msgSend_countByEnumeratingWithState_objects_count_(v333, v335, &v464, v482, 16);
        }

        while (v336);
      }

      v366 = objc_msgSend_curvedWalls(v434, v364, v365);
      v369 = objc_msgSend_count(v366, v367, v368) == 0;

      if (!v369)
      {
        v372 = objc_msgSend_array(MEMORY[0x277CBEB18], v370, v371);
        v458 = 0u;
        v459 = 0u;
        v456 = 0u;
        v457 = 0u;
        v375 = objc_msgSend_walls(v434, v373, v374);
        v377 = objc_msgSend_countByEnumeratingWithState_objects_count_(v375, v376, &v456, &v472, 16);
        if (v377)
        {
          v378 = *v457;
          do
          {
            for (mm = 0; mm != v377; ++mm)
            {
              if (*v457 != v378)
              {
                objc_enumerationMutation(v375);
              }

              v380 = *(*(&v456 + 1) + 8 * mm);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_msgSend_addObject_(v372, v381, v380);
              }
            }

            v377 = objc_msgSend_countByEnumeratingWithState_objects_count_(v375, v381, &v456, &v472, 16);
          }

          while (v377);
        }

        sub_2622AE900(v434, v372);
        v454 = 0u;
        v455 = 0u;
        v452 = 0u;
        v453 = 0u;
        v384 = objc_msgSend_curvedWalls(v434, v382, v383);
        v388 = objc_msgSend_countByEnumeratingWithState_objects_count_(v384, v385, &v452, &__p, 16);
        if (v388)
        {
          v389 = *v453;
          do
          {
            v390 = 0;
            do
            {
              if (*v453 != v389)
              {
                objc_enumerationMutation(v384);
              }

              v391 = *(*(&v452 + 1) + 8 * v390);
              v392 = objc_msgSend_identifier(v391, v386, v387);
              v394 = objc_msgSend_objectForKey_(v425, v393, v392);
              v395 = v394 == 0;

              if (!v395)
              {
                v396 = objc_msgSend_identifier(v391, v386, v387);
                v398 = objc_msgSend_objectForKeyedSubscript_(v425, v397, v396);

                if (objc_msgSend_count(v398, v399, v400))
                {
                  v402 = objc_msgSend_objectAtIndexedSubscript_(v398, v401, 0);
                  objc_msgSend_quad(v402, v403, v404);
                  if (v391)
                  {
                    *(v391 + 352) = v405;

                    v406 = *(v391 + 352);
                    *(v391 + 280) = v406;
                    *(v391 + 296) = v406;
                    *(v391 + 16) = *(v391 + 8);
                    *(v391 + 88) = *(v391 + 80);
                    *(v391 + 40) = *(v391 + 32);
                    *(v391 + 64) = *(v391 + 56);
                  }

                  else
                  {
                  }
                }
              }

              ++v390;
            }

            while (v388 != v390);
            v407 = objc_msgSend_countByEnumeratingWithState_objects_count_(v384, v386, &v452, &__p, 16);
            v388 = v407;
          }

          while (v407);
        }
      }

      v52 = v413;
      v413 = v434;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = v413;
    v413 = 0;
  }

  return v413;
}

void sub_2621E12B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (v64)
  {
    operator delete(v64);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (a55)
  {
    operator delete(a55);
  }

  STACK[0x2F0] = &a63;
  sub_2621DEC58(&STACK[0x2F0]);

  sub_2621CD534(&a38);
  _Unwind_Resume(a1);
}

void sub_2621E188C(void *a1)
{
  if (a1)
  {
    sub_2622C5BB4(a1[2]);
    v3 = a1[25];
    v2 = a1[26];
    if (v2 != v3)
    {
      v4 = v2 - 12;
      v5 = v2 - 12;
      v6 = v2 - 12;
      do
      {
        v7 = *v6;
        v6 -= 12;
        (*v7)(v5);
        v4 -= 12;
        v8 = v5 == v3;
        v5 = v6;
      }

      while (!v8);
    }

    v10 = a1[31];
    v9 = a1 + 31;
    *(v9 - 5) = v3;
    sub_2621CC7B4(v10);
    *v9 = 0;
    v9[1] = 0;
    *(v9 - 1) = v9;
  }
}

int32x4_t sub_2621E1968(uint64_t a1, uint64_t a2, __n128 a3, double a4)
{
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  v9 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v9;
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  v11 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  v12 = *(a2 + 192);
  *(a1 + 192) = v12;
  v13 = *(a2 + 200);
  *(a1 + 200) = v13;
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 48) = a3.n128_u64[0];
  *a1 = a3.n128_u64[0];
  *(a1 + 16) = a4;
  *(a1 + 32) = a4;
  *(a1 + 64) = a3.n128_u64[0];
  v16 = *(a1 + 40);
  *(a1 + 80) = a4;
  v17 = vsubq_f32(*(a1 + 64), *(a1 + 80));
  v18 = v17.f32[1];
  v35 = v17;
  v19 = atan2f(v17.f32[0], v17.f32[1]);
  *(a1 + 100) = v19;
  v22 = __sincosf_stret(v19);
  *&v23 = -v22.__sinval;
  HIDWORD(v23) = LODWORD(v22.__cosval);
  *(a1 + 120) = 0;
  *(a1 + 112) = __PAIR64__(LODWORD(v22.__sinval), LODWORD(v22.__cosval));
  *(a1 + 136) = 0;
  *(a1 + 128) = v23;
  *(a1 + 152) = 1065353216;
  *(a1 + 144) = 0;
  v24 = vsubq_f32(*a1, *(a1 + 16));
  v25 = vmulq_f32(v24, v24);
  v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  v27 = COERCE_FLOAT(*(a1 + 8));
  v28 = COERCE_FLOAT(*(a1 + 24));
  if (v27 >= v28)
  {
    LODWORD(v29) = *(a1 + 8);
  }

  else
  {
    LODWORD(v29) = *(a1 + 24);
  }

  if (v29 < v16)
  {
    v29 = v16;
  }

  if (v28 < v27)
  {
    LODWORD(v27) = *(a1 + 24);
  }

  if (v16 < v27)
  {
    v27 = v16;
  }

  *(a1 + 160) = v26;
  *(a1 + 164) = v27;
  *(a1 + 168) = v29;
  *(a1 + 192) = objc_msgSend_copy(*(a2 + 192), v20, *&v21, *&a3);

  *(a1 + 200) = objc_msgSend_copy(*(a2 + 200), v30, v31);
  *(a1 + 96) = *(a2 + 96);
  result = vtrn1q_s32(COERCE_UNSIGNED_INT(-v18), v35);
  *(a1 + 176) = result;
  return result;
}

uint64_t *sub_2621E1B50(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621E1E94(a1, a2);
  }

  return a1;
}

uint64_t *sub_2621E1C0C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621E1DEC(a1, a2);
  }

  return a1;
}

void sub_2621E1CB0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621E1D40(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2621E1D94(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2621E1D94(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_2621E1DEC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2621E1E3C(a2);
  }

  sub_2621CBEB0();
}

void sub_2621E1E3C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2621E1E94(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2621E1EE4(a2);
  }

  sub_2621CBEB0();
}

void sub_2621E1EE4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2621E1F3C(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  v9 = 0;
  memset(v74, 0, sizeof(v74));
  v75 = 1065353216;
  while (v9 < objc_msgSend_count(v5, v6, v7))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v5, v10, v9);
    v14 = objc_msgSend_identifier(v11, v12, v13);
    v17 = objc_msgSend_UUIDString(v14, v15, v16);
    v18 = v17;
    v21 = objc_msgSend_UTF8String(v18, v19, v20);
    sub_2621D0F64(__p, v21);
    sub_2621E2488(v74, __p, __p);
    if (v73 < 0)
    {
      operator delete(__p[0]);
    }

    if ((objc_msgSend_isEqualToString_(v8, v22, @"conservative") & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v23, @"aggressive") & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v23, @"ultimate")) && (objc_msgSend_type(v11, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v25, v26, @"Chair"), v25, isEqualToString))
    {
      v28 = *a2;
      if (a2[1] != *a2)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = *(v28 + v29 + 144);
          v32 = objc_msgSend_identifier(v11, v23, v24);
          LODWORD(v31) = objc_msgSend_isEqual_(v31, v33, v32);

          if (v31)
          {
            sub_26223FC2C(v11, (*a2 + v29), v8);
            sub_26223FAB0(v11, *(*a2 + v29 + 184), *(*a2 + v29 + 176));
          }

          ++v30;
          v28 = *a2;
          v29 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6) > v30);
      }
    }

    else
    {
      v34 = *a2;
      if (a2[1] != *a2)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v37 = *(v34 + v35 + 144);
          v38 = objc_msgSend_identifier(v11, v23, v24);
          LODWORD(v37) = objc_msgSend_isEqual_(v37, v39, v38);

          if (v37)
          {
            sub_26223FC2C(v11, (*a2 + v35), v8);
            sub_26223FAB0(v11, *(*a2 + v35 + 184), *(*a2 + v35 + 176));
          }

          ++v36;
          v34 = *a2;
          v35 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6) > v36);
      }
    }

    ++v9;
  }

  if (objc_msgSend_isEqualToString_(v8, v10, @"lshaped"))
  {
    v42 = *a2;
    v43 = a2[1];
    if (*a2 != v43)
    {
      v68 = v5;
      do
      {
        v44 = objc_msgSend_UUIDString(*(v42 + 144), v40, v41);
        v45 = v44;
        v48 = objc_msgSend_UTF8String(v45, v46, v47);
        sub_2621D0F64(__p, v48);
        v49 = sub_2621E26D8(v74, __p);
        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49)
        {
          goto LABEL_44;
        }

        v50 = objc_alloc_init(RS3DObject);
        v53 = v50;
        if (v50)
        {
          objc_storeStrong(&v50->type, *(v42 + 128));
        }

        v54 = objc_msgSend_copy(*(v42 + 144), v51, v52);
        sub_26223FCBC(v53, v54);

        if (v53)
        {
          *(v53 + 44) = *(v42 + 136);
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        sub_2621C8E70(&v69, *(v42 + 152), *(v42 + 160), (*(v42 + 160) - *(v42 + 152)) >> 2);
        v56 = v69;
        v55 = v70;
        if (v69 == v70)
        {
          v66 = 0;
          if (!v53)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v57 = v43;
          v60 = objc_opt_new();
          if ((v55 - v56) <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = v55 - v56;
          }

          v63 = v56;
          do
          {
            LODWORD(v61) = *v63;
            v64 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v58, v59, v61);
            objc_msgSend_addObject_(v60, v65, v64);

            ++v63;
            --v62;
          }

          while (v62);
          v66 = objc_msgSend_copy(v60, v58, v59);

          v43 = v57;
          v5 = v68;
          if (!v53)
          {
            goto LABEL_39;
          }
        }

        objc_storeStrong((v53 + 72), v66);
LABEL_39:

        if (v56)
        {
          v70 = v56;
          operator delete(v56);
        }

        if (v53)
        {
          *(v53 + 40) = 1;
          *(v53 + 128) = xmmword_2623A76F0;
        }

        sub_26223FAB0(v53, *(v42 + 184), *(v42 + 176));
        sub_26223FC2C(v53, v42, v8);
        objc_msgSend_insertObject_atIndex_(v5, v67, v53, 0);

LABEL_44:
        v42 += 192;
      }

      while (v42 != v43);
    }
  }

  sub_2621E27D4(v74);
}

void sub_2621E23B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_2621E27D4(&a22);

  _Unwind_Resume(a1);
}

void sub_2621E2488(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }
}

void *sub_2621E26D8(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
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

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_2621D19D0(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_2621E27D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
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

void sub_2621E283C(uint64_t a1, void *a2)
{
  v35 = a2;
  objc_msgSend_quad(v35, v3, v4);
  v6 = v5;
  v6.i32[3] = 0;
  v8 = v7;
  v8.i32[3] = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0;
  v9 = v5.f32[2];
  v10 = v7.f32[2];
  *(a1 + 112) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 40) = DWORD2(v11);
  *a1 = v6;
  *(a1 + 16) = v8;
  *(a1 + 32) = v11;
  *(a1 + 44) = 0;
  *(a1 + 56) = v12;
  *(a1 + 48) = v13;
  *(a1 + 60) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = v7;
  v33 = v11;
  v34 = vsubq_f32(v5, v7);
  v14 = atan2f(*v34.i32, *&v34.i32[1]);
  *(a1 + 100) = v14;
  v17 = __sincosf_stret(v14);
  *&v18 = -v17.__sinval;
  HIDWORD(v18) = LODWORD(v17.__cosval);
  *(a1 + 120) = 0;
  *(a1 + 112) = __PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval));
  *(a1 + 136) = 0;
  *(a1 + 128) = v18;
  *(a1 + 152) = 1065353216;
  *(a1 + 144) = 0;
  v19 = vmulq_f32(v34, v34);
  v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  v21 = *(&v33 + 2);
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v22 = v10;
  }

  if (v22 < *(&v33 + 2))
  {
    v22 = *(&v33 + 2);
  }

  if (v10 >= v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v10;
  }

  if (*(&v33 + 2) >= v23)
  {
    v21 = v23;
  }

  *(a1 + 160) = v20;
  *(a1 + 164) = v21;
  *(a1 + 168) = v22;
  v24 = objc_msgSend_identifier(v35, v15, *&v16, v33);
  *(a1 + 192) = objc_msgSend_copy(v24, v25, v26);

  v29 = objc_msgSend_parentIdentifier(v35, v27, v28);
  *(a1 + 200) = objc_msgSend_copy(v29, v30, v31);

  if (v35)
  {
    v32 = v35[33];
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 96) = v32;
  *(a1 + 176) = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v34.i32[1]), v34);
}