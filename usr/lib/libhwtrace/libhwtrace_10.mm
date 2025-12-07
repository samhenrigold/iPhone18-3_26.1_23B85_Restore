void sub_298B677C8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    (*(*a2 + 168))(a2, *(a3 + 56), 0);
    *(a3 + 16) = (*(*a2 + 80))(a2);
  }

  v7 = sub_298B604D4(a2[1], a2 + 74, *(*(a2[1] + 160) + 696), *(a3 + 56));
  (*(*a2 + 168))(a2, v7, 0);

  sub_298B65650(a2, a3, a4 ^ 1);
}

void *sub_298B678D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v15 = result;
    v16 = result[1];
    v17 = sub_298B44B48(a5, 0, v16, 0);
    v18 = sub_298B44B48(a4, 0, v16, 0);
    *(v16 + 264) += 32;
    v19 = *(v16 + 184);
    if (!v19 || ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) - v19 + 32 > *(v16 + 192) - v19)
    {
      v21 = *(v16 + 208) >> 7;
      if (v21 >= 0x1E)
      {
        LOBYTE(v21) = 30;
      }

      v22 = 4096 << v21;
      v24 = operator new(4096 << v21, 8uLL);
      v23 = *(v16 + 208);
      if (v23 >= *(v16 + 212))
      {
        v33 = v24;
        sub_298B90A44(v16 + 200, (v16 + 216), v23 + 1, 8);
        v24 = v33;
        LODWORD(v23) = *(v16 + 208);
      }

      *(*(v16 + 200) + 8 * v23) = v24;
      ++*(v16 + 208);
      *(v16 + 192) = v24 + v22;
    }

    else
    {
      v24 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v16 + 184) = v24 + 32;
    *v24 = 0;
    *(v24 + 1) = (*(v24 + 4) << 24) | 0x12;
    *(v24 + 8) = 0;
    *(v24 + 16) = v17;
    *(v24 + 24) = v18;
    v25 = *(v15 + 304);
    v48 = 0;
    v49 = 0;
    v51 = 0;
    v50 = 0;
    result = sub_298B44C70(v24, &v48, v25, 0, 0, 0, 0);
    v26 = result && v48 == 0;
    if (v26 && !v49)
    {
      if (a3)
      {
        v27 = 24 * a3;
        v28 = (a2 + 16);
        while (1)
        {
          v29 = *v28;
          v28 += 6;
          v30 = (1 << v29) & 0x1E0000400;
          if (v29 <= 0x20 && v30 != 0)
          {
            break;
          }

          v27 -= 24;
          if (!v27)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        if (4 * a3 - 4 != v50)
        {
          v32 = *(v15 + 8);
          v35 = 1283;
          v34[0] = "Incorrect size for ";
          v34[2] = a6;
          v34[3] = a7;
          v36[0] = v34;
          v36[2] = " ";
          v37 = 770;
          v38[0] = v36;
          v38[2] = a9;
          v38[3] = a10;
          v39 = 1282;
          v40[0] = v38;
          v40[2] = ": ";
          v41 = 770;
          v42[0] = v40;
          v42[2] = v50;
          v43 = 2306;
          v44[0] = v42;
          v44[2] = " bytes of instructions in range, but .seh directives corresponding to ";
          v45 = 770;
          v46[0] = v44;
          v46[2] = (4 * a3 - 4);
          v47 = 2306;
          v48 = v46;
          v50 = " bytes\n";
          v52 = 770;
          *(v32 + 2056) = 1;
          v53 = 0;
          v54[0] = &unk_2A1F1BDB8;
          v54[1] = &v53;
          v54[2] = &v48;
          v55 = v54;
          sub_298B2FFE4(v32, 0, v54);
          result = v55;
          if (v55 == v54)
          {
            return (*(*v55 + 32))(v55);
          }

          else if (v55)
          {
            return (*(*v55 + 40))(v55);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_298B67C58(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v23 = *a2;
  v24 = 0;
  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = *a1;
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((v4 >> 4) ^ (v4 >> 9));
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (v4 == *v9)
    {
LABEL_3:
      v11 = *(v6 + 16 * v8 + 8);
      return a1[3] + 16 * v11 + 8;
    }

    v18 = 0;
    v19 = 1;
    while (v10 != -4096)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v10 == -8192;
      }

      if (v20)
      {
        v18 = v9;
      }

      v21 = v8 + v19++;
      v8 = v21 & v7;
      v9 = (v6 + 16 * v8);
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v18)
    {
      v12 = v18;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_298B67D94(a1, &v23, &v23, v12);
  *v13 = v23;
  *(v13 + 2) = v24;
  v14 = *a2;
  v15 = *(a1 + 8);
  if (v15 >= *(a1 + 9))
  {
    v22 = v13;
    sub_298B90A44((a1 + 3), a1 + 5, v15 + 1, 16);
    v13 = v22;
    LODWORD(v15) = *(a1 + 8);
  }

  v16 = (a1[3] + 16 * v15);
  *v16 = v14;
  v16[1] = 0;
  v11 = *(a1 + 8);
  *(a1 + 8) = v11 + 1;
  *(v13 + 2) = v11;
  return a1[3] + 16 * v11 + 8;
}

void *sub_298B67D94(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B67F2C(a1, 2 * v5);
    v10 = *a3;
    v11 = *(v8 + 4) - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = (*v8 + 16 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 16 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B67F2C(a1, v5);
    v10 = *a3;
    v19 = *(v8 + 4) - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = (*v8 + 16 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++*(v8 + 2);
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 16 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++*(a1 + 2);
  if (v6 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

  return a4;
}

void *sub_298B67F2C(uint64_t *a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 4) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          *(v22 + 8) = *(v16 + 2);
          ++*(a1 + 2);
        }

        v16 += 2;
      }

      while (v16 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v17 = *(a1 + 4);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void *sub_298B68138(void **a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_298ADDDA0();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(72 * v2 + 0x20) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  MEMORY[0x29C2945E0](0, 8);
  v9 = *(a2 + 48);
  *(v7 + 48) = v9;
  if (v9)
  {
    v10 = operator new(16 * v9, 8uLL);
    *(72 * v2 + 0x20) = v10;
    *(72 * v2 + 0x28) = *(a2 + 40);
    memcpy(v10, *(a2 + 32), 16 * *(72 * v2 + 0x30));
    v11 = (v7 + 72);
    *(72 * v2 + 0x38) = 72 * v2 + 72;
    *(72 * v2 + 0x40) = 0;
    v12 = (v7 + 56);
    v13 = *(a2 + 64);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(72 * v2 + 0x20) = 0;
    *(72 * v2 + 0x28) = 0;
    v11 = (v7 + 72);
    *(72 * v2 + 0x38) = 72 * v2 + 72;
    *(72 * v2 + 0x40) = 0;
    v12 = (v7 + 56);
    v13 = *(a2 + 64);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (v7 != a2)
  {
    sub_298B90A44(v12, v11, v13, 16);
    v14 = *(a2 + 64);
    if (v14)
    {
      memcpy(*v12, *(a2 + 56), 16 * v14);
    }

    *(72 * v2 + 0x40) = v13;
  }

LABEL_18:
  v15 = *a1;
  v16 = a1[1];
  v17 = (v7 - (v16 - *a1));
  if (v16 != *a1)
  {
    v36 = (v7 - (v16 - *a1));
    v18 = 0;
    v19 = -8 * ((v16 - *a1) >> 3) + 72 * v2;
    do
    {
      v21 = &v15[v18];
      v22 = v19 + v18;
      v23 = *&v15[v18 + 16];
      *v22 = *&v15[v18];
      *(v22 + 16) = v23;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 32) = *&v15[v18 + 32];
      *(v21 + 4) = 0;
      *(v22 + 40) = *&v15[v18 + 40];
      *(v21 + 10) = 0;
      v24 = *(v19 + v18 + 44);
      *(v22 + 44) = *&v15[v18 + 44];
      *(v21 + 11) = v24;
      v25 = *(v19 + v18 + 48);
      *(v22 + 48) = *&v15[v18 + 48];
      *(v21 + 12) = v25;
      v26 = (v19 + v18 + 72);
      *(v19 + v18 + 56) = v26;
      *(v22 + 64) = 0;
      v27 = *&v15[v18 + 64];
      if (v27 && v22 != v21)
      {
        v28 = *(v21 + 7);
        v29 = &v15[v18];
        v30 = &v15[v18 + 72];
        if (v30 == v28)
        {
          sub_298B90A44(v19 + v18 + 56, v26, *&v15[v18 + 64], 16);
          v31 = *(v21 + 16);
          if (v31)
          {
            memcpy(*(v19 + v18 + 56), *(v21 + 7), 16 * v31);
          }

          *(v22 + 64) = v27;
        }

        else
        {
          *(v22 + 56) = v28;
          v20 = *(v29 + 17);
          *(v22 + 64) = v27;
          *(v22 + 68) = v20;
          *(v21 + 7) = v30;
          *(v29 + 17) = 0;
        }

        *(v21 + 16) = 0;
      }

      v18 += 72;
    }

    while (&v15[v18] != v16);
    v32 = v15 + 72;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      MEMORY[0x29C2945E0](*(v32 - 5), 8);
      v33 = v32 == v16;
      v32 += 72;
    }

    while (!v33);
    v15 = *a1;
    v17 = v36;
  }

  *a1 = v17;
  a1[1] = v11;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11;
}

uint64_t sub_298B68478(uint64_t a1, unsigned int *a2)
{
  v2 = a2[4];
  switch(v2)
  {
    case 2u:
      v12 = (a2[2] >> 4) & 0x1F;
      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      __break(1u);
      JUMPOUT(0x298B68B30);
    case 0xAu:
      v12 = 233;
      break;
    case 0xBu:
      v21 = a2[2];
      (*(*a1 + 520))(a1, (v21 >> 12) & 7 | 0xC0, 1);
      v12 = (v21 >> 4);
      break;
    case 0xCu:
      v12 = (*(a2 + 8) >> 3) | 0x20u;
      break;
    case 0xDu:
      v12 = ((a2[2] - 1) >> 3) & 0x3F | 0x80;
      break;
    case 0xEu:
      v12 = (a2[2] >> 3) & 0x3F | 0x40;
      break;
    case 0xFu:
      v27 = a2[3] + 237;
      v28 = 208;
      goto LABEL_35;
    case 0x10u:
      v17 = a2[3] + 237;
      v18 = a2;
      (*(*a1 + 520))(a1, (v17 >> 3) & 1 | 0xD4, 1);
      goto LABEL_22;
    case 0x11u:
      v27 = a2[3] + 237;
      v28 = 200;
LABEL_35:
      (*(*a1 + 520))(a1, v28 & 0xFFFFFFFC | (v27 >> 2) & 3, 1);
      v11 = (a2[2] >> 3) | (v27 << 6);
      goto LABEL_9;
    case 0x12u:
      v22 = a2[3] + 237;
      (*(*a1 + 520))(a1, (v22 >> 2) & 3 | 0xCC, 1);
      v11 = ((a2[2] >> 3) - 1) | (v22 << 6);
      goto LABEL_9;
    case 0x13u:
      v30 = a2[3] + 237;
      (*(*a1 + 520))(a1, (v30 >> 3) & 1 | 0xD6, 1);
      v12 = (a2[2] >> 3) | (32 * v30) & 0xC0;
      break;
    case 0x14u:
      v15 = a2[3];
      v16 = 220;
      goto LABEL_39;
    case 0x15u:
      v17 = a2[3];
      v18 = a2;
      (*(*a1 + 520))(a1, 222, 1);
LABEL_22:
      v11 = ((v18[2] >> 3) - 1) | (32 * v17);
      goto LABEL_9;
    case 0x16u:
      v15 = a2[3];
      v16 = 216;
LABEL_39:
      (*(*a1 + 520))(a1, v16 & 0xFFFFFFFFFFFFFFFELL | (v15 >> 2) & 1, 1);
      v11 = (a2[2] >> 3) | (v15 << 6);
      goto LABEL_9;
    case 0x17u:
      v19 = a2[3];
      (*(*a1 + 520))(a1, (v19 >> 2) & 1 | 0xDA, 1);
      v11 = ((a2[2] >> 3) - 1) | (v19 << 6);
      goto LABEL_9;
    case 0x18u:
      v12 = 225;
      break;
    case 0x19u:
      (*(*a1 + 520))(a1, 226, 1);
      v12 = (a2[2] >> 3);
      break;
    case 0x1Au:
      v12 = 227;
      break;
    case 0x1Bu:
      v12 = 228;
      break;
    case 0x1Cu:
      v12 = 230;
      break;
    case 0x1Du:
      v12 = 232;
      break;
    case 0x1Eu:
      v12 = 234;
      break;
    case 0x1Fu:
      v12 = 235;
      break;
    case 0x20u:
      v12 = 236;
      break;
    case 0x21u:
      v12 = 252;
      break;
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
      v4 = v2 - 34 > 5;
      v5 = a2[4] & 1;
      if (v2 - 34 >= 6)
      {
        v6 = ((v2 - 34) >> 1) - 3;
      }

      else
      {
        v6 = (v2 - 34) >> 1;
      }

      v7 = v2 - 40 < 0xFFFFFFF5;
      if ((v2 - 40 < 0xFFFFFFF5) | v2 & 1 | (v6 == 2))
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }

      v9 = (a2[2] >> v8) - v7;
      (*(*a1 + 520))(a1, 231, 1);
      (*(*a1 + 520))(a1, *(a2 + 12) | (v5 << 6) | (32 * v4), 1);
      LOBYTE(v11) = v9 | (v6 << 6);
LABEL_9:
      v12 = v11;
      break;
    default:
      (*(*a1 + 520))(a1, 224, 1);
      v25 = a2[2];
      (*(*a1 + 520))(a1, (v25 >> 20), 1);
      (*(*a1 + 520))(a1, (v25 >> 12), 1);
      v12 = (v25 >> 4);
      break;
  }

  v13 = *(*a1 + 520);

  return v13(a1, v12, 1);
}

uint64_t sub_298B68BE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v31 = *a2;
  v32 = 0;
  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = *a1;
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((v4 >> 4) ^ (v4 >> 9));
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (v4 == *v9)
    {
LABEL_3:
      v11 = *(v6 + 16 * v8 + 8);
      return a1[3] + 48 * v11 + 8;
    }

    v20 = 0;
    v21 = 1;
    while (v10 != -4096)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v10 == -8192;
      }

      if (v22)
      {
        v20 = v9;
      }

      v23 = v8 + v21++;
      v8 = v23 & v7;
      v9 = (v6 + 16 * v8);
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v20)
    {
      v12 = v20;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_298B67D94(a1, &v31, &v31, v12);
  *v13 = v31;
  v14 = a1[3];
  *(v13 + 2) = v32;
  v15 = *a2;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = v15;
  __p = 0;
  v16 = *(a1 + 8);
  v17 = &v25;
  if (v16 >= *(a1 + 9))
  {
    if (v14 <= &v25 && v14 + 48 * v16 > &v25)
    {
      v24 = &v25 - v14;
      sub_298B68FBC(a1 + 3, v16 + 1);
      v14 = a1[3];
      v17 = &v24[v14];
    }

    else
    {
      sub_298B68FBC(a1 + 3, v16 + 1);
      v14 = a1[3];
      v17 = &v25;
    }
  }

  v18 = v14 + 48 * *(a1 + 8);
  *v18 = *v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = *(v17 + 8);
  *(v18 + 24) = *(v17 + 3);
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v18 + 32) = *(v17 + 2);
  v11 = *(a1 + 8);
  *(a1 + 8) = v11 + 1;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
    v11 = *(a1 + 8) - 1;
  }

  *(v13 + 2) = v11;
  return a1[3] + 48 * v11 + 8;
}

uint64_t sub_298B68DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = *(a5 + 128);
  v6 = *(a5 + 136);
  v7 = (a5 + 144);
  v8 = a2 - a1;
  if (v5)
  {
    v9 = *(a5 + 112);
    v10 = v5 - 1;
    v11 = (v9 + 16 * v5);
    while (1)
    {
      v12 = *a3;
      LODWORD(v13) = ((*a3 >> 4) ^ (*a3 >> 9)) & v10;
      v14 = (v9 + 16 * v13);
      v15 = *v14;
      if (*v14 != *a3)
      {
        v26 = 1;
        while (v15 != -4096)
        {
          v27 = v13 + v26++;
          v13 = v27 & v10;
          v15 = *(v9 + 16 * v13);
          if (v15 == v12)
          {
            v14 = (v9 + 16 * v13);
            goto LABEL_6;
          }
        }

        v14 = v11;
      }

LABEL_6:
      v16 = (v14 + 1);
      if (v14 == v11)
      {
        v16 = v7;
      }

      v19 = (v6 + 48 * *v16 + 8);
      v18 = *v19;
      v17 = v19[1];
      if (v17 - *v19 == v8)
      {
        if (v17 == v18)
        {
          return v12;
        }

        v20 = 0;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
        v22 = 1;
        while (1)
        {
          v23 = 24 * v20;
          v24 = v18 + 24 * v20;
          v25 = a1 + v23;
          if (*(v24 + 8) != *(v25 + 8) || *(v24 + 16) != *(v25 + 16))
          {
            break;
          }

          v20 = v22++;
          if (v21 <= v20)
          {
            return v12;
          }
        }
      }

      if (++a3 == a4)
      {
        return 0;
      }
    }
  }

  v29 = v6 + 48 * *v7;
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  if (v31 - v30 != v8)
  {
    return 0;
  }

  if (v31 == v30)
  {
    return *a3;
  }

  v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  do
  {
    v33 = 0;
    v34 = 1;
    while (1)
    {
      v35 = 24 * v33;
      v36 = v30 + 24 * v33;
      v37 = a1 + v35;
      if (*(v36 + 8) != *(v37 + 8) || *(v36 + 16) != *(v37 + 16))
      {
        break;
      }

      v33 = v34++;
      if (v32 <= v33)
      {
        return *a3;
      }
    }

    v12 = 0;
    ++a3;
  }

  while (a3 != a4);
  return v12;
}

void sub_298B68FBC(char **a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 2);
  v4 = sub_298B90848(a1, a1 + 2, a2, 48, &v14);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = &v5[6 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 8) = *(v5 + 1);
      *(v8 + 3) = v5[3];
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = 0;
      *(v8 + 2) = *(v5 + 2);
      v8 += 48;
      v5 += 6;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = &v5[6 * v9 - 5];
      v11 = -48 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          *(v10 + 8) = v12;
          operator delete(v12);
        }

        v10 -= 48;
        v11 += 48;
      }

      while (v11);
      v5 = *a1;
    }
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v13;
}

void sub_298B690C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[12] = *MEMORY[0x29EDCA608];
  v6 = sub_298B4B8F0(a1, 0);
  v29 = v31;
  v30 = 0x400000000;
  v26 = v28;
  v27 = xmmword_298D1A100;
  (*(**(*(a1 + 304) + 16) + 32))(*(*(a1 + 304) + 16), a2, &v26, &v29, a3);
  if (v30)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v6 + 128);
    v10 = 24 * v30;
    do
    {
      v11 = v29;
      v12 = &v29[24 * v8];
      v13 = &v29[v7];
      *&v29[v7 + 8] += *(v6 + 72);
      v14 = *(v6 + 120);
      if (v9 >= *(v6 + 132))
      {
        v17 = v6 + 120;
        v18 = (v6 + 136);
        v19 = v9 + 1;
        if (v14 <= v13 && v14 + 24 * v9 > v13)
        {
          v21 = *(v6 + 120);
          v22 = v11;
          sub_298B90A44(v17, v18, v19, 24);
          v14 = *(v6 + 120);
          v12 = &v22[v14 + v7 - v21];
        }

        else
        {
          sub_298B90A44(v17, v18, v19, 24);
          v14 = *(v6 + 120);
        }
      }

      v15 = v14 + 24 * *(v6 + 128);
      v16 = *v12;
      *(v15 + 16) = *(v12 + 2);
      *v15 = v16;
      v9 = *(v6 + 128) + 1;
      *(v6 + 128) = v9;
      ++v8;
      v7 += 24;
    }

    while (v10 != v7);
  }

  *(v6 + 50) = 1;
  *(v6 + 56) = a3;
  v24 = v26;
  v23 = v27;
  v25 = *(v6 + 72);
  if (*(v6 + 80) < (v25 + v27))
  {
    sub_298B90C08(v6 + 64, (v6 + 88), v25 + v27, 1);
    v25 = *(v6 + 72);
  }

  if (v23)
  {
    memcpy((*(v6 + 64) + v25), v24, v23);
    v25 = *(v6 + 72);
  }

  *(v6 + 72) = v25 + v23;
  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t sub_298B69308(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 24), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 32), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 40), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  v5 = *(*(a1[1] + 160) + 24);
  v6 = *(*a1 + 168);

  return v6(a1, v5, 0);
}

uint64_t sub_298B69510(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  if ((v5 & 0x10) == 0)
  {
    v6 = *(a1 + 304);
    *(a2 + 8) = v5 | 0x10;
    v10 = a2;
    sub_298B250EC(v6 + 56, &v10);
  }

  result = 0;
  if (a3 > 25)
  {
    if (a3 == 28)
    {
      v8 = *(a2 + 8) & 0xFFFFF1FFFFFFFFFFLL;
      v9 = 0x800000000A0;
      goto LABEL_12;
    }

    if (a3 != 26)
    {
      return result;
    }

LABEL_9:
    v8 = *(a2 + 8) & 0xFFFFF1FFFFFFFFDFLL;
    v9 = 0x60000000020;
LABEL_12:
    *(a2 + 8) = v8 | v9;
    return 1;
  }

  if (a3 == 9)
  {
    *(a2 + 8) |= 0x20uLL;
    return 1;
  }

  if (a3 == 24)
  {
    goto LABEL_9;
  }

  return result;
}

