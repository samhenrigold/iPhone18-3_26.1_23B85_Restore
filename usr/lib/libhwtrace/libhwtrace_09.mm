_WORD *sub_298B59914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  if ((*(a4 + 24) - v6) <= 9)
  {
    sub_298B9BCEC(a4, "\t.section\t", 0xAuLL);
    if (*(a1 + 239))
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = strlen((a1 + 224));
    v7 = *(a4 + 32);
    if (v8 <= *(a4 + 24) - v7)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_7:
    sub_298B9BCEC(a4, (a1 + 224), v8);
    goto LABEL_8;
  }

  *(v6 + 8) = 2414;
  *v6 = *"\t.section\t";
  *(a4 + 32) += 10;
  if (!*(a1 + 239))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a4 + 32);
  v8 = 16;
  if (*(a4 + 24) - v7 <= 0xFuLL)
  {
    goto LABEL_7;
  }

LABEL_10:
  memcpy(v7, (a1 + 224), v8);
  v7 = (*(a4 + 32) + v8);
  for (*(a4 + 32) = v7; ; v7 = *(a4 + 32))
  {
LABEL_11:
    if (v7 < *(a4 + 24))
    {
      goto LABEL_14;
    }

    v9 = *(a4 + 16);
    if (v9)
    {
      break;
    }

    if (!*(a4 + 56))
    {
      sub_298B9BB84(a4);
      v10 = *(a1 + 200);
      v11 = *(a1 + 208);
      result = *(a4 + 32);
      if (v11 <= *(a4 + 24) - result)
      {
        goto LABEL_19;
      }

LABEL_15:
      result = sub_298B9BCEC(a4, v10, v11);
      goto LABEL_21;
    }

    sub_298B9AE98(a4);
LABEL_8:
    ;
  }

  *(a4 + 32) = v9;
  sub_298B9BB84(a4);
  v7 = *(a4 + 32);
LABEL_14:
  *(a4 + 32) = v7 + 1;
  *v7 = 44;
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  result = *(a4 + 32);
  if (v11 > *(a4 + 24) - result)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11)
  {
    v13 = v11;
    result = memcpy(result, v10, v11);
    *(a4 + 32) += v13;
  }

LABEL_21:
  v14 = *(a1 + 240);
  if (!v14)
  {
    while (1)
    {
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }

      v20 = *(a4 + 16);
      if (v20)
      {
        break;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }

      result = sub_298B9AE98(a4);
    }

LABEL_92:
    *(a4 + 32) = v20;
    result = sub_298B9BB84(a4);
    v17 = *(a4 + 32);
    goto LABEL_93;
  }

  v15 = &(&off_29EEB51A0)[4 * *(a1 + 240)];
  v16 = v15[1];
  v18 = *(a4 + 24);
  v17 = *(a4 + 32);
  if (!v16)
  {
    if (v17 < v18)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v20 = *(a4 + 16);
      if (v20)
      {
        goto LABEL_92;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }

      result = sub_298B9AE98(a4);
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }
    }
  }

  if (v17 < v18)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v19 = *(a4 + 16);
    if (v19)
    {
      *(a4 + 32) = v19;
      sub_298B9BB84(a4);
      v17 = *(a4 + 32);
LABEL_34:
      *(a4 + 32) = v17 + 1;
      *v17 = 44;
      v21 = *v15;
      v22 = *(a4 + 32);
      if (v16 <= *(a4 + 24) - v22)
      {
        goto LABEL_83;
      }

      goto LABEL_35;
    }

    if (!*(a4 + 56))
    {
      break;
    }

    sub_298B9AE98(a4);
    v17 = *(a4 + 32);
    if (v17 < *(a4 + 24))
    {
      goto LABEL_34;
    }
  }

  sub_298B9BB84(a4);
  v21 = *v15;
  v22 = *(a4 + 32);
  if (v16 > *(a4 + 24) - v22)
  {
LABEL_35:
    result = sub_298B9BCEC(a4, v21, v16);
    v23 = v14 & 0xFFFFFF00;
    if ((v14 & 0xFFFFFF00) != 0)
    {
      goto LABEL_36;
    }

LABEL_84:
    v17 = *(a4 + 32);
    if (!*(a1 + 244))
    {
      goto LABEL_90;
    }

    if (*(a4 + 24) - v17 > 5)
    {
      *(v17 + 4) = 11365;
      *v17 = 1852796460;
      *(a4 + 32) += 6;
    }

    else
    {
      sub_298B9BCEC(a4, ",none,", 6uLL);
    }

    for (result = sub_298B8FC48(a4, *(a1 + 244), 0, 0, 0); ; result = sub_298B9AE98(a4))
    {
      v17 = *(a4 + 32);
LABEL_90:
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }

      v20 = *(a4 + 16);
      if (v20)
      {
        break;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }
    }

    goto LABEL_92;
  }

LABEL_83:
  result = memcpy(v22, v21, v16);
  *(a4 + 32) += v16;
  v23 = v14 & 0xFFFFFF00;
  if ((v14 & 0xFFFFFF00) == 0)
  {
    goto LABEL_84;
  }

LABEL_36:
  v24 = 0;
  v25 = 44;
  while (2)
  {
    if (v24 != 10)
    {
      v28 = &unk_29EEB5480 + 40 * v24;
      v29 = *v28;
      if ((*v28 & v23) == 0)
      {
        goto LABEL_40;
      }

      v30 = *(a4 + 32);
      if (v30 < *(a4 + 24))
      {
LABEL_49:
        *(a4 + 32) = v30 + 1;
        *v30 = v25;
        v23 &= ~v29;
        v32 = *(v28 + 2);
        if (!v32)
        {
          goto LABEL_53;
        }
      }

      else
      {
        while (1)
        {
          v31 = *(a4 + 16);
          if (v31)
          {
            *(a4 + 32) = v31;
            sub_298B9BB84(a4);
            v30 = *(a4 + 32);
            goto LABEL_49;
          }

          if (!*(a4 + 56))
          {
            break;
          }

          sub_298B9AE98(a4);
          v30 = *(a4 + 32);
          if (v30 < *(a4 + 24))
          {
            goto LABEL_49;
          }
        }

        sub_298B9BB84(a4);
        v23 &= ~v29;
        v32 = *(v28 + 2);
        if (!v32)
        {
LABEL_53:
          v36 = *(a4 + 32);
          if (*(a4 + 24) - v36 <= 1uLL)
          {
            sub_298B9BCEC(a4, "<<", 2uLL);
            result = *(a4 + 32);
            v37 = *(v28 + 3);
            v38 = *(v28 + 4);
            if (v38 <= *(a4 + 24) - result)
            {
              goto LABEL_55;
            }

LABEL_60:
            sub_298B9BCEC(a4, v37, v38);
            result = *(a4 + 32);
            if (*(a4 + 24) - result > 1uLL)
            {
              goto LABEL_61;
            }

LABEL_58:
            v26 = a4;
            v33 = ">>";
            v27 = 2;
LABEL_38:
            result = sub_298B9BCEC(v26, v33, v27);
LABEL_39:
            v25 = 43;
LABEL_40:
            ++v24;
            if (!v23)
            {
              break;
            }

            continue;
          }

          *v36 = 15420;
          v40 = *(a4 + 24);
          result = (*(a4 + 32) + 2);
          *(a4 + 32) = result;
          v37 = *(v28 + 3);
          v38 = *(v28 + 4);
          if (v38 > v40 - result)
          {
            goto LABEL_60;
          }

LABEL_55:
          if (v38)
          {
            v39 = v38;
            memcpy(result, v37, v38);
            result = (*(a4 + 32) + v39);
            *(a4 + 32) = result;
          }

          if (*(a4 + 24) - result <= 1uLL)
          {
            goto LABEL_58;
          }

LABEL_61:
          *result = 15934;
          v35 = *(a4 + 32) + 2;
LABEL_62:
          *(a4 + 32) = v35;
          goto LABEL_39;
        }
      }

      v33 = *(v28 + 1);
      v34 = *(a4 + 32);
      if (v32 > *(a4 + 24) - v34)
      {
        v26 = a4;
        v27 = v32;
        goto LABEL_38;
      }

      result = memcpy(v34, v33, v32);
      v35 = *(a4 + 32) + v32;
      goto LABEL_62;
    }

    break;
  }

  v41 = *(a4 + 24);
  v17 = *(a4 + 32);
  if (!*(a1 + 244))
  {
    goto LABEL_78;
  }

  if (v17 < v41)
  {
LABEL_75:
    *(a4 + 32) = v17 + 1;
    *v17 = 44;
  }

  else
  {
    while (1)
    {
      v42 = *(a4 + 16);
      if (v42)
      {
        *(a4 + 32) = v42;
        sub_298B9BB84(a4);
        v17 = *(a4 + 32);
        goto LABEL_75;
      }

      if (!*(a4 + 56))
      {
        break;
      }

      sub_298B9AE98(a4);
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_75;
      }
    }

    sub_298B9BB84(a4);
  }

  for (result = sub_298B8FC48(a4, *(a1 + 244), 0, 0, 0); ; result = sub_298B9AE98(a4))
  {
    v41 = *(a4 + 24);
    v17 = *(a4 + 32);
LABEL_78:
    if (v17 < v41)
    {
      break;
    }

    v20 = *(a4 + 16);
    if (v20)
    {
      goto LABEL_92;
    }

    if (!*(a4 + 56))
    {
      return sub_298B9BB84(a4);
    }
  }

LABEL_93:
  *(a4 + 32) = v17 + 1;
  *v17 = 10;
  return result;
}

void *sub_298B59FBC(void *a1)
{
  *a1 = &unk_2A1F1CE28;
  v2 = a1[19];
  if (v2 != a1 + 21)
  {
    free(v2);
  }

  v3 = a1[15];
  if (v3 != a1 + 17)
  {
    free(v3);
  }

  v4 = a1[14];
  if (v4 != a1 + 13)
  {
    do
    {
      v5 = *v4;
      v6 = v4[1];
      *v6 = *v4;
      *(v5 + 8) = v6;
      *v4 = 0;
      v4[1] = 0;
      sub_298B462C8(v4);
      v4 = v6;
    }

    while (v6 != a1 + 13);
  }

  return a1;
}

void sub_298B5A0C8(uint64_t a1, void **a2, void **a3)
{
  v3 = *(a1 + 8);
  v5 = 261;
  v4[0] = a2;
  v4[1] = a3;
  sub_298B5A0FC(v3, v4);
}

void sub_298B5A0FC(void *a1, void ***a2)
{
  v24[16] = *MEMORY[0x29EDCA608];
  v22 = v24;
  v23 = xmmword_298D1A050;
  v2 = *(a2 + 32);
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  if (*(a2 + 32) > 4u)
  {
    if ((v2 - 5) < 2)
    {
      v6 = a2[1];
      v5 = *a2;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v2 == 1)
  {
LABEL_20:
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v2 == 3)
  {
    if (*a2)
    {
      v10 = a1;
      v11 = *a2;
      v12 = strlen(*a2);
      v5 = v11;
      v6 = v12;
      a1 = v10;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v2 != 4)
  {
LABEL_14:
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v21 = &v22;
    v20 = 0;
    v13 = &unk_2A1F1E0B8;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v8 = a1;
    sub_298B99BA4(a1, &v13, *a2, a2[1], v2);
    sub_298B99BA4(v9, &v13, a2[2], a2[3], *(a2 + 33));
    sub_298B9AE14(&v13);
    a1 = v8;
    v5 = v22;
    v6 = v23;
    goto LABEL_15;
  }

  v3 = *(*a2 + 23);
  v4 = (*a2)[1];
  if (v3 >= 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = **a2;
  }

  if (v3 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

LABEL_15:
  (*(*a1 + 32))(a1, v5, v6);
  if (v22 != v24)
  {
    free(v22);
  }
}

void sub_298B5A2AC(uint64_t a1, unsigned __int8 *a2)
{
  v19[16] = *MEMORY[0x29EDCA608];
  v16 = &v17;
  v17 = v19;
  v18 = xmmword_298D1A050;
  v9 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = &unk_2A1F1E0B8;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_298B439C4(a2, &v8, *(*(*(a1 + 8) + 8) + 144), 0);
  v3 = *(a1 + 8);
  v5 = *v16;
  v4 = v16[1];
  v7 = 261;
  v6[0] = v5;
  v6[1] = v4;
  sub_298B5A0FC(v3, v6);
  sub_298B9AE14(&v8);
  if (v17 != v19)
  {
    free(v17);
  }
}

void sub_298B5A3B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v30[16] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = a3;
    v6 = *(*(*(*(a1 + 8) + 8) + 144) + 248);
    if (v6)
    {
      do
      {
        v7 = *a2;
        v27 = &v28;
        v28 = v30;
        v29 = xmmword_298D1A050;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v19 = &unk_2A1F1E0B8;
        v26 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v8 = strlen(v6);
        if (v8)
        {
          sub_298B9BCEC(&v19, v6, v8);
        }

        sub_298B8FC48(&v19, v7, 0, 0, 0);
        v9 = *(a1 + 8);
        v11 = *v27;
        v10 = v27[1];
        v18 = 261;
        v16 = v11;
        v17 = v10;
        sub_298B5A0FC(v9, &v16);
        sub_298B9AE14(&v19);
        if (v28 != v30)
        {
          free(v28);
        }

        ++a2;
        --v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v12 = *a2;
        v27 = &v28;
        v28 = v30;
        v29 = xmmword_298D1A050;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v19 = &unk_2A1F1E0B8;
        v26 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        sub_298B8FC48(&v19, v12, 0, 0, 0);
        v13 = *(a1 + 8);
        v15 = *v27;
        v14 = v27[1];
        v18 = 261;
        v16 = v15;
        v17 = v14;
        sub_298B5A0FC(v13, &v16);
        sub_298B9AE14(&v19);
        if (v28 != v30)
        {
          free(v28);
        }

        ++a2;
        --v3;
      }

      while (v3);
    }
  }
}

void *sub_298B5A5B8(void *a1)
{
  *a1 = &unk_2A1F1CF50;
  v2 = a1[18];
  if (v2 != a1 + 20)
  {
    free(v2);
  }

  MEMORY[0x29C2945E0](a1[15], 8);
  v3 = a1[10];
  if (v3)
  {
    v4 = a1[11];
    v5 = a1[10];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = sub_298B63450(v6);
          MEMORY[0x29C2945F0](v8, 0x10E0C408997E4E3);
        }
      }

      while (v4 != v3);
      v5 = a1[10];
    }

    a1[11] = v3;
    operator delete(v5);
  }

  v9 = a1[6];
  if (v9 != a1 + 8)
  {
    free(v9);
  }

  v10 = a1[3];
  if (v10)
  {
    v11 = a1[4];
    v12 = a1[3];
    if (v11 == v10)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v14 = *(v11 - 56);
      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = *(v11 - 48);
      v13 = *(v11 - 56);
      if (v15 != v14)
      {
        break;
      }

LABEL_17:
      *(v11 - 48) = v14;
      operator delete(v13);
LABEL_18:
      v11 -= 88;
      if (v11 == v10)
      {
        v12 = a1[3];
LABEL_29:
        a1[4] = v10;
        operator delete(v12);
        goto LABEL_30;
      }
    }

    while (*(v15 - 1) < 0)
    {
      operator delete(*(v15 - 24));
      v16 = *(v15 - 48);
      if (v16)
      {
        goto LABEL_27;
      }

LABEL_22:
      v15 -= 88;
      if (v15 == v14)
      {
        v13 = *(v11 - 56);
        goto LABEL_17;
      }
    }

    v16 = *(v15 - 48);
    if (!v16)
    {
      goto LABEL_22;
    }

LABEL_27:
    *(v15 - 40) = v16;
    operator delete(v16);
    goto LABEL_22;
  }

LABEL_30:
  v17 = a1[2];
  a1[2] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

double sub_298B5A768(uint64_t a1)
{
  v2 = *(a1 + 24);
  for (i = *(a1 + 32); i != v2; i -= 88)
  {
    v5 = *(i - 56);
    if (v5)
    {
      v6 = *(i - 48);
      v4 = *(i - 56);
      if (v6 == v5)
      {
LABEL_3:
        *(i - 48) = v5;
        operator delete(v4);
        continue;
      }

      while (2)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
          v7 = *(v6 - 48);
          if (!v7)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v7 = *(v6 - 48);
          if (!v7)
          {
LABEL_9:
            v6 -= 88;
            if (v6 == v5)
            {
              v4 = *(i - 56);
              goto LABEL_3;
            }

            continue;
          }
        }

        break;
      }

      *(v6 - 40) = v7;
      operator delete(v7);
      goto LABEL_9;
    }
  }

  *(a1 + 32) = v2;
  *(a1 + 104) = 0;
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  while (v9 != v8)
  {
    v11 = *--v9;
    v10 = v11;
    *v9 = 0;
    if (v11)
    {
      v12 = sub_298B63450(v10);
      MEMORY[0x29C2945F0](v12, 0x10E0C408997E4E3);
    }
  }

  *(a1 + 88) = v8;
  v13 = *(a1 + 128);
  if (!v13)
  {
    if (!*(a1 + 132))
    {
      goto LABEL_60;
    }

    v14 = *(a1 + 136);
    if (v14 > 0x40)
    {
      v16 = 0;
      goto LABEL_35;
    }

LABEL_42:
    if (v14)
    {
      v34 = *(a1 + 120);
      v35 = (v14 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v35)
      {
        v36 = v35 + 1;
        v37 = (v35 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v38 = (v34 + 16 * v37);
        v39 = (v34 + 16);
        v40 = v37;
        do
        {
          *(v39 - 2) = -4096;
          *v39 = -4096;
          v39 += 4;
          v40 -= 2;
        }

        while (v40);
        if (v36 == v37)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v38 = *(a1 + 120);
      }

      v41 = (v34 + 16 * v14);
      do
      {
        *v38 = -4096;
        v38 += 2;
      }

      while (v38 != v41);
    }

LABEL_51:
    *(a1 + 128) = 0;
    goto LABEL_60;
  }

  v14 = *(a1 + 136);
  if (v14 <= 4 * v13 || v14 < 0x41)
  {
    goto LABEL_42;
  }

  v15 = 1 << (33 - __clz(v13 - 1));
  if (v15 <= 64)
  {
    v16 = 64;
  }

  else
  {
    v16 = v15;
  }

  if (v16 != v14)
  {
LABEL_35:
    MEMORY[0x29C2945E0](*(a1 + 120), 8);
    if (v16)
    {
      v24 = (4 * v16 / 3u + 1) | ((4 * v16 / 3u + 1) >> 1);
      v25 = v24 | (v24 >> 2) | ((v24 | (v24 >> 2)) >> 4);
      LODWORD(v25) = (((v25 | (v25 >> 8)) >> 16) | v25 | (v25 >> 8)) + 1;
      *(a1 + 136) = v25;
      v26 = operator new(16 * v25, 8uLL);
      *(a1 + 120) = v26;
      *(a1 + 128) = 0;
      v27 = *(a1 + 136);
      if (v27)
      {
        v28 = (v27 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v28)
        {
          v29 = v28 + 1;
          v30 = (v28 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v31 = &v26[2 * v30];
          v32 = v26 + 2;
          v33 = v30;
          do
          {
            *(v32 - 2) = -4096;
            *v32 = -4096;
            v32 += 4;
            v33 -= 2;
          }

          while (v33);
          if (v29 == v30)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v31 = v26;
        }

        v43 = &v26[2 * v27];
        do
        {
          *v31 = -4096;
          v31 += 2;
        }

        while (v31 != v43);
      }
    }

    else
    {
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
    }

    goto LABEL_60;
  }

  *(a1 + 128) = 0;
  v17 = *(a1 + 120);
  v18 = (v14 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v18)
  {
    v19 = v18 + 1;
    v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v21 = (v17 + 16 * v20);
    v22 = (v17 + 16);
    v23 = v20;
    do
    {
      *(v22 - 2) = -4096;
      *v22 = -4096;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v19 == v20)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v21 = *(a1 + 120);
  }

  v42 = (v17 + 16 * v14);
  do
  {
    *v21 = -4096;
    v21 += 2;
  }

  while (v21 != v42);
LABEL_60:
  *(a1 + 152) = 0;
  if (*(a1 + 156))
  {
    v44 = 0;
  }

  else
  {
    sub_298B90A44(a1 + 144, (a1 + 160), 1uLL, 32);
    v44 = *(a1 + 152);
  }

  v45 = (*(a1 + 144) + 32 * v44);
  result = 0.0;
  *v45 = 0u;
  v45[1] = 0u;
  ++*(a1 + 152);
  return result;
}

void sub_298B5AB30(void *a1, unsigned int *a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v4 = a2[2];
  if (((v4 + 63) & 0x1FFFFFFC0) != 0x40)
  {
    if (*(*(a1[1] + 144) + 16))
    {
      v5 = a1;
      v14 = a2[2];
      if (v4 > 0x40)
      {
        operator new[]();
      }

      v13 = *a2;
    }

    else
    {
      v5 = a1;
      sub_298B82264(a2, &v13);
    }

    v7 = a2[2];
    v8 = v7 >> 3;
    __dst = v17;
    v16 = xmmword_298D1A7E0;
    if (v7 < 8)
    {
      v9 = v17;
LABEL_18:
      if (v14 >= 0x41)
      {
        v12 = v13;
      }

      else
      {
        v12 = &v13;
      }

      memcpy(v9, v12, v8);
      (*(*v5 + 496))(v5, __dst, v16);
      if (__dst != v17)
      {
        free(__dst);
      }

      if (v14 >= 0x41)
      {
        if (v13)
        {
          MEMORY[0x29C2945C0](v13, 0x1000C8000313F17);
        }
      }

      return;
    }

    if (v7 < 0x58)
    {
      v10 = 0;
      v9 = v17;
      v11 = v8;
      if (!v8)
      {
LABEL_17:
        *&v16 = v8;
        goto LABEL_18;
      }
    }

    else
    {
      sub_298B90C08(&__dst, v17, v7 >> 3, 1);
      v9 = __dst;
      v10 = v16;
      v11 = v8 - v16;
      if (v8 == v16)
      {
        goto LABEL_17;
      }
    }

    bzero(v9 + v10, v11);
    v9 = __dst;
    goto LABEL_17;
  }

  v6 = *(*a1 + 520);

  v6();
}

uint64_t sub_298B5ADC0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = 0;
  v27[16] = *MEMORY[0x29EDCA608];
  v25 = v27;
  v26 = xmmword_298D1A050;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v23 = &v25;
  v22 = 0;
  v15 = &unk_2A1F1E0B8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    while (1)
    {
      v7 = ++v6 < a3 || a2 > 0x7F;
      v8 = v7 ? a2 | 0x80 : a2;
      v9 = v19;
      if (v19 >= v18)
      {
        break;
      }

LABEL_14:
      v19 = v9 + 1;
      *v9 = v8;
      v7 = a2 > 0x7F;
      a2 >>= 7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      if (v17)
      {
        v19 = v17;
        sub_298B9BB84(&v15);
        v9 = v19;
        goto LABEL_14;
      }

      if (!v22)
      {
        break;
      }

      sub_298B9AE98(&v15);
      v9 = v19;
      if (v19 < v18)
      {
        goto LABEL_14;
      }
    }

    v24 = v8;
    sub_298B9BB84(&v15);
    v7 = a2 > 0x7F;
    a2 >>= 7;
  }

  while (v7);
