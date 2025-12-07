llvm::Instruction *sub_23C527C64(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + *(*a1 - 24) + 344);
  if (a2)
  {
    v5 = *(v4 + 1352);
    v6 = sub_23C529724(a1, a2, a3);
  }

  else
  {
    v5 = *(v4 + 1344);
    v6 = sub_23C527D50(a1, a2, a3);
  }

  v12 = v6;
  if (v5)
  {
    v7 = strlen(v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C49EB10(a1 + *(*a1 - 24), v5, v7, *(a1 + *(*a1 - 24) + 192), *(a1 + *(*a1 - 24) + 192));
  v9 = (a1 + *(*a1 - 24));
  v11[16] = 257;
  return sub_23C497A7C(v9 + 1, *(v8 + 24), v8, &v12, 1, v11);
}

uint64_t sub_23C527D50(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = llvm::User::operator new(0x58);
  v8 = "agc.amp.count";
  v9 = 259;
  v5 = llvm::GlobalVariable::GlobalVariable();
  *(v5 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C(a1 + *(*a1 - 24), v4, 0x54u, 0);
  v6 = (a1 + *(*a1 - 24));
  v9 = 257;
  return sub_23C497C88(v6 + 1, **(*v4 + 16), v4, 0, &v8);
}

unint64_t sub_23C527E70(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 4;
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return sub_23C529844(k, (k + 16), a2 - 4);
        case 4:
          result = sub_23C529844(k, (k + 16), (k + 32));
          v44 = *v8;
          v45 = *(k + 32);
          if (*v8 >= v45)
          {
            if (v45 < v44)
            {
              return result;
            }

            v47 = *(a2 - 1);
            v46 = *(k + 40);
            if (v47 >= v46)
            {
              return result;
            }
          }

          else
          {
            v46 = *(k + 40);
            v47 = *(a2 - 1);
          }

          *(k + 32) = v44;
          *(a2 - 4) = v45;
          *(k + 40) = v47;
          *(a2 - 1) = v46;
          v48 = *(k + 32);
          v49 = *(k + 16);
          if (v48 >= v49)
          {
            if (v49 < v48)
            {
              return result;
            }

            v51 = *(k + 40);
            v50 = *(k + 24);
            if (v51 >= v50)
            {
              return result;
            }
          }

          else
          {
            v50 = *(k + 24);
            v51 = *(k + 40);
          }

          *(k + 16) = v48;
          *(k + 32) = v49;
          *(k + 24) = v51;
          *(k + 40) = v50;
          v52 = *k;
          if (v48 >= *k)
          {
            if (v52 < v48)
            {
              return result;
            }

            v53 = *(k + 8);
            if (v51 >= v53)
            {
              return result;
            }
          }

          else
          {
            v53 = *(k + 8);
          }

          *k = v48;
          *(k + 16) = v52;
          *(k + 8) = v51;
          *(k + 24) = v53;
          return result;
        case 5:

          return sub_23C52998C(k, k + 16, k + 32, k + 48, a2 - 4);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v54 = *v8;
        v55 = *k;
        if (*v8 >= *k)
        {
          if (v55 < v54)
          {
            return result;
          }

          v57 = *(a2 - 1);
          v56 = *(k + 8);
          if (v57 >= v56)
          {
            return result;
          }
        }

        else
        {
          v56 = *(k + 8);
          v57 = *(a2 - 1);
        }

        *k = v54;
        *(a2 - 4) = v55;
        *(k + 8) = v57;
        *(a2 - 1) = v56;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v73 = (v10 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 >= v74)
        {
          v76 = (2 * v74) | 1;
          v77 = k + 16 * v76;
          if (2 * v75 + 2 < v10)
          {
            v78 = *(v77 + 16);
            if (*v77 < v78 || v78 >= *v77 && *(v77 + 8) < *(v77 + 24))
            {
              v77 += 16;
              v76 = 2 * v75 + 2;
            }
          }

          v79 = k + 16 * v75;
          v80 = *v77;
          v81 = *v79;
          if (*v77 >= *v79)
          {
            if (v81 < v80)
            {
              v82 = *(v79 + 8);
              v83 = *(v77 + 8);
LABEL_147:
              *v79 = v80;
              *(v79 + 8) = v83;
              if (v73 >= v76)
              {
                while (1)
                {
                  v85 = 2 * v76;
                  v76 = (2 * v76) | 1;
                  v84 = k + 16 * v76;
                  v86 = v85 + 2;
                  if (v86 < v10)
                  {
                    result = *(v84 + 16);
                    if (*v84 < result || result >= *v84 && (result = *(v84 + 8), result < *(v84 + 24)))
                    {
                      v84 += 16;
                      v76 = v86;
                    }
                  }

                  v87 = *v84;
                  if (*v84 < v81)
                  {
                    break;
                  }

                  v88 = *(v84 + 8);
                  if (v81 >= v87 && v88 < v82)
                  {
                    break;
                  }

                  *v77 = v87;
                  *(v77 + 8) = v88;
                  v77 = v84;
                  if (v73 < v76)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v84 = v77;
LABEL_149:
              *v84 = v81;
              *(v84 + 8) = v82;
              goto LABEL_150;
            }

            v83 = *(v77 + 8);
            v82 = *(v79 + 8);
            if (v83 >= v82)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v74 = v75 - 1;
        if (!v75)
        {
          while (1)
          {
            v92 = 0;
            v93 = *k;
            v94 = *(k + 8);
            v95 = k;
            do
            {
              v96 = v95;
              v97 = v95 + 16 * v92;
              v95 = v97 + 16;
              v98 = 2 * v92;
              v92 = (2 * v92) | 1;
              v99 = v98 + 2;
              if (v99 < v10)
              {
                result = *(v97 + 32);
                v100 = *(v97 + 16);
                if (v100 < result || result >= v100 && (result = *(v97 + 24), result < *(v97 + 40)))
                {
                  v95 = v97 + 32;
                  v92 = v99;
                }
              }

              *v96 = *v95;
              *(v96 + 8) = *(v95 + 8);
            }

            while (v92 <= (v10 - 2) / 2);
            if (v95 == a2 - 4)
            {
              *v95 = v93;
              *(v95 + 8) = v94;
            }

            else
            {
              *v95 = *(a2 - 4);
              *(v95 + 8) = *(a2 - 1);
              *(a2 - 4) = v93;
              *(a2 - 1) = v94;
              v101 = (v95 - k + 16) >> 4;
              v102 = v101 - 2;
              if (v101 >= 2)
              {
                v103 = v102 >> 1;
                v104 = k + 16 * (v102 >> 1);
                v105 = *v104;
                v106 = *v95;
                if (*v104 < *v95)
                {
                  v91 = *(v95 + 8);
                  v90 = *(v104 + 8);
LABEL_179:
                  *v95 = v105;
                  *(v95 + 8) = v90;
                  if (v102 >= 2)
                  {
                    while (1)
                    {
                      v108 = v103 - 1;
                      v103 = (v103 - 1) >> 1;
                      v107 = k + 16 * v103;
                      v109 = *v107;
                      if (*v107 >= v106)
                      {
                        if (v106 < v109)
                        {
                          break;
                        }

                        v110 = *(v107 + 8);
                        if (v110 >= v91)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v110 = *(v107 + 8);
                      }

                      *v104 = v109;
                      *(v104 + 8) = v110;
                      v104 = k + 16 * v103;
                      if (v108 <= 1)
                      {
                        goto LABEL_186;
                      }
                    }
                  }

                  v107 = v104;
LABEL_186:
                  *v107 = v106;
                  *(v107 + 8) = v91;
                  goto LABEL_188;
                }

                if (v106 >= v105)
                {
                  v90 = *(v104 + 8);
                  v91 = *(v95 + 8);
                  if (v90 < v91)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_188:
            a2 -= 4;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = k + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = sub_23C529844((v7 + 16 * (v10 >> 1)), v7, a2 - 4);
    }

    else
    {
      sub_23C529844(v7, (v7 + 16 * (v10 >> 1)), a2 - 4);
      sub_23C529844((v7 + 16), (v12 - 16), a2 - 8);
      sub_23C529844((v7 + 32), (v7 + 16 + 16 * v11), a2 - 12);
      result = sub_23C529844((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      v14 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
    }

    --a3;
    v15 = *v7;
    if ((a4 & 1) != 0 || (v16 = *(v7 - 16), v16 < v15))
    {
LABEL_19:
      v18 = *(v7 + 8);
      for (i = v7 + 16; ; i += 16)
      {
        v20 = *i;
        if (*i >= v15 && (v15 < v20 || *(i + 8) >= v18))
        {
          break;
        }
      }

      if (i - 16 == v7)
      {
        j = a2;
        if (i < a2)
        {
          v24 = *v8;
          j = a2 - 4;
          if (*v8 >= v15)
          {
            j = a2 - 4;
            do
            {
              if (v15 >= v24)
              {
                if (*(j + 1) < v18 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v26 = *(j - 4);
              j -= 4;
              v24 = v26;
            }

            while (v26 >= v15);
          }
        }
      }

      else
      {
        v21 = *v8;
        for (j = a2 - 4; v21 >= v15 && (v15 < v21 || *(j + 1) >= v18); j -= 4)
        {
          v23 = *(j - 4);
          v21 = v23;
        }
      }

      k = i;
      if (i < j)
      {
        v27 = *j;
        k = i;
        v28 = j;
        do
        {
          *k = v27;
          *v28 = v20;
          v29 = *(k + 8);
          *(k + 8) = *(v28 + 1);
          *(v28 + 1) = v29;
          do
          {
            do
            {
              v30 = *(k + 16);
              k += 16;
              v20 = v30;
            }

            while (v30 < v15);
          }

          while (v15 >= v20 && *(k + 8) < v18);
          do
          {
            v31 = *(v28 - 4);
            v28 -= 4;
            v27 = v31;
          }

          while (v31 >= v15 && (v15 < v27 || *(v28 + 1) >= v18));
        }

        while (k < v28);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      *(k - 16) = v15;
      *(k - 8) = v18;
      if (i < j)
      {
LABEL_56:
        result = sub_23C527E70(v7, (k - 16), a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v32 = sub_23C529BAC(v7, k - 16);
        result = sub_23C529BAC(k, a2);
        if (result)
        {
          a2 = (k - 16);
          if (v32)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v32)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v15 < v16)
      {
        v17 = *(v7 + 8);
      }

      else
      {
        v17 = *(v7 + 8);
        if (*(v7 - 8) < v17)
        {
          goto LABEL_19;
        }
      }

      v33 = *v8;
      if (v15 < *v8 || v33 >= v15 && v17 < *(a2 - 1))
      {
        k = v7;
        do
        {
          v35 = *(k + 16);
          k += 16;
          v34 = v35;
        }

        while (v15 >= v35 && (v34 < v15 || v17 >= *(k + 8)));
      }

      else
      {
          ;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 4; v15 < v33 || v33 >= v15 && v17 < *(m + 1); m -= 4)
        {
          v37 = *(m - 4);
          v33 = v37;
        }
      }

      if (k < m)
      {
        v38 = *k;
        v39 = *m;
        do
        {
          *k = v39;
          *m = v38;
          v40 = *(k + 16);
          k += 16;
          v38 = v40;
          v41 = *(k - 8);
          *(k - 8) = *(m + 1);
          *(m + 1) = v41;
          while (v15 >= v38 && (v38 < v15 || v17 >= *(k + 8)))
          {
            v42 = *(k + 16);
            k += 16;
            v38 = v42;
          }

          do
          {
            do
            {
              v43 = *(m - 4);
              m -= 4;
              v39 = v43;
            }

            while (v15 < v43);
          }

          while (v39 >= v15 && v17 < *(m + 1));
        }

        while (k < m);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      a4 = 0;
      *(k - 16) = v15;
      *(k - 8) = v17;
    }
  }

  v58 = (k + 16);
  v60 = k == a2 || v58 == a2;
  if ((a4 & 1) == 0)
  {
    if (v60)
    {
      return result;
    }

    while (1)
    {
      v112 = v7;
      v7 = v58;
      v113 = *(v112 + 16);
      v114 = *v112;
      if (v113 < *v112)
      {
        break;
      }

      if (v114 >= v113)
      {
        v115 = *(v112 + 24);
        if (v115 < *(v112 + 8))
        {
          goto LABEL_200;
        }
      }

LABEL_206:
      v58 = (v7 + 16);
      if ((v7 + 16) == a2)
      {
        return result;
      }
    }

    v115 = *(v112 + 24);
    do
    {
      do
      {
LABEL_200:
        v116 = v112;
        v117 = v114;
        v118 = *(v112 - 16);
        v112 -= 16;
        v114 = v118;
        *(v112 + 32) = v117;
        *(v112 + 40) = *(v112 + 24);
      }

      while (v113 < v118);
    }

    while (v114 >= v113 && v115 < *(v116 - 8));
    *v116 = v113;
    *(v116 + 8) = v115;
    goto LABEL_206;
  }

  if (v60)
  {
    return result;
  }

  v61 = 0;
  v62 = k;
  while (2)
  {
    v63 = v62;
    v62 = v58;
    v64 = *(v63 + 16);
    v65 = *v63;
    if (v64 >= *v63)
    {
      if (v65 < v64)
      {
        goto LABEL_133;
      }

      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
      if (v66 >= v67)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
    }

    *(v63 + 16) = v65;
    *(v62 + 8) = v67;
    v68 = k;
    if (v63 == k)
    {
      goto LABEL_132;
    }

    v69 = v61;
    while (2)
    {
      v70 = *(k + v69 - 16);
      if (v64 < v70)
      {
        v71 = *(k + v69 - 8);
        goto LABEL_126;
      }

      if (v70 >= v64)
      {
        v68 = k + v69;
        v71 = *(k + v69 - 8);
        if (v66 >= v71)
        {
          goto LABEL_132;
        }

LABEL_126:
        v63 -= 16;
        v72 = k + v69;
        *v72 = v70;
        *(v72 + 8) = v71;
        v69 -= 16;
        if (!v69)
        {
          v68 = k;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v68 = v63;
LABEL_132:
    *v68 = v64;
    *(v68 + 8) = v66;
LABEL_133:
    v58 = (v62 + 16);
    v61 += 16;
    if ((v62 + 16) != a2)
    {
      continue;
    }

    return result;
  }
}

llvm::Instruction *sub_23C5288D0(void *a1, unsigned __int8 *a2, uint64_t a3, char a4, int a5, int a6)
{
  v7 = a2;
  v64 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v9 + 16);
  }

  v10 = (a1 + *(*a1 - 24));
  v11 = v9 == v10[20] || v9 == v10[19];
  v12 = v10[43];
  if (a5 > 2)
  {
    v13 = 1256;
    if (a6)
    {
      v13 = 1320;
    }

    v14 = 1272;
    if (a6)
    {
      v14 = 1328;
    }

    v16 = 1280;
    if (a6)
    {
      v16 = 1336;
    }

    if (a5 != 4)
    {
      v14 = v16;
    }

    v15 = a5 == 3;
    goto LABEL_23;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v13 = 1224;
      if (v11)
      {
        v13 = 1232;
      }

      v14 = 1288;
      if (v11)
      {
        v14 = 1296;
      }

      v15 = a6 == 0;
LABEL_23:
      if (!v15)
      {
        v13 = v14;
      }

      goto LABEL_30;
    }

    v17 = a6 == 0;
    v13 = 1248;
    v18 = 1312;
  }

  else
  {
    v17 = a6 == 0;
    v13 = 1240;
    v18 = 1304;
  }

  if (!v17)
  {
    v13 = v18;
  }

LABEL_30:
  v19 = *(v12 + 1635);
  v20 = *(v12 + v13);
  v15 = !v11;
  v21 = 24;
  if (!v15)
  {
    v21 = 20;
  }

  v22 = v10[v21];
  if (v20)
  {
    v23 = strlen(v20);
  }

  else
  {
    v23 = 0;
  }

  v52 = v19 & a4;
  v24 = sub_23C49B938(v10, v20, v23, v10[18], v10[73], v22);
  v25 = *v7;
  if (*v7 && *(v25 + 8) == 18)
  {
    v26 = *(v25 + 32);
    memset(v63, 0, sizeof(v63));
    v27 = v7[16];
    v28 = a1 + *(*a1 - 24);
    if (v27 < 0x15 || (v27 & 0xFE) == 0x5A)
    {
      sub_23C505D44(v28, v7, v63);
      if (!v26)
      {
        return sub_23C4D9264(v7);
      }

      v35 = v63;
      v36 = v26;
      do
      {
        *v35 = sub_23C504FD4(a1 + *(*a1 - 24), *v35, v9, 1, *(*(a1 + *(*a1 - 24) + 344) + 1640));
        ++v35;
        --v36;
      }

      while (v36);
    }

    else
    {
      v7 = sub_23C504FD4(v28, v7, v9, 1, *(*(v28 + 43) + 1640));
      sub_23C505D44(a1 + *(*a1 - 24), v7, v63);
    }

    if (v26)
    {
      v51 = v7;
      v37 = 0;
      v38 = a1 + 1;
      v39 = a1 + 73;
      do
      {
        v40 = *(v63 + v37);
        v41 = a1 + *(*a1 - 24);
        v42 = v52 ^ 1;
        if (v9 != *(v41 + 19))
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          v43 = v39;
          v44 = v24;
          v45 = v9;
          v46 = v26;
          v47 = *(v41 + 43);
          v59 = *(v41 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v60, (v41 + 8));
          v61 = *(v41 + 26);
          v40 = (*(*v47 + 128))(v47, &v59, v40);
          if (v60)
          {
            llvm::MetadataTracking::untrack();
          }

          v26 = v46;
          v9 = v45;
          v24 = v44;
          v39 = v43;
        }

        v48 = llvm::ConstantInt::get();
        v49 = *(*a1 - 24);
        v58 = 257;
        v62[0] = sub_23C49A474(v38 + v49, a3, v48, v57);
        v62[1] = v40;
        v50 = *(*a1 - 24);
        v58 = 257;
        sub_23C497A7C((v38 + v50), *(v24 + 24), v24, v62, 2, v57);
        ++v37;
      }

      while (v26 != v37);
      v7 = v51;
    }

    return sub_23C4D9264(v7);
  }

  v29 = sub_23C504FD4(a1 + *(*a1 - 24), v7, v9, 1, *(*(a1 + *(*a1 - 24) + 344) + 1640));
  v30 = a1 + *(*a1 - 24);
  v31 = v52 ^ 1;
  if (v9 != *(v30 + 19))
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = *(v30 + 43);
    v54 = *(v30 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v55, (v30 + 8));
    v56 = *(v30 + 26);
    v29 = (*(*v32 + 128))(v32, &v54, v29);
    if (v55)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  *&v63[0] = a3;
  *(&v63[0] + 1) = v29;
  v33 = (a1 + *(*a1 - 24));
  v58 = 257;
  return sub_23C497A7C(v33 + 1, *(v24 + 24), v24, v63, 2, v57);
}

uint64_t sub_23C528E20(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = llvm::User::operator new(0x58);
  v8 = "agc.layered_vrr_enabled";
  v9 = 259;
  v5 = llvm::GlobalVariable::GlobalVariable();
  *(v5 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C(a1 + *(*a1 - 24), v4, 0x6Cu, 0);
  v6 = (a1 + *(*a1 - 24));
  v9 = 257;
  return sub_23C497C88(v6 + 1, **(*v4 + 16), v4, 0, &v8);
}

uint64_t *sub_23C528F40(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A78;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *sub_23C529020(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F28A78;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FB49C(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C529340(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t sub_23C5290E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_284F28A78;
    sub_23C4DDEAC((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F28A78;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F28A78;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C529340(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t sub_23C529340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C5293F4(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *sub_23C5293F4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C528F40(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F28A78;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C528F40(a1);
  }
}

uint64_t sub_23C529608(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F28A78;
    result = sub_23C4DDEAC((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t sub_23C529724(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = llvm::User::operator new(0x58);
  v8 = "agc.amp.mask";
  v9 = 259;
  v5 = llvm::GlobalVariable::GlobalVariable();
  *(v5 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C(a1 + *(*a1 - 24), v4, 0x55u, 0);
  v6 = (a1 + *(*a1 - 24));
  v9 = 257;
  return sub_23C497C88(v6 + 1, **(*v4 + 16), v4, 0, &v8);
}

unsigned int *sub_23C529844(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 1) < *(result + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 1);
      *(result + 1) = v6;
      *(a3 + 1) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v15 = *(a2 + 1);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 1);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 1);
    *(result + 1) = v15;
    *(a2 + 1) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 1);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 1) = v18;
    *(a3 + 1) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 1);
    v9 = *(a2 + 1);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 1) = v10;
  *(a3 + 1) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 1);
    v14 = *(a2 + 1);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 1) = v14;
    *(a2 + 1) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 1);
    v13 = *(result + 1);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}

unsigned int *sub_23C52998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  result = sub_23C529844(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL sub_23C529BAC(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_23C529844(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        sub_23C529844(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        sub_23C52998C(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
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
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  sub_23C529844(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t sub_23C529E64(uint64_t *a1)
{
  v2 = *(a1[20] + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 24;
  }

  else
  {
    v5 = 0;
  }

  sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v5);
  v6 = a1[20];
  if (*(v6 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[20]);
    v8 = a1[20];
    v7 = *(v6 + 88);
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[20]);
    }

    v6 = v8;
  }

  else
  {
    v7 = *(v6 + 88);
  }

  for (i = *(v6 + 88) + 40 * *(v6 + 96); v7 != i; v7 += 40)
  {
    v10 = *(a1[9] + 8 * *(v7 + 32));
    if (*(v7 + 8))
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && sub_23C4A57A0(*(v10 - 8 * *(v10 + 8) + 8), "air.vertex_transform_feedback"))
    {
      v15 = 0;
      v14 = 0;
      LODWORD(v13) = 3;
      sub_23C506AF0(0, v10, &v13, &v15 + 1);
      LODWORD(v13) = 5;
      sub_23C506AF0(0, v10, &v13, &v15);
      LODWORD(v13) = 7;
      sub_23C506AF0(0, v10, &v13, &v14);
      operator new();
    }
  }

  return 1;
}

uint64_t sub_23C52A428(uint64_t a1)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v2 = sub_23C4FDCE0(a1);
  if (v2)
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v4 = Function;
      v12[0] = v13;
      v12[1] = 0x1000000000;
      v5 = *(a1 + 152);
      if (*(v5 + 18))
      {
        llvm::Function::BuildLazyArguments(*(a1 + 152));
        v7 = *(a1 + 152);
        v6 = *(v5 + 11);
        if (*(v7 + 9))
        {
          llvm::Function::BuildLazyArguments(v7);
        }

        v5 = v7;
      }

      else
      {
        v6 = *(v5 + 11);
      }

      v8 = *(v5 + 11) + 40 * *(v5 + 12);
      while (v6 != v8)
      {
        sub_23C49B500(v12, v6);
        v6 += 40;
      }

      v9 = *(v4 + 1);
      while (v9)
      {
        v10 = *(v9 + 24);
        v9 = *(v9 + 8);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
      }

      llvm::Function::eraseFromParent(v4);
      if (v12[0] != v13)
      {
        free(v12[0]);
      }
    }
  }

  return v2;
}

uint64_t sub_23C52A5BC(uint64_t *a1)
{
  if (*(a1 + 772))
  {
    operator new();
  }

  return llvm::FunctionType::get();
}

llvm::Instruction *sub_23C52A6F8(llvm::Instruction *result)
{
  v1 = result + *(*result - 24);
  v2 = *(v1 + 43);
  v3 = *(v2 + 1264);
  if (v3)
  {
    v4 = result;
    v5 = strlen(*(v2 + 1264));
    v6 = sub_23C4A0414(v1, v3, v5, *(v1 + 18));
    v7 = (v4 + *(*v4 - 24));
    v9 = 257;
    return sub_23C497A7C(v7 + 1, **(*v6 + 16), v6, 0, 0, v8);
  }

  return result;
}

uint64_t sub_23C52A7B4(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + *(*a1 - 24) + 344) + 1654))
  {
    if (*(a1 + 3256))
    {
      sub_23C4B1830(1uLL);
    }
  }

  else if (*(a1 + 3256))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 3192 + 8 * v2);
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v3 + 8);
        v6 = *v5;
        if (v4 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = 1;
          do
          {
            if (v6 + v7 != v5[v7])
            {
              goto LABEL_13;
            }

            v7 = (v7 + 1);
          }

          while (v4 != v7);
          v7 = v4;
        }

LABEL_13:
        v8 = a1 + *(*a1 - 24);
        *(v8 + 774) = 1;
        v9 = *(v8 + 744);
        v10 = *(v8 + 736) - *(v8 + 752);
        sub_23C4B0A04((v8 + 704), 4, v7);
        sub_23C4B0A04((v8 + 704), 6, v6);
        sub_23C4B0A04((v8 + 704), 8, v2);
        sub_23C4B0A04((v8 + 704), 10, 0);
        sub_23C4B03D4(v8 + 704, v10 + v9);
        operator new();
      }

      ++v2;
    }

    while (v2 < *(a1 + 3256));
  }

  v11 = *(a1 + 2992);
  __p = 0;
  v38 = 0u;
  v39[0] = v40;
  v39[1] = 0x800000000;
  v40[64] = 0x1FFFFFFFFLL;
  v41 = v11;
  v45[7] = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v45, 0, 26);
  v46 = 1;
  if (*(a1 + 2464))
  {
    v12 = *(a1 + 2456);
    do
    {
      sub_23C52B5AC(&__p, v12);
      v12 += 64;
    }

    while (v12 < *(a1 + 2456) + (*(a1 + 2464) << 6));
  }

  sub_23C52B97C(&__p, *(a1 + *(*a1 - 24) + 344));
  sub_23C52BCD4(&__p, a1 + *(*a1 - 24) + 704);
  if (v38 == __p)
  {
    v13 = &unk_27E1F74FC;
  }

  else
  {
    v13 = __p;
  }

  v34 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v13, (v38 - __p) >> 2);
  v14 = a1 + *(*a1 - 24);
  *(v14 + 774) = 1;
  sub_23C4B0AD0(v14 + 704, 0, 4uLL);
  sub_23C4B0AD0(v14 + 704, 0, 4uLL);
  *(v14 + 774) = 0;
  v15 = sub_23C4B0A6C(v14 + 704, 0);
  v33 = sub_23C4B17AC(a1 + *(*a1 - 24) + 704, &unk_27E1F7578, 0);
  v16 = a1 + *(*a1 - 24);
  *(v16 + 774) = 1;
  v17 = *(v16 + 744);
  v18 = *(v16 + 736) - *(v16 + 752);
  sub_23C4B0A04((v16 + 704), 4, DWORD1(v44));
  sub_23C4B0A04((v16 + 704), 6, DWORD2(v44));
  sub_23C4B0A04((v16 + 704), 8, (*(a1 + 3092) + *(a1 + 3096) + HIDWORD(v44)));
  sub_23C4B0A04((v16 + 704), 10, DWORD2(v43));
  sub_23C4B0A04((v16 + 704), 12, HIDWORD(v43));
  sub_23C4B0A04((v16 + 704), 14, v44);
  v19 = sub_23C4B03D4(v16 + 704, v18 + v17);
  v20 = a1 + *(*a1 - 24);
  *(v20 + 774) = 1;
  v21 = *(v20 + 744);
  v22 = *(v20 + 736) - *(v20 + 752);
  sub_23C4B0A04((v20 + 704), 4, v45[3]);
  sub_23C4B0A04((v20 + 704), 6, v45[4]);
  sub_23C4B0A04((v20 + 704), 8, v45[5]);
  sub_23C4B0A04((v20 + 704), 10, v45[0]);
  sub_23C4B0A04((v20 + 704), 12, v45[1]);
  sub_23C4B0A04((v20 + 704), 14, v45[2]);
  v23 = sub_23C4B03D4(v20 + 704, v22 + v21);
  v24 = (*(*a1 + 376))(a1);
  v25 = a1 + *(*a1 - 24);
  *(v25 + 774) = 1;
  v26 = *(v25 + 736);
  v27 = *(v25 + 752);
  v28 = *(v25 + 744);
  sub_23C4B5F88((v25 + 704), v24);
  sub_23C4B2DFC((v25 + 704), 6, v46);
  sub_23C4B2DFC((v25 + 704), 8, *(a1 + 3100));
  sub_23C4B0A04((v25 + 704), 10, *(a1 + 3104));
  sub_23C4B0A04((v25 + 704), 12, *(a1 + 3108));
  sub_23C4B0A04((v25 + 704), 14, *(a1 + 3112));
  sub_23C4B02B4((v25 + 704), 16, v19);
  sub_23C4B02B4((v25 + 704), 18, v23);
  sub_23C4B2DFC((v25 + 704), 20, LOBYTE(v45[6]));
  sub_23C4B02B4((v25 + 704), 22, v34);
  if (v15)
  {
    sub_23C4B08D8(v25 + 704, 4uLL);
    sub_23C4B0A04((v25 + 704), 24, (*(v25 + 736) - *(v25 + 752) + *(v25 + 744) - v15 + 4));
  }

  v29 = v26 - v27;
  v30 = *(a1 + 3256);
  if (v30)
  {
    sub_23C4B0A04((v25 + 704), 26, v30);
    if (*(*(a1 + *(*a1 - 24) + 344) + 1654) == 1)
    {
      sub_23C4B02B4((v25 + 704), 28, v33);
    }
  }

  v31 = sub_23C4B03D4(v25 + 704, v29 + v28);
  v36 = &v42;
  sub_23C4B6058(&v36);
  sub_23C4B60E4(v39);
  if (__p)
  {
    *&v38 = __p;
    operator delete(__p);
  }

  return v31;
}

uint64_t *sub_23C52B05C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23C52DD68(a1, a2 + 1, a3, "air.vertex", a4, a5);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[5];
  LOBYTE(v9) = *(*(a1 + *(*a1 - 24) + 344) + 1686);
  a1[304] = 0;
  *(a1 + 305) = 0u;
  a1[307] = (a1 + 309);
  a1[308] = 0x800000000;
  a1[373] = 0xFFFFFFFFLL;
  *(a1 + 2992) = v9;
  *(a1 + 769) = 0;
  *(a1 + 375) = 0u;
  *(a1 + 377) = 0u;
  *(a1 + 379) = 0u;
  *(a1 + 381) = 0u;
  *(a1 + 3058) = 0u;
  *(a1 + 3080) = 1;
  a1[386] = 0;
  *(a1 + 774) = 0;
  *(a1 + 3101) = 0;
  *(a1 + 3124) = 0;
  a1[391] = llvm::ConstantInt::get();
  a1[392] = llvm::ConstantInt::get();
  *(a1 + 1572) = 0;
  *(a1 + 3146) = 0;
  *(a1 + 787) = 1;
  *(a1 + 789) = 0;
  *(a1 + 3160) = 0;
  *(a1 + 3244) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 199) = 0u;
  *(a1 + 198) = 0u;
  *(a1 + 815) = -1;
  a1[408] = 0;
  a1[409] = llvm::ConstantInt::get();
  a1[410] = llvm::ConstantInt::get();
  v10 = (a3 + 168);
  v11 = *(a3 + 191);
  if (v11 < 0)
  {
    if (*(a3 + 176) != 20)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_16;
    }

    v10 = *v10;
  }

  else if (v11 != 20)
  {
    goto LABEL_15;
  }

  v12 = *v10;
  v13 = v10[1];
  v14 = *(v10 + 4);
  v17 = v12 == 0x535F786574726556 && v13 == 0x6F72505F65746174 && v14 == 1835102823;
LABEL_16:
  *(a1 + 3124) = v17;
  return a1;
}

uint64_t sub_23C52B334(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[5];
  for (i = 3192; i != 3224; i += 8)
  {
    v6 = *(a1 + i);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        MEMORY[0x23EED50A0](v7, 0x1000C8052888210);
      }

      MEMORY[0x23EED50C0](v6, 0x1010C4082113244);
    }
  }

  v8 = *(a1 + 3168);
  if (v8)
  {
    v9 = *(a1 + 3176);
    v10 = *(a1 + 3168);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 != -8192 && v11 != -4096 && v11 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 24));
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(a1 + 3168);
    }

    *(a1 + 3176) = v8;
    operator delete(v10);
  }

  v15 = (a1 + 3000);
  sub_23C4B6058(&v15);
  sub_23C4B60E4(a1 + 2456);
  v13 = *(a1 + 2432);
  if (v13)
  {
    *(a1 + 2440) = v13;
    operator delete(v13);
  }

  return sub_23C4FF150(a1, a2 + 2);
}