void *sub_298B695FC(void *result, uint64_t a2)
{
  v3 = result;
  v10 = *MEMORY[0x29EDCA608];
  if (result[70])
  {
    v5 = "starting a new symbol definition without completing the previous one";
    v6 = 259;
    v4 = result[1];
    *(v4 + 2056) = 1;
    v7 = 0;
    v8[0] = &unk_2A1F1BDB8;
    v8[1] = &v7;
    v8[2] = &v5;
    v9 = v8;
    sub_298B2FFE4(v4, 0, v8);
    result = v9;
    if (v9 == v8)
    {
      result = (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      result = (*(*v9 + 40))();
    }
  }

  *(v3 + 560) = a2;
  return result;
}

void sub_298B69720(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = a1[70];
  if (v2)
  {
    if (a2 < 0x100)
    {
      v4 = *(v2 + 8);
      if ((v4 & 0x10) == 0)
      {
        v5 = a1[38];
        *(v2 + 8) = v4 | 0x10;
        v10[0] = v2;
        sub_298B250EC(v5 + 56, v10);
        v2 = a1[70];
        v4 = *(v2 + 8);
      }

      *(v2 + 8) = v4 & 0xFFFFFF00FFFFFFFFLL | (a2 << 32);
      return;
    }

    v12 = 0;
    v13[0] = "storage class value '";
    v14 = a2;
    v16 = 2563;
    v10[0] = v13;
    v10[2] = "' out of range";
    v11 = 770;
    v9 = a1[1];
    *(v9 + 2056) = 1;
    v17[0] = &unk_2A1F1BDB8;
    v17[1] = &v12;
    v17[2] = v10;
    v18 = v17;
    sub_298B2FFE4(v9, 0, v17);
    v8 = v18;
    if (v18 == v17)
    {
LABEL_10:
      (*(*v8 + 32))(v8);
      return;
    }
  }

  else
  {
    v10[0] = "storage class specified outside of symbol definition";
    v11 = 259;
    v7 = a1[1];
    v17[0] = 0;
    *(v7 + 2056) = 1;
    v13[0] = &unk_2A1F1BDB8;
    v13[1] = v17;
    v14 = v10;
    v15 = v13;
    sub_298B2FFE4(v7, 0, v13);
    v8 = v15;
    if (v15 == v13)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    (*(*v8 + 40))(v8);
  }
}

void sub_298B69904(void *a1, unsigned int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = a1[70];
  if (v2)
  {
    if (a2 < 0x10000)
    {
      v3 = *(v2 + 8);
      if ((v3 & 0x10) == 0)
      {
        v4 = a1[38];
        *(v2 + 8) = v3 | 0x10;
        v10[0] = v2;
        v6 = a2;
        sub_298B250EC(v4 + 56, v10);
        LOWORD(a2) = v6;
        v2 = a1[70];
      }

      *(v2 + 32) = a2;
      return;
    }

    v12 = 0;
    v13[0] = "type value '";
    v14 = a2;
    v16 = 2563;
    v10[0] = v13;
    v10[2] = "' out of range";
    v11 = 770;
    v9 = a1[1];
    *(v9 + 2056) = 1;
    v17[0] = &unk_2A1F1BDB8;
    v17[1] = &v12;
    v17[2] = v10;
    v18 = v17;
    sub_298B2FFE4(v9, 0, v17);
    v8 = v18;
    if (v18 == v17)
    {
LABEL_10:
      (*(*v8 + 32))(v8);
      return;
    }
  }

  else
  {
    v10[0] = "symbol type specified outside of a symbol definition";
    v11 = 259;
    v7 = a1[1];
    v17[0] = 0;
    *(v7 + 2056) = 1;
    v13[0] = &unk_2A1F1BDB8;
    v13[1] = v17;
    v14 = v10;
    v15 = v13;
    sub_298B2FFE4(v7, 0, v13);
    v8 = v15;
    if (v15 == v13)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    (*(*v8 + 40))(v8);
  }
}

void *sub_298B69AE0(void *result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (!result[70])
  {
    v3 = "ending symbol definition without starting one";
    v4 = 259;
    v2 = result[1];
    *(v2 + 2056) = 1;
    v5 = 0;
    v6[0] = &unk_2A1F1BDB8;
    v6[1] = &v5;
    v6[2] = &v3;
    v7 = v6;
    sub_298B2FFE4(v2, 0, v6);
    result = v7;
    if (v7 == v6)
    {
      result = (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      result = (*(*v7 + 40))();
    }
  }

  *(v1 + 560) = 0;
  return result;
}

void sub_298B69BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 48) == 37 && (*(a2 + 13) & 1) == 0)
  {
    v3 = *(*(v2 + 160) + 704);
    if ((*(v3 + 44) & 4) == 0)
    {
      v4 = *(a1 + 304);
      v5 = v3;
      sub_298AE7E30(v4 + 32, &v5);
      *(v3 + 44) |= 4u;
    }

    if (*(v3 + 24) <= 1u)
    {
      *(v3 + 24) = 2;
    }

    operator new();
  }
}

void sub_298B69D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = *(*(a1 + 144) + 32 * v2 - 32);
    if ((*(v3 + 44) & 4) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if ((MEMORY[0x2C] & 4) != 0)
    {
LABEL_4:
      if (*(v3 + 24) <= 1u)
      {
        *(v3 + 24) = 2;
      }

      operator new();
    }
  }

  v4 = *(a1 + 304);
  v5 = v3;
  sub_298AE7E30(v4 + 32, &v5);
  *(v3 + 44) |= 4u;
  goto LABEL_4;
}

void sub_298B69E28(uint64_t *a1, uint64_t a2)
{
  (*(*a1 + 56))(a1);
  v4 = sub_298B4B8F0(a1, 0);
  v5 = sub_298B44B48(a2, 0, a1[1], 0);
  v6 = *(v4 + 72);
  v16 = v5;
  v17 = v6;
  v18 = 19;
  v19 = 0;
  v7 = v4 + 120;
  v8 = *(v4 + 120);
  v9 = *(v4 + 128);
  v10 = &v16;
  if (v9 >= *(v4 + 132))
  {
    if (v8 <= &v16 && v8 + 24 * v9 > &v16)
    {
      v15 = &v16 - v8;
      sub_298B90A44(v7, (v4 + 136), v9 + 1, 24);
      v8 = *(v4 + 120);
      v10 = &v15[v8];
    }

    else
    {
      sub_298B90A44(v7, (v4 + 136), v9 + 1, 24);
      v8 = *(v4 + 120);
      v10 = &v16;
    }
  }

  v11 = v8 + 24 * *(v4 + 128);
  v12 = *v10;
  *(v11 + 16) = *(v10 + 2);
  *v11 = v12;
  ++*(v4 + 128);
  v13 = *(v4 + 72);
  v14 = v13 + 2;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (*(v4 + 80) < v14)
    {
      sub_298B90C08(v4 + 64, (v4 + 88), v14, 1);
      v13 = *(v4 + 72);
    }

    *(*(v4 + 64) + v13) = 0;
    v14 = *(v4 + 72) + 2;
  }

  *(v4 + 72) = v14;
}

void sub_298B69F9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = sub_298B4B8F0(a1, 0);
  v7 = sub_298B44B48(a2, 0, a1[1], 0);
  if (a3)
  {
    v8 = a1[1];
    *(v8 + 264) += 24;
    v9 = *(v8 + 184);
    if (v9)
    {
      v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 24 > *(v8 + 192) - v9;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = *(v8 + 208) >> 7;
      if (v11 >= 0x1E)
      {
        LOBYTE(v11) = 30;
      }

      v12 = 4096 << v11;
      v14 = operator new(4096 << v11, 8uLL);
      v13 = *(v8 + 208);
      if (v13 >= *(v8 + 212))
      {
        sub_298B90A44(v8 + 200, (v8 + 216), v13 + 1, 8);
        LODWORD(v13) = *(v8 + 208);
      }

      *(*(v8 + 200) + 8 * v13) = v14;
      ++*(v8 + 208);
      *(v8 + 192) = v14 + v12;
    }

    else
    {
      v14 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v8 + 184) = v14 + 24;
    *v14 = 1;
    *(v14 + 1) = *(v14 + 4) << 24;
    *(v14 + 8) = 0;
    *(v14 + 16) = a3;
    v15 = a1[1];
    *(v15 + 264) += 32;
    v16 = *(v15 + 184);
    if (v16 && ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) - v16 + 32 <= *(v15 + 192) - v16)
    {
      v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = *(v15 + 208) >> 7;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      v19 = 4096 << v18;
      v17 = operator new(4096 << v18, 8uLL);
      v20 = *(v15 + 208);
      if (v20 >= *(v15 + 212))
      {
        v29 = v17;
        sub_298B90A44(v15 + 200, (v15 + 216), v20 + 1, 8);
        v17 = v29;
        LODWORD(v20) = *(v15 + 208);
      }

      *(*(v15 + 200) + 8 * v20) = v17;
      ++*(v15 + 208);
      *(v15 + 192) = v17 + v19;
    }

    *(v15 + 184) = v17 + 32;
    *v17 = 0;
    *(v17 + 1) = *(v17 + 4) << 24;
    *(v17 + 8) = 0;
    *(v17 + 16) = v7;
    *(v17 + 24) = v14;
    v7 = v17;
  }

  v21 = *(v6 + 120);
  v22 = *(v6 + 72);
  v31 = v7;
  v32 = v22;
  v33 = 20;
  v34 = 0;
  v23 = *(v6 + 128);
  v24 = &v31;
  if (v23 >= *(v6 + 132))
  {
    if (v21 <= &v31 && v21 + 24 * v23 > &v31)
    {
      v30 = &v31 - v21;
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v30[v21];
    }

    else
    {
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v31;
    }
  }

  v25 = v21 + 24 * *(v6 + 128);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v6 + 128);
  v27 = *(v6 + 72);
  v28 = v27 + 4;
  if (v27 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (*(v6 + 80) < v28)
    {
      sub_298B90C08(v6 + 64, (v6 + 88), v28, 1);
      v27 = *(v6 + 72);
    }

    *(*(v6 + 64) + v27) = 0;
    v28 = *(v6 + 72) + 4;
  }

  *(v6 + 72) = v28;
}

void sub_298B6A2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = sub_298B4B8F0(a1, 0);
  v7 = sub_298B44B48(a2, 125, a1[1], 0);
  if (a3)
  {
    v8 = a1[1];
    *(v8 + 264) += 24;
    v9 = *(v8 + 184);
    if (v9)
    {
      v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 24 > *(v8 + 192) - v9;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = *(v8 + 208) >> 7;
      if (v11 >= 0x1E)
      {
        LOBYTE(v11) = 30;
      }

      v12 = 4096 << v11;
      v14 = operator new(4096 << v11, 8uLL);
      v13 = *(v8 + 208);
      if (v13 >= *(v8 + 212))
      {
        sub_298B90A44(v8 + 200, (v8 + 216), v13 + 1, 8);
        LODWORD(v13) = *(v8 + 208);
      }

      *(*(v8 + 200) + 8 * v13) = v14;
      ++*(v8 + 208);
      *(v8 + 192) = v14 + v12;
    }

    else
    {
      v14 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v8 + 184) = v14 + 24;
    *v14 = 1;
    *(v14 + 1) = *(v14 + 4) << 24;
    *(v14 + 8) = 0;
    *(v14 + 16) = a3;
    v15 = a1[1];
    *(v15 + 264) += 32;
    v16 = *(v15 + 184);
    if (v16 && ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) - v16 + 32 <= *(v15 + 192) - v16)
    {
      v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = *(v15 + 208) >> 7;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      v19 = 4096 << v18;
      v17 = operator new(4096 << v18, 8uLL);
      v20 = *(v15 + 208);
      if (v20 >= *(v15 + 212))
      {
        v29 = v17;
        sub_298B90A44(v15 + 200, (v15 + 216), v20 + 1, 8);
        v17 = v29;
        LODWORD(v20) = *(v15 + 208);
      }

      *(*(v15 + 200) + 8 * v20) = v17;
      ++*(v15 + 208);
      *(v15 + 192) = v17 + v19;
    }

    *(v15 + 184) = v17 + 32;
    *v17 = 0;
    *(v17 + 1) = *(v17 + 4) << 24;
    *(v17 + 8) = 0;
    *(v17 + 16) = v7;
    *(v17 + 24) = v14;
    v7 = v17;
  }

  v21 = *(v6 + 120);
  v22 = *(v6 + 72);
  v31 = v7;
  v32 = v22;
  v33 = 3;
  v34 = 0;
  v23 = *(v6 + 128);
  v24 = &v31;
  if (v23 >= *(v6 + 132))
  {
    if (v21 <= &v31 && v21 + 24 * v23 > &v31)
    {
      v30 = &v31 - v21;
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v30[v21];
    }

    else
    {
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v31;
    }
  }

  v25 = v21 + 24 * *(v6 + 128);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v6 + 128);
  v27 = *(v6 + 72);
  v28 = v27 + 4;
  if (v27 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (*(v6 + 80) < v28)
    {
      sub_298B90C08(v6 + 64, (v6 + 88), v28, 1);
      v27 = *(v6 + 72);
    }

    *(*(v6 + 64) + v27) = 0;
    v28 = *(v6 + 72) + 4;
  }

  *(v6 + 72) = v28;
}

void sub_298B6A614(_DWORD *a1, void *a2, unint64_t a3, int a4)
{
  v5 = a3;
  v48[16] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 1);
  if (*(v8 + 60) == 14)
  {
    v9 = *(v8 + 64);
    if (v9 == 19 || v9 == 0)
    {
      if (a4 >= 6uLL)
      {
        sub_298B868A8("alignment is limited to 32-bytes", 1);
      }

      if (1 << a4 > a3)
      {
        v5 = 1 << a4;
      }
    }
  }

  v11 = a2[1];
  if ((v11 & 0x10) == 0)
  {
    v12 = *(a1 + 38);
    a2[1] = v11 | 0x10;
    v46 = a2;
    sub_298B250EC(v12 + 56, &v46);
    v11 = a2[1];
  }

  a2[3] = v5;
  a2[1] = ((a4 << 15) + 0x8000) & 0xF8000 | 0x3020 | v11 & 0xFFFFFFFFFFF03FFFLL;
  if (*(v8 + 60) != 14 || ((v13 = *(v8 + 64)) != 0 ? (v14 = v13 == 19) : (v14 = 1), !v14))
  {
    if (a4)
    {
      v46 = v48;
      v47 = xmmword_298D1A050;
      v36 = 0;
      v40 = 0;
      v41 = 0;
      v43 = &v46;
      v42 = 0;
      v35 = &unk_2A1F1E0B8;
      v37 = 0;
      v38 = 0;
      __dst = 0;
      v15 = *(*(a1 + 1) + 160);
      sub_298B9BCEC(&v35, " -aligncomm:", 0xDuLL);
      v16 = __dst;
      if (a2[1])
      {
        v17 = *(a2 - 1);
        v20 = *v17;
        v18 = v17 + 2;
        v19 = v20;
        if (v20 <= v38 - __dst)
        {
          if (v19)
          {
            v21 = v19;
            memcpy(__dst, v18, v19);
            v16 = __dst + v21;
            __dst = __dst + v21;
          }
        }

        else
        {
          sub_298B9BCEC(&v35, v18, v19);
          v16 = __dst;
        }
      }

      if ((v38 - v16) > 1)
      {
        *v16 = 11298;
        __dst = __dst + 2;
      }

      else
      {
        sub_298B9BCEC(&v35, ",", 2uLL);
      }

      sub_298B8FC48(&v35, 32 - __clz((1 << a4) - 1), 0, 0, 0);
      v22 = *(a1 + 18);
      v23 = a1[38];
      if (v23)
      {
        v24 = v22 + 32 * v23;
        v25 = *(v24 - 32);
        v26 = *(v24 - 16);
        v27 = a1[38];
        v44 = v25;
        v45 = v26;
        v28 = &v44;
        if (v23 >= a1[39])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v27 = 0;
        v44 = 0u;
        v45 = 0u;
        v28 = &v44;
        if (!a1[39])
        {
LABEL_39:
          if (v22 <= &v44 && v22 + 32 * v27 > &v44)
          {
            v34 = &v44 - v22;
            sub_298B90A44((a1 + 36), a1 + 40, v27 + 1, 32);
            v22 = *(a1 + 18);
            v28 = &v34[v22];
          }

          else
          {
            sub_298B90A44((a1 + 36), a1 + 40, v27 + 1, 32);
            v22 = *(a1 + 18);
            v28 = &v44;
          }
        }
      }

      v29 = (v22 + 32 * a1[38]);
      v30 = *(v28 + 1);
      *v29 = *v28;
      v29[1] = v30;
      ++a1[38];
      (*(*a1 + 168))(a1, *(v15 + 680), 0);
      (*(*a1 + 496))(a1, v46, v47);
      v31 = a1[38];
      if (v31 >= 2)
      {
        v32 = *(a1 + 18) + 32 * v31;
        v33 = *(v32 - 64);
        if (v33 && (*(v32 - 32) != v33 || *(v32 - 24) != *(v32 - 56)))
        {
          (*(*a1 + 160))(a1);
          LODWORD(v31) = a1[38];
        }

        a1[38] = v31 - 1;
      }

      sub_298B9AE14(&v35);
      if (v46 != v48)
      {
        free(v46);
      }
    }
  }
}

void *sub_298B6AA28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = (a1 + 144);
  v8 = *(a1 + 144);
  v10 = *(a1 + 152);
  if (v10)
  {
    v11 = v8 + 32 * v10;
    v12 = *(v11 - 32);
    v13 = *(v11 - 16);
    v14 = *(a1 + 152);
    v23 = v12;
    v24 = v13;
    v15 = &v23;
    if (v10 < *(a1 + 156))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    v23 = 0u;
    v24 = 0u;
    v15 = &v23;
    if (*(a1 + 156))
    {
      goto LABEL_5;
    }
  }

  if (v8 <= &v23 && v8 + 32 * v14 > &v23)
  {
    v22 = &v23 - v8;
    sub_298B90A44(a1 + 144, (a1 + 160), v14 + 1, 32);
    v8 = *(a1 + 144);
    v15 = &v22[v8];
  }

  else
  {
    sub_298B90A44(a1 + 144, (a1 + 160), v14 + 1, 32);
    v8 = *(a1 + 144);
    v15 = &v23;
  }

LABEL_5:
  v16 = (v8 + 32 * *(a1 + 152));
  v17 = *(v15 + 1);
  *v16 = *v15;
  v16[1] = v17;
  ++*(a1 + 152);
  (*(*a1 + 168))(a1);
  (*(*a1 + 640))(a1, a4, 0, 1, 0);
  (*(*a1 + 192))(a1, a2, 0);
  *(a2 + 8) &= ~0x20uLL;
  result = sub_298B5B460(a1, a3);
  v19 = *(a1 + 152);
  if (v19 >= 2)
  {
    v20 = *v9 + 32 * v19;
    v21 = *(v20 - 64);
    if (v21 && (*(v20 - 32) != v21 || *(v20 - 24) != *(v20 - 56)))
    {
      result = (*(*a1 + 160))(a1);
      LODWORD(v19) = *(a1 + 152);
    }

    *(a1 + 152) = v19 - 1;
  }

  return result;
}

unint64_t sub_298B6AC84(uint64_t *a1, void *a2, uint64_t a3)
{
  (*(*a1 + 296))(a1, a2, 24);
  v6 = *(a3 + 8);
  if ((v6 & 0x10) == 0)
  {
    v7 = a1[38];
    *(a3 + 8) = v6 | 0x10;
    v10 = a3;
    sub_298B250EC(v7 + 56, &v10);
  }

  result = sub_298B44B48(a3, 29, a1[1], 0);
  a2[3] = result;
  v9 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v9;
  return result;
}

void sub_298B6AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a2 + 16) + 8) & 2) == 0 && (*(*(a3 + 16) + 8) & 2) == 0)
  {
    v4 = *(a1 + 304);
    *&v5 = a2;
    *(&v5 + 1) = a3;
    v6 = a4;
    sub_298B41A48(v4 + 2184, &v5);
  }
}

void sub_298B6AD94(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 2184);
  v4 = *(v2 + 2192);
  while (v3 != v4)
  {
    v5 = *(*v3 + 16);
    v6 = *(v5 + 8);
    if ((v6 & 0x10) == 0)
    {
      v7 = *(a1 + 304);
      *(v5 + 8) = v6 | 0x10;
      v11 = v5;
      sub_298B250EC(v7 + 56, &v11);
      *(v5 + 8) |= 0x20uLL;
    }

    v8 = *(v3[1] + 16);
    v9 = *(v8 + 8);
    if ((v9 & 0x10) == 0)
    {
      v10 = *(a1 + 304);
      *(v8 + 8) = v9 | 0x10;
      v11 = v8;
      sub_298B250EC(v10 + 56, &v11);
      *(v8 + 8) |= 0x20uLL;
    }

    v3 += 3;
  }

  sub_298B5187C(a1);
}

double sub_298B6AE68(uint64_t a1)
{
  *(a1 + 560) = 0;
  v2 = *(a1 + 304);
  if (v2)
  {
    sub_298B23F7C(v2);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  v3 = *(a1 + 368);
  if (!v3 && !*(a1 + 372))
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 376);
  if (v4 > 4 * v3 && v4 >= 0x41)
  {
    sub_298B313C4((a1 + 360));
LABEL_8:
    *(a1 + 392) = 0;
    v5 = a1;

    return sub_298B5A768(v5);
  }

  if (v4)
  {
    v7 = *(a1 + 360);
    v8 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v9 = v7;
    if (v8 <= 2)
    {
      goto LABEL_16;
    }

    v10 = v8 + 1;
    v9 = &v7->i64[v10 & 0x3FFFFFFFFFFFFFFCLL];
    v11 = v7 + 1;
    v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11[-1] = v12;
      *v11 = v12;
      v11 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_16:
      v14 = &v7->i64[v4];
      do
      {
        *v9++ = -4096;
      }

      while (v9 != v14);
    }
  }

  *(a1 + 368) = 0;
  *(a1 + 392) = 0;
  v5 = a1;

  return sub_298B5A768(v5);
}

