uint64_t sub_181956EF4(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    result = sub_1818B8080(result, a2, a3);
    if (result != v3)
    {
      v6 = result;
      if (!v4)
      {
        goto LABEL_14;
      }

      while (1)
      {
        v7 = *(v4 + 1);
        if ((v7 & 0x82000) == 0)
        {
          break;
        }

        if ((v7 & 0x80000) != 0)
        {
          v4 = *(*(v4 + 4) + 8);
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (*v4 != 114)
          {
            break;
          }

          v4 = *(v4 + 2);
          if (!v4)
          {
            goto LABEL_14;
          }
        }
      }

      if ((v7 & 0x400000) != 0 || *v4 == 176)
      {
        v8 = 80;
      }

      else
      {
LABEL_14:
        v8 = 81;
      }

      result = *(v5 + 16);
      v9 = *(result + 144);
      if (*(result + 148) <= v9)
      {

        return sub_18194C8AC(result, v8, v6, v3, 0);
      }

      else
      {
        *(result + 144) = v9 + 1;
        v10 = *(result + 136) + 40 * v9;
        *v10 = v8;
        *(v10 + 2) = 0;
        *(v10 + 4) = v6;
        *(v10 + 8) = v3;
        *(v10 + 1) = 0;
        *(v10 + 12) = 0;
        *(v10 + 28) = 0;
        *(v10 + 20) = 0;
        *(v10 + 36) = 0;
      }
    }
  }

  return result;
}

void sub_181957014(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  if (a2 != 1)
  {
    if (*(*(*(*result + 32) + 32 * a2 + 8) + 17))
    {
      sub_1819570CC(result, a2, a3, a4, a5);
    }
  }
}

void *sub_181957040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = sub_1819572CC(a1, a2);
  if (result)
  {
    v4 = result;
    if (*(*v2 + 103))
    {
      if (!*(*v2 + 824) && (*result)-- == 1)
      {
        v6 = result[2];

        return sub_181939EC8(v6, v4);
      }
    }

    else
    {
      v7 = *(v2 + 136) + 40 * *(v2 + 144);
      *(v7 - 39) = -8;
      *(v7 - 24) = result;
    }
  }

  return result;
}

void sub_1819570CC(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v6 = a4;
  if (*(a1 + 152))
  {
    v9 = *(a1 + 152);
  }

  else
  {
    v9 = a1;
  }

  v10 = *(v9 + 132);
  v11 = *(v9 + 136);
  if (v10 < 1)
  {
    v14 = 24 * v10 + 24;
    v15 = *v9;
    v16 = v14;
    if (!v11)
    {
      v17 = sub_181929E8C(*v9, v14, 3025153638);
      *(v9 + 136) = v17;
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = (v11 + 1);
    v13 = *(v9 + 132);
    do
    {
      if (*(v12 - 2) == a2 && *(v12 - 1) == a3)
      {
        *v12 = (*v12 | a4) != 0;
        return;
      }

      v12 += 24;
      --v13;
    }

    while (v13);
    v14 = 24 * v10 + 24;
    v15 = *v9;
    v16 = v14;
  }

  if (*(v15 + 512) > v11)
  {
    if (*(v15 + 496) <= v11)
    {
      if (v14 < 0x81)
      {
LABEL_16:
        v17 = *(v9 + 136);
LABEL_19:
        *(v9 + 136) = v17;
LABEL_20:
        v18 = *(v9 + 132);
        *(v9 + 132) = v18 + 1;
        v19 = &v17[24 * v18];
        *v19 = a2;
        *(v19 + 1) = a3;
        v19[8] = v6;
        *(v19 + 2) = a5;
        return;
      }
    }

    else if (*(v15 + 504) <= v11 && v16 <= *(v15 + 438))
    {
      goto LABEL_16;
    }
  }

  v17 = sub_181929F38(v15, *(v9 + 136), v16, 3025153638);
  if (v17)
  {
    goto LABEL_19;
  }

  sub_181929C84(v15, v11);
  *(v9 + 136) = 0;
LABEL_23:
  *(v9 + 132) = 0;
  v20 = *v9;
  if (!*(*v9 + 103) && !*(v20 + 104))
  {
    *(v20 + 103) = 1;
    if (*(v20 + 220) >= 1)
    {
      *(v20 + 424) = 1;
    }

    ++*(v20 + 432);
    *(v20 + 436) = 0;
    v21 = *(v20 + 344);
    if (v21)
    {
      sub_181910730(v21, "out of memory");
      for (i = *(v20 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }
}

void *sub_1819572CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 0;
  }

  v6 = *(a2 + 96);
  v7 = *(a2 + 94);
  v8 = *(a2 + 99);
  v9 = *a1;
  v10 = sub_181929E8C(*a1, 9 * v6 + 32, 0x2004093837F09);
  v2 = v10;
  if ((v8 & 8) != 0)
  {
    if (!v10)
    {
      if (*(v9 + 103) || *(v9 + 104))
      {
        return 0;
      }

      *(v9 + 103) = 1;
      if (*(v9 + 220) >= 1)
      {
        *(v9 + 424) = 1;
      }

      ++*(v9 + 432);
      *(v9 + 436) = 0;
      v22 = *(v9 + 344);
      if (!v22)
      {
        return 0;
      }

      sub_181910730(v22, "out of memory");
      v23 = *(v9 + 344);
      *(v23 + 24) = 7;
      v24 = *(v23 + 216);
      if (!v24)
      {
        return 0;
      }

      v2 = 0;
      do
      {
        ++*(v24 + 52);
        *(v24 + 24) = 7;
        v24 = *(v24 + 216);
      }

      while (v24);
      return v2;
    }

    goto LABEL_16;
  }

  v7 = v6;
  if (v10)
  {
LABEL_16:
    *(v10 + 3) = v7;
    *(v10 + 4) = v6;
    *(v10 + 4) = *(v9 + 100);
    v10[2] = v9;
    v10[3] = &v10[v6 + 4];
    *v10 = 1;
    bzero(v10 + 4, 9 * v6);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v16 = *(a2 + 64);
        v17 = *(v16 + 8 * i);
        if (v17 == "BINARY")
        {
          v15 = 0;
        }

        else
        {
          v18 = *(*a1 + 100);
          v19 = *(*a1 + 197);
          v20 = sub_181949138(*a1, *(*a1 + 100), *(v16 + 8 * i), v19);
          v15 = v20;
          if (!v19 && (!v20 || !v20[3]))
          {
            v15 = sub_18194E6B8(a1, v18, v20, v17);
          }
        }

        v2[i + 4] = v15;
        *(v2[3] + i) = *(*(a2 + 56) + i);
      }
    }

    if (*(a1 + 52))
    {
      if ((*(a2 + 99) & 0x100) == 0)
      {
        *(a2 + 99) |= 0x100u;
        *(a1 + 24) = 513;
      }

      if ((*v2)-- == 1)
      {
        sub_181939EC8(v2[2], v2);
      }

      return 0;
    }

    return v2;
  }

  if (*(v9 + 103) || *(v9 + 104))
  {
    return 0;
  }

  *(v9 + 103) = 1;
  if (*(v9 + 220) >= 1)
  {
    *(v9 + 424) = 1;
  }

  ++*(v9 + 432);
  *(v9 + 436) = 0;
  v11 = *(v9 + 344);
  if (!v11)
  {
    return 0;
  }

  sub_181910730(v11, "out of memory");
  v12 = *(v9 + 344);
  *(v12 + 24) = 7;
  v13 = *(v12 + 216);
  if (!v13)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    ++*(v13 + 52);
    *(v13 + 24) = 7;
    v13 = *(v13 + 216);
  }

  while (v13);
  return v2;
}

void *sub_181957564(void *result, void *a2, char a3, uint64_t a4)
{
  if (*(*result + 103))
  {
    return sub_1818A3B68(*result, a3, a2, a4);
  }

  v4 = result[17] + 40 * *(result + 36);
  *(v4 - 39) = a3;
  *(v4 - 24) = a2;
  return result;
}

uint64_t sub_1819575A0(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 4);
      if ((v1 & 0x82000) == 0)
      {
        break;
      }

      if ((v1 & 0x80000) != 0)
      {
        result = *(*(result + 32) + 8);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (*result != 114)
        {
          return result;
        }

        result = *(result + 16);
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819575EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v7 = *(v3 + 8);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *(a1 + 68);
      if (v8)
      {
        if (v7 != v8 - 1)
        {
          goto LABEL_4;
        }

        v7 = 0xFFFFFFFFLL;
      }

      if (!sub_181959260(0, a2, *v3, v7))
      {
        break;
      }
    }

LABEL_4:
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = sub_1818D0A24(a2);
  if (v9 <= 0x41)
  {
    if (*(v3 + 21) == 65)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  v10 = *(v3 + 21);
  if (v9 == 66)
  {
    if (v10 == 66)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  if (v10 != 67)
  {
    goto LABEL_4;
  }

LABEL_16:
  if ((*(a2 + 1) & 0x80000000) != 0)
  {
    v36 = 0u;
    v37 = 0u;
    v35[0] = a1;
    v35[1] = sub_181959B20;
    sub_181959BA0(v35, a2);
    if (WORD2(v37))
    {
      goto LABEL_4;
    }
  }

  v11 = *(a1 + 16);
  if (*(v3 + 20))
  {
    v12 = *(v3 + 12);
    v13 = *(v11 + 144);
    v14 = v13 + 3;
    if (*(v11 + 148) <= v13)
    {
      sub_18194C8AC(*(a1 + 16), 20, v12, v14, a3);
    }

    else
    {
      *(v11 + 144) = v13 + 1;
      v15 = *(v11 + 136) + 40 * v13;
      *v15 = 20;
      *(v15 + 4) = v12;
      *(v15 + 8) = v14;
      *(v15 + 12) = a3;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = 0;
    }

    v21 = *(v3 + 12);
    v22 = *(v3 + 16);
    v23 = *(v11 + 144);
    if (*(v11 + 148) <= v23)
    {
      sub_18194C8AC(v11, 94, v21, v22, a3);
    }

    else
    {
      *(v11 + 144) = v23 + 1;
      v24 = *(v11 + 136) + 40 * v23;
      *v24 = 94;
      *(v24 + 4) = v21;
      *(v24 + 8) = v22;
      *(v24 + 12) = a3;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
    }

    v25 = *(v11 + 144);
    if (*(v11 + 148) <= v25)
    {
      sub_18194C8AC(v11, 9, 0, 0, 0);
    }

    else
    {
      *(v11 + 144) = v25 + 1;
      v26 = *(v11 + 136) + 40 * v25;
      *v26 = 9;
      *(v26 + 1) = 0u;
      *(v26 + 17) = 0u;
      *(v26 + 32) = 0;
    }

    v27 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (*(a1 + 16))
    {
      v28 = sub_1818B8080(a1, a2, a3);
      if (v28 != a3)
      {
        v29 = v28;
        while (1)
        {
          v30 = *(a2 + 1);
          if ((v30 & 0x82000) == 0)
          {
            break;
          }

          if ((v30 & 0x80000) != 0)
          {
            a2 = *(*(a2 + 4) + 8);
            if (!a2)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (*a2 != 114)
            {
              break;
            }

            a2 = *(a2 + 2);
            if (!a2)
            {
              goto LABEL_45;
            }
          }
        }

        if ((v30 & 0x400000) != 0 || *a2 == 176)
        {
          v31 = 80;
          goto LABEL_46;
        }

LABEL_45:
        v31 = 81;
LABEL_46:
        v32 = *(a1 + 16);
        v33 = *(v32 + 144);
        if (*(v32 + 148) <= v33)
        {
          sub_18194C8AC(v32, v31, v29, a3, 0);
        }

        else
        {
          *(v32 + 144) = v33 + 1;
          v34 = *(v32 + 136) + 40 * v33;
          *v34 = v31;
          *(v34 + 2) = 0;
          *(v34 + 4) = v29;
          *(v34 + 8) = a3;
          *(v34 + 1) = 0;
          *(v34 + 12) = 0;
          *(v34 + 28) = 0;
          *(v34 + 20) = 0;
          *(v34 + 36) = 0;
        }
      }
    }

    *(a1 + 96) = v27;
    if (*(*v11 + 103))
    {
      dword_1EA831A60 = *(v11 + 144);
    }

    else
    {
      *(*(v11 + 136) + 40 * v13 + 88) = *(v11 + 144);
    }
  }

  else
  {
    v17 = *(v3 + 12);
    v18 = *(v3 + 16);
    v19 = *(v11 + 144);
    if (*(v11 + 148) <= v19)
    {
      sub_18194C8AC(*(a1 + 16), 94, v17, v18, a3);
    }

    else
    {
      *(v11 + 144) = v19 + 1;
      v20 = *(v11 + 136) + 40 * v19;
      *v20 = 94;
      *(v20 + 4) = v17;
      *(v20 + 8) = v18;
      *(v20 + 12) = a3;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 16) = 0;
    }
  }

  return a3;
}

uint64_t sub_181957978(uint64_t result, uint64_t a2, char *__s, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 16);
  v8 = *(result + 52);
  v9 = *(result + 68);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    v11 = 0;
    v13 = *(__s + 6);
    if (!*(__s + 6))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = *(v7 + 144);
    if (*(v7 + 148) <= v11)
    {
      v14 = a2;
      result = sub_18194C8AC(*(result + 16), 20, v10, 0, a4);
      a2 = v14;
      v11 = result;
      v13 = *(__s + 6);
      if (!*(__s + 6))
      {
LABEL_9:
        v15 = 0;
        v16 = *v6;
        goto LABEL_10;
      }
    }

    else
    {
      *(v7 + 144) = v11 + 1;
      v12 = *(v7 + 136) + 40 * v11;
      *v12 = 20;
      *(v12 + 4) = v10;
      *(v12 + 8) = 0;
      *(v12 + 12) = a4;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 0;
      v13 = *(__s + 6);
      if (!*(__s + 6))
      {
        goto LABEL_9;
      }
    }
  }

  if (*(a2 + 63))
  {
    goto LABEL_9;
  }

  v21 = *(a2 + 80);
  if (!v21 || *v21 < v13)
  {
    goto LABEL_9;
  }

  v22 = *&v21[6 * (v13 - 1) + 2];
  v16 = *v6;
  if (v22)
  {
    result = sub_1818C7FEC(*v6, v22, 0, 0);
    v15 = result;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  if (!*(v16 + 103))
  {
    result = sub_181956EF4(v6, v15, a4);
  }

  if (v15)
  {
    result = sub_1819439E0(v16, v15);
  }

  v18 = __s[9];
  v17 = __s + 9;
  if (v18 >= 66)
  {
    result = *(v7 + 144);
    if (*(v7 + 148) <= result)
    {
      result = sub_18194C8AC(v7, 96, a4, 1, 0);
    }

    else
    {
      *(v7 + 144) = result + 1;
      v19 = *(v7 + 136) + 40 * result;
      *v19 = 96;
      *(v19 + 4) = a4;
      *(v19 + 8) = 1;
      *(v19 + 12) = 0;
      *(v19 + 28) = 0;
      *(v19 + 20) = 0;
      *(v19 + 36) = 0;
    }

    if (!*(*v7 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v7 + 144) - 1;
      }

      result = sub_18194CB90(v7, *(v7 + 136) + 40 * result, v17, 1);
    }
  }

  if (v11)
  {
    if (*(*v7 + 103))
    {
      v20 = &byte_1EA831A58;
    }

    else
    {
      v20 = (*(v7 + 136) + 40 * v11);
    }

    *(v20 + 2) = *(v7 + 144);
  }

  if (*(v6 + 52) > v8)
  {
    *(*v6 + 84) = -1;
  }

  return result;
}

uint64_t sub_181957BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    return 0;
  }

  while (*(a2 + 48) != *(v3 + 16) || *(a2 + 44) != *(v3 + 8))
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  v4 = *(a1 + 16);
  if (*(v3 + 20))
  {
    v5 = *(v3 + 12);
    v6 = *(v4 + 144);
    if (*(v4 + 148) <= v6)
    {
      v9 = a1;
      v10 = a3;
      v11 = sub_18194C8AC(*(a1 + 16), 20, *(v3 + 12), 0, 0);
      a3 = v10;
      v6 = v11;
      a1 = v9;
    }

    else
    {
      *(v4 + 144) = v6 + 1;
      v7 = *(v4 + 136) + 40 * v6;
      *v7 = 20;
      *(v7 + 4) = v5;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *v3;
  v12 = (v3 + 21);
  v14 = a1;
  result = sub_1818B8080(a1, v13, a3);
  v15 = *(v14 + 16);
  v16 = *(v15 + 144);
  if (*(v15 + 148) <= v16)
  {
    v18 = result;
    v16 = sub_18194C8AC(v15, 96, result, 1, 0);
    result = v18;
  }

  else
  {
    *(v15 + 144) = v16 + 1;
    v17 = *(v15 + 136) + 40 * v16;
    *v17 = 96;
    *(v17 + 4) = result;
    *(v17 + 8) = 1;
    *(v17 + 12) = 0;
    *(v17 + 28) = 0;
    *(v17 + 20) = 0;
    *(v17 + 36) = 0;
  }

  if (!*(*v15 + 103))
  {
    v19 = result;
    if (v16 < 0)
    {
      v16 = *(v15 + 144) - 1;
    }

    sub_18194CB90(v15, *(v15 + 136) + 40 * v16, v12, 1);
    result = v19;
  }

  if (v6)
  {
    if (*(*v4 + 103))
    {
      v20 = &byte_1EA831A58;
    }

    else
    {
      v20 = (*(v4 + 136) + 40 * v6);
    }

    *(v20 + 2) = *(v4 + 144);
    *(v20 + 3) = result;
  }

  return result;
}

uint64_t *sub_181957D74(uint64_t *result, char *__s, int a3, uint64_t a4)
{
  if (__s)
  {
    v4 = a4;
    v7 = result;
    v9 = 0.0;
    v8 = strlen(__s);
    sub_1818E6334(__s, &v9, v8 & 0x3FFFFFFF, 1);
    if (a3)
    {
      v9 = -v9;
    }

    return sub_18195A364(v7, 154, v4, &v9, 4294967284);
  }

  return result;
}

uint64_t sub_181957E00(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a2)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if ((v6 & 0x82000) == 0)
      {
        break;
      }

      if ((v6 & 0x80000) != 0)
      {
        v5 = (*(a2 + 4) + 8);
      }

      else
      {
        if (*a2 != 114)
        {
          break;
        }

        v5 = (a2 + 16);
      }

      a2 = *v5;
      if (!*v5)
      {
        goto LABEL_14;
      }
    }

    if ((*(a1 + 43) & 4) != 0 && *a2 != 176)
    {
      v13 = 0x200000000;
      v14 = 0;
      v12[0] = a1;
      v12[1] = sub_1818C7E14;
      v12[2] = sub_18195A49C;
      v12[3] = 0;
      v7 = a2;
      sub_181959BA0(v12, a2);
      if (WORD2(v13))
      {
        *a3 = 0;
        return sub_181957F4C(a1, v7, 0xFFFFFFFFLL);
      }

      a2 = v7;
    }
  }

