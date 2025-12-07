uint64_t sub_2394B15F4(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v35 = *(a1 + 18);
  v37 = 0;
  v36 = 0;
  v38 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = &unk_284BBC928;
  v34[0] = &unk_284BBC990;
  v34[1] = 0;
  v39 = v1;
  v40 = -1;
  v41 = 0;
  v42 = 1;
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    if (sub_2394B6EC4(&v25, v34, *(*(a1 + 8) + 24)))
    {
      break;
    }

    v5 = *(a1 + 16);
    v19 = v35;
    v20 = v40;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = &unk_284BBCA18;
    v18[0] = &unk_284BBCA80;
    v18[1] = 0;
    v21 = v5;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    if (v41)
    {
      v6 = 0;
      do
      {
        if (sub_2394B6EC4(&v9, v18, *(*(a1 + 8) + 24)))
        {
          break;
        }

        v20 = HIWORD(v22);
        ++v6;
      }

      while (v6 < v41);
      v3 += v6;
    }

    v35 = WORD2(v41);
  }

  while (v4++ < *(a1 + 32));
  return v3;
}

BOOL sub_2394B1814(uint64_t a1, _WORD *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 20);
  while (1)
  {
    v4 = *(a1 + 16);
    v41 = v3;
    v43 = 0;
    v42 = 0;
    v44 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40[0] = &unk_284BBC990;
    v40[1] = 0;
    v31 = &unk_284BBC928;
    v45 = v4;
    v46 = -1;
    v47 = 0;
    v48 = 1;
    v5 = sub_2394B6EC4(&v31, v40, *(*(a1 + 8) + 24));
    v6 = v5 == 0;
    if (v5)
    {
      *(a1 + 24) = *(a1 + 32);
      return v6;
    }

    if (*(a1 + 64))
    {
      v7 = 0;
      *(a1 + 40) = v46;
      v8 = v47;
      *(a1 + 48) = 0;
      *(a1 + 56) = v8;
      *(a1 + 64) = 0;
    }

    else
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
    }

    if (v7 < v8)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 40);
      v25 = *(a1 + 20);
      v26 = v10;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = &unk_284BBCA18;
      v24[0] = &unk_284BBCA80;
      v24[1] = 0;
      v27 = v9;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      if (!sub_2394B6EC4(&v15, v24, *(*(a1 + 8) + 24)))
      {
        break;
      }
    }

    v3 = WORD2(v47);
    *(a1 + 20) = WORD2(v47);
    v11 = *(a1 + 32);
    v12 = *(a1 + 24) + 1;
    *(a1 + 24) = v12;
    *(a1 + 64) = 1;
    if (v12 >= v11)
    {
      return 0;
    }
  }

  *a2 = v41;
  a2[1] = v26;
  *(a1 + 40) = HIWORD(v28);
  ++*(a1 + 48);
  return v6;
}

void sub_2394B1A98(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394B1B48(uint64_t a1, char a2, uint64_t a3, unsigned __int16 *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x547000000ACLL;
  }

  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = &unk_284BBC810;
  v54[0] = &unk_284BBC878;
  v54[1] = 0;
  v55 = a2;
  v56 = 0;
  v57 = 0xFFFF;
  v58 = 0;
  v42 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  v29 = &unk_284BBCB08;
  v38[0] = &unk_284BBCB70;
  v43 = a2;
  v44 = 0;
  v9 = sub_2394B6EC4(&v45, v54, v5);
  if (v9 && v9 != 216)
  {
    goto LABEL_10;
  }

  if (!sub_2394B1E9C(&v29, *(a1 + 24), &v45, a4) || WORD1(v39) == a3)
  {
    v12 = sub_2394B1FA0(&v29, *(a1 + 24), &v45, a3);
    v44 = *a4;
    if (v12)
    {
      v9 = sub_2394B7060(&v29, v38, *(a1 + 24));
    }

    else
    {
      if (HIWORD(v56) != a3)
      {
        v10 = 0x55F00000000;
        LODWORD(v9) = 47;
        return v9 | v10;
      }

      if (HIWORD(v56) >= *(a1 + 8))
      {
        v10 = 0x56000000000;
        LODWORD(v9) = 31;
        return v9 | v10;
      }

      WORD2(v39) = 0;
      v9 = sub_2394B7060(&v29, v38, *(a1 + 24));
      if (v9)
      {
        goto LABEL_10;
      }

      if (v41 == 1)
      {
        WORD2(v56) = v39;
      }

      else
      {
        v26 = 0;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v23 = HIWORD(v39);
        v24 = 0;
        v25 = 1;
        v13 = &unk_284BBCB08;
        v22[0] = &unk_284BBCB70;
        v22[1] = 0;
        v27 = a2;
        v28 = 0;
        v9 = sub_2394B6EC4(&v13, v22, *(a1 + 24));
        if (v9)
        {
          goto LABEL_10;
        }

        WORD1(v24) = v39;
        v9 = sub_2394B7060(&v13, v22, *(a1 + 24));
        if (v9)
        {
          goto LABEL_10;
        }
      }

      ++HIWORD(v56);
      v9 = sub_2394AFA10(&v45, *(a1 + 24));
    }

LABEL_10:
    v10 = v9 & 0xFFFFFFFF00000000;
    return v9 | v10;
  }

  v10 = 0x55200000000;
  LODWORD(v9) = 26;
  return v9 | v10;
}

uint64_t sub_2394B1E9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v10) = *(a1 + 160);
LABEL_10:
        v5 = v10 + 1;
        goto LABEL_11;
      }

      if (*(a1 + 170) == *a4 && *(a1 + 172) == a4[1])
      {
        return 1;
      }

      v9 = *(a1 + 152);
      v10 = *(a1 + 160);
      if (v9 > v10)
      {
        LOWORD(v10) = *(a1 + 152);
      }

      *(a1 + 160) = v10;
      *(a1 + 162) = 0;
      *(a1 + 158) = v9;
      *(a1 + 152) = *(a1 + 156);
      v11 = *(a1 + 154) + 1;
      *(a1 + 154) = v11;
      if (*(a3 + 160) <= v11)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_11:
    result = 0;
    *(a1 + 152) = v5;
  }

  return result;
}

uint64_t sub_2394B1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v11) = *(a1 + 160);
LABEL_9:
        v5 = v11 + 1;
        goto LABEL_10;
      }

      v9 = *(a1 + 154);
      if (v9 == a4)
      {
        return 1;
      }

      v10 = *(a1 + 152);
      v11 = *(a1 + 160);
      if (v10 > v11)
      {
        LOWORD(v11) = *(a1 + 152);
      }

      *(a1 + 160) = v11;
      *(a1 + 162) = 0;
      *(a1 + 158) = v10;
      *(a1 + 152) = *(a1 + 156);
      v12 = v9 + 1;
      *(a1 + 154) = v12;
      if (*(a3 + 160) <= v12)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_10:
    result = 0;
    *(a1 + 152) = v5;
  }

  return result;
}

unint64_t sub_2394B208C(uint64_t a1, char a2, uint64_t a3, _DWORD *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x579000000ACLL;
  }

  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = &unk_284BBC810;
  v37[0] = &unk_284BBC878;
  v37[1] = 0;
  v38 = a2;
  v39 = 0;
  v40 = 0xFFFF;
  v41 = 0;
  v25 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v11 = &unk_284BBCB08;
  v20 = &unk_284BBCB70;
  v21 = 0;
  v26 = 0;
  v27 = 0;
  v8 = sub_2394B6EC4(&v28, v37, v5);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394B1FA0(&v11, *(a1 + 24), &v28, a3))
  {
    LODWORD(v8) = 0;
    v9 = 0;
    *a4 = v27;
  }

  else
  {
    v9 = 0x57F00000000;
    LODWORD(v8) = 216;
  }

  return v9 | v8;
}

double sub_2394B2268(uint64_t a1)
{
  *(a1 + 164) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 154) = 0;
  *(a1 + 162) = 1;
  *a1 = &unk_284BBCB08;
  *(a1 + 136) = &unk_284BBCB70;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 170) = 0;
  return result;
}

uint64_t sub_2394B22E8(uint64_t a1, char a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = &unk_284BBC810;
    v51[0] = &unk_284BBC878;
    v51[1] = 0;
    v52 = a2;
    v53 = 0;
    v54 = 0xFFFF;
    v55 = 0;
    v39 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v36 = 1;
    v37 = 0;
    v38 = 1;
    v26 = &unk_284BBCB08;
    v35[0] = &unk_284BBCB70;
    v35[1] = 0;
    v40 = 0;
    v41 = 0;
    v7 = sub_2394B6EC4(&v42, v51, v4);
    if (!v7)
    {
      if (!sub_2394B1FA0(&v26, *(a1 + 24), &v42, a3))
      {
        v8 = 0x58F00000000;
        LODWORD(v7) = 216;
        return v8 | v7;
      }

      v7 = sub_2394B6C54(&v26, v35, *(a1 + 24));
      if (!v7)
      {
        if (v38 == 1)
        {
          WORD2(v53) = WORD1(v37);
          goto LABEL_10;
        }

        v23 = 0;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v20 = WORD2(v37);
        v21 = 0;
        v22 = 1;
        v10 = &unk_284BBCB08;
        v19[0] = &unk_284BBCB70;
        v19[1] = 0;
        v24 = a2;
        v25 = 0;
        v7 = sub_2394B6EC4(&v10, v19, *(a1 + 24));
        if (!v7)
        {
          WORD1(v21) = WORD1(v37);
          v7 = sub_2394B7060(&v10, v19, *(a1 + 24));
          if (!v7)
          {
LABEL_10:
            if (HIWORD(v53))
            {
              --HIWORD(v53);
            }

            v7 = sub_2394AFA10(&v42, *(a1 + 24));
          }
        }
      }
    }

    v8 = v7 & 0xFFFFFFFF00000000;
    return v8 | v7;
  }

  return 0x589000000ACLL;
}

unint64_t sub_2394B25AC(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0x5A9000000ACLL;
  }

  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = &unk_284BBC810;
  v32[0] = &unk_284BBC878;
  v32[1] = 0;
  v33 = a2;
  v34 = 0;
  v35 = 0xFFFF;
  v36 = 0;
  if (sub_2394B6EC4(&v23, v32, v2))
  {
    return 0x5AC00000071;
  }

  v20 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = WORD2(v34);
  v18 = 0;
  v19 = 1;
  v7 = &unk_284BBCB08;
  v16[0] = &unk_284BBCB70;
  v16[1] = 0;
  v21 = a2;
  v22 = 0;
  if (HIWORD(v34))
  {
    v6 = 0;
    do
    {
      if (sub_2394B6EC4(&v7, v16, *(a1 + 24)))
      {
        break;
      }

      sub_2394B6C54(&v7, v16, *(a1 + 24));
      v17 = WORD1(v18);
      ++v6;
    }

    while (v6 < HIWORD(v34));
  }

  HIDWORD(v34) = 0;
  return sub_2394AFA10(&v23, *(a1 + 24));
}

void *sub_2394B27A0(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B27E4((a1 + 96), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B27E4(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B2880(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B2880(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC508;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = &unk_284BBC810;
  v15[0] = &unk_284BBC878;
  v15[1] = 0;
  v16 = a3;
  v17 = 0;
  v18 = 0xFFFF;
  v19 = 0;
  if (!sub_2394B6EC4(&v6, v15, *(a2 + 24)))
  {
    *(a1 + 18) = WORD2(v17);
    v4 = HIWORD(v17);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  return a1;
}

BOOL sub_2394B29A8(uint64_t a1, _DWORD *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 18);
  v21 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = v5;
  v19 = 0;
  v20 = 1;
  v8 = &unk_284BBCB08;
  v17[0] = &unk_284BBCB70;
  v17[1] = 0;
  v22 = v4;
  v23 = 0;
  v6 = sub_2394B6EC4(&v8, v17, *(*(a1 + 8) + 24));
  result = v6 == 0;
  if (!v6)
  {
    ++*(a1 + 24);
    *(a1 + 18) = WORD1(v19);
    *a2 = v23;
  }

  return result;
}

void sub_2394B2ADC(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394B2B8C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x5F5000000ACLL;
  }

  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = &unk_284BBC810;
  v49[0] = &unk_284BBC878;
  v49[1] = 0;
  v50 = a2;
  v51 = 0;
  v52 = 0xFFFF;
  v53 = 0;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v16 = &unk_284BBCC10;
  v25[0] = &unk_284BBCC78;
  v25[1] = 0;
  v26 = 0;
  v27 = -1;
  v28 = 1;
  v29 = 0x10000;
  v8 = sub_2394B6EC4(&v40, v49, v5);
  if (!v8 || v8 == 216)
  {
    v9 = sub_2394B2E78(&v16, *(a1 + 24), &v40, *(a4 + 36));
    v29 = *(a4 + 18);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v30 = *a4;
    *(&v33 + 1) = a4[3];
    *(&v36 + 1) = a4[6];
    if (HIBYTE(v29))
    {
      v10 = 0;
      v11 = &v30;
      v12 = a4 + 1;
      while (1)
      {
        sub_238DB6950(v15, v12, 16);
        v8 = sub_2393F3628(v15, a3, v11);
        if (v8)
        {
          break;
        }

        ++v10;
        v11 += 6;
        v12 += 3;
        if (v10 >= *(a4 + 75))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v9)
      {
        v8 = sub_2394B7060(&v16, v25, *(a1 + 24));
      }

      else
      {
        if (HIWORD(v52) >= *(a1 + 10))
        {
          v14 = 0x61800000000;
          LODWORD(v8) = 31;
          return v8 | v14;
        }

        LOWORD(v27) = v52;
        v8 = sub_2394B7060(&v16, v25, *(a1 + 24));
        if (!v8)
        {
          ++HIWORD(v52);
          LOWORD(v52) = *(a4 + 36);
          v8 = sub_2394AFA10(&v40, *(a1 + 24));
        }
      }
    }
  }

  v14 = v8 & 0xFFFFFFFF00000000;
  return v8 | v14;
}

uint64_t sub_2394B2E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 152) = *(a3 + 152);
  *(a1 + 160) = *(a3 + 162);
  *(a1 + 158) = 1;
  if (!*(a3 + 164))
  {
    return 0;
  }

  v8 = 1;
  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v9 = *(a1 + 160);
    if (v9 == a4)
    {
      break;
    }

    *(a1 + 158) = 0;
    *(a1 + 156) = v9;
    *(a1 + 160) = *(a1 + 154);
    if (v8++ >= *(a3 + 164))
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2394B2F50(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x625000000ACLL;
  }

  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = &unk_284BBC810;
  v40[0] = &unk_284BBC878;
  v40[1] = 0;
  v41 = a2;
  v42 = 0;
  v43 = 0xFFFF;
  v44 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = &unk_284BBCC10;
  v22 = &unk_284BBCC78;
  v23 = 0;
  v24 = 0;
  v25 = -1;
  v26 = 1;
  v27 = 0x10000;
  v8 = sub_2394B6EC4(&v31, v40, v5);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394B2E78(&v13, *(a1 + 24), &v31, a3))
  {
    for (i = 0; i != 72; i += 24)
    {
      *(a4 + i) = 0;
      sub_2393F9144(a4 + i + 8, 16);
    }

    LODWORD(v8) = 0;
    v9 = 0;
    *(a4 + 72) = v27;
    v12 = v29;
    *a4 = v28;
    *(a4 + 24) = v12;
    *(a4 + 48) = v30;
  }

  else
  {
    v9 = 0x62B00000000;
    LODWORD(v8) = 216;
  }

  return v9 | v8;
}

uint64_t sub_2394B314C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (v4)
  {
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = &unk_284BBC810;
    v51[0] = &unk_284BBC878;
    v51[1] = 0;
    v52 = a2;
    v53 = 0;
    v54 = 0xFFFF;
    v55 = 0;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = &unk_284BBCC10;
    v37[0] = &unk_284BBCC78;
    v37[1] = 0;
    v38 = 0;
    v39 = -1;
    v40 = 1;
    v41 = 0x10000;
    v7 = sub_2394B6EC4(&v42, v51, v4);
    if (!v7)
    {
      if (!sub_2394B2E78(&v28, a1[3], &v42, v3))
      {
        v8 = 0x64200000000;
        LODWORD(v7) = 216;
        return v8 | v7;
      }

      v7 = sub_2394B6C54(&v28, v37, a1[3]);
      if (!v7)
      {
        if (v40 == 1)
        {
          LOWORD(v54) = v39;
          goto LABEL_10;
        }

        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = &unk_284BBCC10;
        v22[0] = &unk_284BBCC78;
        v22[1] = 0;
        v23 = a2;
        v24 = -1;
        v25 = 1;
        v27 = 1;
        v26 = HIWORD(v39);
        v7 = sub_2394B6EC4(&v13, v22, a1[3]);
        if (!v7)
        {
          LOWORD(v24) = v39;
          v7 = sub_2394B7060(&v13, v22, a1[3]);
          if (!v7)
          {
LABEL_10:
            if (HIWORD(v54))
            {
              --HIWORD(v54);
            }

            v7 = sub_2394AFA10(&v42, a1[3]);
            if (!v7)
            {
              sub_2394B2268(&v13);
              v10 = HIWORD(v53);
              if (HIWORD(v53))
              {
                v11 = 0;
                do
                {
                  sub_2394B6EC4(&v42, v51, a1[3]);
                  v12 = sub_2394B34A4(&v13, a1[3], &v42, v3);
                  if (v12 == -1)
                  {
                    break;
                  }

                  (*(*a1 + 144))(a1, a2, v12);
                  ++v11;
                }

                while (v11 < v10);
              }

              LODWORD(v7) = 0;
              v8 = 0;
              return v8 | v7;
            }
          }
        }
      }
    }

    v8 = v7 & 0xFFFFFFFF00000000;
    return v8 | v7;
  }

  return 0x63C000000ACLL;
}

uint64_t sub_2394B34A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v10) = *(a1 + 160);
LABEL_9:
        v5 = v10 + 1;
        goto LABEL_10;
      }

      if (*(a1 + 172) == a4)
      {
        return *(a1 + 154);
      }

      v9 = *(a1 + 152);
      v10 = *(a1 + 160);
      if (v9 > v10)
      {
        LOWORD(v10) = *(a1 + 152);
      }

      *(a1 + 160) = v10;
      *(a1 + 162) = 0;
      *(a1 + 158) = v9;
      *(a1 + 152) = *(a1 + 156);
      v11 = *(a1 + 154) + 1;
      *(a1 + 154) = v11;
      if (*(a3 + 160) <= v11)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_10:
    *(a1 + 152) = v5;
    return -1;
  }
}

