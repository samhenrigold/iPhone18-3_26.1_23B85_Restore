BOOL _os_feature_enabled_impl(const char *a1, const char *a2)
{
  v3 = a1;
  v75 = *MEMORY[0x277D85DE8];
  if (qword_280AC06D8 != -1)
  {
    a1 = _os_feature_enabled_impl_cold_1();
  }

  v4 = _os_feature_table(a1, a2);
  if (!v4 || _MergedGlobals == 1)
  {

    return _os_feature_enabled_SLOWPATH(v3, a2);
  }

  v5 = v4;
  v6 = strlen(v3);
  v7 = strlen(a2);
  v8 = v6 + v7 + 1;
  v9 = (0xC6A4A7935BD1E995 * v8) ^ *(v5 + 24);
  if (v8 < v6)
  {
    v10 = v6 + v7 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = &v3[v10];
  if (v10 >= 16)
  {
    v13 = v3;
    do
    {
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v13) ^ ((0xC6A4A7935BD1E995 * *v13) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v13 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v13 + 1)) >> 47))));
      v12 = v13 + 16;
      v14 = v13 + 32;
      v13 += 16;
    }

    while (v14 <= v11);
  }

  else
  {
    v12 = v3;
  }

  if ((v12 + 8) <= v11)
  {
    do
    {
      v15 = v12 + 8;
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v12) ^ ((0xC6A4A7935BD1E995 * *v12) >> 47))) ^ v9);
      v16 = (v12 + 16) > v11;
      v12 += 8;
    }

    while (!v16);
  }

  else
  {
    v15 = v12;
  }

  if (v15 >= v11)
  {
    v18 = 0;
    v21 = v8 - v10;
    v22 = v21 != 0;
    if (v21)
    {
      v23 = (&sep + 1);
    }

    else
    {
      v23 = &sep;
    }

    goto LABEL_33;
  }

  LODWORD(v17) = 0;
  v18 = 0;
  v19 = &v3[v10] - v15;
  do
  {
    v20 = *v15++;
    v18 |= v20 << v17;
    v17 = (v17 + 8);
    --v19;
  }

  while (v19);
  v21 = v8 - v10;
  v22 = v21 != 0;
  if (v21)
  {
    v23 = (&sep + 1);
  }

  else
  {
    v23 = &sep;
  }

  if (!v17)
  {
LABEL_33:
    v24 = &sep;
    goto LABEL_34;
  }

  if (v21 && v17 <= 0x3F)
  {
    v24 = &sep;
    do
    {
      v25 = v17;
      v26 = *v24;
      v24 = (v24 + 1);
      v18 |= v26 << v17;
      v17 += 8;
    }

    while (v24 < v23 && v25 < 0x38);
    if (v25 >= 0x38)
    {
      goto LABEL_149;
    }

LABEL_54:
    v32 = v21 - v22;
    if (v21 - v22 >= v7)
    {
      v33 = v7;
    }

    else
    {
      v33 = v21 - v22;
    }

    v34 = &a2[v33];
    goto LABEL_58;
  }

  if (v17 < 0x40)
  {
    goto LABEL_54;
  }

  v24 = &sep;
LABEL_149:
  v73 = 0xC6A4A7935BD1E995 * v18;
  v18 = 0;
  v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v73 ^ (v73 >> 47))) ^ v9);