LABEL_14:
  if (*(a1 + 31))
  {
    v9 = *(a1 + 31) - 1;
    *(a1 + 31) = v9;
    v10 = *(a1 + 4 * v9 + 184);
  }

  else
  {
    v10 = (*(a1 + 60) + 1);
    *(a1 + 60) = v10;
  }

  result = sub_1818B8080(a1, a2, v10);
  if (result != v10 && v10)
  {
    v11 = *(a1 + 31);
    if (v11 <= 7)
    {
      *(a1 + 31) = v11 + 1;
      *(a1 + 4 * v11 + 184) = v10;
    }

    LODWORD(v10) = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_181957F4C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[11];
  if ((a3 & 0x80000000) == 0 || !v6 || *v6 < 1)
  {
LABEL_9:
    if (a2)
    {
      v9 = sub_1818C7FEC(*a1, a2, 0, 0);
      a2 = v9;
      if (v9)
      {
        if ((v9[4] & 8) != 0)
        {
          v15 = a1[2];
          v16 = *(v15 + 144);
          if (*(v15 + 148) <= v16)
          {
            v16 = sub_18194C8AC(a1[2], 15, 0, 0, 0);
          }

          else
          {
            *(v15 + 144) = v16 + 1;
            v17 = *(v15 + 136) + 40 * v16;
            *v17 = 15;
            *(v17 + 1) = 0u;
            *(v17 + 17) = 0u;
            *(v17 + 32) = 0;
          }

          *(a1 + 43) &= ~4u;
          if (!*(*a1 + 103))
          {
            if ((v3 & 0x80000000) != 0)
            {
              v3 = (*(a1 + 15) + 1);
              *(a1 + 15) = v3;
            }

            if (a1[2])
            {
              v18 = sub_1818B8080(a1, a2, v3);
              if (v18 != v3)
              {
                v19 = v18;
                v20 = a2;
                while (1)
                {
                  v21 = *(v20 + 1);
                  if ((v21 & 0x82000) == 0)
                  {
                    break;
                  }

                  if ((v21 & 0x80000) != 0)
                  {
                    v20 = *(*(v20 + 4) + 8);
                    if (!v20)
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    if (*v20 != 114)
                    {
                      break;
                    }

                    v20 = *(v20 + 2);
                    if (!v20)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                if ((v21 & 0x400000) != 0 || *v20 == 176)
                {
                  v22 = 80;
                  goto LABEL_45;
                }

LABEL_44:
                v22 = 81;
LABEL_45:
                v23 = a1[2];
                v24 = *(v23 + 144);
                if (*(v23 + 148) <= v24)
                {
                  sub_18194C8AC(v23, v22, v19, v3, 0);
                }

                else
                {
                  *(v23 + 144) = v24 + 1;
                  v25 = *(v23 + 136) + 40 * v24;
                  *v25 = v22;
                  *(v25 + 2) = 0;
                  *(v25 + 4) = v19;
                  *(v25 + 8) = v3;
                  *(v25 + 1) = 0;
                  *(v25 + 12) = 0;
                  *(v25 + 28) = 0;
                  *(v25 + 20) = 0;
                  *(v25 + 36) = 0;
                }
              }
            }
          }

          *(a1 + 43) |= 4u;
          sub_1819439E0(*a1, a2);
          if (*(*v15 + 103))
          {
            dword_1EA831A60 = *(v15 + 144);
          }

          else
          {
            *(*(v15 + 136) + 40 * v16 + 8) = *(v15 + 144);
          }

          return v3;
        }
      }
    }

    if (v6)
    {
      v10 = *v6;
      if (v6[1] > *v6)
      {
        *v6 = v10 + 1;
        v11 = &v6[6 * v10];
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = a2;
        goto LABEL_18;
      }

      v12 = sub_18197FE14(*a1, v6, a2);
    }

    else
    {
      v12 = sub_18197FD9C(*a1, a2);
    }

    v6 = v12;
    if (!v12)
    {
LABEL_21:
      a1[11] = v6;
      return v3;
    }

LABEL_18:
    v13 = &v6[6 * *v6];
    *(v13 + 1) = *(v13 + 1) & 0xFFF7 | (8 * (v3 >> 31));
    if ((v3 & 0x80000000) != 0)
    {
      v3 = (*(a1 + 15) + 1);
      *(a1 + 15) = v3;
    }

    v13[1] = v3;
    goto LABEL_21;
  }

  v7 = *v6 + 1;
  v8 = (v6 + 7);
  while ((*(v8 - 3) & 8) == 0 || sub_181959260(0, *(v8 - 5), a2, 0xFFFFFFFFLL))
  {
    --v7;
    v8 += 6;
    if (v7 < 2)
    {
      goto LABEL_9;
    }
  }

  return *v8;
}

uint64_t sub_181958258(uint64_t a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 16);
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = sub_181959260(0, a2[1], a2[4], 0xFFFFFFFFLL);
        goto LABEL_26;
      case 4:
        v23 = sub_1818D0A24(a2[1]);
        if (v23 >= 65)
        {
          v24 = off_1E6A27968[v23 - 65];
        }

        else
        {
          v24 = "none";
        }

        v26 = *(v6 + 144);
        if (*(v6 + 148) <= v26)
        {
          v26 = sub_18194C8AC(v6, 118, 0, v4, 0);
        }

        else
        {
          *(v6 + 144) = v26 + 1;
          v27 = *(v6 + 136) + 40 * v26;
          *v27 = 118;
          *(v27 + 8) = v4;
          *(v27 + 12) = 0;
          *(v27 + 28) = 0;
          *(v27 + 20) = 0;
          *(v27 + 36) = 0;
        }

        if (!*(*v6 + 103))
        {
          if (v26 < 0)
          {
            v26 = *(v6 + 144) - 1;
          }

          sub_18194CB90(v6, *(v6 + 136) + 40 * v26, v24, 0);
        }

        return v4;
      case 5:
        memset(&v48[3], 0, 32);
        memset(v48, 0, 32);
        LOBYTE(v48[0]) = -98;
        v48[2] = a2;
        return sub_1818B8080(a1, v48, a4);
    }

    goto LABEL_21;
  }

  switch(a3)
  {
    case 0:
      v8 = *a2;
      v47 = *(a1 + 72);
      v9 = v47 - 1;
      *(a1 + 72) = v47 - 1;
      v10 = (a2 + 1);
      v11 = a2[1];
      if (v6)
      {
        v12 = sub_1818B8080(a1, v11, a4);
        if (v12 != v4)
        {
          v13 = v12;
          if (!v11)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v14 = *(v11 + 1);
            if ((v14 & 0x82000) == 0)
            {
              break;
            }

            if ((v14 & 0x80000) != 0)
            {
              v11 = *(*(v11 + 4) + 8);
              if (!v11)
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (*v11 != 114)
              {
                break;
              }

              v11 = *(v11 + 2);
              if (!v11)
              {
                goto LABEL_47;
              }
            }
          }

          if ((v14 & 0x400000) != 0 || *v11 == 176)
          {
            v28 = 80;
          }

          else
          {
LABEL_47:
            v28 = 81;
          }

          v29 = *(a1 + 16);
          v30 = *(v29 + 144);
          if (*(v29 + 148) <= v30)
          {
            sub_18194C8AC(v29, v28, v13, v4, 0);
          }

          else
          {
            *(v29 + 144) = v30 + 1;
            v31 = *(v29 + 136) + 40 * v30;
            *v31 = v28;
            *(v31 + 2) = 0;
            *(v31 + 4) = v13;
            *(v31 + 8) = v4;
            *(v31 + 1) = 0;
            *(v31 + 12) = 0;
            *(v31 + 28) = 0;
            *(v31 + 20) = 0;
            *(v31 + 36) = 0;
          }
        }
      }

      if (v8 < 2)
      {
LABEL_74:
        if (*(*v6 + 103))
        {
          v43 = &byte_1EA831A58;
        }

        else
        {
          v43 = (*(v6 + 136) + 40 * *(v6 + 144) - 40);
        }

        if (*v43 == 80)
        {
          v44 = *(v6 + 144);
          if (v44 >= 1)
          {
            *(*(v6 + 136) + 40 * v44 - 38) = 1;
          }
        }

        v45 = *(v6 + 24);
        v46 = -v47;
        if (*(v45 + 72) + *(v45 + 76) < 0)
        {
          sub_18195CB84(v45, v6, v46);
        }

        else
        {
          *(*(v45 + 80) + 4 * v46) = *(v6 + 144);
        }

        return v4;
      }

      v32 = 1;
      while (1)
      {
        v34 = *(v6 + 144);
        if (*(v6 + 148) <= v34)
        {
          sub_18194C8AC(v6, 52, v4, v9, 0);
          if (*(a1 + 16))
          {
LABEL_59:
            v36 = *&v10[6 * v32];
            v37 = sub_1818B8080(a1, v36, v4);
            if (v37 != v4)
            {
              v38 = v37;
              if (!v36)
              {
                goto LABEL_71;
              }

              while (1)
              {
                v39 = *(v36 + 1);
                if ((v39 & 0x82000) == 0)
                {
                  break;
                }

                if ((v39 & 0x80000) != 0)
                {
                  v36 = *(*(v36 + 4) + 8);
                  if (!v36)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (*v36 != 114)
                  {
                    break;
                  }

                  v36 = *(v36 + 2);
                  if (!v36)
                  {
                    goto LABEL_71;
                  }
                }
              }

              if ((v39 & 0x400000) != 0 || *v36 == 176)
              {
                v40 = 80;
              }

              else
              {
LABEL_71:
                v40 = 81;
              }

              v41 = *(a1 + 16);
              v42 = *(v41 + 144);
              if (*(v41 + 148) > v42)
              {
                *(v41 + 144) = v42 + 1;
                v33 = *(v41 + 136) + 40 * v42;
                *v33 = v40;
                *(v33 + 2) = 0;
                *(v33 + 4) = v38;
                *(v33 + 8) = v4;
                *(v33 + 1) = 0;
                *(v33 + 12) = 0;
                *(v33 + 28) = 0;
                *(v33 + 20) = 0;
                *(v33 + 36) = 0;
              }

              else
              {
                sub_18194C8AC(v41, v40, v38, v4, 0);
              }
            }
          }
        }

        else
        {
          *(v6 + 144) = v34 + 1;
          v35 = *(v6 + 136) + 40 * v34;
          *v35 = 52;
          *(v35 + 4) = v4;
          *(v35 + 8) = v9;
          *(v35 + 12) = 0;
          *(v35 + 28) = 0;
          *(v35 + 20) = 0;
          *(v35 + 36) = 0;
          if (*(a1 + 16))
          {
            goto LABEL_59;
          }
        }

        if (++v32 == v8)
        {
          goto LABEL_74;
        }
      }

    case 1:
      v17 = a2[4];
      if (*v17 != 168)
      {
        v25 = *(v6 + 144);
        if (*(v6 + 148) > v25)
        {
          *(v6 + 144) = v25 + 1;
          v20 = *(v6 + 136) + 40 * v25;
          *v20 = 75;
          goto LABEL_28;
        }

        v21 = *(a1 + 16);
        v22 = 75;
        v18 = 0;
LABEL_30:
        sub_18194C8AC(v21, v22, v18, v4, 0);
        return v4;
      }

      v7 = sub_18195A790(a2[1], *(v17 + 11), 1);
LABEL_26:
      v18 = v7;
      v19 = *(v6 + 144);
      if (*(v6 + 148) > v19)
      {
        *(v6 + 144) = v19 + 1;
        v20 = *(v6 + 136) + 40 * v19;
        *v20 = 71;
        *(v20 + 4) = v7;
LABEL_28:
        *(v20 + 8) = v4;
        *(v20 + 12) = 0;
        *(v20 + 28) = 0;
        *(v20 + 20) = 0;
        *(v20 + 36) = 0;
        return v4;
      }

      v21 = v6;
      v22 = 71;
      goto LABEL_30;
    case 2:
      v7 = sub_18195A590(a1, a2[1], a2[4], 0xFFFFFFFFLL);
      goto LABEL_26;
  }

LABEL_21:
  v15 = a2[1];

  return sub_1818B8080(a1, v15, a4);
}

void sub_1819587F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 7) & 0x40) != 0 && ((*(a3 + 6) & 8) != 0 || (*(*a1 + 48) & 0x80) == 0))
  {
    sub_181910730(a1, "unsafe use of %#T()", a2);
  }
}

uint64_t sub_18195883C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (*(a1 + 31))
    {
      v2 = *(a1 + 31) - 1;
      *(a1 + 31) = v2;
      return *(a1 + 4 * v2 + 184);
    }

    else
    {
      v8 = (*(a1 + 60) + 1);
      *(a1 + 60) = v8;
      return v8;
    }
  }

  else
  {
    v4 = *(a1 + 44);
    v5 = v4 - a2;
    if (v4 >= a2)
    {
      v7 = *(a1 + 48);
      *(a1 + 44) = v5;
      *(a1 + 48) = v7 + a2;
      return v7;
    }

    else
    {
      v6 = *(a1 + 60);
      *(a1 + 60) = v6 + a2;
      return (v6 + 1);
    }
  }
}

uint64_t sub_1819588AC(uint64_t result, _DWORD *a2, int a3, int a4, char a5)
{
  v5 = *a2;
  if (*a2 >= 1)
  {
    v7 = result;
    v8 = 0;
    v26 = a5 & 1;
    v9 = a5 & 1 ^ 0x51;
    v10 = *(result + 16);
    if ((*(result + 43) & 4) != 0)
    {
      v11 = a5;
    }

    else
    {
      v11 = a5 & 0xFD;
    }

    v25 = a4 - 1;
    for (i = a2 + 7; ; i += 12)
    {
      v13 = *(i - 10);
      if ((v11 & 4) != 0)
      {
        if (*i)
        {
          break;
        }
      }

      if ((v11 & 2) != 0 && ((v28 = 0x200000000, v29 = 0, v27[3] = 0, v27[0] = v7, v27[1] = sub_1818C7E14, v27[2] = sub_18195A49C, !v13) || (v22 = v13, sub_181959BA0(v27, v13), v13 = v22, WORD2(v28))))
      {
        result = sub_181957F4C(v7, v13, (v8 + a3));
      }

      else
      {
        v18 = v8 + a3;
        result = sub_1818B8080(v7, v13, (v8 + a3));
        if (result != v8 + a3)
        {
          v14 = result;
          if (v26)
          {
            v19 = &byte_1EA831A58;
            if (!*(*v10 + 103))
            {
              v19 = (*(v10 + 136) + 40 * *(v10 + 144) - 40);
            }

            if (*v19 == 80)
            {
              v20 = *(v19 + 3) + 1;
              if (v20 + *(v19 + 1) == result && v20 + *(v19 + 2) == v18 && !*(v19 + 1))
              {
                *(v19 + 3) = v20;
                goto LABEL_7;
              }
            }
          }

          v21 = *(v10 + 144);
          if (*(v10 + 148) <= v21)
          {
            v23 = v10;
            v24 = v9;
            v15 = v8 + a3;
LABEL_31:
            result = sub_18194C8AC(v23, v24, v14, v15, 0);
            goto LABEL_7;
          }

          *(v10 + 144) = v21 + 1;
          v17 = *(v10 + 136) + 40 * v21;
          *v17 = v9;
          *(v17 + 2) = 0;
          *(v17 + 4) = result;
          *(v17 + 8) = v18;
LABEL_24:
          *(v17 + 1) = 0;
          *(v17 + 12) = 0;
          *(v17 + 28) = 0;
          *(v17 + 20) = 0;
          *(v17 + 36) = 0;
        }
      }

LABEL_7:
      if (++v8 >= v5)
      {
        return result;
      }
    }

    if ((v11 & 8) != 0)
    {
      --v8;
      --v5;
      goto LABEL_7;
    }

    v14 = v25 + *i;
    v15 = v8 + a3;
    v16 = *(v10 + 144);
    if (*(v10 + 148) <= v16)
    {
      v23 = v10;
      v24 = v9;
      goto LABEL_31;
    }

    *(v10 + 144) = v16 + 1;
    v17 = *(v10 + 136) + 40 * v16;
    *v17 = v9;
    *(v17 + 2) = 0;
    *(v17 + 4) = v14;
    *(v17 + 8) = v15;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_181958B0C(uint64_t *a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v9 = a5;
  v14 = a1[2];
  result = sub_181929E8C(*a1, 8 * a5 + 48, 0x2004093837F09);
  if (result)
  {
    v16 = result;
    *result = 0;
    *(result + 8) = a6;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 42) = v9;
    result = *(v14 + 144);
    *(v16 + 32) = result;
    if (a7)
    {
      v17 = 65;
    }

    else
    {
      v17 = 66;
    }

    if (*(v14 + 148) <= result)
    {
      result = sub_18194C8AC(v14, v17, a2, a3, a4);
    }

    else
    {
      *(v14 + 144) = result + 1;
      v18 = *(v14 + 136) + 40 * result;
      *v18 = v17;
      *(v18 + 2) = 0;
      *(v18 + 4) = a2;
      *(v18 + 8) = a3;
      *(v18 + 12) = a4;
      *(v18 + 1) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 16) = 0;
    }

    if (*(*v14 + 103))
    {
      result = sub_18193A000(*v14, v16);
    }

    else
    {
      if ((result & 0x80000000) != 0)
      {
        result = (*(v14 + 144) - 1);
      }

      v20 = *(v14 + 136) + 40 * result;
      if (*(v20 + 1))
      {
        result = sub_18194CB90(v14, v20, v16, 4294967281);
      }

      else
      {
        *(v20 + 16) = v16;
        *(v20 + 1) = -15;
      }
    }

    v21 = *(v14 + 144);
    if (v21 >= 1)
    {
      *(*(v14 + 136) + 40 * v21 - 38) = a7 & 0x2E;
    }

    v22 = a1[19];
    if (!v22)
    {
      v22 = a1;
    }

    *(v22 + 33) = 1;
  }

  else if ((*(a6 + 4) & 0x10) != 0)
  {
    v19 = *a1;

    return sub_181939EC8(v19, a6);
  }

  return result;
}

_DWORD *sub_181958CD8(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  v4 = ~a2;
  if (result[18] + result[19] < 0)
  {
    return sub_18195CB84(result, a1, v4);
  }

  *(*(result + 10) + 4 * v4) = *(a1 + 144);
  return result;
}

uint64_t *sub_181958D08(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *, uint64_t, uint64_t), uint64_t a5)
{
  v9 = result;
  v31 = 0;
  v10 = *result;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = *(a2 + 16);
  if (v11)
  {
    result = sub_1818C7FEC(v10, v11, 0, 0);
    v12 = result;
    if (*(v10 + 103))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v12 = 0;
    if (*(v10 + 103))
    {
      goto LABEL_28;
    }
  }

  LOBYTE(v42) = 44;
  *&v43 = &v37;
  *(&v43 + 1) = &v32;
  LOBYTE(v37) = 58;
  v13 = *(a2 + 32);
  v14 = *(v13 + 8);
  *&v38 = v12;
  *(&v38 + 1) = v14;
  LOBYTE(v32) = 56;
  v15 = *(v13 + 32);
  *&v33 = v12;
  *(&v33 + 1) = v15;
  v16 = *v12;
  v17 = v16;
  if (v16 == 176)
  {
    v17 = *(v12 + 2);
  }

  v18 = v12;
  if (v17 != 177)
  {
    if (v17 != 139)
    {
      goto LABEL_11;
    }

    v18 = v12[4];
  }

  v19 = *v18[4];
  if (v19 != 1)
  {
    v31 = 0;
    if (v16 == 139)
    {
      v20 = sub_1818E1564(v9, v12);
    }

    else
    {
      v27 = *(v9 + 15);
      v20 = v27 + 1;
      *(v9 + 15) = v27 + v19;
      if (v19 >= 1)
      {
        v28 = 8;
        v29 = v27 + 1;
        v30 = (v27 + 1);
        do
        {
          sub_18195CD44(v9, *(v12[4] + v28), v30);
          v30 = (v30 + 1);
          v28 += 24;
          --v19;
        }

        while (v19);
        v20 = v29;
      }
    }

    goto LABEL_12;
  }

LABEL_11:
  v20 = sub_181957E00(v9, v12, &v31);
LABEL_12:
  v21 = v12;
  while (1)
  {
    v23 = *(v21 + 1);
    if ((v23 & 0x82000) == 0)
    {
      break;
    }

    if ((v23 & 0x80000) != 0)
    {
      v22 = (v21[4] + 8);
    }

    else
    {
      v24 = *v21;
      if (v24 != 114)
      {
        goto LABEL_20;
      }

      v22 = (v21 + 2);
    }

    v21 = *v22;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  v24 = *v21;
LABEL_20:
  if (v24 != 176)
  {
    *(v21 + 2) = v24;
    *v21 = -80;
    *(v21 + 11) = v20;
    *(v21 + 1) = v23 & 0xFFFFDFFF;
  }

LABEL_22:
  if (a4)
  {
    result = a4(v9, &v42, a3, a5);
    v25 = v31;
    if (!v31)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v12 + 1) |= 1u;
    result = sub_1818B8080(v9, &v42, a3);
    v25 = v31;
    if (!v31)
    {
      goto LABEL_28;
    }
  }

  v26 = *(v9 + 31);
  if (v26 <= 7)
  {
    *(v9 + 31) = v26 + 1;
    *(v9 + v26 + 46) = v25;
  }

LABEL_28:
  if (v12)
  {
    return sub_1819439E0(v10, v12);
  }

  return result;
}

unsigned __int8 *sub_181958F90(unsigned __int8 *result, int a2)
{
  if (result)
  {
    while (1)
    {
      v3 = *(result + 1);
      if ((v3 & 0x82000) == 0)
      {
        break;
      }

      if ((v3 & 0x80000) != 0)
      {
        v2 = (*(result + 4) + 8);
      }

      else
      {
        v4 = *result;
        if (v4 != 114)
        {
          goto LABEL_10;
        }

        v2 = (result + 16);
      }

      result = *v2;
      if (!*v2)
      {
        return result;
      }
    }

    v4 = *result;
LABEL_10:
    if (v4 != 176)
    {
      result[2] = v4;
      *result = -80;
      *(result + 11) = a2;
      *(result + 1) = v3 & 0xFFFFDFFF;
    }
  }

  return result;
}