llvm::Instruction *sub_23C52B4D8(void *a1, unsigned int a2)
{
  v3 = sub_23C49EB10(a1 + *(*a1 - 24), "agc.read_vi.f32", 15, *(a1 + *(*a1 - 24) + 160), *(a1 + *(*a1 - 24) + 192));
  v4 = (a1 + *(*a1 - 24));
  v7 = llvm::ConstantInt::get();
  v6[16] = 257;
  return sub_23C497A7C(v4 + 1, *(v3 + 24), v3, &v7, 1, v6);
}

void sub_23C52B5AC(uint64_t a1, unint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 641);
    v8 = *(a1 + 556);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = v9 + (v6 >> 1 << 6);
      if (v7)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v56 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v54 = 0;
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (*(v10 + 47) < 0)
        {
          sub_23C49F988(__dst, *(v10 + 24), *(v10 + 32));
        }

        else
        {
          v11 = *(v10 + 24);
          v56 = *(v10 + 40);
          *__dst = v11;
        }

        if (*(a2 + 47) < 0)
        {
          sub_23C49F988(__p, *(a2 + 24), *(a2 + 32));
          if (!v8)
          {
LABEL_19:
            v18 = *(v10 + 57);
            v19 = *(a2 + 57);
            if (v18 >= v19)
            {
              if (v19 < v18)
              {
                goto LABEL_22;
              }

              v21 = *(v10 + 56);
              v22 = *(a2 + 56);
              if (v21 >= v22)
              {
                if (v22 < v21)
                {
                  goto LABEL_22;
                }

                v23 = *(v10 + 8);
                v24 = *(a2 + 8);
                if (v23 >= v24)
                {
                  if (v24 >= v23)
                  {
LABEL_38:
                    v52 = v5;
                    if (v56 >= 0)
                    {
                      v25 = HIBYTE(v56);
                    }

                    else
                    {
                      v25 = __dst[1];
                    }

                    if (v56 >= 0)
                    {
                      v26 = __dst;
                    }

                    else
                    {
                      v26 = __dst[0];
                    }

                    if (v54 >= 0)
                    {
                      v27 = HIBYTE(v54);
                    }

                    else
                    {
                      v27 = __p[1];
                    }

                    if (v54 >= 0)
                    {
                      v28 = __p;
                    }

                    else
                    {
                      v28 = __p[0];
                    }

                    if (v27 >= v25)
                    {
                      v29 = v25;
                    }

                    else
                    {
                      v29 = v27;
                    }

                    v50 = v28;
                    v51 = v26;
                    __n = v29;
                    v30 = memcmp(v26, v28, v29);
                    v31 = v25 < v27;
                    if (v30)
                    {
                      v31 = v30 < 0;
                    }

                    if (v31)
                    {
                      v20 = 1;
                    }

                    else
                    {
                      v32 = memcmp(v50, v51, __n);
                      v33 = v27 < v25;
                      if (v32)
                      {
                        v33 = v32 < 0;
                      }

                      v20 = !v33 && *(v10 + 16) < *(a2 + 16);
                    }

                    v5 = v52;
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }
              }
            }

            goto LABEL_20;
          }
        }

        else
        {
          *__p = *(a2 + 24);
          v54 = *(a2 + 40);
          if (!v8)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = *(v10 + 56);
      v13 = *(a2 + 56);
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          goto LABEL_22;
        }

        v14 = *(v10 + 8);
        v15 = *(a2 + 8);
        if (v14 >= v15)
        {
          if (v15 < v14)
          {
            goto LABEL_22;
          }

          v16 = *(v10 + 57);
          v17 = *(a2 + 57);
          if (v16 >= v17)
          {
            if (v17 >= v16)
            {
              goto LABEL_38;
            }

LABEL_22:
            v20 = 0;
            goto LABEL_23;
          }
        }
      }