void *sub_2394B3594(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B35D8((a1 + 208), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B35D8(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B3674(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B3674(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC540;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = &unk_284BBC810;
  v15[0] = &unk_284BBC878;
  v15[1] = 0;
  v16 = a3;
  v17 = 0;
  v18 = 0xFFFF;
  v19 = 0;
  if (!sub_2394B6EC4(&v6, v15, *(a2 + 24)))
  {
    *(a1 + 18) = v18;
    v4 = HIWORD(v18);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  return a1;
}

BOOL sub_2394B379C(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 18);
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = &unk_284BBCC10;
  v20[0] = &unk_284BBCC78;
  v20[1] = 0;
  v21 = v4;
  v22 = -1;
  v23 = 1;
  HIWORD(v24) = 1;
  LOWORD(v24) = v5;
  v6 = sub_2394B6EC4(&v11, v20, *(*(a1 + 8) + 24));
  v7 = v6 == 0;
  if (!v6)
  {
    v8 = 0;
    ++*(a1 + 24);
    *(a1 + 18) = v22;
    do
    {
      *(a2 + v8) = 0;
      sub_2393F9144(a2 + v8 + 8, 16);
      v8 += 24;
    }

    while (v8 != 72);
    *(a2 + 72) = v24;
    v9 = v26;
    *a2 = v25;
    *(a2 + 24) = v9;
    *(a2 + 48) = v27;
  }

  return v7;
}

void sub_2394B3924(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394B39D4(void *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = &unk_284BBC810;
  v36[0] = &unk_284BBC878;
  v36[1] = 0;
  v37 = a2;
  v38 = 0;
  v39 = 0xFFFF;
  v40 = 0;
  result = sub_2394B6EC4(&v27, v36, a1[3]);
  if (result == 216 || !result)
  {
    v5 = HIWORD(v38);
    if (HIWORD(v38))
    {
      v6 = 0;
      v7 = -1;
      do
      {
        (*(*a1 + 144))(a1, a2, v5 + v7);
        ++v6;
        v5 = HIWORD(v38);
        --v7;
      }

      while (v6 < HIWORD(v38));
    }

    v8 = WORD1(v38);
    if (WORD1(v38))
    {
      v9 = 0;
      v10 = -1;
      do
      {
        (*(*a1 + 72))(a1, a2, v8 + v10);
        ++v9;
        v8 = WORD1(v38);
        --v10;
      }

      while (v9 < WORD1(v38));
    }

    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = &unk_284BBCC10;
    v21[0] = &unk_284BBCC78;
    v21[1] = 0;
    v22 = a2;
    v23 = -1;
    v24 = 1;
    v26 = 1;
    v25 = v39;
    if (HIWORD(v39))
    {
      v11 = 0;
      do
      {
        if (sub_2394B6EC4(&v12, v21, a1[3]))
        {
          break;
        }

        (*(*a1 + 184))(a1, a2, v25);
        v25 = v23;
        ++v11;
      }

      while (v11 < HIWORD(v39));
    }

    return sub_2394B3C5C(&v27, a1[3]);
  }

  return result;
}

unint64_t sub_2394B3C5C(uint64_t a1, uint64_t a2)
{
  result = sub_2394B6738(a1, a2);
  if (!result)
  {

    return sub_2394B6C54(a1, a1 + 136, a2);
  }

  return result;
}

char *sub_2394B3CB0(uint64_t a1, char a2, int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = &unk_284BBC810;
  v50[0] = &unk_284BBC878;
  v50[1] = 0;
  v51 = a2;
  v52 = 0;
  v53 = 0xFFFF;
  v54 = 0;
  v5 = sub_2394B6EC4(&v41, v50, *(a1 + 24));
  result = 0;
  if (!v5)
  {
    v38 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v35 = WORD2(v52);
    v36 = 0;
    v37 = 1;
    v25 = &unk_284BBCB08;
    v34[0] = &unk_284BBCB70;
    v34[1] = 0;
    v39 = v51;
    v40 = 0;
    if (HIWORD(v52))
    {
      v7 = 0;
      while (!sub_2394B6EC4(&v25, v34, *(a1 + 24)))
      {
        if (HIWORD(v40))
        {
          v8 = v40 == a3;
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          v18 = 0u;
          v17 = 0u;
          v16 = 0u;
          v15 = 0u;
          v14 = 0u;
          v13 = 0u;
          v12 = 0u;
          v11 = 0u;
          v10 = &unk_284BBCC10;
          v19 = &unk_284BBCC78;
          v20 = 0;
          v21 = 0;
          v22 = -1;
          v23 = 1;
          v24 = 0x10000;
          if (!sub_2394B2E78(&v10, *(a1 + 24), &v41, HIWORD(v40)))
          {
            return 0;
          }

          if (HIBYTE(v24) - 1 <= 2)
          {
            v9 = (&v10 + qword_2395D7300[(HIBYTE(v24) - 1)]);
            return sub_2394B3F68((a1 + 320), a1, (v9 + 5), v9 + 4, (v9 + 13));
          }
        }

        ++v7;
        v35 = WORD1(v36);
        if (v7 >= HIWORD(v52))
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

char *sub_2394B3F68(unint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v10 = sub_2393D52C4(0x38uLL);
  v11 = v10;
  if (v10)
  {
    v12 = *a4;
    *v10 = &unk_284BBC6D0;
    *(v10 + 1) = a2;
    *(v10 + 8) = 0;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    sub_2394B4D68(v10, a3, v12, a5);
    v13 = sub_2393D52C4(0x18uLL);
    if (v13)
    {
      *v13 = v11;
      v13[1] = a1 + 2;
      v13[2] = 0;
      v14 = a1[4];
      v13[2] = v14;
      *(v14 + 8) = v13;
      a1[4] = v13;
      v15 = a1[1];
      v16 = *a1 + 1;
      *a1 = v16;
      if (v16 > v15)
      {
        a1[1] = v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394B4044(uint64_t a1, char a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = &unk_284BBC810;
  v52[0] = &unk_284BBC878;
  v52[1] = 0;
  v53 = a2;
  v54 = 0;
  v55 = 0xFFFF;
  v56 = 0;
  if (sub_2394B6EC4(&v43, v52, *(a1 + 24)))
  {
    return 0x6EF000000D8;
  }

  v40 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v37 = WORD2(v54);
  v38 = 0;
  v39 = 1;
  *&v26[134] = &unk_284BBCB08;
  v35 = &unk_284BBCB70;
  v36 = 0;
  v41 = v53;
  v42 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = &unk_284BBCC10;
  v20 = &unk_284BBCC78;
  v21 = 0;
  v22 = 0;
  v23 = -1;
  v24 = 1;
  v25 = 0x10000;
  if (sub_2394B2E78(&v11, *(a1 + 24), &v43, 0))
  {
    if (v25)
    {
      v6 = 0x6F800000000;
      v7 = 172;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      *(a3 + 72) = 0;
      *(a3 + 74) = HIWORD(v25);
      v10 = v26;
      do
      {
        *(a3 + v8) = 0;
        sub_2393F9144(a3 + v8 + 8, 16);
        if (v9 < HIBYTE(v25))
        {
          *(a3 + v8) = *(v10 - 10);
          *(a3 + v8 + 8) = *v10;
        }

        ++v9;
        v8 += 24;
        v10 += 3;
      }

      while (v8 != 72);
      v7 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = 0x6F500000000;
    v7 = 216;
  }

  return v6 | v7;
}

void sub_2394B42F4(void *a1)
{
  v2 = *(a1[1] + 32);
  (*(*v2 + 40))(v2, a1 + 3);
  (*(*v2 + 40))(v2, a1 + 5);
  v3 = a1[1] + 320;

  sub_2394B4390(v3, a1);
}

void sub_2394B4390(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (*(*a2 + 8))(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394B450C(uint64_t a1, __int16 a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B4550((a1 + 264), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B4550(unint64_t *a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = sub_2393D52C4(0x60uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B45EC(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B45EC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC578;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = &unk_284BBC6D0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v7 = 0u;
  v8 = 0u;
  v10 = 0;
  v11 = 0;
  v6 = &unk_284BBCCD0;
  v9[0] = &unk_284BBCD38;
  v9[1] = 0;
  if (!sub_2394B6D28(&v6, v9, *(a2 + 24)))
  {
    v4 = v10;
    *(a1 + 18) = v10;
    *(a1 + 19) = v4;
    *(a1 + 20) = 0;
    *(a1 + 22) = v11;
    *(a1 + 26) = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_2394B4730(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 18);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51[1] = 0;
  v42 = &unk_284BBC810;
  v51[0] = &unk_284BBC878;
  v52 = v1;
  v53 = 0;
  v54 = 0xFFFF;
  v55 = 0;
  if (!*(a1 + 22))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (sub_2394B6EC4(&v42, v51, *(*(a1 + 8) + 24)))
    {
      break;
    }

    v39 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v36 = WORD2(v53);
    v37 = 0;
    v38 = 1;
    v26 = &unk_284BBCB08;
    v35[0] = &unk_284BBCB70;
    v35[1] = 0;
    v40 = v52;
    v41 = 0;
    if (HIWORD(v53))
    {
      v5 = 0;
      do
      {
        if (sub_2394B6EC4(&v26, v35, *(*(a1 + 8) + 24)))
        {
          break;
        }

        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        v14 = 0u;
        v13 = 0u;
        v12 = 0u;
        v11 = 0u;
        v10 = &unk_284BBCC10;
        v19 = &unk_284BBCC78;
        v20 = 0;
        v21 = 0;
        v22 = -1;
        v23 = 1;
        v24 = 0x10000;
        if (!sub_2394B2E78(&v10, *(*(a1 + 8) + 24), &v42, HIWORD(v41)))
        {
          break;
        }

        v6 = HIBYTE(v24);
        if (HIBYTE(v24))
        {
          v7 = &v25;
          do
          {
            v8 = *v7;
            v7 += 24;
            if (v8 == *(a1 + 16))
            {
              ++v4;
            }

            --v6;
          }

          while (v6);
        }

        ++v5;
        v36 = WORD1(v37);
      }

      while (v5 < HIWORD(v53));
    }

    ++v3;
    v52 = v55;
  }

  while (v3 < *(a1 + 22));
  return v4;
}

uint64_t sub_2394B49F8(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) < *(a1 + 22))
  {
    v12 = a1 + 40;
    v3 = 0uLL;
    do
    {
      v4 = *(a1 + 19);
      v48 = v3;
      v49 = v3;
      v50 = v3;
      v51 = v3;
      v52 = v3;
      v53 = v3;
      v54 = v3;
      v47 = v3;
      v55[1] = 0;
      v46 = &unk_284BBC810;
      v55[0] = &unk_284BBC878;
      v56 = v4;
      v57 = 0;
      v58 = 0xFFFF;
      v59 = 0;
      if (sub_2394B6EC4(&v46, v55, *(*(a1 + 8) + 24)))
      {
        break;
      }

      if (*(a1 + 26) >= HIWORD(v57))
      {
        *(a1 + 19) = v59;
        ++*(a1 + 20);
        *(a1 + 32) = 1;
        *(a1 + 26) = 0;
        v3 = 0uLL;
      }

      else
      {
        if (*(a1 + 32))
        {
          v5 = WORD2(v57);
          *(a1 + 24) = WORD2(v57);
          *(a1 + 32) = 0;
        }

        else
        {
          v5 = *(a1 + 24);
        }

        v6 = *(a1 + 19);
        v43 = 0;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v40 = v5;
        v41 = 0;
        v42 = 1;
        v30 = &unk_284BBCB08;
        v39[0] = &unk_284BBCB70;
        v39[1] = 0;
        v44 = v6;
        v45 = 0;
        if (sub_2394B6EC4(&v30, v39, *(*(a1 + 8) + 24)))
        {
          return 0;
        }

        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        v14 = &unk_284BBCC10;
        v23 = &unk_284BBCC78;
        v24 = 0;
        v25 = 0;
        v26 = -1;
        v27 = 1;
        v28 = 0x10000;
        v7 = sub_2394B2E78(&v14, *(*(a1 + 8) + 24), &v46, HIWORD(v45));
        if (!v7)
        {
          return v7;
        }

        v8 = *(a1 + 28);
        if (v8 >= HIBYTE(v28))
        {
          *(a1 + 24) = WORD1(v41);
          ++*(a1 + 26);
          *(a1 + 28) = 0;
          v3 = 0uLL;
        }

        else
        {
          *(a1 + 28) = v8 + 1;
          v9 = &v29[3 * v8];
          v10 = *(v9 + 4);
          v3 = 0uLL;
          if (v10 == *(a1 + 16))
          {
            sub_2394B4D68(v12, v9 + 10, v10, v9 + 26);
            *(a2 + 2) = v56;
            *a2 = v45;
            *(a2 + 3) = BYTE2(v28);
            *(a2 + 8) = v12;
            return v7;
          }
        }
      }
    }

    while (*(a1 + 20) < *(a1 + 22));
  }

  return 0;
}

uint64_t sub_2394B4D68(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = *(*(a1 + 8) + 32);
  (*(*v8 + 40))(v8, a1 + 24);
  (*(*v8 + 40))(v8, a1 + 40);
  *(a1 + 16) = a3;
  v9 = *(*(a1 + 8) + 32);
  (*(*v9 + 16))(v9, a2, a1 + 24);
  v10 = *(*v9 + 16);

  return v10(v9, a4, a1 + 40);
}

void sub_2394B4E7C(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 32);
  (*(*v2 + 40))(v2, a1 + 64);
  (*(*v2 + 40))(v2, a1 + 80);
  v3 = *(a1 + 8) + 264;

  sub_2394B4F18(v3, a1);
}

void sub_2394B4F18(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void sub_2394B4FE4(void *a1)
{
  sub_238DCCDE8(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394B5024(void *a1)
{
  *a1 = &unk_284BBC6D0;
  v2 = a1 + 3;
  sub_2393F9144((a1 + 5), 16);
  sub_2393F9144(v2, 16);
  return a1;
}

void sub_2394B5080(void *a1)
{
  *a1 = &unk_284BBC6D0;
  v1 = a1 + 3;
  sub_2393F9144((a1 + 5), 16);
  sub_2393F9144(v1, 16);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394B5124(void *a1)
{
  *a1 = &unk_284BBC578;
  a1[5] = &unk_284BBC6D0;
  sub_2393F9144((a1 + 10), 16);
  sub_2393F9144((a1 + 8), 16);
  return a1;
}

void sub_2394B519C(void *a1)
{
  *a1 = &unk_284BBC578;
  a1[5] = &unk_284BBC6D0;
  sub_2393F9144((a1 + 10), 16);
  sub_2393F9144((a1 + 8), 16);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394B5298(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 152))
  {
    sub_239296DA0(v7, "f/%x/g", *(a1 + 152));
    v3 = 0;
    v4 = 0;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    v3 = 0x5600000000;
    v4 = 113;
  }

  return v4 | v3;
}

uint64_t sub_2394B5340(uint64_t result)
{
  *(result + 154) = 0;
  *(result + 162) = 0xFFFF;
  *(result + 166) = 0;
  return result;
}

unint64_t sub_2394B5354(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 154));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 156));
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, *(a1 + 158));
        if (!result)
        {
          result = sub_2393C818C(a2, 4uLL, *(a1 + 160));
          if (!result)
          {
            result = sub_2393C818C(a2, 5uLL, *(a1 + 162));
            if (!result)
            {
              result = sub_2393C818C(a2, 6uLL, *(a1 + 164));
              if (!result)
              {
                result = sub_2393C818C(a2, 7uLL, *(a1 + 166));
                if (!result)
                {
                  return sub_2393C8DE0(a2, v5);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B5434(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x7600000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, (a1 + 154));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 156));
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, (a1 + 158));
                if (!v4)
                {
                  v4 = sub_2393C6FD0(a2, 4);
                  if (!v4)
                  {
                    v4 = sub_2393C5F70(a2, (a1 + 160));
                    if (!v4)
                    {
                      v4 = sub_2393C6FD0(a2, 5);
                      if (!v4)
                      {
                        v4 = sub_2393C5F70(a2, (a1 + 162));
                        if (!v4)
                        {
                          v4 = sub_2393C6FD0(a2, 6);
                          if (!v4)
                          {
                            v4 = sub_2393C5F70(a2, (a1 + 164));
                            if (!v4)
                            {
                              v4 = sub_2393C6FD0(a2, 7);
                              if (!v4)
                              {
                                v4 = sub_2393C5ED0(a2, (a1 + 166));
                                if (!v4)
                                {
                                  v4 = sub_2393C6A98(a2, v7);
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

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B55BC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    sub_239296DA0(v7, "f/%x/g", *(a1 + 16));
    v3 = 0;
    v4 = 0;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    v3 = 0x5600000000;
    v4 = 113;
  }

  return v4 | v3;
}

uint64_t sub_2394B5674(uint64_t result)
{
  *(result + 18) = 0;
  *(result + 26) = 0xFFFF;
  *(result + 30) = 0;
  return result;
}

uint64_t sub_2394B569C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 171))
  {
    sub_239296DA0(v7, "f/%x/g/%x", *(a1 + 171), 0);
    v3 = 0;
    v4 = 0;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    v3 = 0x11C00000000;
    v4 = 113;
  }

  return v4 | v3;
}

uint64_t sub_2394B5748(uint64_t result)
{
  *(result + 154) = 0;
  *(result + 172) = 0xFFFF;
  *(result + 178) = 0;
  return result;
}

unint64_t sub_2394B575C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v6);
  if (!result)
  {
    v5 = strnlen((a1 + 154), 0x10uLL);
    result = sub_2393C8548(a2, 1uLL, (a1 + 154), v5);
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 172));
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, *(a1 + 174));
        if (!result)
        {
          result = sub_2393C818C(a2, 4uLL, *(a1 + 178));
          if (!result)
          {
            return sub_2393C8DE0(a2, v6);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B5810(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x13900000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C65A4(a2, (a1 + 154), 0x11uLL);
        if (!v4)
        {
          *(a1 + 154 + strnlen((a1 + 154), 0x10uLL)) = 0;
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 172));
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, (a1 + 174));
                if (!v4)
                {
                  v4 = sub_2393C6FD0(a2, 4);
                  if (!v4)
                  {
                    v4 = sub_2393C5F70(a2, (a1 + 178));
                    if (!v4)
                    {
                      v4 = sub_2393C6A98(a2, v7);
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

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B5970(uint64_t result)
{
  *(result + 18) = 0;
  *(result + 36) = 0xFFFF;
  *(result + 42) = 0;
  return result;
}

unint64_t sub_2394B5984(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v29 = 0;
  v30 = 0;
  v25 = &unk_284BBCCD0;
  v28[0] = &unk_284BBCD38;
  v28[1] = 0;
  v4 = sub_2394B6D28(&v25, v28, a2);
  if (v4 == 216)
  {
    v29 = *(a1 + 152);
    v30 = 1;
LABEL_14:
    v4 = sub_2394B5B98(&v25, v28, a2);
    goto LABEL_15;
  }

  if (v4)
  {
LABEL_15:
    v9 = v4 & 0xFFFFFFFF00000000;
    return v9 | v4;
  }

  v5 = v29;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = &unk_284BBC810;
  v20[0] = &unk_284BBC878;
  v20[1] = 0;
  v21 = v29;
  v22 = 0;
  v23 = 0xFFFF;
  v24 = 0;
  if (!v30)
  {
    v8 = 1;
LABEL_13:
    *(a1 + 166) = v5;
    v29 = *(a1 + 152);
    v30 = v8;
    goto LABEL_14;
  }

  v6 = 0;
  while (1)
  {
    if (sub_2394B6EC4(&v11, v20, a2))
    {
      v7 = v30;
LABEL_12:
      v5 = v29;
      v8 = v7 + 1;
      goto LABEL_13;
    }

    if (v21 == *(a1 + 152))
    {
      break;
    }

    v21 = v24;
    ++v6;
    v7 = v30;
    if (v6 >= v30)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v4) = 0;
  v9 = 0;
  return v9 | v4;
}

uint64_t sub_2394B5B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x2D0000002FLL;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = (*(*a2 + 16))(a2, v9);
  if (!result)
  {
    sub_2393C7B90(v8);
    v7 = sub_2393C7BB8(v8, a1 + 8, 0x20uLL);
    result = (*(*a2 + 24))(a2, v8, v7);
    if (!result)
    {
      return (*(*a3 + 24))(a3, v9, a1 + 8, v8[22]);
    }
  }

  return result;
}

uint64_t sub_2394B5CE0(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 156))
  {
    sub_239296DA0(v7, "f/%x/g/%x/e/%x", *(a1 + 156), 0, *(a1 + 152));
    v3 = 0;
    v4 = 0;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    v3 = 0x22F00000000;
    v4 = 113;
  }

  return v4 | v3;
}

unint64_t sub_2394B5DA0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 154));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 160));
      if (!result)
      {
        return sub_2393C8DE0(a2, v5);
      }
    }
  }

  return result;
}

unint64_t sub_2394B5E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x24300000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, (a1 + 154));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 160));
            if (!v4)
            {
              v4 = sub_2393C6A98(a2, v7);
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B5F3C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 168))
  {
    sub_239296DA0(v7, "f/%x/gk/%x", *(a1 + 168), 0);
    v3 = 0;
    v4 = 0;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v8;
  }

  else
  {
    v3 = 0x19800000000;
    v4 = 113;
  }

  return v4 | v3;
}

unint64_t sub_2394B5FE8(unsigned __int16 *a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, a1[85]);
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, a1[86]);
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, a1[78]);
        if (!result)
        {
          return sub_2393C8DE0(a2, v5);
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B6078(_WORD *a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x1AD00000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, a1 + 85);
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, a1 + 86);
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, a1 + 78);
                if (!v4)
                {
                  v4 = sub_2393C6A98(a2, v7);
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B61AC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 152))
  {
    if (*(a1 + 160) == 0xFFFF)
    {
      v3 = 0x28D00000000;
      v4 = 133;
    }

    else
    {
      sub_239296DA0(v7, "f/%x/k/%x", *(a1 + 152), 0);
      v3 = 0;
      v4 = 0;
      v5 = v7[1];
      *a2 = v7[0];
      *(a2 + 16) = v5;
      *(a2 + 32) = v8;
    }
  }

  else
  {
    v3 = 0x28C00000000;
    v4 = 113;
  }

  return v4 | v3;
}

_OWORD *sub_2394B6278(uint64_t a1)
{
  *(a1 + 168) = 0u;
  result = (a1 + 168);
  *(result - 3) = 1;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  *(result - 7) = -1;
  return result;
}

unint64_t sub_2394B62A4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v12);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 162));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 163));
      if (!result)
      {
        v10 = 0;
        v11 = 0;
        result = sub_2393C8CE0(a2, 3uLL, 22, &v11);
        if (!result)
        {
          v5 = 0;
          v6 = (a1 + 178);
          v7 = 144;
          while (1)
          {
            v13 = 0uLL;
            result = sub_2393C8CE0(a2, 0x100uLL, 21, &v10);
            if (result)
            {
              break;
            }

            if (v5 >= *(a1 + 163))
            {
              v9 = 0;
              v8 = 0;
            }

            else
            {
              v8 = *(v6 - 10);
              v9 = *(v6 - 1);
              v13 = *v6;
            }

            result = sub_2393C8154(a2, 4uLL, v8);
            if (result)
            {
              break;
            }

            result = sub_2393C818C(a2, 5uLL, v9);
            if (result)
            {
              break;
            }

            result = sub_2393C8364(a2, 6uLL, &v13, 0x10uLL);
            if (result)
            {
              break;
            }

            result = sub_2393C8DE0(a2, v10);
            if (result)
            {
              break;
            }

            v6 += 3;
            ++v5;
            v7 -= 48;
            if (!v7)
            {
              result = sub_2393C8DE0(a2, v11);
              if (!result)
              {
                result = sub_2393C818C(a2, 7uLL, *(a1 + 154));
                if (!result)
                {
                  return sub_2393C8DE0(a2, v12);
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B644C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (v4)
  {
    goto LABEL_2;
  }

  if (sub_2393C5C40(a2) != 21)
  {
    v5 = 0x2DA00000000;
LABEL_32:
    LODWORD(v4) = 172;
    return v5 | v4;
  }

  v17 = 0;
  v4 = sub_2393C6A2C(a2, &v17);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_238EA4DB4(a2, (a1 + 162));
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 2);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C5ED0(a2, (a1 + 163));
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 3);
  if (v4)
  {
    goto LABEL_2;
  }

  if (sub_2393C5C40(a2) != 22)
  {
    v5 = 0x2E900000000;
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  v4 = sub_2393C6A2C(a2, &v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v7 = (a1 + 168);
  v8 = 144;
  v12 = 172;
  do
  {
    v4 = sub_2393C6FD0(a2, 256);
    if (v4)
    {
      goto LABEL_2;
    }

    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x2F000000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v4 = sub_2393C6A2C(a2, &v15);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6FD0(a2, 4);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C5F2C(a2, v7);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6FD0(a2, 5);
    if (v4)
    {
      goto LABEL_2;
    }

    v9 = v7 + 1;
    v4 = sub_2393C5F70(a2, v9);
    if (v4)
    {
      goto LABEL_2;
    }

    v14 = 0uLL;
    v10 = sub_2393C6FD0(a2, 6);
    if (v10 || (v10 = sub_2393C60CC(a2, &v14), v10))
    {
      v5 = v10 & 0xFFFFFFFF00000000;
      v12 = v10;
LABEL_37:
      LODWORD(v4) = v12;
      return v5 | v4;
    }

    if (*(&v14 + 1) != 16)
    {
      v5 = 0x2FD00000000;
      goto LABEL_37;
    }

    *(v9 + 2) = *v14;
    v11 = v9 + 18;
    v13[0] = v11;
    v13[1] = 16;
    v4 = sub_2393F3570(&v14, v13);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6A98(a2, v15);
    if (v4)
    {
      goto LABEL_2;
    }

    v7 = (v11 + 22);
    v8 -= 48;
  }

  while (v8);
  v4 = sub_2393C6A98(a2, v16);
  if (v4 || (v4 = sub_2393C6FD0(a2, 7), v4) || (v4 = sub_2393C5F70(a2, (a1 + 154)), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v4 = sub_2393C6A98(a2, v17);
LABEL_2:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

double sub_2394B670C(uint64_t a1)
{
  *(a1 + 26) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 18) = -1;
  return result;
}

unint64_t sub_2394B6738(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v38 = 0;
  v39 = 0;
  v34 = &unk_284BBCCD0;
  v37[0] = &unk_284BBCD38;
  v37[1] = 0;
  v4 = sub_2394B6D28(&v34, v37, a2);
  v5 = v4;
  if (v4 && v4 != 216)
  {
    goto LABEL_12;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = &unk_284BBC810;
  v31 = &unk_284BBC878;
  v32 = 0;
  v33[0] = v38;
  *&v33[2] = 0;
  *&v33[10] = 0xFFFF;
  v33[14] = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = &unk_284BBC810;
  v19 = &unk_284BBC878;
  v20 = 0;
  v21[0] = 0;
  *&v21[2] = 0;
  *&v21[10] = 0xFFFF;
  v21[14] = 0;
  if (v39)
  {
    v6 = 0;
    LODWORD(v5) = 216;
    while (1)
    {
      if (sub_2394B6EC4(&v22, &v31, a2))
      {
LABEL_8:
        v7 = 0xE100000000;
        return v5 | v7;
      }

      if (v33[0] == *(a1 + 152))
      {
        break;
      }

      v15 = v27;
      v16 = v28;
      v17 = v29;
      v18 = v30;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = v26;
      v20 = v32;
      *v21 = *v33;
      *&v21[7] = *&v33[7];
      v33[0] = v33[14];
      if (++v6 >= v39)
      {
        goto LABEL_8;
      }
    }

    if (v6)
    {
      v21[14] = *(a1 + 166);
      v5 = sub_2394AFA10(&v10, a2);
      if (v5)
      {
LABEL_12:
        v7 = v5 & 0xFFFFFFFF00000000;
        return v5 | v7;
      }
    }

    else
    {
      v38 = *(a1 + 166);
    }

    if (v39)
    {
      --v39;
      v9 = sub_2394B5B98(&v34, v37, a2);
      LODWORD(v5) = v9;
      v7 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0xD900000000;
      LODWORD(v5) = 172;
    }
  }

  else
  {
    v7 = 0xE100000000;
    LODWORD(v5) = 216;
  }

  return v5 | v7;
}

unint64_t sub_2394B6AA8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 56));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 58));
      if (!result)
      {
        return sub_2393C8DE0(a2, v5);
      }
    }
  }

  return result;
}

unint64_t sub_2394B6B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x3D00000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 56));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 58));
            if (!v4)
            {
              v4 = sub_2393C6A98(a2, v7);
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B6BF4(uint64_t result)
{
  *(result + 56) = 0;
  *(result + 58) = 0;
  return result;
}

uint64_t sub_2394B6C00(uint64_t a1, uint64_t a2)
{
  *a2 = *"g/gfl";
  *(a2 + 16) = *&algn_2395D72E4[10];
  *(a2 + 32) = 0;
  return 0;
}

uint64_t sub_2394B6C48(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t sub_2394B6C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x560000002FLL;
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = (*(*a2 + 16))(a2, v5);
  if (!result)
  {
    return (*(*a3 + 32))(a3, v5);
  }

  return result;
}

unint64_t sub_2394B6D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x3E0000002FLL;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v6 = (*(*a2 + 16))(a2, v13);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    (*(*a2 + 40))(a2);
    v12 = 32;
    v10 = (*(*a3 + 16))(a3, v13, a1 + 8, &v12);
    if (v10 == 160)
    {
      v8 = 0x4B00000000;
      LODWORD(v10) = 216;
    }

    else
    {
      if (!v10)
      {
        sub_2393C5AAC(v11);
        sub_2393C5ADC(v11, a1 + 8, v12);
        v10 = (*(*a2 + 32))(a2, v11);
      }

      v8 = v10 & 0xFFFFFFFF00000000;
    }

    v7 = v10;
  }

  return v7 | v8;
}