LABEL_34:
  if (v24 + 2 <= v23)
  {
    do
    {
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v24) ^ ((0xC6A4A7935BD1E995 * *v24) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v24[1]) ^ ((0xC6A4A7935BD1E995 * v24[1]) >> 47))));
      v27 = v24 + 2;
      v28 = v24 + 4;
      v24 += 2;
    }

    while (v28 <= v23);
  }

  else
  {
    v27 = v24;
  }

  if (v27 + 1 <= v23)
  {
    do
    {
      v29 = (v27 + 1);
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v27) ^ ((0xC6A4A7935BD1E995 * *v27) >> 47))) ^ v9);
      v16 = v27 + 2 > v23;
      ++v27;
    }

    while (!v16);
  }

  else
  {
    v29 = v27;
  }

  if (v29 >= v23)
  {
    v32 = v21 - v22;
    if (v21 - v22 >= v7)
    {
      v33 = v7;
    }

    else
    {
      v33 = v21 - v22;
    }

    v34 = &a2[v33];
    v35 = a2;
    goto LABEL_68;
  }

  LODWORD(v17) = 0;
  v30 = (&sep + v22 - v29);
  do
  {
    v31 = *v29++;
    v18 |= v31 << v17;
    LODWORD(v17) = v17 + 8;
    --v30;
  }

  while (v30);
  v32 = v21 - v22;
  if (v21 - v22 >= v7)
  {
    v33 = v7;
  }

  else
  {
    v33 = v21 - v22;
  }

  v34 = &a2[v33];
  v35 = a2;
  if (!v17)
  {
LABEL_68:
    if (v35 + 16 <= v34)
    {
      do
      {
        v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v35) ^ ((0xC6A4A7935BD1E995 * *v35) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v35 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v35 + 1)) >> 47))));
        v40 = v35 + 16;
        v41 = v35 + 32;
        v35 += 16;
      }

      while (v41 <= v34);
    }

    else
    {
      v40 = v35;
    }

    if (v40 + 8 <= v34)
    {
      do
      {
        v42 = v40 + 8;
        v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v40) ^ ((0xC6A4A7935BD1E995 * *v40) >> 47))) ^ v9);
        v16 = v40 + 16 > v34;
        v40 += 8;
      }

      while (!v16);
    }

    else
    {
      v42 = v40;
    }

    if (v42 >= v34)
    {
      LODWORD(v36) = 0;
    }

    else
    {
      LODWORD(v36) = 0;
      v43 = (&a2[v33] - v42);
      do
      {
        v44 = *v42++;
        v18 |= v44 << v36;
        LODWORD(v36) = v36 + 8;
        --v43;
      }

      while (v43);
    }

    goto LABEL_80;
  }

LABEL_58:
  if (v33 < 1 || v17 > 0x3F)
  {
    v35 = a2;
    if (v17 < 0x40)
    {
      LODWORD(v36) = v17;
      goto LABEL_80;
    }

    goto LABEL_67;
  }

  v36 = v17;
  v35 = a2;
  do
  {
    v37 = v36;
    v38 = *v35++;
    v18 |= v38 << v36;
    v36 += 8;
  }

  while (v35 < v34 && v37 < 0x38);
  if (v37 >= 0x38)
  {
LABEL_67:
    v39 = 0xC6A4A7935BD1E995 * v18;
    v18 = 0;
    v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v39 ^ (v39 >> 47))) ^ v9);
    goto LABEL_68;
  }

LABEL_80:
  v45 = v32 - v33;
  if (v45)
  {
    memset(v74, 0, sizeof(v74));
    if (v45 >= 0x20)
    {
      v46 = v45;
      while (1)
      {
        v47 = v45 >= 0x20 ? 32 : v45;
        v48 = v74 + v47;
        if (!v36)
        {
          break;
        }

        if (v45 && v36 <= 0x3F)
        {
          v36 = v36;
          v49 = v74;
          do
          {
            v50 = v36;
            v51 = *v49++;
            v18 |= v51 << v36;
            v36 += 8;
          }

          while (v49 < v48 && v50 < 0x38);
          if (v50 >= 0x38)
          {
            goto LABEL_97;
          }
        }

        else if (v36 >= 0x40)
        {
          v49 = v74;
LABEL_97:
          v52 = 0xC6A4A7935BD1E995 * v18;
          v18 = 0;
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v52 ^ (v52 >> 47))) ^ v9);
LABEL_98:
          v53 = v49 + 16;
          while (v53 <= v48)
          {
            v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v49) ^ ((0xC6A4A7935BD1E995 * *v49) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v49 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v49 + 1)) >> 47))));
            v53 = v49 + 32;
            v49 += 16;
          }

          if (v49 + 8 <= v48)
          {
            do
            {
              v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v49) ^ ((0xC6A4A7935BD1E995 * *v49) >> 47))) ^ v9);
              v16 = v49 + 16 > v48;
              v49 += 8;
            }

            while (!v16);
          }

          if (v49 >= v48)
          {
            LODWORD(v36) = 0;
          }

          else
          {
            LODWORD(v36) = 0;
            v54 = (v74 + v47 - v49);
            do
            {
              v55 = *v49++;
              v18 |= v55 << v36;
              LODWORD(v36) = v36 + 8;
              --v54;
            }

            while (v54);
          }
        }

        v45 -= v47;
        v46 -= 32;
        if (v46 <= 0x1F)
        {
          goto LABEL_112;
        }
      }

      v49 = v74;
      goto LABEL_98;
    }

    v46 = v45;