LABEL_17:
  if (v6 >= a3)
  {
    goto LABEL_35;
  }

  v10 = a3 - 1;
  if (v6 >= v10)
  {
    goto LABEL_31;
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v11 = v19;
        if (v19 >= v18)
        {
          break;
        }

LABEL_22:
        v19 = v11 + 1;
        *v11 = 0x80;
        if (++v6 == v10)
        {
          goto LABEL_31;
        }
      }

      if (v17)
      {
        v19 = v17;
        sub_298B9BB84(&v15);
        v11 = v19;
        goto LABEL_22;
      }

      if (!v22)
      {
        break;
      }

      sub_298B9AE98(&v15);
    }

    v24 = 0x80;
    sub_298B9BB84(&v15);
    ++v6;
  }

  while (v6 != v10);
  while (1)
  {
LABEL_31:
    v12 = v19;
    if (v19 < v18)
    {
      goto LABEL_34;
    }

    if (v17)
    {
      v19 = v17;
      sub_298B9BB84(&v15);
      v12 = v19;
LABEL_34:
      v19 = v12 + 1;
      *v12 = 0;
      goto LABEL_35;
    }

    if (!v22)
    {
      break;
    }

    sub_298B9AE98(&v15);
  }

  v24 = 0;
  sub_298B9BB84(&v15);
LABEL_35:
  (*(*a1 + 496))(a1, *v23, v23[1]);
  v13 = v26;
  sub_298B9AE14(&v15);
  if (v25 != v27)
  {
    free(v25);
  }

  return v13;
}

uint64_t sub_298B5B07C(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x29EDCA608];
  v25 = v27;
  v26 = xmmword_298D1A050;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v23 = &v25;
  v22 = 0;
  v15 = &unk_2A1F1E0B8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    while (1)
    {
      v4 = a2;
      v5 = a2 & 0x7F;
      a2 >>= 7;
      v6 = (v4 & 0x40) != 0 && a2 == -1;
      v7 = !v6;
      v8 = v6 ? 0 : 0x80;
      v9 = v4 >= 0x40 && v7;
      v10 = v4 >= 0x40 ? v8 : 0;
      v11 = v10 | v5;
      v12 = v19;
      if (v19 >= v18)
      {
        break;
      }

LABEL_23:
      v19 = v12 + 1;
      *v12 = v11;
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (v17)
      {
        v19 = v17;
        sub_298B9BB84(&v15);
        v12 = v19;
        goto LABEL_23;
      }

      if (!v22)
      {
        break;
      }

      sub_298B9AE98(&v15);
      v12 = v19;
      if (v19 < v18)
      {
        goto LABEL_23;
      }
    }

    v24 = v11;
    sub_298B9BB84(&v15);
  }

  while (v9);
LABEL_26:
  (*(*a1 + 496))(a1, *v23, v23[1]);
  v13 = v26;
  sub_298B9AE14(&v15);
  if (v25 != v27)
  {
    free(v25);
  }

  return v13;
}

void *sub_298B5B2E4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result[1];
    *(v3 + 264) += 24;
    v4 = *(v3 + 184);
    if (v4)
    {
      v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) - v4 + 24 > *(v3 + 192) - v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v7 = result;
      v8 = *(v3 + 208) >> 7;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      v9 = 4096 << v8;
      v11 = operator new(4096 << v8, 8uLL);
      v10 = *(v3 + 208);
      if (v10 >= *(v3 + 212))
      {
        v13 = v11;
        sub_298B90A44(v3 + 200, (v3 + 216), v10 + 1, 8);
        v11 = v13;
        LODWORD(v10) = *(v3 + 208);
      }

      *(*(v3 + 200) + 8 * v10) = v11;
      ++*(v3 + 208);
      *(v3 + 192) = v11 + v9;
      result = v7;
      v2 = a2;
    }

    else
    {
      v11 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 184) = v11 + 24;
    *v11 = 1;
    *(v11 + 1) = *(v11 + 4) << 24;
    *(v11 + 8) = 0;
    *(v11 + 16) = v2;
    v12 = *(*result + 616);

    return v12();
  }

  return result;
}

void *sub_298B5B460(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result[1];
    *(v3 + 264) += 24;
    v4 = *(v3 + 184);
    if (v4)
    {
      v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) - v4 + 24 > *(v3 + 192) - v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v7 = result;
      v8 = *(v3 + 208) >> 7;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      v9 = 4096 << v8;
      v11 = operator new(4096 << v8, 8uLL);
      v10 = *(v3 + 208);
      if (v10 >= *(v3 + 212))
      {
        v13 = v11;
        sub_298B90A44(v3 + 200, (v3 + 216), v10 + 1, 8);
        v11 = v13;
        LODWORD(v10) = *(v3 + 208);
      }

      *(*(v3 + 200) + 8 * v10) = v11;
      ++*(v3 + 208);
      *(v3 + 192) = v11 + v9;
      result = v7;
      v2 = a2;
    }

    else
    {
      v11 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 184) = v11 + 24;
    *v11 = 1;
    *(v11 + 1) = *(v11 + 4) << 24;
    *(v11 + 8) = 0;
    *(v11 + 16) = v2;
    v12 = *(*result + 616);

    return v12();
  }

  return result;
}

void sub_298B5B5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, unsigned int a9)
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  v13 = *a7;
  v14 = *(a7 + 16);
  v11 = *a8;
  v12 = *(a8 + 16);
  sub_298B2FB9C(v10, a3, a4, a5, a6, a2, &v13, &v11, x8_0, a9);
}

__n128 sub_298B5B660(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5, uint64_t a6, __int128 *a7, unsigned int a8)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v17 = *a6;
  v18 = *(a6 + 16);
  v13 = *a7;
  v14 = *(a7 + 2);
  v9 = *(v8 + 1560);
  if (!v9)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 32);
      if (v11 <= a8)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_7;
      }
    }

    if (v11 >= a8)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v19 = v17;
  v20 = v18;
  v15 = v13;
  v16 = v14;
  sub_298B3053C((v10 + 5), a2, __len, __src, a5, &v19, &v15);
  return result;
}

void *sub_298B5B898(void *result)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(result + 14);
  if (v1)
  {
    v2 = result[3];
    if (v2)
    {
      *(v2 + 88 * *(result[6] + 16 * v1 - 16) + 80) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = result[1];
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v8 = 259;
    *(v4 + 2056) = 1;
    v9 = v6;
    v10[0] = &unk_2A1F1BDB8;
    v10[1] = &v9;
    v10[2] = &v7;
    v11 = v10;
    sub_298B2FFE4(v4, v6, v10);
    result = v11;
    if (v11 == v10)
    {
      return (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void *sub_298B5B9E4(void *result)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(result + 14);
  if (v1)
  {
    v2 = result[3];
    if (v2)
    {
      *(v2 + 88 * *(result[6] + 16 * v1 - 16) + 81) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = result[1];
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v8 = 259;
    *(v4 + 2056) = 1;
    v9 = v6;
    v10[0] = &unk_2A1F1BDB8;
    v10[1] = &v9;
    v10[2] = &v7;
    v11 = v10;
    sub_298B2FFE4(v4, v6, v10);
    result = v11;
    if (v11 == v10)
    {
      return (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

uint64_t sub_298B5BB30(uint64_t result, int a2, int a3, __int16 a4, char a5, char a6, int a7)
{
  v7 = *(result + 8);
  *(v7 + 1576) = a2;
  *(v7 + 1580) = a3;
  *(v7 + 1584) = a4;
  *(v7 + 1586) = a5;
  *(v7 + 1587) = a6;
  *(v7 + 1588) = a7;
  *(v7 + 1592) = 1;
  return result;
}

unint64_t sub_298B5BB58(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 8) + 1560);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  result = v4[5];
  if (!result)
  {
    v7 = *(a1 + 8);
    v8 = v7[18];
    v10 = *(v8 + 88);
    v9 = *(v8 + 96);
    v12 = 773;
    v11[0] = v10;
    v11[1] = v9;
    v11[2] = "line_table_start";
    v13[0] = v11;
    v13[2] = a2;
    v14 = 2306;
    result = sub_298B2D288(v7, v13);
    v4[5] = result;
  }

  return result;
}

uint64_t sub_298B5BD50(uint64_t a1, unsigned int a2, int8x16_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = *(*(a1 + 8) + 176);
  if (!v8)
  {
    operator new();
  }

  return sub_298B273E4(v8, a1, a2, a3, a4, a5, a6, a7);
}

BOOL sub_298B5BE44(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 8) + 176);
  if (!v2)
  {
    operator new();
  }

  v5 = *(v2 + 232);
  v4 = *(v2 + 240);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4);
  if (v6 <= a2)
  {
    v7 = a2 + 1;
    if (v7 <= v6)
    {
      if (v7 < v6)
      {
        v8 = v5 + 48 * v7;
        if (v4 != v8)
        {
          do
          {
            v9 = v4 - 48;
            MEMORY[0x29C2945E0](*(v4 - 24), 4);
            v4 = v9;
          }

          while (v9 != v8);
        }

        *(v2 + 240) = v8;
      }
    }

    else
    {
      sub_298B2B12C(v2 + 232, v7 - v6);
    }
  }

  v10 = (*(v2 + 232) + 48 * a2);
  v11 = *v10;
  if (!*v10)
  {
    *v10 = -1;
  }

  return v11 == 0;
}

BOOL sub_298B5BF84(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *(*(a1 + 8) + 176);
  if (!v7)
  {
    operator new();
  }

  v9 = v7 + 232;
  v8 = *(v7 + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v9 + 8) - v8) >> 4) <= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    if (*(v8 + 48 * a3))
    {
      v11 = *(v10 + 176);
      if (!v11)
      {
        operator new();
      }

      return sub_298B276B4(v11, a2, a3, a4, a5, a6);
    }
  }

  v13 = "parent function id not introduced by .cv_func_id or .cv_inline_site_id";
  v14 = 259;
  *(v10 + 2056) = 1;
  v15 = a7;
  v16[0] = &unk_2A1F1BDB8;
  v16[1] = &v15;
  v16[2] = &v13;
  v17 = v16;
  sub_298B2FFE4(v10, a7, v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  return 1;
}

uint64_t sub_298B5C24C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 8) + 176);
  if (!v4)
  {
    operator new();
  }

  v6 = v4 + 232;
  v5 = *(v4 + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - v5) >> 4) <= a2 || (v7 = v5 + 48 * a2, !*v7))
  {
    v10 = *(a1 + 8);
    v11 = "function id not introduced by .cv_func_id or .cv_inline_site_id";
LABEL_10:
    v14 = v11;
    v15 = 259;
    *(v10 + 2056) = 1;
    v16 = a4;
    v17[0] = &unk_2A1F1BDB8;
    v17[1] = &v16;
    v17[2] = &v14;
    v18 = v17;
    sub_298B2FFE4(v10, a4, v17);
    if (v18 == v17)
    {
      (*(*v18 + 32))(v18);
    }

    else if (v18)
    {
      (*(*v18 + 40))();
    }

    return 0;
  }

  v8 = *(v7 + 16);
  v9 = *(a1 + 152);
  if (v8)
  {
    if (v9 && v8 == *(*(a1 + 144) + 32 * v9 - 32))
    {
      return 1;
    }

    v10 = *(a1 + 8);
    v11 = "all .cv_loc directives for a function must be in the same section";
    goto LABEL_10;
  }

  if (v9)
  {
    v13 = *(*(a1 + 144) + 32 * v9 - 32);
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 16) = v13;
  return 1;
}

void sub_298B5C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 4421;
  v5 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v4, 10);
}

void sub_298B5C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 4419;
  v5 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v4, 10);
}

void sub_298B5C5F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 4417;
  v5 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v4, 6);
}

void sub_298B5C6AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 4418;
  v5 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v4, 6);
}

void *sub_298B5C798(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if ((v4 & 4) == 0)
  {
    if (*a2)
    {
      goto LABEL_10;
    }

    if ((a2[1] & 0x7080) != 0x2000)
    {
      goto LABEL_9;
    }

LABEL_8:
    a2[1] = v4 | 8;
    v5 = a1;
    v6 = a2;
    v7 = sub_298B45440(a2[3]);
    a2 = v6;
    v8 = v7;
    a1 = v5;
    *v6 = v8;
    v4 = v6[1];
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_10:
    v9 = *(a1 + 8);
    if (v4)
    {
      v12 = *(a2 - 1);
      v13 = *v12;
      v10 = v12 + 2;
      v11 = v13;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v17[0] = "symbol '";
    v17[2] = v10;
    v17[3] = v11;
    v18 = 1283;
    v19[0] = v17;
    v19[2] = "' is already defined";
    v20 = 770;
    v21 = a3;
    *(v9 + 2056) = 1;
    v22[0] = &unk_2A1F1BDB8;
    v22[1] = &v21;
    v22[2] = v19;
    v23 = v22;
    sub_298B2FFE4(v9, a3, v22);
    result = v23;
    if (v23 == v22)
    {
      return (*(*v23 + 32))(v23);
    }

    if (v23)
    {
      return (*(*v23 + 40))();
    }

    return result;
  }

  if ((a2[1] & 0x7000) == 0x2000)
  {
    a2[3] = 0;
    v4 &= 0xFFFFFFFFFFFF8FFFLL;
  }

  v4 &= ~4uLL;
  *a2 = 0;
  a2[1] = v4;
  if ((v4 & 0x7080) == 0x2000)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v4 & 0x7000) == 0x2000)
  {
    goto LABEL_10;
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    *a2 = *(*(a1 + 144) + 32 * v15 - 32) + 48;
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *a2 = 48;
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  v16 = *(*result + 16);

  return v16();
}

void sub_298B5CA2C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v17) = 7;
  *(&v17 + 1) = v8;
  v18 = a2;
  v19 = a3;
  v20 = -1;
  v26 = 0;
  v21 = a4;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16);
      v12 = *(v11 + 40);
      if (v12 >= *(v11 + 48))
      {
        *(v11 + 40) = sub_298B2371C((v11 + 32), &v17);
        *(v11 + 56) = a2;
        if (v26 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v11 + 40) = sub_298B23824(v12, &v17) + 88;
        *(v11 + 56) = a2;
        if (v26 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v22;
          if (!v22)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v16 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 288);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v27 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v28 = 259;
  *(v13 + 2056) = 1;
  v29 = v15;
  v30[0] = &unk_2A1F1BDB8;
  v30[1] = &v29;
  v30[2] = &v27;
  v31 = v30;
  sub_298B2FFE4(v13, v15, v30);
  if (v31 != v30)
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    goto LABEL_15;
  }

  (*(*v31 + 32))(v31);
  v16 = v22;
  if (!v22)
  {
    return;
  }

LABEL_16:
  v23 = v16;
  operator delete(v16);
}

void sub_298B5CC40(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v13) = 6;
  *(&v13 + 1) = v4;
  v14 = 0;
  v15 = a2;
  v16 = -1;
  v20 = 0;
  *v17 = 0u;
  v18 = 0u;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v13);
        if (v20 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v13) + 88;
        if (v20 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v17[1];
          if (!v17[1])
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v12 = v17[1];
    if (!v17[1])
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 288);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v21 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v22 = 259;
  *(v9 + 2056) = 1;
  v23 = v11;
  v24[0] = &unk_2A1F1BDB8;
  v24[1] = &v23;
  v24[2] = &v21;
  v25 = v24;
  sub_298B2FFE4(v9, v11, v24);
  if (v25 != v24)
  {
    if (v25)
    {
      (*(*v25 + 40))(v25);
    }

    goto LABEL_15;
  }

  (*(*v25 + 32))(v25);
  v12 = v17[1];
  if (!v17[1])
  {
    return;
  }

LABEL_16:
  *&v18 = v12;
  operator delete(v12);
}

void sub_298B5CE3C(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 9;
  *(&v15 + 1) = v6;
  v16 = 0;
  v17 = a2;
  v18 = -1;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v15);
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v15) + 88;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v20;
    if (!v20)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v26 = 259;
  *(v11 + 2056) = 1;
  v27 = v13;
  v28[0] = &unk_2A1F1BDB8;
  v28[1] = &v27;
  v28[2] = &v25;
  v29 = v28;
  sub_298B2FFE4(v11, v13, v28);
  if (v29 != v28)
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    goto LABEL_15;
  }

  (*(*v29 + 32))(v29);
  v14 = v20;
  if (!v20)
  {
    return;
  }

LABEL_16:
  v21 = v14;
  operator delete(v14);
}

void sub_298B5D044(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 5;
  *(&v15 + 1) = v6;
  v16 = a2;
  v17 = 0xFFFFFFFF00000000;
  v23 = 0;
  v18 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16);
      v10 = *(v9 + 40);
      if (v10 >= *(v9 + 48))
      {
        *(v9 + 40) = sub_298B2371C((v9 + 32), &v15);
        *(v9 + 56) = a2;
        if (v23 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v9 + 40) = sub_298B23824(v10, &v15) + 88;
        *(v9 + 56) = a2;
        if (v23 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v24 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v25 = 259;
  *(v11 + 2056) = 1;
  v26 = v13;
  v27[0] = &unk_2A1F1BDB8;
  v27[1] = &v26;
  v27[2] = &v24;
  v28 = v27;
  sub_298B2FFE4(v11, v13, v27);
  if (v28 != v27)
  {
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    goto LABEL_15;
  }

  (*(*v28 + 32))(v28);
  v14 = v19;
  if (!v19)
  {
    return;
  }

LABEL_16:
  v20 = v14;
  operator delete(v14);
}

void sub_298B5D254(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v10 = (*(*a1 + 80))(a1);
  LODWORD(v19) = 4;
  *(&v19 + 1) = v10;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  *v24 = 0u;
  *__p = 0u;
  v26 = 0u;
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = v12 + 88 * *(*(a1 + 48) + 16 * v11 - 16);
      v14 = *(v13 + 40);
      if (v14 >= *(v13 + 48))
      {
        *(v13 + 40) = sub_298B2371C((v13 + 32), &v19);
        *(v13 + 56) = a2;
        if (SHIBYTE(v26) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v13 + 40) = sub_298B23824(v14, &v19) + 88;
        *(v13 + 56) = a2;
        if (SHIBYTE(v26) < 0)
        {
LABEL_9:
          operator delete(__p[1]);
          v18 = v24[0];
          if (!v24[0])
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v18 = v24[0];
    if (!v24[0])
    {
      return;
    }

    goto LABEL_16;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 288);
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v27 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v28 = 259;
  *(v15 + 2056) = 1;
  v29 = v17;
  v30[0] = &unk_2A1F1BDB8;
  v30[1] = &v29;
  v30[2] = &v27;
  v31 = v30;
  sub_298B2FFE4(v15, v17, v30);
  if (v31 != v30)
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    goto LABEL_15;
  }

  (*(*v31 + 32))(v31);
  v18 = v24[0];
  if (!v24[0])
  {
    return;
  }

LABEL_16:
  v24[1] = v18;
  operator delete(v18);
}

void sub_298B5D474(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v17) = 3;
  *(&v17 + 1) = v8;
  v18 = a2;
  v19 = a3;
  v20 = -1;
  v26 = 0;
  v21 = a4;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v17);
        if (v26 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v17) + 88;
        if (v26 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v22;
          if (!v22)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v16 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 288);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v27 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v28 = 259;
  *(v13 + 2056) = 1;
  v29 = v15;
  v30[0] = &unk_2A1F1BDB8;
  v30[1] = &v29;
  v30[2] = &v27;
  v31 = v30;
  sub_298B2FFE4(v13, v15, v30);
  if (v31 != v30)
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    goto LABEL_15;
  }

  (*(*v31 + 32))(v31);
  v16 = v22;
  if (!v22)
  {
    return;
  }