unint64_t sub_2394B6EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x3E0000002FLL;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v6 = (*(*a2 + 16))(a2, v13);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    (*(*a2 + 40))(a2);
    v12 = 128;
    v10 = (*(*a3 + 16))(a3, v13, a1 + 8, &v12);
    if (v10 == 160)
    {
      v8 = 0x4B00000000;
      LODWORD(v10) = 216;
    }

    else
    {
      if (!v10)
      {
        sub_2393C5AAC(v11);
        sub_2393C5ADC(v11, a1 + 8, v12);
        v10 = (*(*a2 + 32))(a2, v11);
      }

      v8 = v10 & 0xFFFFFFFF00000000;
    }

    v7 = v10;
  }

  return v7 | v8;
}

uint64_t sub_2394B7060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0x2D0000002FLL;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = (*(*a2 + 16))(a2, v9);
  if (!result)
  {
    sub_2393C7B90(v8);
    v7 = sub_2393C7BB8(v8, a1 + 8, 0x80uLL);
    result = (*(*a2 + 24))(a2, v8, v7);
    if (!result)
    {
      return (*(*a3 + 24))(a3, v9, a1 + 8, v8[22]);
    }
  }

  return result;
}

void sub_2394B723C(uint64_t a1, const char *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  sub_2393D895C(a3, &v10, &v9 + 1, &v9, &v8 + 1, &v8, &v7);
  snprintf(__str, 0x1AuLL, "%04u-%02u-%02uT%02u:%02u:%02u", v10, HIBYTE(v9), v9, HIBYTE(v8), v8, v7);
  v4 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = "(null)";
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2080;
    v14 = __str;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%s%s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = "(null)";
    }

    sub_2393D5320(23, 2, "%s%s", v6, __str);
  }
}

unint64_t sub_2394B73A8(uint64_t *a1, int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 18;
  v10 = 0;
  v3 = *a1;
  v12[0] = *"g/lkgt";
  v12[1] = *&algn_2395D731F[9];
  v13 = 0;
  v4 = (*(*v3 + 16))(v3, v12, v14, &v11);
  v5 = v4;
  if (v4 || (sub_2393C5AAC(v12), sub_2393C5ADC(v12, v14, v11), v4 = sub_2393C7114(v12, 21, 256), v5 = v4, v4))
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = 0;
    v8 = sub_2393C6A2C(v12, &v9);
    if (v8 || (v8 = sub_2393C6FD0(v12, 0), v8) || (v8 = sub_2393C5FC8(v12, &v10), v8))
    {
      v6 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = 0;
      LODWORD(v8) = 0;
      *a2 = v10;
    }

    v5 = v8;
  }

  return v5 | v6;
}

unint64_t sub_2394B74E8(uint64_t *a1, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v9);
  sub_2393C7BB8(v9, v13, 0x12uLL);
  v8 = 0;
  v4 = sub_2393C8CE0(v9, 0x100uLL, 21, &v8);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C81D4(v9, 0, a2);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8DE0(v9, v8);
  if (v4)
  {
    goto LABEL_4;
  }

  if (HIWORD(v10))
  {
    v5 = 0x5200000000;
    LODWORD(v4) = 25;
    return v4 | v5;
  }

  v7 = *a1;
  v11[0] = *"g/lkgt";
  v11[1] = *&algn_2395D731F[9];
  v12 = 0;
  v4 = (*(*v7 + 24))(v7, v11, v13, v10);
  if (v4)
  {
LABEL_4:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  return v4 | v5;
}

unint64_t sub_2394B7620(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = sub_239476450(a1, a2);
  v4 = (*(*v3 + 48))(v3, &v16);
  if (v4)
  {
LABEL_10:
    v6 = HIDWORD(v4);
    if (!v4)
    {
      return v4 | (v6 << 32);
    }

    goto LABEL_11;
  }

  v5 = sub_2394B73A8(a1, &v15);
  v6 = HIDWORD(v5);
  if (!v5)
  {
    v9 = v15;
    sub_2394B723C(v5, "Last Known Good Time: ", v15);
    if (v9 >= v16)
    {
      LODWORD(v4) = 0;
      *(a1 + 8) = 1;
      *(a1 + 12) = v9;
      return v4 | (v6 << 32);
    }

    goto LABEL_9;
  }

  LODWORD(v4) = v5;
  if (v5 == 160)
  {
    v7 = sub_2393D9044(0x17u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Last Known Good Time: [unknown]", buf, 2u);
    }

    v8 = sub_2393D5398(2u);
    if (v8)
    {
      sub_2393D5320(23, 2, "Last Known Good Time: [unknown]");
    }

LABEL_9:
    sub_2394B723C(v8, "Setting Last Known Good Time to firmware build time ", v16);
    *(a1 + 8) = 1;
    v10 = v16;
    *(a1 + 12) = v16;
    v4 = sub_2394B74E8(a1, v10);
    goto LABEL_10;
  }

LABEL_11:
  v11 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_2393C9138();
    *buf = 136315138;
    v18 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to init Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v13 = sub_2393C9138();
    sub_2393D5320(23, 1, "Failed to init Last Known Good Time: %s", v13);
  }

  return v4 | (v6 << 32);
}

unint64_t sub_2394B7858(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 != 1)
  {
    v16 = 134;
    LODWORD(v15) = 3;
    goto LABEL_11;
  }

  v7 = a2;
  v8 = sub_2393B50CC(v4, a2);
  sub_2394B723C(v8, "Last Known Good Time: ", *v8);
  v9 = v7;
  sub_2394B723C(v10, "New proposed Last Known Good Time: ", v7);
  v13 = sub_239476450(v11, v12);
  v14 = (*(*v13 + 48))(v13, &v21);
  v15 = v14;
  if (!v14)
  {
    if (v21 <= v7)
    {
      if (v7 >= a3)
      {
        v14 = sub_2394B74E8(a1, v7);
        v15 = v14;
        if (!v14)
        {
          *(a1 + 8) = 1;
          *(a1 + 12) = v7;
        }

        goto LABEL_3;
      }

      v16 = 143;
    }

    else
    {
      v16 = 141;
    }

    LODWORD(v15) = 47;
    goto LABEL_11;
  }

LABEL_3:
  v16 = HIDWORD(v15);
  if (!v15)
  {
    sub_2394B723C(v14, "Updating Last Known Good Time to ", v9);
    return v15 | (v16 << 32);
  }

LABEL_11:
  v17 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = sub_2393C9138();
    *buf = 136315138;
    v23 = v18;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to update Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v19 = sub_2393C9138();
    sub_2393D5320(23, 1, "Failed to update Last Known Good Time: %s", v19);
  }

  return v15 | (v16 << 32);
}

uint64_t sub_2394B7A64(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8) != 1)
  {
    return 0xAD00000003;
  }

  v3 = a2;
  v5 = sub_2393B50CC((a1 + 8), a2);
  sub_2394B723C(v5, "Last Known Good Time: ", *v5);
  sub_2394B723C(v6, "New proposed Last Known Good Time: ", v3);
  v8 = sub_2393B50CC(v2, v7);
  if (*v8 >= v3)
  {
    v10 = sub_2393D9044(0x17u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Retaining current Last Known Good Time", v11, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(23, 2, "Retaining current Last Known Good Time");
    }

    return 0;
  }

  else
  {
    sub_2394B723C(v8, "Updating pending Last Known Good Time to ", v3);
    result = 0;
    *(a1 + 8) = 1;
    *(a1 + 12) = v3;
  }

  return result;
}