LABEL_112:
    if (v45 >= v46)
    {
      v45 = v46;
    }

    v56 = v74;
    v57 = v74 + v45;
    if (!v36)
    {
      goto LABEL_125;
    }

    if (v36 <= 0x3F && v45)
    {
      v36 = v36;
      v56 = v74;
      do
      {
        v58 = v36;
        v59 = *v56++;
        v18 |= v59 << v36;
        v36 += 8;
      }

      while (v56 < v57 && v58 < 0x38);
      if (v58 < 0x38)
      {
        goto LABEL_137;
      }

      goto LABEL_124;
    }

    if (v36 >= 0x40)
    {
      v56 = v74;
LABEL_124:
      v60 = 0xC6A4A7935BD1E995 * v18;
      v18 = 0;
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v60 ^ (v60 >> 47))) ^ v9);
LABEL_125:
      if (v56 + 16 <= v57)
      {
        do
        {
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v56) ^ ((0xC6A4A7935BD1E995 * *v56) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v56 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v56 + 1)) >> 47))));
          v61 = (v56 + 16);
          v62 = v56 + 32;
          v56 += 16;
        }

        while (v62 <= v57);
      }

      else
      {
        v61 = v56;
      }

      if (v61 + 8 <= v57)
      {
        do
        {
          v63 = v61 + 8;
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v61) ^ ((0xC6A4A7935BD1E995 * *v61) >> 47))) ^ v9);
          v16 = v61 + 16 > v57;
          v61 += 8;
        }

        while (!v16);
      }

      else
      {
        v63 = v61;
      }

      if (v63 >= v57)
      {
        LODWORD(v36) = 0;
      }

      else
      {
        LODWORD(v36) = 0;
        v64 = (v74 + v45 - v63);
        do
        {
          v65 = *v63++;
          v18 |= v65 << v36;
          LODWORD(v36) = v36 + 8;
          --v64;
        }

        while (v64);
      }
    }
  }