uint64_t sub_298B6AF78(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a2[1];
  if ((v5 & 0x7000) != 0x2000)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *(a1 + 112);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      a2[1] = v5 | 8;
      v16 = a2;
      v9 = sub_298B45440(a2[3]);
      a2 = v16;
      *v16 = v9;
      v10 = *(a1 + 112);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v9 + 16);
    v18 = *(a1 + 96);
    v19 = v10 - 1;
    v20 = ((v17 >> 4) ^ (v17 >> 9)) & (v10 - 1);
    v21 = *(v18 + 16 * v20);
    if (v21 == v17)
    {
LABEL_23:
      v22 = *(v18 + 16 * v20 + 8);
LABEL_29:
      v33[0] = 0;
      sub_298B460F8(a3, a2, 1, v33);
      return v33[0] + v22;
    }

    v23 = 1;
    while (v21 != -4096)
    {
      v24 = v20 + v23++;
      v20 = v24 & v19;
      v21 = *(v18 + 16 * v20);
      if (v21 == v17)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  v6 = v5 | 8;
  a2[1] = v6;
  v7 = a2[3];
  if (*v7 == 1)
  {
    return *(v7 + 16);
  }

  v34 = 0;
  v35 = 0;
  v37 = 0;
  v36 = 0;
  v11 = a2;
  a2[1] = v6;
  if ((sub_298B44C70(v7, &v34, *a3, a3, 0, 0, 0) & 1) == 0)
  {
    v25 = sub_298B4119C(v11);
    v32 = 1283;
    v27 = "unable to evaluate offset for variable '";
    goto LABEL_35;
  }

  if (v34)
  {
    v12 = *(v34 + 16);
    if (!*v12)
    {
      if ((*(v12 + 8) & 0x7080) != 0x2000)
      {
LABEL_34:
        v25 = sub_298B4119C(v12);
        v32 = 1283;
        v27 = "unable to evaluate offset to undefined symbol '";
LABEL_35:
        v31[0] = v27;
        v31[2] = v25;
        v31[3] = v26;
        v29 = "'";
        v30 = 259;
        sub_298ADC860(v31, &v29, v33);
        sub_298B868DC(v33, 1);
      }

      *(v12 + 8) |= 8uLL;
      v13 = sub_298B45440(*(v12 + 24));
      *v12 = v13;
      if (!v13)
      {
        v28 = v34;
LABEL_33:
        v12 = *(v28 + 16);
        goto LABEL_34;
      }
    }
  }

  if (!v35)
  {
    goto LABEL_16;
  }

  v12 = *(v35 + 16);
  if (*v12)
  {
    goto LABEL_16;
  }

  if ((*(v12 + 8) & 0x7080) != 0x2000)
  {
    goto LABEL_34;
  }

  *(v12 + 8) |= 8uLL;
  v14 = sub_298B45440(*(v12 + 24));
  *v12 = v14;
  if (!v14)
  {
    v28 = v35;
    goto LABEL_33;
  }

LABEL_16:
  result = v36;
  if (v34)
  {
    v15 = v36;
    result = sub_298B6AF78(a1, *(v34 + 16), a3) + v15;
  }

  if (v35)
  {
    result += sub_298B6AF78(a1, *(v35 + 16), a3);
  }

  return result;
}

uint64_t *sub_298B6B230(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B6B3C8(a1, 2 * v5);
    v10 = *a3;
    v11 = *(v8 + 4) - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = &(*v8)[4 * v12];
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = &(*v8)[4 * v12];
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B6B3C8(a1, v5);
    v10 = *a3;
    v19 = *(v8 + 4) - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = &(*v8)[4 * v20];
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++*(v8 + 2);
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = &(*v8)[4 * v20];
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++*(a1 + 2);
  if (v6 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

  return a4;
}

char *sub_298B6B3C8(uint64_t **a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298B6B4E8(a1, v4, &v4[4 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
    v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 32;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_298D1A120)));
      if (v17.i8[0])
      {
        *(v16 - 4) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 64;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t sub_298B6B4E8(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v8 = *result;
LABEL_6:
      v11 = &v4[4 * v3];
      do
      {
        *v8 = -4096;
        v8 += 4;
      }

      while (v8 != v11);
      goto LABEL_8;
    }

    v6 = v5 + 1;
    v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFELL;
    v8 = &v4[4 * v7];
    v9 = v4 + 4;
    v10 = v7;
    do
    {
      *(v9 - 4) = -4096;
      *v9 = -4096;
      v9 += 8;
      v10 -= 2;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = *(result + 16) - 1;
      v14 = v13 & ((v12 >> 4) ^ (v12 >> 9));
      v15 = (*result + 32 * v14);
      v16 = *v15;
      if (v12 != *v15)
      {
        v17 = 0;
        v18 = 1;
        while (v16 != -4096)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 == -8192;
          }

          if (v19)
          {
            v17 = v15;
          }

          v20 = v14 + v18++;
          v14 = v20 & v13;
          v15 = (*result + 32 * v14);
          v16 = *v15;
          if (v12 == *v15)
          {
            goto LABEL_11;
          }
        }

        if (v17)
        {
          v15 = v17;
        }
      }

LABEL_11:
      *v15 = v12;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      *(v15 + 1) = *(a2 + 1);
      v15[3] = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

void sub_298B6B61C(uint64_t *a1, int a2)
{
  *(a1 + 37) = 1;
  if (a2)
  {
    if (*(a1 + 2))
    {
      operator new();
    }

    sub_298B6BBEC(0, 0, 0);
    v3 = *(a1 + 8);
    if (v3 <= 9)
    {
      a1[3] = qword_298D1A900[v3];
    }
  }

  v4 = *(a1 + 8);
  if (v4 > 9)
  {
    goto LABEL_15;
  }

  if (((1 << v4) & 0x214) != 0)
  {
    a1[3] = (a1[3] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v4 != 5 && v4 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (((1 << v4) & 0x28) != 0)
  {
LABEL_14:
    a1[3] = (a1[3] + 7) & 0xFFFFFFFFFFFFFFF8;
  }

LABEL_15:
  if ((v4 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_39;
  }

  v6 = sub_298B97604();
  v7 = sub_298B40118(" ", 1uLL, v6);
  *&v31 = " ";
  DWORD2(v31) = 1;
  HIDWORD(v31) = v7;
  v8 = *(a1 + 4);
  if (!v8)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  v12 = v7 & (v8 - 1);
  v13 = *a1 + 24 * v12;
  v14 = *(v13 + 12);
  if (v14 != v7)
  {
    goto LABEL_26;
  }

LABEL_18:
  v15 = *v13;
  if (*v13 == -2)
  {
    if (" " != -2)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  if (v15 == -1)
  {
    if (" " != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  if (*(v13 + 8) == 1 && *v15 == 32)
  {
    goto LABEL_38;
  }

LABEL_26:
  while (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_31;
    }

    v16 = *v13 == -2;
LABEL_32:
    if (v16 && v9 == 0)
    {
      v9 = v13;
    }

    v17 = v12 + v11++;
    v12 = v17 & v10;
    v13 = *a1 + 24 * (v17 & v10);
    v14 = *(v13 + 12);
    if (v14 == v7)
    {
      goto LABEL_18;
    }
  }

  if (*v13 != -1)
  {
LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v13;
  }

LABEL_37:
  v13 = sub_298B6C4DC(a1, &v31, &v31, v18);
  *v13 = v31;
  *(v13 + 16) = 0;
LABEL_38:
  *(v13 + 16) = 0;
  v4 = *(a1 + 8);
LABEL_39:
  if (v4)
  {
    return;
  }

  v19 = sub_298B97604();
  v20 = sub_298B40118("", 0, v19);
  *&v31 = "";
  DWORD2(v31) = 0;
  HIDWORD(v31) = v20;
  v21 = *(a1 + 4);
  if (!v21)
  {
    v30 = 0;
    goto LABEL_60;
  }

  v22 = 0;
  v23 = v21 - 1;
  v24 = 1;
  v25 = v20 & (v21 - 1);
  v26 = *a1 + 24 * v25;
  v27 = *(v26 + 12);
  if (v27 != v20)
  {
    goto LABEL_49;
  }

  while (2)
  {
    if (*v26 != -2)
    {
      if (*v26 == -1)
      {
        if ("" != -1)
        {
          goto LABEL_49;
        }
      }

      else if (*(v26 + 8))
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }

    if ("" == -2)
    {
      goto LABEL_61;
    }

LABEL_49:
    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_54;
      }

      v28 = *v26 == -2;
LABEL_55:
      if (v28 && v22 == 0)
      {
        v22 = v26;
      }

      v29 = v25 + v24++;
      v25 = v29 & v23;
      v26 = *a1 + 24 * (v29 & v23);
      v27 = *(v26 + 12);
      if (v27 == v20)
      {
        continue;
      }

      goto LABEL_49;
    }

    break;
  }

  if (*v26 != -1)
  {
LABEL_54:
    v28 = 0;
    goto LABEL_55;
  }

  if (v22)
  {
    v30 = v22;
  }

  else
  {
    v30 = v26;
  }

LABEL_60:
  v26 = sub_298B6C4DC(a1, &v31, &v31, v30);
  *v26 = v31;
  *(v26 + 16) = 0;
LABEL_61:
  *(v26 + 16) = 0;
}

uint64_t sub_298B6BBEC(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = a2;
    v4 = result;
    v5 = a3;
    while (1)
    {
      v6 = *(*v4 + 8);
      if (v5 >= v6)
      {
        v7 = -1;
      }

      else
      {
        v7 = *(**v4 + v6 + ~v5);
      }

      v8 = 0;
      v9 = v3;
      v10 = 1;
      do
      {
        while (1)
        {
          v12 = *(v4 + 8 * v10);
          v13 = *(v12 + 8);
          if (v5 < v13)
          {
            break;
          }

          if (v7 > -1)
          {
            goto LABEL_14;
          }

LABEL_8:
          if (++v10 >= v9)
          {
            goto LABEL_15;
          }
        }

        v14 = *(*v12 + v13 + ~v5);
        if (v7 < v14)
        {
          v11 = *(v4 + 8 * v8);
          *(v4 + 8 * v8++) = v12;
          *(v4 + 8 * v10) = v11;
          goto LABEL_8;
        }

        if (v14 >= v7)
        {
          goto LABEL_8;
        }

LABEL_14:
        --v9;
        v15 = *(v4 + 8 * v9);
        *(v4 + 8 * v9) = v12;
        *(v4 + 8 * v10) = v15;
      }

      while (v10 < v9);
LABEL_15:
      sub_298B6BBEC(v4, v8, v5);
      result = sub_298B6BBEC(v4 + 8 * v9, v3 - v9, v5);
      if (v7 != -1)
      {
        v3 = v9 - v8;
        v4 += 8 * v8;
        ++v5;
        if (v9 - v8 > 1)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_298B6BD18(uint64_t *a1, void *__s1, size_t __n)
{
  v3 = a1;
  *&v54 = __s1;
  *(&v54 + 1) = __n;
  v55 = 0;
  v4 = *(a1 + 4);
  if (!v4)
  {
    v24 = 0;
    v8 = __n;
    goto LABEL_20;
  }

  v5 = *a1;
  v6 = HIDWORD(__n);
  v7 = (v4 - 1);
  v8 = __n;
  if (__n)
  {
    if (__s1 == -2)
    {
      v9 = 0;
      v10 = 1;
      v11 = HIDWORD(__n) & v7;
      v12 = v5 + 24 * (HIDWORD(__n) & v7);
      v13 = *(v12 + 12);
      if (v13 != HIDWORD(__n))
      {
        goto LABEL_9;
      }

LABEL_5:
      v14 = *v12;
      if (*v12 == -1 || v14 != -2 && (*(v12 + 8) != __n || (__s1b = __s1, v15 = __n, v16 = v8, v17 = v8, v18 = v5, v19 = v7, v20 = v12, v50 = v11, v21 = memcmp(__s1, v14, v16), v11 = v50, v12 = v20, v7 = v19, v5 = v18, v8 = v17, __n = v15, __s1 = __s1b, v21)))
      {
LABEL_9:
        while (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_14;
          }

          v22 = *v12 == -2;
LABEL_15:
          if (v22 && v9 == 0)
          {
            v9 = v12;
          }

          v23 = v11 + v10++;
          v11 = v23 & v7;
          v12 = v5 + 24 * (v23 & v7);
          v13 = *(v12 + 12);
          if (v13 == v6)
          {
            goto LABEL_5;
          }
        }

        if (*v12 == -1)
        {
          goto LABEL_74;
        }

LABEL_14:
        v22 = 0;
        goto LABEL_15;
      }

      return *(v12 + 16);
    }

    v34 = v4 - 1;
    v35 = HIDWORD(__n);
    v36 = *a1;
    v51 = __n;
    __s1a = __s1;
    if (__s1 == -1)
    {
      v37 = 0;
      v38 = 1;
      for (i = HIDWORD(__n); ; i = v40 + v38++)
      {
        v40 = i & v34;
        v41 = v36 + 24 * (i & v34);
        v42 = *(v41 + 12);
        if (v42 == v35)
        {
          v43 = *v41;
          if (*v41 != -2 && (v43 == -1 || *(v41 + 8) == v51 && !memcmp(0xFFFFFFFFFFFFFFFFLL, v43, v8)))
          {
            goto LABEL_71;
          }
        }

        if (v42)
        {
          if (v42 == 1)
          {
            v44 = *v41 == -2;
            goto LABEL_54;
          }
        }

        else if (*v41 == -1)
        {
          goto LABEL_73;
        }

        v44 = 0;
LABEL_54:
        if (v44 && v37 == 0)
        {
          v37 = v36 + 24 * v40;
        }
      }
    }

    v37 = 0;
    v45 = 1;
    for (j = HIDWORD(__n); ; j = v47 + v45++)
    {
      v47 = j & v34;
      v41 = v36 + 24 * (j & v34);
      v48 = *(v41 + 12);
      if (v48 == v35 && *v41 <= 0xFFFFFFFFFFFFFFFDLL && *(v41 + 8) == v51 && !memcmp(__s1a, *v41, v8))
      {
LABEL_71:
        v12 = v41;
        return *(v12 + 16);
      }

      if (v48)
      {
        if (v48 == 1)
        {
          v49 = *v41 == -2;
          goto LABEL_68;
        }
      }

      else if (*v41 == -1)
      {
LABEL_73:
        v9 = v37;
        v12 = v41;
        v3 = a1;
        goto LABEL_74;
      }

      v49 = 0;
LABEL_68:
      if (v49 && v37 == 0)
      {
        v37 = v36 + 24 * v47;
      }
    }
  }

  v9 = 0;
  v28 = 1;
  v29 = HIDWORD(__n) & v7;
  v12 = v5 + 24 * (HIDWORD(__n) & v7);
  v30 = *(v12 + 12);
  if (v30 != HIDWORD(__n))
  {
    goto LABEL_31;
  }

LABEL_24:
  if (*v12 != -1)
  {
    if (*v12 == -2)
    {
      if (__s1 != -2)
      {
        goto LABEL_31;
      }
    }

    else if (*(v12 + 8))
    {
      goto LABEL_31;
    }

    return *(v12 + 16);
  }

  if (__s1 == -1)
  {
    return *(v12 + 16);
  }

LABEL_31:
  while (v30)
  {
    if (v30 != 1)
    {
      goto LABEL_36;
    }

    v31 = *v12 == -2;
LABEL_37:
    if (v31 && v9 == 0)
    {
      v9 = v12;
    }

    v32 = v29 + v28++;
    v29 = v32 & v7;
    v12 = v5 + 24 * v29;
    v30 = *(v12 + 12);
    if (v30 == HIDWORD(__n))
    {
      goto LABEL_24;
    }
  }

  if (*v12 != -1)
  {
LABEL_36:
    v31 = 0;
    goto LABEL_37;
  }

LABEL_74:
  if (v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v12;
  }

LABEL_20:
  v25 = sub_298B6C4DC(v3, &v54, &v54, v24);
  *v25 = v54;
  *(v25 + 16) = v55;
  result = (v3[3] + (1 << *(v3 + 36)) - 1) & -(1 << *(v3 + 36));
  *(v25 + 16) = result;
  v27 = result + v8;
  if (*(v3 + 8) != 6)
  {
    ++v27;
  }

  v3[3] = v27;
  return result;
}

uint64_t sub_298B6C130(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    v12 = 0;
    result = 0;
    goto LABEL_39;
  }

  v4 = *a1;
  v5 = v3 - 1;
  v6 = *a2;
  v8 = *(a2 + 8);
  v7 = *(a2 + 12);
  if (v8)
  {
    if (v6 == -2)
    {
      v9 = 0;
      v10 = 1;
      v11 = v7 & v5;
      v12 = v4 + 24 * (v7 & v5);
      v13 = *(v12 + 12);
      if (v7 != v13)
      {
        goto LABEL_9;
      }

LABEL_5:
      v14 = *v12;
      if (*v12 == -1 || v14 != -2 && (v8 != *(v12 + 8) || (v15 = a3, v16 = v4, v17 = v6, v18 = v7, v46 = v13, v19 = memcmp(v6, v14, v8), v13 = v46, v7 = v18, v6 = v17, v4 = v16, a3 = v15, v19)))
      {
LABEL_9:
        while (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_14;
          }

          v20 = *v12 == -2;
LABEL_15:
          if (v20 && v9 == 0)
          {
            v9 = v12;
          }

          v21 = v11 + v10++;
          v11 = v21 & v5;
          v12 = v4 + 24 * (v21 & v5);
          v13 = *(v12 + 12);
          if (v7 == v13)
          {
            goto LABEL_5;
          }
        }

        if (*v12 == -1)
        {
          goto LABEL_72;
        }

LABEL_14:
        v20 = 0;
        goto LABEL_15;
      }

      goto LABEL_38;
    }

    v28 = *(a2 + 8);
    v29 = *(a2 + 12);
    v30 = v3 - 1;
    v31 = *a1;
    v47 = a3;
    v32 = *a2;
    if (v6 == -1)
    {
      v33 = 0;
      v34 = 1;
      for (i = *(a2 + 12); ; i = v36 + v34++)
      {
        v36 = i & v30;
        v37 = v31 + 24 * (i & v30);
        v38 = *(v37 + 12);
        if (v29 == v38)
        {
          v39 = *v37;
          if (*v37 != -2 && (v39 == -1 || v28 == *(v37 + 8) && !memcmp(0xFFFFFFFFFFFFFFFFLL, v39, v28)))
          {
            goto LABEL_70;
          }
        }

        if (v38)
        {
          if (v38 == 1)
          {
            v40 = *v37 == -2;
            goto LABEL_53;
          }
        }

        else if (*v37 == -1)
        {
          goto LABEL_71;
        }

        v40 = 0;
LABEL_53:
        if (v40 && v33 == 0)
        {
          v33 = v31 + 24 * v36;
        }
      }
    }

    v33 = 0;
    v41 = 1;
    for (j = *(a2 + 12); ; j = v43 + v41++)
    {
      v43 = j & v30;
      v37 = v31 + 24 * (j & v30);
      v44 = *(v37 + 12);
      if (v29 == v44 && *v37 <= 0xFFFFFFFFFFFFFFFDLL && v28 == *(v37 + 8) && !memcmp(v32, *v37, v28))
      {
LABEL_70:
        result = 1;
        a3 = v47;
        v12 = v37;
        goto LABEL_39;
      }

      if (v44)
      {
        if (v44 == 1)
        {
          v45 = *v37 == -2;
          goto LABEL_67;
        }
      }

      else if (*v37 == -1)
      {
LABEL_71:
        a3 = v47;
        v9 = v33;
        v12 = v37;
        goto LABEL_72;
      }

      v45 = 0;
LABEL_67:
      if (v45 && v33 == 0)
      {
        v33 = v31 + 24 * v43;
      }
    }
  }

  v9 = 0;
  v23 = 1;
  v24 = v7 & v5;
  v12 = v4 + 24 * (v7 & v5);
  v25 = *(v12 + 12);
  if (v7 != v25)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (*v12 != -1)
  {
    if (*v12 == -2)
    {
      if (v6 != -2)
      {
        goto LABEL_28;
      }
    }

    else if (*(v12 + 8))
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (v6 == -1)
  {
LABEL_38:
    result = 1;
    goto LABEL_39;
  }

LABEL_28:
  while (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_33;
    }

    v26 = *v12 == -2;
LABEL_34:
    if (v26 && v9 == 0)
    {
      v9 = v12;
    }

    v27 = v24 + v23++;
    v24 = v27 & v5;
    v12 = v4 + 24 * v24;
    v25 = *(v12 + 12);
    if (v7 == v25)
    {
      goto LABEL_21;
    }
  }

  if (*v12 != -1)
  {
LABEL_33:
    v26 = 0;
    goto LABEL_34;
  }

LABEL_72:
  result = 0;
  if (v9)
  {
    v12 = v9;
  }

LABEL_39:
  *a3 = v12;
  return result;
}

uint64_t sub_298B6C4DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
LABEL_8:
    v7 = a1;
    sub_298B6C5A8(a1, v5);
    v9 = 0;
    sub_298B6C130(v7, a3, &v9);
    a1 = v7;
    a4 = v9;
    ++*(v7 + 2);
    if (*(a4 + 12))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
    goto LABEL_8;
  }

  ++*(a1 + 2);
  if (*(a4 + 12))
  {
LABEL_5:
    --*(a1 + 3);
    return a4;
  }

LABEL_4:
  if (*a4 != -1)
  {
    goto LABEL_5;
  }

  return a4;
}

_OWORD *sub_298B6C5A8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return result;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v24 = v14 / 0x18 + 1;
      v15 = result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL);
      v25 = result;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_298CF7980;
        *(v25 + 24) = xmmword_298CF7980;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v27 = result + 24 * v13;
    do
    {
      *v15 = xmmword_298CF7980;
      v15 += 24;
    }

    while (v15 != v27);
    return result;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL);
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_298CF7980;
        *(v17 + 24) = xmmword_298CF7980;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = result;
    }

    v19 = result + 24 * v10;
    do
    {
      *v12 = xmmword_298CF7980;
      v12 += 24;
    }

    while (v12 != v19);
  }