unint64_t sub_2394B7B8C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = sub_2393B50CC((a1 + 8), a2);
    sub_2394B723C(v4, "Committing Last Known Good Time to storage: ", *v4);
    v6 = sub_2393B50CC(v2, v5);
    v7 = sub_2394B74E8(a1, *v6);
    v8 = v7;
    v9 = HIDWORD(v7);
    if (!v7)
    {
      return v8 | (v9 << 32);
    }
  }

  else
  {
    v9 = 192;
    v8 = 3;
  }

  v10 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to commit Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v11 = sub_2393C9138();
    sub_2393D5320(23, 1, "Failed to commit Last Known Good Time: %s", v11);
  }

  return v8 | (v9 << 32);
}

uint64_t sub_2394B7CF8(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  if (*(a1 + 8) != 1)
  {
    v7 = 207;
    LODWORD(v6) = 3;
LABEL_5:
    v8 = sub_2393D9044(0x17u);
    v6 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315138;
      v16 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Clearing Last Known Good Time; failed to load a previous value from persistence: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v10 = sub_2393C9138();
      sub_2393D5320(23, 1, "Clearing Last Known Good Time; failed to load a previous value from persistence: %s", v10);
    }

    *v2 = 0;
    return v6 | (v7 << 32);
  }

  v4 = sub_2393B50CC((a1 + 8), a2);
  sub_2394B723C(v4, "Pending Last Known Good Time: ", *v4);
  v5 = sub_2394B73A8(a1, &v14);
  LODWORD(v6) = v5;
  v7 = HIDWORD(v5);
  if (v5)
  {
    goto LABEL_5;
  }

  v12 = v14;
  sub_2394B723C(v5, "Previous Last Known Good Time: ", v14);
  *(a1 + 8) = 1;
  *(a1 + 12) = v12;
  v13 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Reverted Last Known Good Time to previous value", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(23, 2, "Reverted Last Known Good Time to previous value");
  }

  v6 = 0;
  return v6 | (v7 << 32);
}

uint64_t sub_2394B7EEC(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    return (*(a1 + 104) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394B7F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if ((a2 - 1) > 0xFDu || v4 == 0)
  {
    return 0;
  }

  if (*(a1 + 16) == a2)
  {
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        if (*(a1 + 40))
        {
          return 1;
        }

        if (!*(a1 + 56))
        {
          return sub_2394B7FB4(v4, a2, a3);
        }
      }

      else if (!a3)
      {
        if (!*(a1 + 24))
        {
          return sub_2394B7FB4(v4, a2, a3);
        }

        return 1;
      }

      return 0;
    }

    if (*(a1 + 56))
    {
      return 1;
    }
  }

  return sub_2394B7FB4(v4, a2, a3);
}

BOOL sub_2394B7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = sub_2394B9728(a2, a3, v8);
  if (!v8[0])
  {
    return 0;
  }

  v6 = 400;
  return (*(*a1 + 16))(a1, v8, v7, &v6, v4) == 0;
}

BOOL sub_2394B806C(uint64_t a1, uint64_t a2)
{
  result = sub_2394B7F3C(a1, a2, 0);
  if (result)
  {

    return sub_2394B7F3C(a1, a2, 2);
  }

  return result;
}

uint64_t sub_2394B80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = 0x11100000000;
    goto LABEL_7;
  }

  v5 = a2;
  if ((a2 - 1) > 0xFDu)
  {
    v7 = 0x11200000000;
    v8 = 113;
    return v7 | v8;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v7 = 0x11300000000;
    v8 = 47;
    return v7 | v8;
  }

  if ((*(a1 + 104) & 7) != 0)
  {
    v7 = 0x11700000000;
LABEL_7:
    v8 = 3;
    return v7 | v8;
  }

  if (sub_2394B7FB4(v4, a2, 0))
  {
    v7 = 0x11800000000;
    goto LABEL_7;
  }

  v10 = *(a3 + 8);
  v11 = sub_2393D52C4(v10);
  if (v11)
  {
    v12 = v11;
    memcpy(v11, *a3, *(a3 + 8));
    v8 = 0;
    v7 = 0;
    *(a1 + 24) = v12;
    *(a1 + 32) = v10;
    *(a1 + 16) = v5;
    *(a1 + 104) |= 2u;
  }

  else
  {
    v7 = 0x11B00000000;
    v8 = 11;
  }

  return v7 | v8;
}

uint64_t sub_2394B8200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = 0x12900000000;
    goto LABEL_8;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x12A00000000;
    goto LABEL_10;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v9 = 0x12B00000000;
LABEL_13:
    v10 = 47;
    return v9 | v10;
  }

  if (*(a4 + 8) > 0x190uLL)
  {
    v9 = 0x12C00000000;
    goto LABEL_13;
  }

  if ((*(a1 + 104) & 5) == 0)
  {
    if ((*(a1 + 104) & 2) == 0)
    {
      v9 = 0x13200000000;
      goto LABEL_8;
    }

    if (*(a1 + 16) == a2)
    {
      if (sub_2394B7FB4(v5, a2, 2))
      {
        v9 = 0x13800000000;
        goto LABEL_8;
      }

      if (sub_2394B7FB4(*(a1 + 8), a2, 1))
      {
        v9 = 0x13900000000;
        goto LABEL_8;
      }

      v12 = *(a3 + 8);
      v13 = sub_2393D52C4(v12);
      if (v13)
      {
        v14 = v13;
        memcpy(v13, *a3, *(a3 + 8));
        v15 = *(a4 + 8);
        if (!v15)
        {
          v17 = 0;
          goto LABEL_29;
        }

        v16 = sub_2393D52C4(*(a4 + 8));
        if (v16)
        {
          v17 = v16;
          memcpy(v16, *a4, *(a4 + 8));
LABEL_29:
          v10 = 0;
          v9 = 0;
          *(a1 + 56) = v14;
          *(a1 + 64) = v12;
          *(a1 + 40) = v17;
          *(a1 + 48) = v15;
          *(a1 + 104) |= 1u;
          return v9 | v10;
        }

        j__free(v14);
        v9 = 0x14200000000;
      }

      else
      {
        v9 = 0x13C00000000;
      }

      v10 = 11;
      return v9 | v10;
    }

    v9 = 0x13500000000;
LABEL_10:
    v10 = 113;
    return v9 | v10;
  }

  v9 = 0x12F00000000;
LABEL_8:
  v10 = 3;
  return v9 | v10;
}

uint64_t sub_2394B83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = 0x15100000000;
    goto LABEL_8;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x15200000000;
    v10 = 113;
    return v9 | v10;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v9 = 0x15300000000;
LABEL_12:
    v10 = 47;
    return v9 | v10;
  }

  if (*(a4 + 8) > 0x190uLL)
  {
    v9 = 0x15400000000;
    goto LABEL_12;
  }

  if ((*(a1 + 104) & 3) == 0)
  {
    if ((*(a1 + 104) & 4) != 0)
    {
      v9 = 0x15B00000000;
      goto LABEL_8;
    }

    if (!sub_2394B7FB4(v5, a2, 0))
    {
      v9 = 0x15E00000000;
      goto LABEL_8;
    }

    if (!sub_2394B7FB4(*(a1 + 8), a2, 2))
    {
      v9 = 0x16100000000;
      goto LABEL_8;
    }

    v12 = *(a3 + 8);
    v13 = sub_2393D52C4(v12);
    if (v13)
    {
      v14 = v13;
      memcpy(v13, *a3, *(a3 + 8));
      v15 = *(a4 + 8);
      if (!v15)
      {
        v17 = 0;
        goto LABEL_26;
      }

      v16 = sub_2393D52C4(*(a4 + 8));
      if (v16)
      {
        v17 = v16;
        memcpy(v16, *a4, *(a4 + 8));
LABEL_26:
        v10 = 0;
        v9 = 0;
        *(a1 + 56) = v14;
        *(a1 + 64) = v12;
        *(a1 + 40) = v17;
        *(a1 + 48) = v15;
        *(a1 + 16) = a2;
        *(a1 + 104) |= 4u;
        return v9 | v10;
      }

      j__free(v14);
      v9 = 0x16D00000000;
    }

    else
    {
      v9 = 0x16700000000;
    }

    v10 = 11;
    return v9 | v10;
  }

  v9 = 0x15800000000;
LABEL_8:
  v10 = 3;
  return v9 | v10;
}

uint64_t sub_2394B85B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((a2 - 1) > 0xFDu)
    {
      v3 = 0x18000000000;
      v4 = 113;
    }

    else
    {
      v2 = sub_2394B806C(a1, a2);
      if (v2)
      {
        v3 = 0;
      }

      else
      {
        v3 = 0x18200000000;
      }

      if (v2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }
  }

  else
  {
    v3 = 0x17F00000000;
    v4 = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394B8634(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = sub_2394B85B4(a1, a2);
  if (v8)
  {
    goto LABEL_2;
  }

  if (a4)
  {
    if (a4 >= 0x191)
    {
      v9 = 0x18A00000000;
      LODWORD(v8) = 47;
      return v8 | v9;
    }

    if (*(a1 + 16) == a2)
    {
      sub_2393C56C0((a1 + 72), a4);
      v11 = *(a1 + 72);
      if (!v11)
      {
        v9 = 0x19E00000000;
        LODWORD(v8) = 11;
        return v8 | v9;
      }

      *(a1 + 80) = a4;
      memcpy(v11, a3, a4);
      goto LABEL_12;
    }

    v13 = *(a1 + 8);
    v14 = a2;
    v15 = a3;
    v16 = a4;
LABEL_16:
    v8 = sub_2394B8750(v13, v14, 1, v15, v16);
    goto LABEL_2;
  }

  if (*(a1 + 16) != a2)
  {
    v13 = *(a1 + 8);
    v14 = a2;
    v15 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  *(a1 + 80) = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    j__free(v12);
    *(a1 + 72) = 0;
  }

LABEL_12:
  v8 = 0;
  *(a1 + 104) |= 0x10u;
LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394B8750(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    sub_239296DA0(v11, "f/%x/vvsc", a2);
  }

  else
  {
    sub_239296DA0(v11, "f/%x/vvs", a2);
  }

  v13[0] = v11[0];
  v13[1] = v11[1];
  v14 = v12;
  if (LOBYTE(v11[0]))
  {
    if (a5)
    {
      v8 = (*(*a1 + 24))(a1, v13, a4, a5);
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = (*(*a1 + 32))(a1, v13);
      if (v8)
      {
        v9 = v8 & 0xFFFFFFFF00000000;
        if (v8 == 160)
        {
          LODWORD(v8) = 0;
          v9 = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0xA900000000;
    LODWORD(v8) = 172;
  }

  return v9 | v8;
}

unint64_t sub_2394B88A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2394B85B4(a1, a2);
  if (v8)
  {
    goto LABEL_2;
  }

  if (a4 == 85)
  {
    if (*(a1 + 16) == a2)
    {
      sub_2393C56C0((a1 + 88), 0x55uLL);
      v12 = *(a1 + 88);
      if (!v12)
      {
        v9 = 0x1C600000000;
        LODWORD(v8) = 11;
        return v8 | v9;
      }

      v8 = 0;
      *(a1 + 96) = 85;
      v13 = *(a3 + 16);
      *v12 = *a3;
      *(v12 + 16) = v13;
      v14 = *(a3 + 32);
      v15 = *(a3 + 48);
      v16 = *(a3 + 64);
      *(v12 + 77) = *(a3 + 77);
      *(v12 + 48) = v15;
      *(v12 + 64) = v16;
      *(v12 + 32) = v14;
      goto LABEL_13;
    }

    v17 = *(a1 + 8);
    v18 = a2;
    v19 = a3;
    v20 = 85;
LABEL_17:
    v8 = sub_2394B8750(v17, v18, 0, v19, v20);
    goto LABEL_2;
  }

  if (a4)
  {
    v9 = 0x1B100000000;
    LODWORD(v8) = 47;
    return v8 | v9;
  }

  if (*(a1 + 16) != a2)
  {
    v17 = *(a1 + 8);
    v18 = a2;
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  *(a1 + 96) = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    j__free(v11);
    *(a1 + 88) = 0;
  }

  v8 = 0;
LABEL_13:
  *(a1 + 104) |= 8u;
LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394B89E4(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    if ((a2 - 1) > 0xFD)
    {
      v6 = 0x1D700000000;
      v7 = 113;
    }

    else
    {
      v26[6] = v2;
      v26[7] = v3;
      if (*(a1 + 16) == a2)
      {
        v5 = *(a1 + 56);
        if (!v5 || (*(a1 + 104) & 5) == 0)
        {
          v6 = 0x1D900000000;
          goto LABEL_13;
        }

        if (*(a1 + 24) && (*(a1 + 104) & 6) == 6)
        {
          v6 = 0x1DE00000000;
LABEL_13:
          v7 = 3;
          return v6 | v7;
        }

        sub_238DB6950(v26, v5, *(a1 + 64));
        v9 = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 2, v26);
        v11 = v10;
        sub_238DB6950(v25, *(a1 + 40), *(a1 + 48));
        v24[0] = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 1, v25);
        v24[1] = v12;
        v22 = 0;
        v23 = 0;
        if (*(a1 + 8))
        {
          v13 = *(a1 + 24);
          if (v13)
          {
            if ((*(a1 + 104) & 2) != 0)
            {
              sub_238DB6950(v21, v13, *(a1 + 32));
              v22 = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 0, v21);
              v23 = v14;
            }
          }
        }

        v21[0] = sub_2394B8D7C(a1, *(a1 + 16));
        v21[1] = v15;
        *&v20 = v9;
        *(&v20 + 1) = v11;
        v16 = &v20;
        v17 = v24;
        if (v9)
        {
          v17 = &v20;
        }

        v20 = *v17;
        v18 = &v22;
        if (v20)
        {
          v18 = &v20;
        }

        v20 = *v18;
        if (!v20)
        {
          v16 = v21;
        }

        v20 = *v16;
        if (v20)
        {
          v19 = *(a1 + 104);
          if (v19)
          {
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 2);
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 1);
            sub_2394B8750(*(a1 + 8), *(a1 + 16), 1, 0, 0);
            sub_2394B8750(*(a1 + 8), *(a1 + 16), 0, 0, 0);
            v19 = *(a1 + 104);
          }

          if ((v19 & 2) != 0)
          {
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 0);
          }

          v6 = v20 & 0xFFFFFFFF00000000;
          v7 = v20;
        }

        else
        {
          sub_238DCC8D8(a1);
          v7 = 0;
          v6 = 0;
        }
      }

      else
      {
        v6 = 0x1D700000000;
        v7 = 113;
      }
    }
  }

  else
  {
    v6 = 0x1D600000000;
    v7 = 3;
  }

  return v6 | v7;
}

unint64_t sub_2394B8C44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v7.n128_f64[0] = sub_2394B9728(a2, a3, v11);
  if (v11[0])
  {
    if (v5 != 1 || a4[1])
    {
      v8 = (*(*a1 + 24))(a1, v11, *a4, a4[1], v7);
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = (*(*a1 + 32))(a1, v11, v7.n128_f64[0]);
      if (v8)
      {
        v9 = v8 & 0xFFFFFFFF00000000;
        if (v8 == 160)
        {
          LODWORD(v8) = 0;
          v9 = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0x7B00000000;
    LODWORD(v8) = 172;
  }

  return v9 | v8;
}

uint64_t sub_2394B8D7C(uint64_t a1, int a2)
{
  if (!*(a1 + 8))
  {
    v9 = 0x25100000003;
LABEL_14:
    *&v15 = v9;
    return v15;
  }

  v3 = *(a1 + 104);
  if ((v3 & 0x18) == 0)
  {
    return 0;
  }

  if ((a2 - 1) > 0xFD || *(a1 + 16) != a2)
  {
    v9 = 0x25700000071;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  v13 = 0;
  v14 = 0;
  if ((v3 & 0x10) != 0)
  {
    sub_238DB6950(&v11, *(a1 + 72), *(a1 + 80));
    v5 = sub_2394B8750(*(a1 + 8), *(a1 + 16), 1, v11, v12);
    v4 = v6;
    v3 = *(a1 + 104);
  }

  if ((v3 & 8) != 0)
  {
    sub_238DB6950(&v11, *(a1 + 88), *(a1 + 96));
    v13 = sub_2394B8750(*(a1 + 8), *(a1 + 16), 0, v11, v12);
    v14 = v7;
  }

  *&v15 = v5;
  *(&v15 + 1) = v4;
  v8 = &v15;
  if (!v5)
  {
    v8 = &v13;
  }

  return *v8;
}

uint64_t sub_2394B8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sub_2394B9728(a2, a3, v6);
  if (v6[0])
  {
    return (*(*a1 + 32))(a1, v6, v4);
  }

  else
  {
    return 0x91000000ACLL;
  }
}

BOOL sub_2394B8F3C(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 1) > 0xFDu)
  {
    return 0;
  }

  else
  {
    v4 = sub_2394B7FB4(a1[1], a2, 0);
    v5 = 1;
    v6 = sub_2394B7FB4(a1[1], a2, 1);
    v7 = sub_2394B7FB4(a1[1], a2, 2);
    if (!a1[3] && !a1[5])
    {
      v5 = a1[7] != 0;
    }

    return v4 || v6 || v7 || v5;
  }
}

uint64_t sub_2394B8FF0(uint64_t *a1, uint64_t a2)
{
  if (!a1[1])
  {
    v35 = 0x22C00000003;
LABEL_42:
    *&v45 = v35;
    return v45;
  }

  if ((a2 - 1) >= 0xFEu)
  {
    v35 = 0x22D00000071;
    goto LABEL_42;
  }

  if (!sub_2394B8F3C(a1, a2))
  {
    v35 = 0x23000000071;
    goto LABEL_42;
  }

  sub_238DCC8D8(a1);
  v4 = sub_2394B8E90(a1[1], a2, 2);
  v6 = v5;
  v7 = sub_2394B8E90(a1[1], a2, 1);
  v9 = v8;
  v10 = sub_2394B8E90(a1[1], a2, 0);
  v12 = v11;
  v13 = sub_2394B8750(a1[1], a2, 1, 0, 0);
  v15 = v14;
  v16 = sub_2394B8750(a1[1], a2, 0, 0, 0);
  v18 = HIDWORD(v7);
  if (v7 == 160)
  {
    v19 = 0;
  }

  else
  {
    v19 = v7;
  }

  if (v7 == 160)
  {
    LODWORD(v18) = 0;
    v20 = 0;
  }

  else
  {
    v20 = v9;
  }

  v21 = HIDWORD(v10);
  if (v10 == 160)
  {
    v22 = 0;
  }

  else
  {
    v22 = v10;
  }

  if (v10 == 160)
  {
    LODWORD(v21) = 0;
    v23 = 0;
  }

  else
  {
    v23 = v12;
  }

  v24 = HIDWORD(v13);
  if (v13 == 160)
  {
    v25 = 0;
  }

  else
  {
    v25 = v13;
  }

  if (v13 == 160)
  {
    LODWORD(v24) = 0;
    v26 = 0;
  }

  else
  {
    v26 = v15;
  }

  v27 = HIDWORD(v16);
  if (v16 == 160)
  {
    v17 = 0;
    LODWORD(v27) = 0;
    LODWORD(v16) = 0;
  }

  if (v4 == 160)
  {
    v28 = 0;
  }

  else
  {
    v28 = v6;
  }

  v43[0] = v19;
  v43[1] = v18;
  v41[0] = v22;
  v41[1] = v21;
  v42 = v23;
  v39[0] = v25;
  v39[1] = v24;
  v40 = v26;
  v37[0] = v16;
  v37[1] = v27;
  v38 = v17;
  if (v4 == 160)
  {
    v29 = 0;
  }

  else
  {
    v29 = v4;
  }

  v44 = v20;
  *&v45 = v29;
  *(&v45 + 1) = v28;
  v30 = v29 == 0;
  v31 = &v45;
  v32 = v43;
  if (!v30)
  {
    v32 = &v45;
  }

  v45 = *v32;
  v33 = v41;
  if (v45)
  {
    v33 = &v45;
  }

  v45 = *v33;
  v34 = v39;
  if (v45)
  {
    v34 = &v45;
  }

  v45 = *v34;
  if (!v45)
  {
    v31 = v37;
  }

  return *v31;
}