LABEL_20:
      v20 = 1;
LABEL_23:
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v20)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v20)
      {
        v9 = v10 + 64;
      }

      if (!v6)
      {
        v4 = *(a1 + 24);
        v34 = *(a1 + 32);
        goto LABEL_64;
      }
    }
  }

  v34 = 0;
  v9 = *(a1 + 24);
LABEL_64:
  if (v4 + (v34 << 6) == v9)
  {
    sub_23C4B92A4(v5, a2);
  }

  else
  {
    v35 = v9 - v4;
    v36 = sub_23C4B932C(v5, a2);
    v37 = *(a1 + 24);
    v38 = v37 + v35;
    v39 = v37 + (*(a1 + 32) << 6);
    *(v39 + 16) = *(v39 - 48);
    *v39 = *(v39 - 64);
    *(v39 + 24) = *(v39 - 40);
    *(v39 + 40) = *(v39 - 24);
    *(v39 - 40) = 0;
    *(v39 - 32) = 0;
    *(v39 - 24) = 0;
    *(v39 + 48) = *(v39 - 16);
    v40 = *(a1 + 24);
    v41 = *(a1 + 32);
    v42 = v40 + (v41 << 6) - 64;
    if (v42 != v38)
    {
      do
      {
        *v42 = *(v42 - 64);
        *(v42 + 16) = *(v42 - 48);
        if (*(v42 + 47) < 0)
        {
          operator delete(*(v42 + 24));
        }

        *(v42 + 24) = *(v42 - 40);
        *(v42 + 40) = *(v42 - 24);
        *(v42 - 17) = 0;
        *(v42 - 40) = 0;
        *(v42 + 48) = *(v42 - 16);
        v42 -= 64;
      }

      while (v42 != v38);
      LODWORD(v41) = *(a1 + 32);
      v40 = *(a1 + 24);
    }

    v43 = (v41 + 1);
    *(a1 + 32) = v43;
    v44 = v36 < v40 + (v43 << 6) && v36 >= v38;
    v45 = 64;
    if (!v44)
    {
      v45 = 0;
    }

    v46 = v36 + v45;
    v47 = *v46;
    *(v38 + 16) = *(v46 + 16);
    *v38 = v47;
    std::string::operator=((v38 + 24), (v46 + 24));
    *(v38 + 48) = *(v46 + 48);
  }

  v48 = *(a1 + 552);
  if (v48 <= *(a2 + 16))
  {
    v48 = *(a2 + 16);
  }

  *(a1 + 552) = v48;
  *(a1 + 644) += *a2;
}

void sub_23C52B97C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 552) + 7);
  v5 = *(a1 + 576);
  v6 = *(a1 + 568);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
  v8 = v4 - v7;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v11 = v6 + 40 * v4;
      while (v5 != v11)
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 40;
      }

      *(a1 + 576) = v11;
    }
  }

  else
  {
    v9 = *(a1 + 584);
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v5) >> 3) < v8)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v6) >> 3);
      if (2 * v10 > v4)
      {
        v4 = 2 * v10;
      }

      if (v10 >= 0x333333333333333)
      {
        v4 = 0x666666666666666;
      }

      if (v4 <= 0x666666666666666)
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v12 = 40 * ((40 * v8 - 40) / 0x28) + 40;
    bzero(*(a1 + 576), v12);
    *(a1 + 576) = v5 + v12;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 1657);
    v17 = *(a1 + 24);
    v18 = (v17 + 64 * v13);
    v19 = 4;
    do
    {
      data = v17->__r_.__value_.__l.__data_;
      v21 = LODWORD(v17->__r_.__value_.__r.__words[2]) + 6;
      LODWORD(v17[2].__r_.__value_.__l.__data_) = v19;
      v22 = v17[2].__r_.__value_.__s.__data_[8];
      v23 = *(a1 + 568) + 40 * v21;
      *v23 = v22;
      *(v23 + 4) = v15 + 2 * (v14 + v16);
      *(v23 + 8) = 2 * (v14 + v16 + v15);
      v19 += data;
      v24 = LODWORD(v17->__r_.__value_.__r.__words[1]);
      v25 = 604;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v25 = 628;
        v26 = 616;
      }

      else
      {
        v26 = 592;
      }

      v27 = v22 == 0;
      if (v22)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      v29 = a1 + v28;
      if (v27)
      {
        v30 = 0;
      }

      else
      {
        v30 = data;
      }

      v15 += v30;
      if (v27)
      {
        v31 = data;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v29 + 4 * v24);
      v14 += v31;
      HIDWORD(v17[2].__r_.__value_.__r.__words[0]) = v32;
      *(v29 + 4 * v24) = v32 + data;
      *(v23 + 12) = v24;
      std::string::operator=((v23 + 16), v17 + 1);
      v17 = (v17 + 64);
    }

    while (v17 != v18);
  }
}

uint64_t sub_23C52BC50(_BYTE *a1, char a2, int a3)
{
  v3 = 0;
  if (a2)
  {
    v4 = (a1 + 604);
    v5 = 3;
    do
    {
      v6 = *(v4 - 3);
      v8 = *v4++;
      v7 = v8;
      v9 = (v8 + 1) >> 1;
      if (a1[560])
      {
        v7 = v9;
      }

      LODWORD(v3) = v6 + v3 + v7;
      --v5;
    }

    while (v5);
    v10 = a3 + v3 + a1[648] + 1;
    v11 = v10 & 3;
    if (v10 < 0x11 || v11 == 0)
    {
      v3 = 0;
      v13 = v10 > 0xF;
    }

    else
    {
      v3 = (4 - v11);
      v13 = 1;
    }

    a1[640] = v13;
  }

  return v3;
}

void sub_23C52BCD4(uint64_t a1, uint64_t a2)
{
  v2 = -858993459 * ((*(a1 + 576) - *(a1 + 568)) >> 3);
  if (v2)
  {
    v5 = 0;
    v6 = 40 * v2;
    do
    {
      v7 = *(a1 + 568) + v5;
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v11 >= 0)
      {
        v13 = *(v8 + 23);
      }

      else
      {
        v13 = *(v8 + 8);
      }

      v14 = sub_23C4B023C(a2, v12, v13);
      *(a2 + 70) = 1;
      v15 = *(a2 + 40);
      v16 = *(a2 + 32) - *(a2 + 48);
      sub_23C4B2DFC(a2, 4, *(*(a1 + 568) + v5));
      sub_23C4B0A04(a2, 6, *(*(a1 + 568) + v5 + 4));
      sub_23C4B0A04(a2, 8, *(*(a1 + 568) + v5 + 8));
      sub_23C4B2DFC(a2, 10, *(*(a1 + 568) + v5 + 12));
      sub_23C4B02B4(a2, 12, v14);
      v17 = sub_23C4B03D4(a2, v16 + v15);
      v18 = v17;
      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v20 >= v19)
      {
        v22 = *a1;
        v23 = v20 - *a1;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          sub_23C496CE8();
        }

        v26 = v19 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          sub_23C4B1830(v27);
        }

        *(4 * v24) = v18;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v28 = *a1;
        *a1 = 0;
        *(a1 + 8) = v21;
        *(a1 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v17;
        v21 = (v20 + 1);
      }

      *(a1 + 8) = v21;
      v5 += 40;
    }

    while (v6 != v5);
  }
}