LABEL_137:
  v66 = 0xC6A4A7935BD1E995 * (v18 ^ v9);
  if (!v36)
  {
    v66 = v9;
  }

  v67 = *(v5 + 16);
  if (v67)
  {
    v68 = 0;
    v69 = (0xC6A4A7935BD1E995 * (v66 ^ (v66 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v66 ^ (v66 >> 47))) >> 47);
    while (1)
    {
      v70 = v67 - 1;
      result = v68 <= v67 - 1;
      if (v68 > v67 - 1)
      {
        break;
      }

      while (1)
      {
        v67 = (v68 + v70) >> 1;
        v72 = *(v5 + 32 + 8 * v67);
        if (v72 >= v69)
        {
          break;
        }

        v68 = v67 + 1;
        if (v67 >= v70)
        {
          return 0;
        }
      }

      if (v72 <= v69)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t _os_feature_table(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_0 != -1)
  {
    _os_feature_table_cold_1();
  }

  return qword_280AC06E8;
}

BOOL _os_feature_enabled_simple_impl(const char *a1, const char *a2, _BOOL8 a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = _os_feature_table(a1, a2);
  if (!v6)
  {
    return a3;
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = strlen(a2);
  v10 = v8 + v9 + 1;
  v11 = (0xC6A4A7935BD1E995 * v10) ^ *(v7 + 24);
  if (v10 < v8)
  {
    v12 = v8 + v9 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = &a1[v12];
  if (v12 >= 16)
  {
    v15 = a1;
    do
    {
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v15) ^ ((0xC6A4A7935BD1E995 * *v15) >> 47))) ^ v11)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v15 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v15 + 1)) >> 47))));
      v14 = v15 + 16;
      v16 = v15 + 32;
      v15 += 16;
    }

    while (v16 <= v13);
  }

  else
  {
    v14 = a1;
  }

  if (v14 + 8 <= v13)
  {
    do
    {
      OUTLINED_FUNCTION_0();
    }

    while (v18 <= v13);
  }

  else
  {
    v17 = v14;
  }

  v19 = &sep;
  if (v17 >= v13)
  {
    v21 = 0;
    v30 = v10 - v12;
    v25 = v30 != 0;
    if (v30)
    {
      v26 = (&sep + 1);
    }

    else
    {
      v26 = &sep;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v21 = 0;
    v22 = (&a1[v12] - v17);
    do
    {
      v23 = *v17++;
      v21 |= v23 << v20;
      v20 = (v20 + 8);
      --v22;
    }

    while (v22);
    v24 = v10 - v12;
    v25 = v24 != 0;
    if (v24)
    {
      v26 = (&sep + 1);
    }

    else
    {
      v26 = &sep;
    }

    if (v20)
    {
      if (v24 && v20 <= 0x3F)
      {
        v27 = &sep;
        do
        {
          v28 = v20;
          v29 = *v27;
          v27 = (v27 + 1);
          v21 |= v29 << v20;
          v20 += 8;
        }

        while (v27 < v26 && v28 < 0x38);
        if (v28 >= 0x38)
        {
          goto LABEL_135;
        }
      }

      else if (v20 >= 0x40)
      {
LABEL_135:
        OUTLINED_FUNCTION_0();
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_1();
      goto LABEL_45;
    }
  }

  v31 = &sep;
LABEL_30:
  if (v31 + 2 <= v26)
  {
    do
    {
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v31) ^ ((0xC6A4A7935BD1E995 * *v31) >> 47))) ^ v11)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v31[1]) ^ ((0xC6A4A7935BD1E995 * v31[1]) >> 47))));
      v32 = v31 + 2;
      v33 = v31 + 4;
      v31 += 2;
    }

    while (v33 <= v26);
  }

  else
  {
    v32 = v31;
  }

  if (v32 + 1 <= v26)
  {
    do
    {
      v34 = (v32 + 1);
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v32) ^ ((0xC6A4A7935BD1E995 * *v32) >> 47))) ^ v11);
      v35 = v32 + 2 > v26;
      ++v32;
    }

    while (!v35);
  }

  else
  {
    v34 = v32;
  }

  if (v34 >= v26)
  {
    OUTLINED_FUNCTION_1();
    v45 = a2;
    goto LABEL_55;
  }

  v36 = 0;
  v37 = v19 + v25 - v34;
  do
  {
    v38 = *v34++;
    v21 |= v38 << v36;
    v36 += 8;
    --v37;
  }

  while (v37);
  OUTLINED_FUNCTION_1();
  v45 = a2;
  if (!v44)
  {
LABEL_55:
    if ((v45 + 16) <= v43)
    {
      do
      {
        v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v45) ^ ((0xC6A4A7935BD1E995 * *v45) >> 47))) ^ v39)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v45 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v45 + 1)) >> 47))));
        v50 = v45 + 16;
        v51 = v45 + 32;
        v45 += 16;
      }

      while (v51 <= v43);
    }

    else
    {
      v50 = v45;
    }

    if ((v50 + 8) <= v43)
    {
      do
      {
        v52 = v50 + 8;
        v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v50) ^ ((0xC6A4A7935BD1E995 * *v50) >> 47))) ^ v39);
        v35 = (v50 + 16) > v43;
        v50 += 8;
      }

      while (!v35);
    }

    else
    {
      v52 = v50;
    }

    if (v52 >= v43)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      LODWORD(v46) = 0;
      v53 = (&a2[v42] - v52);
      do
      {
        v54 = *v52++;
        v40 |= v54 << v46;
        LODWORD(v46) = v46 + 8;
        --v53;
      }

      while (v53);
    }

    goto LABEL_67;
  }