LABEL_16:
  v23 = v16;
  operator delete(v16);
}

void sub_298B5D680(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v17) = 8;
  *(&v17 + 1) = v8;
  v18 = a2;
  v19 = a3;
  v20 = -1;
  v26 = 0;
  v21 = a4;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v17);
        if (v26 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v17) + 88;
        if (v26 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v22;
          if (!v22)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v16 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 288);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v27 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v28 = 259;
  *(v13 + 2056) = 1;
  v29 = v15;
  v30[0] = &unk_2A1F1BDB8;
  v30[1] = &v29;
  v30[2] = &v27;
  v31 = v30;
  sub_298B2FFE4(v13, v15, v30);
  if (v31 != v30)
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    goto LABEL_15;
  }

  (*(*v31 + 32))(v31);
  v16 = v22;
  if (!v22)
  {
    return;
  }

LABEL_16:
  v23 = v16;
  operator delete(v16);
}

void *sub_298B5D88C(void *result, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(result + 14);
  if (v3)
  {
    v4 = result[3];
    if (v4)
    {
      v5 = v4 + 88 * *(result[6] + 16 * v3 - 16);
      *(v5 + 16) = a2;
      *(v5 + 60) = a3;
    }
  }

  else
  {
    v6 = result;
    v7 = result[1];
    v8 = *(v6 + 288);
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v11 = 259;
    *(v7 + 2056) = 1;
    v12 = v9;
    v13[0] = &unk_2A1F1BDB8;
    v13[1] = &v12;
    v13[2] = &v10;
    v14 = v13;
    sub_298B2FFE4(v7, v9, v13);
    result = v14;
    if (v14 == v13)
    {
      return (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      return (*(*v14 + 40))();
    }
  }

  return result;
}

void *sub_298B5D9D8(void *result, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(result + 14);
  if (v3)
  {
    v4 = result[3];
    if (v4)
    {
      v5 = v4 + 88 * *(result[6] + 16 * v3 - 16);
      *(v5 + 24) = a2;
      *(v5 + 64) = a3;
    }
  }

  else
  {
    v6 = result;
    v7 = result[1];
    v8 = *(v6 + 288);
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v11 = 259;
    *(v7 + 2056) = 1;
    v12 = v9;
    v13[0] = &unk_2A1F1BDB8;
    v13[1] = &v12;
    v13[2] = &v10;
    v14 = v13;
    sub_298B2FFE4(v7, v9, v13);
    result = v14;
    if (v14 == v13)
    {
      return (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      return (*(*v14 + 40))();
    }
  }

  return result;
}

void sub_298B5DB24(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v13) = 1;
  *(&v13 + 1) = v4;
  v14 = 0;
  v15 = -1;
  v21 = 0;
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v13);
        if (v21 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v13) + 88;
        if (v21 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v17;
          if (!v17)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v12 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 288);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v22 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v23 = 259;
  *(v9 + 2056) = 1;
  v24 = v11;
  v25[0] = &unk_2A1F1BDB8;
  v25[1] = &v24;
  v25[2] = &v22;
  v26 = v25;
  sub_298B2FFE4(v9, v11, v25);
  if (v26 != v25)
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    goto LABEL_15;
  }

  (*(*v26 + 32))(v26);
  v12 = v17;
  if (!v17)
  {
    return;
  }

LABEL_16:
  v18 = v12;
  operator delete(v12);
}

void sub_298B5DD1C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v13) = 2;
  *(&v13 + 1) = v4;
  v14 = 0;
  v15 = -1;
  v21 = 0;
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v13);
        if (v21 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v13) + 88;
        if (v21 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v17;
          if (!v17)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v12 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 288);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v22 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v23 = 259;
  *(v9 + 2056) = 1;
  v24 = v11;
  v25[0] = &unk_2A1F1BDB8;
  v25[1] = &v24;
  v25[2] = &v22;
  v26 = v25;
  sub_298B2FFE4(v9, v11, v25);
  if (v26 != v25)
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    goto LABEL_15;
  }

  (*(*v26 + 32))(v26);
  v12 = v17;
  if (!v17)
  {
    return;
  }

LABEL_16:
  v18 = v12;
  operator delete(v12);
}

void sub_298B5DF14(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 0;
  *(&v15 + 1) = v6;
  v16 = a2;
  v17 = 0xFFFFFFFF00000000;
  v23 = 0;
  v18 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v15);
        if (v23 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v15) + 88;
        if (v23 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v24 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v25 = 259;
  *(v11 + 2056) = 1;
  v26 = v13;
  v27[0] = &unk_2A1F1BDB8;
  v27[1] = &v26;
  v27[2] = &v24;
  v28 = v27;
  sub_298B2FFE4(v11, v13, v27);
  if (v28 != v27)
  {
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    goto LABEL_15;
  }

  (*(*v28 + 32))(v28);
  v14 = v19;
  if (!v19)
  {
    return;
  }

LABEL_16:
  v20 = v14;
  operator delete(v14);
}

void sub_298B5E118(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 11;
  *(&v15 + 1) = v6;
  v16 = a2;
  v17 = 0xFFFFFFFF00000000;
  v23 = 0;
  v18 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v15);
        if (v23 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v15) + 88;
        if (v23 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v24 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v25 = 259;
  *(v11 + 2056) = 1;
  v26 = v13;
  v27[0] = &unk_2A1F1BDB8;
  v27[1] = &v26;
  v27[2] = &v24;
  v28 = v27;
  sub_298B2FFE4(v11, v13, v27);
  if (v28 != v27)
  {
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    goto LABEL_15;
  }

  (*(*v28 + 32))(v28);
  v14 = v19;
  if (!v19)
  {
    return;
  }

LABEL_16:
  v20 = v14;
  operator delete(v14);
}

void sub_298B5E320(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v7 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 10;
  *(&v16 + 1) = v7;
  v17 = 0;
  v18 = -1;
  v19 = a4;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v24 = 0;
  LOBYTE(__p) = 0;
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = (v9 + 88 * *(*(a1 + 48) + 16 * v8 - 16));
      v11 = v10[5];
      if (v11 >= v10[6])
      {
        v10[5] = sub_298B2371C(v10 + 4, &v16);
        if (v24 < 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10[5] = sub_298B23824(v11, &v16) + 88;
        if (v24 < 0)
        {
LABEL_12:
          operator delete(__p);
          v15 = v20;
          if (!v20)
          {
            return;
          }

          goto LABEL_19;
        }
      }
    }

LABEL_18:
    v15 = v20;
    if (!v20)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 288);
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v26 = 259;
  *(v12 + 2056) = 1;
  v27 = v14;
  v28[0] = &unk_2A1F1BDB8;
  v28[1] = &v27;
  v28[2] = &v25;
  v29 = v28;
  sub_298B2FFE4(v12, v14, v28);
  if (v29 != v28)
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    goto LABEL_18;
  }

  (*(*v29 + 32))(v29);
  v15 = v20;
  if (v20)
  {
LABEL_19:
    v21 = v15;
    operator delete(v15);
  }
}

void sub_298B5E568(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 16;
  *(&v15 + 1) = v6;
  v16 = 0;
  v17 = a2;
  v18 = -1;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v15);
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v15) + 88;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v20;
    if (!v20)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v26 = 259;
  *(v11 + 2056) = 1;
  v27 = v13;
  v28[0] = &unk_2A1F1BDB8;
  v28[1] = &v27;
  v28[2] = &v25;
  v29 = v28;
  sub_298B2FFE4(v11, v13, v28);
  if (v29 != v28)
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    goto LABEL_15;
  }

  (*(*v29 + 32))(v29);
  v14 = v20;
  if (!v20)
  {
    return;
  }

LABEL_16:
  v21 = v14;
  operator delete(v14);
}

void *sub_298B5E770(void *result)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(result + 14);
  if (v1)
  {
    v2 = result[3];
    if (v2)
    {
      *(v2 + 88 * *(result[6] + 16 * v1 - 16) + 72) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = result[1];
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v8 = 259;
    *(v4 + 2056) = 1;
    v9 = v6;
    v10[0] = &unk_2A1F1BDB8;
    v10[1] = &v9;
    v10[2] = &v7;
    v11 = v10;
    sub_298B2FFE4(v4, v6, v10);
    result = v11;
    if (v11 == v10)
    {
      return (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void sub_298B5E8BC(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v15) = 12;
  *(&v15 + 1) = v6;
  v16 = a2;
  v17 = 0xFFFFFFFF00000000;
  v23 = 0;
  v18 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v15);
        if (v23 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v15) + 88;
        if (v23 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v14 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v24 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v25 = 259;
  *(v11 + 2056) = 1;
  v26 = v13;
  v27[0] = &unk_2A1F1BDB8;
  v27[1] = &v26;
  v27[2] = &v24;
  v28 = v27;
  sub_298B2FFE4(v11, v13, v27);
  if (v28 != v27)
  {
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    goto LABEL_15;
  }

  (*(*v28 + 32))(v28);
  v14 = v19;
  if (!v19)
  {
    return;
  }

LABEL_16:
  v20 = v14;
  operator delete(v14);
}

void sub_298B5EAC4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v17) = 13;
  *(&v17 + 1) = v8;
  v18 = a2;
  v19 = a3;
  v20 = -1;
  v21 = a4;
  *v22 = 0u;
  *__p = 0u;
  v24 = 0u;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v17);
        if (SHIBYTE(v24) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v17) + 88;
        if (SHIBYTE(v24) < 0)
        {
LABEL_9:
          operator delete(__p[1]);
          v16 = v22[0];
          if (!v22[0])
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v16 = v22[0];
    if (!v22[0])
    {
      return;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 288);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v26 = 259;
  *(v13 + 2056) = 1;
  v27 = v15;
  v28[0] = &unk_2A1F1BDB8;
  v28[1] = &v27;
  v28[2] = &v25;
  v29 = v28;
  sub_298B2FFE4(v13, v15, v28);
  if (v29 != v28)
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    goto LABEL_15;
  }

  (*(*v29 + 32))(v29);
  v16 = v22[0];
  if (!v22[0])
  {
    return;
  }

LABEL_16:
  v22[1] = v16;
  operator delete(v16);
}

void sub_298B5ECD4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v13) = 14;
  *(&v13 + 1) = v4;
  v14 = 0;
  v15 = -1;
  v21 = 0;
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v13);
        if (v21 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v13) + 88;
        if (v21 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v17;
          if (!v17)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v12 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 288);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v22 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v23 = 259;
  *(v9 + 2056) = 1;
  v24 = v11;
  v25[0] = &unk_2A1F1BDB8;
  v25[1] = &v24;
  v25[2] = &v22;
  v26 = v25;
  sub_298B2FFE4(v9, v11, v25);
  if (v26 != v25)
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    goto LABEL_15;
  }

  (*(*v26 + 32))(v26);
  v12 = v17;
  if (!v17)
  {
    return;
  }

LABEL_16:
  v18 = v12;
  operator delete(v12);
}

void sub_298B5EECC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v13) = 15;
  *(&v13 + 1) = v4;
  v14 = 0;
  v15 = -1;
  v21 = 0;
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v13);
        if (v21 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v13) + 88;
        if (v21 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v17;
          if (!v17)
          {
            return;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v12 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 288);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v22 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v23 = 259;
  *(v9 + 2056) = 1;
  v24 = v11;
  v25[0] = &unk_2A1F1BDB8;
  v25[1] = &v24;
  v25[2] = &v22;
  v26 = v25;
  sub_298B2FFE4(v9, v11, v25);
  if (v26 != v25)
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    goto LABEL_15;
  }

  (*(*v26 + 32))(v26);
  v12 = v17;
  if (!v17)
  {
    return;
  }

LABEL_16:
  v18 = v12;
  operator delete(v12);
}

void *sub_298B5F0C4(void *result, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(result + 14);
  if (v2)
  {
    v3 = result[3];
    if (v3)
    {
      *(v3 + 88 * *(result[6] + 16 * v2 - 16) + 76) = a2;
    }
  }

  else
  {
    v4 = result;
    v5 = result[1];
    v6 = *(v4 + 288);
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v9 = 259;
    *(v5 + 2056) = 1;
    v10 = v7;
    v11[0] = &unk_2A1F1BDB8;
    v11[1] = &v10;
    v11[2] = &v8;
    v12 = v11;
    sub_298B2FFE4(v5, v7, v11);
    result = v12;
    if (v12 == v11)
    {
      return (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t sub_298B5F20C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v8 = *(a1 + 104);
    if (v8 && !*(v8 + 8))
    {
      return v8;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v10 = v7;
  v11 = 259;
  *(v3 + 2056) = 1;
  v12 = a2;
  v13[0] = &unk_2A1F1BDB8;
  v13[1] = &v12;
  v13[2] = &v10;
  v14 = v13;
  sub_298B2FFE4(v3, a2, v13);
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return 0;
}

void sub_298B5F358(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) == 4)
  {
    v6 = *(v5 + 428);
    if (v6 != 6 && v6 != 0)
    {
      v8 = a1[13];
      if (v8 && !*(v8 + 8))
      {
        v9[0] = "Starting a function before ending the previous one!";
        v10 = 259;
        *(v4 + 2056) = 1;
        v11 = a3;
        v12 = &unk_2A1F1BDB8;
        v13 = &v11;
        v14 = v9;
        v15 = &v12;
        sub_298B2FFE4(v4, a3, &v12);
        if (v15 == &v12)
        {
          (*(*v15 + 4))(v15);
        }

        else if (v15)
        {
          (*(*v15 + 5))();
        }
      }

      (*(*a1 + 80))(a1, a2);
      a1[14] = (a1[11] - a1[10]) >> 3;
      operator new();
    }
  }

  v9[0] = ".seh_* directives are not supported on this target";
  v10 = 259;
  *(v4 + 2056) = 1;
  v11 = a3;
  v12 = &unk_2A1F1BDB8;
  v13 = &v11;
  v14 = v9;
  v15 = &v12;
  sub_298B2FFE4(v4, a3, &v12);
  if (v15 == &v12)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }
}

void **sub_298B5F718(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v9 = a1[13];
  if (!v9 || v9[1])
  {
    v7 = ".seh_ directive must appear within an active frame";
LABEL_8:
    v13[0] = v7;
    v14 = 259;
    *(v3 + 2056) = 1;
    v15 = a2;
    v16 = &unk_2A1F1BDB8;
    v17 = &v15;
    v18 = v13;
    v19 = &v16;
    sub_298B2FFE4(v3, a2, &v16);
    result = v19;
    if (v19 == &v16)
    {
      return (*(*v19 + 4))(v19);
    }

    if (v19)
    {
      return (*(*v19 + 5))();
    }

    return result;
  }

  if (v9[10])
  {
    v13[0] = "Not all chained regions terminated!";
    v14 = 259;
    *(v3 + 2056) = 1;
    v15 = a2;
    v16 = &unk_2A1F1BDB8;
    v17 = &v15;
    v18 = v13;
    v19 = &v16;
    sub_298B2FFE4(v3, a2, &v16);
    if (v19 == &v16)
    {
      (*(*v19 + 4))(v19);
    }

    else if (v19)
    {
      (*(*v19 + 5))();
    }
  }

  v10 = (*(*a1 + 80))(a1, a2);
  v9[1] = v10;
  if (!v9[2])
  {
    v9[2] = v10;
  }

  v11 = a1[14];
  for (i = (a1[11] - a1[10]) >> 3; i != v11; ++v11)
  {
    (*(*a1 + 16))(a1, *(a1[10] + 8 * v11));
  }

  return (*(*a1 + 168))(a1, v9[7], 0);
}

void **sub_298B5FA08(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v9 = a1[13];
  if (!v9 || v9[1])
  {
    v7 = ".seh_ directive must appear within an active frame";
LABEL_8:
    v10[0] = v7;
    v11 = 259;
    *(v3 + 2056) = 1;
    v12 = a2;
    v13 = &unk_2A1F1BDB8;
    v14 = &v12;
    v15 = v10;
    v16 = &v13;
    sub_298B2FFE4(v3, a2, &v13);
    result = v16;
    if (v16 == &v13)
    {
      return (*(*v16 + 4))(v16);
    }

    if (v16)
    {
      return (*(*v16 + 5))();
    }

    return result;
  }

  if (v9[10])
  {
    v10[0] = "Not all chained regions terminated!";
    v11 = 259;
    *(v3 + 2056) = 1;
    v12 = a2;
    v13 = &unk_2A1F1BDB8;
    v14 = &v12;
    v15 = v10;
    v16 = &v13;
    sub_298B2FFE4(v3, a2, &v13);
    if (v16 == &v13)
    {
      (*(*v16 + 4))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 5))();
    }
  }

  result = (*(*a1 + 80))(a1, a2);
  v9[2] = result;
  return result;
}

void sub_298B5FC68(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v8 = a1[13];
    if (v8 && !*(v8 + 8))
    {
      (*(*a1 + 80))(a1, a2);
      operator new();
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v9 = v7;
  v10 = 259;
  *(v3 + 2056) = 1;
  v11 = a2;
  v12[0] = &unk_2A1F1BDB8;
  v12[1] = &v11;
  v12[2] = &v9;
  v13 = v12;
  sub_298B2FFE4(v3, a2, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }
}

void *sub_298B5FF6C(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v9 = a1[13];
    if (v9 && !*(v9 + 8))
    {
      if (*(v9 + 80))
      {
        result = (*(*a1 + 80))(a1, a2);
        *(v9 + 8) = result;
        a1[13] = *(v9 + 80);
        return result;
      }

      v7 = "End of a chained region outside a chained region!";
    }

    else
    {
      v7 = ".seh_ directive must appear within an active frame";
    }
  }

  v10 = v7;
  v11 = 259;
  *(v3 + 2056) = 1;
  v12 = a2;
  v13[0] = &unk_2A1F1BDB8;
  v13[1] = &v12;
  v13[2] = &v10;
  v14 = v13;
  sub_298B2FFE4(v3, a2, v13);
  result = v14;
  if (v14 == v13)
  {
    return (*(*v14 + 32))(v14);
  }

  if (v14)
  {
    return (*(*v14 + 40))();
  }

  return result;
}

void **sub_298B60128(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  result = *(a1 + 8);
  v7 = result[18];
  if (v7[105] != 4 || ((v8 = v7[107], v8 != 6) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v10 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v11 = *(a1 + 104);
  if (!v11 || *(v11 + 8))
  {
    v10 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if (*(v11 + 80))
  {
    v10 = "Chained unwind areas can't have handlers!";
LABEL_8:
    v14[0] = v10;
    v15 = 259;
    *(result + 2056) = 1;
    v16 = a5;
    v17 = &unk_2A1F1BDB8;
    v18 = &v16;
    v19 = v14;
    v20 = &v17;
    sub_298B2FFE4(result, a5, &v17);
    result = v20;
    if (v20 == &v17)
    {
      return (*(*v20 + 4))(v20);
    }

    if (v20)
    {
      return (*(*v20 + 5))();
    }

    return result;
  }

  *(v11 + 24) = a2;
  if ((a3 & 1) == 0 && (a4 & 1) == 0)
  {
    v12 = a3;
    v13 = a4;
    v14[0] = "Don't know what kind of handler this is!";
    v15 = 259;
    *(result + 2056) = 1;
    v16 = a5;
    v17 = &unk_2A1F1BDB8;
    v18 = &v16;
    v19 = v14;
    v20 = &v17;
    sub_298B2FFE4(result, a5, &v17);
    result = v20;
    if (v20 == &v17)
    {
      result = (*(*v20 + 4))(v20);
    }

    else if (v20)
    {
      result = (*(*v20 + 5))();
    }

    a4 = v13;
    a3 = v12;
  }

  if (a3)
  {
    *(v11 + 72) = 1;
  }

  if (a4)
  {
    *(v11 + 73) = 1;
  }

  return result;
}

void *sub_298B60378(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  result = *(a1 + 8);
  v4 = result[18];
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v8 = *(a1 + 104);
    if (v8 && !*(v8 + 8))
    {
      if (!*(v8 + 80))
      {
        return result;
      }

      v7 = "Chained unwind areas can't have handlers!";
    }

    else
    {
      v7 = ".seh_ directive must appear within an active frame";
    }
  }

  v9 = v7;
  v10 = 259;
  *(result + 2056) = 1;
  v11 = a2;
  v12[0] = &unk_2A1F1BDB8;
  v12[1] = &v11;
  v12[2] = &v9;
  v13 = v12;
  sub_298B2FFE4(result, a2, v12);
  result = v13;
  if (v13 == v12)
  {
    return (*(*v13 + 32))(v13);
  }

  if (v13)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t sub_298B604D4(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1[20] + 24) == a4)
  {
    return a3;
  }

  v4 = *(a4 + 228);
  if (v4 == -1)
  {
    v4 = (*a2)++;
    *(a4 + 228) = v4;
    if ((*(a4 + 225) & 0x10) == 0)
    {
LABEL_4:
      v5 = 0;
      if (v4 == -1)
      {
        return a3;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a4 + 225) & 0x10) == 0)
  {
    goto LABEL_4;
  }

  if (*(a1[18] + 21))
  {
    v5 = *(a4 + 232);
    if (v4 == -1 && v5 == 0)
    {
      return a3;
    }

LABEL_12:
    v7 = *(a3 + 224);
    if (!v5)
    {
      return sub_298B2EF40(a1, *(a3 + 200), *(a3 + 208), v7, *(a3 + 220), "", 0, 0, v4, 0);
    }

    if (*(v5 + 8))
    {
      v19 = *(v5 - 8);
      v20 = *v19;
      v8 = v19 + 2;
      v9 = v20;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    return sub_298B2EF40(a1, *(a3 + 200), *(a3 + 208), v7 | 0x1000u, *(a3 + 220), v8, v9, 5u, v4, 0);
  }

  v11 = *(a3 + 200);
  v12 = *(a3 + 208);
  v13 = a3;
  v26 = 773;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = "$";
  v24 = *(a4 + 200);
  LOBYTE(__s2[0]) = 36;
  v14 = sub_298B96A54(&v24, __s2, 1uLL, 0);
  if (v14 == -1)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    if (*(&v24 + 1) >= (v14 + 1))
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = *(&v24 + 1);
    }

    v16 = v24 + v15;
    v17 = *(&v24 + 1) - v15;
  }

  __s2[0] = v25;
  __s2[2] = v16;
  __s2[3] = v17;
  v28 = 1282;
  sub_298B996A4(__s2, v29);
  if (v30 >= 0)
  {
    v21 = v29;
  }

  else
  {
    v21 = v29[0];
  }

  if (v30 >= 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = v29[1];
  }

  a3 = sub_298B2EF40(a1, v21, v22, *(v13 + 224) | 0x1000u, *(v13 + 220), "", 0, 2u, 0xFFFFFFFF, 0);
  if ((v30 & 0x80000000) == 0)
  {
    return a3;
  }

  v23 = a3;
  operator delete(v29[0]);
  return v23;
}