void sub_23C52BEB8(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  v327 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v296 = (a2 - 8);
    v297 = a2 - 4;
    v295 = (a2 - 12);
    v301 = a2 - 40;
    v303 = a2;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = (a2 - v7) >> 6;
          v9 = v8 - 2;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                sub_23C52D430(v7, v7 + 64, v297);
                return;
              case 4:

                sub_23C52D634(v7, v7 + 64, v7 + 128, v297);
                return;
              case 5:

                sub_23C52D7EC(v7, v7 + 64, v7 + 128, v7 + 192, v297);
                return;
            }
          }

          else
          {
            if (v8 < 2)
            {
              return;
            }

            if (v8 == 2)
            {
              v126 = *(v7 + 47);
              v129 = *(a2 - 5);
              v128 = a2 - 40;
              v127 = v129;
              v130 = v128[23];
              if (v130 >= 0)
              {
                v131 = v128[23];
              }

              else
              {
                v131 = *(v128 + 1);
              }

              if (v130 >= 0)
              {
                v132 = v128;
              }

              else
              {
                v132 = v127;
              }

              if (v126 >= 0)
              {
                v133 = *(v7 + 47);
              }

              else
              {
                v133 = *(v7 + 32);
              }

              if (v126 >= 0)
              {
                v134 = (v7 + 24);
              }

              else
              {
                v134 = *(v7 + 24);
              }

              if (v133 >= v131)
              {
                v135 = v131;
              }

              else
              {
                v135 = v133;
              }

              v136 = memcmp(v132, v134, v135);
              v137 = v131 < v133;
              if (v136)
              {
                v137 = v136 < 0;
              }

              if (v137)
              {

                sub_23C52D334(v7, v297);
              }

              return;
            }
          }

          if (v8 <= 23)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v138 = v7 + 64;
                if ((v7 + 64) != a2)
                {
                  v139 = 0;
                  v140 = v7;
                  do
                  {
                    v141 = (v140 + 88);
                    v142 = v138;
                    v143 = *(v140 + 47);
                    v144 = *(v140 + 111);
                    if (v144 >= 0)
                    {
                      v145 = *(v140 + 111);
                    }

                    else
                    {
                      v145 = *(v140 + 96);
                    }

                    if (v144 >= 0)
                    {
                      v146 = (v140 + 88);
                    }

                    else
                    {
                      v146 = *(v140 + 88);
                    }

                    if (v143 >= 0)
                    {
                      v147 = *(v140 + 47);
                    }

                    else
                    {
                      v147 = *(v140 + 32);
                    }

                    if (v143 >= 0)
                    {
                      v148 = (v140 + 24);
                    }

                    else
                    {
                      v148 = *(v140 + 24);
                    }

                    if (v147 >= v145)
                    {
                      v149 = v145;
                    }

                    else
                    {
                      v149 = v147;
                    }

                    v150 = memcmp(v146, v148, v149);
                    v151 = v145 < v147;
                    if (v150)
                    {
                      v151 = v150 < 0;
                    }

                    if (v151)
                    {
                      v320 = *(v142 + 16);
                      v313 = *v142;
                      v325 = *(v140 + 104);
                      v324 = *v141;
                      *v141 = 0;
                      *(v140 + 96) = 0;
                      *(v140 + 104) = 0;
                      v326 = *(v140 + 112);
                      if (SHIBYTE(v325) >= 0)
                      {
                        v152 = HIBYTE(v325);
                      }

                      else
                      {
                        v152 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v153 = &v324;
                      }

                      else
                      {
                        v153 = v324;
                      }

                      v154 = v139;
                      while (1)
                      {
                        v155 = a1 + v154;
                        *(v155 + 64) = *(a1 + v154);
                        *(v155 + 80) = *(a1 + v154 + 16);
                        if (*(a1 + v154 + 111) < 0)
                        {
                          operator delete(*(v155 + 88));
                        }

                        *(v155 + 88) = *(v155 + 24);
                        *(v155 + 104) = *(v155 + 40);
                        *(v155 + 47) = 0;
                        *(v155 + 24) = 0;
                        *(v155 + 112) = *(v155 + 48);
                        if (!v154)
                        {
                          break;
                        }

                        v156 = a1 + v154;
                        v157 = *(a1 + v154 - 17);
                        if (v157 >= 0)
                        {
                          v158 = *(a1 + v154 - 17);
                        }

                        else
                        {
                          v158 = *(a1 + v154 - 32);
                        }

                        if (v157 >= 0)
                        {
                          v159 = a1 + v154 - 40;
                        }

                        else
                        {
                          v159 = *(a1 + v154 - 40);
                        }

                        if (v158 >= v152)
                        {
                          v160 = v152;
                        }

                        else
                        {
                          v160 = v158;
                        }

                        v161 = memcmp(v153, v159, v160);
                        v162 = v152 < v158;
                        if (v161)
                        {
                          v162 = v161 < 0;
                        }

                        v154 -= 64;
                        if (!v162)
                        {
                          v163 = v156 + 24;
                          v164 = (v156 + 48);
                          v165 = a1 + v154 + 64;
                          goto LABEL_294;
                        }
                      }

                      v163 = a1 + 24;
                      v164 = a1 + 3;
                      v165 = a1;
LABEL_294:
                      *(v165 + 16) = v320;
                      *v165 = v313;
                      if (*(v165 + 47) < 0)
                      {
                        operator delete(*v163);
                      }

                      v166 = v324;
                      *(v163 + 16) = v325;
                      *v163 = v166;
                      *v164 = v326;
                    }

                    v138 = v142 + 64;
                    v139 += 64;
                    v140 = v142;
                  }

                  while ((v142 + 64) != v303);
                }
              }
            }

            else if (v7 != a2)
            {
              v271 = v7 + 64;
              if ((v7 + 64) != a2)
              {
                v272 = v7 - 40;
                do
                {
                  v273 = (a1 + 88);
                  v274 = v271;
                  v275 = *(a1 + 47);
                  v276 = *(a1 + 111);
                  if (v276 >= 0)
                  {
                    v277 = *(a1 + 111);
                  }

                  else
                  {
                    v277 = *(a1 + 12);
                  }

                  if (v276 >= 0)
                  {
                    v278 = a1 + 88;
                  }

                  else
                  {
                    v278 = *(a1 + 11);
                  }

                  if (v275 >= 0)
                  {
                    v279 = *(a1 + 47);
                  }

                  else
                  {
                    v279 = *(a1 + 4);
                  }

                  if (v275 >= 0)
                  {
                    v280 = a1 + 24;
                  }

                  else
                  {
                    v280 = *(a1 + 3);
                  }

                  if (v279 >= v277)
                  {
                    v281 = v277;
                  }

                  else
                  {
                    v281 = v279;
                  }

                  v282 = memcmp(v278, v280, v281);
                  v283 = v277 < v279;
                  if (v282)
                  {
                    v283 = v282 < 0;
                  }

                  if (v283)
                  {
                    v323 = *(v274 + 16);
                    v316 = *v274;
                    v325 = *(a1 + 13);
                    v324 = *v273;
                    *v273 = 0;
                    *(a1 + 12) = 0;
                    *(a1 + 13) = 0;
                    v326 = a1[7];
                    if (SHIBYTE(v325) >= 0)
                    {
                      v284 = HIBYTE(v325);
                    }

                    else
                    {
                      v284 = *(&v324 + 1);
                    }

                    if (SHIBYTE(v325) >= 0)
                    {
                      v285 = &v324;
                    }

                    else
                    {
                      v285 = v324;
                    }

                    v286 = v272;
                    do
                    {
                      v287 = v286;
                      *(v286 + 13) = *(v286 + 5);
                      *(v286 + 30) = *(v286 + 14);
                      if (*(v286 + 151) < 0)
                      {
                        operator delete(v286[16]);
                      }

                      *(v287 + 8) = *(v287 + 4);
                      v287[18] = v287[10];
                      *(v287 + 87) = 0;
                      *(v287 + 64) = 0;
                      *(v287 + 19) = *(v287 + 11);
                      v288 = *(v287 + 23);
                      if (v288 >= 0)
                      {
                        v289 = *(v287 + 23);
                      }

                      else
                      {
                        v289 = v287[1];
                      }

                      if (v288 >= 0)
                      {
                        v290 = v287;
                      }

                      else
                      {
                        v290 = *v287;
                      }

                      if (v289 >= v284)
                      {
                        v291 = v284;
                      }

                      else
                      {
                        v291 = v289;
                      }

                      v292 = memcmp(v285, v290, v291);
                      v293 = v292 < 0;
                      if (!v292)
                      {
                        v293 = v284 < v289;
                      }

                      v286 = v287 - 8;
                    }

                    while (v293);
                    *(v287 + 14) = v323;
                    *(v287 + 5) = v316;
                    if (*(v287 + 87) < 0)
                    {
                      operator delete(v287[8]);
                    }

                    v294 = v324;
                    v287[10] = v325;
                    *(v287 + 4) = v294;
                    *(v287 + 11) = v326;
                  }

                  v271 = v274 + 64;
                  v272 += 64;
                  a1 = v274;
                }

                while ((v274 + 64) != v303);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v167 = v9 >> 1;
              v168 = v9 >> 1;
              do
              {
                v169 = v168;
                if (v167 >= v168)
                {
                  v170 = (2 * v168) | 1;
                  v171 = &a1[4 * v170];
                  if (2 * v168 + 2 < v8)
                  {
                    v172 = *(v171 + 111);
                    v173 = *(v171 + 47);
                    if (v173 >= 0)
                    {
                      v174 = *(v171 + 47);
                    }

                    else
                    {
                      v174 = *(v171 + 4);
                    }

                    if (v173 >= 0)
                    {
                      v175 = v171 + 24;
                    }

                    else
                    {
                      v175 = *(v171 + 3);
                    }

                    if (v172 >= 0)
                    {
                      v176 = *(v171 + 111);
                    }

                    else
                    {
                      v176 = *(v171 + 12);
                    }

                    if (v172 >= 0)
                    {
                      v177 = v171 + 88;
                    }

                    else
                    {
                      v177 = *(v171 + 11);
                    }

                    if (v176 >= v174)
                    {
                      v178 = v174;
                    }

                    else
                    {
                      v178 = v176;
                    }

                    v179 = memcmp(v175, v177, v178);
                    v180 = v174 < v176;
                    if (v179)
                    {
                      v180 = v179 < 0;
                    }

                    v181 = !v180;
                    v182 = 64;
                    if (v181)
                    {
                      v182 = 0;
                    }

                    v171 = (v171 + v182);
                    if (!v181)
                    {
                      v170 = 2 * v169 + 2;
                    }
                  }

                  v183 = &a1[4 * v169];
                  v184 = (v183 + 24);
                  v185 = *(v183 + 47);
                  v186 = *(v171 + 47);
                  if (v186 >= 0)
                  {
                    v187 = *(v171 + 47);
                  }

                  else
                  {
                    v187 = *(v171 + 4);
                  }

                  if (v186 >= 0)
                  {
                    v188 = v171 + 24;
                  }

                  else
                  {
                    v188 = *(v171 + 3);
                  }

                  if (v185 >= 0)
                  {
                    v189 = *(v183 + 47);
                  }

                  else
                  {
                    v189 = *(v183 + 4);
                  }

                  if (v185 >= 0)
                  {
                    v190 = v183 + 24;
                  }

                  else
                  {
                    v190 = *(v183 + 3);
                  }

                  if (v189 >= v187)
                  {
                    v191 = v187;
                  }

                  else
                  {
                    v191 = v189;
                  }

                  v192 = memcmp(v188, v190, v191);
                  v193 = v187 < v189;
                  if (v192)
                  {
                    v193 = v192 < 0;
                  }

                  if (!v193)
                  {
                    v321 = *(v183 + 4);
                    v314 = *v183;
                    v194 = *v184;
                    v325 = *(v183 + 5);
                    v324 = v194;
                    *(v183 + 4) = 0;
                    *(v183 + 5) = 0;
                    *v184 = 0;
                    v326 = v183[3];
                    do
                    {
                      v195 = v171;
                      v196 = *v171;
                      *(v183 + 4) = *(v171 + 4);
                      *v183 = v196;
                      if (*(v183 + 47) < 0)
                      {
                        operator delete(*(v183 + 3));
                      }

                      v197 = *(v171 + 24);
                      *(v183 + 5) = *(v171 + 5);
                      *(v183 + 24) = v197;
                      *(v171 + 47) = 0;
                      *(v171 + 24) = 0;
                      v183[3] = v171[3];
                      if (v167 < v170)
                      {
                        break;
                      }

                      v198 = (2 * v170) | 1;
                      v171 = &a1[4 * v198];
                      v199 = 2 * v170 + 2;
                      if (v199 < v8)
                      {
                        v200 = *(v171 + 111);
                        v201 = *(v171 + 47);
                        if (v201 >= 0)
                        {
                          v202 = *(v171 + 47);
                        }

                        else
                        {
                          v202 = *(v171 + 4);
                        }

                        if (v201 >= 0)
                        {
                          v203 = v171 + 24;
                        }

                        else
                        {
                          v203 = *(v171 + 3);
                        }

                        if (v200 >= 0)
                        {
                          v204 = *(v171 + 111);
                        }

                        else
                        {
                          v204 = *(v171 + 12);
                        }

                        if (v200 >= 0)
                        {
                          v205 = v171 + 88;
                        }

                        else
                        {
                          v205 = *(v171 + 11);
                        }

                        if (v204 >= v202)
                        {
                          v206 = v202;
                        }

                        else
                        {
                          v206 = v204;
                        }

                        v207 = memcmp(v203, v205, v206);
                        v208 = v202 < v204;
                        if (v207)
                        {
                          v208 = v207 < 0;
                        }

                        v209 = !v208;
                        v210 = 64;
                        if (v209)
                        {
                          v210 = 0;
                        }

                        v171 = (v171 + v210);
                        if (!v209)
                        {
                          v198 = v199;
                        }
                      }

                      v211 = *(v171 + 47);
                      if (v211 >= 0)
                      {
                        v212 = *(v171 + 47);
                      }

                      else
                      {
                        v212 = *(v171 + 4);
                      }

                      if (v211 >= 0)
                      {
                        v213 = v171 + 24;
                      }

                      else
                      {
                        v213 = *(v171 + 3);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v214 = HIBYTE(v325);
                      }

                      else
                      {
                        v214 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v215 = &v324;
                      }

                      else
                      {
                        v215 = v324;
                      }

                      if (v214 >= v212)
                      {
                        v216 = v212;
                      }

                      else
                      {
                        v216 = v214;
                      }

                      v217 = memcmp(v213, v215, v216);
                      v218 = v212 < v214;
                      if (v217)
                      {
                        v218 = v217 < 0;
                      }

                      v183 = v195;
                      v170 = v198;
                    }

                    while (!v218);
                    *(v195 + 4) = v321;
                    *v195 = v314;
                    if (*(v195 + 47) < 0)
                    {
                      operator delete(*(v195 + 3));
                    }

                    v219 = v324;
                    *(v195 + 5) = v325;
                    *(v195 + 24) = v219;
                    v195[3] = v326;
                  }
                }

                v168 = v169 - 1;
              }

              while (v169);
              v220 = v303;
              do
              {
                v221 = 0;
                v298 = v220;
                v309 = *(a1 + 4);
                v308 = *a1;
                v300 = *(a1 + 3);
                *v306 = *(a1 + 4);
                *&v306[7] = *(a1 + 39);
                v302 = *(a1 + 47);
                *(a1 + 4) = 0;
                *(a1 + 5) = 0;
                *(a1 + 3) = 0;
                v222 = a1;
                v305 = a1[3];
                do
                {
                  v223 = v222 + (v221 << 6);
                  v224 = v223 + 64;
                  v225 = (2 * v221) | 1;
                  v221 = 2 * v221 + 2;
                  if (v221 >= v8)
                  {
                    v221 = v225;
                  }

                  else
                  {
                    v228 = *(v223 + 88);
                    v227 = v223 + 88;
                    v226 = v228;
                    v229 = *(v227 + 87);
                    v230 = *(v227 + 23);
                    if (v230 >= 0)
                    {
                      v231 = *(v227 + 23);
                    }

                    else
                    {
                      v231 = *(v227 + 8);
                    }

                    if (v230 >= 0)
                    {
                      v232 = v227;
                    }

                    else
                    {
                      v232 = v226;
                    }

                    if (v229 >= 0)
                    {
                      v233 = *(v227 + 87);
                    }

                    else
                    {
                      v233 = *(v227 + 72);
                    }

                    if (v229 >= 0)
                    {
                      v234 = (v227 + 64);
                    }

                    else
                    {
                      v234 = *(v227 + 64);
                    }

                    if (v233 >= v231)
                    {
                      v235 = v231;
                    }

                    else
                    {
                      v235 = v233;
                    }

                    v236 = memcmp(v232, v234, v235);
                    v237 = v231 < v233;
                    if (v236)
                    {
                      v237 = v236 < 0;
                    }

                    if (v237)
                    {
                      v224 = v227 + 40;
                    }

                    else
                    {
                      v221 = v225;
                    }
                  }

                  v238 = *v224;
                  *(v222 + 16) = *(v224 + 16);
                  *v222 = v238;
                  if (*(v222 + 47) < 0)
                  {
                    operator delete(*(v222 + 24));
                  }

                  v239 = *(v224 + 24);
                  *(v222 + 40) = *(v224 + 40);
                  *(v222 + 24) = v239;
                  *(v224 + 47) = 0;
                  *(v224 + 24) = 0;
                  *(v222 + 48) = *(v224 + 48);
                  v222 = v224;
                }

                while (v221 <= ((v8 - 2) >> 1));
                v240 = (v224 + 24);
                v241 = v298 - 4;
                if (v224 == v298 - 4)
                {
                  *(v224 + 16) = v309;
                  *v224 = v308;
                  if (*(v224 + 47) < 0)
                  {
                    operator delete(*v240);
                  }

                  *(v224 + 24) = v300;
                  *(v224 + 32) = *v306;
                  *(v224 + 39) = *&v306[7];
                  *(v224 + 47) = v302;
                  *(v224 + 48) = v305;
                }

                else
                {
                  v242 = *v241;
                  *(v224 + 16) = *(v298 - 12);
                  *v224 = v242;
                  if (*(v224 + 47) < 0)
                  {
                    operator delete(*v240);
                  }

                  v243 = *(v298 - 40);
                  *(v224 + 40) = *(v298 - 3);
                  *v240 = v243;
                  *(v298 - 17) = 0;
                  *(v298 - 40) = 0;
                  *(v224 + 48) = *(v298 - 1);
                  *(v298 - 12) = v309;
                  *v241 = v308;
                  if (*(v298 - 17) < 0)
                  {
                    operator delete(*(v298 - 5));
                  }

                  *(v298 - 5) = v300;
                  *(v298 - 25) = *&v306[7];
                  *(v298 - 4) = *v306;
                  *(v298 - 17) = v302;
                  *(v298 - 1) = v305;
                  v244 = (v224 + 64 - a1) >> 6;
                  v245 = v244 < 2;
                  v246 = v244 - 2;
                  if (!v245)
                  {
                    v247 = v246 >> 1;
                    v248 = &a1[4 * (v246 >> 1)];
                    v249 = *(v224 + 47);
                    v250 = *(v248 + 47);
                    if (v250 >= 0)
                    {
                      v251 = *(v248 + 47);
                    }

                    else
                    {
                      v251 = *(v248 + 4);
                    }

                    if (v250 >= 0)
                    {
                      v252 = v248 + 24;
                    }

                    else
                    {
                      v252 = *(v248 + 3);
                    }

                    if (v249 >= 0)
                    {
                      v253 = *(v224 + 47);
                    }

                    else
                    {
                      v253 = *(v224 + 32);
                    }

                    if (v249 >= 0)
                    {
                      v254 = (v224 + 24);
                    }

                    else
                    {
                      v254 = *(v224 + 24);
                    }

                    if (v253 >= v251)
                    {
                      v255 = v251;
                    }

                    else
                    {
                      v255 = v253;
                    }

                    v256 = memcmp(v252, v254, v255);
                    v257 = v251 < v253;
                    if (v256)
                    {
                      v257 = v256 < 0;
                    }

                    if (v257)
                    {
                      v322 = *(v224 + 16);
                      v315 = *v224;
                      v258 = *(v224 + 40);
                      v324 = *v240;
                      v325 = v258;
                      *(v224 + 32) = 0;
                      *(v224 + 40) = 0;
                      *v240 = 0;
                      v326 = *(v224 + 48);
                      if (SHIBYTE(v325) >= 0)
                      {
                        v259 = HIBYTE(v325);
                      }

                      else
                      {
                        v259 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v260 = &v324;
                      }

                      else
                      {
                        v260 = v324;
                      }

                      do
                      {
                        v261 = v248;
                        v262 = *v248;
                        *(v224 + 16) = *(v248 + 4);
                        *v224 = v262;
                        if (*(v224 + 47) < 0)
                        {
                          operator delete(*(v224 + 24));
                        }

                        v263 = *(v248 + 24);
                        *(v224 + 40) = *(v248 + 5);
                        *(v224 + 24) = v263;
                        *(v248 + 47) = 0;
                        *(v248 + 24) = 0;
                        *(v224 + 48) = v248[3];
                        if (!v247)
                        {
                          break;
                        }

                        v247 = (v247 - 1) >> 1;
                        v248 = &a1[4 * v247];
                        v264 = *(v248 + 47);
                        if (v264 >= 0)
                        {
                          v265 = *(v248 + 47);
                        }

                        else
                        {
                          v265 = *(v248 + 4);
                        }

                        if (v264 >= 0)
                        {
                          v266 = v248 + 24;
                        }

                        else
                        {
                          v266 = *(v248 + 3);
                        }

                        if (v259 >= v265)
                        {
                          v267 = v265;
                        }

                        else
                        {
                          v267 = v259;
                        }

                        v268 = memcmp(v266, v260, v267);
                        v269 = v265 < v259;
                        if (v268)
                        {
                          v269 = v268 < 0;
                        }

                        v224 = v261;
                      }

                      while (v269);
                      *(v261 + 16) = v322;
                      *v261 = v315;
                      if (*(v261 + 47) < 0)
                      {
                        operator delete(*(v261 + 24));
                      }

                      v270 = v324;
                      *(v261 + 40) = v325;
                      *(v261 + 24) = v270;
                      *(v261 + 48) = v326;
                    }
                  }
                }

                v245 = v8-- <= 2;
                v220 = v298 - 4;
              }

              while (!v245);
            }

            return;
          }

          v10 = v7 + (v8 >> 1 << 6);
          if (v8 < 0x81)
          {
            sub_23C52D430(&a1[4 * (v8 >> 1)], a1, v297);
          }

          else
          {
            sub_23C52D430(a1, &a1[4 * (v8 >> 1)], v297);
            sub_23C52D430((a1 + 4), v10 - 64, v296);
            sub_23C52D430((a1 + 8), v10 + 64, v295);
            sub_23C52D430(v10 - 64, &a1[4 * (v8 >> 1)], v10 + 64);
            v317 = *(a1 + 4);
            v310 = *a1;
            *(&v304 + 7) = *(a1 + 39);
            v11 = *(a1 + 3);
            *&v304 = *(a1 + 4);
            v12 = *(a1 + 47);
            *(a1 + 4) = 0;
            *(a1 + 5) = 0;
            *(a1 + 3) = 0;
            v307 = a1[3];
            v13 = *v10;
            *(a1 + 4) = *(v10 + 16);
            *a1 = v13;
            v14 = *(v10 + 24);
            *(a1 + 5) = *(v10 + 40);
            *(a1 + 24) = v14;
            a1[3] = *(v10 + 48);
            *(v10 + 16) = v317;
            *v10 = v310;
            *(v10 + 24) = v11;
            *(v10 + 39) = *(&v304 + 7);
            *(v10 + 32) = v304;
            *(v10 + 47) = v12;
            *(v10 + 48) = v307;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *(a1 + 47);
          v16 = *(a1 - 17);
          if (v16 >= 0)
          {
            v17 = a1 - 40;
          }

          else
          {
            v17 = *(a1 - 5);
          }

          v18 = a1 + 3;
          if (v16 >= 0)
          {
            v19 = *(a1 - 17);
          }

          else
          {
            v19 = *(a1 - 4);
          }

          if (v15 >= 0)
          {
            v20 = *(a1 + 47);
          }

          else
          {
            v20 = *(a1 + 4);
          }

          if (v15 >= 0)
          {
            v21 = a1 + 24;
          }

          else
          {
            v21 = *(a1 + 3);
          }

          if (v20 >= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v20;
          }

          v23 = memcmp(v17, v21, v22);
          v24 = v19 < v20;
          if (v23)
          {
            v24 = v23 < 0;
          }

          if (v24)
          {
            break;
          }

          v319 = *(a1 + 4);
          v312 = *a1;
          v74 = *(a1 + 5);
          v324 = *v18;
          v325 = v74;
          *(a1 + 4) = 0;
          *(a1 + 5) = 0;
          *v18 = 0;
          v326 = a1[3];
          v75 = *(a2 - 17);
          if (SHIBYTE(v325) >= 0)
          {
            v76 = HIBYTE(v325);
          }

          else
          {
            v76 = *(&v324 + 1);
          }

          if (SHIBYTE(v325) >= 0)
          {
            v77 = &v324;
          }

          else
          {
            v77 = v324;
          }

          if (v75 >= 0)
          {
            v78 = *(a2 - 17);
          }

          else
          {
            v78 = *(a2 - 4);
          }

          if (v75 >= 0)
          {
            v79 = v301;
          }

          else
          {
            v79 = *(a2 - 5);
          }

          if (v78 >= v76)
          {
            v80 = v76;
          }

          else
          {
            v80 = v78;
          }

          v81 = memcmp(v77, v79, v80);
          v82 = v76 < v78;
          if (v81)
          {
            v82 = v81 < 0;
          }

          if (v82)
          {
            v83 = a1 + 11;
            do
            {
              v84 = *(v83 + 23);
              if (v84 >= 0)
              {
                v85 = *(v83 + 23);
              }

              else
              {
                v85 = v83[1];
              }

              if (v84 >= 0)
              {
                v86 = v83;
              }

              else
              {
                v86 = *v83;
              }

              if (v85 >= v76)
              {
                v87 = v76;
              }

              else
              {
                v87 = v85;
              }

              v88 = memcmp(v77, v86, v87);
              v89 = v76 < v85;
              if (v88)
              {
                v89 = v88 < 0;
              }

              v83 += 8;
            }

            while (!v89);
            v7 = (v83 - 11);
          }

          else
          {
            v90 = (a1 + 4);
            do
            {
              v7 = v90;
              if (v90 >= v303)
              {
                break;
              }

              v91 = *(v90 + 47);
              if (v91 >= 0)
              {
                v92 = *(v90 + 47);
              }

              else
              {
                v92 = *(v90 + 32);
              }

              if (v91 >= 0)
              {
                v93 = (v90 + 24);
              }

              else
              {
                v93 = *(v90 + 24);
              }

              if (v92 >= v76)
              {
                v94 = v76;
              }

              else
              {
                v94 = v92;
              }

              v95 = memcmp(v77, v93, v94);
              v96 = v95 < 0;
              if (!v95)
              {
                v96 = v76 < v92;
              }

              v90 = v7 + 64;
            }

            while (!v96);
          }

          v97 = v303;
          if (v7 < v303)
          {
            v98 = v301;
            do
            {
              v99 = *(v98 + 23);
              if (v99 >= 0)
              {
                v100 = *(v98 + 23);
              }

              else
              {
                v100 = v98[1];
              }

              if (v99 >= 0)
              {
                v101 = v98;
              }

              else
              {
                v101 = *v98;
              }

              if (v100 >= v76)
              {
                v102 = v76;
              }

              else
              {
                v102 = v100;
              }

              v103 = memcmp(v77, v101, v102);
              v104 = v76 < v100;
              if (v103)
              {
                v104 = v103 < 0;
              }

              v98 -= 8;
            }

            while (v104);
            v97 = (v98 + 5);
          }

          while (v7 < v97)
          {
            sub_23C52D334(v7, v97);
            v105 = v7 + 88;
            do
            {
              v106 = v105;
              v107 = *(v105 + 23);
              if ((v107 & 0x80u) == 0)
              {
                v108 = v107;
              }

              else
              {
                v108 = v106[1];
              }

              if ((v107 & 0x80u) == 0)
              {
                v109 = v106;
              }

              else
              {
                v109 = *v106;
              }

              if (v108 >= v76)
              {
                v110 = v76;
              }

              else
              {
                v110 = v108;
              }

              v111 = memcmp(v77, v109, v110);
              v112 = v111 < 0;
              if (!v111)
              {
                v112 = v76 < v108;
              }

              v105 = (v106 + 8);
            }

            while (!v112);
            v7 = (v106 - 3);
            v113 = v97 - 5;
            do
            {
              v114 = v113;
              v115 = *(v113 + 23);
              if ((v115 & 0x80u) == 0)
              {
                v116 = v115;
              }

              else
              {
                v116 = v114[1];
              }

              if ((v115 & 0x80u) == 0)
              {
                v117 = v114;
              }

              else
              {
                v117 = *v114;
              }

              if (v116 >= v76)
              {
                v118 = v76;
              }

              else
              {
                v118 = v116;
              }

              v119 = memcmp(v77, v117, v118);
              v120 = v119 < 0;
              if (!v119)
              {
                v120 = v76 < v116;
              }

              v113 = v114 - 8;
            }

            while (v120);
            v97 = (v114 - 3);
          }

          v121 = (v7 - 64);
          a2 = v303;
          if ((v7 - 64) != a1)
          {
            v122 = *v121;
            *(a1 + 4) = *(v7 - 48);
            *a1 = v122;
            if (*(a1 + 47) < 0)
            {
              operator delete(*v18);
            }

            v123 = *(v7 - 40);
            *(a1 + 5) = *(v7 - 24);
            *v18 = v123;
            *(v7 - 17) = 0;
            *(v7 - 40) = 0;
            a1[3] = *(v7 - 16);
          }

          *(v7 - 48) = v319;
          *v121 = v312;
          v124 = (v7 - 40);
          if (*(v7 - 17) < 0)
          {
            operator delete(*v124);
          }

          a4 = 0;
          v125 = v324;
          *(v7 - 24) = v325;
          *v124 = v125;
          *(v7 - 16) = v326;
        }

        v25 = 0;
        v318 = *(a1 + 4);
        v311 = *a1;
        v26 = *(a1 + 5);
        v324 = *(a1 + 24);
        v325 = v26;
        *(a1 + 4) = 0;
        *(a1 + 5) = 0;
        *(a1 + 3) = 0;
        v326 = a1[3];
        v27 = SHIBYTE(v325) >= 0 ? HIBYTE(v325) : *(&v324 + 1);
        v28 = SHIBYTE(v325) >= 0 ? &v324 : v324;
        do
        {
          v29 = SHIBYTE(a1[v25 + 6]);
          if (v29 >= 0)
          {
            v30 = HIBYTE(a1[v25 + 6]);
          }

          else
          {
            v30 = *&a1[v25 + 6];
          }

          if (v29 >= 0)
          {
            v31 = &a1[v25 + 5] + 8;
          }

          else
          {
            v31 = *(&a1[v25 + 5] + 1);
          }

          if (v27 >= v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = v27;
          }

          v33 = memcmp(v31, v28, v32);
          v34 = v30 < v27;
          if (v33)
          {
            v34 = v33 < 0;
          }

          v25 += 4;
        }

        while (v34);
        v35 = &a1[v25];
        v36 = &a1[v25 - 4];
        v37 = v301;
        if (v36 == a1)
        {
          v37 = v301;
          while (1)
          {
            v44 = (v37 + 5);
            if (v35 >= (v37 + 5))
            {
              break;
            }

            v45 = *(v37 + 23);
            if (v45 >= 0)
            {
              v46 = *(v37 + 23);
            }

            else
            {
              v46 = v37[1];
            }

            if (v45 >= 0)
            {
              v47 = v37;
            }

            else
            {
              v47 = *v37;
            }

            if (v27 >= v46)
            {
              v48 = v46;
            }

            else
            {
              v48 = v27;
            }

            v49 = memcmp(v47, v28, v48);
            v50 = v46 < v27;
            if (v49)
            {
              v50 = v49 < 0;
            }

            v37 -= 8;
            if (v50)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          do
          {
            v38 = *(v37 + 23);
            if (v38 >= 0)
            {
              v39 = *(v37 + 23);
            }

            else
            {
              v39 = v37[1];
            }

            if (v38 >= 0)
            {
              v40 = v37;
            }

            else
            {
              v40 = *v37;
            }

            if (v27 >= v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v27;
            }

            v42 = memcmp(v40, v28, v41);
            v43 = v39 < v27;
            if (v42)
            {
              v43 = v42 < 0;
            }

            v37 -= 8;
          }

          while (!v43);
LABEL_80:
          v44 = (v37 + 5);
        }

        v7 = v35;
        if (v35 < v44)
        {
          v51 = v44;
          do
          {
            sub_23C52D334(v7, v51);
            v52 = v7 + 88;
            do
            {
              v53 = v52;
              v54 = *(v52 + 23);
              if ((v54 & 0x80u) == 0)
              {
                v55 = v54;
              }

              else
              {
                v55 = v53[1];
              }

              if ((v54 & 0x80u) == 0)
              {
                v56 = v53;
              }

              else
              {
                v56 = *v53;
              }

              if (v27 >= v55)
              {
                v57 = v55;
              }

              else
              {
                v57 = v27;
              }

              v58 = memcmp(v56, v28, v57);
              v59 = v58 < 0;
              if (!v58)
              {
                v59 = v55 < v27;
              }

              v52 = (v53 + 8);
            }

            while (v59);
            v7 = (v53 - 3);
            v60 = v51 - 5;
            do
            {
              v61 = v60;
              v62 = *(v60 + 23);
              if ((v62 & 0x80u) == 0)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61[1];
              }

              if ((v62 & 0x80u) == 0)
              {
                v64 = v61;
              }

              else
              {
                v64 = *v61;
              }

              if (v27 >= v63)
              {
                v65 = v63;
              }

              else
              {
                v65 = v27;
              }

              v66 = memcmp(v64, v28, v65);
              v67 = v66 < 0;
              if (!v66)
              {
                v67 = v63 < v27;
              }

              v60 = v61 - 8;
            }

            while (!v67);
            v51 = (v61 - 3);
          }

          while (v7 < (v61 - 3));
        }

        v68 = (v7 - 64);
        if ((v7 - 64) != a1)
        {
          v69 = *v68;
          *(a1 + 4) = *(v7 - 48);
          *a1 = v69;
          if (*(a1 + 47) < 0)
          {
            operator delete(*(a1 + 3));
          }

          v70 = *(v7 - 40);
          *(a1 + 5) = *(v7 - 24);
          *(a1 + 24) = v70;
          *(v7 - 17) = 0;
          *(v7 - 40) = 0;
          a1[3] = *(v7 - 16);
        }

        *(v7 - 48) = v318;
        *v68 = v311;
        v71 = (v7 - 40);
        if (*(v7 - 17) < 0)
        {
          operator delete(*v71);
        }

        v72 = v324;
        *(v7 - 24) = v325;
        *v71 = v72;
        *(v7 - 16) = v326;
        a2 = v303;
        if (v35 >= v44)
        {
          break;
        }