LABEL_45:
  if (v42 < 1 || v44 > 0x3F)
  {
    if (v44 < 0x40)
    {
      LODWORD(v46) = v44;
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  v46 = v44;
  v47 = a2;
  do
  {
    v48 = v46;
    v49 = *v47++;
    v40 |= v49 << v46;
    v46 += 8;
  }

  while (v47 < v43 && v48 < 0x38);
  if (v48 >= 0x38)
  {
LABEL_54:
    OUTLINED_FUNCTION_0();
    goto LABEL_55;
  }

LABEL_67:
  v55 = v41 - v42;
  if (!v55)
  {
    goto LABEL_123;
  }

  memset(v84, 0, sizeof(v84));
  if (v55 >= 0x20)
  {
    v56 = v55;
    while (1)
    {
      v57 = v55 >= 0x20 ? 32 : v55;
      v58 = v84 + v57;
      if (!v46)
      {
        break;
      }

      if (v55 && v46 <= 0x3F)
      {
        v46 = v46;
        v59 = v84;
        do
        {
          v60 = v46;
          v61 = *v59++;
          v40 |= v61 << v46;
          v46 += 8;
        }

        while (v59 < v58 && v60 < 0x38);
        if (v60 >= 0x38)
        {
          goto LABEL_84;
        }
      }

      else if (v46 >= 0x40)
      {
        v59 = v84;
LABEL_84:
        v62 = 0xC6A4A7935BD1E995 * v40;
        v40 = 0;
        v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v62 ^ (v62 >> 47))) ^ v39);
LABEL_85:
        v63 = v59 + 16;
        while (v63 <= v58)
        {
          v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v59) ^ ((0xC6A4A7935BD1E995 * *v59) >> 47))) ^ v39)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v59 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v59 + 1)) >> 47))));
          v63 = v59 + 32;
          v59 += 16;
        }

        if (v59 + 8 <= v58)
        {
          do
          {
            v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v59) ^ ((0xC6A4A7935BD1E995 * *v59) >> 47))) ^ v39);
            v35 = v59 + 16 > v58;
            v59 += 8;
          }

          while (!v35);
        }

        if (v59 >= v58)
        {
          LODWORD(v46) = 0;
        }

        else
        {
          LODWORD(v46) = 0;
          v64 = (v84 + v57 - v59);
          do
          {
            v65 = *v59++;
            v40 |= v65 << v46;
            LODWORD(v46) = v46 + 8;
            --v64;
          }

          while (v64);
        }
      }

      v55 -= v57;
      v56 -= 32;
      if (v56 <= 0x1F)
      {
        goto LABEL_99;
      }
    }

    v59 = v84;
    goto LABEL_85;
  }

  v56 = v55;
LABEL_99:
  if (v55 >= v56)
  {
    v55 = v56;
  }

  v66 = v84;
  v67 = v84 + v55;
  if (!v46)
  {
    goto LABEL_112;
  }

  if (v46 > 0x3F || !v55)
  {
    if (v46 < 0x40)
    {
      goto LABEL_123;
    }

    v66 = v84;
    goto LABEL_111;
  }

  v46 = v46;
  v66 = v84;
  do
  {
    v68 = v46;
    v69 = *v66++;
    v40 |= v69 << v46;
    v46 += 8;
  }

  while (v66 < v67 && v68 < 0x38);
  if (v68 >= 0x38)
  {
LABEL_111:
    v70 = 0xC6A4A7935BD1E995 * v40;
    v40 = 0;
    v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v70 ^ (v70 >> 47))) ^ v39);
LABEL_112:
    if (v66 + 16 <= v67)
    {
      do
      {
        v39 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v66) ^ ((0xC6A4A7935BD1E995 * *v66) >> 47))) ^ v39)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v66 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v66 + 1)) >> 47))));
        v71 = (v66 + 16);
        v72 = v66 + 32;
        v66 += 16;
      }

      while (v72 <= v67);
    }

    else
    {
      v71 = v66;
    }

    if (v71 + 8 <= v67)
    {
      do
      {
        OUTLINED_FUNCTION_0();
      }

      while (v74 <= v67);
    }

    else
    {
      v73 = v71;
    }

    if (v73 >= v67)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      LODWORD(v46) = 0;
      v75 = (v84 + v55 - v73);
      do
      {
        v76 = *v73++;
        v40 |= v76 << v46;
        LODWORD(v46) = v46 + 8;
        --v75;
      }

      while (v75);
    }
  }

LABEL_123:
  v77 = 0xC6A4A7935BD1E995 * (v40 ^ v39);
  if (!v46)
  {
    v77 = v39;
  }

  v78 = *(v7 + 16);
  if (v78)
  {
    v79 = 0;
    v80 = (0xC6A4A7935BD1E995 * (v77 ^ (v77 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v77 ^ (v77 >> 47))) >> 47);
    while (1)
    {
      v81 = v78 - 1;
      a3 = v79 <= v78 - 1;
      if (v79 > v78 - 1)
      {
        break;
      }

      while (1)
      {
        v78 = (v79 + v81) >> 1;
        v82 = *(v7 + 32 + 8 * v78);
        if (v82 >= v80)
        {
          break;
        }

        v79 = v78 + 1;
        if (v78 >= v81)
        {
          return 0;
        }
      }

      if (v82 <= v80)
      {
        return a3;
      }
    }
  }

  return 0;
}