LABEL_16:
  if (v3)
  {
    v20 = 24 * v3;
    for (i = v4; ; i += 24)
    {
      v23 = *(i + 12);
      if (v23 != 1)
      {
        break;
      }

      if (*i != -2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v20 -= 24;
      if (!v20)
      {
        return MEMORY[0x29C2945E0](v4, 8);
      }
    }

    if (!v23 && *i == -1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v28 = 0;
    sub_298B6C130(a1, i, &v28);
    v22 = v28;
    *v28 = *i;
    *(v22 + 2) = *(i + 16);
    ++*(a1 + 8);
    goto LABEL_20;
  }

  return MEMORY[0x29C2945E0](v4, 8);
}

uint64_t *sub_298B6C7E4(std::string::size_type a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v11 = qword_2A13C2BE8;
    if (qword_2A13C2BE8)
    {
      while (1)
      {
        v12 = v11;
        v13 = a1;
        v14 = a2;
        if (sub_298B6CD00(a1, a2, *(v11 + 16)))
        {
          break;
        }

        v11 = *v12;
        a2 = v14;
        a1 = v13;
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      v19 = sub_298CF1B50(v13, v14);
      if (v19)
      {
        sub_298CF57A0(a3, v19, 0);
      }

      return v12;
    }

    else
    {
LABEL_14:
      v22 = 1283;
      v20.__r_.__value_.__r.__words[0] = "invalid target '";
      v20.__r_.__value_.__r.__words[2] = a1;
      v21 = a2;
      v27[0] = "'.\n";
      v28 = 259;
      sub_298B6CD80(&v20, v27, __p);
      sub_298B996A4(__p, &v25);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      result = 0;
      *a4 = v25;
      *(a4 + 16) = v26;
    }
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = a3[1];
    }

    result = sub_298B6C9F0(v7, v8, __p);
    if (result)
    {
      if (SHIBYTE(v24) < 0)
      {
        v10 = result;
        operator delete(__p[0]);
        return v10;
      }
    }

    else
    {
      std::operator+<char>();
      v15 = std::string::append(&v20, "', see --version and --triple.");
      v16 = v15->__r_.__value_.__r.__words[0];
      v27[0] = v15->__r_.__value_.__l.__size_;
      *(v27 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
      v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v18 = v27[0];
      *a4 = v16;
      *(a4 + 8) = v18;
      *(a4 + 15) = *(v27 + 7);
      *(a4 + 23) = v17;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_298B6C9F0(std::string::size_type a1, std::string::size_type a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!qword_2A13C2BE8)
  {
    MEMORY[0x29C294300](a3, "Unable to find target for this triple (no targets are registered)");
    return 0;
  }

  v14 = 261;
  v12.__r_.__value_.__r.__words[0] = a1;
  v12.__r_.__value_.__l.__size_ = a2;
  sub_298CF26DC(__p, &v12);
  v6 = v17;
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    v7 = qword_2A13C2BE8;
    if (qword_2A13C2BE8)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  v7 = qword_2A13C2BE8;
  if (!qword_2A13C2BE8)
  {
LABEL_9:
    v14 = 1283;
    v12.__r_.__value_.__r.__words[0] = "No available targets are compatible with triple ";
    v12.__r_.__value_.__r.__words[2] = a1;
    v13 = a2;
    __p[0] = &v12;
    v16 = "";
    v18 = 770;
    sub_298B996A4(__p, &v11);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v7 = 0;
    *a3 = v11;
    return v7;
  }

LABEL_7:
  while (1)
  {
    v8 = (*(v7 + 8))(v6);
    v9 = *v7;
    if (v8)
    {
      break;
    }

    v7 = *v7;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  for (; v9; v9 = *v9)
  {
    if ((*(v9 + 8))(v6))
    {
      operator new();
    }
  }

  return v7;
}

uint64_t sub_298B6CCD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!*(result + 16))
  {
    v6 = qword_2A13C2BE8;
    qword_2A13C2BE8 = result;
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    *result = v6;
    *(result + 8) = a5;
    *(result + 40) = a6;
  }

  return result;
}

BOOL sub_298B6CD00(const void *a1, size_t __n, char *__s)
{
  if (__s)
  {
    v6 = a1;
    v7 = __s;
    v8 = strlen(__s);
    __s = v7;
    v4 = v8;
    a1 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != __n)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s, __n) == 0;
  }

  return 1;
}

uint64_t *sub_298B6CD80@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *(result + 33);
      if (v7 == 1)
      {
        v8 = result;
        result = *result;
        v7 = v8[1];
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

void sub_298B6DC18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  (*(*a2 + 64))(v17, a2, a4);
  if (v18)
  {
    v7 = v17[0];
    v17[0] = 0;
    v9 = v7;
    sub_298AE72FC(&v9, v13);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v8 = a3 - *(a2[1] + 16);
    v12 = 773;
    v9 = "remaining size of archive too small for next archive member header ";
    v10 = 67;
    v11 = "at offset ";
    v13[0] = &v9;
    v14 = &v8;
    v16 = 3330;
    sub_298B6DDE8(a1, v13);
  }

  v12 = 773;
  v9 = "remaining size of archive too small for next archive member header ";
  v10 = 67;
  v11 = "for ";
  v13[0] = &v9;
  v14 = v17[0];
  v15 = v17[1];
  v16 = 1282;
  sub_298B6DDE8(a1, v13);
}

void sub_298B6DDE8(void *a1, char *a2)
{
  sub_298B996A4(a2, &v6);
  v2 = std::string::insert(&v6, 0, "truncated or malformed archive (");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v9, ")");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
LABEL_3:
  operator new();
}

void sub_298B6DEF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 114) & 7;
  if (v4 == 4 || v4 == 2)
  {
    v6 = *(a1 + 16);
    if (*v6 == 32)
    {
      v14 = &v6[-*(v3 + 16)];
      v12[0] = "name contains a leading space for archive member header at offset ";
      v12[2] = &v14;
      v13 = 3331;
      sub_298B6DDE8(a2, v12);
    }

    v7 = 32;
  }

  else
  {
    v6 = *(a1 + 16);
    v8 = *v6;
    if (v8 == 35 || v8 == 47)
    {
      v7 = 32;
    }

    else
    {
      v7 = 47;
    }
  }

  v10 = memchr(v6, v7, 0x10uLL);
  v11 = v10 - v6;
  if (!v10)
  {
    v11 = -1;
  }

  *(a2 + 16) &= ~1u;
  if (v11 == -1)
  {
    v11 = 16;
  }

  *a2 = v6;
  *(a2 + 8) = v11;
}

void sub_298B6DFF8(uint64_t a1, uint64_t **a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v26[0] = 0;
  if (sub_298B97354(a3, a4, 0xAu, v26))
  {
    v30 = (*(*a5 + 80))(a5);
    v10 = *(a2 + 32);
    if (*(a2 + 32))
    {
      if (v10 == 1)
      {
        v11 = "characters in ";
        v18[0] = "characters in ";
        v19 = 259;
        v12 = 3;
      }

      else
      {
        v16 = *a2;
        v17 = a2[1];
        v12 = 2;
        if (*(a2 + 33) != 1)
        {
          LOBYTE(v10) = 2;
          v16 = a2;
        }

        v18[0] = "characters in ";
        v18[2] = v16;
        v18[3] = v17;
        LOBYTE(v19) = 3;
        HIBYTE(v19) = v10;
        v11 = v18;
      }

      v20[0] = v11;
      v20[2] = " field in archive member header are not all decimal numbers: '";
      LOBYTE(v21) = v12;
      HIBYTE(v21) = 3;
      v22[0] = v20;
      v22[2] = a3;
      v22[3] = a4;
      v23 = 1282;
      v24[0] = v22;
      v24[2] = "' for the archive member header at offset ";
      v25 = 770;
      v15 = 13;
      v14 = 2;
      v26[0] = v24;
      v26[2] = &v30;
    }

    else
    {
      v14 = 0;
      v19 = 256;
      v21 = 256;
      v23 = 256;
      v25 = 256;
      v15 = 1;
    }

    v27 = v14;
    v28 = v15;
    sub_298B6DDE8(&v29, v26);
  }

  v13 = v26[0];
  *(a1 + 8) &= ~1u;
  *a1 = v13;
}

void sub_298B6E1AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v11[0] = "NameLen";
  v12 = 259;
  v4 = *(a1 + 16);
  v15 = 0;
  v16 = 0;
  v13 = 0x100000000;
  v14 = 0;
  if ((*(&v13 + ((v4[111] >> 3) & 0x18)) >> v4[111]))
  {
    if ((*(&v13 + ((v4[110] >> 3) & 0x18)) >> v4[110]))
    {
      if ((*(&v13 + ((v4[109] >> 3) & 0x18)) >> v4[109]))
      {
        v5 = (~*(&v13 + ((v4[108] >> 3) & 0x18)) >> v4[108]) & 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 4;
  }

  sub_298B6DFF8(&v13, v11, v4 + 108, v5, a1);
  if (v14)
  {
    v6 = v13;
    *(a2 + 16) |= 1u;
    *a2 = v6;
  }

  else
  {
    v7 = v13;
    v8 = (v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(a1 + 16) + 112;
    if (v8 == -2 || *(v9 + v8) != 2656)
    {
      v10 = v9 + v8 - *(*(a1 + 8) + 16);
      v11[2] = &v10;
      v12 = 3331;
      sub_298B6DDE8(a2, v11);
    }

    *(a2 + 16) &= ~1u;
    *a2 = v9;
    *(a2 + 8) = v7;
  }
}

void sub_298B6E390(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xF)
  {
    *v69 = a1[2] - *(a1[1] + 16);
    v73 = "archive header truncated before the name field for archive member header at offset ";
    v75 = v69;
    LOWORD(v77) = 3331;
    sub_298B6DDE8(a3, &v73);
  }

  (*(*a1 + 24))(&v83);
  v6 = v83;
  if (v84)
  {
    *(a3 + 16) |= 1u;
    *a3 = v6;
    return;
  }

  v7 = *(&v83 + 1);
  if (*v83 == 47)
  {
    if (*(&v83 + 1) <= 12)
    {
      if (*(&v83 + 1) == 1 || *(&v83 + 1) == 2 && *(v83 + 1) == 47)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    if (*(&v83 + 1) == 13)
    {
      v11 = *(v83 + 5);
      v12 = *v83 == 0x424D595343453C2FLL;
      v13 = 0x534C4F424D59;
    }

    else
    {
      if (*(&v83 + 1) != 14)
      {
LABEL_37:
        if (*(&v83 + 1))
        {
          v19 = (v83 + 1);
        }

        else
        {
          v19 = v83;
        }

        v20 = *(&v83 + 1) - (*(&v83 + 1) != 0);
        v21 = (*(&v83 + 1) + v83 - 1);
        v22 = v20;
        do
        {
          v23 = v22;
          if (!v22)
          {
            break;
          }

          --v22;
          v24 = *v21--;
        }

        while (v24 == 32);
        if (v23 >= v20)
        {
          v25 = *(&v83 + 1) - (*(&v83 + 1) != 0);
        }

        else
        {
          v25 = v23;
        }

        v73 = 0;
        if (sub_298B97354(v19, v25, 0xAu, &v73))
        {
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v74 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 1;
          v76 = 0;
          v77 = 0;
          v75 = 0;
          v73 = &unk_2A1F1E040;
          v81 = &v62;
          sub_298ADDDB0(&v73);
          v26 = (v7 + v6 - 1);
          v27 = v7 - (v7 != 0);
          do
          {
            v28 = v27;
            if (!v27)
            {
              break;
            }

            --v27;
            v29 = *v26--;
          }

          while (v29 == 32);
          if (v28 >= v20)
          {
            v30 = v7 - (v7 != 0);
          }

          else
          {
            v30 = v28;
          }

          sub_298B9B3A0(&v73, v19, v30, 0);
          if (v77 != v75)
          {
            v77 = v75;
            sub_298B9BB84(&v73);
          }

          v72 = a1[2] - *(a1[1] + 16);
          goto LABEL_79;
        }

        v31 = v73;
        v82 = v73;
        v32 = a1;
        v33 = a1[1];
        v34 = *(v33 + 88);
        if (v34 > v73)
        {
          v35 = *(v33 + 80);
          if ((*(v33 + 114) & 6) != 0)
          {
            v36 = &v73[v35];
            *(a3 + 16) &= ~1u;
            *a3 = v35 + v31;
            if (v35)
            {
              *(a3 + 8) = strlen(v36);
              if ((v84 & 1) == 0)
              {
                return;
              }
            }

            else
            {
              *(a3 + 8) = 0;
              if ((v84 & 1) == 0)
              {
                return;
              }
            }

            goto LABEL_80;
          }

          v53 = memchr(&v73[v35], 10, v34 - v73);
          v54 = v53 - v35;
          if (!v53)
          {
            v54 = -1;
          }

          if ((v54 + 1) >= 2)
          {
            v55 = v54 - 1;
            if (*(v35 + v55) == 47)
            {
              if (v31 > v55)
              {
                v55 = v31;
              }

              if (v55 >= v34)
              {
                v55 = v34;
              }

              *(a3 + 16) &= ~1u;
              *a3 = v35 + v31;
              *(a3 + 8) = v55 - v31;
              if ((v84 & 1) == 0)
              {
                return;
              }

LABEL_80:
              v49 = v83;
              *&v83 = 0;
              if (v49)
              {
                (*(*v49 + 8))(v49);
              }

              return;
            }
          }

          *v69 = "string table at long name offset ";
          v70 = &v82;
          v71 = 2819;
          v73 = v69;
          v75 = "not terminated";
          v52 = 770;
LABEL_87:
          LOWORD(v77) = v52;
          sub_298B6DDE8(a3, &v73);
        }

        __p[0] = (v32[2] - *(v33 + 16));
        v62 = "long name offset ";
        v64 = &v82;
        v65 = 2819;
        v50 = " past the end of the string table for archive member header at offset ";
LABEL_86:
        *v69 = &v62;
        v70 = v50;
        v71 = 770;
        v73 = v69;
        v75 = __p;
        v52 = 3330;
        goto LABEL_87;
      }

      v11 = *(v83 + 6);
      v12 = *v83 == 0x5341484746583C2FLL;
      v13 = 0x50414D485341;
    }

    v17 = v13 & 0xFFFFFFFFFFFFLL | 0x2F3E000000000000;
    if (v12 && v11 == v17)
    {
LABEL_56:
      *(a3 + 16) &= ~1u;
      *a3 = v83;
      if ((v84 & 1) == 0)
      {
        return;
      }

      goto LABEL_80;
    }

    goto LABEL_37;
  }

  v8 = *(&v83 + 1) - 3;
  if (*(&v83 + 1) >= 3uLL && *v83 == 12579 && *(v83 + 2) == 47)
  {
    v37 = 3 - *(&v83 + 1);
    v38 = (*(&v83 + 1) + v83 - 1);
    do
    {
      v39 = v37;
      if (!v37)
      {
        break;
      }

      v40 = *v38--;
      ++v37;
    }

    while (v40 == 32);
    if (-v39 < v8)
    {
      v41 = -v39;
    }

    else
    {
      v41 = *(&v83 + 1) - 3;
    }

    v73 = 0;
    if (sub_298B97354((v83 + 3), v41, 0xAu, &v73))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v74 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 1;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      v73 = &unk_2A1F1E040;
      v81 = &v62;
      sub_298ADDDB0(&v73);
      v42 = 3 - v7;
      v43 = (v7 + v6 - 1);
      do
      {
        v44 = v42;
        if (!v42)
        {
          break;
        }

        v45 = *v43--;
        ++v42;
      }

      while (v45 == 32);
      if (-v44 < v8)
      {
        v46 = -v44;
      }

      else
      {
        v46 = v7 - 3;
      }

      sub_298B9B3A0(&v73, (v6 + 3), v46, 0);
      if (v77 != v75)
      {
        v77 = v75;
        sub_298B9BB84(&v73);
      }

      v72 = a1[2] - *(a1[1] + 16);
LABEL_79:
      std::operator+<char>();
      v47 = std::string::append(&v66, "' for archive member header at offset ");
      v48 = v47->__r_.__value_.__r.__words[2];
      *__p = *&v47->__r_.__value_.__l.__data_;
      v68 = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      *v69 = __p;
      v70 = &v72;
      v71 = 3332;
      sub_298B6DDE8(a3, v69);
    }

    v51 = v73;
    v82 = v73;
    if ((*(*a1 + 104))(a1) + v51 <= a2)
    {
      v56 = a1;
      v57 = a1[2];
      v58 = (*(*v56 + 104))(v56);
      v59 = v51;
      do
      {
        v60 = v59;
        if (!v59)
        {
          break;
        }

        --v59;
      }

      while (!*(v57 + v58 - 1 + v60));
      if (v60 >= v51)
      {
        v61 = v51;
      }

      else
      {
        v61 = v60;
      }

      *(a3 + 16) &= ~1u;
      *a3 = v57 + v58;
      *(a3 + 8) = v61;
      if ((v84 & 1) == 0)
      {
        return;
      }

      goto LABEL_80;
    }

    __p[0] = (a1[2] - *(a1[1] + 16));
    v62 = "long name length: ";
    v64 = &v82;
    v65 = 3331;
    v50 = " extends past the end of the member or archive for archive member header at offset ";
    goto LABEL_86;
  }

  if (*(v83 + *(&v83 + 1) - 1) != 47)
  {
    v14 = *(&v83 + 1);
    do
    {
      v15 = v14;
      if (!v14)
      {
        break;
      }

      --v14;
    }

    while (*(v83 - 1 + v15) == 32);
    if (v15 >= *(&v83 + 1))
    {
      v16 = *(&v83 + 1);
    }

    else
    {
      v16 = v15;
    }

    *(a3 + 16) &= ~1u;
    *a3 = v6;
    *(a3 + 8) = v16;
    if ((v84 & 1) == 0)
    {
      return;
    }

    goto LABEL_80;
  }

  v10 = *(&v83 + 1) - 1;
  *(a3 + 16) &= ~1u;
  if (v7 < v7 - 1)
  {
    v10 = v7;
  }

  *a3 = v6;
  *(a3 + 8) = v10;
  if (v84)
  {
    goto LABEL_80;
  }
}

void sub_298B6EBC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = "size";
  v6 = 259;
  v4 = *(a1 + 16);
  v7[0] = 0x100000000;
  memset(&v7[1], 0, 24);
  if ((*(v7 + ((v4[57] >> 3) & 0x18)) >> v4[57]))
  {
    if ((*(v7 + ((v4[56] >> 3) & 0x18)) >> v4[56]))
    {
      if ((*(v7 + ((v4[55] >> 3) & 0x18)) >> v4[55]))
      {
        if ((*(v7 + ((v4[54] >> 3) & 0x18)) >> v4[54]))
        {
          if ((*(v7 + ((v4[53] >> 3) & 0x18)) >> v4[53]))
          {
            if ((*(v7 + ((v4[52] >> 3) & 0x18)) >> v4[52]))
            {
              if ((*(v7 + ((v4[51] >> 3) & 0x18)) >> v4[51]))
              {
                if ((*(v7 + ((v4[50] >> 3) & 0x18)) >> v4[50]))
                {
                  if ((*(v7 + ((v4[49] >> 3) & 0x18)) >> v4[49]))
                  {
                    sub_298B6DFF8(a2, v5, v4 + 48, (~*(v7 + ((v4[48] >> 3) & 0x18)) >> v4[48]) & 1, a1);
                  }

                  else
                  {
                    sub_298B6DFF8(a2, v5, v4 + 48, 2, a1);
                  }
                }

                else
                {
                  sub_298B6DFF8(a2, v5, v4 + 48, 3, a1);
                }
              }

              else
              {
                sub_298B6DFF8(a2, v5, v4 + 48, 4, a1);
              }
            }

            else
            {
              sub_298B6DFF8(a2, v5, v4 + 48, 5, a1);
            }
          }

          else
          {
            sub_298B6DFF8(a2, v5, v4 + 48, 6, a1);
          }
        }

        else
        {
          sub_298B6DFF8(a2, v5, v4 + 48, 7, a1);
        }
      }

      else
      {
        sub_298B6DFF8(a2, v5, v4 + 48, 8, a1);
      }
    }

    else
    {
      sub_298B6DFF8(a2, v5, v4 + 48, 9, a1);
    }
  }

  else
  {
    sub_298B6DFF8(a2, v5, v4 + 48, 10, a1);
  }
}