void sub_298B60718(void *a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) != 4 || ((v6 = *(v5 + 428), v6 != 6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v9 = a1[13];
  if (!v9 || *(v9 + 8))
  {
    v8 = ".seh_ directive must appear within an active frame";
LABEL_8:
    *&v23 = v8;
    v25 = 259;
    *(v4 + 2056) = 1;
    v26 = a3;
    v27[0] = &unk_2A1F1BDB8;
    v27[1] = &v26;
    v27[2] = &v23;
    v28 = v27;
    sub_298B2FFE4(v4, a3, v27);
    if (v28 == v27)
    {
      (*(*v28 + 32))(v28);
    }

    else if (v28)
    {
      (*(*v28 + 40))();
    }

    return;
  }

  v11 = (*(*a1 + 80))(a1);
  v12 = *(a1[1] + 152);
  v13 = *(v12 + 160);
  v14 = *(v12 + 176);
  v15 = (v13 + 8 * v14);
  if (!v14)
  {
    goto LABEL_22;
  }

  v16 = a2;
  v17 = v14 - 1;
  LODWORD(v18) = v17 & (37 * a2);
  v19 = (v13 + 8 * v18);
  v20 = *v19;
  if (*v19 != a2)
  {
    v21 = 1;
    while (v20 != -1)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v20 = *(v13 + 8 * v18);
      if (v20 == a2)
      {
        v19 = (v13 + 8 * v18);
        goto LABEL_23;
      }
    }

LABEL_22:
    v19 = v15;
LABEL_23:
    v16 = a2;
  }

  if (v19 != v15)
  {
    v16 = v19[1];
  }

  *&v23 = v11;
  DWORD2(v23) = -1;
  HIDWORD(v23) = v16;
  v24 = 0;
  sub_298B60964(v9 + 88, &v23);
}

void sub_298B60964(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
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

    sub_298ADDDA0();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_298B60AB0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) != 4 || ((v7 = *(v6 + 428), v7 != 6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v9 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v10 = a1[13];
  if (!v10 || *(v10 + 8))
  {
    v9 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if ((*(v10 + 76) & 0x80000000) == 0)
  {
    v9 = "frame register and offset can be set at most once";
    goto LABEL_8;
  }

  if ((a3 & 0xF) != 0)
  {
    v9 = "offset is not a multiple of 16";
    goto LABEL_8;
  }

  if (a3 >= 0xF1)
  {
    v9 = "frame offset must be less than or equal to 240";
LABEL_8:
    *&v28 = v9;
    v30 = 259;
    *(v5 + 2056) = 1;
    v31 = a4;
    v32[0] = &unk_2A1F1BDB8;
    v32[1] = &v31;
    v32[2] = &v28;
    v33 = v32;
    sub_298B2FFE4(v5, a4, v32);
    if (v33 == v32)
    {
      (*(*v33 + 32))(v33);
    }

    else if (v33)
    {
      (*(*v33 + 40))();
    }

    return;
  }

  v13 = (*(*a1 + 80))(a1);
  v14 = *(a1[1] + 152);
  v15 = *(v14 + 160);
  v16 = *(v14 + 176);
  v17 = (v15 + 8 * v16);
  if (!v16)
  {
    goto LABEL_28;
  }

  v18 = a2;
  v19 = v16 - 1;
  LODWORD(v20) = v19 & (37 * a2);
  v21 = (v15 + 8 * v20);
  v22 = *v21;
  if (*v21 != a2)
  {
    v23 = 1;
    while (v22 != -1)
    {
      v24 = v20 + v23++;
      v20 = v24 & v19;
      v22 = *(v15 + 8 * v20);
      if (v22 == a2)
      {
        v21 = (v15 + 8 * v20);
        goto LABEL_29;
      }
    }

LABEL_28:
    v21 = v17;
LABEL_29:
    v18 = a2;
  }

  if (v21 != v17)
  {
    v18 = v21[1];
  }

  *&v28 = v13;
  *(&v28 + 1) = __PAIR64__(v18, a3);
  v29 = 3;
  v25 = *(v10 + 88);
  v26 = *(v10 + 96);
  v27 = v10 + 88;
  *(v27 - 12) = -1431655765 * ((v26 - v25) >> 3);
  sub_298B60964(v27, &v28);
}

void sub_298B60D54(void *a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) != 4 || ((v6 = *(v5 + 428), v6 != 6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v9 = a1[13];
  if (!v9 || *(v9 + 8))
  {
    v8 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if (!a2)
  {
    v8 = "stack allocation size must be non-zero";
LABEL_8:
    *&v13 = v8;
    v15 = 259;
    *(v4 + 2056) = 1;
    v16 = a3;
    v17[0] = &unk_2A1F1BDB8;
    v17[1] = &v16;
    v17[2] = &v13;
    v18 = v17;
    sub_298B2FFE4(v4, a3, v17);
    if (v18 == v17)
    {
      (*(*v18 + 32))(v18);
    }

    else if (v18)
    {
      (*(*v18 + 40))();
    }

    return;
  }

  if ((a2 & 7) != 0)
  {
    v8 = "stack allocation size is not a multiple of 8";
    goto LABEL_8;
  }

  v11 = (*(*a1 + 80))(a1);
  if (a2 > 0x80)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  *&v13 = v11;
  *(&v13 + 1) = a2 | 0xFFFFFFFF00000000;
  v14 = v12;
  sub_298B60964(v9 + 88, &v13);
}

void sub_298B60F48(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) != 4 || ((v7 = *(v6 + 428), v7 != 6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v9 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v10 = a1[13];
  if (!v10 || *(v10 + 8))
  {
    v9 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if ((a3 & 7) != 0)
  {
    v9 = "register save offset is not 8 byte aligned";
LABEL_8:
    *&v26 = v9;
    v28 = 259;
    *(v5 + 2056) = 1;
    v29 = a4;
    v30[0] = &unk_2A1F1BDB8;
    v30[1] = &v29;
    v30[2] = &v26;
    v31 = v30;
    sub_298B2FFE4(v5, a4, v30);
    if (v31 == v30)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))();
    }

    return;
  }

  v13 = (*(*a1 + 80))(a1);
  v14 = *(a1[1] + 152);
  v15 = *(v14 + 160);
  v16 = *(v14 + 176);
  v17 = (v15 + 8 * v16);
  if (!v16)
  {
    goto LABEL_24;
  }

  v18 = a2;
  v19 = v16 - 1;
  LODWORD(v20) = v19 & (37 * a2);
  v21 = (v15 + 8 * v20);
  v22 = *v21;
  if (*v21 != a2)
  {
    v23 = 1;
    while (v22 != -1)
    {
      v24 = v20 + v23++;
      v20 = v24 & v19;
      v22 = *(v15 + 8 * v20);
      if (v22 == a2)
      {
        v21 = (v15 + 8 * v20);
        goto LABEL_25;
      }
    }

LABEL_24:
    v21 = v17;
LABEL_25:
    v18 = a2;
  }

  if (v21 != v17)
  {
    v18 = v21[1];
  }

  *&v26 = v13;
  if (a3 <= 0x7FFF8)
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  *(&v26 + 1) = __PAIR64__(v18, a3);
  v27 = v25;
  sub_298B60964(v10 + 88, &v26);
}

void sub_298B611B4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) != 4 || ((v7 = *(v6 + 428), v7 != 6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v9 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v10 = a1[13];
  if (!v10 || *(v10 + 8))
  {
    v9 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if ((a3 & 0xF) != 0)
  {
    v9 = "offset is not a multiple of 16";
LABEL_8:
    *&v26 = v9;
    v28 = 259;
    *(v5 + 2056) = 1;
    v29 = a4;
    v30[0] = &unk_2A1F1BDB8;
    v30[1] = &v29;
    v30[2] = &v26;
    v31 = v30;
    sub_298B2FFE4(v5, a4, v30);
    if (v31 == v30)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))();
    }

    return;
  }

  v13 = (*(*a1 + 80))(a1);
  v14 = *(a1[1] + 152);
  v15 = *(v14 + 160);
  v16 = *(v14 + 176);
  v17 = (v15 + 8 * v16);
  if (!v16)
  {
    goto LABEL_24;
  }

  v18 = a2;
  v19 = v16 - 1;
  LODWORD(v20) = v19 & (37 * a2);
  v21 = (v15 + 8 * v20);
  v22 = *v21;
  if (*v21 != a2)
  {
    v23 = 1;
    while (v22 != -1)
    {
      v24 = v20 + v23++;
      v20 = v24 & v19;
      v22 = *(v15 + 8 * v20);
      if (v22 == a2)
      {
        v21 = (v15 + 8 * v20);
        goto LABEL_25;
      }
    }

LABEL_24:
    v21 = v17;
LABEL_25:
    v18 = a2;
  }

  if (v21 != v17)
  {
    v18 = v21[1];
  }

  *&v26 = v13;
  if (a3 <= 0x7FFF8)
  {
    v25 = 8;
  }

  else
  {
    v25 = 9;
  }

  *(&v26 + 1) = __PAIR64__(v18, a3);
  v27 = v25;
  sub_298B60964(v10 + 88, &v26);
}

void sub_298B61420(void *a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) != 4 || ((v6 = *(v5 + 428), v6 != 6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v9 = a1[13];
    if (v9 && !v9[1])
    {
      v10 = v9[11];
      v11 = v9[12];
      v12 = (v9 + 11);
      if (v10 == v11)
      {
        v14 = (*(*a1 + 80))(a1);
        v15 = a2;
        v16 = 0xAFFFFFFFFLL;
        sub_298B60964(v12, &v14);
        return;
      }

      v8 = "If present, PushMachFrame must be the first UOP";
    }

    else
    {
      v8 = ".seh_ directive must appear within an active frame";
    }
  }

  v14 = v8;
  v17 = 259;
  *(v4 + 2056) = 1;
  v18 = a3;
  v19[0] = &unk_2A1F1BDB8;
  v19[1] = &v18;
  v19[2] = &v14;
  v20 = v19;
  sub_298B2FFE4(v4, a3, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))();
  }
}

void *sub_298B61600(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v9 = a1[13];
    if (v9 && !*(v9 + 8))
    {
      result = (*(*a1 + 80))(a1, a2);
      *(v9 + 40) = result;
      return result;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v10 = v7;
  v11 = 259;
  *(v3 + 2056) = 1;
  v12 = a2;
  v13[0] = &unk_2A1F1BDB8;
  v13[1] = &v12;
  v13[2] = &v10;
  v14 = v13;
  sub_298B2FFE4(v3, a2, v13);
  result = v14;
  if (v14 == v13)
  {
    return (*(*v14 + 32))(v14);
  }

  if (v14)
  {
    return (*(*v14 + 40))();
  }

  return result;
}

uint64_t sub_298B617D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[1] + 1698) == 1)
  {
    v8 = "DWARF64 Mark";
    v9 = 259;
    (*(*a1 + 112))(a1, &v8, 1);
    (*(*a1 + 520))(a1, 0xFFFFFFFFLL, 4);
  }

  (*(*a1 + 112))(a1, a3, 1);
  if (*(a1[1] + 1698))
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  return (*(*a1 + 520))(a1, a2, v6);
}

unint64_t sub_298B61934(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[1] + 1698) == 1)
  {
    v20 = "DWARF64 Mark";
    v23 = 259;
    (*(*a1 + 112))(a1, &v20, 1);
    (*(*a1 + 520))(a1, 0xFFFFFFFFLL, 4);
  }

  v6 = 1;
  (*(*a1 + 112))(a1, a3, 1);
  v7 = a1[1];
  v8 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v8 == 1)
    {
      v20 = "_start";
      LOBYTE(v8) = 3;
    }

    else
    {
      v9 = *(a2 + 8);
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v8) = 2;
        v10 = a2;
      }

      v20 = v10;
      v21 = v9;
      v22 = "_start";
      v6 = 3;
    }
  }

  LOBYTE(v23) = v8;
  HIBYTE(v23) = v6;
  v11 = 1;
  v12 = sub_298B2D8D0(v7, &v20, 1);
  v13 = a1[1];
  v14 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v14 == 1)
    {
      v20 = "_end";
      LOBYTE(v14) = 3;
    }

    else
    {
      v15 = *(a2 + 8);
      if (*(a2 + 33) == 1)
      {
        v16 = *a2;
      }

      else
      {
        LOBYTE(v14) = 2;
        v16 = a2;
      }

      v20 = v16;
      v21 = v15;
      v22 = "_end";
      v11 = 3;
    }
  }

  LOBYTE(v23) = v14;
  HIBYTE(v23) = v11;
  v17 = sub_298B2D8D0(v13, &v20, 1);
  if (*(a1[1] + 1698))
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  (*(*a1 + 848))(a1, v17, v12, v18);
  (*(*a1 + 192))(a1, v12, 0);
  return v17;
}

uint64_t sub_298B61BD0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  sub_298B61C6C(a1, a3);
  a2[3] = a3;
  v6 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v6;
  result = *(a1 + 16);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t sub_298B61C6C(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  while (1)
  {
    while (1)
    {
      v4 = *a2;
      if (v4 > 2)
      {
        break;
      }

      if (*a2)
      {
        if (v4 != 2)
        {
          return result;
        }

        v5 = *(a2 + 2);
        v6 = *(*v3 + 56);
        v7 = v3;

        return v6(v7, v5);
      }

      result = sub_298B61C6C(v3, *(a2 + 2));
      a2 = *(a2 + 3);
    }

    if (v4 != 3)
    {
      break;
    }

    a2 = *(a2 + 2);
  }

  if (v4 == 4)
  {
    v6 = *(*(a2 - 1) + 56);
    v7 = a2 - 8;
    v5 = v3;

    return v6(v7, v5);
  }

  return result;
}

uint64_t sub_298B61DAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result;
    v5 = 16 * v2;
    do
    {
      v6 = *(a2 + 16) + v5;
      if (*(v6 - 16) == 5)
      {
        result = sub_298B61C6C(v4, *(v6 - 8));
      }

      v5 -= 16;
    }

    while (v5);
  }

  return result;
}

void sub_298B61E18(void *a1, uint64_t *a2, uint64_t *a3, char a4, char a5, int a6, _DWORD *a7, unint64_t a8)
{
  v16 = a1[1];
  v28[0] = "tmp";
  v33 = 259;
  v17 = sub_298B2D8D0(v16, v28, 1);
  (*(*a1 + 192))(a1, v17, 0);
  v28[0] = a2;
  v28[1] = a3;
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v32 = v17;
  v18 = 0x9DDFEA08EB382D69 * ((8 * (a8 & 0x1FFFFFFF) + 8) ^ HIDWORD(a8));
  v19 = 0x9DDFEA08EB382D69 * (HIDWORD(a8) ^ (v18 >> 47) ^ v18);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
  v21 = *(v16 + 1720);
  if (v21)
  {
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
      if (v20 >= *&v21)
      {
        v23 = v20 % *&v21;
      }
    }

    else
    {
      v23 = (*&v21 - 1) & v20;
    }

    v24 = *(*(v16 + 1712) + 8 * v23);
    if (v24)
    {
      v25 = *v24;
      if (*v24)
      {
        if (v22.u32[0] < 2uLL)
        {
          while (1)
          {
            v27 = v25[1];
            if (v27 == v20)
            {
              if (v25[2] == a8)
              {
                goto LABEL_23;
              }
            }

            else if ((v27 & (*&v21 - 1)) != v23)
            {
              goto LABEL_22;
            }

            v25 = *v25;
            if (!v25)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v26 = v25[1];
          if (v26 == v20)
          {
            if (v25[2] == a8)
            {
LABEL_23:
              sub_298B52624((v25 + 3), v28, a7);
            }
          }

          else
          {
            if (v26 >= *&v21)
            {
              v26 %= *&v21;
            }

            if (v26 != v23)
            {
              break;
            }
          }

          v25 = *v25;
        }

        while (v25);
      }
    }
  }

LABEL_22:
  operator new();
}

uint64_t sub_298B623B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_298B44B48(a2, 0, a1[1], 0);
  v8 = sub_298B44B48(a3, 0, a1[1], 0);
  v9 = a1[1];
  *(v9 + 264) += 32;
  v10 = *(v9 + 184);
  if (v10)
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) - v10 + 32 > *(v9 + 192) - v10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v9 + 208) >> 7;
    if (v12 >= 0x1E)
    {
      LOBYTE(v12) = 30;
    }

    v13 = 4096 << v12;
    v15 = operator new(4096 << v12, 8uLL);
    v14 = *(v9 + 208);
    if (v14 >= *(v9 + 212))
    {
      sub_298B90A44(v9 + 200, (v9 + 216), v14 + 1, 8);
      LODWORD(v14) = *(v9 + 208);
    }

    *(*(v9 + 200) + 8 * v14) = v15;
    ++*(v9 + 208);
    *(v9 + 192) = v15 + v13;
  }

  else
  {
    v15 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v9 + 184) = v15 + 32;
  *v15 = 0;
  *(v15 + 1) = (*(v15 + 4) << 24) | 0x12;
  *(v15 + 8) = 0;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  v16 = a1[1];
  if (*(*(v16 + 144) + 352))
  {
    v21 = "set";
    v22 = 259;
    v17 = sub_298B2D8D0(v16, &v21, 1);
    (*(*a1 + 272))(a1, v17, v15);
    v18 = sub_298B44B48(v17, 0, a1[1], 0);
    return (*(*a1 + 512))(a1, v18, a4, 0);
  }

  else
  {
    v20 = *(*a1 + 512);

    return v20(a1, v15, a4, 0);
  }
}

uint64_t sub_298B62638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_298B44B48(a2, 0, a1[1], 0);
  v6 = sub_298B44B48(a3, 0, a1[1], 0);
  v7 = a1[1];
  *(v7 + 264) += 32;
  v8 = *(v7 + 184);
  if (v8)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) - v8 + 32 > *(v7 + 192) - v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *(v7 + 208) >> 7;
    if (v10 >= 0x1E)
    {
      LOBYTE(v10) = 30;
    }

    v11 = 4096 << v10;
    v13 = operator new(4096 << v10, 8uLL);
    v12 = *(v7 + 208);
    if (v12 >= *(v7 + 212))
    {
      v17 = v13;
      sub_298B90A44(v7 + 200, (v7 + 216), v12 + 1, 8);
      v13 = v17;
      LODWORD(v12) = *(v7 + 208);
    }

    *(*(v7 + 200) + 8 * v12) = v13;
    ++*(v7 + 208);
    *(v7 + 192) = v13 + v11;
  }

  else
  {
    v13 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v7 + 184) = v13 + 32;
  v14 = (*(v13 + 4) << 24) | 0x12;
  *v13 = 0;
  *(v13 + 1) = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = v5;
  *(v13 + 24) = v6;
  v15 = *(*a1 + 552);

  return v15(a1);
}

uint64_t sub_298B62890(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 144) + 32 * *(result + 152);
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  *(v3 - 16) = v4;
  *(v3 - 8) = v5;
  if (v4 != a2 || v5 != a3)
  {
    v7 = result;
    result = (*(*result + 160))(result);
    v10 = *(v7 + 144) + 32 * *(v7 + 152);
    *(v10 - 32) = a2;
    *(v10 - 24) = a3;
    v11 = *(a2 + 8);
    if (v11)
    {
      if ((result = *v11) == 0 && ((v11[1] & 0x7080) != 0x2000 || (v11[1] |= 8uLL, v12 = v11, result = sub_298B45440(v11[3]), v11 = v12, (*v12 = result) == 0)) || result == qword_2A13C3628)
      {
        v13 = *(*v7 + 192);

        return v13(v7, v11, 0);
      }
    }
  }

  return result;
}