uint64_t sub_2394B9204(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a1 + 16) != a2)
  {
    v9 = 0x27700000000;
    v10 = 216;
    return v10 | v9 & 0x3FF00000000;
  }

  v23 = v4;
  v24 = v5;
  if (a3 == 2)
  {
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 64);
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        v9 = 0x29300000000;
        v10 = 47;
        return v10 | v9 & 0x3FF00000000;
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = *(a1 + 32);
        goto LABEL_12;
      }

LABEL_14:
      v9 = 0x29600000000;
      v10 = 216;
      return v10 | v9 & 0x3FF00000000;
    }

    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 48);
  }

LABEL_12:
  sub_238DB6950(&__src, v7, v8);
  v11 = __len;
  if (*(a4 + 8) >= __len)
  {
    memmove(*a4, __src, __len);
    sub_238DB8498(a4, v11, v12, v13, v14, v15, v16, v17, __src, __len, v21, v22, v23);
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0x18300000000;
    v10 = 25;
  }

  return v10 | v9 & 0x3FF00000000;
}

unint64_t sub_2394B9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 8))
  {
    v9 = 0x29C00000000;
    LODWORD(v8) = 3;
    return v9 | v8;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x29D00000000;
    LODWORD(v8) = 113;
    return v9 | v8;
  }

  v6 = a3;
  v8 = sub_2394B9204(a1, a2, a3, a4);
  if (v8 != 216)
  {
LABEL_20:
    v9 = v8 & 0xFFFFFFFF00000000;
    return v9 | v8;
  }

  if (v6 != 1 || !*(a1 + 56))
  {
    v10 = *(a1 + 8);
    v11 = sub_2394B9728(a2, v6, &v22 + 7);
    if (HIBYTE(v22))
    {
      v12 = *a4;
      WORD2(v22) = a4[1];
      v13 = (*(*v10 + 16))(v10, &v22 + 7, v12, &v22 + 4, v11);
      if (v6 == 1 && v13 == 160)
      {
        sub_238DB8498(a4, 0, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26);
        v8 = 0x64000000D8;
      }

      else
      {
        if (v13 == 160)
        {
          LODWORD(v13) = 216;
          LODWORD(v20) = 111;
        }

        else
        {
          v20 = HIDWORD(v13);
          if (!v13)
          {
            sub_238DB8498(a4, WORD2(v22), v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26);
            LODWORD(v13) = 0;
          }
        }

        v8 = v13 | (v20 << 32);
      }
    }

    else
    {
      v8 = 0x59000000ACLL;
    }

    goto LABEL_20;
  }

  v9 = 0x2AD00000000;
  LODWORD(v8) = 216;
  return v9 | v8;
}

unint64_t sub_2394B94DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    if ((a2 - 1) <= 0xFD)
    {
      if (a3 == 1)
      {
        if ((*(a1 + 104) & 0x10) != 0 && *(a1 + 16) == a2)
        {
          v6 = *(a1 + 72);
          v7 = *(a1 + 80);
LABEL_13:
          sub_238DB6950(__len, v6, v7);
          v10 = __len[1];
          if (*(a4 + 8) >= __len[1])
          {
            v11 = __len[0];
            v12 = *a4;
LABEL_27:
            memmove(v12, v11, v10);
            v20 = a4;
            v21 = v10;
            goto LABEL_28;
          }

LABEL_24:
          v22 = 0x18300000000;
          LODWORD(v13) = 25;
          goto LABEL_29;
        }

        sub_239296DA0(__len, "f/%x/vvsc", a2);
      }

      else
      {
        if (a3)
        {
          goto LABEL_22;
        }

        if ((*(a1 + 104) & 8) != 0 && *(a1 + 16) == a2)
        {
          v6 = *(a1 + 88);
          v7 = *(a1 + 96);
          goto LABEL_13;
        }

        sub_239296DA0(__len, "f/%x/vvs", a2);
      }

      v29[0] = *__len;
      v29[1] = v27;
      v30 = v28;
      if (LOBYTE(__len[0]))
      {
        HIWORD(v25) = 400;
        v13 = (*(**(a1 + 8) + 16))(*(a1 + 8), v29, __len, &v25 + 6);
        if (!v13)
        {
          v10 = HIWORD(v25);
          if (*(a4 + 8) >= HIWORD(v25))
          {
            v12 = *a4;
            v11 = __len;
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (v13 == 216 || v13 == 160)
        {
          v20 = a4;
          v21 = 0;
LABEL_28:
          sub_238DB8498(v20, v21, v14, v15, v16, v17, v18, v19, v24, v25, __len[0], __len[1], v27);
          LODWORD(v13) = 0;
          v22 = 0;
          goto LABEL_29;
        }

        v22 = v13;
LABEL_29:
        v8 = v22 & 0xFFFFFFFF00000000;
        v9 = v13;
        return v8 | v9;
      }

LABEL_22:
      v22 = 0x2D200000000;
      LODWORD(v13) = 47;
      goto LABEL_29;
    }

    v8 = 0x2B800000000;
    v9 = 113;
  }

  else
  {
    v8 = 0x2B700000000;
    v9 = 3;
  }

  return v8 | v9;
}

void sub_2394B96F0(uint64_t a1)
{
  sub_238DCC9E4(a1);

  JUMPOUT(0x23EE77B60);
}

double sub_2394B9728@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_239296DA0(a3, "f/%x/i", a1);
    }

    else if (a2 == 2)
    {
      sub_239296DA0(a3, "f/%x/n", a1);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    sub_239296DA0(a3, "f/%x/r", a1);
  }

  return result;
}

const char *sub_2394B9798(int a1)
{
  if (a1 > 303)
  {
    if (a1 > 599)
    {
      if (a1 > 604)
      {
        if (a1 > 700)
        {
          switch(a1)
          {
            case 701:
              return "Some unexpected invalid argument was provided internally to the device attestation procedure (likely malformed input data from candidate device)";
            case 702:
              return "An internal error arose in the device attestation procedure (likely malformed input data from candidate device)";
            case 703:
              return "Reached a critical-but-unimplemented part of the device attestation procedure!";
          }
        }

        else
        {
          switch(a1)
          {
            case 605:
              return "Certification declaration product ID failed to cross-reference with DAC and/or PAI and/or Basic Information cluster";
            case 606:
              return "Certification declaration required a fixed allowed PAA which does not match the final PAA found";
            case 700:
              return "Failed to allocate memory to process attestation verification";
          }
        }

        return "<AttestationVerificationResult does not have a description!>";
      }

      if (a1 <= 601)
      {
        if (a1 == 600)
        {
          return "Certification declaration missing the required key ID in CMS envelope";
        }

        else
        {
          return "Could not find matching trusted verification certificate for the certification declaration's key ID";
        }
      }

      else if (a1 == 602)
      {
        return "Certification declaration signature failed to validate against the verification certificate";
      }

      else if (a1 == 603)
      {
        return "Certification declaration format is invalid";
      }

      else
      {
        return "Certification declaration vendor ID failed to cross-reference with DAC and/or PAI and/or Basic Information cluster";
      }
    }

    if (a1 > 400)
    {
      if (a1 <= 500)
      {
        if (a1 == 401)
        {
          return "Firmware information missing";
        }

        if (a1 == 500)
        {
          return "Attestation signature failed to validate against DAC subject public key";
        }
      }

      else
      {
        switch(a1)
        {
          case 501:
            return "Attestation elements payload is malformed";
          case 502:
            return "Attestation nonce does not match the one from Attestation Request";
          case 503:
            return "Attestation signature format is invalid (likely wrong signature algorithm in certificate)";
        }
      }
    }

    else
    {
      if (a1 <= 305)
      {
        if (a1 == 304)
        {
          return "DAC is invalid in some way according to X.509 backend";
        }

        else
        {
          return "DAC vendor ID mismatch (either between DAC and PAI, or between DAC and Basic Information cluster)";
        }
      }

      switch(a1)
      {
        case 306:
          return "DAC product ID mismatch (either between DAC and PAI, or between DAC and Basic Information cluster)";
        case 307:
          return "DAC authority not found (OBSOLETE: consider using a different error)";
        case 400:
          return "Firmware information mismatch";
      }
    }

    return "<AttestationVerificationResult does not have a description!>";
  }

  if (a1 <= 201)
  {
    if (a1 > 103)
    {
      if (a1 <= 105)
      {
        if (a1 == 104)
        {
          return "PAA is revoked (consider removing from DCL or PAA trust store!)";
        }

        else
        {
          return "PAA format is invalid";
        }
      }

      switch(a1)
      {
        case 106:
          return "PAA argument is invalid in some way according to X.509 backend";
        case 200:
          return "PAI is expired";
        case 201:
          return "PAI signature is invalid";
      }
    }

    else
    {
      if (a1 > 100)
      {
        if (a1 == 101)
        {
          return "PAA not found in DCL and/or local PAA trust store";
        }

        if (a1 == 102)
        {
          return "PAA is expired";
        }

        return "PAA signature is invalid";
      }

      if (!a1)
      {
        return "Success";
      }

      if (a1 == 100)
      {
        return "PAA is untrusted (OBSOLETE: consider using a different error)";
      }
    }

    return "<AttestationVerificationResult does not have a description!>";
  }

  if (a1 <= 206)
  {
    if (a1 <= 203)
    {
      if (a1 == 202)
      {
        return "PAI is revoked";
      }

      else
      {
        return "PAI format is invalid";
      }
    }

    else if (a1 == 204)
    {
      return "PAI argument is invalid in some way according to X.509 backend";
    }

    else if (a1 == 205)
    {
      return "PAI vendor ID mismatch (did not match VID present in PAA)";
    }

    else
    {
      return "PAI authority not found (OBSOLETE: consider using a different error)";
    }
  }

  else
  {
    if (a1 <= 300)
    {
      switch(a1)
      {
        case 207:
          return "PAI is missing/empty from attestation information data";
        case 208:
          return "Both PAI and DAC are revoked";
        case 300:
          return "DAC is expired";
      }

      return "<AttestationVerificationResult does not have a description!>";
    }

    if (a1 == 301)
    {
      return "DAC signature is invalid";
    }

    else if (a1 == 302)
    {
      return "DAC is revoked";
    }

    else
    {
      return "DAC format is invalid";
    }
  }
}

unint64_t sub_2394B9B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v16[15] = *MEMORY[0x277D85DE8];
  sub_2393F7EB0(v16);
  v13 = &v15;
  v14 = 32;
  v9 = sub_2393F7F38(v16);
  if (v9 || (v9 = sub_2393F7FF0(v16, *a3, a3[1]), v9) || (v9 = sub_2393F7FF0(v16, *a4, a4[1]), v9) || (v9 = sub_2393F817C(v16, &v13), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = sub_2393F8B68(a2, v13, v14, a5);
    if (v12)
    {
      LODWORD(v9) = v12;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v12)
    {
      v10 = v12 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = 0;
    }
  }

  sub_2393F7EB8(v16);
  return v10 | v9;
}

uint64_t sub_2394B9C80(uint64_t result)
{
  if (result)
  {
    qword_27DF77518 = result;
  }

  return result;
}

uint64_t sub_2394B9C90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 56);
  sub_2393C56C0(a1, v4);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    memcpy(v5, *(a2 + 48), *(a2 + 56));
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *(a2 + 72);
  sub_2393C56C0((a1 + 16), v6);
  v7 = *(a1 + 16);
  if (v7)
  {
    *(a1 + 24) = v6;
    memcpy(v7, *(a2 + 64), *(a2 + 72));
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 50) = *(a2 + 98);
  v19 = 0uLL;
  v18 = 0uLL;
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 7) = 0;
  sub_2393C5AAC(v15);
  v15[18] = 21;
  if (!sub_2394A5BF0(a2, &v19, &v18, &v17, v16, v12))
  {
    v8 = *(&v19 + 1);
    v9 = sub_2393D52C4(*(&v19 + 1));
    v10 = v9;
    if (v9)
    {
      memcpy(v9, v19, *(&v19 + 1));
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 32) = v10;
    *(a1 + 40) = v8;
  }

  return a1;
}

void sub_2394B9DE8()
{
  v0 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v2 = "src/credentials/attestation_verifier/DeviceAttestationVerifier.cpp";
    v3 = 1024;
    v4 = 78;
    v5 = 2080;
    v6 = "false";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "src/credentials/attestation_verifier/DeviceAttestationVerifier.cpp", 78, "false");
  }

  abort();
}

uint64_t *sub_2394B9EBC()
{
  result = qword_27DF7C0C0;
  if (!qword_27DF7C0C0)
  {
    result = sub_2394BD344();
    qword_27DF7C0C0 = result;
  }

  return result;
}

double sub_2394B9EF8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v13 = v2;
    v14 = v3;
    for (i = 1; i != a2; ++i)
    {
      v12 = *(a1 + 16 * i);
      LODWORD(v7) = i;
      if (i >= 1)
      {
        v7 = i & 0x7FFFFFFF;
        v8 = (a1 + 16 * v7);
        while (1)
        {
          v9 = v7 - 1;
          v10 = sub_2394BA084(&v12);
          if (v10 <= sub_2394BA084((a1 + 16 * (v7 - 1))))
          {
            break;
          }

          *v8-- = *(a1 + 16 * --v7);
          if ((v9 + 1) <= 1)
          {
            LODWORD(v7) = 0;
            break;
          }
        }
      }

      result = *&v12;
      *(a1 + 16 * v7) = v12;
    }
  }

  return result;
}

double sub_2394B9FC0(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >= 2)
  {
    v2 = *a1;
    for (i = 1; i != v1; ++i)
    {
      v9 = *(v2 + 16 * i);
      LODWORD(v4) = i;
      if (i >= 1)
      {
        v4 = i & 0x7FFFFFFF;
        v5 = (v2 + 16 * v4);
        while (1)
        {
          v6 = v4 - 1;
          v7 = sub_2394BA084(&v9);
          if (v7 <= sub_2394BA084((v2 + 16 * (v4 - 1))))
          {
            break;
          }

          *v5-- = *(v2 + 16 * --v4);
          if ((v6 + 1) <= 1)
          {
            LODWORD(v4) = 0;
            break;
          }
        }
      }

      result = *&v9;
      *(v2 + 16 * v4) = v9;
    }
  }

  return result;
}

uint64_t sub_2394BA084(_DWORD *a1)
{
  if (!sub_2393CFB10(a1))
  {
    return 2;
  }

  if (sub_2393CFBB4(a1))
  {
    return 7;
  }

  if (!sub_2393D0D58(a1))
  {
    goto LABEL_10;
  }

  if (sub_2393CFB8C(a1))
  {
    return 6;
  }

  if (sub_2393CFBA0(a1))
  {
    return 5;
  }

LABEL_10:
  if (sub_2393CFB8C(a1))
  {
    return 4;
  }

  if (sub_2393CFBA0(a1))
  {
    return 3;
  }

  return 1;
}

uint64_t *sub_2394BA124()
{
  result = qword_27DF7C0C8;
  if (!qword_27DF7C0C8)
  {
    result = sub_2394BD3AC();
    qword_27DF7C0C8 = result;
  }

  return result;
}

unint64_t sub_2394BA160(void *a1)
{
  if (a1[1])
  {
    v1 = 0x1B00000000;
    LODWORD(v2) = 3;
  }

  else
  {
    v2 = (*(**a1 + 16))(*a1);
    if (v2)
    {
      v1 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = sub_2393D52C4(0x20uLL);
      if (v4)
      {
        LODWORD(v2) = 0;
        v1 = 0;
        *v4 = 0u;
        v4[1] = 0u;
        *v4 = 1;
      }

      else
      {
        v1 = 0x1F00000000;
        LODWORD(v2) = 11;
      }

      a1[1] = v4;
    }
  }

  return v1 | v2;
}

void sub_2394BA220(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 8) = 0;
    sub_2394BA25C(*(result + 8), a2);
    *(result + 8) = 0;
  }
}

void sub_2394BA25C(int *a1, uint64_t a2)
{
  if (!*a1)
  {
    sub_239530290();
  }

  v3 = *a1 - 1;
  *a1 = v3;
  if (!v3)
  {

    j__free(a1);
  }
}

uint64_t sub_2394BA294(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x2E00000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 2, &v4);
}

uint64_t sub_2394BA310(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x3500000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 3, &v4);
}

uint64_t sub_2394BA38C(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x3C00000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 1, &v4);
}

uint64_t sub_2394BA408(void *a1)
{
  if (a1[1])
  {
    return (*(**a1 + 72))(*a1);
  }

  else
  {
    return 0x4300000003;
  }
}