LABEL_119:
        sub_23C52BEB8(a1, v7 - 64, a3, a4 & 1);
        a4 = 0;
      }

      v73 = sub_23C52DA14(a1, (v7 - 64));
      if (sub_23C52DA14(v7, v303))
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_119;
      }
    }

    a2 = (v7 - 64);
    if (!v73)
    {
      continue;
    }

    break;
  }
}

__n128 sub_23C52D334(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = *(a1 + 4);
  v3 = *(a1 + 3);
  *v9 = *(a1 + 4);
  *&v9[7] = *(a1 + 39);
  v4 = *(a1 + 47);
  a1[2] = 0uLL;
  *(a1 + 3) = 0;
  v8 = a1[3];
  v5 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 5) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  a1[3] = a2[3];
  *a2 = v10;
  *(a2 + 4) = v11;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v3;
  *(a2 + 4) = *v9;
  *(a2 + 39) = *&v9[7];
  *(a2 + 47) = v4;
  result = v8;
  a2[3] = v8;
  return result;
}

double sub_23C52D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 24);
  v7 = (a1 + 24);
  v8 = *(a1 + 47);
  v9 = *(a2 + 47);
  if (v9 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  if (v9 >= 0)
  {
    v11 = (a2 + 24);
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v8 >= 0)
  {
    v13 = (a1 + 24);
  }

  else
  {
    v13 = *(a1 + 24);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  if (v15)
  {
    v16 = v15 < 0;
  }

  else
  {
    v16 = v10 < v12;
  }

  v17 = *(a3 + 47);
  if (v17 >= 0)
  {
    v18 = *(a3 + 47);
  }

  else
  {
    v18 = *(a3 + 32);
  }

  if (v17 >= 0)
  {
    v19 = (a3 + 24);
  }

  else
  {
    v19 = *(a3 + 24);
  }

  if (v10 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v10;
  }

  v21 = memcmp(v19, v11, v20);
  v23 = v18 < v10;
  if (v21)
  {
    v23 = v21 < 0;
  }

  if (v16)
  {
    v24 = a1;
    if (v23)
    {
LABEL_51:
      v34 = a3;
LABEL_72:

      *&result = sub_23C52D334(v24, v34).n128_u64[0];
      return result;
    }

    sub_23C52D334(a1, a2);
    v25 = *(a2 + 47);
    v26 = *(a3 + 47);
    if (v26 >= 0)
    {
      v27 = *(a3 + 47);
    }

    else
    {
      v27 = *(a3 + 32);
    }

    if (v26 >= 0)
    {
      v28 = (a3 + 24);
    }

    else
    {
      v28 = *(a3 + 24);
    }

    if (v25 >= 0)
    {
      v29 = *(a2 + 47);
    }

    else
    {
      v29 = *(a2 + 32);
    }

    if (v25 >= 0)
    {
      v30 = v6;
    }

    else
    {
      v30 = *(a2 + 24);
    }

    if (v29 >= v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    v32 = memcmp(v28, v30, v31);
    v33 = v27 < v29;
    if (v32)
    {
      v33 = v32 < 0;
    }

    if (v33)
    {
      v24 = a2;
      goto LABEL_51;
    }
  }

  else if (v23)
  {
    sub_23C52D334(a2, a3);
    v35 = *(a1 + 47);
    v36 = *(a2 + 47);
    if (v36 >= 0)
    {
      v37 = *(a2 + 47);
    }

    else
    {
      v37 = *(a2 + 32);
    }

    if (v36 >= 0)
    {
      v38 = v6;
    }

    else
    {
      v38 = *(a2 + 24);
    }

    if (v35 >= 0)
    {
      v39 = *(a1 + 47);
    }

    else
    {
      v39 = *(a1 + 32);
    }

    if (v35 >= 0)
    {
      v40 = v7;
    }

    else
    {
      v40 = *(a1 + 24);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    v42 = memcmp(v38, v40, v41);
    v43 = v37 < v39;
    if (v42)
    {
      v43 = v42 < 0;
    }

    if (v43)
    {
      v24 = a1;
      v34 = a2;
      goto LABEL_72;
    }
  }

  return result;
}

double sub_23C52D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C52D430(a1, a2, a3);
  v8 = *(a3 + 47);
  v9 = *(a4 + 47);
  if (v9 >= 0)
  {
    v10 = *(a4 + 47);
  }

  else
  {
    v10 = *(a4 + 32);
  }

  if (v9 >= 0)
  {
    v11 = (a4 + 24);
  }

  else
  {
    v11 = *(a4 + 24);
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 47);
  }

  else
  {
    v12 = *(a3 + 32);
  }

  if (v8 >= 0)
  {
    v13 = (a3 + 24);
  }

  else
  {
    v13 = *(a3 + 24);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v17 = v10 < v12;
  if (v15)
  {
    v17 = v15 < 0;
  }

  if (v17)
  {
    sub_23C52D334(a3, a4);
    v18 = *(a2 + 47);
    v19 = *(a3 + 47);
    if (v19 >= 0)
    {
      v20 = *(a3 + 47);
    }

    else
    {
      v20 = *(a3 + 32);
    }

    if (v19 >= 0)
    {
      v21 = (a3 + 24);
    }

    else
    {
      v21 = *(a3 + 24);
    }

    if (v18 >= 0)
    {
      v22 = *(a2 + 47);
    }

    else
    {
      v22 = *(a2 + 32);
    }

    if (v18 >= 0)
    {
      v23 = (a2 + 24);
    }

    else
    {
      v23 = *(a2 + 24);
    }

    if (v22 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, v23, v24);
    v26 = v20 < v22;
    if (v25)
    {
      v26 = v25 < 0;
    }

    if (v26)
    {
      sub_23C52D334(a2, a3);
      v27 = *(a1 + 47);
      v28 = *(a2 + 47);
      if (v28 >= 0)
      {
        v29 = *(a2 + 47);
      }

      else
      {
        v29 = *(a2 + 32);
      }

      if (v28 >= 0)
      {
        v30 = (a2 + 24);
      }

      else
      {
        v30 = *(a2 + 24);
      }

      if (v27 >= 0)
      {
        v31 = *(a1 + 47);
      }

      else
      {
        v31 = *(a1 + 32);
      }

      if (v27 >= 0)
      {
        v32 = (a1 + 24);
      }

      else
      {
        v32 = *(a1 + 24);
      }

      if (v31 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v31;
      }

      v34 = memcmp(v30, v32, v33);
      v35 = v29 < v31;
      if (v34)
      {
        v35 = v34 < 0;
      }

      if (v35)
      {

        *&result = sub_23C52D334(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

double sub_23C52D7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23C52D634(a1, a2, a3, a4);
  v10 = *(a4 + 47);
  v11 = *(a5 + 47);
  if (v11 >= 0)
  {
    v12 = *(a5 + 47);
  }

  else
  {
    v12 = *(a5 + 32);
  }

  if (v11 >= 0)
  {
    v13 = (a5 + 24);
  }

  else
  {
    v13 = *(a5 + 24);
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 47);
  }

  else
  {
    v14 = *(a4 + 32);
  }

  if (v10 >= 0)
  {
    v15 = (a4 + 24);
  }

  else
  {
    v15 = *(a4 + 24);
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
  v19 = v12 < v14;
  if (v17)
  {
    v19 = v17 < 0;
  }

  if (v19)
  {
    sub_23C52D334(a4, a5);
    v20 = *(a3 + 47);
    v21 = *(a4 + 47);
    if (v21 >= 0)
    {
      v22 = *(a4 + 47);
    }

    else
    {
      v22 = *(a4 + 32);
    }

    if (v21 >= 0)
    {
      v23 = (a4 + 24);
    }

    else
    {
      v23 = *(a4 + 24);
    }

    if (v20 >= 0)
    {
      v24 = *(a3 + 47);
    }

    else
    {
      v24 = *(a3 + 32);
    }

    if (v20 >= 0)
    {
      v25 = (a3 + 24);
    }

    else
    {
      v25 = *(a3 + 24);
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      sub_23C52D334(a3, a4);
      v29 = *(a2 + 47);
      v30 = *(a3 + 47);
      if (v30 >= 0)
      {
        v31 = *(a3 + 47);
      }

      else
      {
        v31 = *(a3 + 32);
      }

      if (v30 >= 0)
      {
        v32 = (a3 + 24);
      }

      else
      {
        v32 = *(a3 + 24);
      }

      if (v29 >= 0)
      {
        v33 = *(a2 + 47);
      }

      else
      {
        v33 = *(a2 + 32);
      }

      if (v29 >= 0)
      {
        v34 = (a2 + 24);
      }

      else
      {
        v34 = *(a2 + 24);
      }

      if (v33 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v33;
      }

      v36 = memcmp(v32, v34, v35);
      v37 = v31 < v33;
      if (v36)
      {
        v37 = v36 < 0;
      }

      if (v37)
      {
        sub_23C52D334(a2, a3);
        v38 = *(a1 + 47);
        v39 = *(a2 + 47);
        if (v39 >= 0)
        {
          v40 = *(a2 + 47);
        }

        else
        {
          v40 = *(a2 + 32);
        }

        if (v39 >= 0)
        {
          v41 = (a2 + 24);
        }

        else
        {
          v41 = *(a2 + 24);
        }

        if (v38 >= 0)
        {
          v42 = *(a1 + 47);
        }

        else
        {
          v42 = *(a1 + 32);
        }

        if (v38 >= 0)
        {
          v43 = (a1 + 24);
        }

        else
        {
          v43 = *(a1 + 24);
        }

        if (v42 >= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v42;
        }

        v45 = memcmp(v41, v43, v44);
        v46 = v40 < v42;
        if (v45)
        {
          v46 = v45 < 0;
        }

        if (v46)
        {

          *&result = sub_23C52D334(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_23C52DA14(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 47);
        v6 = *(a2 - 17);
        if (v6 >= 0)
        {
          v7 = *(a2 - 17);
        }

        else
        {
          v7 = *(a2 - 4);
        }

        if (v6 >= 0)
        {
          v8 = a2 - 40;
        }

        else
        {
          v8 = *(a2 - 5);
        }

        if (v5 >= 0)
        {
          v9 = *(a1 + 47);
        }

        else
        {
          v9 = *(a1 + 32);
        }

        if (v5 >= 0)
        {
          v10 = (a1 + 24);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        if (v9 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = memcmp(v8, v10, v11);
        v13 = v7 < v9;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (v13)
        {
          sub_23C52D334(a1, a2 - 4);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_23C52D430(a1, a1 + 64, (a2 - 4));
      return 1;
    case 4:
      sub_23C52D634(a1, a1 + 64, a1 + 128, (a2 - 4));
      return 1;
    case 5:
      sub_23C52D7EC(a1, a1 + 64, a1 + 128, a1 + 192, (a2 - 4));
      return 1;
  }

LABEL_28:
  v14 = (a1 + 128);
  sub_23C52D430(a1, a1 + 64, a1 + 128);
  v15 = (a1 + 192);
  if ((a1 + 192) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = (v15 + 24);
    v21 = *(v14 + 3);
    v20 = v14 + 24;
    v19 = v21;
    v22 = *(v20 + 23);
    v23 = *(v15 + 47);
    if (v23 >= 0)
    {
      v24 = *(v15 + 47);
    }

    else
    {
      v24 = *(v15 + 4);
    }

    if (v23 >= 0)
    {
      v25 = v15 + 24;
    }

    else
    {
      v25 = *(v15 + 3);
    }

    if (v22 >= 0)
    {
      v26 = *(v20 + 23);
    }

    else
    {
      v26 = *(v20 + 8);
    }

    if (v22 >= 0)
    {
      v27 = v20;
    }

    else
    {
      v27 = v19;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v46 = *v15;
      v47 = *(v15 + 4);
      v48 = *v18;
      v49 = *(v15 + 5);
      *v18 = 0;
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      v31 = v16;
      v50 = v15[3];
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 192) = *(a1 + v31 + 128);
        *(v32 + 208) = *(a1 + v31 + 144);
        if (*(a1 + v31 + 239) < 0)
        {
          operator delete(*(v32 + 216));
        }

        *(v32 + 216) = *(v32 + 152);
        *(v32 + 232) = *(v32 + 168);
        *(v32 + 175) = 0;
        *(v32 + 152) = 0;
        *(v32 + 240) = *(v32 + 176);
        if (v31 == -128)
        {
          break;
        }

        v33 = a1 + v31;
        v34 = *(a1 + v31 + 111);
        if (v49 >= 0)
        {
          v35 = HIBYTE(v49);
        }

        else
        {
          v35 = *(&v48 + 1);
        }

        if (v49 >= 0)
        {
          v36 = &v48;
        }

        else
        {
          v36 = v48;
        }

        if (v34 >= 0)
        {
          v37 = *(a1 + v31 + 111);
        }

        else
        {
          v37 = *(a1 + v31 + 96);
        }

        if (v34 >= 0)
        {
          v38 = (a1 + v31 + 88);
        }

        else
        {
          v38 = *(a1 + v31 + 88);
        }

        if (v37 >= v35)
        {
          v39 = v35;
        }

        else
        {
          v39 = v37;
        }

        v40 = memcmp(v36, v38, v39);
        v41 = v35 < v37;
        if (v40)
        {
          v41 = v40 < 0;
        }

        v31 -= 64;
        if (!v41)
        {
          v42 = v33 + 152;
          v43 = a1 + v31 + 192;
          v44 = (v33 + 176);
          goto LABEL_72;
        }
      }

      v42 = a1 + 24;
      v44 = (a1 + 48);
      v43 = a1;
LABEL_72:
      *v43 = v46;
      *(v43 + 16) = v47;
      if (*(v43 + 47) < 0)
      {
        operator delete(*v42);
      }

      *v42 = v48;
      *(v42 + 16) = v49;
      *v44 = v50;
      if (++v17 == 8)
      {
        return v15 + 4 == a2;
      }
    }

    v14 = v15;
    v16 += 64;
    v15 += 4;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_23C52DD68(uint64_t *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  v102 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = a2[2];
  *(a1 + 4) = 0;
  *(a1 + 10) = a6;
  *(a1 + 11) = 0;
  a1[2] = a5;
  *(a1 + 29) = 1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 1;
  a1[9] = (a1 + 11);
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[10] = 0x800000000;
  a1[19] = 0;
  a1[20] = 0;
  v12 = *(*(a1 + *(*a1 - 24) + 400) + 32);
  if (*(v12 + 16))
  {
    strlen(*(v12 + 16));
  }

  *(a1 + 13) = xmmword_23C532560;
  a1[30] = 0x1000000000;
  *(a1 + 88) = 0;
  *(a1 + 94) = 0;
  a1[25] = (a1 + 28);
  a1[29] = (a1 + 31);
  a1[47] = 0;
  *(a1 + 24) = 0u;
  a1[50] = (a1 + 52);
  a1[51] = 0x800000000;
  a1[68] = 0;
  a1[69] = (a1 + 71);
  a1[70] = 0x800000000;
  llvm::DataLayout::reset();
  a1[75] = (a1 + 77);
  a1[76] = 0x400000000;
  *(a1 + 162) = 128;
  a1[79] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4F9130(a1 + 79);
  *(a1 + 656) = 0;
  *(a1 + 680) = 0;
  *(a1 + 178) = 128;
  a1[87] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4EDF58(a1 + 87);
  *(a1 + 720) = 0;
  *(a1 + 744) = 0;
  a1[95] = (a1 + 96);
  *(a1 + 53) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 51) = 0u;
  a1[104] = 0;
  a1[105] = (a1 + 106);
  *(a1 + 109) = 0u;
  a1[108] = (a1 + 109);
  a1[111] = (a1 + 115);
  a1[112] = (a1 + 115);
  a1[113] = 8;
  *(a1 + 228) = 0;
  bzero(a1 + 123, 0x230uLL);
  for (i = 0; i != 70; i += 7)
  {
    v14 = &a1[i];
    v14[123] = 4;
    *(v14 + 62) = 0uLL;
    *(v14 + 63) = 0uLL;
    v14[128] = 0;
    v14[129] = -1;
  }

  v15 = 0;
  *(a1 + 209) = 0u;
  *(a1 + 211) = 0u;
  *(a1 + 205) = 0u;
  *(a1 + 207) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 203) = 0u;
  *(a1 + 197) = 0u;
  *(a1 + 199) = 0u;
  *(a1 + 193) = 0u;
  *(a1 + 195) = 0u;
  a1[213] = 0;
  do
  {
    v16 = &a1[v15];
    v16[193] = 4;
    *(v16 + 97) = 0uLL;
    *(v16 + 98) = 0uLL;
    v16[198] = 0;
    v15 += 7;
    v16[199] = -1;
  }

  while (v15 != 21);
  v17 = 0;
  a1[234] = 0;
  *(a1 + 116) = 0u;
  *(a1 + 115) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 111) = 0u;
  *(a1 + 110) = 0u;
  *(a1 + 109) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 107) = 0u;
  do
  {
    v18 = &a1[v17];
    v18[214] = 4;
    v19 = &a1[v17 + 215];
    v18[219] = 0;
    *v19 = 0uLL;
    *(v19 + 1) = 0uLL;
    v18[220] = -1;
    v17 += 7;
  }

  while (v17 != 21);
  v20 = 0;
  *(a1 + 470) = 0;
  do
  {
    a1[v20 + 236] = 4;
    *&a1[v20 + 237] = 0uLL;
    v20 += 3;
  }

  while (v20 != 9);
  a1[245] = "agc.driver.api_texture.";
  *(a1 + 123) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 500) = 1065353216;
  a1[251] = "agc.driver.api_sampler.";
  *(a1 + 126) = 0u;
  *(a1 + 127) = 0u;
  *(a1 + 512) = 1065353216;
  a1[257] = "agc.driver.ab_texture.";
  *(a1 + 129) = 0u;
  *(a1 + 130) = 0u;
  *(a1 + 524) = 1065353216;
  a1[263] = "agc.driver.ab_sampler.";
  *(a1 + 132) = 0u;
  *(a1 + 133) = 0u;
  *(a1 + 536) = 1065353216;
  a1[269] = (a1 + 271);
  a1[270] = 0x200000000;
  *(a1 + 137) = 0u;
  a1[273] = (a1 + 274);
  *(a1 + 556) = 128;
  a1[276] = MEMORY[0x23EED4160](6144, 8);
  sub_23C4FB7FC(a1 + 276);
  *(a1 + 2232) = 0;
  *(a1 + 2256) = 0;
  *(a1 + 142) = 0u;
  *(a1 + 143) = 0u;
  a1[288] = (a1 + 290);
  a1[289] = 0x400000000;
  *(a1 + 1192) = 0;
  *(a1 + 606) = 0;
  *(a1 + 299) = 0u;
  *(a1 + 301) = 0u;
  a1[196] = "agc.sampler_words";
  v21 = *a1;
  a1[197] = *(*(a1 + *(*a1 - 24) + 344) + 1584);
  a1[198] = "sampler_state";
  a1[199] = 0x100000040;
  a1[203] = "agc.sampler_es1_lod_bias";
  a1[204] = *(a1 + *(v21 - 24) + 160);
  a1[205] = "driver_parameters";
  *(a1 + 412) = *(*(a1 + *(v21 - 24) + 344) + 836);
  *(a1 + 413) = 19;
  a1[210] = "agc.sampler_unique_id";
  a1[211] = *(a1 + *(v21 - 24) + 200);
  a1[212] = "driver_parameters";
  *(a1 + 426) = *(*(a1 + *(v21 - 24) + 344) + 836);
  *(a1 + 427) = 98;
  a1[217] = "agc.constant_sampler_words";
  a1[218] = *(*(a1 + *(v21 - 24) + 344) + 1584);
  a1[219] = "constant_driver";
  a1[220] = 0x1200000040;
  a1[126] = "agc.read_image_words";
  a1[127] = *(*(a1 + *(v21 - 24) + 344) + 1576);
  a1[128] = "image_state";
  a1[129] = 64;
  a1[133] = "agc.write_image_words";
  a1[134] = *(*(a1 + *(v21 - 24) + 344) + 1576);
  a1[135] = "image_state";
  a1[136] = 0x600000040;
  a1[140] = "agc.image_dim";
  a1[141] = llvm::FixedVectorType::get();
  a1[142] = "driver_parameters";
  v22 = *a1;
  *(a1 + 286) = *(*(a1 + *(*a1 - 24) + 344) + 836);
  *(a1 + 287) = 11;
  a1[147] = "agc.image_array_info";
  Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(v22 - 24) + 336), 2);
  v24 = *(a1 + *(*a1 - 24) + 192);
  __p[0] = Int8PtrTy;
  __p[1] = v24;
  v100 = v24;
  a1[148] = llvm::StructType::get();
  a1[149] = "driver_parameters";
  v25 = *a1;
  *(a1 + 300) = *(*(a1 + *(*a1 - 24) + 344) + 836);
  *(a1 + 301) = 12;
  a1[161] = "agc.image_mipmap_count";
  a1[162] = *(a1 + *(v25 - 24) + 192);
  a1[163] = "driver_parameters";
  *(a1 + 328) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 329) = 16;
  a1[168] = "agc.image_sample_count";
  a1[169] = *(a1 + *(v25 - 24) + 192);
  a1[170] = "driver_parameters";
  *(a1 + 342) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 343) = 17;
  a1[154] = "agc.image_pack_format";
  a1[155] = *(a1 + *(v25 - 24) + 192);
  a1[156] = "driver_parameters";
  *(a1 + 314) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 315) = 13;
  a1[175] = "agc.image_base_level";
  a1[176] = *(a1 + *(v25 - 24) + 192);
  a1[177] = "driver_parameters";
  *(a1 + 356) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 357) = 62;
  a1[189] = "agc.image_unique_id";
  a1[190] = *(a1 + *(v25 - 24) + 200);
  a1[191] = "driver_parameters";
  *(a1 + 384) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 385) = 97;
  a1[182] = "agc.image_heap_index";
  a1[183] = *(a1 + *(v25 - 24) + 192);
  a1[184] = "driver_parameters";
  *(a1 + 370) = *(*(a1 + *(v25 - 24) + 344) + 836);
  *(a1 + 371) = 93;
  v26 = *a1;
  *(a1 + *(*a1 - 24) + 320) = a3;
  *(*(a1 + *(v26 - 24) + 344) + 320) = *(a1 + *(v26 - 24) + 320);
  *(*(a1 + *(v26 - 24) + 344) + 328) = a1 + *(v26 - 24) + 592;
  *(a1 + 24) = 1;
  v27 = *(a1 + *(v26 - 24) + 320);
  __p[0] = "air.compile_options";
  v101 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v27, __p);
  if (NamedMetadata)
  {
    v29 = NamedMetadata;
    v30 = 0;
    while (v30 < llvm::NamedMDNode::getNumOperands(v29))
    {
      Operand = llvm::NamedMDNode::getOperand(v29);
      ++v30;
      if (sub_23C4A57A0(*(Operand - 8 * *(Operand + 8)), "air.compile.fast_math_disable"))
      {
        *(a1 + 24) = 0;
        break;
      }
    }

    llvm::NamedMDNode::eraseFromParent(v29);
  }

  v32 = (a3 + 168);
  if (*(a3 + 191) < 0)
  {
    v34 = *(a3 + 176);
    if (v34 != 20)
    {
      if (v34 != 22)
      {
LABEL_31:
        v40 = 0;
        goto LABEL_43;
      }

      v32 = *v32;
LABEL_24:
      v35 = *v32;
      v36 = v32[1];
      v37 = *(v32 + 14);
      if (v35 == 0x746E656D67617246 && v36 == 0x505F65746174535FLL && v37 == 0x6D6172676F72505FLL)
      {
        v40 = 1;
        goto LABEL_43;
      }

      goto LABEL_31;
    }

    v32 = *v32;
  }

  else
  {
    v33 = *(a3 + 191);
    if (v33 != 20)
    {
      if (v33 != 22)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }
  }

  v41 = *v32;
  v42 = v32[1];
  v43 = *(v32 + 4);
  v40 = v41 == 0x535F786574726556 && v42 == 0x6F72505F65746174 && v43 == 1835102823;
LABEL_43:
  *(a1 + 10) |= v40;
  v46 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "air.language_version";
  v101 = 259;
  v47 = llvm::Module::getNamedMetadata(v46, __p);
  if (v47)
  {
    v48 = llvm::NamedMDNode::getOperand(v47);
    if (v48)
    {
      if (sub_23C4A57A0(*(v48 - 8 * *(v48 + 8)), "OpenGL ES GLSL"))
      {
        *(a1 + 10) = 1;
      }
    }
  }

  v49 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "air.version";
  v101 = 259;
  v50 = llvm::Module::getNamedMetadata(v49, __p);
  if (v50)
  {
    llvm::NamedMDNode::eraseFromParent(v50);
  }

  v51 = *(a1 + 24);
  *(a1 + 26) = v51 | a6;
  *(a1 + 28) = v51 | a6;
  *(a1 + 27) = v51 | a6;
  *(a1 + 25) = v51;
  v52 = *a1;
  v53 = *(a1 + 25);
  if (v53)
  {
    v54 = -1;
  }

  else
  {
    v54 = 16;
  }

  if ((v53 & 0x100) != 0)
  {
    v54 |= 6u;
  }

  *(a1 + *(*a1 - 24) + 104) = v54 | (v53 >> 13) & 8;
  v55 = *(a1 + 25);
  if (v55)
  {
    v56 = -1;
  }

  else
  {
    v56 = 16;
  }

  if ((v55 & 0x100) != 0)
  {
    v56 |= 6u;
  }

  *(*(a1 + *(v52 - 24) + 344) + 104) = v56 | (v55 >> 13) & 8;
  v57 = *(a1 + *(v52 - 24) + 320);
  v58 = 1;
  HIBYTE(v101) = 1;
  if (*a4)
  {
    __p[0] = a4;
    v58 = 3;
  }

  LOBYTE(v101) = v58;
  v59 = llvm::Module::getNamedMetadata(v57, __p);
  a1[6] = v59;
  v60 = llvm::NamedMDNode::getOperand(v59);
  a1[20] = 0;
  v61 = *(v60 - 8 * *(v60 + 8));
  if (v61 && *v61 - 1 <= 1)
  {
    v62 = *(v61 + 16);
    if (*(v62 + 16))
    {
      v62 = 0;
    }

    a1[20] = v62;
  }

  v63 = *(a1 + *(*a1 - 24) + 320);
  __p[0] = "llvm.dbg.cu";
  v101 = 259;
  if (llvm::Module::getNamedMetadata(v63, __p))
  {
    *(a1 + *(*a1 - 24) + 576) = 1;
    Subprogram = llvm::Function::getSubprogram(a1[20]);
    if (Subprogram)
    {
      llvm::DILocalScope::getNonLexicalBlockFileScope(Subprogram);
      a1[5] = llvm::DILocation::getImpl();
    }
  }

  v65 = a1[20];
  Name = llvm::Value::getName(v65);
  if (v67 == 23)
  {
    v68 = *Name == 0x747265762E726961 && Name[1] == 0x4668637465467865;
    if (v68 && *(Name + 15) == 0x6E6F6974636E7546)
    {
      v70 = *(a1[20] + 80);
      v71 = v70 ? v70 - 24 : 0;
      v72 = *(v71 + 40);
      v73 = v72 - 24;
      v74 = v72 ? v72 - 24 : 0;
      v75 = *(v74 + 16) - 29 >= 0xB ? 0 : v73;
      v76 = *(v75 + 16) == 29 ? v75 : 0;
      v77 = *(v76 + 20) & 0x7FFFFFF;
      if (v77 && (v78 = *(v76 - 32 * v77)) != 0)
      {
        v79 = *(v78 + 16);
      }

      else
      {
        v80 = *(v76 + 24);
        v78 = v80 - 24;
        v81 = v80 ? v80 - 24 : 0;
        v79 = *(v81 + 16);
      }

      if (v79 == 84)
      {
        v82 = *(v78 - 32);
        if (!v82 || *(v82 + 16) || *(v82 + 24) != *(v78 + 72))
        {
          v82 = 0;
        }

        if (v82)
        {
          v65 = v82;
        }
      }
    }
  }

  __p[0] = llvm::Function::getFnAttribute();
  if (llvm::Attribute::isStringAttribute(__p))
  {
    ValueAsString = llvm::Attribute::getValueAsString(__p);
    if (v84 == 10 && *ValueAsString == 0x696F706563617274 && *(ValueAsString + 8) == 29806)
    {
      *(a1 + 37) = 1;
    }
  }

  v98[0] = llvm::Value::getName(v65);
  v98[1] = v86;
  v87 = sub_23C4AE5DC(__p, v98);
  if (SHIBYTE(v100) >= 0)
  {
    v88 = __p;
  }

  else
  {
    v88 = __p[0];
  }

  sub_23C4AA240(v87, "------ Compiling function : %s ------", v88);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p[0]);
  }

  v89 = a1[20];
  if (**(*(v89 + 24) + 16) != *(a1 + *(*a1 - 24) + 144))
  {
    a1[7] = *(v60 - 8 * *(v60 + 8) + 8);
  }

  v90 = *(v89 + 96);
  if (v90)
  {
    v91 = *(v60 - 8 * *(v60 + 8) + 16);
    a1[8] = v91;
    v92 = *(a1 + 20);
    if (v90 != v92)
    {
      if (v90 >= v92)
      {
        if (v90 > *(a1 + 21))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v92 != v90)
        {
          bzero((a1[9] + 8 * v92), 8 * v90 - 8 * v92);
        }
      }

      *(a1 + 20) = v90;
      v91 = a1[8];
    }

    v93 = *(v91 + 8);
    if (v93)
    {
      for (j = 0; j < v93; ++j)
      {
        v95 = *(v91 - 8 * v93 + 8 * j);
        LODWORD(v98[0]) = 0;
        LODWORD(__p[0]) = 0;
        sub_23C506AF0(0, v95, __p, v98);
        *(a1[9] + 8 * LODWORD(v98[0])) = v95;
        v91 = a1[8];
        v93 = *(v91 + 8);
      }
    }
  }

  v96 = *a2;
  *a1 = *a2;
  *(a1 + *(v96 - 24)) = a2[3];
  return a1;
}