uint64_t *sub_298B629B4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = a1[1];
    v10 = "sec_end";
    v11 = 259;
    v6 = a2;
    v7 = sub_298B2D8D0(v5, &v10, 1);
    a2 = v6;
    v3 = v7;
    *(a2 + 16) = v7;
    v4 = *v7;
    if (!v4)
    {
LABEL_5:
      if ((v3[1] & 0x7080) != 0x2000)
      {
        goto LABEL_9;
      }

      v3[1] |= 8uLL;
      v8 = a2;
      v4 = sub_298B45440(v3[3]);
      a2 = v8;
      *v3 = v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 != qword_2A13C3628)
  {
    return v3;
  }

LABEL_9:
  (*(*a1 + 168))(a1, a2, 0);
  (*(*a1 + 192))(a1, v3, 0);
  return v3;
}

unint64_t sub_298B62AF4(unint64_t result, uint64_t **a2, void *a3, uint64_t **a4, void *a5)
{
  if (*(a2 + 11) != 5)
  {
    return result;
  }

  v6 = *(a2 + 9);
  v7 = v6 > 0x1F;
  v8 = (1 << v6) & 0xFC000222;
  if (v7 || v8 == 0)
  {
    return result;
  }

  v13 = result;
  result = sub_298CF558C(a2);
  if (!result)
  {
    return result;
  }

  v14 = *(a2 + 9);
  if (v14 > 26)
  {
    if (v14 > 28)
    {
      if (v14 != 29)
      {
        v15 = sub_298CF558C(a2);
        v17 = v16;
        goto LABEL_42;
      }

      v25 = sub_298CF558C(a2);
      v27 = v25 | 0x8000000000000013;
      goto LABEL_36;
    }

    if (v14 != 27)
    {
      v25 = sub_298CF558C(a2);
      v27 = v25 | 0x8000000000000002;
LABEL_36:
      if (v25)
      {
        v15 = v25;
      }

      else
      {
        v15 = v27;
      }

      if (v25)
      {
        v17 = v26;
      }

      else
      {
        v17 = v26 | 0x8000000080000000;
      }

      goto LABEL_42;
    }

    v18 = sub_298CF558C(a2);
    v21 = v18 == 0;
    v20 = 2;
    goto LABEL_28;
  }

  if (v14 > 8)
  {
    if (v14 != 9)
    {
      goto LABEL_13;
    }
  }

  else if (v14 != 1)
  {
LABEL_13:
    v18 = sub_298CF558C(a2);
    v20 = 5;
    if (*(a2 + 6) == 3)
    {
      v20 = 7;
    }

    v21 = v18 == 0;
LABEL_28:
    if (v21)
    {
      v15 = v20;
    }

    else
    {
      v15 = v18;
    }

    if (v21)
    {
      v17 = 0;
    }

    else
    {
      v17 = v19;
    }

    goto LABEL_42;
  }

  v15 = 0x800000040000000ALL;
  v22 = sub_298CF558C(a2);
  v17 = 0;
  v24 = *(a2 + 9);
  if (v24 <= 25)
  {
    if (v24 == 1)
    {
      if (v22)
      {
        if (v22 < 4)
        {
          v17 = v23;
          v15 = v22;
          goto LABEL_42;
        }

        if (v22 > 0x13)
        {
          v17 = 0;
          v15 = (v22 - 9);
          goto LABEL_42;
        }
      }

      else
      {
        v22 = 8;
      }

      v17 = 0;
      v15 = ((v22 << 32) + 0x7FFFFFFC0000000ALL) | 0x8000000000000000;
      goto LABEL_42;
    }

    if (v24 != 5)
    {
      v17 = v22 ? v23 : 0;
      if (v22)
      {
        v15 = v22;
      }
    }
  }

LABEL_42:
  result = sub_298CF5A0C(a2);
  if (!(result & 0x7FFFFFFFFFFFFFFFLL | v28 & 0x7FFFFFFF7FFFFFFFLL) || (v29 = result, v30 = v28, v15 >= result) && (result < v15 || (v38 = HIDWORD(v15) & 0x7FFFFFFF, v39 = HIDWORD(result) & 0x7FFFFFFF, v38 >= v39) && (v39 < v38 || (v17 & 0x7FFFFFFF) >= (v28 & 0x7FFFFFFF) && ((v28 & 0x7FFFFFFF) < (v17 & 0x7FFFFFFF) || (HIDWORD(v17) & 0x7FFFFFFFu) >= (HIDWORD(v28) & 0x7FFFFFFFu)))))
  {
    v30 = v17;
    v29 = v15;
  }

  v31 = *(a2 + 9);
  if (v31 <= 25)
  {
    v32 = 0x8000000E0000000ALL;
    if (v31 != 5)
    {
      goto LABEL_53;
    }

    if (*(a2 + 10) == 25)
    {
      goto LABEL_58;
    }

LABEL_52:
    v32 = 12;
LABEL_53:
    if (v29 < v32)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if ((v31 - 28) < 4)
  {
    goto LABEL_58;
  }

  if (v31 == 26)
  {
    goto LABEL_52;
  }

  v32 = 5;
  if (v29 < 5)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (v32 < v29 || (HIDWORD(v29) & 0x7FFFFFFFu) >= (BYTE4(v32) & 0xEu))
  {
LABEL_58:
    v34 = *(a2 + 10);
    v35 = HIDWORD(v29) & 0x7FFFFFFF;
    if (a4 && v34 == 25 && (*(a4 + 9) & 0xFFFFFFF7) == 1)
    {
      v65[0] = 0;
      v65[1] = 0;
      sub_298B62AF4(v13, a4, a5, 0, v65);
      v36 = *(a2 + 9);
      v37 = *(a2 + 10);
      if (v36 <= 26)
      {
        if (v36 > 8)
        {
          if (v36 == 9)
          {
            if (v37 == 23)
            {
              v36 = 25;
            }

            else
            {
              v36 = 1;
            }

LABEL_185:
            if (v29 < 0)
            {
              v53 = v35;
            }

            else
            {
              v53 = 0;
            }

            if (v30 < 0)
            {
              v54 = v30 & 0x7FFFFFFF;
            }

            else
            {
              v54 = 0;
            }

            v55 = *a3;
            v56 = a3[1];
            v57 = *(*v13 + 248);

            return v57(v13, v36, v29, v53, v54, v55, v56);
          }

          if (v37 == 23)
          {
            v36 = 27;
            goto LABEL_185;
          }

          v43 = v37 == 24;
          v44 = 3;
          v45 = 8;
        }

        else
        {
          if (v36 == 1)
          {
            goto LABEL_185;
          }

          if (v37 == 23)
          {
            v36 = 26;
            goto LABEL_185;
          }

          if (v37 == 25)
          {
            v36 = 6;
            goto LABEL_185;
          }

          v43 = v37 == 24;
          v44 = 2;
          v45 = 7;
        }
      }

      else
      {
        if (v36 > 28)
        {
          if (v36 == 29)
          {
            v36 = 10;
          }

          else if (v36 == 30)
          {
            v36 = 14;
          }

          else if (v37 == 23)
          {
            v36 = 29;
          }

          else if (v37 == 24)
          {
            v36 = 12;
          }

          else
          {
            v36 = 11;
          }

          goto LABEL_185;
        }

        if (v36 == 27)
        {
          if (v37 == 23)
          {
            v36 = 28;
            goto LABEL_185;
          }

          v43 = v37 == 24;
          v44 = 4;
          v45 = 9;
        }

        else
        {
          v43 = v37 == 23;
          v44 = 5;
          v45 = 30;
        }
      }

      if (v43)
      {
        v36 = v45;
      }

      else
      {
        v36 = v44;
      }

      goto LABEL_185;
    }

    if (v31 > 26)
    {
      if (v31 > 28)
      {
        if (v31 == 29)
        {
          v31 = 10;
        }

        else if (v31 == 30)
        {
          v31 = 14;
        }

        else if (v34 == 23)
        {
          v31 = 29;
        }

        else if (v34 == 24)
        {
          v31 = 12;
        }

        else
        {
          v31 = 11;
        }

        goto LABEL_128;
      }

      if (v31 == 27)
      {
        if (v34 == 23)
        {
          v31 = 28;
          goto LABEL_128;
        }

        v40 = v34 == 24;
        v41 = 4;
        v42 = 9;
      }

      else
      {
        v40 = v34 == 23;
        v41 = 5;
        v42 = 30;
      }

LABEL_125:
      if (v40)
      {
        v31 = v42;
      }

      else
      {
        v31 = v41;
      }

      goto LABEL_128;
    }

    if (v31 > 8)
    {
      if (v31 == 9)
      {
        if (v34 == 23)
        {
          v31 = 25;
        }

        else
        {
          v31 = 1;
        }

        goto LABEL_128;
      }

      if (v34 != 23)
      {
        v40 = v34 == 24;
        v41 = 3;
        v42 = 8;
        goto LABEL_125;
      }

      v31 = 27;
    }

    else
    {
      if (v31 == 1)
      {
        goto LABEL_128;
      }

      if (v34 != 23)
      {
        if (v34 == 25)
        {
          v31 = 6;
          goto LABEL_128;
        }

        v40 = v34 == 24;
        v41 = 2;
        v42 = 7;
        goto LABEL_125;
      }

      v31 = 26;
    }

LABEL_128:
    if (v29 < 0)
    {
      v46 = v35;
    }

    else
    {
      v46 = 0;
    }

    if (v30 < 0)
    {
      v47 = v30 & 0x7FFFFFFF;
    }

    else
    {
      v47 = 0;
    }

    result = (*(*v13 + 240))(v13, v31, v29, v46, v47, *a3, a3[1]);
    v33 = 1;
    if (!a4)
    {
      goto LABEL_200;
    }

    goto LABEL_135;
  }

LABEL_56:
  v33 = 0;
  if (!a4)
  {
    goto LABEL_200;
  }

LABEL_135:
  if ((*(a2 + 9) & 0xFFFFFFF7) == 1 && *(a4 + 10) == 25)
  {
    v48 = *(a4 + 9);
    if (v48 <= 8)
    {
      if (v48 == 1)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v48 == 9)
      {
        goto LABEL_143;
      }

      if (v48 != 26)
      {
        sub_298CF558C(a4);
        goto LABEL_143;
      }
    }

    sub_298CF558C(a4);
LABEL_143:
    sub_298CF5A0C(a4);
    v49 = *(a4 + 9);
    v50 = *(a4 + 10);
    if (v49 <= 26)
    {
      if (v49 <= 8)
      {
        if (v49 != 1)
        {
          if (v50 == 23)
          {
            v49 = 26;
            goto LABEL_199;
          }

          if (v50 != 25)
          {
            v51 = v50 == 24;
            LODWORD(v49) = 2;
            v52 = 7;
            goto LABEL_196;
          }

          v49 = 6;
        }

LABEL_199:
        result = (*(*v13 + 248))(v13, v49);
        goto LABEL_200;
      }

      if (v49 == 9)
      {
        if (v50 == 23)
        {
          v49 = 25;
        }

        else
        {
          v49 = 1;
        }

        goto LABEL_199;
      }

      if (v50 == 23)
      {
        v49 = 27;
        goto LABEL_199;
      }

      v51 = v50 == 24;
      LODWORD(v49) = 3;
      v52 = 8;
    }

    else
    {
      if (v49 > 28)
      {
        if (v49 == 29)
        {
          v49 = 10;
        }

        else if (v49 == 30)
        {
          v49 = 14;
        }

        else if (v50 == 23)
        {
          v49 = 29;
        }

        else if (v50 == 24)
        {
          v49 = 12;
        }

        else
        {
          v49 = 11;
        }

        goto LABEL_199;
      }

      if (v49 == 27)
      {
        if (v50 == 23)
        {
          v49 = 28;
          goto LABEL_199;
        }

        v51 = v50 == 24;
        LODWORD(v49) = 4;
        v52 = 9;
      }

      else
      {
        v51 = v50 == 23;
        LODWORD(v49) = 5;
        v52 = 30;
      }
    }

LABEL_196:
    if (v51)
    {
      v49 = v52;
    }

    else
    {
      v49 = v49;
    }

    goto LABEL_199;
  }

LABEL_200:
  if ((v33 & 1) == 0)
  {
    v58 = *(a2 + 9);
    v59 = 1;
    if (v58 <= 8)
    {
      v59 = v58 == 1;
    }

    else if (v58 != 9)
    {
      if (v58 == 26)
      {
        v59 = 2;
      }

      else
      {
        v59 = 3;
      }
    }

    if (v29 < 0)
    {
      v60 = HIDWORD(v29) & 0x7FFFFFFF;
    }

    else
    {
      v60 = 0;
    }

    if (v30 < 0)
    {
      v61 = v30 & 0x7FFFFFFF;
    }

    else
    {
      v61 = 0;
    }

    v62 = *a3;
    v63 = a3[1];
    v64 = *(*v13 + 232);

    return v64(v13, v59, v29, v60, v61, v62, v63);
  }

  return result;
}

uint64_t sub_298B63450(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 152);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 2);
        if (v4 != v6)
        {
          free(v6);
        }

        MEMORY[0x29C2945E0](*(v4 - 5), 8);
        v4 -= 72;
      }

      while (v4 != v3);
      v5 = *v2;
    }

    *(a1 + 160) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  if (v8)
  {
    v9 = &v7[6 * v8 - 5];
    v10 = -48 * v8;
    do
    {
      v11 = *v9;
      if (*v9)
      {
        *(v9 + 8) = v11;
        operator delete(v11);
      }

      v9 -= 48;
      v10 += 48;
    }

    while (v10);
    v7 = *(a1 + 136);
  }

  if (v7 != v2)
  {
    free(v7);
  }

  MEMORY[0x29C2945E0](*(a1 + 112), 8);
  v12 = *(a1 + 88);
  if (v12)
  {
    *(a1 + 96) = v12;
    operator delete(v12);
  }

  return a1;
}

const char *sub_298B63550(uint64_t a1, _DWORD *a2, size_t a3, _BYTE *a4, size_t a5, const std::string::value_type *a6, std::string::size_type a7, uint64_t a8)
{
  sub_298B6362C(v19, a2, a3, a4, a5, a6, a7, a8, *(a1 + 120), *(a1 + 128), *(a1 + 104), *(a1 + 112));
  v13 = v21;
  *(a1 + 248) = v20;
  v14 = v22;
  v15 = v23;
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  *(a1 + 296) = v15;
  v16 = *&v19[16];
  *(a1 + 216) = *v19;
  *(a1 + 232) = v16;
  std::string::__init(v19, a6, a7);
  v17 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v17);
  }

  *v17 = *v19;
  *(a1 + 328) = *&v19[16];
  if (a5)
  {
    result = sub_298B63990(*(a1 + 120), *(a1 + 128), a4, a5);
  }

  else
  {
    result = &unk_298D1A790;
  }

  *(a1 + 184) = result;
  return result;
}

void sub_298B6362C(_OWORD *a1, _DWORD *a2, size_t a3, _BYTE *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, _OWORD *a11, unint64_t a12)
{
  sub_298CF192C(&v35, a6, a7);
  if (a10)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    goto LABEL_7;
  }

  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  if (a3 == 4)
  {
    if (*a2 != 1886152040)
    {
      goto LABEL_10;
    }

    sub_298B64418(a9, a10, a11, a12);
  }

  else if (a3)
  {
LABEL_10:
    v18 = sub_298B6417C(a2, a3, a9, a10);
    if (v18)
    {
      sub_298B63BE0(a1, v18 + 1, a11, a12);
    }

    else
    {
      v19 = sub_298B9CEA8();
      v20 = v19;
      v21 = v19[4];
      if (v19[3] == v21)
      {
        sub_298B9BCEC(v19, "'", 1uLL);
        v22 = *(v20 + 32);
      }

      else
      {
        *v21 = 39;
        v22 = (v19[4] + 1);
        *(v20 + 32) = v22;
      }

      if (a3 <= *(v20 + 24) - v22)
      {
        memcpy(v22, a2, a3);
        v23 = (*(v20 + 32) + a3);
        *(v20 + 32) = v23;
      }

      else
      {
        sub_298B9BCEC(v20, a2, a3);
        v23 = *(v20 + 32);
      }

      if (*(v20 + 24) - v23 > 0x2EuLL)
      {
        qmemcpy(v23, "' is not a recognized processor for this target", 47);
        v24 = (*(v20 + 32) + 47);
        *(v20 + 32) = v24;
      }

      else
      {
        sub_298B9BCEC(v20, "' is not a recognized processor for this target", 0x2FuLL);
        v24 = *(v20 + 32);
      }

      if (*(v20 + 24) - v24 > 0x15uLL)
      {
        qmemcpy(v24, " (ignoring processor)\n", 22);
        *(v20 + 32) += 22;
      }

      else
      {
        sub_298B9BCEC(v20, " (ignoring processor)\n", 0x16uLL);
      }
    }
  }

  if (a5)
  {
    v25 = sub_298B6417C(a4, a5, a9, a10);
    if (v25)
    {
      sub_298B63BE0(a1, v25 + 13, a11, a12);
    }

    else if (a5 != a3 || memcmp(a4, a2, a3))
    {
      v26 = sub_298B9CEA8();
      v27 = sub_298B00584(v26, "'");
      v28 = sub_298B63DC4(v27, a4, a5);
      v29 = sub_298B00584(v28, "' is not a recognized processor for this ");
      sub_298B00584(v29, "target (ignoring processor)\n");
    }
  }

  v30 = v35;
  for (i = v36; v30 != i; v30 += 24)
  {
    if (sub_298B647BC(v30, "+help"))
    {
      sub_298B64418(a9, a10, a11, a12);
    }

    else if (sub_298B647BC(v30, "+cpuhelp"))
    {
      sub_298B64840(a9, a10);
    }

    else
    {
      v32 = v30[23];
      if (v32 >= 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = *v30;
      }

      if (v32 >= 0)
      {
        v34 = v30[23];
      }

      else
      {
        v34 = *(v30 + 1);
      }

      sub_298B63E28(a1, v33, v34, a11, a12);
    }
  }

LABEL_7:
  v37 = &v35;
  sub_298B64B64(&v37);
}

const char *sub_298B63990(char **a1, uint64_t a2, _DWORD *a3, size_t a4)
{
  v6 = sub_298B6417C(a3, a4, a1, a2);
  if (v6)
  {
    return v6[25];
  }

  if (a4 != 4 || *a3 != 1886152040)
  {
    v7 = sub_298B9CEA8();
    v8 = sub_298B00584(v7, "'");
    v9 = sub_298B63DC4(v8, a3, a4);
    v10 = sub_298B00584(v9, "' is not a recognized processor for this target");
    sub_298B00584(v10, " (ignoring processor)\n");
  }

  return &unk_298D1A790;
}

uint64_t sub_298B63A2C(uint64_t a1, __int128 *a2, std::string::value_type *__s, std::string::size_type __sz, const std::string::value_type *a5, std::string::size_type a6, const std::string::value_type *a7, std::string::size_type a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a1 = &unk_2A1F1D478;
  v25 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(v25, *a2, *(a2 + 1));
  }

  else
  {
    v26 = *a2;
    *(v25 + 16) = *(a2 + 2);
    *v25 = v26;
  }

  v27 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 5);
  *(a1 + 32) = v27;
  std::string::__init((a1 + 56), __s, __sz);
  std::string::__init((a1 + 80), a5, a6);
  *(a1 + 104) = a9;
  *(a1 + 112) = a10;
  *(a1 + 120) = a11;
  *(a1 + 128) = a12;
  *(a1 + 136) = a13;
  *(a1 + 144) = a14;
  *(a1 + 152) = a15;
  *(a1 + 160) = a16;
  *(a1 + 168) = a17;
  *(a1 + 176) = a18;
  *(a1 + 192) = a19;
  *(a1 + 200) = a20;
  *(a1 + 208) = a21;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  v29 = *(a1 + 79);
  if (v29 >= 0)
  {
    v30 = (a1 + 56);
  }

  else
  {
    v30 = *(a1 + 56);
  }

  if (v29 >= 0)
  {
    v31 = *(a1 + 79);
  }

  else
  {
    v31 = *(a1 + 64);
  }

  v32 = *(a1 + 103);
  if (v32 >= 0)
  {
    v33 = (a1 + 80);
  }

  else
  {
    v33 = *(a1 + 80);
  }

  if (v32 >= 0)
  {
    v34 = *(a1 + 103);
  }

  else
  {
    v34 = *(a1 + 88);
  }

  *(a1 + 296) = 0uLL;
  *(a1 + 312) = 0uLL;
  sub_298B63550(a1, v30, v31, v33, v34, a7, a8, v28);
  return a1;
}