uint64_t sub_2394BA464(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 0;
    while (*(*a1 + v2) != 43)
    {
      if (v1 == ++v2)
      {
        v2 = a1[1];
        break;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if (v2 >= v1 - 1)
  {
    return 0;
  }

  else
  {
    sub_238DB6950(v6, *a1 + v2 + 1, v1 + ~v2);
    v3 = sub_2394BA5C8(v6, 0);
    if (v3 >= 0x10000)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2394BA500(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 0;
  if (v2)
  {
    while (*(v1 + v3) != 43)
    {
      if (v2 == ++v3)
      {
        v3 = a1[1];
        break;
      }
    }
  }

  sub_238DB6950(v7, v1, v3);
  v4 = sub_2394BA5C8(v7, 0);
  if (v4 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2394BA568(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BA594(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x100)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BA5C8(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 > 0xA)
  {
    return a2;
  }

  if (v3 >= 2)
  {
    v4 = *a1;
    if (**a1 == 48)
    {
      return a2;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    v4 = *a1;
LABEL_7:
    memcpy(__dst, v4, v3);
    v5 = &__dst[v3];
    goto LABEL_9;
  }

  v5 = __dst;
LABEL_9:
  *v5 = 0;
  v9 = 0;
  v6 = strtoul(__dst, &v9, 10);
  if (v9 > __dst)
  {
    if (*v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == -1;
    }

    if (!v7)
    {
      if (HIDWORD(v6))
      {
        return a2;
      }

      else
      {
        return v6;
      }
    }
  }

  return a2;
}

const void **sub_2394BA6B8(const void **result, _BYTE *__dst)
{
  if (__dst)
  {
    v2 = __dst;
    v3 = result[1];
    if (v3)
    {
      if (v3 >= 0x20)
      {
        v4 = 32;
      }

      else
      {
        v4 = result[1];
      }

      result = memcpy(__dst, *result, v4);
      v2 += v4;
    }

    *v2 = 0;
  }

  return result;
}

uint64_t sub_2394BA70C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393D6044(*a1, a1[1], a2, 50);
  *a3 = result;
  return result;
}

const void **sub_2394BA744(const void **result, _BYTE *__dst)
{
  if (__dst)
  {
    v2 = __dst;
    v3 = result[1];
    if (v3)
    {
      if (v3 >= 0x80)
      {
        v4 = 128;
      }

      else
      {
        v4 = result[1];
      }

      result = memcpy(__dst, *result, v4);
      v2 += v4;
    }

    *v2 = 0;
  }

  return result;
}

unint64_t sub_2394BA7C0(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0xFFFFFFFFLL);
  LODWORD(v2) = v1 & 0x3FFF00;
  if (v1 <= 0x36EE80)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v1 <= 0x36EE80)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 < 0x36EE81) << 32) | v3;
}

uint64_t sub_2394BA810(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x10000)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = v1;
  }

  if (v2)
  {
    return v2 | 0x10000u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394BA844(void *a1)
{
  v2 = 0;
  for (i = &unk_2395D744A; ; i += 16)
  {
    v4 = a1[1];
    if (v4 == strlen(&unk_2395D7440 + v2 + 10))
    {
      break;
    }

LABEL_8:
    v2 += 16;
    if (v2 == 240)
    {
      return 0;
    }
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = __tolower(*(*a1 + v5));
      if (v6 != __tolower(i[v5]))
      {
        break;
      }

      if (++v5 >= a1[1])
      {
        return *(&unk_2395D7440 + v2 + 8);
      }
    }

    goto LABEL_8;
  }

  return *(&unk_2395D7440 + v2 + 8);
}

uint64_t sub_2394BA900(void *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_2394BA844(a1);
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        result = sub_2393D6044(*a2, a2[1], a3 + 190, 50);
        *(a3 + 168) = result;
        return result;
      }

      v10 = (a3 + 257);
      v11 = a2[1];
      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = *a2;
      v13 = v11 >= 0x20;
      v14 = 32;
    }

    else
    {
      if (result != 7)
      {
        if (result == 8)
        {
          result = sub_2394BA5C8(a2, 0);
          if (result >= 0x10000)
          {
            v16 = 0;
          }

          else
          {
            v16 = result;
          }

          *(a3 + 186) = v16;
          return result;
        }

        if (result == 9)
        {
          v7 = a2[1] == 1 && **a2 == 49;
          *(a3 + 189) = v7;
          return result;
        }

        goto LABEL_37;
      }

      v10 = (a3 + 290);
      v11 = a2[1];
      if (!v11)
      {
LABEL_32:
        *v10 = 0;
        return result;
      }

      v12 = *a2;
      v13 = v11 >= 0x80;
      v14 = 128;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    result = memcpy(v10, v12, v15);
    v10 += v15;
    goto LABEL_32;
  }

  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_2394BA5C8(a2, 0);
      if (result >= 0x100)
      {
        v9 = 0;
      }

      else
      {
        v9 = result;
      }

      *(a3 + 188) = v9;
    }

    else
    {
      result = sub_2394BA5C8(a2, 0);
      *(a3 + 176) = result;
    }

    return result;
  }

  if (result == 1)
  {
    result = sub_2394BA5C8(a2, 0);
    if (result >= 0x10000)
    {
      v8 = 0;
    }

    else
    {
      v8 = result;
    }

    *(a3 + 180) = v8;
    return result;
  }

  if (result == 2)
  {
    *(a3 + 182) = sub_2394BA500(a2);
    result = sub_2394BA464(a2);
    *(a3 + 184) = result;
    return result;
  }

LABEL_37:

  return sub_2394BAAE0(a1, a2, a3);
}

uint64_t sub_2394BAAE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2394BA844(a1);
  if (result <= 11)
  {
    if (result == 10)
    {
      result = sub_2394BA5C8(a2, 0xFFFFFFFFLL);
      v12 = result & 0x3FFF00;
      v13 = result;
      if (result > 0x36EE80)
      {
        v13 = 0;
        v12 = 0;
      }

      *(a3 + 144) = v12 | v13;
      *(a3 + 148) = result <= 0x36EE80;
    }

    else if (result == 11)
    {
      result = sub_2394BA5C8(a2, 0xFFFFFFFFLL);
      v7 = result & 0x3FFF00;
      v8 = result;
      if (result > 0x36EE80)
      {
        v8 = 0;
        v7 = 0;
      }

      *(a3 + 152) = v7 | v8;
      *(a3 + 156) = result <= 0x36EE80;
    }
  }

  else
  {
    switch(result)
    {
      case 0xC:
        result = sub_2394BA5C8(a2, 0);
        if (result >= 0x10000)
        {
          v9 = 0x10000;
        }

        else
        {
          v9 = result;
        }

        if (v9)
        {
          v10 = v9 | 0x10000;
        }

        else
        {
          v10 = 0;
        }

        *(a3 + 160) = v10;
        *(a3 + 162) = BYTE2(v10);
        break;
      case 0xD:
        result = sub_2394BA5C8(a2, 0);
        if (result >= 0x100)
        {
          v11 = 0;
        }

        else
        {
          v11 = result;
        }

        *(a3 + 139) = (v11 & 2) != 0;
        *(a3 + 140) = (v11 & 4) != 0;
        break;
      case 0xE:
        if (*(a2 + 8) == 1 && (**a2 & 0xFE) == 48)
        {
          v6 = 256;
        }

        else
        {
          v6 = 0;
        }

        *(a3 + 141) = v6 | (*(a2 + 8) == 1 && (**a2 & 0xFE) == 48 && **a2 == 49);
        break;
    }
  }

  return result;
}

void sub_2394BAC50(uint64_t a1, uint64_t a2, __int128 **a3, int a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5)
  {
    if (a4)
    {
      *buf = 0;
      v26 = 0;
      v6 = *(*v5 + 24);
LABEL_4:
      v6();
      return;
    }

    if (!a2)
    {
      *buf = 0;
      v26 = 0;
      v6 = *(*v5 + 24);
      goto LABEL_4;
    }

    v24 = 0uLL;
    if (sub_23948BE88(a2, &v24))
    {
      v10 = *(a1 + 32);
      *buf = 0;
      v26 = 0;
      v6 = *(*v10 + 24);
      goto LABEL_4;
    }

    *buf = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    memset(&v27[40], 0, 47);
    sub_2394BD44C(buf);
    strncpy(&v27[41], (a2 + 34), 0x29uLL);
    LOBYTE(v27[61]) = 0;
    *buf = *(a2 + 92);
    v27[40] = *(a2 + 88);
    v34 = v24;
    v11 = a3[1];
    if (v11)
    {
      v12 = 0;
      v13 = *a3;
      v14 = v27;
      v15 = 16 * v11;
      while (v12 != -5)
      {
        v16 = *v13++;
        *v14++ = v16;
        --v12;
        v15 -= 16;
        if (!v15)
        {
          v17 = -v12;
          goto LABEL_24;
        }
      }

      v18 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Can't add more IPs to ResolvedNodeData", v23, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(34, 2, "Can't add more IPs to ResolvedNodeData");
      }

      v17 = 5;
    }

    else
    {
      v17 = 0;
    }

LABEL_24:
    v26 = v17;
    if (*(a2 + 104))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = strlen(*(*(a2 + 96) + v19));
        sub_238DB6950(v23, *(*(a2 + 96) + v19), v21);
        sub_238DB6950(v22, *(*(a2 + 96) + v19 + 8), *(*(a2 + 96) + v19 + 16));
        sub_2394BAAE0(v23, v22, buf);
        ++v20;
        v19 += 24;
      }

      while (v20 < *(a2 + 104));
    }

    sub_2394BAF90(buf);
    (*(**(a1 + 32) + 16))(*(a1 + 32), buf);
  }

  else
  {
    v7 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "No delegate to handle node resolution data.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "No delegate to handle node resolution data.");
    }
  }
}

void sub_2394BAF90(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 168);
    v3 = *(a1 + 176);
    *buf = 67109888;
    v6 = HIDWORD(v3);
    v7 = 1024;
    v8 = v3;
    v9 = 1024;
    v10 = HIDWORD(v4);
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Node ID resolved for %08X%08X-%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "Node ID resolved for %08X%08X-%08X%08X", HIDWORD(*(a1 + 176)), *(a1 + 176), HIDWORD(*(a1 + 168)), *(a1 + 168));
  }

  sub_2394BD4D0(a1);
}

void *sub_2394BB090(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 1;
  v4 = sub_23949EB1C(a2, a2);
  sub_23948BE88(a1, v4);
  LOBYTE(a1) = *(a1 + 148) == 0;
  result = sub_23949EB1C(a2, v5);
  *(result + 16) = a1;
  return result;
}

void sub_2394BB0EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 152) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
  *(a3 + 168) = 0;
  *(a3 + 170) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 135) = 0u;
  sub_2394BD44C(a3 + 8);
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 411) = 0u;
  *a3 = 0;
  v7 = sub_23949EAFC(a3, v6);
  strncpy(v7 + 98, (a1 + 34), 0x29uLL);
  *(v7 + 138) = 0;
  strncpy(v7 + 240, a1, 0x11uLL);
  *(v7 + 256) = 0;
  *buf = *(a1 + 92);
  sub_2394B9FC0(a2);
  v8 = a2[1];
  if (v8)
  {
    v9 = 0;
    v10 = *a2;
    v11 = v7 + 2;
    v12 = 16 * v8;
    while (v9 != -5)
    {
      v13 = *v10++;
      *v11++ = v13;
      --v9;
      v12 -= 16;
      if (!v12)
      {
        v14 = -v9;
        goto LABEL_12;
      }
    }

    v15 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Can't add more IPs to DiscoveredNodeData", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "Can't add more IPs to DiscoveredNodeData");
    }

    v14 = 5;
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  *v7 = *(a1 + 92);
  v7[1] = v14;
  *(v7 + 48) = *(a1 + 88);
  if (*(a1 + 104))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = strlen(*(*(a1 + 96) + v16));
      sub_238DB6950(buf, *(*(a1 + 96) + v16), v18);
      sub_238DB6950(v19, *(*(a1 + 96) + v16 + 8), *(*(a1 + 96) + v16 + 16));
      sub_2394BA900(buf, v19, v7);
      ++v17;
      v16 += 24;
    }

    while (v17 < *(a1 + 104));
  }
}

unint64_t sub_2394BB300(_BYTE *a1)
{
  if (a1[16])
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    a1[16] = 1;
    v4 = sub_2394804C4(sub_2394BB3B8, sub_2394BB59C, a1);
    v1 = v4;
    if (v4)
    {
      a1[16] = 0;
      v2 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(*a1 + 80))(a1);
      v1 = 0;
      v2 = 0;
    }
  }

  return v2 | v1;
}

void sub_2394BB3B8(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "DNS-SD initialization failed with %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v4 = sub_2393C9138();
      sub_2393D5320(34, 1, "DNS-SD initialization failed with %s", v4);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 16) = 2;
    v11 = 0;
    *buf = 0u;
    v10 = 0u;
    *buf = -32750;
    if (qword_27DF7BD08 != -1)
    {
      sub_239533430(a1);
    }

    if (sub_239479EA8(&byte_27DF7BCA8, buf))
    {
      v5 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 136315138;
        v8 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Posting DNS-SD platform initialized event failed with %s", v7, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v6 = sub_2393C9138();
        sub_2393D5320(34, 1, "Posting DNS-SD platform initialized event failed with %s", v6);
      }
    }
  }
}

void sub_2394BB59C(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 == 69)
  {
    v2 = (*(*a1 + 32))(a1);
    v9 = 0;
    *v7 = 0u;
    v8 = 0u;
    *v7 = -32749;
    if (qword_27DF7BD08 != -1)
    {
      sub_239533430(v2);
    }

    if (sub_239479EA8(&byte_27DF7BCA8, v7))
    {
      v3 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v6 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to post DNS-SD restart event: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(34, 1, "Failed to post DNS-SD restart event: %s");
      }
    }
  }

  else
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315138;
      *&v7[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "DNS-SD error: %s", v7, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(34, 1, "DNS-SD error: %s");
    }
  }
}

uint64_t sub_2394BB78C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    result = sub_23948052C();
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_2394BB7C0(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    result = sub_23948052C();
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_2394BB7F4(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    return sub_2393D5E58((a1 + 17), 8, a2, a3, 3u);
  }

  else
  {
    return 0x1FD0000000BLL;
  }
}

void sub_2394BB870(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0x22u);
  v8 = v7;
  if (a4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "mDNS service published error: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(34, 1, "mDNS service published error: %s");
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = "(null)";
      }

      if (a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = "(null)";
      }

      *buf = 136315394;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "mDNS service published: %s; instance name: %s", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "mDNS service published: %s; instance name: %s");
    }
  }
}

unint64_t sub_2394BBA0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7)
{
  v7 = *a7;
  v11 = *(a7 + 1);
  v8 = *(a7 + 3);
  v10[0] = a7 + 9;
  v10[1] = v8;
  return sub_2394BBA6C(a1, a2, a3, a4, a5, a6, v7, &v11, v10, 1, *(a7 + 7), *(a7 + 8), *(a7 + 8));
}

unint64_t sub_2394BBA6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int *a8, void *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v38 = *MEMORY[0x277D85DE8];
  v25[0] = a11;
  v25[1] = a12;
  memset(v27, 0, sizeof(v27));
  v30 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 120;
  v21 = sub_23948BFBC(v27, 0x29uLL, a9);
  if (v21)
  {
    goto LABEL_10;
  }

  if (a10 == 1)
  {
    v21 = sub_23948BE1C(v26, 0x22uLL, v25);
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = (*(*a1 + 72))(a1, v26, 34);
    if (v21)
    {
      goto LABEL_10;
    }
  }

  strncpy(v28, a2, 9uLL);
  v28[8] = 0;
  if (a13)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v28[10] = v22;
  v30 = *a8;
  v28[9] = a10;
  v29 = a7;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v21 = sub_239480598(v26, sub_2394BB870, a1);
  if (!v21)
  {
    LODWORD(v21) = 0;
    v23 = 0;
    return v23 | v21;
  }

LABEL_10:
  v23 = v21 & 0xFFFFFFFF00000000;
  return v23 | v21;
}

unint64_t sub_2394BBC18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a7;
  v11 = *(a7 + 4);
  v8 = *(a7 + 24);
  v10[0] = a7 + 9;
  v10[1] = v8;
  return sub_2394BBA6C(a1, a2, a3, a4, a5, a6, v7, &v11, v10, 0, 0, 0, *(a7 + 8));
}

unint64_t sub_2394BBC70(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 24))(a1))
  {
    return 0x27100000003;
  }

  v13 = 0;
  v14 = 0;
  v20 = 0;
  v4 = sub_2394BBE3C(10, v21, &v14, v19, 8uLL, a2);
  v5 = v4;
  if (v4 || (v4 = sub_2394BBE3C(11, v21, &v14, v18, 8uLL, a2), v5 = v4, v4) || (v4 = sub_2394BBE3C(12, v21, &v14, v12, 6uLL, a2), v5 = v4, v4) || (v4 = sub_2394BBE3C(13, v21, &v14, v11, 2uLL, a2), v5 = v4, v4) || (v4 = sub_2394BBE3C(14, v21, &v14, v10, 2uLL, a2), v5 = v4, v4))
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = *(a2 + 64);
    LOBYTE(v15) = 8;
    *(&v15 + 1) = v8;
    v16 = 0;
    v9 = sub_2394BDB24(&v15, &v20, &v13, __str, 0x13uLL);
    if (v9 || (v9 = sub_2394BBA0C(a1, "_matter", v21, v14, &v20, v13, a2), v9))
    {
      v6 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v9) = 0;
      v6 = 0;
    }

    v5 = v9;
  }

  return v6 | v5;
}