uint64_t sub_23C52EDE4(void *a1, llvm::Value *a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
    if (v9 > 10)
    {
      if (v9 == 11)
      {
        if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
        {
          if (!*(a2 + 1))
          {
            return 1;
          }

          v52 = *(a1[9] + 8 * a3);
          LOBYTE(v61) = 0;
          LOBYTE(v59) = 0;
          LODWORD(v62[0]) = 0;
          LODWORD(__dst[0]) = 0;
          *v66 = 0;
          *&v66[4] = 0xFFFFFFFFLL;
          *&v66[16] = 0;
          if (!sub_23C506E20(v52, v62, __dst, &v66[1], v66, &v61, &v59))
          {
            goto LABEL_28;
          }

          v40 = v61;
          v53 = a2;
          if (v61 == 1)
          {
            v53 = *(**(*a2 + 16) + 16);
          }

          v67 = **(*v53 + 16);
          v43 = (*(*a1 + 208))(a1, LODWORD(v62[0]));
          v44 = __dst[0];
          *(a1 + 571) += LODWORD(__dst[0]);
          *(a1 + 2384) |= v59;
          LODWORD(v65) = v43;
          HIDWORD(v65) = v44;
          sub_23C4F0AE4(a1 + 105, v43, &v65);
          if (v66[0] == 1)
          {
            if (v40)
            {
              v54 = ~(-1 << v44);
            }

            else
            {
              v54 = 1;
            }

            *(a1 + 606) |= v54 << v43;
          }

          v45 = (a1 + 245);
        }

        else
        {
          if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
          {
            goto LABEL_28;
          }

          if (!*(a2 + 1))
          {
            return 1;
          }

          v39 = *(a1[9] + 8 * a3);
          LODWORD(v62[0]) = 0;
          LODWORD(__dst[0]) = 0;
          LOBYTE(v61) = 0;
          if ((sub_23C506C8C(v39, v62, __dst, &v61) & 1) == 0)
          {
            goto LABEL_28;
          }

          LOBYTE(v40) = v61;
          v41 = a2;
          if (v61 == 1)
          {
            v41 = *(**(*a2 + 16) + 16);
          }

          v42 = *v41;
          v43 = (*(*a1 + 208))(a1, LODWORD(v62[0]));
          v44 = __dst[0];
          *(a1 + 572) += LODWORD(__dst[0]);
          *v66 = 0;
          *&v66[8] = **(v42 + 16);
          LODWORD(v65) = v43;
          HIDWORD(v65) = v44;
          sub_23C4FA210(a1 + 108, v43, &v65);
          v45 = (a1 + 251);
        }

        if (sub_23C5024E8(a1, a2, v43, v44, v40, v45))
        {
          return 1;
        }

        goto LABEL_28;
      }

      if (v9 != 19)
      {
        if (v9 != 22)
        {
          goto LABEL_28;
        }

        v10 = *String == 0x63616E692E726961 && *(String + 1) == 0x656C626973736563;
        if (!v10 || *(String + 14) != 0x7475706E695F656CLL)
        {
          goto LABEL_28;
        }

        llvm::UndefValue::get();
LABEL_126:
        llvm::Value::replaceAllUsesWith();
        return 1;
      }

      if (*String != 0x69646E692E726961 || *(String + 1) != 0x6675625F74636572 || *(String + 11) != 0x7265666675625F74)
      {
        goto LABEL_28;
      }

LABEL_93:
      sub_23C4FF724(a1, a2, a3, a4, 0xFFFFFFFF);
      return 1;
    }

    if (v9 != 9)
    {
      if (v9 != 10)
      {
        goto LABEL_28;
      }

      if (*String != 0x666675622E726961 || *(String + 4) != 29285)
      {
        goto LABEL_28;
      }

      goto LABEL_93;
    }
  }

  else
  {
    String = "air.byval";
  }

  if (*String == 0x617679622E726961 && String[8] == 108)
  {
    v34 = *a2;
    v65 = "agc.byval.";
    *&v66[8] = a3;
    LOWORD(v67) = 2051;
    v35 = sub_23C4ED494(a1, v34, &v65, a3, 0, 5u);
    v36 = (a1 + *(*a1 - 24));
    LOWORD(v67) = 257;
    sub_23C497C88(v36 + 1, **(*v35 + 16), v35, 0, &v65);
    goto LABEL_126;
  }