uint64_t _os_feature_table_once(void *a1)
{
  result = shm_open("com.apple.featureflags.shm", 0);
  if ((result & 0x80000000) == 0)
  {
    v3 = result;
    memset(&v5, 0, sizeof(v5));
    if ((fstat(result, &v5) & 0x80000000) == 0)
    {
      v4 = mmap(0, v5.st_size, 1, 1, v3, 0);
      if (v4 != -1)
      {
        if (v5.st_size >= 0x20uLL && *v4 == 0x47414C4654414546 && (8 * v4[2] + 32) <= v5.st_size)
        {
          *a1 = v4;
        }

        else
        {
          munmap(v4, v5.st_size);
        }
      }
    }

    return close(v3);
  }

  return result;
}

char *_os_feature_enabled_envvar_check_once(_BYTE *a1)
{
  result = getenv("FEATUREFLAGS_ENABLED");
  if (result || (result = getenv("FEATUREFLAGS_DISABLED")) != 0)
  {
    *a1 = 1;
  }

  return result;
}

BOOL _os_feature_enabled_SLOWPATH(const char *a1, const char *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_slow_cache_lock);
  v3 = 0x27D9EE000uLL;
  if (_slow_cache)
  {
    v4 = xpc_dictionary_get_value(_slow_cache, a1);
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x2318C1080](v4) != MEMORY[0x277D86468])
      {
        goto LABEL_19;
      }

      v6 = xpc_dictionary_get_value(v5, a2);
      v7 = v6;
      v8 = v6 == MEMORY[0x277D863E8];
      if (v6 == MEMORY[0x277D863E8] || v6 == MEMORY[0x277D863E0])
      {
        os_unfair_lock_unlock(&_slow_cache_lock);

        goto LABEL_22;
      }
    }
  }

  os_unfair_lock_unlock(&_slow_cache_lock);
  v10 = _os_feature_search_paths();
  if (__strlcpy_chk() <= 0x3FF && __strlcat_chk() <= 0x3FF && __strlcat_chk() <= 0x3FF)
  {
    empty = xpc_dictionary_create_empty();
    __stringp[0] = MEMORY[0x277D85DD0];
    __stringp[1] = 3221225472;
    __stringp[2] = ___os_featureenabled_slow_load_disclosures_block_invoke;
    __stringp[3] = &unk_278743940;
    v17 = empty;
    v82 = v17;
    applier = MEMORY[0x2318C0EC0](__stringp);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = ___os_featureenabled_slow_load_disclosures_block_invoke_2;
    v79[3] = &unk_278743940;
    v72 = v17;
    v80 = v72;
    v73 = MEMORY[0x2318C0EC0](v79);
    v18 = _os_feature_search_paths();
    v19 = *v18;
    if (*v18)
    {
      v20 = MEMORY[0x277D86468];
      do
      {
        v21 = _os_feature_enabled_load(v19, "/GlobalDisclosures.plist");
        v22 = v21;
        if (v21 && MEMORY[0x2318C1080](v21) == v20)
        {
          xpc_dictionary_apply(v22, applier);
        }

        v23 = _os_feature_internal_search_path();
        v24 = _os_feature_enabled_load(v23, "/GlobalDisclosureOverrides.plist");
        v25 = v24;
        if (v24 && MEMORY[0x2318C1080](v24) == v20)
        {
          xpc_dictionary_apply(v25, v73);
        }

        if ((_os_feature_enabled_is_safe_mode() & 1) == 0)
        {
          v26 = _os_feature_enabled_load(*v18, "/ProfilesDisclosures.plist");
          v27 = v26;
          if (v26 && MEMORY[0x2318C1080](v26) == v20)
          {
            xpc_dictionary_apply(v27, applier);
          }

          v28 = _os_feature_enabled_load(*v18, "/SettingsDisclosures.plist");
          v29 = v28;
          if (v28 && MEMORY[0x2318C1080](v28) == v20)
          {
            xpc_dictionary_apply(v29, applier);
          }
        }

        v30 = v18[1];
        ++v18;
        v19 = v30;
      }

      while (v30);
    }

    v31 = v72;

    v32 = *v10;
    if (*v10)
    {
      LOBYTE(v8) = 0;
      v33 = "/Global.plist";
      do
      {
        v34 = _os_feature_enabled_load(v32, v83);
        v35 = v31;
        if (v34 && MEMORY[0x2318C1080](v34) == MEMORY[0x277D86468])
        {
          v36 = xpc_dictionary_get_value(v34, a2);
          v37 = v36;
          if (v36 && MEMORY[0x2318C1080](v36) == MEMORY[0x277D86468])
          {
            v38 = xpc_dictionary_get_value(v37, "DisclosureRequired");
            v39 = v38;
            if (!v38 || MEMORY[0x2318C1080](v38) != MEMORY[0x277D864C0] || (v40 = xpc_string_get_string_ptr(v39), xpc_dictionary_get_BOOL(v35, v40)))
            {
              appliera = v35;
              v41 = xpc_dictionary_get_value(v37, "Enabled");
              v42 = xpc_dictionary_get_value(v37, "DevelopmentPhase");
              v43 = v42;
              if (!v41 || !v42)
              {
                if (v41 && MEMORY[0x2318C1080](v41) == MEMORY[0x277D86448])
                {
                  LOBYTE(v8) = xpc_BOOL_get_value(v41);
                }

                else if (v43 && MEMORY[0x2318C1080](v43) == MEMORY[0x277D864C0])
                {
                  string_ptr = xpc_string_get_string_ptr(v43);
                  LOBYTE(v8) = strcmp(string_ptr, "FeatureComplete") == 0;
                }
              }

              v35 = appliera;
            }
          }
        }

        v45 = _os_feature_enabled_load(*v10, v33);
        v46 = _os_feature_enabled_extract_domain(v45, a1);
        v8 = _os_feature_enabled_extract(v46, a2, v8, v35);

        if ((_os_feature_enabled_is_safe_mode() & 1) == 0)
        {
          applierb = _os_feature_enabled_load(*v10, "/Profiles.plist");
          v47 = _os_feature_enabled_extract_domain(applierb, a1);
          v48 = v8;
          v49 = v35;
          v50 = v47;
          v74 = _os_feature_enabled_extract(v47, a2, v48, v49);

          v51 = _os_feature_enabled_load(*v10, "/Settings.plist");
          _os_feature_enabled_extract_domain(v51, a1);
          v52 = v34;
          v53 = v33;
          v54 = v10;
          v55 = a1;
          v57 = v56 = v31;
          v8 = _os_feature_enabled_extract(v57, a2, v74, v49);

          v31 = v56;
          a1 = v55;
          v10 = v54;
          v33 = v53;
          v34 = v52;
        }

        v58 = v10[1];
        ++v10;
        v32 = v58;
      }

      while (v58);
    }

    else
    {
      v8 = 0;
    }

    v59 = xpc_dictionary_create_empty();
    v60 = getenv("FEATUREFLAGS_ENABLED");
    v61 = getenv("FEATUREFLAGS_DISABLED");
    if (v60)
    {
      v62 = strdup(v60);
      __stringp[0] = v62;
      v63 = strsep(__stringp, ":");
      if (v63)
      {
        v64 = v63;
        v65 = MEMORY[0x277D863E8];
        do
        {
          _os_feature_enabled_write_nested_value_into_plist(v59, v64, v65);
          v64 = strsep(__stringp, ":");
        }

        while (v64);
      }

      free(v62);
    }

    if (v61)
    {
      v66 = strdup(v61);
      __stringp[0] = v66;
      v67 = strsep(__stringp, ":");
      if (v67)
      {
        v68 = v67;
        v69 = MEMORY[0x277D863E0];
        do
        {
          _os_feature_enabled_write_nested_value_into_plist(v59, v68, v69);
          v68 = strsep(__stringp, ":");
        }

        while (v68);
      }

      free(v66);
    }

    if (v59)
    {
      v70 = xpc_dictionary_get_dictionary(v59, a1);
      v71 = v70;
      v3 = 0x27D9EE000;
      if (v70)
      {
        v8 = _os_feature_enabled_extract(v70, a2, v8, v31);
      }
    }

    else
    {
      v3 = 0x27D9EE000;
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_lock(&_slow_cache_lock);
  v11 = *(v3 + 2824);
  if (!v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = *(v3 + 2824);
    *(v3 + 2824) = v12;

    v11 = *(v3 + 2824);
  }

  v14 = xpc_dictionary_get_value(v11, a1);
  if (v14)
  {
    v5 = v14;
    if (MEMORY[0x2318C1080]() != MEMORY[0x277D86468])
    {
LABEL_19:
      abort();
    }
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(*(v3 + 2824), a1, v5);
  }

  xpc_dictionary_set_BOOL(v5, a2, v8);
  os_unfair_lock_unlock(&_slow_cache_lock);
LABEL_22:

  return v8;
}

id _os_feature_enabled_load(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (__strlcpy_chk() > 0x3FF || __strlcat_chk() > 0x3FF)
  {
    v2 = 0;
    goto LABEL_4;
  }

  v4 = open(v12, 16777476);
  if (v4 < 0)
  {
    v2 = 0;
    v10 = *__error();
    if (v10)
    {
LABEL_26:
      *__error() = v10;
    }
  }

  else
  {
    v5 = v4;
    v6 = lseek(v4, 0, 2);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v2 = 0;
      v10 = *__error();
    }

    else
    {
      v7 = v6;
      v8 = malloc_type_malloc(v6, 0x73682183uLL);
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        while (1)
        {
          v11 = pread(v5, &v8[v9], v7 - v9, v9);
          if (v11 < 0)
          {
            v10 = *__error();
            if (v10 != 4)
            {
              v2 = 0;
              goto LABEL_24;
            }
          }

          else
          {
            if (!v11)
            {
              v2 = 0;
              v10 = 70;
              goto LABEL_24;
            }

            v9 += v11;
          }

          if (v9 >= v7)
          {
            goto LABEL_21;
          }
        }
      }

      v10 = 0;
LABEL_21:
      v2 = xpc_create_from_plist();
LABEL_24:
      free(v8);
    }

    close(v5);
    if (v10)
    {
      goto LABEL_26;
    }
  }