unint64_t sub_2394BBE3C(int a1, uint64_t a2, void *a3, char *a4, size_t a5, uint64_t a6)
{
  if ((a1 - 10) < 3)
  {
    v11 = sub_2394BE454(a4, a5, a6 + 32, a1);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = strnlen(a4, a5);
    v13 = 0;
    v12 = 0;
    v15 = (*a3)++;
    v16 = (a2 + 24 * v15);
    *v16 = &unk_2395D75A0 + 16 * a1 + 10;
    v16[1] = a4;
    v16[2] = v14;
    return v12 | v13;
  }

  if (a1 == 14)
  {
    if (*(a6 + 50))
    {
      v11 = sub_2394BE5EC(a4, a5, 1, "%d");
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    v12 = 0;
    return v12 | v13;
  }

  if (!*(a6 + 48))
  {
    goto LABEL_13;
  }

  v11 = sub_2394BE5EC(a4, a5, 1, "%u");
LABEL_11:
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = v11 & 0xFFFFFFFF00000000;
  v13 = v11;
  if (v11 == 28)
  {
    v13 = 0;
    v12 = 0;
  }

  return v12 | v13;
}

uint64_t sub_2394BBF6C(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 24))(a1))
  {
    return 0x28200000003;
  }

  v22 = 0;
  v23 = 0;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v4 = sub_2394BC340(2, v39, &v23, v36, 0xCuLL, a2);
  v5 = v4;
  if (!v4)
  {
    v4 = sub_2394BC340(4, v39, &v23, v35, 0xBuLL, a2);
    v5 = v4;
    if (!v4)
    {
      v4 = sub_2394BC340(5, v39, &v23, v34, 0x21uLL, a2);
      v5 = v4;
      if (!v4)
      {
        v4 = sub_2394BC340(10, v39, &v23, v33, 8uLL, a2);
        v5 = v4;
        if (!v4)
        {
          v4 = sub_2394BC340(11, v39, &v23, v32, 8uLL, a2);
          v5 = v4;
          if (!v4)
          {
            v4 = sub_2394BC340(12, v39, &v23, v21, 6uLL, a2);
            v5 = v4;
            if (!v4)
            {
              v4 = sub_2394BC340(13, v39, &v23, v20, 2uLL, a2);
              v5 = v4;
              if (!v4)
              {
                v4 = sub_2394BC340(14, v39, &v23, v19, 2uLL, a2);
                v5 = v4;
                if (!v4)
                {
                  v6 = *(a2 + 60);
                  if ((v6 & 0x10000) == 0 || (LOBYTE(v26) = 3, *(&v26 + 1) = v6, v27 = 0, v4 = sub_2394BDB24(&v26, v37, &v22, __str, 8uLL), v5 = v4, !v4))
                  {
                    v7 = *(a2 + 68);
                    if ((v7 & 0x100000000) != 0)
                    {
                      LOBYTE(v26) = 4;
                      *(&v26 + 1) = v7;
                      v27 = 0;
                      v4 = sub_2394BDB24(&v26, v37, &v22, v30, 0xDuLL);
                      if (v4)
                      {
                        goto LABEL_28;
                      }
                    }

                    if (*(a2 + 54) == 1)
                    {
                      v4 = sub_2394BC340(9, v39, &v23, &v26, 2uLL, a2);
                      if (v4)
                      {
LABEL_28:
                        v5 = v4;
                        return v5 | v4 & 0xFFFFFFFF00000000;
                      }

                      v9 = v22;
                      v8 = v23;
                      v10 = "_matterd";
                    }

                    else
                    {
                      v4 = sub_2394BC340(1, v39, &v23, v18, 6uLL, a2);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v4 = sub_2394BC340(3, v39, &v23, v17, 2uLL, a2);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v4 = sub_2394BC340(6, v39, &v23, v29, 0x65uLL, a2);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v4 = sub_2394BC340(8, v39, &v23, v28, 0xBuLL, a2);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v4 = sub_2394BC340(7, v39, &v23, &v26, 0x81uLL, a2);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v12 = *(a2 + 51);
                      LOBYTE(v24) = 1;
                      *(&v24 + 1) = v12;
                      v25 = 0;
                      v4 = sub_2394BDB24(&v24, v37, &v22, v16, 5uLL);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      v13 = *(a2 + 52);
                      LOBYTE(v24) = 2;
                      *(&v24 + 1) = v13;
                      v25 = 0;
                      v4 = sub_2394BDB24(&v24, v37, &v22, v15, 7uLL);
                      if (v4)
                      {
                        goto LABEL_28;
                      }

                      if (*(a2 + 56))
                      {
                        LOBYTE(v24) = 5;
                        *(&v24 + 1) = 0;
                        v25 = 0;
                        v4 = sub_2394BDB24(&v24, v37, &v22, v14, 4uLL);
                        if (v4)
                        {
                          goto LABEL_28;
                        }
                      }

                      v9 = v22;
                      v8 = v23;
                      v10 = "_matterc";
                    }

                    v4 = sub_2394BBC18(a1, v10, v39, v8, v37, v9, a2);
                    if (!v4)
                    {
                      v4 = 0;
                    }

                    goto LABEL_28;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5 | v4 & 0xFFFFFFFF00000000;
}

unint64_t sub_2394BC340(int a1, uint64_t a2, void *a3, char *a4, size_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        if (*(a6 + 113) != 1)
        {
          goto LABEL_25;
        }
      }

      else if (*(a6 + 215) != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {
          if (a1 == 9)
          {
            goto LABEL_30;
          }

LABEL_26:
          *v22 = *(a6 + 24);
          *&v22[11] = *(a6 + 35);
          if ((a1 - 10) < 3)
          {
            v14 = sub_2394BE454(a4, a5, &v22[8], a1);
LABEL_46:
            v21 = v14 & 0xFFFFFFFF00000000;
LABEL_47:
            v13 = v14 | v21;
            goto LABEL_31;
          }

          if (a1 == 14)
          {
            if (v22[26])
            {
              v14 = sub_2394BE5EC(a4, a5, 1, "%d");
              goto LABEL_46;
            }

            v21 = 0x11200000000;
          }

          else
          {
            if (a1 != 13)
            {
              v21 = 0x11500000000;
              LODWORD(v14) = 47;
              goto LABEL_47;
            }

            if (*&v22[24])
            {
              v14 = sub_2394BE5EC(a4, a5, 1, "%u");
              goto LABEL_46;
            }

            v21 = 0x10100000000;
          }

          LODWORD(v14) = 28;
          goto LABEL_47;
        }

        if ((*(a6 + 76) & 0x10000) != 0)
        {
LABEL_30:
          v13 = sub_2394BE5EC(a4, a5, 1, "%u");
          goto LABEL_31;
        }

LABEL_25:
        v13 = 0xD30000001CLL;
        goto LABEL_31;
      }

      if (*(a6 + 345) != 1)
      {
        goto LABEL_25;
      }
    }

    v13 = sub_2394BE5EC(a4, a5, 0, "%s");
    goto LABEL_31;
  }

  if (a1 > 2)
  {
    if (a1 == 3 || (*(a6 + 68) & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (a1 == 1)
  {
    goto LABEL_30;
  }

  if (a1 != 2)
  {
    goto LABEL_26;
  }

  if ((*(a6 + 60) & 0x10000) != 0)
  {
    if ((*(a6 + 64) & 0x10000) != 0)
    {
      v12 = sub_2394BE5EC(a4, a5, 3, "%u+%u");
    }

    else
    {
      v12 = sub_2394BE5EC(a4, a5, 1, "%u");
    }

    v11 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = 0xD900000000;
    LODWORD(v12) = 28;
  }

  v13 = v11 | v12;
LABEL_31:
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFF00000000;
    v16 = v13;
    if (v13 == 28)
    {
      v16 = 0;
      v15 = 0;
    }
  }

  else
  {
    v17 = strnlen(a4, a5);
    v16 = 0;
    v15 = 0;
    v18 = (*a3)++;
    v19 = (a2 + 24 * v18);
    *v19 = &unk_2395D75A0 + 16 * a1 + 10;
    v19[1] = a4;
    v19[2] = v17;
  }

  return v15 | v16;
}

unint64_t sub_2394BC690(uint64_t a1)
{
  if ((*(*a1 + 24))(a1))
  {
    v1 = sub_239480530();
    v2 = v1 & 0xFFFFFFFF00000000;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (!v1)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0x2A700000000;
    v3 = 3;
  }

  return v2 | v3;
}

uint64_t sub_2394BC700(uint64_t a1)
{
  if ((*(*a1 + 24))(a1))
  {
    return sub_2393D52B8();
  }

  else
  {
    return 0x2AF00000003;
  }
}

unint64_t sub_2394BC774(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != 2)
  {
    return 0x2BC00000003;
  }

  v4 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = HIDWORD(*a2);
    *buf = 67109888;
    v11 = HIDWORD(v5);
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Resolving %08X%08X:%08X%08X ...", buf, 0x1Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "Resolving %08X%08X:%08X%08X ...", HIDWORD(a2[1]), a2[1], HIDWORD(*a2), *a2);
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 120;
  result = sub_23948BE1C(buf, 0x22uLL, a2);
  if (!result)
  {
    v20 = 0x72657474616D5FLL;
    v21 = 256;
    v22 = 3;
    v9 = 0;
    return sub_239480F60(buf, &v9, sub_2394BAC50, a1);
  }

  return result;
}

uint64_t sub_2394BC920(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_23948BE1C(v3, 0x22uLL, a2);
  if (!result)
  {
    return sub_2394812A4(v3);
  }

  return result;
}

unint64_t sub_2394BC988(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (v6)
  {
    goto LABEL_2;
  }

  (*(*a1 + 120))(a1, a3);
  if (*a2 == 6)
  {
    memset(v17, 0, sizeof(v17));
    v16 = 0u;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 120;
    v13 = *a2;
    v14 = *(a2 + 16);
    v6 = sub_23948C07C(__str, 0x22uLL, &v13);
    if (!v6)
    {
      v18 = 0x6372657474616D5FLL;
      v19 = 0;
      v20 = 3;
      LODWORD(v13) = 0;
      v9 = sub_2394BCC6C(a3);
      v6 = sub_239480F60(__str, &v13, sub_2394BCB8C, v9);
      if (!v6)
      {
        v7 = 0;
        return v6 & 0xFFFFFFFF00000000 | v7;
      }

LABEL_10:
      sub_2394BA25C(a3, v10);
    }
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x21uLL, &v13, 2);
    if (!v6)
    {
      *&v13 = 0;
      v12 = 0;
      v11 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 0, 3, &v12, sub_2394BCCA0, v11, &v13);
      if (!v6)
      {
        *(a3 + 16) = v13;
        *(a3 + 24) = 1;
        goto LABEL_2;
      }

      goto LABEL_10;
    }
  }

LABEL_2:
  v7 = v6;
  return v6 & 0xFFFFFFFF00000000 | v7;
}

void sub_2394BCB8C(int *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v9[54] = *MEMORY[0x277D85DE8];
  if (a4 && a4 != 164)
  {

    sub_2394BA25C(a1, a2);
  }

  else
  {
    v9[0] = -1;
    sub_2394BB0EC(a2, a3, v9);
    v7 = sub_23949EAFC(v9, v6);
    sub_2394BDBAC(v7);
    sub_2394BE1B0(a1);
    if (!a4)
    {
      sub_2394BA25C(a1, v8);
    }
  }
}

int *sub_2394BCC6C(int *result)
{
  v1 = *result;
  if (*result == -1)
  {
    sub_23952FE00();
  }

  if (!v1)
  {
    sub_23952FEA0();
  }

  *result = v1 + 1;
  return result;
}

void sub_2394BCCA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v12[54] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
    }

    sub_2394BA25C(a1, a2);
  }

  else
  {
    v7 = a3;
    if (a3)
    {
      v8 = a2 + 75;
      do
      {
        sub_2394BCC6C(a1);
        if (!strcmp(v8, "_matter"))
        {
          v12[0] = -1;
          sub_2394BB090(v8 - 75, v12);
          v10 = sub_23949EB1C(v12, v9);
          sub_2394BE26C(v10);
          sub_2394BE1B0(a1);
          sub_2394BA25C(a1, v11);
        }

        else if (*(v8 - 41) && *(v8 + 29) && (*(v8 + 69) & 1) != 0)
        {
          sub_23947EE68(v12, v8 + 53, 1);
          sub_2394BCB8C(a1, v8 - 75, v12, 0);
        }

        else
        {
          LODWORD(v12[0]) = *(v8 + 17);
          sub_239480F60(v8 - 75, v12, sub_2394BCB8C, a1);
        }

        v8 += 152;
        --v7;
      }

      while (v7);
    }

    if (a4)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;
      }

      sub_2394BA25C(a1, a2);
    }
  }
}

unint64_t sub_2394BCE7C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (!v6)
  {
    (*(*a1 + 120))(a1, a3);
    if (*a2 == 6)
    {
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 120;
      v13 = *a2;
      v14 = *(a2 + 16);
      v6 = sub_23948C07C(__str, 0x22uLL, &v13);
      if (v6)
      {
        return v6;
      }

      v18 = 0x6472657474616D5FLL;
      v19 = 0;
      v20 = 3;
      LODWORD(v13) = 0;
      v7 = sub_2394BCC6C(a3);
      if (sub_239480F60(__str, &v13, sub_2394BCB8C, v7))
      {
        sub_2394BA25C(a3, v8);
      }
    }

    v13 = *a2;
    v14 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x21uLL, &v13, 3);
    if (!v6)
    {
      *&v13 = 0;
      v12 = 0;
      v10 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 0, 3, &v12, sub_2394BCCA0, v10, &v13);
      if (v6)
      {
        sub_2394BA25C(a3, v11);
      }

      else
      {
        *(a3 + 16) = v13;
        *(a3 + 24) = 1;
      }
    }
  }

  return v6;
}

unint64_t sub_2394BD070(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (!v6)
  {
    (*(*a1 + 120))(a1, a3);
    v11 = *a2;
    v12 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x35uLL, &v11, 1);
    if (!v6)
    {
      *&v11 = 0;
      v10 = 0;
      v8 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 1u, 3, &v10, sub_2394BCCA0, v8, &v11);
      if (v6)
      {
        sub_2394BA25C(a3, v9);
      }

      else
      {
        *(a3 + 16) = v11;
        *(a3 + 24) = 1;
      }
    }
  }

  return v6;
}

unint64_t sub_2394BD1B4(_BYTE *a1, int a2, __int128 *a3, uint64_t a4)
{
  switch(a2)
  {
    case 1:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BD070(a1, &v7, a4);
      break;
    case 3:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BCE7C(a1, &v7, a4);
      break;
    case 2:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BC988(a1, &v7, a4);
      break;
    default:
      v5 = 0x35000000000;
      LODWORD(v4) = 47;
      return v4 | v5;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

uint64_t sub_2394BD26C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  *(a2 + 24) = 0;
  return sub_239480BDC(v2);
}

uint64_t sub_2394BD2A4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  *(a2 + 24) = 0;
  return sub_239480BDC(v2);
}

unint64_t sub_2394BD2DC(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint32_t *a5)
{
  result = sub_2394BB300(a1);
  if (!result)
  {
    v10 = *a5;
    return sub_239481700(a2, a3, a4, &v10);
  }

  return result;
}

uint64_t *sub_2394BD344()
{
  if ((byte_2814F7138 & 1) == 0)
  {
    byte_2814F7138 = 1;
    qword_2814F7128 = 0;
    unk_2814F7130 = 0;
    qword_2814F7110 = &unk_284BBCF48;
    qword_2814F7118 = &unk_284BBCFE0;
    unk_2814F7120 = 0;
  }

  return &qword_2814F7110;
}

uint64_t *sub_2394BD3AC()
{
  if ((byte_2814F7138 & 1) == 0)
  {
    byte_2814F7138 = 1;
    qword_2814F7128 = 0;
    unk_2814F7130 = 0;
    qword_2814F7110 = &unk_284BBCF48;
    qword_2814F7118 = &unk_284BBCFE0;
    unk_2814F7120 = 0;
  }

  return &qword_2814F7118;
}

double sub_2394BD44C(uint64_t a1)
{
  *(a1 + 123) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 98) = 0u;
  if (*(a1 + 148) == 1)
  {
    *(a1 + 148) = 0;
  }

  if (*(a1 + 156) == 1)
  {
    *(a1 + 156) = 0;
  }

  if (*(a1 + 162) == 1)
  {
    *(a1 + 162) = 0;
  }

  if (*(a1 + 142) == 1)
  {
    *(a1 + 142) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 96) = 0;
  *(a1 + 139) = 0;
  *a1 = 0;
  for (i = 16; i != 96; i += 16)
  {
    result = *&xmmword_27DF7BD44;
    *(a1 + i) = xmmword_27DF7BD44;
  }

  return result;
}

void sub_2394BD4D0(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 98);
  if (*(a1 + 98))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = v2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "\tHostname: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tHostname: %s", v2);
    }
  }

  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = sub_2393CF6CC((a1 + 16 + 16 * v4), buf, 0x2Eu);
      v7 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v26 = 67109378;
        v27 = v5;
        v28 = 2080;
        v29 = v6;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "\tIP Address #%d: %s", v26, 0x12u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(34, 3, "\tIP Address #%d: %s", v5, v6);
      }

      v4 = v5;
    }

    while (*(a1 + 8) > v5++);
  }

  v9 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v10 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v31) = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "\tPort: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tPort: %u", *(a1 + 96));
    }
  }

  v11 = *(a1 + 148);
  v12 = sub_2393D9044(0x22u);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11 == 1)
  {
    if (v13)
    {
      v14 = *(a1 + 144);
      *buf = 67109120;
      LODWORD(v31) = v14;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval idle: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Interval idle: %u ms");
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval idle: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Interval idle: not present");
    }
  }

  v15 = *(a1 + 156);
  v16 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v15 == 1)
  {
    if (v16)
    {
      v17 = *(a1 + 152);
      *buf = 67109120;
      LODWORD(v31) = v17;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval active: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Interval active: %u ms");
    }
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval active: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Interval active: not present");
    }
  }

  v18 = *(a1 + 162);
  v19 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v18 == 1)
  {
    if (v19)
    {
      v20 = *(a1 + 160);
      *buf = 67109120;
      LODWORD(v31) = v20;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Active Threshold: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Active Threshold: %u ms");
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Active Threshold: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tMrp Active Threshold: not present");
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 139);
    *buf = 67109120;
    LODWORD(v31) = v21;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tTCP Client Supported: %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "\tTCP Client Supported: %d", *(a1 + 139));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 140);
    *buf = 67109120;
    LODWORD(v31) = v22;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tTCP Server Supported: %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "\tTCP Server Supported: %d", *(a1 + 140));
  }

  v23 = *(a1 + 142);
  v24 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v23 == 1)
  {
    if (v24)
    {
      if (*(a1 + 141))
      {
        v25 = "LIT";
      }

      else
      {
        v25 = "SIT";
      }

      *buf = 136315138;
      v31 = v25;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tThe ICD operates in %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tThe ICD operates in %s");
    }
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tICD: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tICD: not present");
    }
  }
}

unint64_t sub_2394BDB24(__int128 *a1, uint64_t a2, void *a3, char *__str, size_t __size)
{
  v12 = *a1;
  v13 = *(a1 + 2);
  v8 = sub_23948C07C(__str, __size, &v12);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = (*a3)++;
    *(a2 + 8 * v10) = __str;
  }

  return v9 | v8;
}

void sub_2394BDBAC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Discovered commissionable/commissioner node:", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "Discovered commissionable/commissioner node:");
  }

  sub_2394BD4D0(a1);
  v3 = *(a1 + 168);
  if (v3)
  {
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v16 = 0u;
    v17 = 0u;
    *buf = 0u;
    v15 = 0u;
    sub_2393D5E58((a1 + 190), v3, buf, 0x65uLL, 3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v12 = 136315138;
      v13 = buf;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tRotating ID: %s", v12, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tRotating ID: %s", buf);
    }
  }

  if (*(a1 + 257))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 257;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tDevice Name: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tDevice Name: %s", (a1 + 257));
    }
  }

  v4 = *(a1 + 182);
  if (*(a1 + 182))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tVendor ID: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tVendor ID: %u", *(a1 + 182));
    }
  }

  v5 = *(a1 + 184);
  if (*(a1 + 184))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tProduct ID: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tProduct ID: %u", *(a1 + 184));
    }
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tDevice Type: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tDevice Type: %u", *(a1 + 176));
    }
  }

  v7 = *(a1 + 180);
  if (*(a1 + 180))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tLong Discriminator: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tLong Discriminator: %u", *(a1 + 180));
    }
  }

  if (*(a1 + 290))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 290;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tPairing Instruction: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tPairing Instruction: %s", (a1 + 290));
    }
  }

  v8 = *(a1 + 186);
  if (*(a1 + 186))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tPairing Hint: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tPairing Hint: %u", *(a1 + 186));
    }
  }

  if (*(a1 + 240))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 240;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tInstance Name: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "\tInstance Name: %s", (a1 + 240));
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 188);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tCommissioning Mode: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "\tCommissioning Mode: %u", *(a1 + 188));
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 189))
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tSupports Commissioner Generated Passcode: %s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    if (*(a1 + 189))
    {
      v11 = "true";
    }

    else
    {
      v11 = "false";
    }

    sub_2393D5320(34, 3, "\tSupports Commissioner Generated Passcode: %s", v11);
  }
}