LABEL_28:
  v14 = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v16 = v14;
  v17 = v15;
  if (v15 == 11)
  {
    v18 = 0x66696E752E726961;
    if (*v14 != 0x66696E752E726961 || *(v14 + 3) != 0x6D726F66696E752ELL)
    {
      return 0;
    }
  }

  else
  {
    if (v15 != 19)
    {
      return 0;
    }

    v18 = *(v14 + 11);
    v20 = *v14 == 0x616665642E726961 && v14[1] == 0x66696E755F746C75;
    if (!v20 || v18 != 0x6D726F66696E755FLL)
    {
      return 0;
    }
  }

  v64 = 0;
  v23 = *(a4 + 8);
  if (v23 >= 3)
  {
    v24 = 2;
    do
    {
      v25 = v24 + 1;
      v26 = *(a4 - 8 * *(a4 + 8) + 8 * v24);
      if (v26 && !*v26)
      {
        v27 = llvm::MDString::getString(v26);
        if (v28 == 11)
        {
          v18 = 0x646E69622E726961;
          if (*v27 != 0x646E69622E726961 || *(v27 + 3) != 0x676E69646E69622ELL)
          {
            goto LABEL_48;
          }

          LODWORD(v65) = v24 + 1;
          if (!sub_23C506AF0(0, a4, &v65, &v64))
          {
            return 0;
          }
        }

        else
        {
          if (v28 != 15)
          {
            goto LABEL_48;
          }

          v18 = 0x666675622E726961;
          if (*v27 != 0x666675622E726961 || *(v27 + 7) != 0x657A69735F726566)
          {
            goto LABEL_48;
          }

          LODWORD(v65) = v24 + 1;
          if ((sub_23C506AF0(0, a4, &v65, &v64 + 1) & 1) == 0)
          {
            return 0;
          }
        }

        v25 = v24 + 2;
      }

LABEL_48:
      v24 = v25;
    }

    while (v25 < v23);
  }

  if (v17 == 11)
  {
    v31 = 0x6169722E756E6966;
    v32 = bswap64(*v16);
    if (v32 == 0x6169722E756E6966 && (v31 = 0x2E756E69666F726DLL, v32 = bswap64(*(v16 + 3)), v32 == 0x2E756E69666F726DLL))
    {
      v33 = 0;
    }

    else if (v32 < v31)
    {
      v33 = -1;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      v48 = 4;
    }

    else
    {
      v48 = 5;
    }
  }

  else
  {
    v48 = 4;
  }

  v49 = *a2;
  v62[0] = "agc.buffer_pointers";
  v62[2] = ".";
  v63 = 771;
  if (v16)
  {
    HIBYTE(v58) = v17;
    memmove(__dst, v16, v17);
    *(__dst + v17) = 0;
    v50 = v63;
    if (v63 == 1)
    {
      v65 = __dst;
      *&v66[8] = v61;
      LOWORD(v67) = 260;
      *(&v67 + 2) = v59;
      HIWORD(v67) = v60;
      goto LABEL_123;
    }

    if (!v63)
    {
      LOWORD(v67) = 256;
      goto LABEL_123;
    }

    v51 = v62[0];
    v18 = v62[1];
    if (HIBYTE(v63) != 1)
    {
      v50 = 2;
      v51 = v62;
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v50 = 2;
    v51 = v62;
    v58 = 0;
  }

  v65 = v51;
  *v66 = v18;
  *&v66[8] = __dst;
  LOBYTE(v67) = v50;
  BYTE1(v67) = 4;
LABEL_123:
  v55 = sub_23C4ED494(a1, v49, &v65, v64, HIDWORD(v64), v48);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst[0]);
  }

  v56 = (a1 + *(*a1 - 24));
  LOWORD(v67) = 257;
  result = sub_23C497C88(v56 + 1, **(*v55 + 16), v55, 0, &v65);
  if (result)
  {
    goto LABEL_126;
  }

  return result;
}