LABEL_4:

  return v2;
}

BOOL _os_feature_enabled_extract(void *a1, const char *a2, _BOOL8 a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    v9 = MEMORY[0x2318C1080](v7);
    v10 = MEMORY[0x277D86468];
    if (v9 == MEMORY[0x277D86468])
    {
      v11 = xpc_dictionary_get_value(v7, a2);
      v12 = v11;
      if (v11 && MEMORY[0x2318C1080](v11) == v10)
      {
        v13 = xpc_dictionary_get_value(v12, "DisclosureRequired");
        v14 = v13;
        if (!v13 || MEMORY[0x2318C1080](v13) != MEMORY[0x277D864C0] || (string_ptr = xpc_string_get_string_ptr(v14), xpc_dictionary_get_BOOL(v8, string_ptr)))
        {
          v16 = xpc_dictionary_get_value(v12, "Enabled");
          v17 = v16;
          if (v16 && MEMORY[0x2318C1080](v16) == MEMORY[0x277D86448])
          {
            a3 = xpc_BOOL_get_value(v17);
          }
        }
      }
    }
  }

  return a3;
}

id _os_feature_enabled_extract_domain(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = xpc_dictionary_get_value(a1, a2);
    v3 = v2;
    if (v2 && MEMORY[0x2318C1080](v2) == MEMORY[0x277D86468])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ___os_featureenabled_slow_load_disclosures_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (MEMORY[0x2318C1080]() == MEMORY[0x277D86468] && xpc_dictionary_get_BOOL(v5, "Disclosed"))
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), a2, 1);
  }

  return 1;
}