void sub_2394BE1B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*v3 + 16);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Missing commissioning delegate. Data discarded", v6, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "Missing commissioning delegate. Data discarded");
    }
  }
}

void sub_2394BE26C(unint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Discovered Operational node:\r\n", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "Discovered Operational node:\r\n");
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = HIDWORD(*a1);
    *buf = 67109888;
    *v9 = HIDWORD(v3);
    *&v9[4] = 1024;
    *&v9[6] = v3;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tNode Instance: %08X%08X-%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(34, 3, "\tNode Instance: %08X%08X-%08X%08X", HIDWORD(a1[1]), a1[1], HIDWORD(*a1), *a1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 16))
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    *buf = 136315138;
    *v9 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\thasZeroTTL: %s\r\n", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    if (*(a1 + 16))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    sub_2393D5320(34, 3, "\thasZeroTTL: %s\r\n", v7);
  }
}

unint64_t sub_2394BE454(char *a1, size_t a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a4 - 10) > 2)
  {
    v8 = 0xE300000000;
    LODWORD(v9) = 47;
  }

  else if (*(a3 + 12) == 1)
  {
    if (a4 == 12)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 4 * (a4 != 10));
      if (v7 > 0x36EE80)
      {
        v10 = sub_2393D9044(0x22u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (a4 == 10)
          {
            v11 = "idle";
          }

          else
          {
            v11 = "active";
          }

          *buf = 136315138;
          v15 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "MRP retry interval %s value exceeds allowed range of 1 hour, using maximum available", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          if (a4 == 10)
          {
            v12 = "idle";
          }

          else
          {
            v12 = "active";
          }

          sub_2393D5320(34, 2, "MRP retry interval %s value exceeds allowed range of 1 hour, using maximum available", v12);
        }

        v7 = 3600000;
      }
    }

    v9 = sub_2394BE5EC(a1, a2, 1, "%u", v7);
    v8 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0xE400000000;
    LODWORD(v9) = 28;
  }

  return v9 | v8;
}

uint64_t sub_2394BE5EC(char *a1, size_t a2, int a3, char *__format, ...)
{
  va_start(va, __format);
  if (vsnprintf(a1, a2, __format, va) >= a3)
  {
    return 0;
  }

  else
  {
    return 0xA80000001ELL;
  }
}

uint64_t sub_2394BE648(_BYTE *a1)
{
  v1 = 8;
  if (a1[8])
  {
    v1 = 16;
  }

  if (a1[24] == 1)
  {
    return v1 + 8;
  }

  if (a1[40])
  {
    return v1 | 2;
  }

  return v1;
}

uint64_t sub_2394BE684(uint64_t a1)
{
  v1 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v1 = 6;
  }

  if (*(a1 + 12))
  {
    return v1 + 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BE6AC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_2393D5964(a2, &v7);
  result = *(a2 + 24);
  if (!result)
  {
    if (v7 > 0xFu)
    {
      return 0x8E000000A7;
    }

    else
    {
      *(a1 + 47) = v7;
      sub_2393D5A0C(a2, (a1 + 44));
      result = *(a2 + 24);
      if (!result)
      {
        v6 = 0;
        sub_2393D5964(a2, &v6);
        result = *(a2 + 24);
        if (!result)
        {
          v5 = v6;
          *(a1 + 48) = v6;
          *(a1 + 46) = v5 & 3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394BE758(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v4[0] = *(*a2 + 8);
  v4[1] = v4[0];
  v6 = 0;
  v7 = 0;
  v5 = v2;
  if (!v4[0])
  {
    v5 = 0;
  }

  return sub_2394BE6AC(a1, v4);
}

uint64_t sub_2394BE79C(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v11 = a2;
  v12 = a2;
  v14 = 0;
  v15 = 0;
  v13 = a3;
  if (!a2)
  {
    v13 = 0;
  }

  result = sub_2394BE6AC(a1, &v11);
  if (result)
  {
    return result;
  }

  sub_2393D5A68(&v11, a1);
  result = v14;
  if (v14)
  {
    return result;
  }

  if ((*(a1 + 47) & 4) != 0)
  {
    v10 = 0;
    sub_2393D5AC4(&v11, &v10);
    result = v14;
    if (v14)
    {
      return result;
    }

    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
  }

  else
  {
    *(a1 + 8) = 0;
  }

  v7 = *(a1 + 46);
  if (v7 > 1)
  {
    return 0xBD000000ACLL;
  }

  v8 = *(a1 + 47);
  if ((~v8 & 3) == 0)
  {
    return 0xC3000000ACLL;
  }

  if (v8)
  {
    v10 = 0;
    sub_2393D5AC4(&v11, &v10);
    result = v14;
    if (v14)
    {
      return result;
    }

    *(a1 + 24) = 1;
    *(a1 + 32) = v10;
    goto LABEL_19;
  }

  if ((v8 & 2) == 0)
  {
    *(a1 + 24) = 0;
LABEL_19:
    *(a1 + 40) = 0;
LABEL_20:
    if ((*(a1 + 48) & 0x20) == 0)
    {
      v9 = v12;
LABEL_22:
      *a4 = v9 - v11;
      return result;
    }

    LOWORD(v10) = 0;
    sub_2393D5A0C(&v11, &v10);
    result = v14;
    if (!v14)
    {
      if (v13 >= v10)
      {
        v9 = v12 + v10;
        goto LABEL_22;
      }

      return 0xE6000000ACLL;
    }

    return result;
  }

  if (v7 != 1)
  {
    return 0xD3000000ACLL;
  }

  LOWORD(v10) = 0;
  sub_2393D5A0C(&v11, &v10);
  result = v14;
  if (!v14)
  {
    *(a1 + 40) = 1;
    *(a1 + 42) = v10;
    *(a1 + 24) = 0;
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2394BE94C(uint64_t a1, void **a2)
{
  v6 = 0;
  v3 = sub_2394BE79C(a1, (*a2)[1], (*a2)[3], &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D9984(*a2, v6);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394BE9B8(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v14 = a2;
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = a3;
  if (!a2)
  {
    v16 = 0;
  }

  v13 = 0;
  sub_2393D5964(&v14, &v13);
  sub_2393D5964(&v14, a1);
  sub_2393D5A0C(&v14, (a1 + 2));
  result = v17;
  if (!v17)
  {
    v7 = v13;
    *(a1 + 8) = v13;
    if ((v7 & 0x10) != 0)
    {
      LOWORD(v11) = 0;
      sub_2393D5A0C(&v14, &v11);
      result = v17;
      if (v17)
      {
        return result;
      }

      v8 = v11;
    }

    else
    {
      v8 = 0;
    }

    v12 = 0;
    sub_2393D5A0C(&v14, &v12);
    result = v17;
    if (!v17)
    {
      *(a1 + 4) = v8 | (v12 << 16);
      v9 = *(a1 + 8);
      if ((v9 & 2) != 0)
      {
        v11 = 0;
        sub_2393D5A68(&v14, &v11);
        result = v17;
        if (v17)
        {
          return result;
        }

        *(a1 + 12) = 1;
        *(a1 + 16) = v11;
        if ((*(a1 + 8) & 8) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a1 + 12) = 0;
        if ((v9 & 8) == 0)
        {
LABEL_12:
          v10 = v15;
          goto LABEL_13;
        }
      }

      LOWORD(v11) = 0;
      sub_2393D5A0C(&v14, &v11);
      result = v17;
      if (!v17)
      {
        if (v16 < v11)
        {
          return 0x127000000ACLL;
        }

        v10 = v15 + v11;
LABEL_13:
        *a4 = v10 - v14;
      }
    }
  }

  return result;
}

unint64_t sub_2394BEB24(uint64_t a1, void **a2)
{
  v6 = 0;
  v3 = sub_2394BE9B8(a1, (*a2)[1], (*a2)[3], &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D9984(*a2, v6);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394BEB90(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v7 = (a1 + 8);
  if (*(a1 + 8))
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v10 = (a1 + 24);
  v9 = *(a1 + 24);
  if (v9 == 1)
  {
    if (v8 + 8 <= a3)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = 0x13E00000000;
LABEL_38:
        v13 = 172;
        return v13 | v12;
      }

      goto LABEL_12;
    }

LABEL_11:
    v12 = 0x13D00000000;
    v13 = 47;
    return v13 | v12;
  }

  v11 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v8 |= 2uLL;
  }

  if (v8 > a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!a4)
  {
    v12 = 0x13F00000000;
    goto LABEL_38;
  }

  if (*(a1 + 46) > 1u)
  {
    v12 = 0x14000000000;
    goto LABEL_38;
  }

  if (*(a1 + 8))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *a2 = v14 | v15 | v9;
  *(a2 + 1) = *(a1 + 44);
  *(a2 + 3) = *(a1 + 48);
  *(a2 + 4) = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a2 + 8) = *sub_238DE36B8((a1 + 8), a2);
    v16 = (a2 + 16);
  }

  else
  {
    v16 = (a2 + 8);
  }

  if (*v10 == 1)
  {
    *v16++ = *sub_238DE36B8(v7 + 16, a2);
  }

  else if (*(a1 + 40) == 1)
  {
    *v16 = sub_238E0A934((a1 + 40), a2)->super.isa;
    v16 = (v16 + 2);
  }

  v17 = v16 - a2;
  v18 = 8;
  if (*v7)
  {
    v18 = 16;
  }

  if (*v10 == 1)
  {
    v18 += 8;
  }

  else if (*(a1 + 40))
  {
    v18 |= 2uLL;
  }

  if (v17 != v18)
  {
    v12 = 0x15C00000000;
    goto LABEL_38;
  }

  v12 = 0;
  v13 = 0;
  *a4 = v17;
  return v13 | v12;
}

unint64_t sub_2394BED64(_BYTE *a1, void **a2)
{
  v4 = 8;
  if (a1[8])
  {
    v4 = 16;
  }

  if (a1[24] == 1)
  {
    v5 = v4 + 8;
  }

  else if (a1[40])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!sub_2393D9AD4(*a2, v5))
  {
    return 0x1670000000BLL;
  }

  sub_2393D9734(*a2, (*a2)[1] - v5);
  v9 = 0;
  v6 = sub_2394BEB90(a1, (*a2)[1], (*a2)[3], &v9);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v9 == v5)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = 172;
    }

    if (v9 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x16B00000000;
    }
  }

  return v7 | v6;
}

uint64_t sub_2394BEE58(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v4 = (a1 + 12);
  v5 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v5 = 6;
  }

  if (*(a1 + 12))
  {
    v6 = v5 + 4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= a3)
  {
    *a2 = *(a1 + 8);
    *(a2 + 1) = *a1;
    *(a2 + 2) = *(a1 + 2);
    if ((*(a1 + 8) & 0x10) != 0)
    {
      *(a2 + 4) = *(a1 + 4);
      v12 = a2 + 6;
    }

    else
    {
      v12 = a2 + 4;
    }

    *v12 = *(a1 + 6);
    v13 = v12 + 2;
    if (*(a1 + 12) == 1)
    {
      *(v12 + 2) = *sub_238DE3698((a1 + 12), a2);
      v13 = v12 + 6;
      v14 = *v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 - a2;
    v16 = 8;
    if ((*(a1 + 8) & 0x10) == 0)
    {
      v16 = 6;
    }

    if (v14)
    {
      v16 += 4;
    }

    if (v15 == v16)
    {
      v7 = 0;
      v8 = 0;
      *a4 = v15;
    }

    else
    {
      v7 = 0x18400000000;
      v8 = 172;
    }
  }

  else
  {
    v7 = 0x17100000000;
    v8 = 47;
  }

  return v8 | v7;
}

unint64_t sub_2394BEF90(uint64_t a1, void **a2)
{
  v4 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v4 = 6;
  }

  if (*(a1 + 12))
  {
    v5 = v4 + 4;
  }

  else
  {
    v5 = v4;
  }

  if (!sub_2393D9AD4(*a2, v5))
  {
    return 0x18F0000000BLL;
  }

  sub_2393D9734(*a2, (*a2)[1] - v5);
  v9 = 0;
  v6 = sub_2394BEE58(a1, (*a2)[1], (*a2)[3], &v9);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v9 == v5)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = 172;
    }

    if (v9 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x19300000000;
    }
  }

  return v7 | v6;
}

uint64_t sub_2394BF070(_OWORD *a1, uint64_t a2, _OWORD *a3, unint64_t a4, _WORD *a5)
{
  if (*(a2 + 44))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 46) == 0;
  }

  if (v5)
  {
    v6 = 0x19C00000000;
    v7 = 128;
  }

  else if (a4 >= 0x10)
  {
    v6 = 0;
    v7 = 0;
    *a1 = *a3;
    *a5 = 16;
  }

  else
  {
    v6 = 0x19D00000000;
    v7 = 47;
  }

  return v7 | v6;
}

uint64_t sub_2394BF0DC(_OWORD *a1, uint64_t a2, _OWORD *a3, unint64_t a4, _WORD *a5)
{
  if (*(a2 + 44))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 46) == 0;
  }

  if (v5)
  {
    v6 = 0x1AC00000000;
    v7 = 17;
  }

  else if (a4 >= 0x10)
  {
    v6 = 0;
    v7 = 0;
    *a3 = *a1;
    *a5 = 16;
  }

  else
  {
    v6 = 0x1AD00000000;
    v7 = 47;
  }

  return v7 | v6;
}

BOOL sub_2394BF148(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    if (v2 != 5)
    {
      return result;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    return v7 == v8;
  }

  if (v2 == 1 || v2 == 3)
  {
    result = sub_2393CF8F8(a1, a2);
    if (result)
    {
      if (*(a1 + 18) != *(a2 + 18))
      {
        return 0;
      }

      v7 = *(a1 + 20);
      v8 = *(a2 + 20);
      return v7 == v8;
    }
  }

  return result;
}

void *sub_2394BF204(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);
  return a1;
}

void *sub_2394BF248(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);
  return a1;
}

void sub_2394BF28C(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394BF2F0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    (*(*a1 + 56))(a1);
  }

  v4 = sub_2394BF63C(*a2, (a1 + 16));
  if (v4)
  {
    goto LABEL_9;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), *(a2 + 16));
  v5 = sub_2393D9044(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a2 + 10);
    *buf = 67109120;
    LODWORD(v18) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "UDP::Init bind&listen port=%d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "UDP::Init bind&listen port=%d", *(a2 + 10));
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 8);
  v9 = *(a2 + 10);
  *buf = *(a2 + 12);
  v4 = sub_2393D3838(v7, v8, &xmmword_27DF7BD44, v9, buf);
  if (v4 || (v4 = sub_2393D39F8(*(a1 + 16), sub_2394BF7D4, sub_2394BF850, a1), v4))
  {
LABEL_9:
    v10 = sub_2393D9044(1u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      v18 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialize Udp transport: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v12 = sub_2393C9138();
      sub_2393D5320(1, 2, "Failed to initialize Udp transport: %s", v12);
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      (*(*v13 + 24))(v13);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 8);
    *(a1 + 28) = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      *buf = 67109120;
      LODWORD(v18) = v15;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "UDP::Init bound to port=%d", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v16 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      sub_2393D5320(1, 3, "UDP::Init bound to port=%d", v16);
    }
  }

  return v4;
}

uint64_t sub_2394BF63C(_BYTE *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/inet/InetLayer.h", 82);
  if (a1[8] == 2)
  {
    v4 = (*(*a1 + 16))(a1);
    *a2 = v4;
    if (v4)
    {
      v5 = sub_2393DA0AC();
      v6 = *(v5 + 3) + 1;
      *(v5 + 3) = v6;
      if (*(sub_2393DA0B8() + 3) >= v6)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v7 = sub_2393DA0B8();
        v8 = 0;
        v9 = 0;
        *(v7 + 3) = v6;
      }
    }

    else
    {
      v10 = sub_2393D9044(1u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = "UDP";
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s endpoint pool FULL", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1, 1, "%s endpoint pool FULL", "UDP");
      }

      v8 = 0x5900000000;
      v9 = 193;
    }
  }

  else
  {
    v8 = 0x5300000000;
    v9 = 3;
  }

  return v9 | v8;
}

uint64_t sub_2394BF7D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v4 = *(a3 + 18);
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = 1;
  v9 = v4;
  v10 = v5;
  v11 = 0;
  return (*(**(v3 + 8) + 16))(*(v3 + 8), &v7, a2, 0);
}

void sub_2394BF850()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(1u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "Failed to receive UDP message: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v1 = sub_2393C9138();
    sub_2393D5320(1, 1, "Failed to receive UDP message: %s", v1);
  }
}

uint64_t sub_2394BF940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_23953609C();
  }

  v4 = *(*v3 + 16);

  return v4();
}

_BYTE *sub_2394BF988(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_2393D3B88(result);
    result = (*(**(a1 + 16) + 24))(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  *(a1 + 28) = 0;
  return result;
}

unint64_t sub_2394BF9E4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 16) != 1)
  {
    v7 = 0x6700000000;
    v8 = 47;
    return v8 | v7;
  }

  v14 = v2;
  v15 = v3;
  if (*(a1 + 28) != 1)
  {
    v7 = 0x6800000000;
LABEL_8:
    v8 = 3;
    return v8 | v7;
  }

  if (!*(a1 + 16))
  {
    v7 = 0x6900000000;
    goto LABEL_8;
  }

  v12 = 0;
  sub_2393CFEFC(v10);
  v11 = *a2;
  v13 = *(a2 + 9);
  v12 = *(a2 + 5);
  v6 = sub_2393D3B44(*(a1 + 16));
  v7 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  return v8 | v7;
}

unint64_t sub_2394BFAB8(uint64_t a1, _DWORD *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v6 = sub_2393D9044(1u);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *buf = 136315138;
      v12 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Joining Multicast Group with address %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1, 2, "Joining Multicast Group with address %s", __str);
    }

    v8 = *(a1 + 16);
    (*(*v8 + 8))(buf, v8);
    return sub_2393D3BC4(v8, buf, a2);
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v12 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Leaving Multicast Group with address %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1, 2, "Leaving Multicast Group with address %s", __str);
    }

    v10 = *(a1 + 16);
    (*(*v10 + 8))(buf, v10);
    return sub_2393D3CC4(v10, buf, a2);
  }
}

void *sub_2394BFD08(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);
  return a1;
}