uint64_t sub_23C52F648(uint64_t result)
{
  v1 = *(result + *(*result - 24) + 320);
  v2 = v1 + 24;
  v3 = *(v1 + 32);
  if (v3 != v1 + 24)
  {
    while (1)
    {
      if (v3)
      {
        v4 = v3 - 56;
      }

      else
      {
        v4 = 0;
      }

      result = llvm::GlobalValue::isDeclaration(v4);
      if (result)
      {
        goto LABEL_6;
      }

      if ((*(v4 + 18) & 1) == 0)
      {
        break;
      }

      result = llvm::Function::BuildLazyArguments(v4);
      v5 = *(v4 + 88);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_11;
      }

      result = llvm::Function::BuildLazyArguments(v4);
      v6 = *(v4 + 88);
LABEL_13:
      v7 = v6 + 40 * *(v4 + 96);
      while (v5 != v7)
      {
        if (*(*v5 + 8) == 15)
        {
          result = llvm::Function::addParamAttr();
        }

        v5 += 40;
      }

LABEL_6:
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        return result;
      }
    }

    v5 = *(v4 + 88);
LABEL_11:
    v6 = v5;
    goto LABEL_13;
  }

  return result;
}

void sub_23C52F73C(void *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 150);
  if (v2)
  {
    v4 = *(v1 + 74);
    v5 = &v4[v2];
    v6 = a1 + 43;
    do
    {
      Impl = *v4;
      v8 = *(*v4 + 8);
      if (v8 < 3)
      {
        goto LABEL_29;
      }

      v9 = *(Impl - 8 * v8);
      if (!v9)
      {
        goto LABEL_29;
      }

      if (*v9 - 1 > 1)
      {
        goto LABEL_29;
      }

      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_29;
      }

      if (*(v10 + 16) != 3)
      {
        goto LABEL_29;
      }

      if ((*(v10 + 34) & 0x40) == 0)
      {
        goto LABEL_29;
      }

      SectionImpl = llvm::GlobalObject::getSectionImpl(v10);
      if (v12 != 15)
      {
        goto LABEL_29;
      }

      if (*SectionImpl != 0x625F726566667562 || *(SectionImpl + 7) != 0x73676E69646E6962)
      {
        goto LABEL_29;
      }

      if (*(*v10 + 8) != 16399)
      {
        goto LABEL_29;
      }

      v14 = **(*v10 + 16);
      v15 = *(v14 + 8);
      if (v15 != 15 || (v15 >> 8) - 1 > 1)
      {
        goto LABEL_29;
      }

      v16 = v10;
      while (1)
      {
        v16 = *(v16 + 8);
        if (!v16)
        {
          break;
        }

        if (*(*(v16 + 24) + 16) != 60)
        {
          goto LABEL_29;
        }
      }

      v17 = 0;
      v55 = 0;
      if (*(Impl + 8) == 4)
      {
        LODWORD(v56) = 3;
        if (!sub_23C506AF0(0, Impl, &v56, &v55))
        {
          goto LABEL_29;
        }

        v17 = v55;
        if (v55 == -1)
        {
          goto LABEL_29;
        }
      }

      v18 = *(v14 + 16);
      v19 = *v18;
      v20 = *(*v18 + 8);
      v21 = v20 == 16 ? *v18 : 0;
      if (v20 == 7 || v21 && (*(v21 + 9) & 1) == 0)
      {
        goto LABEL_29;
      }

      v47 = v17;
      v46 = v19;
      v53 = 0;
      v54 = 0;
      LODWORD(v56) = 1;
      sub_23C506AF0(0, Impl, &v56, &v54);
      LODWORD(v56) = 2;
      sub_23C506AF0(0, Impl, &v56, &v53);
      if (*(*(v6 + *(*a1 - 24)) + 1685) & 1) == 0 && v54 == 5 && v53 < 0 && ((a1[284] >> SBYTE2(v53)))
      {
        v56 = llvm::ValueAsMetadata::get();
        v57 = *(Impl - 8 * *(Impl + 8) + 8);
        llvm::ConstantInt::get();
        v58 = llvm::ValueAsMetadata::get();
        Impl = llvm::MDTuple::getImpl();
      }

      else if (!v47)
      {
        __p = 0;
        v51 = 0;
        v52 = 0;
        v22 = *(v10 + 8);
        if (!v22)
        {
          goto LABEL_70;
        }

        do
        {
          v56 = *(v22 + 24);
          *&v57 = 0;
          sub_23C503A24(&__p, &v56);
          v22 = *(v22 + 8);
        }

        while (v22);
        v23 = __p;
        v24 = v51;
        if (__p == v51)
        {
LABEL_70:
          v39 = 1;
LABEL_71:
          v56 = sub_23C49BBA0((a1 + 21), v46) * v39;
          LODWORD(v57) = v40;
          if (llvm::TypeSize::operator unsigned long long() <= 0xFFFFFFFE)
          {
            v56 = llvm::ValueAsMetadata::get();
            v57 = *(Impl - 8 * *(Impl + 8) + 8);
            llvm::ConstantInt::get();
            v58 = llvm::ValueAsMetadata::get();
            Impl = llvm::MDTuple::getImpl();
          }

LABEL_73:
          if (__p)
          {
            operator delete(__p);
          }

          goto LABEL_29;
        }

        v25 = 0;
        while (2)
        {
          v26 = *(v24 - 2);
          v27 = *(v24 - 1);
          v24 -= 16;
          v51 = v24;
          v28 = *(v26 + 8);
          if (!v28)
          {
            goto LABEL_68;
          }

          v42 = v27;
LABEL_43:
          v29 = *(v28 + 24);
          v30 = *(v29 + 16);
          switch(v30)
          {
            case 'M':
              v43 = *(v28 + 24);
              v45 = v28;
              v49 = v25;
              if (*(*v29 + 8) != 15)
              {
                goto LABEL_73;
              }

              v56 = sub_23C49BBA0((a1 + 21), v46);
              LODWORD(v57) = v36;
              v41 = llvm::TypeSize::operator unsigned long long();
              v56 = sub_23C49BBA0((a1 + 21), **(*v43 + 16));
              LODWORD(v57) = v37;
              if (llvm::TypeSize::operator unsigned long long() > v41)
              {
                goto LABEL_73;
              }

              v25 = v49;
              v27 = v42;
              v38 = v43;
              v28 = v45;
              while (1)
              {
                v38 = *(v38 + 8);
                if (!v38)
                {
                  break;
                }

                if (*(*(v38 + 24) + 16) != 60)
                {
                  goto LABEL_73;
                }
              }

LABEL_46:
              if (v25 <= v27)
              {
                v25 = v27;
              }

              break;
            case '>':
              v31 = *(v29 + 20) & 0x7FFFFFF;
              v32 = *(v29 - 32 * v31 + 32);
              if (v32)
              {
                v33 = *(v32 + 16) == 16;
              }

              else
              {
                v33 = 0;
              }

              if (!v33)
              {
                goto LABEL_73;
              }

              v34 = (v32 + 24);
              if (*(v32 + 32) >= 0x41u)
              {
                v34 = *v34;
              }

              v35 = *v34 + v27;
              if (v31 == 2)
              {
                v56 = *(v28 + 24);
                *&v57 = v35;
                v48 = v25;
                v44 = v28;
                sub_23C503A24(&__p, &v56);
                v28 = v44;
                v27 = v42;
                v25 = v48;
              }

              else if (v25 <= v35)
              {
                v25 = v35;
              }

              break;
            case '<':
              goto LABEL_46;
            default:
              goto LABEL_73;
          }

          v28 = *(v28 + 8);
          if (!v28)
          {
            v23 = __p;
            v24 = v51;
LABEL_68:
            if (v23 == v24)
            {
              v39 = v25 + 1;
              goto LABEL_71;
            }

            continue;
          }

          goto LABEL_43;
        }
      }

LABEL_29:
      *v4++ = Impl;
    }

    while (v4 != v5);
  }
}

void *sub_23C52FD10(void *result, int a2, int a3)
{
  v5 = result;
  if ((a2 & 1) != 0 || a3)
  {
    result = llvm::Module::getOrInsertNamedMetadata();
    if (a2)
    {
      result = llvm::Module::getOrInsertNamedMetadata();
      *(v5 + 36) = 1;
    }

    if (a3)
    {

      return llvm::Module::getOrInsertNamedMetadata();
    }
  }

  return result;
}

uint64_t sub_23C52FDF8(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v3 = (a1 + 264);
  sub_23C52FEF4(&v3);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_23C52FEF4(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_23C52FF80(uint64_t **a1, const void **a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

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

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_23C530100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 335);
  if (v4 < 0)
  {
    v4 = *(a1 + 320);
  }

  if (v4)
  {
    std::operator+<char>();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v6;
    *(a3 + 16) = v7;
  }

  return flatbuffers::GenerateText();
}

uint64_t sub_23C53018C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = *(result + 272);
    for (i = *(result + 280); v3 != i; ++v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v32 = *v3;
        sub_23C52FEF4(&v32);
        MEMORY[0x23EED50C0](v4, 0x1020C4016EE4530);
        i = *(v1 + 280);
      }
    }

    v5 = *(v1 + 1176);
    if (v5)
    {
      v6 = *(v1 + 1184);
      v7 = *(v1 + 1176);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 17) < 0)
          {
            operator delete(*(v6 - 40));
          }

          v6 -= 72;
        }

        while (v6 != v5);
        v7 = *(v1 + 1176);
      }

      *(v1 + 1184) = v5;
      operator delete(v7);
    }

    if (*(v1 + 1175) < 0)
    {
      operator delete(*(v1 + 1152));
    }

    sub_23C52FDF8(v1 + 728);
    sub_23C4A690C(*(v1 + 712));
    v32 = (v1 + 680);
    sub_23C52FEF4(&v32);
    sub_23C530764(*(v1 + 664));
    sub_23C496DAC(*(v1 + 640));
    if (*(v1 + 631) < 0)
    {
      operator delete(*(v1 + 608));
    }

    if (*(v1 + 607) < 0)
    {
      operator delete(*(v1 + 584));
    }

    sub_23C4B1570(*(v1 + 536));
    sub_23C4B1570(*(v1 + 504));
    v8 = *(v1 + 456);
    if (v8)
    {
      *(v1 + 464) = v8;
      operator delete(v8);
    }

    v9 = *(v1 + 432);
    if (v9)
    {
      *(v1 + 440) = v9;
      operator delete(v9);
    }

    sub_23C4B1460((v1 + 336));
    if (*(v1 + 335) < 0)
    {
      operator delete(*(v1 + 312));
    }

    v10 = *(v1 + 272);
    if (v10)
    {
      *(v1 + 280) = v10;
      operator delete(v10);
    }

    v12 = *(v1 + 248);
    v11 = *(v1 + 256);
    if (v12 != v11)
    {
      do
      {
        v13 = *v12;
        if (*v12)
        {
          v15 = *(v13 + 176);
          v14 = *(v13 + 184);
          if (v15 != v14)
          {
            do
            {
              v16 = *v15;
              if (*v15)
              {
                sub_23C5307C8(v16 + 72);
                v32 = (v16 + 48);
                sub_23C52FEF4(&v32);
                if (*(v16 + 47) < 0)
                {
                  operator delete(*(v16 + 24));
                }

                if (*(v16 + 23) < 0)
                {
                  operator delete(*v16);
                }

                MEMORY[0x23EED50C0](v16, 0x10B2C40EE200C30);
                v14 = *(v13 + 184);
              }

              ++v15;
            }

            while (v15 != v14);
            v15 = *(v13 + 176);
          }

          if (v15)
          {
            *(v13 + 184) = v15;
            operator delete(v15);
          }

          sub_23C4A690C(*(v13 + 160));
          sub_23C5307C8(v13 + 72);
          v32 = (v13 + 48);
          sub_23C52FEF4(&v32);
          if (*(v13 + 47) < 0)
          {
            operator delete(*(v13 + 24));
          }

          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          MEMORY[0x23EED50C0](v13, 0x10B2C401A85D49FLL);
          v11 = *(v1 + 256);
        }

        ++v12;
      }

      while (v12 != v11);
      v12 = *(v1 + 248);
    }

    if (v12)
    {
      *(v1 + 256) = v12;
      operator delete(v12);
    }

    sub_23C4A690C(*(v1 + 232));
    v18 = *(v1 + 200);
    v17 = *(v1 + 208);
    if (v18 != v17)
    {
      do
      {
        v19 = *v18;
        if (*v18)
        {
          v21 = *(v19 + 208);
          v20 = *(v19 + 216);
          if (v21 != v20)
          {
            do
            {
              v22 = *v21;
              if (*v21)
              {
                sub_23C5307C8(v22 + 88);
                v32 = (v22 + 24);
                sub_23C52FEF4(&v32);
                if (*(v22 + 23) < 0)
                {
                  operator delete(*v22);
                }

                MEMORY[0x23EED50C0](v22, 0x10B2C4072A4B994);
                v20 = *(v19 + 216);
              }

              ++v21;
            }

            while (v21 != v20);
            v21 = *(v19 + 208);
          }

          if (v21)
          {
            *(v19 + 216) = v21;
            operator delete(v21);
          }

          sub_23C4A690C(*(v19 + 192));
          sub_23C5307C8(v19 + 72);
          v32 = (v19 + 48);
          sub_23C52FEF4(&v32);
          if (*(v19 + 47) < 0)
          {
            operator delete(*(v19 + 24));
          }

          if (*(v19 + 23) < 0)
          {
            operator delete(*v19);
          }

          MEMORY[0x23EED50C0](v19, 0x10B2C409EE52067);
          v17 = *(v1 + 208);
        }

        ++v18;
      }

      while (v18 != v17);
      v18 = *(v1 + 200);
    }

    if (v18)
    {
      *(v1 + 208) = v18;
      operator delete(v18);
    }

    sub_23C4A690C(*(v1 + 184));
    v24 = *(v1 + 152);
    v23 = *(v1 + 160);
    if (v24 != v23)
    {
      do
      {
        v25 = *v24;
        if (*v24)
        {
          v26 = *(v25 + 224);
          *(v25 + 224) = 0;
          if (v26)
          {
            if (*(v26 + 23) < 0)
            {
              operator delete(*v26);
            }

            MEMORY[0x23EED50C0](v26, 0x1012C40EC159624);
          }

          v28 = *(v25 + 176);
          v27 = *(v25 + 184);
          if (v28 != v27)
          {
            do
            {
              v29 = *v28;
              if (*v28)
              {
                if (*(v29 + 207) < 0)
                {
                  operator delete(*(v29 + 184));
                }

                sub_23C5307C8(v29 + 72);
                v32 = (v29 + 48);
                sub_23C52FEF4(&v32);
                if (*(v29 + 47) < 0)
                {
                  operator delete(*(v29 + 24));
                }

                if (*(v29 + 23) < 0)
                {
                  operator delete(*v29);
                }

                MEMORY[0x23EED50C0](v29, 0x10B2C40559199D4);
                v27 = *(v25 + 184);
              }

              ++v28;
            }

            while (v28 != v27);
            v28 = *(v25 + 176);
          }

          if (v28)
          {
            *(v25 + 184) = v28;
            operator delete(v28);
          }

          sub_23C4A690C(*(v25 + 160));
          sub_23C5307C8(v25 + 72);
          v32 = (v25 + 48);
          sub_23C52FEF4(&v32);
          if (*(v25 + 47) < 0)
          {
            operator delete(*(v25 + 24));
          }

          if (*(v25 + 23) < 0)
          {
            operator delete(*v25);
          }

          MEMORY[0x23EED50C0](v25, 0x10B2C4058EA06FBLL);
          v23 = *(v1 + 160);
        }

        ++v24;
      }

      while (v24 != v23);
      v24 = *(v1 + 152);
    }

    if (v24)
    {
      *(v1 + 160) = v24;
      operator delete(v24);
    }

    sub_23C4A690C(*(v1 + 136));
    v31 = *(v1 + 104);
    v30 = *(v1 + 112);
    if (v31 != v30)
    {
      do
      {
        if (*v31)
        {
          MEMORY[0x23EED50C0](*v31, 0x1020C4001A1C0B8);
          v30 = *(v1 + 112);
        }

        ++v31;
      }

      while (v31 != v30);
      v31 = *(v1 + 104);
    }

    if (v31)
    {
      *(v1 + 112) = v31;
      operator delete(v31);
    }

    sub_23C4A690C(*(v1 + 88));
    v32 = (v1 + 56);
    sub_23C52FEF4(&v32);
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    JUMPOUT(0x23EED50C0);
  }

  return result;
}

void sub_23C530764(char *a1)
{
  if (a1)
  {
    sub_23C530764(*a1);
    sub_23C530764(*(a1 + 1));
    sub_23C4A690C(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C5307C8(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x23EED50C0](v4, 0x1032C40E9BF265ALL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_23C4A690C(*(a1 + 8));
  return a1;
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::get()
{
  return MEMORY[0x2821F1998]();
}

{
  return MEMORY[0x2821F19A0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::addNodeToList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList()
{
    ;
  }
}

uint64_t llvm::AGX::operator<<()
{
  return MEMORY[0x2821F34D0]();
}

{
  return MEMORY[0x2821F34D8]();
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}