uint64_t ___os_featureenabled_slow_load_disclosures_block_invoke_2(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (MEMORY[0x2318C1080]() == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v5, "Disclosed");

    if (v6)
    {
      v7 = xpc_dictionary_get_BOOL(v5, "Disclosed");
      xpc_dictionary_set_BOOL(*(a1 + 32), a2, v7);
    }
  }

  return 1;
}

void _os_feature_enabled_write_nested_value_into_plist(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = strdup(a2);
  __stringp = v7;
  v8 = strsep(&__stringp, "/");
  if (v8 && (v9 = v8, (v10 = strsep(&__stringp, "/")) != 0) && (v11 = v10, !strsep(&__stringp, "/")))
  {
    empty = xpc_dictionary_get_dictionary(v5, v9);
    if (!empty)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v5, v9, empty);
    }

    v13 = xpc_dictionary_get_value(empty, v11);

    if (v13)
    {
      _os_feature_enabled_write_nested_value_into_plist_cold_1();
    }

    v14 = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(v14, "Enabled", v6);
    xpc_dictionary_set_value(empty, v11, v14);
    free(v7);
  }

  else
  {
    free(v7);
  }
}

void _os_feature_enabled_write_nested_value_into_plist_cold_1()
{
  _os_crash();
  __break(1u);
  __error();
}