void *sub_298B63BE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  *result |= *a2;
  result[1] = v4 | a2[1];
  v5 = result[3];
  result[2] |= a2[2];
  result[3] = v5 | a2[3];
  v6 = result[5];
  result[4] |= a2[4];
  result[5] = v6 | a2[5];
  v7 = result[7];
  result[6] |= a2[6];
  result[7] = v7 | a2[7];
  v8 = result[9];
  result[8] |= a2[8];
  result[9] = v8 | a2[9];
  v9 = result[11];
  result[10] |= a2[10];
  result[11] = v9 | a2[11];
  if (a4)
  {
    v13 = result;
    v14 = 120 * a4;
    v15 = (a3 + 24);
    do
    {
      if ((*(a2 + ((*(v15 - 2) >> 3) & 0x1FFFFFF8)) >> *(v15 - 2)))
      {
        result = sub_298B63BE0(v13, v15, a3, a4);
      }

      v15 += 15;
      v14 -= 120;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_298B63D18(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = 1 << a2;
    v8 = a2 >> 6;
    v9 = a3 + 24;
    v10 = 120 * a4;
    do
    {
      if ((*(v9 + 8 * v8) & v7) != 0)
      {
        v11 = *(v9 - 8);
        *(v6 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
        result = sub_298B63D18(v6, v11, a3, a4);
      }

      v9 += 120;
      v10 -= 120;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_298B63DC4(uint64_t a1, _BYTE *a2, size_t a3)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (a3 > v5 - v4)
  {
    sub_298B9BCEC(a1, a2, a3);
    return a1;
  }

  if (!a3)
  {
    return a1;
  }

  memcpy(v4, a2, a3);
  *(a1 + 32) += a3;
  return a1;
}

void *sub_298B63E28(void *a1, char *__s2, size_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *__s2;
  if (v6 == 45 || (v7 = __s2, v8 = a3, v6 == 43))
  {
    if (a3)
    {
      v7 = __s2 + 1;
    }

    else
    {
      v7 = __s2;
    }

    v8 = a3 - (a3 != 0);
  }

  v29 = *__s2;
  if (a5)
  {
    v9 = a4;
    v10 = a4;
    v11 = a5;
    do
    {
      v12 = (v10 + 120 * (v11 >> 1));
      v13 = *v12;
      if (*v12)
      {
        v14 = strlen(v13);
        v13 = *v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_298B64C08(v13, v14, v7, v8);
      if (v15)
      {
        v11 += ~(v11 >> 1);
      }

      else
      {
        v11 >>= 1;
      }

      if (v15)
      {
        v10 = (v12 + 15);
      }
    }

    while (v11);
  }

  else
  {
    v9 = a4;
    v10 = a4;
  }

  if (v10 != v9 + 120 * a5)
  {
    if (*v10)
    {
      if (strlen(*v10) == v8 && (!v8 || !memcmp(*v10, v7, v8)))
      {
LABEL_23:
        v16 = *(v10 + 16);
        v17 = 1 << v16;
        if (v29 == 43)
        {
          *(a1 + ((v16 >> 3) & 0x1FFFFFF8)) |= v17;

          return sub_298B63BE0(a1, (v10 + 24), v9, a5);
        }

        else
        {
          *(a1 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~v17;

          return sub_298B63D18(a1, v16, v9, a5);
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_23;
    }
  }

  v19 = sub_298B9CEA8();
  v20 = v19;
  v21 = v19[4];
  if (v19[3] == v21)
  {
    sub_298B9BCEC(v19, "'", 1uLL);
    result = *(v20 + 32);
    v23 = a3;
    if (a3 > *(v20 + 24) - result)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v21 = 39;
    v22 = v19[3];
    result = (v19[4] + 1);
    *(v20 + 32) = result;
    v23 = a3;
    if (a3 > v22 - result)
    {
LABEL_35:
      sub_298B9BCEC(v20, __s2, v23);
      result = *(v20 + 32);
      goto LABEL_39;
    }
  }

  if (v23)
  {
    v24 = v23;
    memcpy(result, __s2, v23);
    result = (*(v20 + 32) + v24);
    *(v20 + 32) = result;
  }

LABEL_39:
  if (*(v20 + 24) - result > 0x2CuLL)
  {
    qmemcpy(result, "' is not a recognized feature for this target", 45);
    v26 = *(v20 + 24);
    v25 = *(v20 + 32) + 45;
    *(v20 + 32) = v25;
    if ((v26 - v25) > 0x13)
    {
      goto LABEL_41;
    }
  }

  else
  {
    result = sub_298B9BCEC(v20, "' is not a recognized feature for this target", 0x2DuLL);
    v25 = *(v20 + 32);
    if ((*(v20 + 24) - v25) > 0x13)
    {
LABEL_41:
      *(v25 + 16) = 170485106;
      *v25 = *" (ignoring feature)\n";
      *(v20 + 32) += 20;
      return result;
    }
  }

  return sub_298B9BCEC(v20, " (ignoring feature)\n", 0x14uLL);
}

const char **sub_298B6417C(const void *a1, size_t a2, char **a3, uint64_t a4)
{
  v6 = &a3[26 * a4];
  result = sub_298B64C68(a3, v6, a1, a2);
  if (result == v6)
  {
    return 0;
  }

  v8 = *result;
  if (!*result)
  {
    if (!a2)
    {
      return result;
    }

    return 0;
  }

  v9 = result;
  if (strlen(*result) != a2)
  {
    return 0;
  }

  if (!a2)
  {
    return v9;
  }

  v10 = memcmp(v8, a1, a2);
  result = v9;
  if (v10)
  {
    return 0;
  }

  return result;
}

uint64_t sub_298B64260(uint64_t a1)
{
  *a1 = &unk_2A1F1D478;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 56));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_298B64308(uint64_t a1)
{
  *a1 = &unk_2A1F1D478;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a1 + 8));
LABEL_5:

    JUMPOUT(0x29C2945F0);
  }

LABEL_10:
  operator delete(*(a1 + 56));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_11;
}

uint64_t sub_298B643D4(uint64_t a1)
{
  result = (*(*a1 + 48))(a1, 0);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_298B64418(uint64_t *result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if ((byte_2A13C2BE0 & 1) == 0)
  {
    v7 = result;
    if (a2)
    {
      v8 = 0;
      v9 = 208 * a2;
      v10 = result;
      do
      {
        v11 = *v10;
        v10 += 26;
        v12 = strlen(v11);
        if (v8 <= v12)
        {
          v8 = v12;
        }

        v9 -= 208;
      }

      while (v9);
      v13 = a4 << 7;
      if (a4)
      {
LABEL_8:
        v14 = 0;
        v15 = v13 - 8 * a4;
        v16 = a3;
        do
        {
          v17 = *v16;
          v16 += 15;
          v18 = strlen(v17);
          if (v14 <= v18)
          {
            v14 = v18;
          }

          v15 -= 120;
        }

        while (v15);
        v19 = sub_298B9CEA8();
        v20 = v19[4];
        if (v19[3] - v20 <= 0x20uLL)
        {
LABEL_13:
          sub_298B9BCEC(v19, "Available CPUs for this target:\n\n", 0x21uLL);
          if (!a2)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

LABEL_17:
        qmemcpy(v20, "Available CPUs for this target:\n\n", 33);
        v19[4] += 33;
        if (!a2)
        {
          goto LABEL_20;
        }

LABEL_18:
        v21 = 208 * a2;
        do
        {
          v22 = sub_298B9CEA8();
          v36 = &unk_2A1F1D4F0;
          v37 = "  %-*s - Select the %s processor.\n";
          v38 = v8;
          v23 = *v7;
          v7 += 26;
          *&v39 = v23;
          *(&v39 + 1) = v23;
          sub_298B9B1F8(v22, &v36);
          v21 -= 208;
        }

        while (v21);
LABEL_20:
        v24 = sub_298B9CEA8();
        v25 = v24[4];
        if (v25 < v24[3])
        {
LABEL_26:
          v24[4] = v25 + 1;
          *v25 = 10;
          v27 = sub_298B9CEA8();
          v28 = v27[4];
          if (v27[3] - v28 > 0x24uLL)
          {
            goto LABEL_30;
          }
        }

        else
        {
          while (1)
          {
            v26 = v24[2];
            if (v26)
            {
              v24[4] = v26;
              sub_298B9BB84(v24);
              v25 = v24[4];
              goto LABEL_26;
            }

            if (!*(v24 + 14))
            {
              break;
            }

            sub_298B9AE98(v24);
            v25 = v24[4];
            if (v25 < v24[3])
            {
              goto LABEL_26;
            }
          }

          LOBYTE(v36) = 10;
          sub_298B9BB84(v24);
          v27 = sub_298B9CEA8();
          v28 = v27[4];
          if (v27[3] - v28 > 0x24uLL)
          {
LABEL_30:
            qmemcpy(v28, "Available features for this target:\n\n", 37);
            v27[4] += 37;
            if (!a4)
            {
              goto LABEL_33;
            }

LABEL_31:
            v29 = v13 - 8 * a4;
            do
            {
              v30 = sub_298B9CEA8();
              v36 = &unk_2A1F1D4F0;
              v37 = "  %-*s - %s.\n";
              v38 = v14;
              v31 = *a3;
              a3 = (a3 + 120);
              v39 = v31;
              sub_298B9B1F8(v30, &v36);
              v29 -= 120;
            }

            while (v29);
LABEL_33:
            v32 = sub_298B9CEA8();
            v33 = v32[4];
            if (v33 < v32[3])
            {
LABEL_39:
              v32[4] = v33 + 1;
              *v33 = 10;
              result = sub_298B9CEA8();
              v35 = result[4];
              if ((result[3] - v35) > 0x74)
              {
LABEL_42:
                qmemcpy(v35, "Use +feature to enable a feature, or -feature to disable it.\nFor example, llc -mcpu=mycpu -mattr=+feature1,-feature2\n", 117);
                result[4] += 117;
                goto LABEL_43;
              }
            }

            else
            {
              while (1)
              {
                v34 = v32[2];
                if (v34)
                {
                  v32[4] = v34;
                  sub_298B9BB84(v32);
                  v33 = v32[4];
                  goto LABEL_39;
                }

                if (!*(v32 + 14))
                {
                  break;
                }

                sub_298B9AE98(v32);
                v33 = v32[4];
                if (v33 < v32[3])
                {
                  goto LABEL_39;
                }
              }

              LOBYTE(v36) = 10;
              sub_298B9BB84(v32);
              result = sub_298B9CEA8();
              v35 = result[4];
              if ((result[3] - v35) > 0x74)
              {
                goto LABEL_42;
              }
            }

            result = sub_298B9BCEC(result, "Use +feature to enable a feature, or -feature to disable it.\nFor example, llc -mcpu=mycpu -mattr=+feature1,-feature2\n", 0x75uLL);
LABEL_43:
            byte_2A13C2BE0 = 1;
            return result;
          }
        }

        sub_298B9BCEC(v27, "Available features for this target:\n\n", 0x25uLL);
        if (!a4)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v8) = 0;
      v13 = a4 << 7;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v14) = 0;
    v19 = sub_298B9CEA8();
    v20 = v19[4];
    if (v19[3] - v20 <= 0x20uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  return result;
}

BOOL sub_298B647BC(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_298ADDDA0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_298B64840(uint64_t result, uint64_t a2)
{
  v2 = 0x2A13C2000uLL;
  if ((byte_2A13C2BE1 & 1) == 0)
  {
    v4 = result;
    v5 = sub_298B9CEA8();
    v6 = v5[4];
    if (v5[3] - v6 > 0x20uLL)
    {
      qmemcpy(v6, "Available CPUs for this target:\n\n", 33);
      v5[4] += 33;
      if (!a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_298B9BCEC(v5, "Available CPUs for this target:\n\n", 0x21uLL);
      if (!a2)
      {
LABEL_22:
        v15 = sub_298B9CEA8();
        v16 = v15[4];
        if (v16 < v15[3])
        {
LABEL_28:
          v15[4] = v16 + 1;
          *v16 = 10;
          result = sub_298B9CEA8();
          v18 = *(result + 32);
          if (*(result + 24) - v18 > 0x7DuLL)
          {
LABEL_31:
            qmemcpy(v18, "Use -mcpu or -mtune to specify the target's processor.\nFor example, clang --target=aarch64-unknown-linux-gnu -mcpu=cortex-a35\n", 126);
            *(result + 32) += 126;
            goto LABEL_32;
          }
        }

        else
        {
          while (1)
          {
            v17 = v15[2];
            if (v17)
            {
              v15[4] = v17;
              sub_298B9BB84(v15);
              v16 = v15[4];
              goto LABEL_28;
            }

            if (!*(v15 + 14))
            {
              break;
            }

            sub_298B9AE98(v15);
            v16 = v15[4];
            if (v16 < v15[3])
            {
              goto LABEL_28;
            }
          }

          sub_298B9BB84(v15);
          result = sub_298B9CEA8();
          v18 = *(result + 32);
          if (*(result + 24) - v18 > 0x7DuLL)
          {
            goto LABEL_31;
          }
        }

        result = sub_298B9BCEC(result, "Use -mcpu or -mtune to specify the target's processor.\nFor example, clang --target=aarch64-unknown-linux-gnu -mcpu=cortex-a35\n", 0x7EuLL);
LABEL_32:
        *(v2 + 3041) = 1;
        return result;
      }
    }

    v7 = 208 * a2;
    while (1)
    {
      v8 = sub_298B9CEA8();
      v9 = *(v8 + 32);
      if (*(v8 + 24) == v9)
      {
        v8 = sub_298B9BCEC(v8, "\t", 1uLL);
        v10 = *(v8 + 32);
        v11 = *v4;
        if (*v4)
        {
          goto LABEL_14;
        }

LABEL_10:
        if (*(v8 + 24) != v10)
        {
          goto LABEL_7;
        }

LABEL_11:
        sub_298B9BCEC(v8, "\n", 1uLL);
        v4 += 26;
        v7 -= 208;
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v9 = 9;
        v10 = (*(v8 + 32) + 1);
        *(v8 + 32) = v10;
        v11 = *v4;
        if (!*v4)
        {
          goto LABEL_10;
        }

LABEL_14:
        v12 = v8;
        v13 = strlen(v11);
        v14 = v13;
        if (v13 <= *(v12 + 24) - v10)
        {
          if (v13)
          {
            memcpy(v10, v11, v13);
            v8 = v12;
            v10 = (*(v12 + 32) + v14);
            *(v12 + 32) = v10;
            v2 = 0x2A13C2000;
            if (*(v8 + 24) == v10)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v8 = v12;
            v2 = 0x2A13C2000;
            if (*(v8 + 24) == v10)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          v8 = sub_298B9BCEC(v12, v11, v13);
          v10 = *(v12 + 32);
          v2 = 0x2A13C2000;
          if (*(v8 + 24) == v10)
          {
            goto LABEL_11;
          }
        }

LABEL_7:
        *v10 = 10;
        ++*(v8 + 32);
        v4 += 26;
        v7 -= 208;
        if (!v7)
        {
          goto LABEL_22;
        }
      }
    }
  }

  return result;
}

void sub_298B64B64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298B64BB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_298B64BB8(void ***a1)
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

uint64_t sub_298B64C08(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (v6 && (v7 = memcmp(a1, __s2, v6)) != 0)
  {
    v8 = (v7 >> 31) | 1;
  }

  else
  {
    if (a2 < a4)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (a2 == a4)
    {
      v8 = 0;
    }
  }

  return v8 >> 31;
}

char **sub_298B64C68(char **result, char **a2, const void *a3, size_t a4)
{
  if (a2 != result)
  {
    v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - result) >> 4);
    do
    {
      v5 = &result[26 * (v4 >> 1)];
      v7 = *v5;
      v6 = v5 + 26;
      v8 = result;
      v9 = a3;
      v10 = a4;
      v11 = sub_298B64D14(v7, a3, a4);
      a3 = v9;
      a4 = v10;
      if (v11)
      {
        v4 += ~(v4 >> 1);
      }

      else
      {
        v4 >>= 1;
      }

      if (v11)
      {
        result = v6;
      }

      else
      {
        result = v8;
      }
    }

    while (v4);
  }

  return result;
}

uint64_t sub_298B64D14(char *__s, const void *a2, size_t a3)
{
  if (__s)
  {
    v10 = a2;
    v11 = strlen(__s);
    a2 = v10;
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  if (v6 && (v7 = memcmp(__s, a2, v6)) != 0)
  {
    v8 = (v7 >> 31) | 1;
  }

  else
  {
    if (v5 < a3)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v5 == a3)
    {
      v8 = 0;
    }
  }

  return v8 >> 31;
}

void *sub_298B64D98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 - 8);
    v8 = *v7;
    v5 = (v7 + 2);
    v6 = v8;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!a3)
    {
LABEL_6:
      result = *(a2 + 32);
      if (v6 <= *(a2 + 24) - result)
      {
        if (v6)
        {
          result = memcpy(result, v5, v6);
          *(a2 + 32) += v6;
        }
      }

      else
      {

        return sub_298B9BCEC(a2, v5, v6);
      }

      return result;
    }
  }

  result = (*(*a3 + 56))(a3, v5, v6);
  if (result)
  {
    goto LABEL_6;
  }

  if ((a3[185] & 1) == 0)
  {
    sub_298B868A8("Symbol name with unsupported characters", 1);
  }

  v10 = *(a2 + 32);
  if (v10 < *(a2 + 24))
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      *(a2 + 32) = v11;
      result = sub_298B9BB84(a2);
      v10 = *(a2 + 32);
LABEL_19:
      *(a2 + 32) = v10 + 1;
      *v10 = 34;
      if (!v6)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if (!*(a2 + 56))
    {
      break;
    }

    result = sub_298B9AE98(a2);
    v10 = *(a2 + 32);
    if (v10 < *(a2 + 24))
    {
      goto LABEL_19;
    }
  }

  result = sub_298B9BB84(a2);
  if (v6)
  {
LABEL_20:
    v12 = &v5[v6];
    while (1)
    {
      v15 = *v5;
      if (v15 == 34)
      {
        break;
      }

      if (v15 == 10)
      {
        v16 = *(a2 + 32);
        if (*(a2 + 24) - v16 <= 1uLL)
        {
          v17 = a2;
          v18 = "\\n";
LABEL_35:
          result = sub_298B9BCEC(v17, v18, 2uLL);
          goto LABEL_28;
        }

        *v16 = 28252;
        goto LABEL_38;
      }

      while (1)
      {
        v13 = *(a2 + 32);
        if (v13 < *(a2 + 24))
        {
          goto LABEL_27;
        }

        v14 = *(a2 + 16);
        if (v14)
        {
          break;
        }

        if (!*(a2 + 56))
        {
          result = sub_298B9BB84(a2);
          goto LABEL_28;
        }

        result = sub_298B9AE98(a2);
      }

      *(a2 + 32) = v14;
      result = sub_298B9BB84(a2);
      v13 = *(a2 + 32);
LABEL_27:
      *(a2 + 32) = v13 + 1;
      *v13 = v15;
LABEL_28:
      if (++v5 == v12)
      {
        goto LABEL_42;
      }
    }

    v19 = *(a2 + 32);
    if (*(a2 + 24) - v19 <= 1uLL)
    {
      v17 = a2;
      v18 = "\";
      goto LABEL_35;
    }

    *v19 = 8796;
LABEL_38:
    *(a2 + 32) += 2;
    goto LABEL_28;
  }

LABEL_42:
  while (1)
  {
    v20 = *(a2 + 32);
    if (v20 < *(a2 + 24))
    {
      break;
    }

    v21 = *(a2 + 16);
    if (v21)
    {
      *(a2 + 32) = v21;
      result = sub_298B9BB84(a2);
      v20 = *(a2 + 32);
      break;
    }

    if (!*(a2 + 56))
    {
      return sub_298B9BB84(a2);
    }

    result = sub_298B9AE98(a2);
  }

  *(a2 + 32) = v20 + 1;
  *v20 = 34;
  return result;
}

double sub_298B6508C(uint64_t a1)
{
  *a1 = *a1 & 0xC000 | 0x1000;
  *(a1 + 2) = 1;
  *(a1 + 4) = xmmword_298D1A820;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) &= 0xFCu;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

void sub_298B650F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a2 + 88);
  if (v2 == v3)
  {
    return;
  }

  do
  {
    v6 = *v2;
    if (*(*v2 + 88) != *(*v2 + 96))
    {
      goto LABEL_3;
    }

    v7 = *(v6 + 144);
    if (v7)
    {
      v8 = (*(v6 + 136) + 16);
      v9 = 48 * v7;
      while (*(v8 - 1) == *v8)
      {
        v8 += 6;
        v9 -= 48;
        if (!v9)
        {
          goto LABEL_4;
        }
      }

LABEL_3:
      v5 = sub_298B604D4(*(a2 + 8), (a2 + 296), *(*(*(a2 + 8) + 160) + 696), *(v6 + 56));
      (*(*a2 + 168))(a2, v5, 0);
      sub_298B65650(a2, v6, 1);
    }

LABEL_4:
    ++v2;
  }

  while (v2 != v3);
  v10 = *(a2 + 80);
  v38 = *(a2 + 88);
  if (v10 != v38)
  {
    do
    {
      v39 = v10;
      v11 = *v10;
      if (*(*v10 + 48))
      {
        v12 = sub_298B604D4(*(a2 + 8), (a2 + 296), *(*(*(a2 + 8) + 160) + 688), v11[7]);
        (*(*a2 + 168))(a2, v12, 0);
        v40 = *(a2 + 8);
        (*(*a2 + 640))(a2, 2, 0, 1, 0);
        v13 = v11[19];
        for (i = v11[20]; v13 != i; v13 += 9)
        {
          while (1)
          {
            v15 = *v11;
            v16 = *v13;
            v17 = *(a2 + 8);
            *(v17 + 264) += 24;
            v18 = *(v17 + 184);
            if (!v18 || ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) - v18 + 24 > *(v17 + 192) - v18)
            {
              v20 = *(v17 + 208) >> 7;
              if (v20 >= 0x1E)
              {
                LOBYTE(v20) = 30;
              }

              v21 = 4096 << v20;
              v23 = operator new(4096 << v20, 8uLL);
              v22 = *(v17 + 208);
              if (v22 >= *(v17 + 212))
              {
                sub_298B90A44(v17 + 200, (v17 + 216), v22 + 1, 8);
                v22 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v22) = v23;
              ++*(v17 + 208);
              *(v17 + 192) = v23 + v21;
            }

            else
            {
              v23 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            *(v17 + 184) = v23 + 24;
            *v23 = 1;
            *(v23 + 1) = *(v23 + 4) << 24;
            *(v23 + 8) = 0;
            *(v23 + 16) = v16;
            *(v17 + 264) += 24;
            v24 = *(v17 + 184);
            if (v24 && ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) - v24 + 24 <= *(v17 + 192) - v24)
            {
              v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v26 = *(v17 + 208) >> 7;
              if (v26 >= 0x1E)
              {
                LOBYTE(v26) = 30;
              }

              v27 = 4096 << v26;
              v25 = operator new(4096 << v26, 8uLL);
              v28 = *(v17 + 208);
              if (v28 >= *(v17 + 212))
              {
                sub_298B90A44(v17 + 200, (v17 + 216), v28 + 1, 8);
                v28 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v28) = v25;
              ++*(v17 + 208);
              *(v17 + 192) = v25 + v27;
            }

            *(v17 + 184) = v25 + 24;
            v29 = *(*(v17 + 144) + 18) ? 65661 : 125;
            *v25 = 2;
            *(v25 + 1) = v29 | (*(v25 + 4) << 24);
            *(v25 + 8) = 0;
            *(v25 + 16) = v15;
            *(v17 + 264) += 32;
            v30 = *(v17 + 184);
            if (v30 && ((v30 + 7) & 0xFFFFFFFFFFFFFFF8) - v30 + 32 <= *(v17 + 192) - v30)
            {
              v31 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v32 = *(v17 + 208) >> 7;
              if (v32 >= 0x1E)
              {
                LOBYTE(v32) = 30;
              }

              v33 = 4096 << v32;
              v31 = operator new(4096 << v32, 8uLL);
              v34 = *(v17 + 208);
              if (v34 >= *(v17 + 212))
              {
                v37 = v31;
                sub_298B90A44(v17 + 200, (v17 + 216), v34 + 1, 8);
                v31 = v37;
                v34 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v34) = v31;
              ++*(v17 + 208);
              *(v17 + 192) = v31 + v33;
            }

            *(v17 + 184) = v31 + 32;
            *v31 = 0;
            *(v31 + 1) = *(v31 + 4) << 24;
            *(v31 + 8) = 0;
            *(v31 + 16) = v25;
            *(v31 + 24) = v23;
            (*(*a2 + 512))(a2);
            v35 = *(v11 + 16);
            if (!v35)
            {
              break;
            }

            (*(*a2 + 520))(a2, v35, 4);
            v13 += 9;
            if (v13 == i)
            {
              goto LABEL_13;
            }
          }

          v36 = sub_298B44B48(v13[3], 125, v40, 0);
          (*(*a2 + 512))(a2, v36, 4, 0);
        }
      }

LABEL_13:
      v10 = v39 + 1;
    }

    while (v39 + 1 != v38);
  }
}

void sub_298B65650(void *a1, uint64_t a2, char a3)
{
  v262[9] = *MEMORY[0x29EDCA608];
  if (*(a2 + 48))
  {
    return;
  }

  v3 = a2;
  v4 = a1;
  v5 = *(a2 + 96);
  v6 = *(a2 + 88);
  if (v6 == v5)
  {
    v12 = (a2 + 136);
    v11 = *(a2 + 136);
    v13 = *(a2 + 144);
    v229 = (a2 + 144);
    if (!v13)
    {
LABEL_11:
      *(a2 + 74) = 1;
      return;
    }

    v14 = v11 + 48 * v13;
    v15 = (v11 + 16);
    v16 = 48 * v13;
    while (*(v15 - 1) == *v15)
    {
      v15 += 6;
      v16 -= 48;
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    if (*(a2 + 74))
    {
      goto LABEL_5;
    }

    v25 = (a2 + 112);
LABEL_49:
    while (1)
    {
      v30 = *(v11 + 8);
      v29 = *(v11 + 16);
      if (v29 != v30)
      {
        break;
      }

LABEL_48:
      v11 += 48;
      if (v11 == v14)
      {
        goto LABEL_77;
      }
    }

    v31 = -1;
    v32 = -1;
    while (1)
    {
      v35 = *(v29 - 8);
      if (v35 == 18)
      {
        v33 = *(v29 - 12);
        if (v33 != 29)
        {
          v34 = 0;
          if (v33 == 19 && *(v29 - 16) <= 0xF8u)
          {
            v34 = 0;
            *(v29 - 12) = 0xCFFFFFFFFLL;
            v33 = 19;
          }

          goto LABEL_53;
        }

        *(v29 - 12) = 0xDFFFFFFFFLL;
      }

      else if (v35 == 17)
      {
        v33 = *(v29 - 12);
        if (v33 != 29)
        {
          v34 = *(v29 - 16);
          v36 = v32 + 16;
          if (v33 == v31 + 2 && v34 == v36)
          {
            *(v29 - 8) = 28;
            *(v29 - 16) = 0xFFFFFFFF00000000;
          }

          goto LABEL_53;
        }

        *(v29 - 12) = 0xEFFFFFFFFLL;
      }

      else if (v35 == 25 && *(v29 - 16) == 0)
      {
        *(v29 - 8) = 24;
      }

      else
      {
        if (v35 == 12)
        {
          v34 = 0;
          v33 = 19;
          goto LABEL_53;
        }

        if (v35 == 28)
        {
          v33 = v31 + 2;
          v34 = v32 + 16;
          goto LABEL_53;
        }
      }

      v33 = -1;
      v34 = -1;
LABEL_53:
      v29 -= 24;
      v31 = v33;
      v32 = v34;
      if (v29 == v30)
      {
        goto LABEL_48;
      }
    }
  }

  if ((*(a2 + 74) & 1) == 0)
  {
    v17 = -1;
    v18 = -1;
    while (1)
    {
      v21 = v6[4];
      if (v21 == 18)
      {
        v19 = v6[3];
        if (v19 != 29)
        {
          v20 = 0;
          if (v19 == 19 && v6[2] <= 0xF8u)
          {
            v20 = 0;
            *(v6 + 3) = 0xCFFFFFFFFLL;
            v19 = 19;
          }

          goto LABEL_15;
        }

        *(v6 + 3) = 0xDFFFFFFFFLL;
      }

      else if (v21 == 17)
      {
        v19 = v6[3];
        if (v19 != 29)
        {
          v20 = v6[2];
          v22 = v18 + 16;
          if (v19 == v17 + 2 && v20 == v22)
          {
            v6[4] = 28;
            *(v6 + 1) = 0xFFFFFFFF00000000;
          }

          goto LABEL_15;
        }

        *(v6 + 3) = 0xEFFFFFFFFLL;
      }

      else if (v21 == 25 && v6[2] == 0)
      {
        v6[4] = 24;
      }

      else
      {
        if (v21 == 12)
        {
          v20 = 0;
          v19 = 19;
          goto LABEL_15;
        }

        if (v21 == 28)
        {
          v19 = v17 + 2;
          v20 = v18 + 16;
          goto LABEL_15;
        }
      }

      v19 = -1;
      v20 = -1;
LABEL_15:
      v6 += 6;
      v17 = v19;
      v18 = v20;
      if (v6 == v5)
      {
        v12 = (a2 + 136);
        v11 = *(a2 + 136);
        v25 = (a2 + 112);
        v26 = *(a2 + 144);
        v229 = (a2 + 144);
        if (v26)
        {
          v14 = v11 + 48 * v26;
          goto LABEL_49;
        }

LABEL_77:
        v39 = *(a2 + 16);
        if (!v39)
        {
          sub_298B868A8("FuncletOrFuncEnd not set", 1);
        }

        v40 = *a2;
        v41 = v4[1];
        v42 = sub_298B44B48(v39, 0, v41, 0);
        v44 = sub_298B44B48(v40, 0, v41, 0);
        *(v41 + 264) += 32;
        v46 = *(v41 + 184);
        if (v46)
        {
          v47 = ((v46 + 7) & 0xFFFFFFFFFFFFFFF8) - v46 + 32 > *(v41 + 192) - v46;
        }

        else
        {
          v47 = 1;
        }

        if (v47)
        {
          v48 = *(v41 + 208) >> 7;
          if (v48 >= 0x1E)
          {
            LOBYTE(v48) = 30;
          }

          v49 = 4096 << v48;
          v51 = operator new(4096 << v48, 8uLL);
          v50 = *(v41 + 208);
          if (v50 >= *(v41 + 212))
          {
            v226 = v12;
            v227 = v51;
            sub_298B90A44(v41 + 200, (v41 + 216), v50 + 1, 8);
            v51 = v227;
            v12 = v226;
            LODWORD(v50) = *(v41 + 208);
          }

          *(*(v41 + 200) + 8 * v50) = v51;
          ++*(v41 + 208);
          *(v41 + 192) = v51 + v49;
        }

        else
        {
          v51 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        *(v41 + 184) = v51 + 32;
        *v51 = 0;
        *(v51 + 1) = (*(v51 + 4) << 24) | 0x12;
        *(v51 + 8) = 0;
        *(v51 + 16) = v42;
        *(v51 + 24) = v44;
        v52 = v4[38];
        v258 = 0uLL;
        LODWORD(v260) = 0;
        v259 = 0;
        if (*v51 == 1)
        {
          v53 = *(v51 + 16);
          v54 = v229;
          v55 = *(v3 + 40);
          if (!v55)
          {
            goto LABEL_102;
          }

LABEL_98:
          v57 = *(v3 + 32);
          if (*(v57 + 8))
          {
            v60 = *(v57 - 8);
            v61 = *v60;
            v58 = (v60 + 2);
            v59 = v61;
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          sub_298B678D8(v4, *(v3 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 96) - *(v3 + 88)) >> 3), *v3, v55, v58, v59, v43, "prologue", 8);
          v54 = v229;
        }

        else
        {
          if (sub_298B44C70(v51, &v258, v52, 0, 0, 0, 0))
          {
            v56 = v258 == 0;
          }

          else
          {
            v56 = 0;
          }

          if (!v56 || (v54 = v229, *(&v258 + 1)))
          {
LABEL_427:
            sub_298B868A8("Failed to evaluate function length in SEH unwind info", 1);
          }

          v53 = v259;
          v55 = *(v3 + 40);
          if (v55)
          {
            goto LABEL_98;
          }
        }

LABEL_102:
        *&v258 = &v259;
        *(&v258 + 1) = 0x400000000;
        v62 = *v54;
        v242 = v25;
        v243 = v3;
        v228 = v12;
        v238 = v53;
        if (!*v54)
        {
          goto LABEL_133;
        }

        v63 = *v12;
        v64 = &v63[6 * v62];
        while (2)
        {
          v65 = *v63;
          v66 = *v3;
          v67 = v4[1];
          v68 = sub_298B44B48(*v63, 0, v67, 0);
          v70 = sub_298B44B48(v66, 0, v67, 0);
          *(v67 + 264) += 32;
          v71 = *(v67 + 184);
          if (v71)
          {
            v72 = ((v71 + 7) & 0xFFFFFFFFFFFFFFF8) - v71 + 32 > *(v67 + 192) - v71;
          }

          else
          {
            v72 = 1;
          }

          if (v72)
          {
            v73 = *(v67 + 208) >> 7;
            if (v73 >= 0x1E)
            {
              LOBYTE(v73) = 30;
            }

            v74 = 4096 << v73;
            v76 = operator new(4096 << v73, 8uLL);
            v75 = *(v67 + 208);
            if (v75 >= *(v67 + 212))
            {
              v244 = v76;
              sub_298B90A44(v67 + 200, (v67 + 216), v75 + 1, 8);
              v76 = v244;
              v75 = *(v67 + 208);
            }

            *(*(v67 + 200) + 8 * v75) = v76;
            ++*(v67 + 208);
            *(v67 + 192) = v76 + v74;
            v3 = v243;
          }

          else
          {
            v76 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          *(v67 + 184) = v76 + 32;
          *v76 = 0;
          *(v76 + 1) = (*(v76 + 4) << 24) | 0x12;
          *(v76 + 8) = 0;
          *(v76 + 16) = v68;
          *(v76 + 24) = v70;
          v77 = v4[38];
          v245 = 0uLL;
          DWORD2(v246) = 0;
          *&v246 = 0;
          if (*v76 == 1)
          {
            v78 = *(v76 + 16);
            v79 = *(v3 + 32);
            if ((*(v79 + 8) & 1) == 0)
            {
              goto LABEL_116;
            }

LABEL_124:
            v83 = *(v79 - 8);
            v84 = *v83;
            v80 = (v83 + 2);
            v81 = v84;
          }

          else
          {
            if (sub_298B44C70(v76, &v245, v77, 0, 0, 0, 0))
            {
              v82 = v245 == 0;
            }

            else
            {
              v82 = 0;
            }

            if (!v82 || *(&v245 + 1))
            {
              goto LABEL_427;
            }

            v78 = v246;
            v79 = *(v3 + 32);
            if (*(v79 + 8))
            {
              goto LABEL_124;
            }

LABEL_116:
            v80 = 0;
            v81 = 0;
          }

          sub_298B678D8(v4, v63[1], 0xAAAAAAAAAAAAAAABLL * ((v63[2] - v63[1]) >> 3), v65, v63[5], v80, v81, v69, "epilogue", 8);
          *&v245 = v65;
          *(&v245 + 1) = v78;
          *&v246 = v78 - 0x5555555555555554 * ((v63[2] - v63[1]) >> 3) - 4;
          v85 = v258;
          if (DWORD2(v258) >= HIDWORD(v258))
          {
            if (v258 <= &v245 && v258 + 24 * DWORD2(v258) > &v245)
            {
              v88 = &v245 - v258;
              sub_298B90A44(&v258, &v259, DWORD2(v258) + 1, 24);
              v85 = v258;
              v86 = &v88[v258];
            }

            else
            {
              sub_298B90A44(&v258, &v259, DWORD2(v258) + 1, 24);
              v86 = &v245;
              v85 = v258;
            }
          }

          else
          {
            v86 = &v245;
          }

          v87 = v85 + 24 * DWORD2(v258);
          v45 = *v86;
          *(v87 + 16) = *(v86 + 2);
          *v87 = v45;
          v62 = ++DWORD2(v258);
          v63 += 6;
          if (v63 == v64)
          {
            v53 = v238;
LABEL_133:
            if (v53 < 1048573)
            {
              v90 = 0;
              v89 = 0;
              goto LABEL_169;
            }

            *&v45 = 0;
            v89 = 0;
            v90 = 0;
            v240 = v45;
            v91 = v53;
            while (2)
            {
              LODWORD(v255) = 0;
              v254 = 0u;
              v256 = &v258;
              v257 = 0;
              if (DWORD2(v258) <= v90)
              {
                v97 = 1048572;
              }

              else
              {
                v92 = v89 + 1048572;
                v93 = v90;
                v94 = 24 * v90;
                while (1)
                {
                  v95 = (v258 + v94);
                  if (*(v258 + v94 + 16) >= v92)
                  {
                    break;
                  }

                  v96 = v95[1];
                  *sub_298B67C58(&v254, v95) = v96;
                  ++v93;
                  v94 += 24;
                  if (v93 >= DWORD2(v258))
                  {
                    v90 = v93;
                    v97 = 1048572;
                    goto LABEL_146;
                  }
                }

                v98 = v95[1];
                if (v98 <= v92)
                {
                  v97 = v98 - v89;
                }

                else
                {
                  v97 = 1048572;
                }

                v90 = v93;
              }

LABEL_146:
              *&v245 = v89;
              *(&v245 + 1) = v97;
              LOBYTE(v246) = v89 == 0;
              __src = 0;
              v248 = 0;
              *(&v246 + 1) = 0;
              v249 = 0;
              v250 = &v252;
              v251 = 0;
              MEMORY[0x29C2945E0](0, 8, v52);
              v99 = *(&v254 + 1);
              __src = v254;
              v254 = v240;
              v248 = v99;
              v100 = v257;
              v249 = v255;
              LODWORD(v255) = 0;
              v101 = &v251;
              if (v257)
              {
                if (v250 != &v252)
                {
                  free(v250);
                  v100 = v257;
                }

                v250 = v256;
                v251 = __PAIR64__(HIDWORD(v257), v100);
                v256 = &v258;
                HIDWORD(v257) = 0;
                v101 = &v257;
              }

              *v101 = 0;
              v102 = *(v3 + 160);
              if (v102 >= *(v3 + 168))
              {
                *(v3 + 160) = sub_298B68138((v3 + 152), &v245);
                v106 = v250;
                if (v250 == &v252)
                {
                  goto LABEL_155;
                }
              }

              else
              {
                v103 = v246;
                *v102 = v245;
                *(v102 + 16) = v103;
                *(v102 + 32) = 0;
                *(v102 + 40) = 0;
                *(v102 + 48) = 0;
                MEMORY[0x29C2945E0](0, 8);
                v104 = v249;
                *(v102 + 48) = v249;
                if (v104)
                {
                  v105 = operator new(16 * v104, 8uLL);
                  *(v102 + 32) = v105;
                  *(v102 + 40) = v248;
                  memcpy(v105, __src, 16 * *(v102 + 48));
                }

                else
                {
                  *(v102 + 32) = 0;
                  *(v102 + 40) = 0;
                }

                v107 = v102 + 72;
                *(v102 + 56) = v102 + 72;
                *(v102 + 64) = 0;
                if (v102 == &v245)
                {
                  v3 = v243;
                  *(v243 + 160) = v107;
                  v106 = v250;
                  if (v250 == &v252)
                  {
                    goto LABEL_155;
                  }
                }

                else
                {
                  v108 = v251;
                  if (v251)
                  {
                    sub_298B90A44(v102 + 56, (v102 + 72), v251, 16);
                    if (v251)
                    {
                      memcpy(*(v102 + 56), v250, 16 * v251);
                    }

                    *(v102 + 64) = v108;
                  }

                  v3 = v243;
                  *(v243 + 160) = v107;
                  v106 = v250;
                  if (v250 == &v252)
                  {
LABEL_155:
                    MEMORY[0x29C2945E0](__src, 8);
                    if (v256 != &v258)
                    {
                      free(v256);
                    }

                    v89 += v97;
                    v91 -= v97;
                    MEMORY[0x29C2945E0](v254, 8);
                    if (v91 <= 1048572)
                    {
                      v62 = DWORD2(v258);
                      v25 = v242;
                      v53 = v238;
LABEL_169:
                      *&v245 = v89;
                      *(&v245 + 1) = v53 - v89;
                      LOBYTE(v246) = v89 == 0;
                      __src = 0;
                      v248 = 0;
                      *(&v246 + 1) = 0;
                      v249 = 0;
                      v250 = &v252;
                      v251 = 0;
                      if (v62 > v90)
                      {
                        v109 = v90;
                        v110 = 24 * v90;
                        do
                        {
                          v111 = *(v258 + v110 + 8);
                          *sub_298B67C58(&__src, (v258 + v110)) = v111;
                          ++v109;
                          v110 += 24;
                        }

                        while (v109 < DWORD2(v258));
                      }

                      v112 = *(v3 + 160);
                      if (v112 >= *(v3 + 168))
                      {
                        v116 = sub_298B68138((v3 + 152), &v245);
                      }

                      else
                      {
                        v113 = v246;
                        *v112 = v245;
                        *(v112 + 16) = v113;
                        *(v112 + 32) = 0;
                        *(v112 + 40) = 0;
                        *(v112 + 48) = 0;
                        MEMORY[0x29C2945E0](0, 8, v52);
                        v114 = v249;
                        *(v112 + 48) = v249;
                        if (v114)
                        {
                          v115 = operator new(16 * v114, 8uLL);
                          *(v112 + 32) = v115;
                          *(v112 + 40) = v248;
                          memcpy(v115, __src, 16 * *(v112 + 48));
                        }

                        else
                        {
                          *(v112 + 32) = 0;
                          *(v112 + 40) = 0;
                        }

                        v116 = (v112 + 72);
                        *(v112 + 56) = v112 + 72;
                        *(v112 + 64) = 0;
                        if (v112 != &v245)
                        {
                          v117 = v251;
                          if (v251)
                          {
                            sub_298B90A44(v112 + 56, (v112 + 72), v251, 16);
                            if (v251)
                            {
                              memcpy(*(v112 + 56), v250, 16 * v251);
                            }

                            *(v112 + 64) = v117;
                          }
                        }
                      }

                      *(v3 + 160) = v116;
                      if (v250 != &v252)
                      {
                        free(v250);
                      }

                      MEMORY[0x29C2945E0](__src, 8);
                      if (v258 != &v259)
                      {
                        free(v258);
                      }

                      v118 = *(v3 + 88);
                      v119 = *(v3 + 96);
                      if (v119 == v118)
                      {
                        v122 = a3;
                        *(v3 + 68) = 0;
                        v123 = *(v3 + 152);
                        v231 = *(v3 + 160);
                        if (v123 == v231)
                        {
                          goto LABEL_426;
                        }
                      }

                      else
                      {
                        v120 = 0;
                        v121 = *(v3 + 88);
                        v122 = a3;
                        do
                        {
                          v120 += dword_298D1A848[*(v121 + 16) - 1];
                          v121 += 24;
                        }

                        while (v121 != v119);
                        *(v3 + 68) = v120;
                        v123 = *(v3 + 152);
                        v231 = *(v3 + 160);
                        if (v123 == v231)
                        {
LABEL_426:
                          *(v3 + 96) = v118;
                          return;
                        }
                      }

                      v230 = v122 ^ 1;
                      v124 = v262;
                      v241 = v4;
                      while (2)
                      {
                        v125 = v4[1];
                        *&v258 = "tmp";
                        LOWORD(v261) = 259;
                        v232 = v125;
                        v126 = sub_298B2D8D0(v125, &v258, 1);
                        (*(*v4 + 640))(v4, 2, 0, 1, 0);
                        (*(*v4 + 192))(v4, v126, 0);
                        *(v123 + 24) = v126;
                        if (!*v123)
                        {
                          *(v3 + 48) = v126;
                        }

                        v127 = *(v123 + 16);
                        v128 = *(v123 + 64);
                        v129 = *(v123 + 8);
                        v130 = *(v3 + 68);
                        v237 = v123;
                        v233 = v127;
                        v234 = v129;
                        if (v128 != 1 || (*&v258 = **(v123 + 56), v131 = sub_298B68BE4(v25, &v258), v132 = (*(v123 + 8) + *v123 - *(*(v123 + 56) + 8)) >> 2, v133 = *v131, v134 = v131[1] - *v131, v132 != 0xAAAAAAAAAAAAAAABLL * (v134 >> 3)))
                        {
                          v139 = -1;
                          goto LABEL_203;
                        }

                        if (v130 > 31)
                        {
                          v139 = -1;
                        }

                        else
                        {
                          v135 = 0;
                          if ((*(v123 + 8) + *v123 - *(*(v123 + 56) + 8)) >> 2)
                          {
                            v136 = 24 * v132;
                            v137 = (v133 + 16);
                            do
                            {
                              v138 = *v137;
                              v137 += 6;
                              v135 += dword_298D1A848[v138 - 1];
                              v136 -= 24;
                            }

                            while (v136);
                          }

                          if ((v135 + v130) >= 0x7D)
                          {
                            v139 = -1;
                          }

                          else
                          {
                            v139 = v130;
                          }
                        }

                        v182 = *(v3 + 88);
                        v183 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 96) - v182) >> 3);
                        if (v132 <= v183)
                        {
                          v184 = v133 + v134;
                          v185 = v132 - 1;
                          while ((v185 & 0x80000000) == 0)
                          {
                            v186 = (v182 + 24 * (v185 & 0x7FFFFFFF));
                            v187 = (v184 + 24 * ~(v185 & 0x7FFFFFFF));
                            if (v186[2] == v187[2] && v186[3] == v187[3])
                            {
                              --v185;
                              if (v186[4] == v187[4])
                              {
                                continue;
                              }
                            }

                            goto LABEL_203;
                          }

                          if (v132 == v183)
                          {
                            v188 = 0;
                            goto LABEL_377;
                          }

                          v188 = 0;
                          v189 = 8 * ((*(v3 + 96) - v182) >> 3) - 24 * v132;
                          v190 = (v182 + v134 + 16);
                          do
                          {
                            v191 = *v190;
                            v190 += 6;
                            v188 += dword_298D1A848[v191 - 1];
                            v189 -= 24;
                          }

                          while (v189);
                          if ((v188 & 0x80000000) == 0)
                          {
LABEL_377:
                            if (v130 > 124 || v188 > 0x1F)
                            {
                              goto LABEL_203;
                            }

                            v192 = *(v3 + 112);
                            v193 = *(v3 + 128);
                            if (!v193)
                            {
                              goto LABEL_385;
                            }

                            LODWORD(v194) = ((v258 >> 4) ^ (v258 >> 9)) & (v193 - 1);
                            v195 = (v192 + 16 * v194);
                            v196 = *v195;
                            if (*v195 != v258)
                            {
                              v197 = v129;
                              v198 = v127;
                              v199 = v124;
                              v200 = 1;
                              while (1)
                              {
                                v25 = v242;
                                v3 = v243;
                                v124 = v199;
                                v127 = v198;
                                v129 = v197;
                                v4 = v241;
                                if (v196 == -4096)
                                {
                                  break;
                                }

                                v201 = v194 + v200++;
                                v194 = v201 & (v193 - 1);
                                v196 = *(v192 + 16 * v194);
                                if (v196 == v258)
                                {
                                  v195 = (v192 + 16 * v194);
                                  v25 = v242;
                                  v3 = v243;
                                  v124 = v199;
                                  v127 = v198;
                                  v129 = v197;
                                  v4 = v241;
                                  goto LABEL_386;
                                }
                              }

LABEL_385:
                              v195 = (v192 + 16 * v193);
                            }

LABEL_386:
                            if (v195 == (v192 + 16 * v193))
                            {
                              v202 = v229;
                            }

                            else
                            {
                              v202 = (v195 + 1);
                            }

                            v203 = *v202;
                            v204 = *v229;
                            if (*v202 == *v229)
                            {
LABEL_390:
                              v139 = v188;
                              goto LABEL_203;
                            }

                            v205 = *v228;
                            v206 = &(*v228)[6 * v203];
                            if (v193)
                            {
                              v207 = v193 - 1;
                              LODWORD(v208) = ((*v206 >> 4) ^ (*v206 >> 9)) & v207;
                              v209 = (v192 + 16 * v208);
                              v210 = *v209;
                              if (*v206 == *v209)
                              {
LABEL_393:
                                *v209 = -8192;
                                *(v3 + 120) = vadd_s32(*(v3 + 120), 0x1FFFFFFFFLL);
                                v205 = *(v3 + 136);
                                goto LABEL_394;
                              }

                              v214 = 1;
                              while (v210 != -4096)
                              {
                                v215 = v208 + v214++;
                                v208 = v215 & v207;
                                v210 = *(v192 + 16 * v208);
                                if (*v206 == v210)
                                {
                                  v209 = (v192 + 16 * v208);
                                  v25 = v242;
                                  v3 = v243;
                                  v4 = v241;
                                  goto LABEL_393;
                                }
                              }

                              v25 = v242;
                              v3 = v243;
                              v4 = v241;
                              v211 = v206 + 6;
                              v212 = &v205[6 * v204];
                              v213 = v229;
                              if (v206 + 6 == v212)
                              {
LABEL_406:
                                v217 = v204 - 1;
                                *v213 = v204 - 1;
                                v218 = &v205[6 * v204 - 6];
                                v219 = v218[1];
                                v127 = v233;
                                if (v219)
                                {
                                  v218[2] = v219;
                                  operator delete(v219);
                                  v205 = *v228;
                                  v217 = *v229;
                                }

                                if (&v205[6 * v217] != v206 && *(v3 + 120))
                                {
                                  v220 = *(v3 + 128);
                                  if (v220)
                                  {
                                    v221 = 16 * v220;
                                    v222 = *(v3 + 112);
                                    while ((*v222 | 0x1000) == 0xFFFFFFFFFFFFF000)
                                    {
                                      v222 += 16;
                                      v221 -= 16;
                                      if (!v221)
                                      {
                                        goto LABEL_425;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v222 = *(v3 + 112);
                                  }

                                  v223 = *(v3 + 112) + 16 * v220;
                                  if (v222 != v223)
                                  {
                                    v224 = 0xAAAAAAAAAAAAAAABLL * ((v206 - v205) >> 4);
                                    do
                                    {
                                      v225 = *(v222 + 8);
                                      if (v224 < v225)
                                      {
                                        *(v222 + 8) = v225 - 1;
                                      }

                                      v222 += 16;
                                      v129 = v234;
                                      if (v222 == v223)
                                      {
                                        goto LABEL_390;
                                      }

                                      while ((*v222 | 0x1000) == 0xFFFFFFFFFFFFF000)
                                      {
                                        v222 += 16;
                                        if (v222 == v223)
                                        {
                                          goto LABEL_390;
                                        }
                                      }
                                    }

                                    while (v222 != v223);
                                  }
                                }

LABEL_425:
                                v139 = v188;
                                v129 = v234;
                                goto LABEL_203;
                              }
                            }

                            else
                            {
LABEL_394:
                              v211 = v206 + 6;
                              v212 = &v205[6 * v204];
                              v213 = v229;
                              if (v206 + 6 == v212)
                              {
                                goto LABEL_406;
                              }
                            }

                            do
                            {
                              *(v211 - 6) = *v211;
                              v216 = *(v211 - 5);
                              if (v216)
                              {
                                *(v211 - 4) = v216;
                                operator delete(v216);
                                v213 = v229;
                                *(v211 - 4) = 0;
                                *(v211 - 3) = 0;
                              }

                              *(v211 - 5) = *(v211 + 1);
                              *(v211 - 3) = v211[3];
                              v211[2] = 0;
                              v211[3] = 0;
                              v211[1] = 0;
                              *(v211 - 1) = *(v211 + 2);
                              v211 += 6;
                            }

                            while (v211 != v212);
                            v204 = *v213;
                            v205 = *v228;
                            goto LABEL_406;
                          }
                        }

LABEL_203:
                        if (*(v3 + 160) - *(v3 + 152) != 72 || v139 < 0 || v139 >= v130 || *(v3 + 73) & 1 | ((v129 & 0xFFFFE000) != 0) | v230 & 1)
                        {
                          goto LABEL_310;
                        }

                        if (v139 != 1)
                        {
                          if (!v139)
                          {
                            v140 = *(v3 + 96);
                            goto LABEL_212;
                          }

                          goto LABEL_310;
                        }

                        v140 = *(v3 + 96);
                        if (*(v140 - 2) != 24)
                        {
                          goto LABEL_310;
                        }

LABEL_212:
                        v141 = *(v3 + 88);
                        if (v141 != v140)
                        {
                          v142 = 0;
                          v143 = 0;
                          v144 = 0;
                          v145 = 0;
                          v146 = 0;
                          v147 = 0;
                          v148 = 0;
                          v149 = 0;
                          v150 = 0;
                          while (1)
                          {
                            switch(v141[4])
                            {
                              case 1:
                              case 0xA:
                              case 0x12:
                              case 0x15:
                              case 0x19:
                              case 0x1D:
                              case 0x1E:
                              case 0x1F:
                              case 0x20:
                              case 0x22:
                              case 0x23:
                              case 0x24:
                              case 0x25:
                              case 0x26:
                              case 0x27:
                              case 0x28:
                              case 0x29:
                              case 0x2A:
                              case 0x2B:
                              case 0x2C:
                              case 0x2D:
                                goto LABEL_310;
                              case 2:
                              case 0xB:
                                if ((v145 - 7) < 0xFFFFFFFA)
                                {
                                  goto LABEL_310;
                                }

                                if (v150 == 4080)
                                {
                                  v150 = v141[2] + 4080;
                                  v145 = 6;
                                  v151 = 1;
                                  v141 += 6;
                                  if (v141 == v140)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                else
                                {
                                  if (v150)
                                  {
                                    goto LABEL_310;
                                  }

                                  v150 = v141[2];
                                  v145 = 6;
                                  v151 = 1;
                                  v141 += 6;
                                  if (v141 == v140)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                continue;
                              case 0xC:
                                if ((v145 - 3) < 0xFFFFFFFE)
                                {
                                  goto LABEL_310;
                                }

                                v144 = v141[2];
                                v142 = 2;
                                v145 = 3;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0xD:
                                if ((v145 - 6) < 0xFFFFFFFB)
                                {
                                  goto LABEL_310;
                                }

                                v150 = v141[2];
LABEL_256:
                                v145 = 7;
                                v147 = 1;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0xE:
                                if (v145 != 6 || v141[2])
                                {
                                  goto LABEL_310;
                                }

                                goto LABEL_256;
                              case 0xF:
                                if (v145 != 3 || v141[2] != 8 * v142)
                                {
                                  goto LABEL_310;
                                }

                                v152 = v141[3];
                                if (v152 == v142 + 19)
                                {
                                  goto LABEL_267;
                                }

                                if (v152 != 30)
                                {
                                  goto LABEL_310;
                                }

LABEL_269:
                                v145 = 4;
                                v146 = 1;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x10:
                                if ((v145 - 3) < 0xFFFFFFFE)
                                {
                                  goto LABEL_310;
                                }

                                v144 = v141[2];
                                v153 = v141[3];
                                if (v153 == 30)
                                {
                                  goto LABEL_269;
                                }

                                if (v153 != 19)
                                {
                                  goto LABEL_310;
                                }

LABEL_267:
                                ++v142;
                                v145 = 4;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x11:
                                if (v145 != 3 || v141[2] != 8 * v142 || v141[3] != v142 + 19)
                                {
                                  goto LABEL_310;
                                }

                                v142 += 2;
                                v145 = 3;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x13:
                                if (v145 != 3 || v141[2] != 8 * v142 || v141[3] != v142 + 19)
                                {
                                  goto LABEL_310;
                                }

                                ++v142;
                                goto LABEL_269;
                              case 0x14:
                                if (v145 != 4 || !v143 || v141[3] != v143 + 8 || v141[2] != 8 * (v143 + v142 + (v146 & 1)))
                                {
                                  goto LABEL_310;
                                }

                                ++v143;
                                v145 = 5;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x16:
                                if ((v145 - 5) < 0xFFFFFFFE || v141[3] != v143 + 8 || v141[2] != 8 * (v143 + v142 + (v146 & 1)))
                                {
                                  goto LABEL_310;
                                }

                                v143 += 2;
                                v145 = 4;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x17:
                                if ((v145 - 1) > 1 || v141[3] != 8)
                                {
                                  goto LABEL_310;
                                }

                                v144 = v141[2];
                                v143 = 2;
                                v145 = 4;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x18:
                                if (v145 != 7)
                                {
                                  goto LABEL_310;
                                }

                                v151 = 0;
                                v145 = 8;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1A:
                                if ((v145 - 6) < 0xFFFFFFFD)
                                {
                                  goto LABEL_310;
                                }

                                ++v149;
                                v145 = 5;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1B:
                                if (v145)
                                {
                                  goto LABEL_310;
                                }

                                v151 = 1;
                                v145 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1C:
                                if (v145 == 4)
                                {
                                  v143 += 2;
                                  v151 = 1;
                                  v141 += 6;
                                  if (v141 == v140)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                else
                                {
                                  if (v145 != 3)
                                  {
                                    goto LABEL_310;
                                  }

                                  v142 += 2;
                                  v151 = 1;
                                  v141 += 6;
                                  if (v141 == v140)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                break;
                              case 0x21:
                                if (v145 != 1)
                                {
                                  goto LABEL_310;
                                }

                                v145 = 2;
                                v148 = 1;
                                v151 = 1;
                                v141 += 6;
                                if (v141 == v140)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              default:
                                sub_298B868A8("Unknown Arm64 unwind opcode", 1);
                            }
                          }
                        }

                        v150 = 0;
                        v149 = 0;
                        v148 = 0;
                        v147 = 0;
                        v146 = 0;
                        v144 = 0;
                        v143 = 0;
                        v142 = 0;
                        v151 = 1;
LABEL_287:
                        if (v142 > 0xA || v143 > 8 || (v147 & (v146 | v151) & 1) != 0 || (v149 & 0xFFFFFFFB) != 0 || ((v148 ^ 1 | v147) & 1) == 0 || v149 == 4)
                        {
                          goto LABEL_310;
                        }

                        v154 = 8 * v142;
                        if (v146)
                        {
                          v154 = 8 * v142 + 8;
                        }

                        if (v144 != ((v154 + 8 * v143 + 15) & 0x1F0) || (v147 & (v150 < 16)) != 0 || (v150 & 0xF) != 0 || (v155 = v144 + v150, v155 > 0x1FF0))
                        {
LABEL_310:
                          v160 = v139 + (v139 >= 0);
                          if (!v128)
                          {
                            v160 = 0;
                          }

                          if (!v127)
                          {
                            v139 = v160;
                          }

                          v236 = v139;
                          v239 = v130 + (v127 ^ 1);
                          LODWORD(v259) = 0;
                          v258 = 0uLL;
                          v260 = v124;
                          v261 = 0;
                          if (*(v237 + 64))
                          {
                            operator new();
                          }

                          if ((v239 & 3) != 0)
                          {
                            v161 = (v239 >> 2) + 1;
                          }

                          else
                          {
                            v161 = v239 >> 2;
                          }

                          if (v139 < 0)
                          {
                            v162 = *(v237 + 64);
                          }

                          else
                          {
                            v162 = v139;
                          }

                          v164 = v162 > 0x1F || v239 > 0x7C;
                          v165 = (v162 << 22) + (v161 << 27);
                          if (v164)
                          {
                            v165 = 0;
                          }

                          if (*(v3 + 73))
                          {
                            v165 |= 0x100000u;
                          }

                          if (v236 >= 0)
                          {
                            v165 |= 0x200000u;
                          }

                          (*(*v4 + 520))(v4, v165 | (v234 >> 2) & 0x3FFFF, 4);
                          if (v164)
                          {
                            if (v161 > 0xFF || v162 >= 0x10000)
                            {
                              sub_298B868A8("SEH unwind data splitting is only implemented for large functions, cases of too many code words or too many epilogs will be done later", 1);
                            }

                            (*(*v4 + 520))(v4, v162 | (v161 << 16), 4);
                          }

                          if (v236 < 0 && v261)
                          {
                            v166 = v260;
                            v167 = &v260[16 * v261];
                            do
                            {
                              *&v245 = *v166;
                              v168 = *(v166 + 2);
                              v169 = ((*sub_298B67C58((v237 + 32), &v245) - *v237) >> 2) | (v168 << 22);
                              (*(*v4 + 520))(v4, v169, 4);
                              v166 += 16;
                            }

                            while (v166 != v167);
                          }

                          if ((v233 & 1) == 0)
                          {
                            (*(*v4 + 520))(v4, 229, 1);
                          }

                          v171 = *(v3 + 88);
                          v170 = *(v3 + 96);
                          if (v170 != v171)
                          {
                            do
                            {
                              v172 = v170 - 24;
                              v245 = *(v170 - 24);
                              *&v246 = *(v170 - 8);
                              sub_298B68478(v4, &v245);
                              v170 = v172;
                            }

                            while (v172 != v171);
                          }

                          v173 = *(v237 + 64);
                          if (v173)
                          {
                            v174 = *(v237 + 56);
                            v175 = &v174[2 * v173];
                            do
                            {
                              v176 = sub_298B68BE4(v25, v174);
                              v178 = *v176;
                              v177 = *(v176 + 8);
                              if (*v176 != v177)
                              {
                                do
                                {
                                  sub_298B68478(v4, v178);
                                  v178 += 6;
                                }

                                while (v178 != v177);
                              }

                              v174 += 2;
                            }

                            while (v174 != v175);
                          }

                          if ((4 * v161 - v239) >= 1)
                          {
                            v179 = v239 - 4 * v161;
                            do
                            {
                              (*(*v4 + 520))(v4, 227, 1);
                            }

                            while (!__CFADD__(v179++, 1));
                          }

                          if (*(v3 + 73))
                          {
                            v181 = sub_298B44B48(*(v3 + 24), 125, v232, 0);
                            (*(*v4 + 512))(v4, v181, 4, 0);
                          }

                          v159 = v237;
                          if (v260 != v124)
                          {
                            free(v260);
                          }

                          MEMORY[0x29C2945E0](v258, 8);
                        }

                        else
                        {
                          v156 = ((v143 << 13) - 0x2000) & 0xE000;
                          if (!v143)
                          {
                            v156 = 0;
                          }

                          if (v146)
                          {
                            v157 = 0x200000;
                          }

                          else
                          {
                            v157 = 0;
                          }

                          if (v147)
                          {
                            v157 = 6291456;
                          }

                          if (v148)
                          {
                            v158 = 0x400000;
                          }

                          else
                          {
                            v158 = v157;
                          }

                          *(v3 + 64) |= v156 | v129 & 0x1FFC | v158 | (v142 << 16) | (v155 << 19) | 1;
                          v159 = v237;
                        }

                        v123 = v159 + 72;
                        if (v123 == v231)
                        {
                          v118 = *(v3 + 88);
                          goto LABEL_426;
                        }

                        continue;
                      }
                    }

                    continue;
                  }
                }
              }

              break;
            }

            free(v106);
            goto LABEL_155;
          }

          continue;
        }
      }
    }
  }

LABEL_5:
  v7 = a1[1];
  v8 = *(a2 + 32);
  if (*(v8 + 8))
  {
    v27 = *(v8 - 8);
    v28 = *v27;
    v9 = v27 + 2;
    v10 = v28;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  LOWORD(__src) = 1283;
  *&v245 = "Earlier .seh_handlerdata for ";
  *&v246 = v9;
  *(&v246 + 1) = v10;
  *&v258 = &v245;
  v259 = " skipped due to no unwind info at the time (.seh_handlerdata too early?), but the function later did get unwind info that can't be emitted";
  LOWORD(v261) = 770;
  *(v7 + 2056) = 1;
  v253 = 0;
  *&v254 = &unk_2A1F1BDB8;
  *(&v254 + 1) = &v253;
  v255 = &v258;
  v256 = &v254;
  sub_298B2FFE4(v7, 0, &v254);
  if (v256 == &v254)
  {
    (*(*v256 + 32))(v256);
  }

  else if (v256)
  {
    (*(*v256 + 40))();
  }
}