uint64_t sub_181958FFC(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = v5;
  if (v5 == 176)
  {
    v6 = a2[2];
  }

  v7 = a2;
  if (v6 != 177)
  {
    if (v6 != 139)
    {
LABEL_7:

      return sub_181957E00(a1, a2, a3);
    }

    v7 = *(a2 + 4);
  }

  v8 = **(v7 + 4);
  if (v8 == 1)
  {
    goto LABEL_7;
  }

  *a3 = 0;
  if (v5 != 139)
  {
    v10 = *(a1 + 60);
    v11 = (v10 + 1);
    *(a1 + 60) = v10 + v8;
    if (v8 < 1)
    {
      return v11;
    }

    v12 = 8;
    v13 = (v10 + 1);
    while (1)
    {
      v14 = *(*(a2 + 4) + v12);
      if ((*(a1 + 43) & 4) != 0)
      {
        break;
      }

      v15 = *a1;
      if (v14)
      {
        goto LABEL_26;
      }

      if (*(v15 + 103))
      {
        goto LABEL_21;
      }

LABEL_27:
      sub_181956EF4(a1, v14, v13);
      if (v14)
      {
        goto LABEL_28;
      }

LABEL_17:
      v13 = (v13 + 1);
      v12 += 24;
      if (!--v8)
      {
        return v11;
      }
    }

    v17 = 0x200000000;
    v18 = 0;
    v16[3] = 0;
    v16[0] = a1;
    v16[1] = sub_1818C7E14;
    v16[2] = sub_18195A49C;
    if (!v14 || (sub_181959BA0(v16, v14), WORD2(v17)))
    {
      sub_181957F4C(a1, v14, v13);
      goto LABEL_17;
    }

    v15 = *a1;
LABEL_26:
    v14 = sub_1818C7FEC(v15, v14, 0, 0);
    if (*(v15 + 103))
    {
LABEL_21:
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_28:
      sub_1819439E0(v15, v14);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  return sub_1818E1564(a1, a2);
}

uint64_t sub_181959204(uint64_t result)
{
  if (*(*result + 103))
  {
    v1 = &byte_1EA831A58;
  }

  else
  {
    v1 = (*(result + 136) + 40 * *(result + 144) - 40);
  }

  if (*v1 == 80)
  {
    v2 = *(result + 144);
    if (v2 >= 1)
    {
      *(*(result + 136) + 40 * v2 - 38) = 1;
    }
  }

  return result;
}

uint64_t sub_181959260(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a2 || !a3)
  {
    return 2 * (a3 != a2);
  }

  if (a1 && *a2 == 157)
  {

    return sub_181959620(a1, a2, a3);
  }

  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  v7 = v6 | v5;
  if (((v6 | v5) & 0x800) != 0)
  {
    if ((v5 & v6 & 0x800) != 0 && *(a2 + 2) == *(a3 + 2))
    {
      return 0;
    }

    return 2;
  }

  v8 = *a2;
  v9 = *a3;
  if (v8 == 72 || v8 != v9)
  {
    if (v8 == 114)
    {
      v11 = a2;
      v12 = a1;
      v13 = a3;
      v14 = a4;
      if (sub_181959260(a1, *(a2 + 2), a3, a4) < 2)
      {
        return 1;
      }

      a3 = v13;
      v9 = *v13;
      a2 = v11;
      a4 = v14;
      a1 = v12;
    }

    if (v9 != 114 || (v15 = a1, v16 = a2, v17 = a3, v18 = a4, v19 = sub_181959260(a1, a2, *(a3 + 2), a4), a4 = v18, a2 = v16, a3 = v17, v20 = v19, a1 = v15, v20 >= 2))
    {
      if (*a2 != 170 || *a3 != 168 || (*(a3 + 11) & 0x80000000) == 0 || *(a2 + 11) != a4)
      {
        return 2;
      }

      v8 = 170;
      v10 = *(a2 + 1);
      if (!v10)
      {
        goto LABEL_47;
      }

      goto LABEL_13;
    }

    return 1;
  }

  v10 = *(a2 + 1);
  if (!v10)
  {
    goto LABEL_47;
  }

LABEL_13:
  if (v8 <= 168)
  {
    if (v8 == 114)
    {
      v40 = *(a3 + 1);
      if (v40)
      {
        while (1)
        {
          if (*v10 == *v40)
          {
            if (!*v10)
            {
              goto LABEL_47;
            }
          }

          else if (byte_181A20298[*v10] != byte_181A20298[*v40])
          {
            return 2;
          }

          ++v10;
          ++v40;
        }
      }

      return 2;
    }

    if (v8 == 122)
    {
      return 0;
    }

LABEL_40:
    if ((v8 & 0xFFFFFFFD) != 0xA8 && *(a3 + 1))
    {
      v22 = a1;
      v23 = a2;
      v24 = a3;
      v25 = a4;
      v26 = strcmp(v10, *(a3 + 1));
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v8 != 172 && v8 != 169)
  {
    goto LABEL_40;
  }

  for (i = *(a3 + 1); *v10 != *i; ++i)
  {
    if (byte_181A20298[*v10] != byte_181A20298[*i])
    {
      return 2;
    }

LABEL_36:
    ++v10;
  }

  if (*v10)
  {
    goto LABEL_36;
  }

  v27 = *(a2 + 1) & 0x1000000;
  if ((HIBYTE(*(a3 + 1)) & 1) == HIBYTE(v27))
  {
    if (!v27)
    {
      goto LABEL_47;
    }

    v22 = a1;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = sub_18195986C(a1, *(a2 + 9), *(a3 + 9), 1);
LABEL_46:
    a4 = v25;
    a2 = v23;
    a3 = v24;
    v28 = v26;
    a1 = v22;
    if (!v28)
    {
LABEL_47:
      if (((*(a3 + 1) ^ *(a2 + 1)) & 0x404) == 0)
      {
        if ((v7 & 0x10000) != 0)
        {
          return 0;
        }

        if ((v7 & 0x1000) == 0)
        {
          if ((v7 & 0x20) != 0 || (v29 = a1, v30 = a2, v31 = a3, v32 = a4, v33 = sub_181959260(a1, *(a2 + 2), *(a3 + 2), a4), a4 = v32, a2 = v30, a3 = v31, v34 = v33, a1 = v29, !v34))
          {
            v35 = a2;
            v36 = a3;
            v37 = a4;
            if (!sub_181959260(a1, *(a2 + 3), *(a3 + 3), a4) && !sub_181959974(*(v35 + 4), *(v36 + 4), v37))
            {
              v38 = *v35;
              if (v38 == 118 || v38 == 171 || (v7 & 0x4000) != 0)
              {
                return 0;
              }

              if (*(v35 + 12) == *(v36 + 12) && (v38 != 175 || v35[2] == v36[2]))
              {
                if (v38 == 50)
                {
                  return 0;
                }

                v39 = *(v35 + 11);
                if (v39 == v37 || v39 == *(v36 + 11))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return 2;
}

uint64_t sub_181959620(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v20 = 0;
  if (*a3 == 157 && *(a2 + 48) == *(a3 + 12))
  {
    return 0;
  }

  if ((*(*a1 + 50) & 0x80) != 0)
  {
    return 2;
  }

  v6 = 1;
  sub_18194BC5C(*a1, a3, 1, 65, &v20);
  v7 = v20;
  if (!v20)
  {
    return 2;
  }

  v8 = *(a2 + 48);
  v9 = 1 << (v8 - 1);
  if (v8 > 31)
  {
    v9 = 0x80000000;
  }

  *(a1[2] + 372) |= v9;
  v10 = a1[41];
  if (!v10 || (v11 = v10[16] + (v8 << 6), (*(v11 - 44) & 1) != 0))
  {
    v16 = 0;
    v19 = 2;
    goto LABEL_27;
  }

  v12 = *v10;
  if (!*v10)
  {
    v16 = sub_181902484(64, 0x10F2040695A4BFELL);
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_23:
    v19 = 2;
    goto LABEL_27;
  }

  v16 = sub_181929E8C(*v10, 0x40uLL, 0x10F2040695A4BFELL);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_12:
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 20) = 1;
  *(v16 + 24) = v12;
  v17 = *(v11 - 64);
  v18 = *(v11 - 48);
  *(v16 + 16) = v18;
  *v16 = v17;
  LODWORD(v18) = WORD2(v18) & 0xEFFF;
  *(v16 + 20) = v18;
  if ((v18 & 0x1200000000) != 0 && (*(v11 - 44) & 0x2000) == 0)
  {
    *(v16 + 20) = WORD2(v18) & 0xAFFF | 0x4000;
    sub_18190B020(v16, v13, v14, v15);
    LODWORD(v18) = *(v16 + 20);
  }

  if (((0x4000000040004uLL >> v18) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((~v18 & 0x202) == 0)
  {
    if ((v18 & 1) != 0 || *(v16 + 22) == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v18 & 1) == 0)
  {
LABEL_25:
    sub_18193CB70(v16, 1, v14, v15);
  }

LABEL_26:
  v6 = 0;
  v19 = 2 * (sub_1818D0D40(v16, v7, 0) != 0);
LABEL_27:
  if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
  {
    sub_18193CA00(v7);
  }

  sub_181929C84(*(v7 + 24), v7);
  if ((v6 & 1) == 0)
  {
    if ((*(v16 + 20) & 0x9000) != 0 || *(v16 + 32))
    {
      sub_18193CA00(v16);
    }

    sub_181929C84(*(v16 + 24), v16);
  }

  return v19;
}

uint64_t sub_18195986C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 1;
  if (a2 && a3 && *(a2 + 32) == *(a3 + 32) && *(a2 + 33) == *(a3 + 33) && *(a2 + 34) == *(a3 + 34) && *(a2 + 36) == *(a3 + 36))
  {
    v9 = a1;
    if (sub_181959260(a1, *(a2 + 40), *(a3 + 40), 0xFFFFFFFFLL) || sub_181959260(v9, *(a2 + 48), *(a3 + 48), 0xFFFFFFFFLL))
    {
      return 1;
    }

    else
    {
      result = sub_181959974(*(a2 + 16), *(a3 + 16), 0xFFFFFFFFLL);
      if (!result)
      {
        result = sub_181959974(*(a2 + 24), *(a3 + 24), 0xFFFFFFFFLL);
        if (!result)
        {
          if (!a4)
          {
            return 0;
          }

          result = sub_181959260(v9, *(a2 + 72), *(a3 + 72), 0xFFFFFFFFLL);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_181959974(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  result = 1;
  if (a1 && a2 && *a1 == *a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = (a2 + 24);
      v8 = (a1 + 24);
      v9 = (a1 + 24);
      v10 = (a2 + 24);
      while (1)
      {
        v12 = *v9;
        v9 += 6;
        v11 = v12;
        v13 = *v10;
        v10 += 3;
        if (v11 != v13)
        {
          break;
        }

        result = sub_181959260(0, *(v8 - 2), *(v7 - 2), a3);
        if (!result)
        {
          ++v6;
          v8 = v9;
          v7 = v10;
          if (v6 < *a1)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_181959A44(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 128) + (a2 << 6);
    if (*(v2 - 44))
    {
      return 0;
    }

    v3 = *result;
    if (*result)
    {
      result = sub_181929E8C(*result, 0x40uLL, 0x10F2040695A4BFELL);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_181902484(64, 0x10F2040695A4BFELL);
      if (!result)
      {
        return result;
      }
    }

    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 20) = 1;
    *(result + 24) = v3;
    v7 = *(v2 - 64);
    v8 = *(v2 - 48);
    *(result + 16) = v8;
    *result = v7;
    *(result + 20) = WORD2(v8) & 0xEFFF;
    if ((v8 & 0x1200000000) != 0 && (*(v2 - 44) & 0x2000) == 0)
    {
      *(result + 20) = WORD2(v8) & 0xAFFF | 0x4000;
      v9 = result;
      sub_18190B020(result, v4, v5, v6);
      return v9;
    }
  }

  return result;
}

uint64_t sub_181959B20(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 != 172)
  {
    return 1;
  }

  v3 = **a1;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = sub_181893B48(v3, *(a2 + 1), v5, *(v3 + 100), 0);
  if (v7 && (*(v7 + 7) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_181959BA0(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    v4 = (*(a1 + 8))(a1);
    if (v4)
    {
      return v4 & 2;
    }

    if ((*(v3 + 6) & 0x81) != 0)
    {
      return 0;
    }

    v5 = *(v3 + 16);
    if (v5 && sub_181959BA0(a1, v5))
    {
      return 2;
    }

    a2 = *(v3 + 24);
  }

  while (a2);
  v7 = *(v3 + 4);
  v8 = *(v3 + 32);
  if ((v7 & 0x1000) != 0)
  {
    if (v8 && *(a1 + 16))
    {
      while (1)
      {
        v12 = (*(a1 + 16))(a1, v8);
        if (v12)
        {
          break;
        }

        if (sub_1818B1410(a1, v8) || sub_181959E94(a1, v8))
        {
          return 2;
        }

        v13 = *(a1 + 24);
        if (v13)
        {
          v13(a1, v8);
        }

        v8 = v8[10];
        if (!v8)
        {
          return 0;
        }
      }

      if ((v12 & 2) != 0)
      {
        return 2;
      }
    }
  }

  else
  {
    if (v8)
    {
      v9 = *v8;
      if (*v8 >= 1)
      {
        v10 = v8 + 1;
        v11 = v9 + 1;
        while (!sub_1818B1590(a1, *v10))
        {
          v10 += 3;
          if (--v11 <= 1)
          {
            v7 = *(v3 + 4);
            goto LABEL_16;
          }
        }

        return 2;
      }
    }

LABEL_16:
    if ((v7 & 0x1000000) != 0 && sub_181959D68(a1, *(v3 + 72), 1))
    {
      return 2;
    }
  }

  return 0;
}

uint64_t sub_181959CE8(uint64_t a1, int *a2)
{
  if (!a2 || *a2 < 1)
  {
    return 0;
  }

  v3 = (a2 + 2);
  v4 = *a2 + 1;
  do
  {
    if (*v3 && sub_181959BA0(a1, *v3))
    {
      return 2;
    }

    v3 += 3;
    --v4;
  }

  while (v4 > 1);
  return 0;
}

uint64_t sub_181959D68(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v6 = v4[3];
    if (v6)
    {
      if (*v6 >= 1)
      {
        break;
      }
    }

LABEL_8:
    v9 = v4[2];
    if (v9 && *v9 >= 1)
    {
      v10 = (v9 + 2);
      v11 = *v9 + 1;
      while (!sub_1818B1590(a1, *v10))
      {
        v10 += 3;
        if (--v11 <= 1)
        {
          goto LABEL_13;
        }
      }

      return 2;
    }

LABEL_13:
    v12 = v4[9];
    if (v12 && sub_181959BA0(a1, v12))
    {
      return 2;
    }

    v13 = v4[5];
    if (v13)
    {
      if (sub_181959BA0(a1, v13))
      {
        return 2;
      }
    }

    v14 = v4[6];
    if (v14)
    {
      v15 = sub_181959BA0(a1, v14);
      if (v15 | a3)
      {
        return 2 * (v15 != 0);
      }
    }

    else if (a3)
    {
      return 0;
    }

    v4 = v4[8];
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v6 + 2);
  v8 = *v6 + 1;
  while (!sub_1818B1590(a1, *v7))
  {
    v7 += 3;
    if (--v8 <= 1)
    {
      goto LABEL_8;
    }
  }

  return 2;
}

uint64_t sub_181959E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 < 1)
  {
    return 0;
  }

  for (i = v2 + 2; ; i += 18)
  {
    v7 = *(i + 25);
    if ((v7 & 4) != 0)
    {
      if (sub_1818AEE70(a1, **(i + 8)))
      {
        return 2;
      }

      v7 = *(i + 25);
    }

    if ((v7 & 8) != 0)
    {
      v8 = *(i + 5);
      if (v8)
      {
        if (*v8 >= 1)
        {
          break;
        }
      }
    }

LABEL_4:
    v6 = __OFSUB__(v3--, 1);
    if ((v3 < 0) ^ v6 | (v3 == 0))
    {
      return 0;
    }
  }

  v9 = (v8 + 2);
  v10 = *v8 + 1;
  while (!sub_1818B1590(a1, *v9))
  {
    v9 += 3;
    if (--v10 <= 1)
    {
      goto LABEL_4;
    }
  }

  return 2;
}

uint64_t sub_181959F6C(uint64_t result, uint64_t a2)
{
  if (*(*result + 400) && !*(a2 + 80))
  {
    do
    {
      v2 = a2;
      a2 = *(a2 + 88);
    }

    while (a2);
    v3 = *(v2 + 104);
    if (v3)
    {
      *(*result + 400) = *(v3 + 8);
    }
  }

  return result;
}

void sub_181959FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x80000000) != 0 || *(a2 + 52) == a4)
  {

    sub_1818A2964(a1, 135, a3, a5, 0);
    return;
  }

  if (*(a2 + 63) != 1)
  {
    v9 = *(a2 + 8) + 16 * a4;
    v10 = *(v9 + 14);
    if ((v10 & 0x20) != 0)
    {
      v15 = *(a1 + 24);
      if ((*(v9 + 14) & 0x100) != 0)
      {
        sub_181910730(v15, "generated column loop on %s", *v9);
      }

      else
      {
        v16 = *(v15 + 68);
        *(v9 + 14) = v10 | 0x100;
        *(v15 + 68) = a3 + 1;
        sub_181957978(v15, a2, v9, a5);
        *(v15 + 68) = v16;
        *(v9 + 14) &= ~0x100u;
      }

      return;
    }

    if ((*(a2 + 48) & 0x80) != 0)
    {
      for (i = *(a2 + 16); i; i = *(i + 40))
      {
        if ((*(i + 99) & 3) == 2)
        {
          break;
        }
      }

      v18 = *(i + 96);
      if (!*(i + 96))
      {
LABEL_20:
        v7 = a4;
        v5 = a2;
        v6 = 94;
        v8 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      v8 = 0;
      v19 = *(i + 8);
      while (a4 != *(v19 + 2 * v8))
      {
        if (v18 == ++v8)
        {
          goto LABEL_20;
        }
      }

      v7 = a4;
      v5 = a2;
    }

    else
    {
      v7 = a4;
      v5 = a2;
      v11 = a1;
      v12 = a5;
      v13 = a3;
      v14 = sub_18190EAFC(a2, a4);
      a3 = v13;
      a5 = v12;
      v8 = v14;
      a1 = v11;
    }

    v6 = 94;
    goto LABEL_24;
  }

  v5 = a2;
  v6 = 176;
  v7 = a4;
  v8 = a4;
LABEL_24:
  v20 = a1;
  v21 = a5;
  sub_1818A2964(a1, v6, a3, v8, a5);

  sub_18195A198(v20, v5, v7, v21);
}

void **sub_18195A198(void **result, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8) + 16 * a3;
  v5 = *(v4 + 12);
  if (*(v4 + 12))
  {
    v15 = 0;
    if (!*(a2 + 63))
    {
      v8 = *(a2 + 80);
      if (v8)
      {
        if (*v8 >= v5)
        {
          v9 = *&v8[6 * (v5 - 1) + 2];
          if (v9)
          {
            v10 = result;
            v11 = a2;
            v12 = a4;
            sub_18194BC5C(*result, v9, *(*result + 100), *(v4 + 9), &v15);
            a2 = v11;
            result = v10;
            a4 = v12;
            v13 = v15;
            if (v15)
            {
              if (*(*v10 + 103))
              {
                if ((*v10)[103])
                {
                  sub_18193A050(*v10, v15);
                  a2 = v11;
                  result = v10;
                  a4 = v12;
                }

                else
                {
                  if ((v15[5] & 0x9000) != 0 || v15[8])
                  {
                    sub_18193CA00(v15);
                  }

                  sub_181929C84(*(v13 + 3), v13);
                  a4 = v12;
                  result = v10;
                  a2 = v11;
                }
              }

              else
              {
                v14 = &v10[17][5 * *(v10 + 36)];
                *(v14 - 39) = -10;
                *(v14 - 24) = v13;
              }
            }
          }
        }
      }
    }
  }

  if (*(v4 + 9) == 69 && *(a2 + 63) != 1)
  {
    v6 = *(result + 36);
    if (*(result + 37) <= v6)
    {

      return sub_18194C8AC(result, 87, a4, 0, 0);
    }

    else
    {
      *(result + 36) = v6 + 1;
      v7 = &result[17][5 * v6];
      *v7 = 87;
      *(v7 + 4) = a4;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
    }
  }

  return result;
}

uint64_t *sub_18195A364(uint64_t a1, char a2, int a3, void *a4, uint64_t a5)
{
  v10 = sub_181929E8C(*a1, 8uLL, 2029538362);
  v11 = v10;
  if (v10)
  {
    *v10 = *a4;
  }

  v12 = *(a1 + 144);
  if (*(a1 + 148) <= v12)
  {
    v12 = sub_18194C8AC(a1, a2, 0, a3, 0);
  }

  else
  {
    *(a1 + 144) = v12 + 1;
    v13 = *(a1 + 136) + 40 * v12;
    *v13 = a2;
    *(v13 + 2) = 0;
    *(v13 + 4) = 0;
    *(v13 + 8) = a3;
    *(v13 + 1) = 0;
    *(v13 + 12) = 0;
    *(v13 + 28) = 0;
    *(v13 + 20) = 0;
    *(v13 + 36) = 0;
  }

  return sub_1818B49F8(a1, v12, v11, a5);
}

uint64_t sub_18195A444(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = 0;
  v6 = 0;
  WORD2(v5) = a3;
  v4[0] = a1;
  v4[1] = sub_1818C7E14;
  v4[2] = sub_18195A49C;
  v4[3] = 0;
  if (a2)
  {
    sub_181959BA0(v4, a2);
    return WORD2(v5);
  }

  return a3;
}

uint64_t sub_18195A4A8(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 6) & 1) != 0 || (v4 = *(a2 + 32)) == 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
    if (*v4 >= 1)
    {
      v6 = (v4 + 2);
      for (i = *v4; ; --i)
      {
        if (*v6)
        {
          if (sub_181959BA0(a1, *v6))
          {
            v8 = 1;
          }

          else
          {
            v8 = i <= 1;
          }

          if (v8)
          {
            break;
          }
        }

        else if (i < 2)
        {
          break;
        }

        v6 += 3;
      }
    }

    if (!*(a1 + 36))
    {
      return 2;
    }
  }

  v9 = sub_181893B48(**a1, *(a2 + 8), v5, *(**a1 + 100), 0);
  if (!v9 || *(v9 + 32) || (*(v9 + 5) & 0x28) == 0 || (*(a2 + 7) & 1) != 0)
  {
    *(a1 + 36) = 0;
    return 2;
  }

  return 1;
}

uint64_t sub_18195A590(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a2;
  if (!sub_181959260(a1, a2, a3, a4))
  {
    return 1;
  }

  while (1)
  {
    v8 = *a3;
    if (v8 == 43)
    {
      if (sub_18195A590(a1, v6, *(a3 + 2), a4) || sub_18195A590(a1, v6, *(a3 + 3), a4))
      {
        return 1;
      }

      v8 = *a3;
    }

    if (v8 == 52 && sub_18195A8B0(a1, v6, *(a3 + 2), a4, 0))
    {
      return 1;
    }

    v9 = *v6;
    if (v9 != 158)
    {
      break;
    }

    if (*(v6 + 2))
    {
      return 0;
    }

LABEL_20:
    v13 = *(v6 + 4);
    if (*v13 != 2)
    {
      if (*v13 != 3)
      {
        return 0;
      }

      v14 = *(v13 + 56);
      v15 = *v14;
      if (v15 != 122)
      {
        if (v15 != 171)
        {
          goto LABEL_31;
        }

        v16 = *(v14 + 1);
        v17 = *(v13 + 56);
        if ((v16 & 0x82000) != 0)
        {
          v17 = *(v13 + 56);
          do
          {
            if ((v16 & 0x80000) != 0)
            {
              v18 = (*(v17 + 32) + 8);
            }

            else
            {
              if (*v17 != 114)
              {
                break;
              }

              v18 = (v17 + 16);
            }

            v17 = *v18;
            v16 = *(v17 + 4);
          }

          while ((v16 & 0x82000) != 0);
        }

        if (!*(*(v17 + 8) + 4))
        {
LABEL_31:
          v20 = 1;
          v19 = sub_18195A9F8(v14, &v20, 0);
          result = 0;
          if (!v19 || v20)
          {
            return result;
          }

          v13 = *(v6 + 4);
        }
      }
    }

    v6 = *(v13 + 8);
    if (!sub_181959260(a1, v6, a3, a4))
    {
      return 1;
    }
  }

  if (v9 == 172)
  {
    v10 = *(v6 + 1);
    if ((*v10 | 0x20) == 0x69)
    {
      v11 = *(v6 + 4);
      if (v11)
      {
        result = sub_181893B48(*a1, v10, *v11, *(*a1 + 100), 0);
        if (!result)
        {
          return result;
        }

        if ((*(result + 6) & 0x40) != 0 && *(result + 8) == 5)
        {
          goto LABEL_20;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18195A790(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  while (1)
  {
    v6 = *(v5 + 1);
    if ((v6 & 0x82000) == 0)
    {
      break;
    }

    if ((v6 & 0x80000) != 0)
    {
      v5 = *(*(v5 + 4) + 8);
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v7 = *v5;
      if (v7 != 114)
      {
        goto LABEL_10;
      }

      v5 = *(v5 + 2);
      if (!v5)
      {
        return 0;
      }
    }
  }

  v7 = *v5;
LABEL_10:
  if (v7 == 52)
  {
    v5 = *(v5 + 2);
LABEL_16:
    WORD2(v10) = 0;
    v9 = 0uLL;
    *(&v8 + 1) = sub_18195AB54;
    WORD3(v10) = a3 != 0;
    DWORD2(v10) = a2;
    if (v5)
    {
      sub_181959BA0(&v8, v5);
      return WORD2(v10);
    }

    return 0;
  }

  if (v7 != 44)
  {
    goto LABEL_16;
  }

  while (!sub_18195A790(*(v5 + 2), a2, a3))
  {
    v5 = *(v5 + 3);
    if (*v5 != 44)
    {
      goto LABEL_16;
    }
  }

  return 1;
}

BOOL sub_18195A8B0(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (sub_181959260(a1, a2, a3, a4))
  {
    result = 0;
    switch(*v8)
    {
      case 0x13u:
      case 0x73u:
        goto LABEL_2;
      case 0x31u:
        if (a5)
        {
          return 0;
        }

        v11 = *(v8 + 4);
        if (sub_18195A8B0(v9, *(v11 + 8), v7, v6, 1))
        {
          return 1;
        }

        v12 = *(v11 + 32);
        a5 = 1;
        v13 = sub_18195A8B0(v9, v12, v7, v6, 1);
        result = 1;
        if (v13)
        {
          return result;
        }

        goto LABEL_3;
      case 0x32u:
        if (a5 && (v8[5] & 0x10) != 0)
        {
          return 0;
        }

        goto LABEL_2;
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x70u:
        a5 = 1;
        goto LABEL_7;
      case 0x67u:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
LABEL_7:
        if (!sub_18195A8B0(v9, *(v8 + 3), v7, v6, a5))
        {
          goto LABEL_3;
        }

        return 1;
      case 0x72u:
      case 0xADu:
      case 0xAEu:
      case 0xB5u:
        goto LABEL_3;
      case 0xAFu:
        if (a5 || v8[2] != 45)
        {
          return 0;
        }

LABEL_2:
        a5 = 1;
LABEL_3:
        v8 = *(v8 + 2);
        a1 = v9;
        a2 = v8;
        a3 = v7;
        a4 = v6;
        break;
      default:
        return result;
    }
  }

  return *v7 != 122;
}

uint64_t sub_18195A9F8(unsigned __int8 *a1, _DWORD *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1[5] & 8) != 0)
  {
LABEL_11:
    *a2 = *(a1 + 2);
    return 1;
  }

  v3 = *a1;
  if (v3 != 157)
  {
    if (v3 == 174)
    {
LABEL_22:
      v15 = 0;
      if (sub_18195A9F8(*(a1 + 2), &v15, 0))
      {
        *a2 = -v15;
        return 1;
      }
    }

    else if (v3 == 173)
    {
      a1 = *(a1 + 2);
      if (a1)
      {
        while ((a1[5] & 8) == 0)
        {
          v4 = *a1;
          if (v4 != 173)
          {
            if (v4 != 174)
            {
              return 0;
            }

            goto LABEL_22;
          }

          v5 = 0;
          a1 = *(a1 + 2);
          if (!a1)
          {
            return v5;
          }
        }

        goto LABEL_11;
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a3[2];
  if (!v6 || (*(*a3 + 50) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 12);
  v9 = 1 << (v8 - 1);
  if (v8 > 31)
  {
    v9 = 0x80000000;
  }

  *(v6 + 372) |= v9;
  v10 = sub_181959A44(a3[41], v8);
  if (!v10)
  {
    return 0;
  }

  if ((0x50505050uLL >> *(v10 + 10)))
  {
    v13 = v10;
    v14 = sqlite3_value_int64(v10);
    if (v14 >> 31)
    {
      v5 = 0;
    }

    else
    {
      *a2 = v14;
      v5 = 1;
    }

    v10 = v13;
  }

  else
  {
    v5 = 0;
  }

  sub_18190B0E8(v10);
  return v5;
}

uint64_t sub_18195AB54(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 1) != 0 || (v2 & 2) != 0 && *(a1 + 38))
  {
    return 1;
  }

  v5 = *a2;
  result = 1;
  if (v5 <= 0x32)
  {
    if (*a2 > 0x30u)
    {
      if (v5 == 49)
      {
        if (*(a2 + 2))
        {
          v13 = a2;
          sub_181959BA0(a1, *(a2 + 2));
          a2 = v13;
        }

        sub_18195AD20(a1, *(*(a2 + 4) + 8), *(*(a2 + 4) + 32));
        return 1;
      }

      if (v5 != 50)
      {
        return 0;
      }

      if ((v2 & 0x1000) != 0)
      {
        return result;
      }

      if (**(a2 + 4) < 1)
      {
        return result;
      }

      v10 = *(a2 + 2);
      if (!v10)
      {
        return result;
      }

      v11 = a1;
    }

    else
    {
      if (v5 - 43 >= 2)
      {
        if (v5 - 45 < 2)
        {
          return result;
        }

        return 0;
      }

      if (!*(a2 + 2) || *(a1 + 36))
      {
        return result;
      }

      v12 = *(a2 + 3);
      sub_181959BA0(a1, *(a2 + 2));
      if (!*(a1 + 36))
      {
        return 1;
      }

      *(a1 + 36) = 0;
      if (!v12)
      {
        return 1;
      }

      v11 = a1;
      v10 = v12;
    }

    sub_181959BA0(v11, v10);
    return 1;
  }

  if (v5 - 53 >= 6)
  {
    if (v5 - 158 <= 0x13)
    {
      if (((1 << (v5 + 98)) & 0xA4001) != 0)
      {
        return result;
      }

      if (v5 == 168)
      {
        if (*(a1 + 40) == *(a2 + 11))
        {
          *(a1 + 36) = 1;
          return 2;
        }

        return result;
      }
    }

    if (v5 - 51 < 2)
    {
      return result;
    }

    return 0;
  }

  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (*v7 != 168 || (v8 = *(v7 + 9)) == 0 || *(v8 + 63) != 1)
  {
    if (*v6 != 168)
    {
      return 0;
    }

    v9 = *(v6 + 9);
    if (!v9 || *(v9 + 63) != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18195AD20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    if (!*(result + 36))
    {
      result = sub_181959BA0(result, a2);
      if (*(v3 + 36))
      {
        *(v3 + 36) = 0;
        if (a3)
        {

          return sub_181959BA0(v3, a3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18195AD8C(_BYTE *a1, int a2, char *zFormat, ...)
{
  va_start(va, zFormat);
  v31 = *MEMORY[0x1E69E9840];
  if (a1[301] != 2 && (*(*a1 + 49) & 4) == 0)
  {
    return 0;
  }

  v6 = *a1;
  v29 = 0x10000000000;
  v7 = *(v6 + 136);
  v25 = v6;
  v26 = &v30;
  v27 = 512;
  v28 = v7;
  sqlite3_str_vappendf(&v25, zFormat, va);
  if (v26 && (v26[v29] = 0, v28) && (v29 & 0x40000000000) == 0)
  {
    v8 = sub_18192A12C(&v25);
  }

  else
  {
    v8 = v26;
  }

  if (BYTE4(v29) == 7 && !*(v6 + 103) && !*(v6 + 104))
  {
    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    v23 = *(v6 + 344);
    if (v23)
    {
      sub_181910730(v23, "out of memory", va);
      for (i = *(v6 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  v9 = *(a1 + 2);
  v10 = *(a1 + 78);
  v11 = *(v9 + 144);
  if (*(v9 + 148) <= v11)
  {
    v5 = sub_18194C8AC(*(a1 + 2), 188, *(v9 + 144), v10, 0);
  }

  else
  {
    *(v9 + 144) = v11 + 1;
    v12 = *(v9 + 136) + 40 * v11;
    *v12 = 188;
    *(v12 + 4) = v11;
    *(v12 + 8) = v10;
    *(v12 + 12) = 0;
    *(v12 + 28) = 0;
    *(v12 + 20) = 0;
    *(v12 + 36) = 0;
    v5 = v11;
  }

  if (*(*v9 + 103))
  {
    if (v8)
    {
      sub_181939EC8(*v9, v8);
    }
  }

  else
  {
    v13 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      v13 = *(v9 + 144) - 1;
    }

    v14 = *(v9 + 136) + 40 * v13;
    if (*(v14 + 1))
    {
      sub_18194CB90(v9, v14, v8, 4294967290);
    }

    else if (v8)
    {
      *(v14 + 16) = v8;
      *(v14 + 1) = -6;
    }
  }

  if (a2)
  {
    *(a1 + 78) = v11;
  }

  v15 = *v9;
  if ((*(*v9 + 49) & 4) != 0)
  {
    v16 = *(v9 + 392);
    v17 = 56 * v16;
    v18 = v17 + 56;
    v19 = *(v9 + 400);
    if (v19)
    {
      if (*(v15 + 512) > v19)
      {
        v20 = *(v9 + 392);
        if (*(v15 + 496) <= v19)
        {
          if (v18 < 0x81)
          {
LABEL_38:
            *(v9 + 392) = v16 + 1;
            v21 = &v19[7 * v20];
            *(v21 + 1) = 0u;
            *(v21 + 2) = 0u;
            *v21 = 0u;
            v21[6] = 0;
            *v21 = v11;
            *(v21 + 28) = -1;
            *(v21 + 20) = 0;
            *(v9 + 400) = v19;
            return v5;
          }
        }

        else if (*(v15 + 504) <= v19 && v18 <= *(v15 + 438))
        {
          goto LABEL_38;
        }
      }

      v19 = sub_181929F38(v15, v19, v18, 0x1010040CEB2E6A9);
      if (!v19)
      {
        return v5;
      }
    }

    else
    {
      v19 = sub_181929E8C(v15, v17 + 56, 0x1010040CEB2E6A9);
      if (!v19)
      {
        return v5;
      }
    }

    v16 = *(v9 + 392);
    v20 = v16;
    goto LABEL_38;
  }

  return v5;
}

uint64_t sub_18195B0C0(uint64_t result, int a2, int a3, int a4)
{
  if ((*(*result + 49) & 4) != 0)
  {
    v4 = *(result + 392);
    v5 = v4 + 1;
    v6 = 56 * v4;
    while (--v5 >= 1)
    {
      v7 = v6 - 56;
      v8 = *(result + 400);
      v9 = *(v8 + v6 - 56);
      v6 -= 56;
      if (v9 == a2)
      {
        if (a4 < 0)
        {
          a4 = *(result + 144) - 1;
        }

        if (*(v8 + v7 + 4))
        {
          if (*(v8 + v7 + 12))
          {
            if (*(v8 + v7 + 20))
            {
              return result;
            }

            v10 = 4;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v8 + 4 * v10 + v7;
        *(v11 + 4) = a3;
        *(v11 + 8) = a4;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_18195B158(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (off_1ED453038 && off_1ED453038(300))
  {
    v6 = *a1;
    if (!*(*a1 + 103) && !*(v6 + 104))
    {
      *(v6 + 103) = 1;
      if (*(v6 + 220) >= 1)
      {
        *(v6 + 424) = 1;
      }

      ++*(v6 + 432);
      *(v6 + 436) = 0;
      v7 = *(v6 + 344);
      if (v7)
      {
        sub_181910730(v7, "out of memory");
        for (i = *(v6 + 344); ; ++*(i + 52))
        {
          *(i + 24) = 7;
          i = *(i + 216);
          if (!i)
          {
            break;
          }
        }
      }
    }

    goto LABEL_15;
  }

  if (!*a1)
  {
    v9 = sub_181902484(24, 0xA00402214FCE6);
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_15:
    a2(*a1, a3);
    return 0;
  }

  v9 = sub_181929E8C(*a1, 0x18uLL, 0xA00402214FCE6);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = a1[22];
  a1[22] = v9;
  *v9 = v10;
  v9[1] = a3;
  v9[2] = a2;
  return a3;
}

void *sub_18195B270(void *result, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_1819439E0(result, a2);
  }

  return result;
}

uint64_t sub_18195B27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *v2;
  if (v3 == 176)
  {
    v3 = v2[2];
  }

  v4 = *(a2 + 16);
  if (v3 != 177)
  {
    if (v3 != 139)
    {
      v5 = 1;
      goto LABEL_8;
    }

    v4 = *(v2 + 4);
  }

  v5 = **(v4 + 32);
LABEL_8:
  if ((*(a2 + 5) & 0x10) != 0 && !*(*a1 + 103))
  {
    if (v5 == **(*(a2 + 32) + 32))
    {
      return 0;
    }

    if (!*(a1 + 52))
    {
      sub_181910730(a1, "sub-select returns %d columns - expected %d");
    }

    return 1;
  }

  if (v5 != 1)
  {
    if ((v2[5] & 0x10) != 0)
    {
      if (!*(a1 + 52))
      {
        v6 = 1;
        sub_181910730(a1, "sub-select returns %d columns - expected %d", **(*(v2 + 4) + 32), 1);
        return v6;
      }
    }

    else
    {
      sub_181910730(a1, "row value misused");
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18195B378(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *v2;
  if (v3 == 176)
  {
    v3 = v2[2];
  }

  v4 = *(a2 + 16);
  if (v3 != 177)
  {
    if (v3 != 139)
    {
      v5 = 1;
      if ((*(a2 + 5) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v4 = *(v2 + 4);
  }

  v5 = **(v4 + 32);
  if ((*(a2 + 5) & 0x10) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v6 = *(a2 + 32);
LABEL_10:
  v7 = *a1;
  if (v7)
  {
    v8 = sub_181929E8C(v7, v5 + 1, 2711528957);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = sub_181902484(v5 + 1, 2711528957);
    if (!v8)
    {
      return v8;
    }
  }

  v22 = v5;
  if (v5 >= 1)
  {
    v9 = 8;
    v10 = v8;
    v11 = v5;
    while (1)
    {
      v14 = *v2;
      v15 = v14;
      if (v14 == 176)
      {
        v15 = v2[2];
      }

      v16 = v2;
      if (v15 == 177)
      {
        goto LABEL_26;
      }

      v17 = v2;
      if (v15 == 139)
      {
        break;
      }

LABEL_31:
      v13 = sub_1818D0A24(v17);
      if (v6)
      {
        v19 = sub_1818D0A24(*(*(v6 + 32) + v9));
        if (v13 < 65 || v19 < 65)
        {
          if (v19 >= 65)
          {
            v12 = v19;
          }

          else
          {
            v12 = v13;
          }

          LOBYTE(v13) = v12 | 0x40;
        }

        else if (v19 > 0x42 || v13 > 0x42)
        {
          LOBYTE(v13) = 67;
        }

        else
        {
          LOBYTE(v13) = 65;
        }
      }

      *v10++ = v13;
      v9 += 24;
      if (!--v11)
      {
        goto LABEL_40;
      }
    }

    v16 = *(v2 + 4);
LABEL_26:
    v17 = v2;
    if (*v16[4] >= 2)
    {
      if (v14 == 139 || (v18 = v2, v2[2] == 139))
      {
        v18 = *(v2 + 4);
      }

      v17 = *(*(v18 + 4) + v9);
    }

    goto LABEL_31;
  }

LABEL_40:
  *(v8 + v22) = 0;
  return v8;
}

BOOL sub_18195B540(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if ((v1 - 173) >= 2)
    {
      break;
    }

    a1 = *(a1 + 2);
  }

  if (v1 == 176)
  {
    v1 = a1[2];
  }

  v2 = 0;
  if ((v1 - 154) < 3 || v1 == 118)
  {
    return v2;
  }

  if (v1 != 168)
  {
    return 1;
  }

  if ((a1[6] & 0x20) != 0)
  {
    return 1;
  }

  v3 = *(a1 + 9);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 12);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  return v5 && v4 < *(v3 + 54) && (*(v5 + 16 * v4 + 8) & 0xF) == 0;
}

uint64_t sub_18195B5D8(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = *(result + 144);
  if (*(result + 148) <= v6)
  {
    result = sub_18194C8AC(result, 71, 0, a3, 0);
  }

  else
  {
    *(result + 144) = v6 + 1;
    v7 = *(result + 136) + 40 * v6;
    *v7 = 71;
    *(v7 + 8) = a3;
    *(v7 + 12) = 0;
    *(v7 + 28) = 0;
    *(v7 + 20) = 0;
    *(v7 + 36) = 0;
  }

  v8 = *(v5 + 144);
  if (*(v5 + 148) <= v8)
  {
    result = sub_18194C8AC(v5, 36, a2, 0, 0);
    v8 = result;
  }

  else
  {
    *(v5 + 144) = v8 + 1;
    v9 = *(v5 + 136) + 40 * v8;
    *v9 = 36;
    *(v9 + 4) = a2;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
  }

  v10 = *(v5 + 144);
  if (*(v5 + 148) <= v10)
  {
    result = sub_18194C8AC(v5, 94, a2, 0, a3);
  }

  else
  {
    *(v5 + 144) = v10 + 1;
    v11 = *(v5 + 136) + 40 * v10;
    *v11 = 94;
    *(v11 + 4) = a2;
    *(v11 + 8) = 0;
    *(v11 + 12) = a3;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
  }

  v12 = *(v5 + 144);
  if (v12 >= 1)
  {
    *(*(v5 + 136) + 40 * v12 - 38) = 128;
  }

  if (*(*v5 + 103))
  {
    v13 = &byte_1EA831A58;
  }

  else
  {
    v13 = (*(v5 + 136) + 40 * v8);
  }

  *(v13 + 2) = v12;
  return result;
}

void sub_18195B754(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(a2 + 4);
  if ((v7 & 0x40) != 0 || *(a1 + 68))
  {
    v8 = 0;
    v124 = 0;
    goto LABEL_4;
  }

  if ((v7 & 0x1000) == 0 || (*(*(a2 + 32) + 4) & 2) != 0)
  {
    v31 = 0;
    v32 = *(a2 + 4);
    if ((v32 & 0x2000000) != 0)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v30 = sub_181929E8C(*a1, 0x20uLL, 0x1010040CB500BD6);
    v31 = v30;
    if (v30)
    {
      *v30 = *(*(v4 + 32) + 16);
      v30[1] = sub_18195B378(v5, v4);
    }

    v32 = *(v4 + 4);
    if ((v32 & 0x2000000) != 0)
    {
      goto LABEL_187;
    }
  }

  v38 = a3;
  v39 = v4;
  v40 = v31;
  if (v31)
  {
    v41 = *v31;
    if ((*(v5 + 38) >> (*v31 & 7)))
    {
      v42 = v5[2];
      if (!*(*v42 + 103))
      {
        v103 = v42[17];
        v104 = v103 + 40;
        v105 = v103 + 40 * *(v42 + 36) - 40;
        while (1)
        {
          if (v104 >= v105)
          {
            goto LABEL_48;
          }

          if (*(v104 + 1) == 239)
          {
            v106 = *(v104 + 16);
            if (*(v106 + 4))
            {
              if (v41 == *v106 && !strcmp(v40[1], *(v106 + 8)))
              {
                break;
              }
            }
          }

          v104 += 40;
        }

        v4 = v39;
        v39[18] = *(v106 + 20);
        v39[19] = *(v106 + 24);
        v39[11] = *(v106 + 16);
        v39[1] = v32 | 0x2000000;
        a3 = v38;
        v31 = v40;
LABEL_187:
        v107 = *(v6 + 36);
        if (*(v6 + 37) <= v107)
        {
          v107 = sub_18194C8AC(v6, 15, 0, 0, 0);
          if ((*(v4 + 5) & 0x10) == 0)
          {
LABEL_192:
            v110 = *(v4 + 72);
            v109 = *(v4 + 76);
            v111 = *(v6 + 36);
            if (*(v6 + 37) <= v111)
            {
              sub_18194C8AC(v6, 10, v109, v110, 0);
            }

            else
            {
              *(v6 + 36) = v111 + 1;
              v112 = &v6[17][5 * v111];
              *v112 = 10;
              *(v112 + 4) = v109;
              *(v112 + 8) = v110;
              *(v112 + 12) = 0;
              *(v112 + 28) = 0;
              *(v112 + 20) = 0;
              *(v112 + 36) = 0;
            }

            v113 = *(v4 + 44);
            v114 = *(v6 + 36);
            if (*(v6 + 37) <= v114)
            {
              sub_18194C8AC(v6, 114, a3, v113, 0);
            }

            else
            {
              *(v6 + 36) = v114 + 1;
              v115 = &v6[17][5 * v114];
              *v115 = 114;
              *(v115 + 4) = a3;
              *(v115 + 8) = v113;
              *(v115 + 12) = 0;
              *(v115 + 28) = 0;
              *(v115 + 20) = 0;
              *(v115 + 36) = 0;
            }

            if (*(*v6 + 103))
            {
              dword_1EA831A60 = *(v6 + 36);
              if (!v31)
              {
                return;
              }
            }

            else
            {
              LODWORD(v6[17][5 * v107 + 1]) = *(v6 + 36);
              if (!v31)
              {
                return;
              }
            }

            v116 = v31[1];
            if (v116)
            {
              sub_181929C84(*v5, v116);
            }

            v117 = *v5;

            sub_181929C84(v117, v31);
            return;
          }
        }

        else
        {
          *(v6 + 36) = v107 + 1;
          v108 = &v6[17][5 * v107];
          *v108 = 15;
          *(v108 + 1) = 0u;
          *(v108 + 17) = 0u;
          *(v108 + 32) = 0;
          if ((*(v4 + 5) & 0x10) == 0)
          {
            goto LABEL_192;
          }
        }

        sub_18195AD8C(v5, 0, "REUSE LIST SUBQUERY %d", *(*(v4 + 32) + 16));
        goto LABEL_192;
      }
    }
  }

LABEL_48:
  v4 = v39;
  v39[1] = v32 | 0x2000000;
  v43 = *(v5 + 15) + 1;
  *(v5 + 15) = v43;
  v39[19] = v43;
  v44 = *(v6 + 36);
  if (*(v6 + 37) <= v44)
  {
    v45 = sub_18194C8AC(v6, 74, 0, v43, 0) + 1;
  }

  else
  {
    v45 = v44 + 1;
    *(v6 + 36) = v44 + 1;
    v46 = &v6[17][5 * v44];
    *v46 = 74;
    *(v46 + 8) = v43;
    *(v46 + 12) = 0;
    *(v46 + 28) = 0;
    *(v46 + 20) = 0;
    *(v46 + 36) = 0;
  }

  a3 = v38;
  v8 = v40;
  *(v4 + 72) = v45;
  if (v40)
  {
    *(v40 + 4) = 0;
    *(v40 + 5) = *(v4 + 72);
    *(v40 + 6) = *(v4 + 76);
    *(v40 + 4) = v38;
    *(v5 + 38) = 1 << (*v40 & 7);
    v72 = *v6;
    if (*(*v6 + 103))
    {
      v73 = v40[1];
      if (v73)
      {
        sub_181929C84(*v6, v73);
      }

      sub_181929C84(v72, v40);
    }

    else
    {
      v102 = &v6[17][5 * *(v6 + 36)];
      if (*(v102 - 39))
      {
        sub_18194CB90(v6, v102 - 40, v40, 4294967279);
      }

      else
      {
        *(v102 - 24) = v40;
        *(v102 - 39) = -17;
      }
    }
  }

  v118 = *(v6 + 36);
  if (*(v6 + 37) <= v118)
  {
    v124 = sub_18194C8AC(v6, 15, 0, 0, 0);
  }

  else
  {
    *(v6 + 36) = v118 + 1;
    v119 = &v6[17][5 * v118];
    *v119 = 15;
    *(v119 + 1) = 0u;
    *(v119 + 17) = 0u;
    *(v119 + 32) = 0;
    v124 = v118;
  }

LABEL_4:
  v9 = *(v4 + 16);
  v10 = *v9;
  if (v10 == 176)
  {
    v10 = v9[2];
  }

  v11 = *(v4 + 16);
  if (v10 == 177)
  {
    goto LABEL_9;
  }

  if (v10 == 139)
  {
    v11 = *(v9 + 4);
LABEL_9:
    v12 = **(v11 + 32);
    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:
  *(v4 + 44) = a3;
  v13 = *(v6 + 36);
  if (*(v6 + 37) <= v13)
  {
    v122 = sub_18194C8AC(v6, 117, a3, v12, 0);
  }

  else
  {
    *(v6 + 36) = v13 + 1;
    v122 = v13;
    v14 = &v6[17][5 * v13];
    *v14 = 117;
    *(v14 + 4) = a3;
    *(v14 + 8) = v12;
    *(v14 + 12) = 0;
    *(v14 + 28) = 0;
    *(v14 + 20) = 0;
    *(v14 + 36) = 0;
  }

  v15 = *v5;
  v16 = v12 + 1;
  v17 = 9 * v16;
  v18 = sub_181929E8C(*v5, v17 + 32, 0x2004093837F09);
  v123 = v18;
  if (v18)
  {
    v19 = v18;
    v20 = v18 + 32;
    *(v19 + 3) = &v20[8 * v16];
    *(v19 + 3) = v12;
    *(v19 + 4) = v16;
    v19[4] = *(v15 + 100);
    *(v19 + 2) = v15;
    *v19 = 1;
    bzero(v20, v17);
  }

  else if (!*(v15 + 103) && !*(v15 + 104))
  {
    *(v15 + 103) = 1;
    if (*(v15 + 220) >= 1)
    {
      *(v15 + 424) = 1;
    }

    ++*(v15 + 432);
    *(v15 + 436) = 0;
    v70 = *(v15 + 344);
    if (v70)
    {
      sub_181910730(v70, "out of memory");
      for (i = *(v15 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  v21 = *(v4 + 32);
  if ((*(v4 + 5) & 0x10) == 0)
  {
    if (!v21)
    {
      goto LABEL_150;
    }

    v22 = sub_1818D0A24(v9);
    __s = v22;
    if (v22 > 64)
    {
      v23 = v123;
      if (v22 == 69)
      {
        __s = 67;
      }
    }

    else
    {
      __s = 65;
      v23 = v123;
    }

    if (v23)
    {
      *(v23 + 4) = sub_1818B4720(v5, *(v4 + 16));
    }

    v33 = *(v5 + 31);
    if (v33)
    {
      *(v5 + 31) = v33 - 1;
      v34 = *(v5 + (v33 - 1) + 46);
      if (v33 != 1)
      {
        v35 = v33 - 2;
        v36 = v5;
        *(v5 + 31) = v35;
        v37 = *(v5 + v35 + 46);
LABEL_53:
        v126 = a3;
        v48 = *v21;
        v49 = v124;
        if (*v21 >= 1)
        {
          v50 = (v21 + 8);
          v120 = v4;
          do
          {
            v53 = *v50;
            if (v49 && (v132 = 0x100000000, v133 = 0, v131 = 0, *&v129 = v36, *(&v129 + 1) = sub_1818C7E14, v130 = sub_18195A49C, v53) && (sub_181959BA0(&v129, v53), !WORD2(v132)))
            {
              if (!*(*v6 + 103))
              {
                v58 = &v6[17][5 * v49];
                sub_1818A3B68(*v6, *(v58 - 39), *(v58 - 24), v54);
                *(v58 - 24) = 0;
                *(v58 - 40) = 187;
                v4 = v120;
                if (!*(*v6 + 103))
                {
                  v60 = &v6[17][5 * v49];
                  sub_1818A3B68(*v6, *(v60 + 1), *(v60 + 16), v59);
                  *(v60 + 16) = 0;
                  *v60 = 187;
                  v4 = v120;
                }
              }

              v49 = 0;
              *(v4 + 4) &= ~0x2000000u;
              if (v36[2])
              {
LABEL_61:
                v55 = sub_1818B8080(v36, v53, v34);
                if (v55 != v34)
                {
                  v56 = v55;
                  if (!v53)
                  {
                    goto LABEL_78;
                  }

                  while (1)
                  {
                    v57 = *(v53 + 1);
                    if ((v57 & 0x82000) == 0)
                    {
                      break;
                    }

                    if ((v57 & 0x80000) != 0)
                    {
                      v53 = *(*(v53 + 4) + 8);
                      if (!v53)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      if (*v53 != 114)
                      {
                        break;
                      }

                      v53 = *(v53 + 2);
                      if (!v53)
                      {
                        goto LABEL_78;
                      }
                    }
                  }

                  if ((v57 & 0x400000) != 0 || *v53 == 176)
                  {
                    v61 = 80;
                  }

                  else
                  {
LABEL_78:
                    v61 = 81;
                  }

                  v62 = v36[2];
                  v63 = *(v62 + 144);
                  if (*(v62 + 148) <= v63)
                  {
                    sub_18194C8AC(v62, v61, v56, v34, 0);
                  }

                  else
                  {
                    *(v62 + 144) = v63 + 1;
                    v64 = *(v62 + 136) + 40 * v63;
                    *v64 = v61;
                    *(v64 + 2) = 0;
                    *(v64 + 4) = v56;
                    *(v64 + 8) = v34;
                    *(v64 + 1) = 0;
                    *(v64 + 12) = 0;
                    *(v64 + 28) = 0;
                    *(v64 + 20) = 0;
                    *(v64 + 36) = 0;
                  }
                }
              }
            }

            else if (v36[2])
            {
              goto LABEL_61;
            }

            v65 = *(v6 + 36);
            if (*(v6 + 37) <= v65)
            {
              v65 = sub_18194C8AC(v6, 97, v34, 1, v37);
            }

            else
            {
              *(v6 + 36) = v65 + 1;
              v66 = &v6[17][5 * v65];
              *v66 = 97;
              *(v66 + 4) = v34;
              *(v66 + 8) = 1;
              *(v66 + 12) = v37;
              *(v66 + 24) = 0;
              *(v66 + 32) = 0;
              *(v66 + 16) = 0;
            }

            if (!*(*v6 + 103))
            {
              if (v65 < 0)
              {
                v65 = *(v6 + 36) - 1;
              }

              sub_18194CB90(v6, &v6[17][5 * v65], &__s, 1);
            }

            v67 = *(v6 + 36);
            if (*(v6 + 37) > v67)
            {
              *(v6 + 36) = v67 + 1;
              v51 = &v6[17][5 * v67];
              *v51 = 64906;
              *(v51 + 4) = v126;
              *(v51 + 8) = v37;
              *(v51 + 12) = v34;
              *(v51 + 16) = 1;
              *(v51 + 24) = 0;
              *(v51 + 32) = 0;
            }

            else
            {
              sub_18194CAFC(v6, 138, v126, v37, v34, 1);
            }

            v50 += 3;
            v52 = __OFSUB__(v48--, 1);
          }

          while (!((v48 < 0) ^ v52 | (v48 == 0)));
        }

        v124 = v49;
        v5 = v36;
        if (v34)
        {
          v68 = *(v36 + 31);
          if (v68 <= 7)
          {
            *(v36 + 31) = v68 + 1;
            *(v36 + v68 + 46) = v34;
          }
        }

        a3 = v126;
        if (v37)
        {
          v69 = *(v36 + 31);
          if (v69 <= 7)
          {
            *(v36 + 31) = v69 + 1;
            *(v36 + v69 + 46) = v37;
          }
        }

LABEL_150:
        if (v8)
        {
          *(v8 + 4) = 1;
        }

        if (v123)
        {
          if (*(*v6 + 103))
          {
            if (!(*v6)[103])
            {
              v92 = (*v123)-- == 1;
              if (v92)
              {
                sub_181939EC8(*(v123 + 2), v123);
                if (!v124)
                {
                  return;
                }

LABEL_164:
                v95 = *(v6 + 36);
                if (*(v6 + 37) <= v95)
                {
                  sub_18194C8AC(v6, 136, a3, 0, 0);
                }

                else
                {
                  *(v6 + 36) = v95 + 1;
                  v96 = &v6[17][5 * v95];
                  *v96 = 136;
                  *(v96 + 4) = a3;
                  *(v96 + 8) = 0u;
                  *(v96 + 24) = 0u;
                }

                v97 = *(v6 + 36);
                if (*(*v6 + 103))
                {
                  v98 = &byte_1EA831A58;
                }

                else
                {
                  v98 = &v6[17][5 * v124];
                }

                *(v98 + 2) = v97;
                v100 = *(v4 + 72);
                v99 = *(v4 + 76);
                if (*(v6 + 37) <= v97)
                {
                  sub_18194C8AC(v6, 67, v99, v100, 1);
                }

                else
                {
                  *(v6 + 36) = v97 + 1;
                  v101 = &v6[17][5 * v97];
                  *v101 = 67;
                  *(v101 + 4) = v99;
                  *(v101 + 8) = v100;
                  *(v101 + 12) = 1;
                  *(v101 + 24) = 0;
                  *(v101 + 32) = 0;
                  *(v101 + 16) = 0;
                }

                *(v5 + 31) = 0;
                *(v5 + 11) = 0;
                return;
              }
            }
          }

          else
          {
            v93 = v122;
            if (v122 < 0)
            {
              v93 = *(v6 + 36) - 1;
            }

            v94 = &v6[17][5 * v93];
            if (!*(v94 + 1))
            {
              *(v94 + 16) = v123;
              *(v94 + 1) = -8;
              if (!v124)
              {
                return;
              }

              goto LABEL_164;
            }

            sub_18194CB90(v6, v94, v123, 4294967288);
          }
        }

        if (!v124)
        {
          return;
        }

        goto LABEL_164;
      }

      v47 = *(v5 + 15);
    }

    else
    {
      v47 = *(v5 + 15) + 1;
      v34 = v47;
    }

    v37 = v47 + 1;
    v36 = v5;
    *(v5 + 15) = v47 + 1;
    goto LABEL_53;
  }

  v24 = &byte_181A2878D;
  v25 = *(v21 + 32);
  if (!v124)
  {
    v24 = "CORRELATED ";
  }

  sub_18195AD8C(v5, 1, "%sLIST SUBQUERY %d", v24, *(v21 + 16));
  if (*v25 != v12)
  {
    goto LABEL_150;
  }

  v132 = 0;
  v129 = 0u;
  v130 = 0;
  LOBYTE(v129) = 11;
  DWORD1(v129) = a3;
  v131 = sub_18195B378(v5, v4);
  *(v21 + 8) = 0;
  v26 = *v5;
  if (!v124 || (*(v26 + 98) & 8) != 0)
  {
    v125 = 0;
  }

  else
  {
    v27 = *(v5 + 15) + 1;
    *(v5 + 15) = v27;
    v28 = *(v6 + 36);
    if (*(v6 + 37) <= v28)
    {
      v125 = sub_18194C8AC(v6, 77, 10000, v27, 0);
    }

    else
    {
      *(v6 + 36) = v28 + 1;
      v125 = v28;
      v29 = &v6[17][5 * v28];
      *v29 = 0x27100000004DLL;
      *(v29 + 8) = v27;
      *(v29 + 12) = 0;
      *(v29 + 28) = 0;
      *(v29 + 20) = 0;
      *(v29 + 36) = 0;
    }

    DWORD2(v129) = v27;
    v26 = *v5;
  }

  v75 = sub_1818CB220(v26, v21, 0);
  v76 = 0;
  if (!*(*v5 + 103))
  {
    v76 = sub_1818A9A10(v5, v75, &v129) == 0;
  }

  if (v75)
  {
    sub_1818BB408(*v5, v75, 1, v74);
  }

  if (v131)
  {
    sub_181929C84(*v5, v131);
  }

  if (!v125)
  {
    goto LABEL_124;
  }

  v77 = DWORD2(v129);
  if (*(*v6 + 103))
  {
    v78 = &byte_1EA831A58;
    dword_1EA831A64 = DWORD2(v129);
    if (!DWORD2(v129))
    {
      goto LABEL_123;
    }
  }

  else
  {
    v79 = v6[17];
    HIDWORD(v79[5 * v124 + 1]) = DWORD2(v129);
    if (!v77)
    {
      v78 = &v79[5 * v125];
LABEL_123:
      *(v78 + 1) = 10;
    }
  }

LABEL_124:
  if (v76)
  {
    v121 = v8;
    v127 = a3;
    v80 = v4;
    if (v12 < 1)
    {
LABEL_149:
      v4 = v80;
      a3 = v127;
      v8 = v121;
      goto LABEL_150;
    }

    v81 = (v123 + 32);
    v82 = v12;
    v83 = 2;
    while (1)
    {
      v86 = *v9;
      v87 = v86;
      if (v86 == 176)
      {
        v87 = v9[2];
      }

      v88 = v9;
      if (v87 != 177)
      {
        v89 = v9;
        if (v87 != 139)
        {
          goto LABEL_140;
        }

        v88 = *(v9 + 4);
      }

      v89 = v9;
      if (*v88[4] >= 2)
      {
        if (v86 == 139 || (v90 = v9, v9[2] == 139))
        {
          v90 = *(v9 + 4);
        }

        v89 = *(*(v90 + 4) + v83 * 4);
      }

LABEL_140:
      if ((v89[5] & 2) != 0)
      {
        v84 = v5;
      }

      else
      {
        v91 = *&v25[v83];
        if (!v91 || (v91[5] & 2) == 0)
        {
          v85 = sub_1818B4720(v5, v89);
          if (v85)
          {
            goto LABEL_129;
          }
        }

        v84 = v5;
        v89 = v91;
      }

      v85 = sub_1818B4720(v84, v89);
LABEL_129:
      *v81++ = v85;
      v83 += 6;
      if (!--v82)
      {
        goto LABEL_149;
      }
    }
  }

  if (v123)
  {
    v92 = (*v123)-- == 1;
    if (v92)
    {
      sub_181939EC8(*(v123 + 2), v123);
    }
  }
}

_DWORD *sub_18195C5D4(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 48 * *a2;
  if (a1)
  {
    v5 = sub_181929E8C(a1, v4 + 16, 776070470);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = sub_181902484(v4 + 16, 776070470);
    if (!v5)
    {
      return v5;
    }
  }

  bzero(v5, v4 + 16);
  v6 = *a2;
  *v5 = *a2;
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < *a2; ++i)
    {
      v10 = &a2[v7];
      v11 = &v5[v7];
      *&v5[v7 + 8] = sub_1818CB220(a1, *&a2[v7 + 8], 0);
      *&v5[v7 + 6] = sub_1818C83A0(a1, *&a2[v7 + 6], 0);
      v12 = *&a2[v7 + 4];
      if (v12)
      {
        v13 = strlen(*(v10 + 2));
        v14 = v13;
        if (a1)
        {
          v9 = sub_181929E8C(a1, v13 + 1, 354097263);
          if (!v9)
          {
            goto LABEL_10;
          }

LABEL_16:
          memcpy(v9, v12, v14 + 1);
          goto LABEL_10;
        }

        v9 = sub_181902484(v13 + 1, 354097263);
        if (v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_10:
      *(v11 + 2) = v9;
      *(v11 + 56) = *(v10 + 56);
      v7 += 12;
    }
  }

  return v5;
}

uint64_t sub_18195C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a1)
  {
    v6 = sub_181902484(144, 0x10B004036C0935CLL);
    if (!v6)
    {
      return v6;
    }

    goto LABEL_17;
  }

  if (*(a1 + 436) <= 0x8Fu)
  {
    if (*(a1 + 432))
    {
      if (*(a1 + 103))
      {
        return 0;
      }
    }

    else
    {
      ++*(a1 + 452);
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 472);
  if (v6)
  {
    v7 = (a1 + 472);
LABEL_14:
    *v7 = *v6;
    ++*(a1 + 448);
    goto LABEL_17;
  }

  v6 = *(a1 + 464);
  if (v6)
  {
    v7 = (a1 + 464);
    goto LABEL_14;
  }

  ++*(a1 + 456);
LABEL_16:
  v6 = sub_18192A080(a1, 144, 0x10B004036C0935CLL);
  if (!v6)
  {
    return v6;
  }

LABEL_17:
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v8 = *a3;
  if (!*a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v9 = strlen(*a3);
  v10 = v9;
  if (!a1)
  {
    v11 = sub_181902484(v9 + 1, 354097263);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = sub_181929E8C(a1, v9 + 1, 354097263);
  if (v11)
  {
LABEL_23:
    memcpy(v11, v8, v10 + 1);
  }

LABEL_24:
  *v6 = v11;
  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = strlen(*(a3 + 8));
    v14 = v13;
    if (a1)
    {
      v15 = sub_181929E8C(a1, v13 + 1, 354097263);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v15 = sub_181902484(v13 + 1, 354097263);
    if (v15)
    {
LABEL_30:
      memcpy(v15, v12, v14 + 1);
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_31:
  *(v6 + 8) = v15;
  v16 = *(a3 + 72);
  if (v16)
  {
    v17 = sub_1818C7FEC(a1, v16, 0, 0);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a3 + 80);
  *(v6 + 72) = v17;
  *(v6 + 80) = v18;
  *(v6 + 16) = sub_1818C83A0(a1, *(a3 + 16), 0);
  *(v6 + 24) = sub_1818C83A0(a1, *(a3 + 24), 0);
  *(v6 + 32) = *(a3 + 32);
  *(v6 + 33) = *(a3 + 33);
  *(v6 + 36) = *(a3 + 36);
  *(v6 + 96) = *(a3 + 96);
  *(v6 + 124) = *(a3 + 124);
  *(v6 + 88) = *(a3 + 88);
  *(v6 + 140) = *(a3 + 140);
  v19 = *(a3 + 40);
  if (v19)
  {
    v20 = sub_1818C7FEC(a1, v19, 0, 0);
  }

  else
  {
    v20 = 0;
  }

  *(v6 + 40) = v20;
  v21 = *(a3 + 48);
  if (v21)
  {
    v22 = sub_1818C7FEC(a1, v21, 0, 0);
  }

  else
  {
    v22 = 0;
  }

  *(v6 + 48) = v22;
  *(v6 + 112) = a2;
  *(v6 + 35) = *(a3 + 35);
  return v6;
}

uint64_t sub_18195CA24(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 172 && (a2[7] & 1) != 0)
  {
    sub_18195CA70(*(a1 + 40), *(a2 + 9));
  }

  return 0;
}

uint64_t sub_18195CA70(uint64_t result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v5 = (result + 112);
  v4 = *(result + 112);
  if (!v4)
  {
    a2[8] = 0;
LABEL_17:
    *v5 = a2;
    a2[7] = v5;
    return result;
  }

  result = sub_18195986C(0, v4, a2, 0);
  if (!result)
  {
    v11 = *v5;
    a2[8] = *v5;
    if (v11)
    {
      *(v11 + 56) = a2 + 8;
    }

    goto LABEL_17;
  }

  v6 = a2[2];
  v7 = *(*v5 + 16);
  if (!(v6 | v7))
  {
    return result;
  }

  if (v6 && v7 && *v6 == *v7)
  {
    if (*v6 < 1)
    {
      return result;
    }

    v8 = 0;
    v9 = (v7 + 24);
    for (i = (v6 + 24); *i == *v9; i += 3)
    {
      result = sub_181959260(0, *(i - 2), *(v9 - 2), 0xFFFFFFFFLL);
      if (result)
      {
        break;
      }

      ++v8;
      v9 += 3;
      if (v8 >= *v6)
      {
        return result;
      }
    }
  }

  *(v3 + 4) |= 0x2000000u;
  return result;
}

_DWORD *sub_18195CB84(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 72);
  v7 = 10 - v6;
  v8 = *a1;
  v9 = *(a1 + 80);
  v10 = 4 * (10 - v6);
  if (v9)
  {
    if (*(v8 + 512) > v9)
    {
      if (*(v8 + 496) <= v9)
      {
        if (v10 < 0x81)
        {
LABEL_6:
          result = *(a1 + 80);
          goto LABEL_12;
        }
      }

      else if (*(v8 + 504) <= v9 && v10 <= *(v8 + 438))
      {
        goto LABEL_6;
      }
    }

    result = sub_181929F38(*a1, v9, v10, 0x100004052888210);
    if (result)
    {
LABEL_12:
      *(a1 + 80) = result;
      if (v6 > -90)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    result = sub_181929C84(v8, v9);
    *(a1 + 80) = 0;
  }

  else
  {
    result = sub_181929E8C(*a1, 4 * v7, 0x100004052888210);
    *(a1 + 80) = result;
    if (result)
    {
      if (v6 > -90)
      {
        goto LABEL_22;
      }

LABEL_13:
      if ((v7 / 0x64u) <= *(a1 + 76) / 100)
      {
        goto LABEL_22;
      }

      v12 = *a1;
      if (*(*a1 + 424))
      {
        ++*(a1 + 52);
        *(a1 + 24) = 9;
      }

      v13 = *(v12 + 544);
      if (!v13)
      {
        goto LABEL_22;
      }

      if (*(a1 + 24) == 9)
      {
        goto LABEL_21;
      }

      v14 = *(a1 + 128) + 1;
      *(a1 + 128) = v14;
      if (v14 >= *(v12 + 560))
      {
        if (v13(*(v12 + 552)))
        {
          ++*(a1 + 52);
          *(a1 + 24) = 9;
        }

LABEL_21:
        *(a1 + 128) = 0;
        result = *(a1 + 80);
      }

LABEL_22:
      *(a1 + 76) = v7;
      result[a3] = *(a2 + 144);
      return result;
    }
  }

  *(a1 + 76) = 0;
  return result;
}

uint64_t *sub_18195CD44(uint64_t *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = result;
  if ((*(result + 43) & 4) != 0)
  {
    v9 = 0x200000000;
    v10 = 0;
    v8[0] = result;
    v8[1] = sub_1818C7E14;
    v8[2] = sub_18195A49C;
    v8[3] = 0;
    if (!a2)
    {
      return sub_181957F4C(v4, a2, a3);
    }

    v7 = a2;
    sub_181959BA0(v8, a2);
    a2 = v7;
    if (WORD2(v9))
    {
      return sub_181957F4C(v4, a2, a3);
    }

    v5 = *v4;
LABEL_9:
    result = sub_1818C7FEC(v5, a2, 0, 0);
    v6 = result;
    if (*(v5 + 103))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *result;
  if (a2)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (*(v5 + 103))
  {
    goto LABEL_11;
  }

LABEL_10:
  result = sub_181956EF4(v4, v6, a3);
LABEL_11:
  if (v6)
  {
    return sub_1819439E0(v5, v6);
  }

  return result;
}

unsigned __int8 **sub_18195CE30(unsigned __int8 **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((v2 - 43) <= 1)
  {
    v4 = sub_18195CE30(a1[3]);
    v5 = sub_18195CE30(a1[2]);
    v6 = *(v5 + 4);
    if ((v6 & 0x10000001) == 0x10000000 || (v7 = *(v4 + 4), (v7 & 0x20000001) == 0x20000000))
    {
      if (v2 == 44)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      v9 = v7 & 0x10000001;
      v10 = (v6 & 0x20000001) == 0x20000000 || v9 == 0x10000000;
      v1 = a1;
      if (v10)
      {
        if (v2 == 44)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_18195CEF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 528);
  if (!v6 || *(v5 + 197) || *(a1 + 302))
  {
    return 0;
  }

  result = v6(*(v5 + 536), a2, a3, a4, a5, a1[46]);
  if (result == 1)
  {
    v9 = 23;
    sub_181910730(a1, "not authorized");
LABEL_10:
    *(a1 + 6) = v9;
    return 1;
  }

  if ((result & 0xFFFFFFFD) != 0)
  {
    v9 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_18195CF88(uint64_t a1, char *__s, _BYTE *a3, char *a4)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if ((v5 & 0x10000001) == 1)
  {
    return 0;
  }

  v6 = 0;
  if ((*(v4 + 198) & 2) != 0 || !byte_1ED452E89)
  {
    return v6;
  }

  if (*(v4 + 197))
  {
    v7 = *(v4 + 200);
    v8 = *v7;
    if (a3)
    {
      if (v8)
      {
        while (1)
        {
          if (*a3 == *v8)
          {
            if (!*a3)
            {
              goto LABEL_32;
            }
          }

          else if (byte_181A20298[*a3] != byte_181A20298[*v8])
          {
            break;
          }

          ++a3;
          ++v8;
        }
      }
    }

    else if (!v8)
    {
LABEL_32:
      v11 = *(v7 + 8);
      if (__s)
      {
        if (v11)
        {
          while (1)
          {
            if (*__s == *v11)
            {
              if (!*__s)
              {
                goto LABEL_41;
              }
            }

            else if (byte_181A20298[*__s] != byte_181A20298[*v11])
            {
              break;
            }

            ++__s;
            ++v11;
          }
        }
      }

      else if (!v11)
      {
LABEL_41:
        v12 = a1;
        v6 = sqlite3_stricmp(a4, *(v7 + 16));
        a1 = v12;
        if (!v6)
        {
          return v6;
        }
      }
    }

    sub_181910730(a1, &byte_181A2878D);
    return 1;
  }

  if (__s && !*(a1 + 30))
  {
    v9 = *__s;
    if (!*__s)
    {
      v10 = "sqlite_";
      goto LABEL_58;
    }

    if ((v9 & 0xFFFFFFDF) == 0x53)
    {
      v9 = __s[1];
      if (!__s[1])
      {
        v10 = "qlite_";
        goto LABEL_58;
      }

      if ((v9 & 0xFFFFFFDF) == 0x51)
      {
        v9 = __s[2];
        if (!__s[2])
        {
          v10 = "lite_";
          goto LABEL_58;
        }

        if ((v9 & 0xFFFFFFDF) == 0x4C)
        {
          v9 = __s[3];
          if (!__s[3])
          {
            v10 = "ite_";
            goto LABEL_58;
          }

          if ((v9 & 0xFFFFFFDF) == 0x49)
          {
            v9 = __s[4];
            if (!__s[4])
            {
              v10 = "te_";
              goto LABEL_58;
            }

            if ((v9 & 0xFFFFFFDF) == 0x54)
            {
              v9 = __s[5];
              if (!__s[5])
              {
                v10 = "e_";
                goto LABEL_58;
              }

              if ((v9 & 0xFFFFFFDF) == 0x45)
              {
                v9 = __s[6];
                if (!__s[6])
                {
                  v10 = "_";
LABEL_58:
                  if (v9 == byte_181A20298[*v10])
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_60;
                }

                if (v9 == 95)
                {
LABEL_59:
                  sub_181910730(a1, "object name reserved for internal use: %s");
                  return 1;
                }

                v9 += byte_181A20298;
                v10 = "_";
              }

              else
              {
                v9 += byte_181A20298;
                v10 = "e_";
              }
            }

            else
            {
              v9 += byte_181A20298;
              v10 = "te_";
            }
          }

          else
          {
            v9 += byte_181A20298;
            v10 = "ite_";
          }
        }

        else
        {
          v9 += byte_181A20298;
          v10 = "lite_";
        }
      }

      else
      {
        v9 += byte_181A20298;
        v10 = "qlite_";
      }
    }

    else
    {
      v9 += byte_181A20298;
      v10 = "sqlite_";
    }

    LODWORD(v9) = *v9;
    goto LABEL_58;
  }

LABEL_60:
  if ((v5 & 0x10000000) == 0 || *(v4 + 592) || *(v4 + 220))
  {
    return 0;
  }

  if (*(v4 + 564) < 1 || (v6 = *(v4 + 600)) != 0)
  {
    v14 = a1;
    v15 = __s;
    v16 = strrchr(__s, 95);
    if (v16)
    {
      *v16 = 0;
      v17 = v16;
      v18 = sub_181917F20(v4, v15, 0);
      *v17 = 95;
      if (v18)
      {
        if (*(v18 + 63) == 1)
        {
          v6 = sub_18195D6EC(v4, v18, v15);
          a1 = v14;
          if (!v6)
          {
            return v6;
          }

          goto LABEL_59;
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_18195D2F0(uint64_t a1)
{
  v1 = *(a1 + 60) + 1;
  *(a1 + 60) = v1;
  result = sub_1818E7DFC(a1);
  if (result)
  {
    v3 = *(result + 144);
    if (*(result + 148) <= v3)
    {
      v5 = result;
      sub_18194C8AC(result, 4, 0, v1, -1);
      result = v5;
    }

    else
    {
      *(result + 144) = v3 + 1;
      v4 = *(result + 136) + 40 * v3;
      *v4 = 4;
      *(v4 + 8) = v1;
      *(v4 + 12) = -1;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
    }

    *(result + 272) |= 1u;
    if (*(*(*(*result + 32) + 8) + 17))
    {
      *(result + 276) |= 1u;
    }
  }

  return result;
}

uint64_t sub_18195D3A8(uint64_t result, char a2, int a3)
{
  if (*(result + 152))
  {
    v3 = *(result + 152);
  }

  else
  {
    v3 = result;
  }

  v4 = *(v3 + 116);
  v5 = 1 << a3;
  if ((v4 & (1 << a3)) == 0)
  {
    *(v3 + 116) = v4 | v5;
    if (a3 == 1)
    {
      v6 = a2;
      result = sub_1819108F4(v3);
      a2 = v6;
    }
  }

  *(v3 + 112) |= v5;
  *(v3 + 32) |= a2;
  return result;
}

uint64_t sub_18195D424(uint64_t a1, int a2)
{
  result = sub_1818E7DFC(a1);
  if (a2 != 1)
  {
    if (*(*(*(*a1 + 32) + 32 * a2 + 8) + 17))
    {
      v5 = result;
      sub_1819570CC(a1, a2, 1, 1, "sqlite_master");
      result = v5;
    }
  }

  v6 = *(result + 144);
  if (*(result + 148) <= v6)
  {
    result = sub_18194CAFC(result, 113, 0, 1, a2, 5);
    if (*(a1 + 56))
    {
      return result;
    }
  }

  else
  {
    *(result + 144) = v6 + 1;
    v7 = *(result + 136) + 40 * v6;
    *v7 = 64881;
    *(v7 + 4) = 0x100000000;
    *(v7 + 12) = a2;
    *(v7 + 16) = 5;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    if (*(a1 + 56))
    {
      return result;
    }
  }

  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_18195D514(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 8);
  v5 = sub_181929E8C(a1, v3 + 1, 1565185748);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  memcpy(v5, v2, v3);
  *(v6 + v3) = 0;
  v7 = *v6;
  if (byte_181A204C8[*v6] < 0)
  {
    v8 = 0;
    if (v7 == 91)
    {
      v7 = 93;
    }

    for (i = 1; ; ++i)
    {
      v10 = i;
      v11 = *(v6 + i);
      if (v11 == v7)
      {
        ++i;
        LOBYTE(v11) = v7;
        if (*(v6 + v10 + 1) != v7)
        {
          break;
        }
      }

      *(v6 + v8++) = v11;
    }

    *(v6 + v8) = 0;
  }

  v12 = *(a1 + 40);
  v13 = (v12 - 1);
  if (v12 >= 1)
  {
    v14 = (*(a1 + 32) + 32 * v13);
    while (1)
    {
      v15 = *v14;
      if (*v14)
      {
        break;
      }

LABEL_21:
      if (!v13)
      {
        v18 = "main";
        for (j = v6; ; ++j)
        {
          if (*v18 == *j)
          {
            if (!*v18)
            {
              v13 = 0;
              goto LABEL_31;
            }
          }

          else if (byte_181A20298[*v18] != byte_181A20298[*j])
          {
            break;
          }

          ++v18;
        }
      }

      v14 -= 4;
      v17 = v13 <= 0;
      v13 = (v13 - 1);
      if (v17)
      {
        v13 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }
    }

    for (k = v6; ; ++k)
    {
      if (*v15 == *k)
      {
        if (!*v15)
        {
          break;
        }
      }

      else if (byte_181A20298[*v15] != byte_181A20298[*k])
      {
        goto LABEL_21;
      }

      ++v15;
    }
  }

LABEL_31:
  sub_181929C84(a1, v6);
  return v13;
}

uint64_t sub_18195D6EC(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a2 + 63) != 1)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *a2 ? strlen(*a2) & 0x3FFFFFFF : 0;
  if (sqlite3_strnicmp(a3, v6, v7))
  {
    return 0;
  }

  v8 = &a3[v7];
  if (*v8 != 95)
  {
    return 0;
  }

  v9 = sub_1819493D0((a1 + 568), **(a2 + 72));
  if (!v9)
  {
    return 0;
  }

  if (**v9 < 3)
  {
    return 0;
  }

  v10 = *(*v9 + 184);
  if (!v10)
  {
    return 0;
  }

  return v10(v8 + 1);
}

uint64_t sub_18195D7C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[2];
  if ((*(*a1 + 198) & 2) == 0)
  {
    v6 = *(a2 + 54);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(a2 + 8) + v7;
        if ((*(v9 + 14) & 1) != 0 && (*(v9 + 8) & 0xF) == 0)
        {
          *(v9 + 8) |= 2u;
          LOWORD(v6) = *(a2 + 54);
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < v6);
    }

    *(a2 + 48) |= 0x800u;
  }

  v10 = *(a1 + 62);
  if (v10)
  {
    if (*(*v5 + 103))
    {
      v11 = &byte_1EA831A58;
    }

    else
    {
      v11 = (v5[17] + 40 * v10);
    }

    *(v11 + 3) = 2;
  }

  v13 = a2 + 52;
  v12 = *(a2 + 52);
  if (v12 < 0)
  {
    for (i = *(a2 + 16); i; i = *(i + 40))
    {
      if ((*(i + 99) & 3) == 2)
      {
        break;
      }
    }

    v19 = *(i + 94);
    if (v19 < 2)
    {
      LOWORD(v22) = 1;
LABEL_39:
      *(i + 94) = v22;
      goto LABEL_40;
    }

    v20 = *(i + 8);
    v21 = 1;
    v22 = 1;
LABEL_24:
    if (v22 < 1)
    {
LABEL_22:
      *(*(i + 64) + 8 * v22) = *(*(i + 64) + 8 * v21);
      *(*(i + 56) + v22) = *(*(i + 56) + v21);
      v20 = *(i + 8);
      *(v20 + 2 * v22++) = *(v20 + 2 * v21);
      v19 = *(i + 94);
      goto LABEL_23;
    }

    v23 = 0;
    while (*(v20 + 2 * v23) != *(v20 + 2 * v21))
    {
LABEL_26:
      if (++v23 == v22)
      {
        goto LABEL_22;
      }
    }

    v24 = *(i + 64);
    v25 = *(v24 + 8 * v23);
    for (j = *(v24 + 8 * v21); ; ++j)
    {
      if (*v25 == *j)
      {
        if (!*v25)
        {
          --*(i + 96);
LABEL_23:
          if (++v21 >= v19)
          {
            goto LABEL_39;
          }

          goto LABEL_24;
        }
      }

      else if (byte_181A20298[*v25] != byte_181A20298[*j])
      {
        goto LABEL_26;
      }

      ++v25;
    }
  }

  v14 = *(a2 + 8);
  v15 = 16 * v12;
  v16 = *(v14 + v15);
  if (v16)
  {
    LODWORD(v17) = strlen(*(v14 + v15)) & 0x3FFFFFFF;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v27 = sub_181929E8C(v4, (v17 + 81), 0x1032040B79D87BDLL);
  v28 = v27;
  if (v27)
  {
    *(v27 + 3) = 0u;
    *(v27 + 4) = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 2) = 0u;
    *v27 = 0u;
    *v27 = 60;
    *(v27 + 26) = -1;
    v29 = v27 + 10;
    v27[1] = v27 + 10;
    if (v17)
    {
      v17 = v17;
      memcpy(v27 + 10, v16, v17);
    }

    else
    {
      v17 = 0;
    }

    *(v29 + v17) = 0;
    *(v28 + 10) = 1;
  }

  result = sub_18197FD9C(*a1, v28);
  if (!result)
  {
    goto LABEL_128;
  }

  if (*(a1 + 302) >= 2u)
  {
    v35 = a1[51];
    if (v35)
    {
      while (*v35 != v13)
      {
        v35 = v35[3];
        if (!v35)
        {
          goto LABEL_127;
        }
      }

      *v35 = *(result + 8);
    }
  }

LABEL_127:
  *(result + 24) = *(a1 + 300);
  *(a2 + 52) = -1;
  result = sub_1818C8730(a1, 0, 0, 0, result, *(a2 + 62), 0, 0, 0, 0, 2u);
  if (*(a1 + 13))
  {
LABEL_128:
    *(a2 + 48) &= ~0x80u;
    return result;
  }

  for (i = *(a2 + 16); i; i = *(i + 40))
  {
    if ((*(i + 99) & 3) == 2)
    {
      break;
    }
  }

LABEL_40:
  v30 = *(i + 99);
  *(i + 99) = v30 | 0x20;
  if ((*(v4 + 198) & 2) == 0)
  {
    *(i + 99) = v30 | 0x28;
  }

  v31 = *(i + 94);
  *(i + 96) = v31;
  if (v5)
  {
    v32 = *(i + 88);
    if (v32)
    {
      if (*(*v5 + 103))
      {
        v33 = &byte_1EA831A58;
      }

      else
      {
        v33 = (v5[17] + 40 * v32);
      }

      *v33 = 9;
    }
  }

  *(i + 88) = *(a2 + 40);
  for (k = *(a2 + 16); k; k = *(k + 40))
  {
    if ((*(k + 99) & 3) != 2)
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      v37 = 0;
      v38 = 0;
      do
      {
        if (*(k + 94))
        {
          v39 = 0;
          do
          {
            if (*(*(k + 8) + 2 * v39) == *(*(i + 8) + 2 * v37))
            {
              v40 = *(*(k + 64) + 8 * v39);
              for (m = *(*(i + 64) + 8 * v37); ; ++m)
              {
                if (*v40 == *m)
                {
                  if (!*v40)
                  {
                    goto LABEL_64;
                  }
                }

                else if (byte_181A20298[*v40] != byte_181A20298[*m])
                {
                  break;
                }

                ++v40;
              }
            }

            ++v39;
          }

          while (v39 != *(k + 94));
        }

        ++v38;
LABEL_64:
        ++v37;
      }

      while (v37 != v31);
      if (v38)
      {
        result = sub_18195EB28(a1, k, v38 + *(k + 94));
        if (result)
        {
          return result;
        }

        v42 = 0;
        v43 = *(k + 94);
        v44 = v43;
        while (1)
        {
          v45 = *(*(i + 8) + 2 * v42);
          v46 = *(k + 8);
          if (v43)
          {
            for (n = 0; n != v43; ++n)
            {
              if (*(v46 + 2 * n) == v45)
              {
                v48 = *(*(k + 64) + 8 * n);
                for (ii = *(*(i + 64) + 8 * v42); ; ++ii)
                {
                  if (*v48 == *ii)
                  {
                    if (!*v48)
                    {
                      goto LABEL_91;
                    }
                  }

                  else if (byte_181A20298[*v48] != byte_181A20298[*ii])
                  {
                    break;
                  }

                  ++v48;
                }
              }
            }
          }

          *(v46 + 2 * v44) = v45;
          *(*(k + 64) + 8 * v44) = *(*(i + 64) + 8 * v42);
          if (*(*(i + 56) + v42))
          {
            *(k + 99) |= 0x200u;
          }

          ++v44;
LABEL_91:
          if (++v42 == v31)
          {
            break;
          }

          v43 = *(k + 94);
        }
      }

      else
      {
LABEL_58:
        *(k + 96) = *(k + 94);
      }
    }
  }

  v50 = *(a2 + 54);
  if (v50 < 1)
  {
    v52 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(i + 8);
      v54 = v31;
      while (1)
      {
        v55 = __OFSUB__(v54--, 1);
        if (v54 < 0 != v55)
        {
          break;
        }

        v56 = *v53++;
        if (v51 == v56)
        {
          goto LABEL_97;
        }
      }

      if ((*(*(a2 + 8) + 16 * v51 + 14) & 0x20) == 0)
      {
        ++v52;
      }

LABEL_97:
      ++v51;
    }

    while (v51 != v50);
  }

  result = sub_18195EB28(a1, i, v52 + v31);
  if (!result)
  {
    v57 = *(a2 + 54);
    if (v57 >= 1)
    {
      v58 = 0;
      do
      {
        v59 = *(i + 8);
        v60 = v31;
        while (1)
        {
          v55 = __OFSUB__(v60--, 1);
          if (v60 < 0 != v55)
          {
            break;
          }

          v61 = *v59++;
          if (v58 == v61)
          {
            goto LABEL_106;
          }
        }

        if ((*(*(a2 + 8) + 16 * v58 + 14) & 0x20) == 0)
        {
          *(*(i + 8) + 2 * v31) = v58;
          *(*(i + 64) + 8 * v31) = "BINARY";
          LODWORD(v31) = v31 + 1;
          LOWORD(v57) = *(a2 + 54);
        }

LABEL_106:
        ++v58;
      }

      while (v58 < v57);
    }

    v62 = *(i + 96);
    if (*(i + 96))
    {
      v63 = 0;
      v64 = v62 + 1;
      v65 = (*(i + 8) + 2 * v62 - 2);
      do
      {
        v67 = *v65--;
        v66 = v67;
        if ((v67 & 0x8000000000000000) == 0 && v66 <= 0x3E && (*(*(*(i + 24) + 8) + 16 * v66 + 14) & 0x20) == 0)
        {
          v63 |= 1 << v66;
        }

        --v64;
      }

      while (v64 > 1);
      v69 = ~v63;
    }

    else
    {
      v69 = -1;
    }

    *(i + 104) = v69;
  }

  return result;
}

uint64_t sub_18195DE94(uint64_t a1, void *a2, int a3, uint64_t a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (a2)
  {
    LODWORD(v11) = 1;
    *(&v11 + 1) = *a2;
    *(&v12 + 1) = a2;
    DWORD1(v13) = -1;
    if (a2[12] != *(*(*a1 + 32) + 56))
    {
      a3 |= 0x40000u;
    }
  }

  v7[0] = a1;
  v7[1] = &v11;
  DWORD2(v9) = a3 | 0x10000;
  result = sub_18195ECC4(v7, a4);
  if (!result)
  {
    if (a5)
    {
      return sub_18195EDEC(v7, a5);
    }
  }

  return result;
}

uint64_t sub_18195DF70(uint64_t result)
{
  v1 = *(result + 96);
  if (!*(result + 96))
  {
    goto LABEL_18;
  }

  v2 = 0;
  v3 = *(result + 8);
  do
  {
    v6 = *v3++;
    v5 = v6;
    if (v6 < 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(*(*(result + 24) + 8) + 16 * v5 + 10);
    }

    v2 += v4;
    --v1;
  }

  while (v1);
  v7 = (4 * v2);
  if (v7 >= 8)
  {
    v9 = 40;
    if (v7 >= 0x100)
    {
      v10 = v7;
      do
      {
        v9 += 40;
        v7 = v10 >> 4;
        v11 = v10 > 0xFFF;
        v10 >>= 4;
      }

      while (v11);
    }

    if (v7 < 0x10)
    {
      LOBYTE(v8) = v7;
    }

    else
    {
      do
      {
        v9 += 10;
        v8 = v7 >> 1;
        v11 = v7 > 0x1F;
        v7 >>= 1;
      }

      while (v11);
    }

    goto LABEL_17;
  }

  if (v7)
  {
    LOBYTE(v8) = 2 * v7;
    v9 = 30;
LABEL_17:
    LOWORD(v1) = v9 + word_181A27AA2[v8 & 7] - 10;
LABEL_18:
    *(result + 92) = v1;
    return result;
  }

  *(result + 92) = 0;
  return result;
}

uint64_t sub_18195E03C(_DWORD *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(*a1 + 48);
  *(*a1 + 48) = v7 & 0xFFFFFFFFFFFFFFBBLL | 0x40;
  sub_18195FBC4(a1, a2, 0);
  *(v6 + 48) = v7;
  if (a1[13])
  {
    return 0;
  }

  do
  {
    v9 = v4;
    v4 = *(v4 + 80);
  }

  while (v4);
  if (v6)
  {
    result = sub_181929E8C(v6, 0x78uLL, 0x10B2040A26A9E65);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(120, 0x10B2040A26A9E65);
    if (!result)
    {
      return result;
    }
  }

  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 112) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 64) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 44) = 1;
  *result = 0;
  *(result + 58) = 200;
  v10 = result;
  sub_1819605E4(a1, *(v9 + 32), (result + 54), (result + 8));
  sub_181961164(a1, v10, v9, a3);
  result = v10;
  *(v10 + 52) = -1;
  if (*(v6 + 103))
  {
    if (*(v6 + 824) || (v13 = *(v10 + 44) - 1, (*(v10 + 44) = v13) == 0))
    {
      sub_18194E094(v6, v10, v11, v12);
    }

    return 0;
  }

  return result;
}

void sub_18195E17C(uint64_t *a1, uint64_t a2, int a3)
{
  if (*(a2 + 50))
  {
    if (a3)
    {
      v13 = *(a2 + 56);
      v14 = *(a1 + 36);
      if (*(a1 + 37) <= v14)
      {
        v23 = a2;
        sub_18194C8AC(a1, 95, a3, v13, 0);
        a2 = v23;
      }

      else
      {
        *(a1 + 36) = v14 + 1;
        v15 = a1[17] + 40 * v14;
        *v15 = 95;
        *(v15 + 4) = a3;
        *(v15 + 8) = v13;
        *(v15 + 12) = 0;
        *(v15 + 28) = 0;
        *(v15 + 20) = 0;
        *(v15 + 36) = 0;
      }

      if (!*(*a1 + 103))
      {
        v24 = a1[17] + 40 * *(a1 + 36);
        *(v24 - 39) = -5;
        *(v24 - 24) = a2;
      }
    }

    else
    {
      if (*(*a1 + 103) || (v16 = a1[17] + 40 * *(a1 + 36), *(v16 - 39) = -5, *(v16 - 24) = a2, *(*a1 + 103)))
      {
        v17 = *(a1 + 36);
        v18 = &byte_1EA831A58;
      }

      else
      {
        v17 = *(a1 + 36);
        v18 = (a1[17] + 40 * v17 - 40);
      }

      *v18 = 95;
      v19 = *(v18 + 1);
      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (*(a1 + 37) <= v17)
      {

        sub_18194C8AC(a1, 97, v19, v20, v21);
      }

      else
      {
        *(a1 + 36) = v17 + 1;
        v22 = a1[17] + 40 * v17;
        *v22 = 97;
        *(v22 + 4) = v19;
        *(v22 + 8) = v20;
        *(v22 + 12) = v21;
        *(v22 + 24) = 0;
        *(v22 + 32) = 0;
        *(v22 + 16) = 0;
      }
    }
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      v6 = a2;
      v7 = sub_181902484(*(a2 + 54) + 1, 0x100004077774924);
      if (!v7)
      {
        v26 = *a1;
        if (!*(v26 + 103) && !*(v26 + 104))
        {
          *(v26 + 103) = 1;
          if (*(v26 + 220) >= 1)
          {
            *(v26 + 424) = 1;
          }

          ++*(v26 + 432);
          *(v26 + 436) = 0;
          v27 = *(v26 + 344);
          if (v27)
          {
            sub_181910730(v27, "out of memory");
            for (i = *(v26 + 344); ; ++*(i + 52))
            {
              *(i + 24) = 7;
              i = *(i + 216);
              if (!i)
              {
                break;
              }
            }
          }
        }

        return;
      }

      v5 = v7;
      v8 = *(v6 + 54);
      if (v8 <= 0)
      {
        v25 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v6 + 8) + v9;
          if ((*(v12 + 14) & 0x20) == 0)
          {
            *(v7 + v11++) = *(v12 + 9);
            LOWORD(v8) = *(v6 + 54);
          }

          ++v10;
          v9 += 16;
        }

        while (v10 < v8);
        v25 = v11;
      }

      do
      {
        *(v7 + v25) = 0;
        if (v25 < 1)
        {
          break;
        }

        v29 = *(v7 + v25-- - 1);
      }

      while (v29 < 66);
      *(v6 + 24) = v7;
    }

    v30 = strlen(v5);
    v32 = v30 & 0x3FFFFFFF;
    if ((v30 & 0x3FFFFFFF) == 0)
    {
      return;
    }

    if (a3)
    {
      v33 = *(a1 + 36);
      if (*(a1 + 37) <= v33)
      {
        v33 = sub_18194C8AC(a1, 96, a3, v32, 0);
      }

      else
      {
        *(a1 + 36) = v33 + 1;
        v34 = a1[17] + 40 * v33;
        *v34 = 96;
        *(v34 + 4) = a3;
        *(v34 + 8) = v32;
        *(v34 + 12) = 0;
        *(v34 + 28) = 0;
        *(v34 + 20) = 0;
        *(v34 + 36) = 0;
      }

      if (*(*a1 + 103))
      {
        v35 = *a1;
        goto LABEL_46;
      }

      if (v33 < 0)
      {
        v33 = *(a1 + 36) - 1;
      }

      v36 = a1[17] + 40 * v33;
    }

    else
    {
      v35 = *a1;
      if (*(*a1 + 103))
      {
LABEL_46:

        sub_1818A3B68(v35, v32, v5, v31);
        return;
      }

      v36 = a1[17] + 40 * *(a1 + 36) - 40;
    }

    sub_18194CB90(a1, v36, v5, v32);
  }
}

char *sub_18195E53C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 54);
  if (v4 < 1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 8);
  do
  {
    v8 = 0;
    for (i = *v7; ; ++i)
    {
      if (*i == 34)
      {
        ++v8;
        goto LABEL_5;
      }

      if (!*i)
      {
        break;
      }

LABEL_5:
      ++v8;
    }

    v5 += v8 + 7;
    ++v6;
    v7 += 2;
  }

  while (v6 != v4);
LABEL_11:
  v10 = 0;
  for (j = *a2; ; ++j)
  {
    if (*j == 34)
    {
      ++v10;
      goto LABEL_13;
    }

    if (!*j)
    {
      break;
    }

LABEL_13:
    ++v10;
  }

  v12 = v5 + v10 + 2;
  if (v12 >= 50)
  {
    v13 = ",\n  ";
  }

  else
  {
    v13 = ",";
  }

  if (v12 >= 50)
  {
    v14 = "\n)";
  }

  else
  {
    v14 = ")";
  }

  v15 = sub_181902484(v12 + 6 * *(a2 + 54) + 35, 2015951396);
  if (v15)
  {
    v16 = v15;
    v33 = v14;
    qmemcpy(v15, "CREATE TABLE ", 13);
    v35 = 13;
    sub_181961D08(v15, &v35, *a2);
    v17 = v35 + 1;
    *(v16 + v35) = 40;
    v34 = v12;
    if (*(a2 + 54) >= 1)
    {
      v18 = *(a2 + 8);
      v19 = v12 >= 50 ? "\n  " : &byte_181A2878D;
      v20 = v12 >= 50 ? 3 : 0;
      memcpy((v16 + v17), v19, v20);
      v35 = v17 + v20;
      sub_181961D08(v16, &v35, *v18);
      v21 = strlen(*(&off_1E6A27A98 + *(v18 + 9) - 65)) & 0x3FFFFFFF;
      v22 = v35;
      memcpy((v16 + v35), *(&off_1E6A27A98 + *(v18 + 9) - 65), v21);
      LODWORD(v17) = v21 + v22;
      if (*(a2 + 54) >= 2)
      {
        if (v12 < 50)
        {
          v23 = 1;
        }

        else
        {
          v23 = 4;
        }

        v24 = (v18 + 25);
        v25 = 1;
        do
        {
          memcpy((v16 + v17), v13, v23);
          v35 = v17 + v23;
          sub_181961D08(v16, &v35, *(v24 - 9));
          v26 = strlen(*(&off_1E6A27A98 + *v24 - 65)) & 0x3FFFFFFF;
          v27 = v35;
          memcpy((v16 + v35), *(&off_1E6A27A98 + *v24 - 65), v26);
          LODWORD(v17) = v26 + v27;
          v35 = v26 + v27;
          ++v25;
          v24 += 16;
        }

        while (v25 < *(a2 + 54));
      }
    }

    if (v34 < 50)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    memcpy((v16 + v17), v33, v28);
  }

  else
  {
    if (*(a1 + 103) || *(a1 + 104))
    {
      return 0;
    }

    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v30 = *(a1 + 344);
    if (!v30)
    {
      return 0;
    }

    sub_181910730(v30, "out of memory");
    v31 = *(a1 + 344);
    *(v31 + 24) = 7;
    v32 = *(v31 + 216);
    if (!v32)
    {
      return 0;
    }

    else
    {
      v16 = 0;
      do
      {
        ++*(v32 + 52);
        *(v32 + 24) = 7;
        v32 = *(v32 + 216);
      }

      while (v32);
    }
  }

  return v16;
}

uint64_t sub_18195E878(uint64_t *a1, int a2)
{
  v2 = *a1;
  result = a1[2];
  v4 = **(*(v2 + 32) + 32 * a2 + 24) + 1;
  v5 = *(result + 144);
  if (*(result + 148) <= v5)
  {
    return sub_18194C8AC(result, 100, a2, 1, v4);
  }

  *(result + 144) = v5 + 1;
  v6 = *(result + 136) + 40 * v5;
  *v6 = 100;
  *(v6 + 4) = a2;
  *(v6 + 8) = 1;
  *(v6 + 12) = v4;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  return result;
}

uint64_t sub_18195E8E8(uint64_t a1, int a2, char *__s, __int16 a4)
{
  result = *(a1 + 144);
  if (*(a1 + 148) <= result)
  {
    result = sub_18194C8AC(a1, 149, a2, 0, 0);
  }

  else
  {
    *(a1 + 144) = result + 1;
    v8 = *(a1 + 136) + 40 * result;
    *v8 = 149;
    *(v8 + 4) = a2;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
  }

  if (*(*a1 + 103))
  {
    if (__s)
    {
      result = sub_181939EC8(*a1, __s);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(a1 + 144) - 1);
    }

    v9 = *(a1 + 136) + 40 * result;
    if (*(v9 + 1))
    {
      result = sub_18194CB90(a1, v9, __s, 4294967290);
    }

    else if (__s)
    {
      *(v9 + 16) = __s;
      *(v9 + 1) = -6;
    }
  }

  v10 = *(a1 + 144);
  if (v10 >= 1)
  {
    *(*(a1 + 136) + 40 * v10 - 38) = a4;
  }

  v11 = *a1;
  v12 = *(*a1 + 40);
  if (v12 >= 1)
  {
    v13 = *(a1 + 272);
    v14 = v13 | 1;
    if (*(*(*(v11 + 32) + 8) + 17))
    {
      *(a1 + 276) |= 1u;
    }

    if (v12 != 1)
    {
      v14 = v13 | 3;
      if (v12 != 2)
      {
        v16 = *(v11 + 32) + 72;
        for (i = 2; i != v12; ++i)
        {
          v18 = 1 << i;
          if (*(*v16 + 17))
          {
            *(a1 + 276) |= v18;
          }

          v14 |= v18;
          v16 += 32;
        }
      }
    }

    *(a1 + 272) = v14;
  }

  v15 = *(a1 + 24);
  if (*(v15 + 152))
  {
    v15 = *(v15 + 152);
  }

  *(v15 + 33) = 1;
  return result;
}

uint64_t sub_18195EA98(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (*(*(a1 + 8) + 2 * i) == *(*(a3 + 8) + 2 * a4))
      {
        v5 = *(*(a1 + 64) + 8 * i);
        for (j = *(*(a3 + 64) + 8 * a4); ; ++j)
        {
          if (*v5 == *j)
          {
            if (!*v5)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*v5] != byte_181A20298[*j])
          {
            break;
          }

          ++v5;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18195EB28(uint64_t *a1, uint64_t a2, int a3)
{
  if (*(a2 + 96) >= a3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = 13 * a3;
  if (v5)
  {
    v7 = sub_181929E8C(v5, 13 * a3, 796654986);
    if (v7)
    {
LABEL_4:
      v8 = v7;
      bzero(v7, v6);
      memcpy(v8, *(a2 + 64), 8 * *(a2 + 96));
      *(a2 + 64) = v8;
      v9 = &v8[8 * a3];
      memcpy(v9, *(a2 + 16), 2 * *(a2 + 94) + 2);
      *(a2 + 16) = v9;
      v10 = &v9[2 * a3];
      memcpy(v10, *(a2 + 8), 2 * *(a2 + 96));
      *(a2 + 8) = v10;
      v11 = &v10[2 * a3];
      memcpy(v11, *(a2 + 56), *(a2 + 96));
      result = 0;
      *(a2 + 56) = v11;
      *(a2 + 96) = a3;
      *(a2 + 99) |= 0x10u;
      return result;
    }
  }

  else
  {
    v7 = sub_181902484(13 * a3, 796654986);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  return 7;
}

uint64_t sub_18195EC48(uint64_t result)
{
  v1 = *(result + 96);
  if (*(result + 96))
  {
    v2 = 0;
    v3 = v1 + 1;
    v4 = (*(result + 8) + 2 * v1 - 2);
    do
    {
      v6 = *v4--;
      v5 = v6;
      if ((v6 & 0x8000000000000000) == 0 && v5 <= 0x3E && (*(*(*(result + 24) + 8) + 16 * v5 + 14) & 0x20) == 0)
      {
        v2 |= 1 << v5;
      }

      --v3;
    }

    while (v3 > 1);
    *(result + 104) = ~v2;
  }

  else
  {
    *(result + 104) = -1;
  }

  return result;
}

BOOL sub_18195ECC4(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 10);
  *(a1 + 10) = v2 & 0xF7FF6FEF;
  v3 = *a1;
  v13[0] = *a1;
  v13[1] = sub_1818B1AF8;
  if ((v2 & 0x80000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1818B15A0;
  }

  v13[2] = v4;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = a1;
  v5 = *(v3 + 308) + *(a2 + 40);
  *(v3 + 308) = v5;
  if (*(*v3 + 148) >= v5)
  {
    v7 = v2 & 0x8009010;
    sub_181959BA0(v13, a2);
    v10 = v13[0];
    *(v13[0] + 308) -= *(a2 + 40);
    v12 = *(a1 + 9);
    v11 = *(a1 + 10);
    *(a2 + 4) |= v11 & 0x8010;
    *(a1 + 10) = v11 | v7;
    return v12 > 0 || *(v10 + 52) > 0;
  }

  else
  {
    sub_181910730(v3, "Expression tree is too large (maximum depth %d)", *(*v3 + 148));
    return 1;
  }
}

uint64_t sub_18195EDEC(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a1;
  v14[0] = v4;
  v14[1] = sub_1818B1AF8;
  v14[2] = sub_1818B15A0;
  v14[3] = 0;
  v14[5] = a1;
  v5 = *(a1 + 40);
  v6 = v5 & 0x8009010;
  v7 = v5 & 0xF7FF6FEF;
  *(a1 + 40) = v7;
  v8 = *a2;
  if (*a2 < 1)
  {
LABEL_11:
    result = 0;
    *(a1 + 40) = v7 | v6;
    return result;
  }

  v9 = 0;
  v14[4] = 0;
  v10 = 2;
  while (1)
  {
    v11 = *&a2[v10];
    if (!v11)
    {
      goto LABEL_4;
    }

    v12 = v4[77] + *(v11 + 40);
    v4[77] = v12;
    if (*(*v4 + 148) < v12)
    {
      break;
    }

    sub_181959BA0(v14, v11);
    v4 = v14[0];
    *(v14[0] + 308) -= *(v11 + 40);
    v7 = *(a1 + 40);
    if ((v7 & 0x8009010) != 0)
    {
      *(v11 + 4) |= *(a1 + 40) & 0x8010;
      v6 |= v7 & 0x8009010;
      v7 &= 0xF7FF6FEF;
      *(a1 + 40) = v7;
    }

    if (v4[13] > 0)
    {
      return 1;
    }

    v8 = *a2;
LABEL_4:
    ++v9;
    v10 += 6;
    if (v9 >= v8)
    {
      goto LABEL_11;
    }
  }

  sub_181910730(v4, "Expression tree is too large (maximum depth %d)", *(*v4 + 148));
  return 1;
}

void sub_18195EF68(uint64_t *a1, uint64_t a2, const char *a3, _BYTE *a4, uint64_t a5)
{
  v8 = *(a2 + 40);
  v9 = "CHECK constraints";
  v10 = "generated columns";
  if ((v8 & 8) == 0)
  {
    v10 = "partial index WHERE clauses";
  }

  if ((v8 & 4) == 0)
  {
    v9 = v10;
  }

  if ((v8 & 0x20) != 0)
  {
    v11 = "index expressions";
  }

  else
  {
    v11 = v9;
  }

  sub_181910730(a1, "%s prohibited in %s", a3, v11);
  if (a4)
  {
    *a4 = 122;
  }

  if (a5)
  {
    while (1)
    {
      v12 = *(a5 + 4);
      if ((v12 & 3) == 0)
      {
        v13 = *(a5 + 56);
        if (v13 > 0)
        {
          break;
        }
      }

      a5 = *(a5 + 16);
      if (!a5)
      {
        return;
      }
    }

    if ((v12 & 0x40000000) == 0)
    {
      *(*a1 + 84) = v13;
    }
  }
}

unsigned int sub_18195F02C(unsigned __int8 *a1)
{
  v4 = -1.0;
  if (*a1 == 154 && ((v1 = *(a1 + 1)) == 0 ? (v2 = 0) : (v2 = strlen(*(a1 + 1)) & 0x3FFFFFFF), sub_1818E6334(v1, &v4, v2, 1), v4 <= 1.0))
  {
    return vcvtd_n_s64_f64(v4, 0x1BuLL);
  }

  else
  {
    return -1;
  }
}

void sub_18195F0AC(uint64_t *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v6 = a2;
  if (!*a3 || *(a3 + 32))
  {
    sub_1819567A4(a1, a3, a2);
    if (*(a3 + 32) != 90)
    {
      goto LABEL_25;
    }

LABEL_4:
    if (!a3[5] && !a3[6] || (v8 = a3[3]) != 0 && *v8 == 1)
    {
LABEL_25:
      if (*(a4 + 6))
      {
        if (!a3[9])
        {
          v16 = *a1;
          v17 = *(a4 + 56);
          if (v17 == "row_number")
          {
            v18 = &off_1E6A279B0;
          }

          else if (v17 == "dense_rank")
          {
            v18 = &off_1E6A279C8;
          }

          else if (v17 == "rank")
          {
            v18 = &off_1E6A279E0;
          }

          else if (v17 == "percent_rank")
          {
            v18 = &off_1E6A279F8;
          }

          else if (v17 == "cume_dist")
          {
            v18 = &off_1E6A27A10;
          }

          else if (v17 == "ntile")
          {
            v18 = &off_1E6A27A28;
          }

          else if (v17 == "lead")
          {
            v18 = &off_1E6A27A40;
          }

          else
          {
            if (v17 != "lag")
            {
              goto LABEL_28;
            }

            v18 = &off_1E6A27A58;
          }

          v20 = a3 + 5;
          v19 = a3[5];
          if (v19)
          {
            sub_1819439E0(v16, v19);
          }

          v21 = a3[6];
          if (v21)
          {
            sub_1819439E0(v16, v21);
          }

          *v20 = 0;
          a3[6] = 0;
          *(a3 + 32) = *(v18 + 2);
          v22 = *(v18 + 12);
          *(a3 + 33) = v22;
          *(a3 + 34) = *(v18 + 4);
          *(a3 + 36) = 0;
          if (v22 == 87)
          {
            v23[0] = "1";
            v23[1] = 1;
            *v20 = sub_1818A8CF0(v16, 156, v23, 0);
          }

          goto LABEL_28;
        }

        sub_181910730(a1, "FILTER clause may only be used with aggregate window functions");
      }
    }

    else
    {
      sub_181910730(a1, "RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression");
    }

LABEL_28:
    a3[10] = a4;
    return;
  }

  if (a2)
  {
LABEL_10:
    v9 = *v6;
    for (i = *a3; ; ++i)
    {
      if (*v9 == *i)
      {
        if (!*v9)
        {
          a3[2] = sub_1818C83A0(*a1, *(v6 + 16), 0);
          a3[3] = sub_1818C83A0(*a1, *(v6 + 24), 0);
          v11 = *(v6 + 40);
          if (v11)
          {
            v12 = sub_1818C7FEC(*a1, v11, 0, 0);
          }

          else
          {
            v12 = 0;
          }

          a3[5] = v12;
          v13 = *(v6 + 48);
          if (v13)
          {
            v14 = sub_1818C7FEC(*a1, v13, 0, 0);
          }

          else
          {
            v14 = 0;
          }

          a3[6] = v14;
          *(a3 + 33) = *(v6 + 33);
          v15 = *(v6 + 32);
          *(a3 + 32) = v15;
          *(a3 + 36) = *(v6 + 36);
          if (v15 == 90)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      else if (byte_181A20298[*v9] != byte_181A20298[*i])
      {
        v6 = *(v6 + 64);
        if (v6)
        {
          goto LABEL_10;
        }

        break;
      }

      ++v9;
    }
  }

  sub_181910730(a1, "no such window: %s", *a3);
}

uint64_t sub_18195F3C4(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4, _DWORD *a5)
{
  v6 = *(a1 + 17) & 3;
  if (v6 != 2)
  {
    result = 0;
    if (!a5 || v6 != 3)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
    do
    {
      if (v10 == 46)
      {
        break;
      }

      v10 = v9[++v8];
    }

    while (v9[v8]);
  }

  if (a4)
  {
    if (v8)
    {
      v11 = v8 + 1;
      v12 = a4;
      v13 = v9;
      while (1)
      {
        v14 = *v13;
        if (!*v13)
        {
          break;
        }

        LODWORD(v14) = byte_181A20298[v14];
        v15 = byte_181A20298[*v12];
        if (v14 != v15)
        {
          goto LABEL_15;
        }

        ++v13;
        ++v12;
        if (--v11 <= 1)
        {
          goto LABEL_16;
        }
      }

      v15 = byte_181A20298[*v12];
LABEL_15:
      if (v14 != v15)
      {
        return 0;
      }
    }

LABEL_16:
    if (a4[v8])
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = &v9[v8 + 1];
  while (v9[v16 + 1 + v8] && v9[v16 + 1 + v8] != 46)
  {
    ++v16;
  }

  if (a3)
  {
    if (!v16)
    {
      goto LABEL_30;
    }

    v18 = v16 + 1;
    v19 = a3;
    while (1)
    {
      v20 = *v17;
      if (!*v17)
      {
        break;
      }

      LODWORD(v20) = byte_181A20298[v20];
      v21 = byte_181A20298[*v19];
      if (v20 != v21)
      {
        goto LABEL_29;
      }

      ++v17;
      ++v19;
      if (--v18 <= 1)
      {
        goto LABEL_30;
      }
    }

    v21 = byte_181A20298[*v19];
LABEL_29:
    if (v20 == v21)
    {
LABEL_30:
      if (a3[v16])
      {
        return 0;
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_32:
  if (a2)
  {
    if (v6 != 2)
    {
      v22 = "_ROWID_";
      for (i = a2; ; ++i)
      {
        if (*i == *v22)
        {
          if (!*i)
          {
            goto LABEL_50;
          }
        }

        else if (byte_181A20298[*i] != byte_181A20298[*v22])
        {
          v24 = "ROWID";
          for (j = a2; ; ++j)
          {
            if (*j == *v24)
            {
              if (!*j)
              {
                goto LABEL_50;
              }
            }

            else if (byte_181A20298[*j] != byte_181A20298[*v24])
            {
              for (k = "OID"; ; ++k)
              {
                if (*a2 == *k)
                {
                  if (!*a2)
                  {
                    goto LABEL_50;
                  }
                }

                else if (byte_181A20298[*a2] != byte_181A20298[*k])
                {
                  return 0;
                }

                ++a2;
              }
            }

            ++v24;
          }
        }

        ++v22;
      }
    }

    v27 = &v9[v8 + 2 + v16];
    while (1)
    {
      v29 = *v27++;
      v28 = v29;
      if (v29 == *a2)
      {
        if (!v28)
        {
          return 1;
        }
      }

      else if (byte_181A20298[v28] != byte_181A20298[*a2])
      {
        return 0;
      }

      ++a2;
    }
  }

LABEL_50:
  result = 1;
  if (v6 == 3)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_18195F638(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *result;
  if (!*result)
  {
    v13 = 0;
    v12 = "sqlite_";
    goto LABEL_30;
  }

  if ((v4 & 0xFFFFFFDF) != 0x53)
  {
    v11 = &byte_181A20298[v4];
    v12 = "sqlite_";
    goto LABEL_29;
  }

  v5 = *(result + 1);
  if (!*(result + 1))
  {
    v13 = 0;
    v12 = "qlite_";
    goto LABEL_30;
  }

  if ((v5 & 0xFFFFFFDF) != 0x51)
  {
    v11 = &byte_181A20298[v5];
    v12 = "qlite_";
    goto LABEL_29;
  }

  v6 = *(result + 2);
  if (!*(result + 2))
  {
    v13 = 0;
    v12 = "lite_";
    goto LABEL_30;
  }

  if ((v6 & 0xFFFFFFDF) != 0x4C)
  {
    v11 = &byte_181A20298[v6];
    v12 = "lite_";
    goto LABEL_29;
  }

  v7 = *(result + 3);
  if (!*(result + 3))
  {
    v13 = 0;
    v12 = "ite_";
    goto LABEL_30;
  }

  if ((v7 & 0xFFFFFFDF) != 0x49)
  {
    v11 = &byte_181A20298[v7];
    v12 = "ite_";
    goto LABEL_29;
  }

  v8 = *(result + 4);
  if (!*(result + 4))
  {
    v13 = 0;
    v12 = "te_";
    goto LABEL_30;
  }

  if ((v8 & 0xFFFFFFDF) != 0x54)
  {
    v11 = &byte_181A20298[v8];
    v12 = "te_";
    goto LABEL_29;
  }

  v9 = *(result + 5);
  if (!*(result + 5))
  {
    v13 = 0;
    v12 = "e_";
    goto LABEL_30;
  }

  if ((v9 & 0xFFFFFFDF) != 0x45)
  {
    v11 = &byte_181A20298[v9];
    v12 = "e_";
    goto LABEL_29;
  }

  v10 = *(result + 6);
  if (!*(result + 6))
  {
    v13 = 0;
    v12 = "_";
LABEL_30:
    if (v13 != byte_181A20298[*v12])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v10 != 95)
  {
    v11 = &byte_181A20298[v10];
    v12 = "_";
LABEL_29:
    v13 = *v11;
    goto LABEL_30;
  }

LABEL_31:
  v15 = strcmp((*a2 + 7), "temp_master");
  v16 = (v3 + 7);
  if (v15)
  {
    for (i = "schema"; ; ++i)
    {
      if (*v16 == *i)
      {
        if (!*v16)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*v16] != byte_181A20298[*i])
      {
        return 0;
      }

      ++v16;
    }
  }

  v18 = "temp_schema";
  for (j = (v3 + 7); *j == *v18; ++j)
  {
    if (!*j)
    {
      return 1;
    }

LABEL_40:
    ++v18;
  }

  if (byte_181A20298[*j] == byte_181A20298[*v18])
  {
    goto LABEL_40;
  }

  if (a3)
  {
    v20 = "master";
    for (k = (v3 + 7); ; ++k)
    {
      if (*k == *v20)
      {
        if (!*k)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*k] != byte_181A20298[*v20])
      {
        for (m = "schema"; ; ++m)
        {
          if (*v16 == *m)
          {
            if (!*v16)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*v16] != byte_181A20298[*m])
          {
            return 0;
          }

          ++v16;
        }
      }

      ++v20;
    }
  }

  return 0;
}

void *sub_18195F910(uint64_t *a1, uint64_t a2, char *__s)
{
  if (__s)
  {
    v6 = strlen(__s) & 0x3FFFFFFF;
    if (v6)
    {
      v7 = sub_181929E8C(*a1, v6 + 81, 0x1032040B79D87BDLL);
      if (v7)
      {
        *(v7 + 3) = 0u;
        *(v7 + 4) = 0u;
        *(v7 + 1) = 0u;
        *(v7 + 2) = 0u;
        *v7 = 0u;
        *v7 = 114;
        *(v7 + 26) = -1;
        v8 = v7 + 10;
        v7[1] = v7 + 10;
        v9 = v7;
        memcpy(v7 + 10, __s, v6);
        *(v8 + v6) = 0;
        *(v9 + 10) = 1;
        v9[2] = a2;
        *(v9 + 1) |= 0x2200u;
        return v9;
      }
    }
  }

  return a2;
}

uint64_t sub_18195F9E0(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 169)
  {
    a2[2] += *(a1 + 40);
  }

  return 0;
}

uint64_t sub_18195FA04(uint64_t a1, unsigned __int8 *a2)
{
  if ((*a2 | 2) == 0xAA)
  {
    v2 = *(a1 + 40);
    v3 = v2[1];
    if (v3)
    {
      v4 = *v3;
      if (v4 >= 1)
      {
        v5 = (v3 + 9);
        while (1)
        {
          v6 = *v5;
          v5 += 18;
          if (*(a2 + 11) == v6)
          {
            break;
          }

          if (!--v4)
          {
            goto LABEL_7;
          }
        }

        v10 = 1;
        goto LABEL_13;
      }
    }

LABEL_7:
    v7 = v2[2];
    if (v7 < 1)
    {
LABEL_11:
      v10 = 2;
LABEL_13:
      *(a1 + 36) |= v10;
      return 0;
    }

    v8 = v2[3];
    while (1)
    {
      v9 = *v8++;
      if (v9 == *(a2 + 11))
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t sub_18195FA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(a1 + 40);
    v6 = v4[2];
    v5 = v4[3];
    v7 = v6 + v3;
    v4[2] = v7;
    v8 = *v4;
    v9 = 4 * v7;
    if (v5)
    {
      if (*(v8 + 512) > v5)
      {
        if (*(v8 + 496) <= v5)
        {
          if (v9 < 0x81)
          {
            goto LABEL_13;
          }
        }

        else if (*(v8 + 504) <= v5 && v9 <= *(v8 + 438))
        {
LABEL_13:
          v4[3] = v5;
          if (v3 >= 1)
          {
            v11 = 0;
            v12 = 9;
            do
            {
              *(v5 + v6 + v11++) = v2[v12];
              v12 += 18;
            }

            while (v11 < *v2);
          }

          return 0;
        }
      }

      v5 = sub_181929F38(v8, v5, v9, 0x100004052888210);
      if (v5)
      {
LABEL_12:
        v3 = *v2;
        goto LABEL_13;
      }
    }

    else
    {
      v5 = sub_181929E8C(v8, 4 * v7, 0x100004052888210);
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v4[2] = 0;
    return 2;
  }

  return 0;
}

uint64_t sub_18195FBA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = v3 - **(a2 + 40);
  }

  return result;
}

_BYTE *sub_18195FBC4(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (!*(*result + 103) && (*(a2 + 4) & 0x80) == 0)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = result;
    v7 = sub_181960300;
    v4 = result;
    if (result[34])
    {
      *&v8 = sub_181960308;
      sub_1818AEE70(&v6, a2);
    }

    *&v8 = sub_1818AEF70;
    *(&v8 + 1) = sub_181959F6C;
    WORD2(v9) = 0;
    result = sub_1818AEE70(&v6, a2);
    if (!*(v4 + 13))
    {
      v6 = v4;
      v7 = sub_1818B1AF8;
      *(&v8 + 1) = 0;
      *&v9 = 0;
      *&v8 = sub_1818B15A0;
      *(&v9 + 1) = a3;
      result = sub_1818AEE70(&v6, a2);
      if (!*(v4 + 13))
      {
        v9 = 0uLL;
        *&v8 = sub_181961BBC;
        *(&v8 + 1) = sub_1818B4688;
        v6 = v4;
        v7 = sub_181960300;
        return sub_1818AEE70(&v6, a2);
      }
    }
  }

  return result;
}

void sub_18195FD00(uint64_t *a1, _BYTE *a2)
{
  if ((a2[5] & 2) != 0)
  {

    sub_181910730(a1, "all VALUES must have the same number of terms");
  }

  else
  {
    if ((*a2 + 120) > 2u)
    {
      v3 = "UNION";
    }

    else
    {
      v3 = off_1E6A284D0[(*a2 + 120)];
    }

    sub_181910730(a1, "SELECTs to the left and right of %s do not have the same number of result columns", v3);
  }
}

uint64_t sub_18195FD7C(uint64_t a1, void *a2)
{
  v2 = a2[9];
  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = *a1;
  v5 = *v2;
  if (v5 > *(*a1 + 144))
  {
    sub_181910730(a1, "too many terms in ORDER BY clause");
    return 1;
  }

  if (v5 >= 1)
  {
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 & 0x7FFFFFFE;
      v8 = (v2 + 49);
      v9 = v7;
      do
      {
        v10 = *v8 & 0xFFFB;
        *(v8 - 12) &= ~4u;
        *v8 = v10;
        v8 += 24;
        v9 -= 2;
      }

      while (v9);
      if (v7 == v5)
      {
        goto LABEL_13;
      }
    }

    v11 = (&v2[6 * v7 + 6] + 1);
    v12 = v5 - v7;
    do
    {
      *v11 &= ~4u;
      v11 += 12;
      --v12;
    }

    while (v12);
  }

LABEL_13:
  a2[11] = 0;
  v13 = a2[10];
  if (v13)
  {
    do
    {
      v14 = v13;
      v13[11] = a2;
      v13 = v13[10];
      a2 = v14;
    }

    while (v13);
  }

  else
  {
    v14 = a2;
  }

  v56 = v4;
LABEL_22:
  if (v5 < 1)
  {
    return 0;
  }

  v58 = 0;
  v16 = 0;
  v59 = v14[4];
  v17 = v2 + 2;
  while (1)
  {
    v60 = -1;
    if ((*(v17 + 17) & 4) == 0)
    {
      v18 = *v17;
      if (*v17)
      {
        break;
      }
    }

LABEL_26:
    ++v16;
    v17 += 6;
    v5 = *v2;
    if (v16 >= v5)
    {
      v14 = v14[11];
      if (v14)
      {
        v15 = v58 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (v5 >= 1)
        {
          v51 = (v2 + 25);
          v52 = 1;
          result = 0;
          while (1)
          {
            v53 = *v51;
            v51 += 12;
            if ((v53 & 4) == 0)
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v5)
            {
              return result;
            }
          }

          sub_181910730(v3, "%r ORDER BY term does not match any column in the result set", v52);
          return 1;
        }

        return 0;
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v19 = *(v18 + 4);
    if ((v19 & 0x82000) == 0)
    {
      break;
    }

    if ((v19 & 0x80000) != 0)
    {
      v18 = *(*(v18 + 32) + 8);
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*v18 != 114)
      {
        break;
      }

      v18 = *(v18 + 16);
      if (!v18)
      {
        goto LABEL_26;
      }
    }
  }

  if (sub_18195A9F8(v18, &v60, 0))
  {
    v20 = v60;
    if (v60 >= 1 && v60 <= *v59)
    {
      goto LABEL_61;
    }

    sub_181910730(v3, "%r %s BY term out of range - should be between 1 and %d", (v16 + 1), "ORDER", *v59);
    while (1)
    {
      v49 = *(v18 + 4);
      if ((v49 & 3) == 0)
      {
        v50 = *(v18 + 56);
        if (v50 > 0)
        {
          break;
        }
      }

      v18 = *(v18 + 16);
      if (!v18)
      {
        return 1;
      }
    }

    if ((v49 & 0x40000000) == 0)
    {
      *(*v3 + 84) = v50;
    }

    return 1;
  }

  if (*v18 != 60 || (v22 = *v59, v22 < 1))
  {
LABEL_57:
    v28 = sub_1818C7FEC(v4, v18, 0, 0);
    v29 = v28;
    v20 = 0;
    if (*(v4 + 103))
    {
      if (!v28)
      {
LABEL_60:
        if (v20 >= 1)
        {
          goto LABEL_61;
        }

LABEL_56:
        v58 = 1;
        goto LABEL_26;
      }

LABEL_59:
      sub_1819439E0(v4, v29);
      goto LABEL_60;
    }

    v34 = v14[4];
    v65 = 0u;
    v64 = 0u;
    v35 = v14[5];
    v61 = v3;
    v62 = v35;
    v63 = v34;
    LODWORD(v65) = 524417;
    v36 = *v3;
    v37 = *(v36 + 107);
    *(v36 + 107) = 1;
    v38 = sub_18195ECC4(&v61, v28);
    *(v36 + 107) = v37;
    if (v38 || *v34 < 1)
    {
LABEL_67:
      v20 = 0;
      v60 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 2;
      while (sub_181959260(0, *&v34[v40], v29, 0xFFFFFFFFLL) >= 2)
      {
        ++v39;
        v40 += 6;
        if (v39 >= *v34)
        {
          goto LABEL_67;
        }
      }

      v20 = v39 + 1;
      v60 = v39 + 1;
      v3 = a1;
      if (*(a1 + 302) <= 1u)
      {
LABEL_69:
        v4 = v56;
        if (!v29)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v41 = v14[4];
      v65 = 0u;
      v64 = 0u;
      v42 = v14[5];
      v61 = a1;
      v62 = v42;
      v63 = v41;
      LODWORD(v65) = 524417;
      v43 = *a1;
      v54 = *(*a1 + 107);
      *(*a1 + 107) = 1;
      v44 = sub_18195ECC4(&v61, v18);
      *(v43 + 107) = v54;
      if (!v44)
      {
        v45 = v41;
        if (*v41 >= 1)
        {
          v46 = 0;
          v47 = 2;
          v55 = v45;
          do
          {
            v48 = sub_181959260(0, *&v45[v47], v18, 0xFFFFFFFFLL);
            v45 = v55;
            if (v48 < 2)
            {
              break;
            }

            ++v46;
            v47 += 6;
          }

          while (v46 < *v55);
        }
      }
    }

    v3 = a1;
    goto LABEL_69;
  }

  v23 = 0;
  v24 = *(v18 + 8);
  while (1)
  {
    v25 = &v59[6 * v23 + 2];
    if ((*(v25 + 17) & 3) == 0)
    {
      v26 = *(v25 + 8);
      if (v26)
      {
        if (v24)
        {
          for (i = *(v18 + 8); ; ++i)
          {
            if (*v26 == *i)
            {
              if (!*v26)
              {
                goto LABEL_55;
              }
            }

            else if (byte_181A20298[*v26] != byte_181A20298[*i])
            {
              goto LABEL_46;
            }

            ++v26;
          }
        }

        goto LABEL_46;
      }

      if (!v24)
      {
        break;
      }
    }

LABEL_46:
    if (++v23 == v22)
    {
      goto LABEL_57;
    }
  }

LABEL_55:
  v20 = v23 + 1;
  if (v23 + 1 < 1)
  {
    goto LABEL_56;
  }

LABEL_61:
  if (*(v3 + 302) > 1u)
  {
LABEL_25:
    *(v17 + 17) |= 4u;
    goto LABEL_26;
  }

  v61 = 0;
  v62 = 0;
  v30 = sub_1818A8CF0(v4, 156, &v61, 0);
  if (v30)
  {
    *(v30 + 1) |= 0x800u;
    *(v30 + 2) = v20;
    v31 = *v17;
    v32 = v17;
    if (*v17 != v18)
    {
      do
      {
        v33 = v31;
        v31 = *(v31 + 16);
      }

      while (*v31 == 114);
      v32 = (v33 + 16);
    }

    *v32 = v30;
    sub_1819439E0(v4, v18);
    *(v17 + 10) = v20;
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_181960308(uint64_t **a1, unsigned __int8 *a2)
{
  v2 = a2 + 80;
  if (*(a2 + 10))
  {
    v3 = *(a2 + 9);
    if (v3)
    {
      v4 = a2;
      while (1)
      {
        v5 = *v4;
        if (v5 != 139 && v5 != 136)
        {
          break;
        }

        v4 = *(v4 + 10);
        if (!v4)
        {
          return 0;
        }
      }

      if (!*(v3 + 14))
      {
        v7 = *v3 + 1;
        v8 = &v3[6 * *v3 - 4];
        do
        {
          if (--v7 < 1)
          {
            return 0;
          }

          v9 = *v8;
          v8 -= 6;
        }

        while ((*(v9 + 5) & 2) == 0);
        v11 = *a1;
        v12 = **a1;
        v13 = sub_18190C56C(v12, 0x80uLL, 0x102004058EEC421);
        if (v13)
        {
          v14 = v13;
          v26[0] = 0;
          v26[1] = 0;
          v15 = sub_1818A8FB4(v11, 0, 0, 0, v26, v13, 0);
          if (!*(v11 + 13))
          {
            v18 = *a2;
            v19 = *(a2 + 1);
            v20 = *(a2 + 3);
            v14[2] = *(a2 + 2);
            v14[3] = v20;
            *v14 = v18;
            v14[1] = v19;
            v21 = *(a2 + 4);
            v22 = *(a2 + 5);
            v23 = *(a2 + 7);
            v14[6] = *(a2 + 6);
            v14[7] = v23;
            v14[4] = v21;
            v14[5] = v22;
            *(a2 + 5) = v15;
            v27[0] = 0;
            v27[1] = 0;
            v24 = sub_1818A8CF0(v12, 180, v27, 0);
            v25 = sub_18197FD9C(*v11, v24);
            result = 0;
            *(a2 + 4) = v25;
            *a2 = -117;
            *(a2 + 6) = 0;
            *(v14 + 7) = 0;
            *(v14 + 8) = 0;
            *(v14 + 9) = 0;
            *(a2 + 13) = 0;
            *(a2 + 15) = 0;
            *v2 = 0;
            *(v2 + 1) = 0;
            *(a2 + 1) = *(a2 + 1) & 0xFFFEFEFF | 0x10000;
            *(*(v14 + 10) + 88) = v14;
            *(v14 + 12) = 0;
            return result;
          }

          sub_1818BB5B0(v12, v15, v16, v17);
        }

        return 2;
      }
    }
  }

  return 0;
}

uint64_t sub_1819604B0(char **a1, char a2, uint64_t a3)
{
  if (*(a3 + 27))
  {
    v4 = *(a3 + 64);
    v5 = *(*a1 + 4);
    if (v4)
    {
      v6 = (v5 + 24);
      v7 = 0xFFFFFFFF00000000;
      do
      {
        v8 = *v6;
        v6 += 4;
        v7 += 0x100000000;
      }

      while (v8 != v4);
      v9 = v7 >> 32;
    }

    else
    {
      v9 = -32768;
    }

    v3 = (v5 + 32 * v9);
  }

  else
  {
    v3 = (a3 + 64);
  }

  return sub_1818CA520(a1, a2, *a3, *v3);
}

uint64_t sub_181960508(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v7 = *(a2 + 27);
  if ((v7 & 1) == 0)
  {
    v8 = *(a2 + 64);
    if (v8)
    {
      v9 = a4;
      sub_181929C84(*a1, v8);
      a4 = v9;
      *(a2 + 64) = 0;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_1818CB220(*a1, a3, 0);
    a3 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  *(a2 + 64) = 0;
  *(a2 + 27) = v7 & 0xFE;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
  *(a2 + 64) = v11;
  if (v11)
  {
    *(a2 + 25) |= 4u;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = a3;
    return 1;
  }

  else
  {
    if (a3)
    {
      sub_1818BB408(*a1, a3, 1, v12);
    }

    return 0;
  }
}

void sub_1819605E4(_DWORD *a1, int *a2, _WORD *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *a1;
  __buf = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  if (!a2)
  {
    v10 = 0;
    *a3 = 0;
    *a4 = 0;
    v12 = a1 + 13;
    goto LABEL_108;
  }

  v9 = *a2;
  if (v7)
  {
    v10 = sub_181929E8C(v7, 16 * v9, 0x1010040FDD9F14CLL);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = sub_181902484(16 * v9, 0x1010040FDD9F14CLL);
  if (v10)
  {
LABEL_4:
    bzero(v10, 16 * v9);
  }

LABEL_5:
  if (v9 >= 0x7FFF)
  {
    v11 = 0x7FFFLL;
  }

  else
  {
    v11 = v9;
  }

  *v5 = v11;
  *v4 = v10;
  v12 = a1 + 13;
  if (v9 < 1)
  {
LABEL_108:
    v64 = 0;
    v65 = 0;
    v66 = 0;
    if (*v12)
    {
      goto LABEL_109;
    }

    return;
  }

  v59 = v4;
  v60 = v5;
  v13 = 0;
  v58 = v10;
  v62 = v11;
  while (!*v12)
  {
    v14 = &a2[6 * v13 + 2];
    v15 = *(v14 + 1);
    v63 = v14;
    if (!v15 || (*(v14 + 17) & 3) != 0)
    {
      v16 = *v14;
      while (1)
      {
        v17 = *(v16 + 1);
        if ((v17 & 0x82000) == 0)
        {
          break;
        }

        if ((v17 & 0x80000) != 0)
        {
          v16 = *(*(v16 + 4) + 8);
        }

        else
        {
          if (*v16 != 114)
          {
            break;
          }

          v16 = *(v16 + 2);
        }
      }

      while (1)
      {
        v18 = *v16;
        if (v18 != 142)
        {
          break;
        }

        v16 = *(v16 + 3);
      }

      if (v18 == 60)
      {
        v21 = (v16 + 8);
        goto LABEL_30;
      }

      if (v18 != 168)
      {
        goto LABEL_31;
      }

      if ((v16[7] & 3) != 0)
      {
        goto LABEL_31;
      }

      v19 = *(v16 + 9);
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = *(v16 + 12);
      if ((v20 & 0x80000000) == 0 || (v20 = *(v19 + 52), (v20 & 0x80000000) == 0))
      {
        v21 = (*(v19 + 8) + 16 * v20);
LABEL_30:
        v15 = *v21;
LABEL_31:
        if (!v15)
        {
LABEL_42:
          v24 = sub_1818A8BAC(v7, "column%d", v13 + 1);
          __buf = 0;
          v25 = v62;
          if (v24)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        goto LABEL_32;
      }

      v15 = "rowid";
    }

LABEL_32:
    for (i = 0; v15[i] == aTrue[i]; ++i)
    {
      if (!v15[i])
      {
        goto LABEL_42;
      }

LABEL_34:
      ;
    }

    if (byte_181A20298[v15[i]] == byte_181A20298[aTrue[i]])
    {
      goto LABEL_34;
    }

    for (j = 0; v15[j] == aFalse[j]; ++j)
    {
      if (!v15[j])
      {
        goto LABEL_42;
      }

LABEL_39:
      ;
    }

    if (byte_181A20298[v15[j]] == byte_181A20298[aFalse[j]])
    {
      goto LABEL_39;
    }

    v28 = strlen(v15);
    v61 = v28;
    if (v7)
    {
      v24 = sub_181929E8C(v7, v28 + 1, 354097263);
      if (v24)
      {
        goto LABEL_46;
      }

LABEL_105:
      __buf = 0;
      v25 = v62;
LABEL_43:
      v24 = 0;
      v26 = 0;
      *v10 = 0;
      LOBYTE(v27) = 1;
      goto LABEL_92;
    }

    v24 = sub_181902484(v28 + 1, 354097263);
    if (!v24)
    {
      goto LABEL_105;
    }

LABEL_46:
    memcpy(v24, v15, v61 + 1);
    __buf = 0;
    v25 = v62;
LABEL_48:
    v29 = *v24;
    if (!*v24)
    {
      v30 = 0;
      v33 = v66;
      if (!v66)
      {
        goto LABEL_55;
      }

LABEL_52:
      v34 = (v33 + 16 * (v30 % v64));
      v35 = *v34;
      if (!*v34)
      {
        goto LABEL_66;
      }

LABEL_56:
      v36 = v34 + 2;
      while (1)
      {
        v36 = *v36;
        if (v30 == v36[8])
        {
          break;
        }

LABEL_57:
        if (!--v35)
        {
          goto LABEL_66;
        }
      }

      v37 = *(v36 + 3);
      for (k = v24; ; ++k)
      {
        if (*v37 == *k)
        {
          if (!*v37)
          {
            v39 = *(v36 + 2);
            if (!v39)
            {
              goto LABEL_87;
            }

LABEL_67:
            if ((*(v39 + 17) & 0x80) != 0)
            {
              *(v10 + 7) |= 0x400u;
            }

            v40 = strlen(v24);
            v41 = v40 & 0x3FFFFFFF;
            if ((v40 & 0x3FFFFFFF) != 0)
            {
              v42 = v40 & 0x3FFFFFFF;
              while (v42-- > 1)
              {
                v44 = v24[v42];
                if ((v44 - 58) <= 0xFFFFFFFFFFFFFFF5)
                {
                  goto LABEL_74;
                }
              }

              LODWORD(v42) = 0;
              LODWORD(v44) = *v24;
LABEL_74:
              if (v44 == 58)
              {
                v41 = v42;
              }

              else
              {
                v41 = v41;
              }
            }

            v24 = sub_1818A8BAC(v7, "%.*z:%u", v41, v24, ++__buf);
            v45 = *a1;
            if (*(*a1 + 424))
            {
              ++a1[13];
              a1[6] = 9;
            }

            v46 = *(v45 + 544);
            if (v46)
            {
              if (a1[6] == 9)
              {
                goto LABEL_84;
              }

              v47 = a1[32] + 1;
              a1[32] = v47;
              if (v47 >= *(v45 + 560))
              {
                if (v46(*(v45 + 552)))
                {
                  ++a1[13];
                  a1[6] = 9;
                }

LABEL_84:
                a1[32] = 0;
              }
            }

            if (__buf >= 4)
            {
              sqlite3_initialize();
              arc4random_buf(&__buf, 4uLL);
            }

            if (!v24)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }
        }

        else if (byte_181A20298[*v37] != byte_181A20298[*k])
        {
          goto LABEL_57;
        }

        ++v37;
      }
    }

    v30 = 0;
    v31 = v24 + 1;
    do
    {
      v30 = -1640531535 * (v30 + (v29 & 0xDF));
      v32 = *v31++;
      v29 = v32;
    }

    while (v32);
    v33 = v66;
    if (v66)
    {
      goto LABEL_52;
    }

LABEL_55:
    v34 = &v64;
    v35 = HIDWORD(v64);
    if (HIDWORD(v64))
    {
      goto LABEL_56;
    }

LABEL_66:
    v39 = qword_1EA831A40;
    if (qword_1EA831A40)
    {
      goto LABEL_67;
    }

LABEL_87:
    *v10 = v24;
    v27 = *v24;
    if (*v24)
    {
      v26 = 0;
      v48 = 1;
      do
      {
        v26 += byte_181A20298[v27];
        v27 = v24[v48++];
      }

      while (v27);
    }

    else
    {
      v26 = 0;
    }

LABEL_92:
    *(v10 + 11) = v26;
    if (*(v63 + 18))
    {
      *(v10 + 7) |= 0x400u;
    }

    if ((v27 & 1) == 0 && sub_18188FAF0(&v64, v24, v63) == v63 && !*(v7 + 103) && !*(v7 + 104))
    {
      *(v7 + 103) = 1;
      if (*(v7 + 220) >= 1)
      {
        *(v7 + 424) = 1;
      }

      ++*(v7 + 432);
      *(v7 + 436) = 0;
      v49 = *(v7 + 344);
      if (v49)
      {
        sub_181910730(v49, "out of memory");
        for (m = *(v7 + 344); ; ++*(m + 52))
        {
          *(m + 24) = 7;
          m = *(m + 216);
          if (!m)
          {
            break;
          }
        }
      }
    }

    ++v13;
    v10 += 2;
    v12 = a1 + 13;
    if (v13 == v25)
    {
      goto LABEL_116;
    }
  }

  LODWORD(v62) = v13;
LABEL_116:
  v51 = v65;
  v52 = v66;
  v65 = 0;
  v10 = v58;
  if (v66)
  {
    v53 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_122;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v52);
    --qword_1ED456A90;
    off_1ED452EB0(v52);
    v52 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v53 = &xmmword_1ED452F28;
LABEL_122:
      (*v53)(v52);
    }
  }

  v66 = 0;
  LODWORD(v64) = 0;
  if (v51)
  {
    while (2)
    {
      v54 = *v51;
      v55 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_125;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v51);
      --qword_1ED456A90;
      off_1ED452EB0(v51);
      v51 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v55 = &xmmword_1ED452F28;
LABEL_125:
        (*v55)(v51);
      }

      v51 = v54;
      if (!v54)
      {
        break;
      }

      continue;
    }
  }

  HIDWORD(v64) = 0;
  v4 = v59;
  v5 = v60;
  if (*v12)
  {
    if (v62)
    {
      v56 = 0;
      do
      {
        v57 = v58[v56];
        if (v57)
        {
          sub_181929C84(v7, v57);
        }

        v56 += 2;
      }

      while (2 * v62 != v56);
    }

LABEL_109:
    if (v10)
    {
      sub_181929C84(v7, v10);
    }

    *v4 = 0;
    *v5 = 0;
  }
}