void sub_298B6EE20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v10[0] = "size";
  v11 = 259;
  v4 = *(a1 + 16);
  v14 = 0;
  v15 = 0;
  v12 = 0x100000000;
  v13 = 0;
  if ((*(&v12 + ((v4[19] >> 3) & 0x18)) >> v4[19]))
  {
    if ((*(&v12 + ((v4[18] >> 3) & 0x18)) >> v4[18]))
    {
      if ((*(&v12 + ((v4[17] >> 3) & 0x18)) >> v4[17]))
      {
        if ((*(&v12 + ((v4[16] >> 3) & 0x18)) >> v4[16]))
        {
          if ((*(&v12 + ((v4[15] >> 3) & 0x18)) >> v4[15]))
          {
            if ((*(&v12 + ((v4[14] >> 3) & 0x18)) >> v4[14]))
            {
              if ((*(&v12 + ((v4[13] >> 3) & 0x18)) >> v4[13]))
              {
                if ((*(&v12 + ((v4[12] >> 3) & 0x18)) >> v4[12]))
                {
                  if ((*(&v12 + ((v4[11] >> 3) & 0x18)) >> v4[11]))
                  {
                    if ((*(&v12 + ((v4[10] >> 3) & 0x18)) >> v4[10]))
                    {
                      if ((*(&v12 + ((v4[9] >> 3) & 0x18)) >> v4[9]))
                      {
                        if ((*(&v12 + ((v4[8] >> 3) & 0x18)) >> v4[8]))
                        {
                          if ((*(&v12 + ((v4[7] >> 3) & 0x18)) >> v4[7]))
                          {
                            if ((*(&v12 + ((v4[6] >> 3) & 0x18)) >> v4[6]))
                            {
                              if ((*(&v12 + ((v4[5] >> 3) & 0x18)) >> v4[5]))
                              {
                                if ((*(&v12 + ((v4[4] >> 3) & 0x18)) >> v4[4]))
                                {
                                  if ((*(&v12 + ((v4[3] >> 3) & 0x18)) >> v4[3]))
                                  {
                                    if ((*(&v12 + ((v4[2] >> 3) & 0x18)) >> v4[2]))
                                    {
                                      if ((*(&v12 + ((v4[1] >> 3) & 0x18)) >> v4[1]))
                                      {
                                        v5 = (~*(&v12 + ((*v4 >> 3) & 0x18)) >> *v4) & 1;
                                      }

                                      else
                                      {
                                        v5 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v5 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v5 = 4;
                                  }
                                }

                                else
                                {
                                  v5 = 5;
                                }
                              }

                              else
                              {
                                v5 = 6;
                              }
                            }

                            else
                            {
                              v5 = 7;
                            }
                          }

                          else
                          {
                            v5 = 8;
                          }
                        }

                        else
                        {
                          v5 = 9;
                        }
                      }

                      else
                      {
                        v5 = 10;
                      }
                    }

                    else
                    {
                      v5 = 11;
                    }
                  }

                  else
                  {
                    v5 = 12;
                  }
                }

                else
                {
                  v5 = 13;
                }
              }

              else
              {
                v5 = 14;
              }
            }

            else
            {
              v5 = 15;
            }
          }

          else
          {
            v5 = 16;
          }
        }

        else
        {
          v5 = 17;
        }
      }

      else
      {
        v5 = 18;
      }
    }

    else
    {
      v5 = 19;
    }
  }

  else
  {
    v5 = 20;
  }

  sub_298B6DFF8(&v18, v10, v4, v5, a1);
  if (v19)
  {
    v6 = v18;
  }

  else
  {
    v10[0] = "NameLen";
    v11 = 259;
    v7 = *(a1 + 16);
    v14 = 0;
    v15 = 0;
    v12 = 0x100000000;
    v13 = 0;
    if ((*(&v12 + ((v7[111] >> 3) & 0x18)) >> v7[111]))
    {
      if ((*(&v12 + ((v7[110] >> 3) & 0x18)) >> v7[110]))
      {
        if ((*(&v12 + ((v7[109] >> 3) & 0x18)) >> v7[109]))
        {
          v8 = (~*(&v12 + ((v7[108] >> 3) & 0x18)) >> v7[108]) & 1;
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 4;
    }

    sub_298B6DFF8(&v16, v10, v7 + 108, v8, a1);
    if ((v17 & 1) == 0)
    {
      v6 = ((v16 + 1) & 0xFFFFFFFFFFFFFFFELL) + v18;
      v9 = *(a2 + 8) & 0xFE;
      goto LABEL_53;
    }

    v6 = v16;
  }

  v9 = *(a2 + 8) | 1;
LABEL_53:
  *(a2 + 8) = v9;
  *a2 = v6;
}

void *sub_298B6F258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 24))(&v8);
  if (v10)
  {
    v5 = v8;
    *(a2 + 8) |= 1u;
    *a2 = v5;
    return result;
  }

  if ((*(a1[1] + 114) & 8) != 0)
  {
    switch(v9)
    {
      case 7:
        v7 = *v8 == 1297699631 && *(v8 + 3) == 791950925;
        break;
      case 2:
        v7 = *v8 == 12079;
        break;
      case 1:
        v7 = *v8 == 47;
        break;
      default:
        v6 = 1;
        goto LABEL_17;
    }

    v6 = !v7;
    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:
  *(a2 + 8) &= ~1u;
  *a2 = v6;
  return result;
}

void *sub_298B6F380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 104))(a1);
  result = (*(*a1 + 96))(&v11, a1);
  if (v12)
  {
    v6 = v11;
    v11 = 0;
    goto LABEL_3;
  }

  if ((v11 & 1) == 0)
  {
    result = (*(*a1 + 72))(&v9, a1);
    if (v10)
    {
      v6 = v9;
LABEL_3:
      *(a2 + 8) |= 1u;
      *a2 = v6;
      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    v4 += v9;
  }

  v7 = a1[2] + ((v4 + 1) & 0xFFFFFFFFFFFFFFFELL);
  v8 = *(a1[1] + 16) + *(a1[1] + 24);
  *(a2 + 8) &= ~1u;
  if (v7 == v8)
  {
    *a2 = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *a2 = v7;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

LABEL_11:
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_298B6F524(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 80))(a1) == *(a1[1] + 160))
  {
    *(a2 + 8) &= ~1u;
    *a2 = 0;
  }

  else
  {
    v8 = "NextOffset";
    v9 = 259;
    v4 = a1[2];
    v12 = 0;
    v13 = 0;
    v10 = 0x100000000;
    v11 = 0;
    if ((*(&v10 + ((v4[39] >> 3) & 0x18)) >> v4[39]))
    {
      if ((*(&v10 + ((v4[38] >> 3) & 0x18)) >> v4[38]))
      {
        if ((*(&v10 + ((v4[37] >> 3) & 0x18)) >> v4[37]))
        {
          if ((*(&v10 + ((v4[36] >> 3) & 0x18)) >> v4[36]))
          {
            if ((*(&v10 + ((v4[35] >> 3) & 0x18)) >> v4[35]))
            {
              if ((*(&v10 + ((v4[34] >> 3) & 0x18)) >> v4[34]))
              {
                if ((*(&v10 + ((v4[33] >> 3) & 0x18)) >> v4[33]))
                {
                  if ((*(&v10 + ((v4[32] >> 3) & 0x18)) >> v4[32]))
                  {
                    if ((*(&v10 + ((v4[31] >> 3) & 0x18)) >> v4[31]))
                    {
                      if ((*(&v10 + ((v4[30] >> 3) & 0x18)) >> v4[30]))
                      {
                        if ((*(&v10 + ((v4[29] >> 3) & 0x18)) >> v4[29]))
                        {
                          if ((*(&v10 + ((v4[28] >> 3) & 0x18)) >> v4[28]))
                          {
                            if ((*(&v10 + ((v4[27] >> 3) & 0x18)) >> v4[27]))
                            {
                              if ((*(&v10 + ((v4[26] >> 3) & 0x18)) >> v4[26]))
                              {
                                if ((*(&v10 + ((v4[25] >> 3) & 0x18)) >> v4[25]))
                                {
                                  if ((*(&v10 + ((v4[24] >> 3) & 0x18)) >> v4[24]))
                                  {
                                    if ((*(&v10 + ((v4[23] >> 3) & 0x18)) >> v4[23]))
                                    {
                                      if ((*(&v10 + ((v4[22] >> 3) & 0x18)) >> v4[22]))
                                      {
                                        if ((*(&v10 + ((v4[21] >> 3) & 0x18)) >> v4[21]))
                                        {
                                          v5 = (~*(&v10 + ((v4[20] >> 3) & 0x18)) >> v4[20]) & 1;
                                        }

                                        else
                                        {
                                          v5 = 2;
                                        }
                                      }

                                      else
                                      {
                                        v5 = 3;
                                      }
                                    }

                                    else
                                    {
                                      v5 = 4;
                                    }
                                  }

                                  else
                                  {
                                    v5 = 5;
                                  }
                                }

                                else
                                {
                                  v5 = 6;
                                }
                              }

                              else
                              {
                                v5 = 7;
                              }
                            }

                            else
                            {
                              v5 = 8;
                            }
                          }

                          else
                          {
                            v5 = 9;
                          }
                        }

                        else
                        {
                          v5 = 10;
                        }
                      }

                      else
                      {
                        v5 = 11;
                      }
                    }

                    else
                    {
                      v5 = 12;
                    }
                  }

                  else
                  {
                    v5 = 13;
                  }
                }

                else
                {
                  v5 = 14;
                }
              }

              else
              {
                v5 = 15;
              }
            }

            else
            {
              v5 = 16;
            }
          }

          else
          {
            v5 = 17;
          }
        }

        else
        {
          v5 = 18;
        }
      }

      else
      {
        v5 = 19;
      }
    }

    else
    {
      v5 = 20;
    }

    sub_298B6DFF8(&v10, &v8, v4 + 20, v5, a1);
    if (v11)
    {
      v6 = v10;
      v7 = *(a2 + 8) | 1;
    }

    else
    {
      v6 = *(a1[1] + 16) + v10;
      v7 = *(a2 + 8) & 0xFE;
    }

    *(a2 + 8) = v7;
    *a2 = v6;
  }
}

uint64_t sub_298B6F8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    operator new();
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_298B701E4(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  (*(**(a2 + 8) + 96))(&v44);
  if (v45)
  {
    v4 = v44;
    v44 = 0;
LABEL_22:
    *(a1 + 16) |= 1u;
    *a1 = v4;
    goto LABEL_25;
  }

  if ((v44 & 1) == 0)
  {
    if ((*(*a2 + 114) & 8) != 0)
    {
      (*(**(a2 + 8) + 72))(__dst);
      if (__dst[8])
      {
        v4 = *__dst;
        goto LABEL_22;
      }

      v5 = *(a2 + 32);
      v7 = *__dst;
      v6 = *(a2 + 16);
    }

    else
    {
      v5 = *(a2 + 32);
      v6 = *(a2 + 16);
      v7 = *(a2 + 24) - v5;
    }

    *(a1 + 16) &= ~1u;
    *a1 = v6 + v5;
    *(a1 + 8) = v7;
    goto LABEL_25;
  }

  (*(**(a2 + 8) + 96))(&v56);
  if (v57)
  {
    v51 = -1;
    *&__p = v56;
LABEL_21:
    v4 = __p;
    *&__p = 0;
    goto LABEL_22;
  }

  (*(**(a2 + 8) + 72))(&__p);
  if (BYTE8(__p))
  {
    v8 = __p;
  }

  else
  {
    v9 = __p;
    v10 = *(a2 + 8);
    v11 = (*(*v10 + 104))(v10);
    (*(*v10 + 64))(__dst, v10, v11 + v9);
    v12 = __dst[16];
    v8 = *__dst;
    v13 = *&__dst[8];
    if (BYTE8(__p))
    {
      v14 = __p;
      *&__p = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    if ((v12 & 1) == 0)
    {
      v55 = 261;
      *__dst = v8;
      *&__dst[8] = v13;
      if (sub_298BA9D1C(__dst, 0))
      {
        if (v13 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v13 >= 0x17)
          {
            operator new();
          }

          __dst[23] = v13;
          if (v13)
          {
            memmove(__dst, v8, v13);
          }

          v15 = 0;
          __dst[v13] = 0;
          v51 = 0;
          __p = *__dst;
          v50 = *&__dst[16];
          goto LABEL_17;
        }
      }

      else
      {
        v29 = sub_298BA9584(*(*a2 + 32), *(*a2 + 40), 0);
        v30 = v28;
        *__dst = &v54;
        *&__dst[8] = xmmword_298D1A050;
        if (v28 < 0x81)
        {
          v31 = 0;
        }

        else
        {
          sub_298B90C08(__dst, &v54, v28, 1);
          v31 = *&__dst[8];
        }

        if (v30)
        {
          memcpy((*__dst + v31), v29, v30);
          v31 = *&__dst[8];
        }

        *&__dst[8] = v31 + v30;
        v52 = 261;
        *&__p = v8;
        *(&__p + 1) = v13;
        v48 = 257;
        v43 = 257;
        v41 = 257;
        sub_298BA8944(__dst, 0, &__p, &v46, v42, v40);
        v39 = *&__dst[8];
        if (*&__dst[8] <= 0x7FFFFFFFFFFFFFF7uLL)
        {
          if (*&__dst[8] >= 0x17uLL)
          {
            operator new();
          }

          HIBYTE(v47) = __dst[8];
          if (*&__dst[8])
          {
            memmove(&v46, *__dst, *&__dst[8]);
          }

          *(&v46 + v39) = 0;
          v51 = 0;
          __p = v46;
          v50 = v47;
          if (*__dst != &v54)
          {
            free(*__dst);
          }

          v15 = 0;
          goto LABEL_17;
        }
      }

      sub_298ADDDA0();
    }
  }

  v51 = -1;
  *&__p = v8;
  v15 = 1;
LABEL_17:
  if (v57)
  {
    v16 = v56;
    v56 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if (v15)
  {
    goto LABEL_21;
  }

  v55 = 260;
  *__dst = &__p;
  sub_298B8D930(__dst, 0, &v46, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
  if ((v47 & 1) != 0 && v46)
  {
    *__dst = &unk_2A1F1DB10;
    *&__dst[8] = v46;
    operator new();
  }

  v18 = *a2;
  v20 = *(*a2 + 128);
  v19 = *(*a2 + 136);
  if (v20 >= v19)
  {
    v22 = v18[15];
    v23 = v20 - v22;
    v24 = (v20 - v22) >> 3;
    v25 = v24 + 1;
    if ((v24 + 1) >> 61)
    {
      sub_298ADDDA0();
    }

    v26 = v19 - v22;
    if (v26 >> 2 > v25)
    {
      v25 = v26 >> 2;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v27 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      if (!(v27 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v32 = (v20 - v22) >> 3;
    v33 = (8 * v24);
    v34 = (8 * v24 - 8 * v32);
    *v33 = v46;
    v21 = v33 + 1;
    memcpy(v34, v22, v23);
    v18[15] = v34;
    v18[16] = v21;
    v18[17] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v20 = v46;
    v21 = v20 + 8;
  }

  v18[16] = v21;
  v35 = *(*(*a2 + 128) - 8);
  v36 = *(v35 + 8);
  v37 = *(v35 + 16) - v36;
  *(a1 + 16) &= ~1u;
  *a1 = v36;
  *(a1 + 8) = v37;
  if (v51)
  {
    v38 = __p;
    *&__p = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }

  else if (SHIBYTE(v50) < 0)
  {
    operator delete(__p);
  }

LABEL_25:
  if (v45)
  {
    v17 = v44;
    v44 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }
}

void sub_298B708EC(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  (*(*a2[1] + 88))(&v14);
  v4 = v14;
  if (v15)
  {
    v14 = 0;
    *(a1 + 40) |= 1u;
    *a1 = v4;
  }

  else if (v14)
  {
    v5 = *a2;
    if (v14 > *(*a2 + 16) + *(*a2 + 24))
    {
      operator new();
    }

    v11 = 0;
    sub_298B6F8D8(v12, v5, v14, &v11);
    v6 = v11;
    if (v11)
    {
      v11 = 0;
      *(a1 + 40) |= 1u;
      v7 = *(&v12[0] + 1);
      *a1 = v6;
      *(&v12[0] + 1) = 0;
      if (v7)
      {
        (*(*v7 + 16))(v7);
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }
    }

    else
    {
      *(a1 + 40) &= ~1u;
      *(a1 + 32) = v13;
      v9 = v12[0];
      v8 = v12[1];
      *(&v12[0] + 1) = 0;
      *a1 = v9;
      *(a1 + 16) = v8;
    }
  }

  else
  {
    *(a1 + 40) &= ~1u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
  }

  if (v15)
  {
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }
}

void sub_298B70D34(__int128 *a1)
{
  v2 = 0;
  if (*(a1 + 1) >= 8uLL && **a1 == 0xA3E66616769623CLL)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_298B70E7C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v71 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2A1F1D640;
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 64) = 0u;
  v8 = (a1 + 64);
  *(a1 + 80) = 0u;
  v9 = (a1 + 80);
  *(a1 + 96) = 0u;
  v10 = (a1 + 96);
  *(a1 + 112) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  if (*(a1 + 24) < 8uLL)
  {
LABEL_2:
    operator new();
  }

  v11 = *(a1 + 16);
  if (*v11 == 0xA3E6E6968743C21)
  {
    v12 = *(a1 + 114) | 8;
    goto LABEL_9;
  }

  if (*v11 == 0xA3E686372613C21)
  {
    v12 = *(a1 + 114) & 0xF7;
LABEL_9:
    *(a1 + 114) = v12 & 0xF8;
    sub_298B71C4C(&v63, a1, a3);
    if (!*a3)
    {
      if (v66 >= 8 && v64)
      {
        (*(**(&v63 + 1) + 24))(&v61);
        v13 = v61;
        if (v62)
        {
          *&v61 = 0;
          *a3 = v13;
LABEL_159:
          if (v62)
          {
            v45 = v61;
            *&v61 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }
          }

          goto LABEL_162;
        }

        v14 = *(&v61 + 1);
        if (*(&v61 + 1) == 12)
        {
          if (*v61 == 0x45444D59532E5F5FLL && *(v61 + 8) == 875978566)
          {
            v16 = 4;
            goto LABEL_29;
          }
        }

        else
        {
          if (*(&v61 + 1) == 9)
          {
            if (*v61 != 0x45444D59532E5F5FLL || *(v61 + 8) != 70)
            {
              goto LABEL_34;
            }

            v16 = 2;
LABEL_29:
            *(a1 + 114) = *(a1 + 114) & 0xF8 | v16;
            sub_298B701E4(&v59, &v63);
            if (v60)
            {
LABEL_55:
              v23 = v59;
LABEL_56:
              *a3 = v23;
              goto LABEL_159;
            }

            *v7 = v59;
            sub_298B708EC(&v67, &v63);
            v18 = v67;
            if ((v70 & 1) == 0)
            {
              v31 = *(&v63 + 1);
              v63 = v67;
              if (v31)
              {
                (*(*v31 + 16))(v31);
              }

              v32 = v68;
              goto LABEL_72;
            }

LABEL_31:
            if (v18)
            {
              *(v66 & 0xFFFFFFFFFFFFFFF8) = v18;
              v66 = v66 & 3 | 4;
              goto LABEL_74;
            }

LABEL_73:
            *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_74:
            v23 = *a3;
            if (*a3)
            {
              goto LABEL_159;
            }

            goto LABEL_75;
          }

          if (*(&v61 + 1) < 3uLL)
          {
            goto LABEL_38;
          }
        }

LABEL_34:
        if (*v61 != 12579 || *(v61 + 2) != 47)
        {
LABEL_38:
          if (*(&v61 + 1) == 7)
          {
            if (*v61 == 1297699631 && *(v61 + 3) == 791950925)
            {
              goto LABEL_54;
            }

            if (*v61 == 47)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if (*(&v61 + 1) != 1)
            {
              v22 = 0;
              if (*(&v61 + 1) != 2)
              {
                goto LABEL_132;
              }

              goto LABEL_51;
            }

            if (*v61 == 47)
            {
LABEL_54:
              sub_298B701E4(&v59, &v63);
              if (v60)
              {
                goto LABEL_55;
              }

              *v7 = v59;
              v22 = v14 == 7 && *v13 == 1297699631 && *(v13 + 3) == 791950925;
              sub_298B708EC(&v67, &v63);
              if (v70)
              {
                if (v67)
                {
                  *(v66 & 0xFFFFFFFFFFFFFFF8) = v67;
                  v66 = v66 & 3 | 4;
                  goto LABEL_93;
                }
              }

              else
              {
                v34 = *(&v63 + 1);
                v63 = v67;
                if (v34)
                {
                  (*(*v34 + 16))(v34);
                }

                v64 = v68;
                v65 = v69;
              }

              *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_93:
              if (*a3)
              {
                goto LABEL_159;
              }

              if (v66 < 8 || !v64)
              {
                *a3 = 0;
                goto LABEL_159;
              }

              (*(**(&v63 + 1) + 24))(&v67);
              v13 = v67;
              if (v68)
              {
                *a3 = v67;
                goto LABEL_159;
              }

              v14 = *(&v67 + 1);
              if (*(&v67 + 1) != 2)
              {
LABEL_132:
                if (*v13 == 47)
                {
                  if (v14 == 1)
                  {
                    *(a1 + 114) = *(a1 + 114) & 0xF8 | 5;
                    sub_298B701E4(&v59, &v63);
                    if (v60)
                    {
                      goto LABEL_55;
                    }

                    *v7 = v59;
                    sub_298B708EC(&v67, &v63);
                    if (v70)
                    {
                      if (v67)
                      {
                        *(v66 & 0xFFFFFFFFFFFFFFF8) = v67;
                        v66 = v66 & 3 | 4;
                        goto LABEL_145;
                      }
                    }

                    else
                    {
                      v41 = *(&v63 + 1);
                      v63 = v67;
                      if (v41)
                      {
                        (*(*v41 + 16))(v41);
                      }

                      v64 = v68;
                      v65 = v69;
                    }

                    *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_145:
                    if (*a3)
                    {
                      goto LABEL_159;
                    }

                    if (v66 < 8 || !v64)
                    {
                      goto LABEL_139;
                    }

                    (*(**(&v63 + 1) + 24))(&v67);
                    v42 = v62;
                    if (v62)
                    {
                      v43 = v61;
                      *&v61 = 0;
                      if (v43)
                      {
                        (*(*v43 + 8))(v43);
                        v42 = v62;
                      }
                    }

                    v62 = v42 & 0xFE | v68 & 1;
                    if (v68)
                    {
                      goto LABEL_152;
                    }

                    v61 = v67;
                    v49 = *(&v67 + 1);
                    v48 = v67;
                    if (*(&v67 + 1) != 2)
                    {
LABEL_183:
                      if (v49 != 13)
                      {
                        goto LABEL_139;
                      }

                      v53 = *v48;
                      v54 = *(v48 + 5);
                      if (v53 != 0x424D595343453C2FLL || v54 != 0x2F3E534C4F424D59)
                      {
                        goto LABEL_139;
                      }

                      sub_298B701E4(&v57, &v63);
                      if (v58)
                      {
LABEL_190:
                        v23 = v57;
                        goto LABEL_56;
                      }

                      *v8 = v57;
                      sub_298B708EC(&v67, &v63);
                      if (v70)
                      {
                        if (v67)
                        {
                          *(v66 & 0xFFFFFFFFFFFFFFF8) = v67;
                          v66 = v66 & 3 | 4;
                          goto LABEL_198;
                        }
                      }

                      else
                      {
                        v56 = *(&v63 + 1);
                        v63 = v67;
                        if (v56)
                        {
                          (*(*v56 + 16))(v56);
                        }

                        v64 = v68;
                        v65 = v69;
                      }

                      *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_198:
                      if (*a3)
                      {
                        goto LABEL_159;
                      }

                      goto LABEL_139;
                    }

                    if (*v67 == 12079)
                    {
                      sub_298B701E4(&v57, &v63);
                      if (v58)
                      {
                        goto LABEL_190;
                      }

                      *v9 = v57;
                      sub_298B708EC(&v67, &v63);
                      if (v70)
                      {
                        if (v67)
                        {
                          *(v66 & 0xFFFFFFFFFFFFFFF8) = v67;
                          v66 = v66 & 3 | 4;
LABEL_175:
                          if (*a3)
                          {
                            goto LABEL_159;
                          }

                          if (v66 >= 8 && v64)
                          {
                            (*(**(&v63 + 1) + 24))(&v67);
                            v51 = v62;
                            if (v62)
                            {
                              v52 = v61;
                              *&v61 = 0;
                              if (v52)
                              {
                                (*(*v52 + 8))(v52);
                                v51 = v62;
                              }
                            }

                            v62 = v51 & 0xFE | v68 & 1;
                            if (v68)
                            {
LABEL_152:
                              v23 = v67;
                              *&v61 = 0;
                              goto LABEL_56;
                            }

                            v61 = v67;
                            v49 = *(&v67 + 1);
                            v48 = v67;
                            goto LABEL_183;
                          }

                          v23 = 0;
LABEL_75:
                          *v10 = v64;
                          *(a1 + 112) = v65;
                          goto LABEL_56;
                        }
                      }

                      else
                      {
                        v50 = *(&v63 + 1);
                        v63 = v67;
                        if (v50)
                        {
                          (*(*v50 + 16))(v50);
                        }

                        v64 = v68;
                        v65 = v69;
                      }

                      *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
                      goto LABEL_175;
                    }

LABEL_139:
                    *v10 = v64;
                    *(a1 + 112) = v65;
                    *a3 = 0;
                    goto LABEL_159;
                  }

LABEL_140:
                  v40 = sub_298B74304();
                  *&v67 = &unk_2A1F1DB10;
                  *(&v67 + 1) = 3;
                  *&v68 = v40;
                  operator new();
                }

LABEL_138:
                *(a1 + 114) = *(a1 + 114) & 0xF8 | v22;
                goto LABEL_139;
              }

LABEL_51:
              if (*v13 != 12079)
              {
                if (*v13 == 47)
                {
                  goto LABEL_140;
                }

                goto LABEL_138;
              }

              *(a1 + 114) = *(a1 + 114) & 0xF8 | v22;
              sub_298B701E4(&v59, &v63);
              if (v60)
              {
                goto LABEL_55;
              }

              *v9 = v59;
              sub_298B708EC(&v67, &v63);
              v18 = v67;
              if ((v70 & 1) == 0)
              {
                v35 = *(&v63 + 1);
                v63 = v67;
                if (v35)
                {
                  (*(*v35 + 16))(v35);
                }

                v32 = v68;
LABEL_72:
                v64 = v32;
                v65 = v69;
                goto LABEL_73;
              }

              goto LABEL_31;
            }
          }

          v22 = 0;
          goto LABEL_138;
        }

        *(a1 + 114) = *(a1 + 114) & 0xF8 | 2;
        (*(**(&v63 + 1) + 72))(&v59);
        if (BYTE8(v59))
        {
          v20 = v59;
LABEL_61:
          *a3 = v20;
          goto LABEL_159;
        }

        v24 = v59;
        v25 = *(&v63 + 1);
        v26 = (*(**(&v63 + 1) + 104))(*(&v63 + 1));
        (*(*v25 + 64))(&v67, v25, v26 + v24);
        v27 = v68;
        v28 = *(&v67 + 1);
        v20 = v67;
        if (BYTE8(v59))
        {
          v29 = v59;
          *&v59 = 0;
          if (v29)
          {
            (*(*v29 + 8))(v29);
          }
        }

        if (v27)
        {
          goto LABEL_61;
        }

        if (v28 > 15)
        {
          if (v28 == 19)
          {
            if (*v20 != 0x45444D59532E5F5FLL || v20[1] != 0x524F532034365F46 || *(v20 + 11) != 0x444554524F532034)
            {
              goto LABEL_158;
            }

LABEL_127:
            *(a1 + 114) = *(a1 + 114) & 0xF8 | 4;
            sub_298B701E4(&v59, &v63);
            if (v60)
            {
              goto LABEL_55;
            }

            goto LABEL_128;
          }

          if (v28 != 16)
          {
            goto LABEL_158;
          }

          if (*v20 != 0x45444D59532E5F5FLL || v20[1] != 0x444554524F532046)
          {
            goto LABEL_158;
          }
        }

        else
        {
          if (v28 != 9)
          {
            if (v28 != 12)
            {
              goto LABEL_158;
            }

            if (*v20 != 0x45444D59532E5F5FLL || *(v20 + 2) != 875978566)
            {
              goto LABEL_158;
            }

            goto LABEL_127;
          }

          if (*v20 != 0x45444D59532E5F5FLL || *(v20 + 8) != 70)
          {
            goto LABEL_158;
          }
        }

        sub_298B701E4(&v59, &v63);
        if (v60)
        {
          goto LABEL_55;
        }

LABEL_128:
        *v7 = v59;
        sub_298B708EC(&v67, &v63);
        if (v70)
        {
          if (v67)
          {
            *(v66 & 0xFFFFFFFFFFFFFFF8) = v67;
            v66 = v66 & 3 | 4;
            goto LABEL_157;
          }
        }

        else
        {
          v44 = *(&v63 + 1);
          v63 = v67;
          if (v44)
          {
            (*(*v44 + 16))(v44);
          }

          v64 = v68;
          v65 = v69;
        }

        *(v66 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_157:
        if (*a3)
        {
          goto LABEL_159;
        }

LABEL_158:
        *v10 = v64;
        *(a1 + 112) = v65;
        goto LABEL_159;
      }

      *a3 = 0;
    }

LABEL_162:
    v46 = *(&v63 + 1);
    *(&v63 + 1) = 0;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    return a1;
  }

  if (*v11 != 0xA3E66616769623CLL)
  {
    goto LABEL_2;
  }

  *(a1 + 114) = *(a1 + 114) & 0xF0 | 6;
  return a1;
}

void (***sub_298B71C4C(uint64_t a1, void *a2, void *a3))(uint64_t *__return_ptr)
{
  result = (*(*a2 + 32))(a2);
  if (result)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    *(a1 + 40) = 0;
    return result;
  }

  v7 = a2[2];
  v8 = (*(*a2 + 40))(a2);
  sub_298B6F8D8(&v13, a2, v7 + v8, a3);
  if (*a3)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    *(a1 + 40) = 0;
    result = v14;
    v14 = 0;
    if (!result)
    {
      return result;
    }

    return ((*result)[2])(result);
  }

  v12 = v15;
  v9 = v16;
  v10 = v13;
  if (v14)
  {
    (**v14)(&v17);
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  *(a1 + 40) = a3;
  result = v14;
  v14 = 0;
  if (result)
  {
    return ((*result)[2])(result);
  }

  return result;
}

uint64_t sub_298B71DE4(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v81 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  *v74 = *a2;
  v75 = v5;
  v6 = sub_298B70E7C(a1, v74, a3);
  *v6 = &unk_2A1F1D680;
  *(v6 + 152) = 0u;
  v7 = (v6 + 152);
  *(v6 + 168) = 0u;
  v8 = v6 + 168;
  *(v6 + 178) = 0u;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v6 + 144) = v9;
  v64 = v10;
  if (v10 <= 0x7F)
  {
    v66 = "malformed AIX big archive: incomplete fixed length header, the archive is only";
    *&v68 = &v64;
    LOWORD(v69) = 3331;
    v11 = " byte(s)";
    goto LABEL_168;
  }

  v75 = 0uLL;
  v74[0] = 0x100000000;
  v74[1] = 0;
  v12 = v9 + 68;
  if ((*(v74 + ((v9[87] >> 3) & 0x18)) >> v9[87]))
  {
    if ((*(v74 + ((v9[86] >> 3) & 0x18)) >> v9[86]))
    {
      if ((*(v74 + ((v9[85] >> 3) & 0x18)) >> v9[85]))
      {
        if ((*(v74 + ((v9[84] >> 3) & 0x18)) >> v9[84]))
        {
          if ((*(v74 + ((v9[83] >> 3) & 0x18)) >> v9[83]))
          {
            if ((*(v74 + ((v9[82] >> 3) & 0x18)) >> v9[82]))
            {
              if ((*(v74 + ((v9[81] >> 3) & 0x18)) >> v9[81]))
              {
                if ((*(v74 + ((v9[80] >> 3) & 0x18)) >> v9[80]))
                {
                  if ((*(v74 + ((v9[79] >> 3) & 0x18)) >> v9[79]))
                  {
                    if ((*(v74 + ((v9[78] >> 3) & 0x18)) >> v9[78]))
                    {
                      if ((*(v74 + ((v9[77] >> 3) & 0x18)) >> v9[77]))
                      {
                        if ((*(v74 + ((v9[76] >> 3) & 0x18)) >> v9[76]))
                        {
                          if ((*(v74 + ((v9[75] >> 3) & 0x18)) >> v9[75]))
                          {
                            if ((*(v74 + ((v9[74] >> 3) & 0x18)) >> v9[74]))
                            {
                              if ((*(v74 + ((v9[73] >> 3) & 0x18)) >> v9[73]))
                              {
                                if ((*(v74 + ((v9[72] >> 3) & 0x18)) >> v9[72]))
                                {
                                  if ((*(v74 + ((v9[71] >> 3) & 0x18)) >> v9[71]))
                                  {
                                    if ((*(v74 + ((v9[70] >> 3) & 0x18)) >> v9[70]))
                                    {
                                      if ((*(v74 + ((v9[69] >> 3) & 0x18)) >> v9[69]))
                                      {
                                        v13 = (~*(v74 + ((*v12 >> 3) & 0x18)) >> *v12) & 1;
                                      }

                                      else
                                      {
                                        v13 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v13 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v13 = 4;
                                  }
                                }

                                else
                                {
                                  v13 = 5;
                                }
                              }

                              else
                              {
                                v13 = 6;
                              }
                            }

                            else
                            {
                              v13 = 7;
                            }
                          }

                          else
                          {
                            v13 = 8;
                          }
                        }

                        else
                        {
                          v13 = 9;
                        }
                      }

                      else
                      {
                        v13 = 10;
                      }
                    }

                    else
                    {
                      v13 = 11;
                    }
                  }

                  else
                  {
                    v13 = 12;
                  }
                }

                else
                {
                  v13 = 13;
                }
              }

              else
              {
                v13 = 14;
              }
            }

            else
            {
              v13 = 15;
            }
          }

          else
          {
            v13 = 16;
          }
        }

        else
        {
          v13 = 17;
        }
      }

      else
      {
        v13 = 18;
      }
    }

    else
    {
      v13 = 19;
    }
  }

  else
  {
    v13 = 20;
  }

  v74[0] = 0;
  if (sub_298B97354(v12, v13, 0xAu, v74))
  {
    LOWORD(v69) = 1283;
    v66 = "malformed AIX big archive: first member offset ";
    *&v68 = v12;
    *(&v68 + 1) = v13;
    v74[0] = &v66;
    *&v75 = " is not a number";
    LOWORD(v76) = 770;
    sub_298B6DDE8(&v65, v74);
  }

  *v7 = v74[0];
  v14 = *(a1 + 144);
  v75 = 0uLL;
  v74[0] = 0x100000000;
  v74[1] = 0;
  v15 = v14 + 88;
  if ((*(v74 + ((v14[107] >> 3) & 0x18)) >> v14[107]))
  {
    if ((*(v74 + ((v14[106] >> 3) & 0x18)) >> v14[106]))
    {
      if ((*(v74 + ((v14[105] >> 3) & 0x18)) >> v14[105]))
      {
        if ((*(v74 + ((v14[104] >> 3) & 0x18)) >> v14[104]))
        {
          if ((*(v74 + ((v14[103] >> 3) & 0x18)) >> v14[103]))
          {
            if ((*(v74 + ((v14[102] >> 3) & 0x18)) >> v14[102]))
            {
              if ((*(v74 + ((v14[101] >> 3) & 0x18)) >> v14[101]))
              {
                if ((*(v74 + ((v14[100] >> 3) & 0x18)) >> v14[100]))
                {
                  if ((*(v74 + ((v14[99] >> 3) & 0x18)) >> v14[99]))
                  {
                    if ((*(v74 + ((v14[98] >> 3) & 0x18)) >> v14[98]))
                    {
                      if ((*(v74 + ((v14[97] >> 3) & 0x18)) >> v14[97]))
                      {
                        if ((*(v74 + ((v14[96] >> 3) & 0x18)) >> v14[96]))
                        {
                          if ((*(v74 + ((v14[95] >> 3) & 0x18)) >> v14[95]))
                          {
                            if ((*(v74 + ((v14[94] >> 3) & 0x18)) >> v14[94]))
                            {
                              if ((*(v74 + ((v14[93] >> 3) & 0x18)) >> v14[93]))
                              {
                                if ((*(v74 + ((v14[92] >> 3) & 0x18)) >> v14[92]))
                                {
                                  if ((*(v74 + ((v14[91] >> 3) & 0x18)) >> v14[91]))
                                  {
                                    if ((*(v74 + ((v14[90] >> 3) & 0x18)) >> v14[90]))
                                    {
                                      if ((*(v74 + ((v14[89] >> 3) & 0x18)) >> v14[89]))
                                      {
                                        v16 = (~*(v74 + ((*v15 >> 3) & 0x18)) >> *v15) & 1;
                                      }

                                      else
                                      {
                                        v16 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v16 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v16 = 4;
                                  }
                                }

                                else
                                {
                                  v16 = 5;
                                }
                              }

                              else
                              {
                                v16 = 6;
                              }
                            }

                            else
                            {
                              v16 = 7;
                            }
                          }

                          else
                          {
                            v16 = 8;
                          }
                        }

                        else
                        {
                          v16 = 9;
                        }
                      }

                      else
                      {
                        v16 = 10;
                      }
                    }

                    else
                    {
                      v16 = 11;
                    }
                  }

                  else
                  {
                    v16 = 12;
                  }
                }

                else
                {
                  v16 = 13;
                }
              }

              else
              {
                v16 = 14;
              }
            }

            else
            {
              v16 = 15;
            }
          }

          else
          {
            v16 = 16;
          }
        }

        else
        {
          v16 = 17;
        }
      }

      else
      {
        v16 = 18;
      }
    }

    else
    {
      v16 = 19;
    }
  }

  else
  {
    v16 = 20;
  }

  v74[0] = 0;
  if (sub_298B97354(v15, v16, 0xAu, v74))
  {
    LOWORD(v69) = 1283;
    v66 = "malformed AIX big archive: last member offset ";
    *&v68 = v15;
    *(&v68 + 1) = v16;
    v74[0] = &v66;
    *&v75 = " is not a number";
    LOWORD(v76) = 770;
    sub_298B6DDE8(&v65, v74);
  }

  *(a1 + 160) = v74[0];
  v17 = *(a1 + 144);
  v75 = 0uLL;
  v74[0] = 0x100000000;
  v74[1] = 0;
  v18 = v17 + 28;
  if ((*(v74 + ((v17[47] >> 3) & 0x18)) >> v17[47]))
  {
    if ((*(v74 + ((v17[46] >> 3) & 0x18)) >> v17[46]))
    {
      if ((*(v74 + ((v17[45] >> 3) & 0x18)) >> v17[45]))
      {
        if ((*(v74 + ((v17[44] >> 3) & 0x18)) >> v17[44]))
        {
          if ((*(v74 + ((v17[43] >> 3) & 0x18)) >> v17[43]))
          {
            if ((*(v74 + ((v17[42] >> 3) & 0x18)) >> v17[42]))
            {
              if ((*(v74 + ((v17[41] >> 3) & 0x18)) >> v17[41]))
              {
                if ((*(v74 + ((v17[40] >> 3) & 0x18)) >> v17[40]))
                {
                  if ((*(v74 + ((v17[39] >> 3) & 0x18)) >> v17[39]))
                  {
                    if ((*(v74 + ((v17[38] >> 3) & 0x18)) >> v17[38]))
                    {
                      if ((*(v74 + ((v17[37] >> 3) & 0x18)) >> v17[37]))
                      {
                        if ((*(v74 + ((v17[36] >> 3) & 0x18)) >> v17[36]))
                        {
                          if ((*(v74 + ((v17[35] >> 3) & 0x18)) >> v17[35]))
                          {
                            if ((*(v74 + ((v17[34] >> 3) & 0x18)) >> v17[34]))
                            {
                              if ((*(v74 + ((v17[33] >> 3) & 0x18)) >> v17[33]))
                              {
                                if ((*(v74 + ((v17[32] >> 3) & 0x18)) >> v17[32]))
                                {
                                  if ((*(v74 + ((v17[31] >> 3) & 0x18)) >> v17[31]))
                                  {
                                    if ((*(v74 + ((v17[30] >> 3) & 0x18)) >> v17[30]))
                                    {
                                      if ((*(v74 + ((v17[29] >> 3) & 0x18)) >> v17[29]))
                                      {
                                        v19 = (~*(v74 + ((*v18 >> 3) & 0x18)) >> *v18) & 1;
                                      }

                                      else
                                      {
                                        v19 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v19 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v19 = 4;
                                  }
                                }

                                else
                                {
                                  v19 = 5;
                                }
                              }

                              else
                              {
                                v19 = 6;
                              }
                            }

                            else
                            {
                              v19 = 7;
                            }
                          }

                          else
                          {
                            v19 = 8;
                          }
                        }

                        else
                        {
                          v19 = 9;
                        }
                      }

                      else
                      {
                        v19 = 10;
                      }
                    }

                    else
                    {
                      v19 = 11;
                    }
                  }

                  else
                  {
                    v19 = 12;
                  }
                }

                else
                {
                  v19 = 13;
                }
              }

              else
              {
                v19 = 14;
              }
            }

            else
            {
              v19 = 15;
            }
          }

          else
          {
            v19 = 16;
          }
        }

        else
        {
          v19 = 17;
        }
      }

      else
      {
        v19 = 18;
      }
    }

    else
    {
      v19 = 19;
    }
  }

  else
  {
    v19 = 20;
  }

  v74[0] = 0;
  if (sub_298B97354(v18, v19, 0xAu, v74))
  {
    LOWORD(v69) = 1283;
    v66 = "global symbol table offset of 32-bit members ";
    *&v68 = v18;
    *(&v68 + 1) = v19;
LABEL_167:
    v11 = " is not a number";
LABEL_168:
    v74[0] = &v66;
    *&v75 = v11;
    LOWORD(v76) = 770;
    sub_298B6DDE8(&v65, v74);
  }

  v20 = v74[0];
  v21 = *(a1 + 144);
  v75 = 0uLL;
  v74[0] = 0x100000000;
  v74[1] = 0;
  v22 = v21 + 48;
  if ((*(v74 + ((v21[67] >> 3) & 0x18)) >> v21[67]))
  {
    if ((*(v74 + ((v21[66] >> 3) & 0x18)) >> v21[66]))
    {
      if ((*(v74 + ((v21[65] >> 3) & 0x18)) >> v21[65]))
      {
        if ((*(v74 + ((v21[64] >> 3) & 0x18)) >> v21[64]))
        {
          if ((*(v74 + ((v21[63] >> 3) & 0x18)) >> v21[63]))
          {
            if ((*(v74 + ((v21[62] >> 3) & 0x18)) >> v21[62]))
            {
              if ((*(v74 + ((v21[61] >> 3) & 0x18)) >> v21[61]))
              {
                if ((*(v74 + ((v21[60] >> 3) & 0x18)) >> v21[60]))
                {
                  if ((*(v74 + ((v21[59] >> 3) & 0x18)) >> v21[59]))
                  {
                    if ((*(v74 + ((v21[58] >> 3) & 0x18)) >> v21[58]))
                    {
                      if ((*(v74 + ((v21[57] >> 3) & 0x18)) >> v21[57]))
                      {
                        if ((*(v74 + ((v21[56] >> 3) & 0x18)) >> v21[56]))
                        {
                          if ((*(v74 + ((v21[55] >> 3) & 0x18)) >> v21[55]))
                          {
                            if ((*(v74 + ((v21[54] >> 3) & 0x18)) >> v21[54]))
                            {
                              if ((*(v74 + ((v21[53] >> 3) & 0x18)) >> v21[53]))
                              {
                                if ((*(v74 + ((v21[52] >> 3) & 0x18)) >> v21[52]))
                                {
                                  if ((*(v74 + ((v21[51] >> 3) & 0x18)) >> v21[51]))
                                  {
                                    if ((*(v74 + ((v21[50] >> 3) & 0x18)) >> v21[50]))
                                    {
                                      if ((*(v74 + ((v21[49] >> 3) & 0x18)) >> v21[49]))
                                      {
                                        v23 = (~*(v74 + ((*v22 >> 3) & 0x18)) >> *v22) & 1;
                                      }

                                      else
                                      {
                                        v23 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v23 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v23 = 4;
                                  }
                                }

                                else
                                {
                                  v23 = 5;
                                }
                              }

                              else
                              {
                                v23 = 6;
                              }
                            }

                            else
                            {
                              v23 = 7;
                            }
                          }

                          else
                          {
                            v23 = 8;
                          }
                        }

                        else
                        {
                          v23 = 9;
                        }
                      }

                      else
                      {
                        v23 = 10;
                      }
                    }

                    else
                    {
                      v23 = 11;
                    }
                  }

                  else
                  {
                    v23 = 12;
                  }
                }

                else
                {
                  v23 = 13;
                }
              }

              else
              {
                v23 = 14;
              }
            }

            else
            {
              v23 = 15;
            }
          }

          else
          {
            v23 = 16;
          }
        }

        else
        {
          v23 = 17;
        }
      }

      else
      {
        v23 = 18;
      }
    }

    else
    {
      v23 = 19;
    }
  }

  else
  {
    v23 = 20;
  }

  v74[0] = 0;
  if (sub_298B97354(v22, v23, 0xAu, v74))
  {
    LOWORD(v69) = 1283;
    v66 = "global symbol table offset of 64-bit members";
    *&v68 = v22;
    *(&v68 + 1) = v23;
    goto LABEL_167;
  }

  v25 = v74[0];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  if (v20)
  {
    sub_298B72F5C(v74, *(a1 + 16), *(a1 + 24), v20, &v63, &v61, "32-bit");
    v28 = v74[0];
    *a3 = v74[0];
    if (v28)
    {
      return a1;
    }

    *(a1 + 192) = 1;
  }

  if (v25)
  {
    sub_298B72F5C(v74, v26, v27, v25, &v62, &v60, "64-bit");
    v29 = v74[0];
    *a3 = v74[0];
    if (v29)
    {
      return a1;
    }

    *(a1 + 193) = 1;
  }

  v74[0] = &v75;
  v74[1] = 0x100000000;
  if (v20)
  {
    v30 = bswap64(*(v63 + 114));
    v31 = (8 * v30 + 8);
    *&v75 = v30;
    *(&v75 + 1) = v63 + 114;
    v76 = v61;
    v77 = v63 + 122;
    v78 = 8 * v30;
    v79 = v63 + 114 + v31;
    v80 = v61 - v31;
    v32 = 1;
    LODWORD(v74[1]) = 1;
  }

  else
  {
    v32 = 0;
  }

  if (v25)
  {
    v33 = bswap64(*(v62 + 114));
    v34 = (8 * v33 + 8);
    v66 = v33;
    v67 = v62 + 114;
    *&v68 = v60;
    *(&v68 + 1) = v62 + 122;
    v69 = (8 * v33);
    v70 = v62 + 114 + v34;
    v71 = v60 - v34;
    v35 = &v66;
    if (v20)
    {
      if (&v75 <= &v66 && &v75 + 56 * v32 > &v66)
      {
        sub_298B90A44(v74, &v75, v32 + 1, 56);
        v36 = v74[0];
        v35 = (v74[0] + &v66 - &v75);
      }

      else
      {
        sub_298B90A44(v74, &v75, v32 + 1, 56);
        v35 = &v66;
        v36 = v74[0];
      }
    }

    else
    {
      v36 = &v75;
    }

    v37 = v36 + 56 * LODWORD(v74[1]);
    v38 = *v35;
    v39 = *(v35 + 1);
    v40 = *(v35 + 2);
    *(v37 + 6) = v35[6];
    *(v37 + 1) = v39;
    *(v37 + 2) = v40;
    *v37 = v38;
    v32 = ++LODWORD(v74[1]);
  }

  if (v32 == 2)
  {
    LODWORD(v67) = 0;
    LOBYTE(v70) = 0;
    v71 = 0;
    v72 = 1;
    v69 = 0;
    v68 = 0uLL;
    v66 = &unk_2A1F1E040;
    v73 = v8;
    sub_298ADDDB0(&v66);
    v42 = *(v74[0] + 7) + *v74[0];
    v65 = bswap64(v42);
    sub_298B9BCEC(&v66, &v65, 8uLL);
    v43 = *(v74[0] + 3);
    v44 = *(v74[0] + 4);
    v45 = v69;
    if (v44 <= *(&v68 + 1) - v69)
    {
      if (v44)
      {
        v46 = *(v74[0] + 4);
        memcpy(v69, v43, v44);
        v45 = &v69[v46];
        v69 += v46;
      }
    }

    else
    {
      sub_298B9BCEC(&v66, v43, v44);
      v45 = v69;
    }

    v47 = *(v74[0] + 10);
    v48 = *(v74[0] + 11);
    if (v48 <= *(&v68 + 1) - v45)
    {
      if (v48)
      {
        v49 = *(v74[0] + 11);
        memcpy(v45, v47, v48);
        v45 = &v69[v49];
        v69 += v49;
      }
    }

    else
    {
      sub_298B9BCEC(&v66, v47, v48);
      v45 = v69;
    }

    v50 = *(v74[0] + 5);
    v51 = *(v74[0] + 6);
    if (v51 <= *(&v68 + 1) - v45)
    {
      if (v51)
      {
        v52 = *(v74[0] + 6);
        memcpy(v45, v50, v51);
        v45 = &v69[v52];
        v69 += v52;
      }
    }

    else
    {
      sub_298B9BCEC(&v66, v50, v51);
      v45 = v69;
    }

    v53 = *(v74[0] + 12);
    v54 = *(v74[0] + 13);
    if (v54 <= *(&v68 + 1) - v45)
    {
      if (v54)
      {
        v55 = *(v74[0] + 13);
        memcpy(v45, v53, v54);
        v69 += v55;
      }
    }

    else
    {
      sub_298B9BCEC(&v66, v53, v54);
    }

    v56 = *(a1 + 191);
    v57 = *(a1 + 168);
    if (v56 >= 0)
    {
      v57 = v8;
    }

    if (v56 < 0)
    {
      v56 = *(a1 + 176);
    }

    *(a1 + 48) = v57;
    *(a1 + 56) = v56;
    v58 = v57 + 8 * v42 + 8;
    v59 = *(v74[0] + 13) + *(v74[0] + 6);
    *(a1 + 80) = v58;
    *(a1 + 88) = v59;
    sub_298B9AE14(&v66);
  }

  else if (v32 == 1)
  {
    v41 = v74[0];
    *(a1 + 48) = *(v74[0] + 8);
    *(a1 + 80) = *(v41 + 40);
  }

  sub_298B71C4C(&v66, a1, a3);
  if (!*a3)
  {
    if (v70 >= 8 && v68)
    {
      *(a1 + 96) = v68;
      *(a1 + 112) = v69;
    }

    *a3 = 0;
  }

  if (v67)
  {
    (*(*v67 + 16))(v67);
  }

  if (v74[0] != &v75)
  {
    free(v74[0]);
  }

  return a1;
}

void sub_298B72F5C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6, const char *a7)
{
  v8 = a4 + 114;
  v51 = a4 + 114;
  v52 = a4;
  if (a4 + 114 > a3)
  {
    v9 = *a7;
    v10 = " global symbol table header at offset 0x";
    if (*a7)
    {
      v33 = " global symbol table header at offset 0x";
      v11 = 3;
      v12 = 2;
      v10 = a7;
    }

    else
    {
      v11 = 1;
      v12 = 3;
    }

    v34 = 3;
    v35 = v11;
    v18 = v9 == 0;
    v19 = v32;
    if (v18)
    {
      v19 = v10;
    }

    v36[0] = v19;
    v37 = &v52;
    v38 = v12;
    v39 = 15;
    v40[0] = v36;
    v41 = " and size 0x";
    v42 = 770;
    v31 = 114;
    v32[0] = v10;
    v43[0] = v40;
    v44 = &v31;
LABEL_28:
    v46 = 3842;
    v47[0] = v43;
    v48 = " goes past the end of file";
    goto LABEL_59;
  }

  v13 = (a2 + a4);
  *a5 = a2 + a4;
  v48 = 0;
  v49 = 0;
  v47[0] = 0x100000000;
  v47[1] = 0;
  if ((*(v47 + ((*(a2 + a4 + 19) >> 3) & 0x18)) >> *(a2 + a4 + 19)))
  {
    if ((*(v47 + ((v13[18] >> 3) & 0x18)) >> v13[18]))
    {
      if ((*(v47 + ((v13[17] >> 3) & 0x18)) >> v13[17]))
      {
        if ((*(v47 + ((v13[16] >> 3) & 0x18)) >> v13[16]))
        {
          if ((*(v47 + ((v13[15] >> 3) & 0x18)) >> v13[15]))
          {
            if ((*(v47 + ((v13[14] >> 3) & 0x18)) >> v13[14]))
            {
              if ((*(v47 + ((v13[13] >> 3) & 0x18)) >> v13[13]))
              {
                if ((*(v47 + ((v13[12] >> 3) & 0x18)) >> v13[12]))
                {
                  if ((*(v47 + ((v13[11] >> 3) & 0x18)) >> v13[11]))
                  {
                    if ((*(v47 + ((v13[10] >> 3) & 0x18)) >> v13[10]))
                    {
                      if ((*(v47 + ((v13[9] >> 3) & 0x18)) >> v13[9]))
                      {
                        if ((*(v47 + ((v13[8] >> 3) & 0x18)) >> v13[8]))
                        {
                          if ((*(v47 + ((v13[7] >> 3) & 0x18)) >> v13[7]))
                          {
                            if ((*(v47 + ((v13[6] >> 3) & 0x18)) >> v13[6]))
                            {
                              if ((*(v47 + ((v13[5] >> 3) & 0x18)) >> v13[5]))
                              {
                                if ((*(v47 + ((v13[4] >> 3) & 0x18)) >> v13[4]))
                                {
                                  if ((*(v47 + ((v13[3] >> 3) & 0x18)) >> v13[3]))
                                  {
                                    v14 = a3;
                                    v15 = a6;
                                    v16 = a1;
                                    if ((*(v47 + ((v13[2] >> 3) & 0x18)) >> v13[2]))
                                    {
                                      if ((*(v47 + ((v13[1] >> 3) & 0x18)) >> v13[1]))
                                      {
                                        v17 = (~*(v47 + ((*v13 >> 3) & 0x18)) >> *v13) & 1;
                                      }

                                      else
                                      {
                                        v17 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v17 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v14 = a3;
                                    v15 = a6;
                                    v16 = a1;
                                    v17 = 4;
                                  }
                                }

                                else
                                {
                                  v14 = a3;
                                  v15 = a6;
                                  v16 = a1;
                                  v17 = 5;
                                }
                              }

                              else
                              {
                                v14 = a3;
                                v15 = a6;
                                v16 = a1;
                                v17 = 6;
                              }
                            }

                            else
                            {
                              v14 = a3;
                              v15 = a6;
                              v16 = a1;
                              v17 = 7;
                            }
                          }

                          else
                          {
                            v14 = a3;
                            v15 = a6;
                            v16 = a1;
                            v17 = 8;
                          }
                        }

                        else
                        {
                          v14 = a3;
                          v15 = a6;
                          v16 = a1;
                          v17 = 9;
                        }
                      }

                      else
                      {
                        v14 = a3;
                        v15 = a6;
                        v16 = a1;
                        v17 = 10;
                      }
                    }

                    else
                    {
                      v14 = a3;
                      v15 = a6;
                      v16 = a1;
                      v17 = 11;
                    }
                  }

                  else
                  {
                    v14 = a3;
                    v15 = a6;
                    v16 = a1;
                    v17 = 12;
                  }
                }

                else
                {
                  v14 = a3;
                  v15 = a6;
                  v16 = a1;
                  v17 = 13;
                }
              }

              else
              {
                v14 = a3;
                v15 = a6;
                v16 = a1;
                v17 = 14;
              }
            }

            else
            {
              v14 = a3;
              v15 = a6;
              v16 = a1;
              v17 = 15;
            }
          }

          else
          {
            v14 = a3;
            v15 = a6;
            v16 = a1;
            v17 = 16;
          }
        }

        else
        {
          v14 = a3;
          v15 = a6;
          v16 = a1;
          v17 = 17;
        }
      }

      else
      {
        v14 = a3;
        v15 = a6;
        v16 = a1;
        v17 = 18;
      }
    }

    else
    {
      v14 = a3;
      v15 = a6;
      v16 = a1;
      v17 = 19;
    }
  }

  else
  {
    v14 = a3;
    v15 = a6;
    v16 = a1;
    v17 = 20;
  }

  v47[0] = 0;
  if (sub_298B97354(v13, v17, 0xAu, v47))
  {
    v20 = *a7;
    v21 = " global symbol table size ";
    a1 = v16;
    if (*a7)
    {
      v41 = " global symbol table size ";
      v22 = 3;
      v23 = 2;
      v21 = a7;
    }

    else
    {
      v22 = 1;
      v23 = 3;
    }

    v40[0] = v21;
    LOBYTE(v42) = 3;
    HIBYTE(v42) = v22;
    v18 = v20 == 0;
    v29 = v40;
    if (v18)
    {
      v29 = v21;
    }

    v43[0] = v29;
    v44 = v13;
    v45 = v17;
    LOBYTE(v46) = v23;
    HIBYTE(v46) = 5;
    v47[0] = v43;
    v48 = " is not a number";
LABEL_59:
    v50 = 770;
    sub_298B6DDE8(a1, v47);
  }

  v24 = v47[0];
  *v15 = v47[0];
  a1 = v16;
  if (v24 + v8 > v14)
  {
    v25 = *a7;
    v26 = " global symbol table content at offset 0x";
    if (*a7)
    {
      v33 = " global symbol table content at offset 0x";
      v27 = 3;
      v28 = 2;
      v26 = a7;
    }

    else
    {
      v27 = 1;
      v28 = 3;
    }

    v32[0] = v26;
    v34 = 3;
    v35 = v27;
    v18 = v25 == 0;
    v30 = v32;
    if (v18)
    {
      v30 = v26;
    }

    v36[0] = v30;
    v37 = &v51;
    v38 = v28;
    v39 = 15;
    v40[0] = v36;
    v41 = " and size 0x";
    v42 = 770;
    v43[0] = v40;
    v44 = v15;
    goto LABEL_28;
  }

  *v16 = 0;
}

void *sub_298B73538(void *a1)
{
  *a1 = &unk_2A1F1D640;
  v2 = a1[15];
  if (v2)
  {
    v3 = a1[16];
    v4 = a1[15];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[15];
    }

    a1[16] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_298B735E4(void *a1)
{
  *a1 = &unk_2A1F1D640;
  v2 = a1[15];
  if (v2)
  {
    v3 = a1[16];
    v4 = a1[15];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[15];
    }

    a1[16] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B737CC(uint64_t a1)
{
  *a1 = &unk_2A1F1D680;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      return a1;
    }
  }

  else
  {
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      return a1;
    }
  }

  v3 = *(a1 + 128);
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v6 = *--v3;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    while (v3 != v2);
    v4 = *(a1 + 120);
  }

  *(a1 + 128) = v2;
  operator delete(v4);
  return a1;
}

void sub_298B738CC(uint64_t a1)
{
  *a1 = &unk_2A1F1D680;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = *(a1 + 128);
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v6 = *--v3;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    while (v3 != v2);
    v4 = *(a1 + 120);
  }

  *(a1 + 128) = v2;
  operator delete(v4);
LABEL_10:

  JUMPOUT(0x29C2945F0);
}

void sub_298B73A34(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v6 = &v7;
  v7 = 0;
  v8 = v5;
  sub_298B73BC0(&v8, &v6, &v9);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  operator new();
}

uint64_t sub_298B73BC0@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &unk_2A13C3652))
    {
      v6 = v4[1];
      v7 = v4[2];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          v12 = v8;
          v9 = *v6;
          *v6 = 0;
          if ((*(*v9 + 48))(v9, &unk_2A13C3653))
          {
            v10 = **a2;
            **a2 = v9;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            v9 = 0;
          }

          v11 = v9;
          sub_298ADE6E8(&v12, &v11, &v13);
          v8 = v13;
          v13 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      *a3 = v8;
      return (*(*v4 + 8))(v4);
    }

    else
    {
      result = (*(*v4 + 48))(v4, &unk_2A13C3653);
      if (result)
      {
        result = **a2;
        **a2 = v4;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v4 = 0;
      }

      *a3 = v4;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_298B73E04@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = sub_298CEFFAC(*a1, *(a1 + 8));
  if (v6 - 4 >= 0x11)
  {
    switch(v6)
    {
      case 1u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
        break;
      case 3u:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v10;
        sub_298B70D34(&v11);
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        __break(1u);
        JUMPOUT(0x298B73F80);
      case 0x15u:
        v9 = *(a1 + 16);
        v11 = *a1;
        v12 = v9;
        sub_298B807A0();
      default:
        sub_298B74304();
        result = sub_298B85574(2, a4);
        *(a4 + 8) |= 1u;
        return result;
    }
  }

  v7 = *(a1 + 16);
  v11 = *a1;
  v12 = v7;
  result = sub_298B81D18(&v11, v6, &v13);
  *(a4 + 8) = *(a4 + 8) & 0xFE | v14 & 1;
  *a4 = v13;
  return result;
}

uint64_t *sub_298B74024(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  v3 = result;
  (*(*v2 + 8))(v2);
  return v3;
}

uint64_t sub_298B740BC(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = std::system_category();
  *a1 = &unk_2A1F1D758;
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = 3;
  *(a1 + 16) = off_2A1A99558;
  *a1 = &unk_2A1F1D6C0;
  sub_298B996A4(a2, (a1 + 24));
  return a1;
}

uint64_t sub_298B74198(uint64_t a1, char *a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = std::system_category();
  *a1 = &unk_2A1F1D758;
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = 3;
  *(a1 + 16) = off_2A1A99558;
  *a1 = &unk_2A1F1D6C0;
  sub_298B996A4(a2, (a1 + 24));
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = a3;
  *(a1 + 16) = off_2A1A99558;
  return a1;
}

uint64_t sub_298B742DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v3 = a1 + 24;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_298B9BCEC(a2, v7, v8);
}

void (**sub_298B74304())(std::error_category *__hidden this)
{
  if (atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire))
  {
    return off_2A1A99558;
  }

  if (__cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  return off_2A1A99558;
}

void sub_298B7439C(uint64_t a1, uint64_t a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_298B74414(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2A1F1E040;
  v13 = v14;
  sub_298ADDDB0(&v5);
  (*(*a1 + 16))(a1, &v5);
  if (*(v13 + 23) < 0)
  {
    sub_298AFE11C(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    *(a2 + 16) = v13[2];
    *a2 = v4;
  }

  sub_298B9AE14(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

uint64_t sub_298B74554(uint64_t result)
{
  *result = &unk_2A1F1D6C0;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void sub_298B745B0(uint64_t a1)
{
  *a1 = &unk_2A1F1D6C0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298B74690(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B746D4(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 3)
    {
      operator new();
    }

    operator new();
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      operator new();
    }

    a2[23] = 21;
    strcpy(a2, "Invalid section index");
  }

  else
  {
    if (a1 == 7)
    {
      operator new();
    }

    if (a1 != 8)
    {
      operator new();
    }

    a2[23] = 20;
    strcpy(a2, "Invalid symbol index");
  }
}

uint64_t sub_298B74AD8(uint64_t a1, __int128 *a2, int a3, int a4, uint64_t *a5, int a6, int a7, uint64_t a8)
{
  v31 = *MEMORY[0x29EDCA608];
  v11 = *a2;
  v10 = a2[1];
  if (a4)
  {
    v12 = 19;
  }

  else
  {
    v12 = 17;
  }

  if (a4)
  {
    v13 = 20;
  }

  else
  {
    v13 = 18;
  }

  if (!a3)
  {
    v12 = v13;
  }

  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v10;
  *(a1 + 80) = a1 + 96;
  *a1 = &unk_2A1F1D7A8;
  *(a1 + 88) = 0x100000000;
  *(a1 + 104) = a1 + 120;
  *(a1 + 128) = a1 + 144;
  *(a1 + 112) = 0x100000000;
  *(a1 + 136) = 0x400000000;
  *(a1 + 208) = a1 + 224;
  *(a1 + 216) = 0x100000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x100000000;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a8;
  if ((v12 - 19) > 1)
  {
    v15 = a6;
    v16 = a7;
    sub_298B76950(a1, a1 + 48, a5);
    v18 = 28;
  }

  else
  {
    if (*(a1 + 24) <= 0x1FuLL)
    {
      v29[0] = "truncated or malformed object (";
      v29[2] = "the mach header extends past the end of the file";
      v30 = 771;
      *__s = v29;
      *&v27 = ")";
      LOWORD(v28) = 770;
      operator new();
    }

    v15 = a6;
    v16 = a7;
    sub_298B80500(__s, a1, (*(a1 + 16) + a8));
    if (v28)
    {
      *a5 = *__s;
    }

    else
    {
      v17 = v27;
      *(a1 + 48) = *__s;
      *(a1 + 64) = v17;
    }

    v18 = 32;
  }

  if (!*a5)
  {
    if (v18 + *(a1 + 68) <= *(a1 + 24))
    {
      if (v15)
      {
        if (*(a1 + 52) != v15)
        {
          v24 = "universal header architecture: ";
          v25 = 259;
          v23 = 265;
          LODWORD(v22[0]) = v16;
          sub_298ADC860(&v24, v22, v29);
          v20 = "'s cputype does not match object file's mach header";
          v21 = 259;
          sub_298ADC860(v29, &v20, __s);
          sub_298B76A80(__s);
        }
      }

      v19[0] = v19;
      v19[1] = v19;
      v19[2] = 0;
      operator new();
    }

    *__s = "load commands extend past the end of the file";
    LOWORD(v28) = 259;
    sub_298B76A80(__s);
  }

  return a1;
}

uint64_t sub_298B76950(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 24);
  if (v3 <= 0x1B)
  {
    v4 = "the mach header extends past the end of the file";
    goto LABEL_12;
  }

  v5 = *(result + 360);
  if (v5 < 0 || (v6 = *(result + 16), v7 = v6 + v5, v6 + v5 + 28 > v6 + v3))
  {
    v4 = "Structure read out-of-range";
LABEL_12:
    v16[0] = "truncated or malformed object (";
    v16[2] = v4;
    v17 = 771;
    v18 = v16;
    v19 = ")";
    v20 = 770;
    operator new();
  }

  v9 = *v7;
  v8 = *(v7 + 4);
  v10 = *(v7 + 8);
  v11 = *(v7 + 24);
  v12 = *(result + 8);
  v13 = v12 > 0x14;
  v14 = (1 << v12) & 0x155800;
  if (!v13 && v14 != 0)
  {
    v9 = bswap32(v9);
    v8 = bswap32(v8);
    v10 = vrev32q_s8(v10);
    v11 = bswap32(v11);
  }

  *a2 = v9 | (v8 << 32);
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  return result;
}

void sub_298B76A80(uint64_t *a1)
{
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    v5 = "truncated or malformed object (";
    v8[0] = "truncated or malformed object (";
    v9 = 259;
    v3 = 3;
  }

  else
  {
    if (!*(a1 + 32))
    {
      v3 = 0;
      v9 = 256;
      v4 = 1;
      goto LABEL_9;
    }

    v6 = *a1;
    v7 = a1[1];
    v3 = 2;
    if (*(a1 + 33) != 1)
    {
      LOBYTE(v2) = 2;
      v6 = a1;
    }

    v8[0] = "truncated or malformed object (";
    v8[2] = v6;
    v8[3] = v7;
    LOBYTE(v9) = 3;
    HIBYTE(v9) = v2;
    v5 = v8;
  }

  v10 = v5;
  v11 = ")";
  v4 = 3;
LABEL_9:
  v12 = v3;
  v13 = v4;
  operator new();
}

uint64_t sub_298B76B64(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 64))(a2);
  if (*(a2 + 68) <= 7u)
  {
    v8 = "load command 0 extends past the end all load commands in the file";
    v9 = 259;
    sub_298B76A80(&v8);
  }

  v5 = 28;
  if (v4)
  {
    v5 = 32;
  }

  v6 = (*(a2 + 16) + *(a2 + 360) + v5);

  return sub_298B7ED64(a1, a2, v6, 0);
}

uint64_t *sub_298B76C44(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t *a6)
{
  if (*(a3 + 12) <= 0x17u)
  {
    v48[0] = "load command ";
    v49 = a4;
    v50 = 2307;
    v7 = " LC_SYMTAB cmdsize too small";
LABEL_3:
    v51[0] = v48;
    v51[2] = v7;
    v52 = 770;
    v53[0] = "truncated or malformed object (";
    v54 = v51;
    v55 = 515;
    v56[0] = v53;
    v57 = ")";
    goto LABEL_4;
  }

  if (*a5)
  {
    v56[0] = "more than one LC_SYMTAB command";
    v58 = 259;
LABEL_51:
    sub_298B76A80(v56);
  }

  v8 = *a3;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  if (*a3 < v9 || *a3 + 24 > v9 + v10)
  {
    v53[0] = "truncated or malformed object (";
    v54 = "Structure read out-of-range";
    v55 = 771;
    v56[0] = v53;
    v57 = ")";
LABEL_4:
    v58 = 770;
    operator new();
  }

  v12 = v8[1];
  v13 = v8[2];
  v14 = v8[3];
  v15 = v8[4];
  v16 = *(a2 + 8);
  v17 = bswap32(v12);
  v18 = v8[5];
  v19 = bswap32(v13);
  v20 = bswap32(v14);
  v21 = bswap32(v15);
  v22 = bswap32(v18);
  if (((1 << v16) & 0x155800) == 0)
  {
    v22 = v18;
    v21 = v15;
    v20 = v14;
    v19 = v13;
    v17 = v12;
  }

  if (v16 <= 0x14)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  if (v16 <= 0x14)
  {
    v24 = v21;
  }

  else
  {
    v24 = v15;
  }

  if (v16 <= 0x14)
  {
    v25 = v20;
  }

  else
  {
    v25 = v14;
  }

  if (v16 <= 0x14)
  {
    v26 = v19;
  }

  else
  {
    v26 = v13;
  }

  if (v16 <= 0x14)
  {
    v27 = v17;
  }

  else
  {
    v27 = v12;
  }

  if (v27 != 24)
  {
    v51[0] = "LC_SYMTAB command ";
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
    sub_298ADC860(v51, v48, v53);
    v41 = " has incorrect cmdsize";
LABEL_50:
    v46[0] = v41;
    v47 = 259;
    sub_298ADC860(v53, v46, v56);
    goto LABEL_51;
  }

  if (v10 < v26)
  {
    v51[0] = "symoff field of LC_SYMTAB command ";
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
LABEL_53:
    sub_298ADC860(v51, v48, v53);
    v41 = " extends past the end of the file";
    goto LABEL_50;
  }

  v32 = (*(*a2 + 64))(a2);
  v33 = "struct nlist";
  if (v32)
  {
    v34 = 16 * v25;
  }

  else
  {
    v34 = 4 * (v25 + 2 * v25);
  }

  if (v32)
  {
    v33 = "struct nlist_64";
  }

  if (v34 + v26 > v10)
  {
    v35 = *v33;
    if (*v33)
    {
      v43[2] = v33;
      v36 = 3;
      v37 = 2;
    }

    else
    {
      v36 = 1;
      v37 = 3;
    }

    v43[0] = "symoff field plus nsyms field times sizeof(";
    v44 = 3;
    v45 = v36;
    v38 = v35 == 0;
    v39 = v43;
    if (v38)
    {
      v39 = "symoff field plus nsyms field times sizeof(";
    }

    v46[0] = v39;
    v46[2] = ") of LC_SYMTAB command ";
    LOBYTE(v47) = v37;
    HIBYTE(v47) = 3;
    v48[0] = v46;
    v49 = a4;
    v50 = 2306;
    v7 = " extends past the end of the file";
    goto LABEL_3;
  }

  result = sub_298B7EF50(a1, a6, v26, v34, "symbol table");
  if (!*a1)
  {
    if (v10 < v24)
    {
      v42 = "stroff field of LC_SYMTAB command ";
    }

    else
    {
      if (v24 + v23 <= v10)
      {
        result = sub_298B7EF50(a1, a6, v24, v23, "string table");
        if (!*a1)
        {
          *a5 = *a3;
        }

        return result;
      }

      v42 = "stroff field plus strsize field of LC_SYMTAB command ";
    }

    v51[0] = v42;
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
    goto LABEL_53;
  }

  return result;
}

uint64_t *sub_298B77034(uint64_t *a1, uint64_t a2, unint64_t *a3, unsigned int a4, void *a5, uint64_t *a6)
{
  if (*(a3 + 3) <= 0x4Fu)
  {
    v52[0] = "load command ";
    v52[2] = a4;
    v53 = 2307;
    v54[0] = v52;
    v54[2] = " LC_DYSYMTAB cmdsize too small";
    v55 = 770;
    v61[0] = "truncated or malformed object (";
    v62 = v54;
    v63 = 515;
    v56.i64[0] = v61;
    *&v57 = ")";
    goto LABEL_3;
  }

  if (*a5)
  {
    v56.i64[0] = "more than one LC_DYSYMTAB command";
    LOWORD(v58) = 259;
LABEL_46:
    sub_298B76A80(v56.i64);
  }

  v7 = *a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*a3 < v8 || *a3 + 80 > v8 + v9)
  {
    v61[0] = "truncated or malformed object (";
    v62 = "Structure read out-of-range";
    v63 = 771;
    v56.i64[0] = v61;
    *&v57 = ")";
LABEL_3:
    LOWORD(v58) = 770;
    operator new();
  }

  v57 = *(v7 + 16);
  v58 = *(v7 + 32);
  v59 = *(v7 + 48);
  v60 = *(v7 + 64);
  v56 = *v7;
  v11 = *(a2 + 8);
  v12 = a6;
  if (v11 <= 0x14 && ((1 << v11) & 0x155800) != 0)
  {
    v13 = a4;
    v14 = a5;
    v15 = a3;
    v16 = a2;
    sub_298B7F248(&v56);
    a2 = v16;
    a6 = v12;
    a3 = v15;
    a5 = v14;
    a4 = v13;
  }

  if (v56.u32[1] != 80)
  {
    v54[0] = "LC_DYSYMTAB command ";
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = a4;
    sub_298ADC860(v54, v52, v61);
    v29 = " has incorrect cmdsize";
LABEL_44:
    v50[0] = v29;
    v51 = 259;
    v31 = v50;
LABEL_45:
    sub_298ADC860(v61, v31, &v56);
    goto LABEL_46;
  }

  if (v9 < v58)
  {
    v30 = "tocoff field of LC_DYSYMTAB command ";
LABEL_42:
    v54[0] = v30;
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = a4;
LABEL_43:
    sub_298ADC860(v54, v52, v61);
    v29 = " extends past the end of the file";
    goto LABEL_44;
  }

  v35 = a3;
  v36 = a5;
  v17 = 8 * DWORD1(v58);
  if (v17 + v58 > v9)
  {
    v30 = "tocoff field plus ntoc field times sizeof(struct dylib_table_of_contents) of LC_DYSYMTAB command ";
    goto LABEL_42;
  }

  v18 = a2;
  v34 = a4;
  v20 = DWORD2(v58);
  v19 = HIDWORD(v58);
  v21 = v59;
  v22 = DWORD1(v59);
  v24 = DWORD2(v59);
  v23 = HIDWORD(v59);
  v40 = v60;
  v39 = DWORD1(v60);
  v38 = DWORD2(v60);
  v37 = HIDWORD(v60);
  result = sub_298B7EF50(a1, a6, v58, v17, "table of contents");
  if (*a1)
  {
    return result;
  }

  if (v9 < v20)
  {
    v32 = "modtaboff field of LC_DYSYMTAB command ";
LABEL_48:
    v54[0] = v32;
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = v34;
    goto LABEL_43;
  }

  v26 = (*(*v18 + 64))(v18);
  v27 = "struct dylib_module";
  if (v26)
  {
    v27 = "struct dylib_module_64";
  }

  v28 = 52;
  if (v26)
  {
    v28 = 56;
  }

  if (v20 + v28 * v19 > v9)
  {
    v50[0] = "modtaboff field plus nmodtab field times sizeof(";
    v51 = 259;
    v33 = 1;
    v49 = 1;
    if (*v27)
    {
      v47 = v27;
      v33 = 3;
    }

    v48 = v33;
    sub_298ADC860(v50, &v47, v52);
    v45 = ") of LC_DYSYMTAB command ";
    v46 = 259;
    sub_298ADC860(v52, &v45, v54);
    v44 = 265;
    LODWORD(v43[0]) = v34;
    sub_298ADC860(v54, v43, v61);
    v41 = " extends past the end of the file";
    v42 = 259;
    v31 = &v41;
    goto LABEL_45;
  }

  result = sub_298B7EF50(a1, v12, v20, v28 * v19, "module table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v21)
  {
    v32 = "extrefsymoff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (4 * v22 + v21 > v9)
  {
    v32 = "extrefsymoff field plus nextrefsyms field times sizeof(struct dylib_reference) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v21, 4 * v22, "reference table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v24)
  {
    v32 = "indirectsymoff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (4 * v23 + v24 > v9)
  {
    v32 = "indirectsymoff field plus nindirectsyms field times sizeof(uint32_t) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v24, 4 * v23, "indirect table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v40)
  {
    v32 = "extreloff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (v40 + 8 * v39 > v9)
  {
    v32 = "extreloff field plus nextrel field times sizeof(struct relocation_info) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v40, 8 * v39, "external relocation table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v38)
  {
    v32 = "locreloff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (v38 + 8 * v37 > v9)
  {
    v32 = "locreloff field plus nlocrel field times sizeof(struct relocation_info) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v38, 8 * v37, "local relocation table");
  if (!*a1)
  {
    *v36 = *v35;
  }

  return result;
}

uint64_t *sub_298B775E8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, void *a5, _BYTE *a6, uint64_t *a7, _BYTE *a8)
{
  if (*(a3 + 12) <= 0xFu)
  {
    v43[0] = "load command ";
    v44 = 259;
    v42 = 265;
    LODWORD(v41[0]) = a4;
    sub_298ADC860(v43, v41, v45);
    v39[0] = " ";
    v40 = 259;
    sub_298ADC860(v45, v39, v48);
    v27 = 1;
    HIBYTE(v38) = 1;
    if (*a6)
    {
      v37[0] = a6;
      v27 = 3;
    }

    LOBYTE(v38) = v27;
    sub_298ADC860(v48, v37, v50);
    v28 = " cmdsize too small";
    goto LABEL_28;
  }

  if (*a5)
  {
    v48[0] = "more than one ";
    v49 = 259;
    v34 = 1;
    v47 = 1;
    if (*a6)
    {
      v45[0] = a6;
      v34 = 3;
    }

    v46 = v34;
    sub_298ADC860(v48, v45, v50);
    v43[0] = " command";
    v44 = 259;
    v29 = v43;
LABEL_29:
    sub_298ADC860(v50, v29, v52);
    sub_298B76A80(v52);
  }

  v11 = *a3;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *a3 < v13 || *a3 + 16 > v13 + v12;
  if (v14)
  {
    v50[0] = "truncated or malformed object (";
    v50[2] = "Structure read out-of-range";
    v51 = 771;
    v52[0] = v50;
    v52[2] = ")";
    v53 = 770;
    operator new();
  }

  v15 = *(v11 + 4);
  v16 = *(v11 + 8);
  LODWORD(v11) = *(v11 + 12);
  v17 = *(a2 + 8);
  v14 = v17 > 0x14;
  v18 = 1;
  v19 = (1 << v17) & 0x155800;
  v20 = v14 || v19 == 0;
  v21 = bswap32(v15);
  v22 = bswap32(v16);
  v23 = bswap32(v11);
  if (v20)
  {
    v11 = v11;
  }

  else
  {
    v11 = v23;
  }

  if (v20)
  {
    v24 = v16;
  }

  else
  {
    v24 = v22;
  }

  if (!v20)
  {
    v15 = v21;
  }

  if (v15 != 16)
  {
    v47 = 1;
    if (*a6)
    {
      v45[0] = a6;
      v18 = 3;
    }

    v46 = v18;
    v43[0] = " command ";
    v44 = 259;
    sub_298ADC860(v45, v43, v48);
    v42 = 265;
    LODWORD(v41[0]) = a4;
    sub_298ADC860(v48, v41, v50);
    v39[0] = " has incorrect cmdsize";
    v40 = 259;
    v29 = v39;
    goto LABEL_29;
  }

  if (v12 < v24)
  {
    v31 = "dataoff field of ";
LABEL_35:
    v43[0] = v31;
    v44 = 259;
    v32 = 1;
    HIBYTE(v42) = 1;
    if (*a6)
    {
      v41[0] = a6;
      v32 = 3;
    }

    LOBYTE(v42) = v32;
    sub_298ADC860(v43, v41, v45);
    v39[0] = " command ";
    v40 = 259;
    sub_298ADC860(v45, v39, v48);
    v38 = 265;
    LODWORD(v37[0]) = a4;
    sub_298ADC860(v48, v37, v50);
    v28 = " extends past the end of the file";
LABEL_28:
    v35 = v28;
    v36 = 259;
    v29 = &v35;
    goto LABEL_29;
  }

  if (v24 + v11 > v12)
  {
    v31 = "dataoff field plus datasize field of ";
    goto LABEL_35;
  }

  result = sub_298B7EF50(a1, a7, v24, v11, a8);
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

uint64_t *sub_298B77970(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const char *a6, uint64_t *a7)
{
  if (*(a3 + 12) <= 0x2Fu)
  {
    v74[0] = "load command ";
    v75 = a4;
    v76 = 2307;
    *&v77 = v74;
    *&v78 = " ";
    LOWORD(v79) = 770;
    if (*a6)
    {
      v8 = &v77;
      *&v80 = &v77;
      *&v81 = a6;
      LOWORD(v82) = 770;
      v9 = 2;
      v10 = &v80;
    }

    else
    {
      v80 = v77;
      v81 = v78;
      v82 = v79;
      v9 = v79;
      if (v79 == 1)
      {
        v12 = " cmdsize too small";
        v83[0] = " cmdsize too small";
        v85 = 259;
        v11 = 3;
        goto LABEL_5;
      }

      v8 = *(&v80 + 1);
      v10 = &v80;
      if (BYTE1(v82) == 1)
      {
        v10 = v80;
      }

      else
      {
        v9 = 2;
      }
    }

    v83[0] = v10;
    v83[1] = v8;
    v84 = " cmdsize too small";
    LOBYTE(v85) = v9;
    HIBYTE(v85) = 3;
    v11 = 2;
    v12 = v83;
LABEL_5:
    v86[0] = "truncated or malformed object (";
    v87 = v12;
    LOBYTE(v88) = 3;
    HIBYTE(v88) = v11;
    v89 = v86;
    v90 = ")";
    v91 = 770;
    goto LABEL_16;
  }

  if (*a5)
  {
    v13 = "more than one LC_DYLD_INFO and or LC_DYLD_INFO_ONLY command";
LABEL_14:
    v86[0] = "truncated or malformed object (";
    v87 = v13;
    v88 = 771;
    v89 = v86;
    v90 = ")";
LABEL_15:
    v91 = 770;
LABEL_16:
    operator new();
  }

  v14 = *a3;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*a3 < v15 || *a3 + 48 > v15 + v16)
  {
    v13 = "Structure read out-of-range";
    goto LABEL_14;
  }

  v19 = v14[1];
  v18 = v14[2];
  v20 = v14[3];
  v21 = v14[4];
  v22 = v14[5];
  v23 = v14[6];
  v25 = v14[7];
  v24 = v14[8];
  v27 = v14[9];
  v26 = v14[10];
  v28 = v14[11];
  v29 = *(a2 + 8);
  if (v29 <= 0x14)
  {
    v30 = ((1 << v29) & 0x155800) == 0;
    v31 = bswap32(v19);
    v32 = bswap32(v18);
    v33 = bswap32(v20);
    v34 = bswap32(v21);
    v35 = bswap32(v22);
    v36 = bswap32(v23);
    v37 = bswap32(v25);
    v38 = bswap32(v24);
    v39 = bswap32(v27);
    v40 = bswap32(v26);
    v41 = bswap32(v28);
    if (!v30)
    {
      v28 = v41;
      v26 = v40;
      v27 = v39;
      v24 = v38;
      v25 = v37;
      v23 = v36;
      v22 = v35;
      v21 = v34;
      v20 = v33;
      v18 = v32;
      v19 = v31;
    }
  }

  if (v19 != 48)
  {
    v46 = *a6;
    v47 = " command ";
    if (*a6)
    {
      *&v78 = " command ";
      v48 = 3;
      v49 = 2;
      v47 = a6;
    }

    else
    {
      v48 = 1;
      v49 = 3;
    }

    *&v77 = v47;
    LOBYTE(v79) = 3;
    BYTE1(v79) = v48;
    v30 = v46 == 0;
    v50 = &v77;
    if (v30)
    {
      v50 = v47;
    }

    *&v80 = v50;
    *&v81 = a4;
    LOBYTE(v82) = v49;
    BYTE1(v82) = 9;
    v51 = " has incorrect cmdsize";
    goto LABEL_39;
  }

  if (v16 < v18)
  {
    v42 = *a6;
    if (*a6)
    {
      v75 = a6;
      v43 = 3;
      v44 = 2;
    }

    else
    {
      v43 = 1;
      v44 = 3;
    }

    v45 = "rebase_off field of ";
    goto LABEL_35;
  }

  if (v18 + v20 > v16)
  {
    v42 = *a6;
    if (*a6)
    {
      v75 = a6;
      v43 = 3;
      v44 = 2;
    }

    else
    {
      v43 = 1;
      v44 = 3;
    }

    v45 = "rebase_off field plus rebase_size field of ";
LABEL_35:
    v74[0] = v45;
    LOBYTE(v76) = 3;
    HIBYTE(v76) = v43;
    v30 = v42 == 0;
    v52 = v74;
    if (v30)
    {
      v52 = v45;
    }

    *&v77 = v52;
    *&v78 = " command ";
    LOBYTE(v79) = v44;
    BYTE1(v79) = 3;
    v53 = a4;
    goto LABEL_38;
  }

  result = sub_298B7EF50(a1, a7, v18, v20, "dyld rebase info");
  if (!*a1)
  {
    LODWORD(v53) = a4;
    if (v16 < v21)
    {
      v55 = *a6;
      if (*a6)
      {
        v75 = a6;
        v56 = 3;
        v57 = 2;
      }

      else
      {
        v56 = 1;
        v57 = 3;
      }

      v58 = "bind_off field of ";
LABEL_51:
      v74[0] = v58;
      LOBYTE(v76) = 3;
      HIBYTE(v76) = v56;
      v30 = v55 == 0;
      v59 = v74;
      if (v30)
      {
        v59 = v58;
      }

      *&v77 = v59;
      *&v78 = " command ";
      LOBYTE(v79) = v57;
      BYTE1(v79) = 3;
LABEL_54:
      v53 = v53;
LABEL_38:
      *&v80 = &v77;
      *&v81 = v53;
      LOWORD(v82) = 2306;
      v51 = " extends past the end of the file";
LABEL_39:
      v83[0] = &v80;
      v84 = v51;
      v85 = 770;
      v86[0] = "truncated or malformed object (";
      v87 = v83;
      v88 = 515;
      v89 = v86;
      v90 = ")";
      goto LABEL_15;
    }

    if (v21 + v22 > v16)
    {
      v55 = *a6;
      if (*a6)
      {
        v75 = a6;
        v56 = 3;
        v57 = 2;
      }

      else
      {
        v56 = 1;
        v57 = 3;
      }

      v58 = "bind_off field plus bind_size field of ";
      goto LABEL_51;
    }

    result = sub_298B7EF50(a1, a7, v21, v22, "dyld bind info");
    if (!*a1)
    {
      if (v16 < v23)
      {
        v60 = *a6;
        if (*a6)
        {
          v75 = a6;
          v61 = 3;
          v62 = 2;
        }

        else
        {
          v61 = 1;
          v62 = 3;
        }

        v74[0] = "weak_bind_off field of ";
        LOBYTE(v76) = 3;
        HIBYTE(v76) = v61;
        v30 = v60 == 0;
        v63 = v74;
        if (v30)
        {
          v63 = "weak_bind_off field of ";
        }

        *&v77 = v63;
        *&v78 = " command ";
        LOBYTE(v79) = v62;
        BYTE1(v79) = 3;
        v53 = a4;
        goto LABEL_38;
      }

      if (v23 + v25 > v16)
      {
        v64 = *a6;
        if (*a6)
        {
          v75 = a6;
          v65 = 3;
          v66 = 2;
        }

        else
        {
          v65 = 1;
          v66 = 3;
        }

        v67 = "weak_bind_off field plus weak_bind_size field of ";
LABEL_71:
        v74[0] = v67;
        LOBYTE(v76) = 3;
        HIBYTE(v76) = v65;
        v30 = v64 == 0;
        v68 = v74;
        if (v30)
        {
          v68 = v67;
        }

        *&v77 = v68;
        *&v78 = " command ";
        LOBYTE(v79) = v66;
        BYTE1(v79) = 3;
        LODWORD(v53) = a4;
        goto LABEL_54;
      }

      result = sub_298B7EF50(a1, a7, v23, v25, "dyld weak bind info");
      if (!*a1)
      {
        if (v16 < v24)
        {
          v64 = *a6;
          if (*a6)
          {
            v75 = a6;
            v65 = 3;
            v66 = 2;
          }

          else
          {
            v65 = 1;
            v66 = 3;
          }

          v67 = "lazy_bind_off field of ";
          goto LABEL_71;
        }

        if (v24 + v27 > v16)
        {
          v64 = *a6;
          if (*a6)
          {
            v75 = a6;
            v65 = 3;
            v66 = 2;
          }

          else
          {
            v65 = 1;
            v66 = 3;
          }

          v67 = "lazy_bind_off field plus lazy_bind_size field of ";
          goto LABEL_71;
        }

        result = sub_298B7EF50(a1, a7, v24, v27, "dyld lazy bind info");
        if (!*a1)
        {
          if (v16 < v26)
          {
            v64 = *a6;
            if (*a6)
            {
              v75 = a6;
              v65 = 3;
              v66 = 2;
            }

            else
            {
              v65 = 1;
              v66 = 3;
            }

            v67 = "export_off field of ";
            goto LABEL_71;
          }

          if (v26 + v28 > v16)
          {
            v64 = *a6;
            if (*a6)
            {
              v75 = a6;
              v65 = 3;
              v66 = 2;
            }

            else
            {
              v65 = 1;
              v66 = 3;
            }

            v67 = "export_off field plus export_size field of ";
            goto LABEL_71;
          }

          result = sub_298B7EF50(a1, a7, v26, v28, "dyld export info");
          if (!*a1)
          {
            *a5 = *a3;
          }
        }
      }
    }
  }

  return result;
}