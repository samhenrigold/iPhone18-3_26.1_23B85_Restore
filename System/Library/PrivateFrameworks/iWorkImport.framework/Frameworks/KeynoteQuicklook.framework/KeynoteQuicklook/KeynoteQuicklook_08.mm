void sub_275E23000(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E1A538(*v3);
          MEMORY[0x277C8F960](v5, 0x1081C4085BC40B3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E23084(uint64_t *result, TSP::Size **a2, TSP::Size **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23134(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8EFF0](v18);
      result = sub_275E23134(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E23144(uint64_t *result, TSP::DataReference **a2, TSP::DataReference **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E231F4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8EFD0](v18);
      result = sub_275E231F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E23204(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E232B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E20080(v18);
      result = sub_275E232B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E232C4(uint64_t *result, TSP::UUID **a2, TSP::UUID **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23374(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F000](v18);
      result = sub_275E23374(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

char *sub_275E23384(char *result, char **a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23434(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E2196C(v18);
      result = sub_275E23434(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23444(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8EBD0]();
          MEMORY[0x277C8F960](v5, 0x10A1C4054BF9DFBLL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E234C8(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23578(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F090](v18);
      result = sub_275E23578(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23588(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8EA80]();
          MEMORY[0x277C8F960](v5, 0x10A1C40290C9B23);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E2360C(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E236BC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F040](v18);
      result = sub_275E236BC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E236CC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E01874(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C407EE01FB0);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E23750(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23800(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E204F4(v18);
      result = sub_275E23800(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23810(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Range::~Range(*v3);
          MEMORY[0x277C8F960]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275E23894(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8E7D0]();
          MEMORY[0x277C8F960](v5, 0x10A1C4042CF1500);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275E23918(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E07D64(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C40DFBAE579);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E2399C(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23A4C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F030](v18);
      result = sub_275E23A4C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E23A5C(uint64_t *result, TSD::GeometryArchive **a2, TSD::GeometryArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23B0C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8EFA0](v18);
      result = sub_275E23B0C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E23B1C(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23BCC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E20994(v18);
      result = sub_275E23BCC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23BDC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E0EA58(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4014BB2387);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E23C60(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23D10(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E20DD4(v18);
      result = sub_275E23D10(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23D20(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E122B8(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4042CF1500);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E23DA4(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23E54(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E21188(v18);
      result = sub_275E23E54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23E64(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275E13BD0(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C40DFBAE579);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_275E23EE8(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E23F98(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275E2136C(v18);
      result = sub_275E23F98(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23FA8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8EC10]();
          MEMORY[0x277C8F960](v5, 0x10A1C40C05B56FCLL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275E2402C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8EC90]();
          MEMORY[0x277C8F960](v5, 0x10A1C406130BDD3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275E240B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C8EC50]();
          MEMORY[0x277C8F960](v5, 0x10A1C40C05B56FCLL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

google::protobuf::internal *sub_275E24134(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = a3[1];
        v15 = (result + v5);
        v18 = *a3;
        v19 = v14;
        result = sub_275E24298(result, v15, &v18);
        if (v15 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      result = sub_275E24298(result, v8, &v18);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v22 = 0;
    v21 = 0;
    v16 = *v11;
    v17 = a3[1];
    v18 = *a3;
    v19 = v17;
    v20 = v16;
    if (sub_275E24298((&v20 + v12), &v20 + v13, &v18) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_275E24298(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if (v6 < 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          sub_275D98CF0(*a3, v10 + 1);
          *(*(v9 + 1) + 4 * v10) = v6;
        }

        else
        {
          *(*(v9 + 1) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = a3[2];
        if (*v12)
        {
          v13 = ((*v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v13 = sub_275E22260(v12);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v13);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t *sub_275E243B8(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E24468(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F0A0](v18);
      result = sub_275E24468(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E24478(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E24528(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F0C0](v18);
      result = sub_275E24528(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E24538(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275E245E8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C8F0B0](v18);
      result = sub_275E245E8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E245F8(TSD::MovieArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::MovieArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812EBC80);
}

uint64_t sub_275E2467C(TSD::FillArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::FillArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812EC170);
}

uint64_t sub_275E24700(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F8AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_275E24788);
}

uint64_t sub_275E2478C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F8DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_275E24814);
}

void *sub_275E24818(uint64_t a1)
{
  v2 = sub_275E2488C(a1, 1);
  *v2 = &unk_2884D5498;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA828, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E2488C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F918(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E24914);
}

uint64_t sub_275E24918(uint64_t a1)
{
  v2 = sub_275E24998(a1, 1);
  *v2 = &unk_2884D5548;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 54) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275E24998(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E24A20);
}

uint64_t sub_275E24A24(uint64_t a1)
{
  v2 = sub_275E24A9C(a1, 1);
  *v2 = &unk_2884D55F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA070, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E24A9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F978(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E24B24);
}

uint64_t sub_275E24B28(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F9A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E24BB0);
}

uint64_t sub_275E24BB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F9D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E24C3C);
}

uint64_t sub_275E24C40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 224, sub_275E24CC8);
}

uint64_t sub_275E24CCC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E24D54);
}

uint64_t sub_275E24D58(uint64_t a1)
{
  v2 = sub_275E24DD0(a1, 1);
  *v2 = &unk_2884D5968;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E24DD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E24E58);
}

void *sub_275E24E5C(uint64_t a1)
{
  v2 = sub_275E24ED0(a1, 1);
  *v2 = &unk_2884D5A18;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E24ED0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FAA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E24F58);
}

uint64_t sub_275E24F5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FAD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E24FE4);
}

uint64_t sub_275E24FE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E25070);
}

uint64_t sub_275E25074(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E250FC);
}

uint64_t sub_275E25100(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25188);
}

uint64_t sub_275E2518C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25214);
}

uint64_t sub_275E25218(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FBC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 464, sub_275E252A0);
}

uint64_t sub_275E252A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E2532C);
}

uint64_t sub_275E25330(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC30(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 296, sub_275E253B8);
}

uint64_t sub_275E253BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25444);
}

uint64_t sub_275E25464(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 336, sub_275E254EC);
}

void *sub_275E254F0(uint64_t a1)
{
  v2 = sub_275E25564(a1, 1);
  *v2 = &unk_2884D61A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA140, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E25564(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FCD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E255EC);
}

uint64_t sub_275E255F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E25678);
}

uint64_t sub_275E2567C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, sub_275E25704);
}

uint64_t sub_275E25708(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275E25790);
}

uint64_t sub_275E257B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FDA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25838);
}

uint64_t sub_275E2583C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FDD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 168, sub_275E258C4);
}

uint64_t sub_275E258C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E25950);
}

uint64_t sub_275E25954(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, sub_275E259DC);
}

void *sub_275E259E0(uint64_t a1)
{
  v2 = sub_275E25A58(a1, 1);
  *v2 = &unk_2884D6728;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_275E25A58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25AE0);
}

void *sub_275E25AE4(uint64_t a1)
{
  v2 = sub_275E25B5C(a1, 1);
  *v2 = &unk_2884D67D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA770, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  *(v2 + 37) = 0;
  return v2;
}

uint64_t sub_275E25B5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FEAC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25BE4);
}

uint64_t sub_275E25BE8(uint64_t a1)
{
  v2 = sub_275E25C60(a1, 1);
  *v2 = &unk_2884D6888;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275E25C60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FEDC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25CE8);
}

void *sub_275E25CEC(uint64_t a1)
{
  v2 = sub_275E25D60(a1, 1);
  *v2 = &unk_2884D6938;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E25D60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25DE8);
}

uint64_t sub_275E25DEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 392, sub_275E25E74);
}

uint64_t sub_275E25E78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, sub_275E25F00);
}

uint64_t sub_275E25F04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FFB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_275E25F8C);
}

uint64_t sub_275E25F90(uint64_t a1)
{
  v2 = sub_275E26008(a1, 1);
  *v2 = &unk_2884D6BF8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E26008(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FFF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26090);
}

uint64_t sub_275E26094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60020(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2611C);
}

uint64_t sub_275E2613C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60050(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E261C4);
}

uint64_t sub_275E261C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60080(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E26250);
}

void *sub_275E26254(uint64_t a1)
{
  v2 = sub_275E262CC(a1, 1);
  *v2 = &unk_2884D6EB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA528, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_275E262CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E600B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E26354);
}

void *sub_275E26358(uint64_t a1)
{
  v2 = sub_275E263CC(a1, 1);
  *v2 = &unk_2884D6F68;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA4C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E263CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E600E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26454);
}

uint64_t sub_275E26458(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60110(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E264E0);
}

uint64_t sub_275E26500(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60140(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E26588);
}

uint64_t sub_275E2658C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60170(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E26614);
}

uint64_t sub_275E26618(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E601A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E266A0);
}

uint64_t sub_275E266A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E601D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E2672C);
}

void *sub_275E26730(uint64_t a1)
{
  v2 = sub_275E267A4(a1, 1);
  *v2 = &unk_2884D7388;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E267A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60200(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2682C);
}

void *sub_275E26830(uint64_t a1)
{
  v2 = sub_275E268A4(a1, 1);
  *v2 = &unk_2884D7438;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA6A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E268A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60230(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E2692C);
}

uint64_t sub_275E26930(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60260(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_275E269B8);
}

void *sub_275E269BC(uint64_t a1)
{
  v2 = sub_275E26A30(a1, 1);
  *v2 = &unk_2884D7598;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA3D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E26A30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6029C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E26AB8);
}

uint64_t sub_275E26ABC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E602CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_275E26B44);
}

uint64_t sub_275E26B48(uint64_t a1)
{
  v2 = sub_275E26BCC(a1, 1);
  *v2 = &unk_2884D76F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275E26BCC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E602FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E26C54);
}

uint64_t sub_275E26C58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6032C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E26CE0);
}

uint64_t sub_275E26CE4(uint64_t a1)
{
  v2 = sub_275E26D5C(a1, 1);
  *v2 = &unk_2884D7858;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA1F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E26D5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6035C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26DE4);
}

uint64_t sub_275E26DE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6038C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E26E70);
}

uint64_t sub_275E26E74(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E603BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E26EFC);
}

uint64_t sub_275E26F00(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E603EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26F88);
}

uint64_t sub_275E26F8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6041C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 840, sub_275E27014);
}

uint64_t sub_275E27018(uint64_t a1)
{
  v2 = sub_275E27094(a1, 1);
  *v2 = &unk_2884D7BC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275E27094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60458(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E2711C);
}

void *sub_275E27120(uint64_t a1)
{
  v2 = sub_275E27194(a1, 1);
  *v2 = &unk_2884D7C78;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E27194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60488(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2721C);
}

uint64_t sub_275E2738C(google::protobuf::UnknownFieldSet *a1)
{

  return google::protobuf::UnknownFieldSet::AddVarint(a1);
}

uint64_t sub_275E273BC()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EC190 = 100;
  qword_2812EC198 = &qword_2812EBC80;
  sub_275E245F8(0x64, 11, 0);
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EC1A0 = 200;
  qword_2812EC1A8 = &qword_2812EC170;

  return sub_275E2467C(0xC8, 11, 0);
}

void sub_275E276F4()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27734(uint64_t a1)
{
  v2 = *(a1 + 32);
  v36[0] = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:v36];
  v4 = v36[0];
  if (v3 == 2)
  {
    memset(&v35, 0, sizeof(v35));
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_duration(v5);
    }

    memset(&v34, 0, sizeof(v34));
    CMTimeMakeWithSeconds(&time.start, *(*(a1 + 40) + 16), *MEMORY[0x277D80710]);
    CMTimeConvertScale(&v34, &time.start, v35.timescale, kCMTimeRoundingMethod_RoundAwayFromZero);
    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E604F4();
    }

    CMTimeMake(&rhs, 5, 100);
    lhs = v34;
    CMTimeAdd(&time.start, &lhs, &rhs);
    rhs = v35;
    if (CMTimeCompare(&time.start, &rhs) < 0)
    {
      v7 = [*(a1 + 48) context];
      v8 = objc_alloc(MEMORY[0x277CE6400]);
      v9 = [v8 initWithAsset:*(a1 + 32) presetName:*MEMORY[0x277CE5C78]];
      [v9 setOutputFileType:*MEMORY[0x277CE5DA8]];
      v22 = [v7 temporaryDirectory];
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] tsu_stringWithUUID];
      v12 = [v10 stringWithFormat:@"MovieRecording-%@.mov", v11];

      v13 = [*MEMORY[0x277CE1E40] preferredFilenameExtension];
      v14 = MEMORY[0x277CBEBC0];
      v15 = [v22 stringByAppendingPathComponent:v12];
      v16 = [v15 stringByAppendingPathExtension:v13];
      v17 = [v14 tsu_fileURLWithPath:v16];

      [v9 setOutputURL:v17];
      [v9 setShouldOptimizeForNetworkUse:1];
      *&time.start.value = *MEMORY[0x277CC08F0];
      time.start.epoch = *(MEMORY[0x277CC08F0] + 16);
      rhs = v34;
      CMTimeRangeMake(&v31, &time.start, &rhs);
      time = v31;
      [v9 setTimeRange:&time];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275E27B34;
      v23[3] = &unk_27A699530;
      v24 = v9;
      v25 = v17;
      v18 = *(a1 + 40);
      v26 = v7;
      v27 = v18;
      v29 = v34;
      v28 = *(a1 + 56);
      v19 = v7;
      v20 = v17;
      v21 = v9;
      [v21 exportAsynchronouslyWithCompletionHandler:v23];

      goto LABEL_14;
    }

    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E6051C();
    }

    v6 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E604CC();
    }

    v6 = *(*(a1 + 56) + 16);
  }

  v6();
LABEL_14:
}

void sub_275E27AF4()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27B34(uint64_t a1)
{
  if ([*(a1 + 32) status] == 3)
  {
    v2 = *(a1 + 40);
    v17 = 0;
    v3 = *MEMORY[0x277CBE838];
    v16 = 0;
    v4 = [v2 getResourceValue:&v17 forKey:v3 error:&v16];
    v5 = v17;
    v6 = v16;
    if (v4)
    {
      if ([v5 unsignedLongLongValue])
      {
        if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
        {
          sub_275E60580();
        }

        v7 = [MEMORY[0x277D80828] dataFromURL:*(a1 + 40) context:*(a1 + 48)];
        v8 = [KNMovieSegment alloc];
        [*(*(a1 + 56) + 8) startTime];
        v9 = [(KNMovieSegment *)v8 initWithMovieData:v7 startTime:?];

LABEL_7:
        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      CMTimeMake(&time2, 5, 100);
      v14 = *(a1 + 72);
      if (CMTimeCompare(&v14, &time2) <= 0)
      {
        if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
        {
          sub_275E605D0();
        }

        v13 = [KNMovieSegment alloc];
        [*(*(a1 + 56) + 8) startTime];
        v9 = [(KNMovieSegment *)v13 initEmptySegmentWithStartTime:?];
        goto LABEL_7;
      }

      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E605A8();
      }

      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v12 initWithDomain:*MEMORY[0x277CCA050] code:259 userInfo:0];
    }

    else
    {
      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E60558();
      }

      v11 = v6;
    }

    v10 = v11;
    v9 = 0;
    goto LABEL_15;
  }

  if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
  {
    sub_275E60544();
  }

  v10 = [*(a1 + 32) error];
  v9 = 0;
LABEL_16:
  (*(*(a1 + 64) + 16))();
}

void sub_275E27D60()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27DA0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27DE0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27E20()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27E60()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27EA0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27EE0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

double sub_275E29218(void *a1)
{
  objc_opt_class();
  v2 = [a1 info];
  v3 = [v2 documentRoot];
  v4 = TSUDynamicCast();

  v5 = [v4 show];

  if (v5)
  {
    v6 = [a1 info];
    v7 = [v6 textIsVertical];
    v8 = [v4 show];
    [v8 size];
    v10 = v9;
    v12 = v11;

    if (v7)
    {
      v10 = v12;
    }

    v13 = [a1 info];
    v14 = [v13 stroke];

    if (v14)
    {
      [v14 width];
      v10 = v10 + v15 * -4.0;
    }
  }

  else
  {
    v10 = 4000.0;
  }

  return v10;
}

uint64_t sub_275E2934C(void *a1)
{
  v2 = [a1 layoutController];
  v3 = [v2 canvas];

  v4 = [v3 delegate];
  v5 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 slideNumber];
  }

  else
  {
    v7 = [a1 info];
    v8 = [v7 abstractSlide];

    v9 = [v8 slideNode];
    v10 = [v9 owningDocument];
    v11 = [v10 show];

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9 && v11)
    {
      v12 = [v11 slideTree];
      v6 = [v12 slideNumberForSlideNode:v9];
    }
  }

  return v6;
}

uint64_t sub_275E29490(void *a1)
{
  v1 = [a1 info];
  v2 = [v1 owningDocument];
  v3 = [v2 show];

  v4 = [v3 slideTree];
  v5 = [v4 visibleSlideNodes];
  v6 = [v5 count];

  return v6;
}

void sub_275E295FC()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v2[0] = @"KNTransitionEffectProperty";
  v2[1] = @"KNTransitionAttributesDirection";
  v3[0] = @"effect";
  v3[1] = @"direction";
  v2[2] = @"KNTransitionAttributesDuration";
  v2[3] = @"KNTransitionAttributesDelay";
  v3[2] = @"duration";
  v3[3] = @"delay";
  v2[4] = @"KNTransitionAttributesIsAutomatic";
  v2[5] = @"KNTransitionAttributesColor";
  v3[4] = @"hasAutomaticTrigger";
  v3[5] = @"color";
  v2[6] = @"com.apple.iWork.Keynote.BUKTwist.twist";
  v2[7] = @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles";
  v3[6] = @"customTwist";
  v3[7] = @"customMosaicSize";
  v2[8] = @"com.apple.iWork.Keynote.BLTMosaicFlip.type";
  v2[9] = @"KNTransitionCustomAttributesBounce";
  v3[8] = @"customMosaicType";
  v3[9] = @"customBounce";
  v2[10] = @"KNTransitionCustomAttributesMotionBlur";
  v2[11] = @"KNTransitionCustomAttributesTimingCurve";
  v3[10] = @"customMotionBlur";
  v3[11] = @"customTimingCurve";
  v2[12] = @"KNTransitionCustomAttributesRandomNumberSeed";
  v2[13] = @"KNAnimationAttributesCustomEffectTimingCurve1";
  v3[12] = @"randomNumberSeed";
  v3[13] = @"customEffectTimingCurve1";
  v2[14] = @"KNAnimationAttributesCustomEffectTimingCurve2";
  v2[15] = @"KNAnimationAttributesCustomEffectTimingCurve3";
  v3[14] = @"customEffectTimingCurve2";
  v3[15] = @"customEffectTimingCurve3";
  v2[16] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName1";
  v2[17] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName2";
  v3[16] = @"customEffectTimingCurveThemeName1";
  v3[17] = @"customEffectTimingCurveThemeName2";
  v2[18] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName3";
  v2[19] = @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects";
  v3[18] = @"customEffectTimingCurveThemeName3";
  v3[19] = @"customMagicMoveFadeUnmatchedObjects";
  v2[20] = @"KNTransitionCustomAttributesTextDelivery";
  v2[21] = @"KNTransitionCustomAttributesTravelDistance";
  v3[20] = @"customTextDelivery";
  v3[21] = @"customTravelDistance";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = qword_280A3C598;
  qword_280A3C598 = v0;
}

void sub_275E2D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275E2D0F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275E2D134(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(*(*(v3 + 8) + 8) + 40))
  {

    [v2 i_didLoadBuild:?];
  }

  else if (*(v2 + 64))
  {
    objc_opt_class();
    v4 = [*(a1 + 32) context];
    v5 = [v4 objectWithUUID:*(*(a1 + 32) + 64)];
    v6 = TSUCheckedDynamicCast();
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      [*(a1 + 32) willModifyForUpgrade];
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 40) + 8) + 40);

      [v9 i_setBuildPointer:v10 forUnarchive:1];
    }
  }

  else
  {
    v11 = [*(v2 + 136) objectAndReturnError:0];

    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_3"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:107 isFatal:0 description:{"invalid nil value for '%{public}s'", "[_buildReference objectAndReturnError:NULL]"}];

      v15 = MEMORY[0x277D81150];

      [v15 logBacktraceThrottled];
    }
  }
}

void sub_275E33468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275E334C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275E334D8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v6 = [v9 type];
  if ([v6 isEqualToString:@"com.apple.Keynote.recordingEventTrack-navigation"])
  {
    v7 = 40;
    v8 = 32;
  }

  else
  {
    if (![v6 isEqualToString:@"com.apple.iwork.Keynote.recordingEventTrack-movie"])
    {
      goto LABEL_6;
    }

    v7 = 56;
    v8 = 48;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), a2);
  *(*(*(a1 + v7) + 8) + 24) = a3;
LABEL_6:
}

void sub_275E33B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275E33BC8(uint64_t a1, void *a2, _BYTE *a3, double a4)
{
  v12 = a2;
  v7 = [v12 isInitialAmbientBuild];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    if (([v12 automatic] & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) p_correctedNavigationEventsFromNavigationEventTrack:]_block_invoke"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:134 isFatal:0 description:"An initial animated build in the same event as implicit movies should be automatic."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *a3 = 1;
    v8 = v12;
  }
}

void sub_275E34148(uint64_t a1, void *a2, double a3, double a4)
{
  v19 = a2;
  v7 = [*(a1 + 32) rendererForAnimatedBuild:?];
  objc_opt_class();
  v8 = [v7 info];
  v9 = TSUDynamicCast();

  if (v9)
  {
    v10 = [v19 buildType];
    if (v10 == 2)
    {
      if (![*(a1 + 40) containsObject:v9])
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 56) + a3;
      v11 = [[KNRecordingMovieEvent alloc] initWithStartTime:v9 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:2 movieEventType:v18 movieEventValue:0.0];
      [*(a1 + 48) addObject:v11];
      v13 = [[KNRecordingMovieEvent alloc] initWithStartTime:v9 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:4 movieEventType:v18 movieEventValue:NAN];
      [*(a1 + 48) addObject:v13];
      [*(a1 + 40) removeObject:v9];
      goto LABEL_12;
    }

    if (v10 == 1 && ([*(a1 + 40) containsObject:v9] & 1) == 0)
    {
      v11 = [v19 effectIdentifier];
      if (([(KNRecordingMovieEvent *)v11 isEqualToString:*MEMORY[0x277D80138]]& 1) != 0 || ([(KNRecordingMovieEvent *)v11 isEqualToString:*MEMORY[0x277D80158]]& 1) != 0 || [(KNRecordingMovieEvent *)v11 isEqualToString:*MEMORY[0x277D80148]])
      {
        v12 = *(a1 + 56);
      }

      else
      {
        v12 = *(a1 + 56) + a4;
      }

      v13 = [[KNRecordingMovieEvent alloc] initWithStartTime:v9 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:3 movieEventType:v12 movieEventValue:NAN];
      [*(a1 + 48) addObject:v13];
      v14 = [KNRecordingMovieEvent alloc];
      [v9 startTime];
      v16 = [(KNRecordingMovieEvent *)v14 initWithStartTime:v9 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:1 movieEventType:v12 movieEventValue:v15];
      [*(a1 + 48) addObject:v16];
      v17 = [[KNRecordingMovieEvent alloc] initWithStartTime:v9 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:2 movieEventType:v12 movieEventValue:1.0];
      [*(a1 + 48) addObject:v17];
      [*(a1 + 40) addObject:v9];

LABEL_12:
    }
  }

LABEL_13:
}

void sub_275E35508()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"KNTransitionCustomAttributesBounce", @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects", @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles", @"com.apple.iWork.Keynote.BLTMosaicFlip.type", @"KNTransitionCustomAttributesMotionBlur", @"KNTransitionCustomAttributesTextDelivery", @"KNTransitionCustomAttributesTimingCurve", @"KNTransitionCustomAttributesRandomNumberSeed", @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", @"com.apple.iWork.Keynote.BUKTwist.twist", @"KNTransitionCustomAttributesTravelDistance", 0}];
  v1 = qword_280A3C5A0;
  qword_280A3C5A0 = v0;
}

void sub_275E3787C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E378C0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E37904()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275E38AE0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38B24()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38B68()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38BAC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3918C(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_matchesObjectPlaceholderGeometry);
  v3 = class_getInstanceMethod(a1, sel_swizzled_matchesObjectPlaceholderGeometry);
  v4 = class_getInstanceMethod(a1, sel_setMatchesObjectPlaceholderGeometry_);
  v5 = class_getInstanceMethod(a1, sel_swizzled_setMatchesObjectPlaceholderGeometry_);
  method_exchangeImplementations(InstanceMethod, v3);

  method_exchangeImplementations(v4, v5);
}

uint64_t sub_275E396C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 animationFilter];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t sub_275E3A764(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v5 = [v4 type];
    v6 = [*(a1 + 32) type];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_275E3C23C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3C280()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275E3CF9C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3CFE0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3D068()
{
  v0 = [[KNBuildChunkIdentifier alloc] initEmptyIdentifier];
  v1 = qword_280A3C5B8;
  qword_280A3C5B8 = v0;
}

uint64_t sub_275E3D8FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  qword_2812EC1F8 = &unk_2884D8748;
  unk_2812EC200 = 0;
  xmmword_2812EC208 = 0u;
  unk_2812EC218 = 0u;
  if (atomic_load_explicit(dword_2812EA928, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812EC228, 0x3C3uLL);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275E3D9B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC5F8 = v4;
  qword_2812EC5F0 = &unk_2884D87F8;
  if (atomic_load_explicit(dword_2812EA970, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC608 = 0;
  unk_2812EC610 = 0;
  word_2812EC618 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275E3DA64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC1B8 = v4;
  qword_2812EC1B0 = &unk_2884D85E8;
  if (atomic_load_explicit(dword_2812EA998, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EC1D0 = 0;
  qword_2812EC1C8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275E3DB18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC1E0 = v4;
  qword_2812EC1D8 = &unk_2884D8698;
  if (atomic_load_explicit(dword_2812EA9B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC1F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t *sub_275E3DBC8(uint64_t *a1)
{
  if (a1 != &qword_2812EC1B0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275DE6258(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C40E6413DF5);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E3DC2C(uint64_t *a1)
{
  sub_275E3DBC8(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E3DC6C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_275DE629C(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  v2[24] = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E3DCCC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_275E1F66C(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_275E5B90C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_275E221E8(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_275E3DEB8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_275DE6A84(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275E3DFE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_275DE7130(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275E3E078(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8898, 0);
  if (v4)
  {

    return sub_275E3E120(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E3E120(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_275E1F66C(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812EAAD8;
      }

      result = sub_275DE748C(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275E3E1D4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E3DC6C(result);

    return sub_275E3E078(v4, a2);
  }

  return result;
}

uint64_t sub_275E3E220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = sub_275DE7730(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275E3E294(uint64_t *a1)
{
  if (a1 != &qword_2812EC1D8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275E3DBC8(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C404E984866);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E3E2F8(uint64_t *a1)
{
  sub_275E3E294(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E3E338(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_275E3DC6C(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E3E394(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275E4FBD8(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_275E60944(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275E3E4DC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_275E3DEB8(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275E3E5CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_275E3DFE8(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E3E658(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D88B0, 0);
  if (v4)
  {

    return sub_275E3E700(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E3E700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E4FBD8(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EC1B0;
    }

    return sub_275E3E120(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275E3E7A8(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E3E338(result);

    return sub_275E3E658(v4, a2);
  }

  return result;
}

BOOL sub_275E3E7F4(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (sub_275DE7730(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_275E3E878(uint64_t *a1)
{
  sub_275E3E8AC(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

uint64_t *sub_275E3E8AC(uint64_t *result)
{
  if (result != &qword_2812EC1F8)
  {
    v1 = result;
    if (result[6])
    {
      v2 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v2, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v3 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v3, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v4 = MEMORY[0x277C8EDB0]();
      MEMORY[0x277C8F960](v4, 0x10A1C404E50D5EBLL);
    }

    if (v1[9])
    {
      v5 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v5, 0x10A1C40D4912B22);
    }

    if (v1[10])
    {
      v6 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v6, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v7 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v7, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v8 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v8, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v9 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v9, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v10 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v10, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v11 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v11, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v12 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v12, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v13 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v13, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v14 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v14, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v15 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v15, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v16 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v16, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v17 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v17, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v18 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v18, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v19 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v19, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v20 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v20, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v21 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v21, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v22 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v22, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v23 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v23, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v24 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v24, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v25 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v25, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v26 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v26, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v27 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v27, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v28 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v28, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v29 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v29, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v30 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v30, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v31 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v31, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v32 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v32, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v33 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v33, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v34 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v34, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v35 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v35, 0x10A1C40D4912B22);
    }

    if (v1[40])
    {
      v36 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v36, 0x10A1C40D4912B22);
    }

    if (v1[41])
    {
      v37 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v37, 0x10A1C40D4912B22);
    }

    if (v1[42])
    {
      v38 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v38, 0x10A1C40D4912B22);
    }

    if (v1[43])
    {
      v39 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v39, 0x10A1C40D4912B22);
    }

    if (v1[44])
    {
      v40 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v40, 0x10A1C40D4912B22);
    }

    if (v1[45])
    {
      v41 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v41, 0x10A1C40D4912B22);
    }

    if (v1[46])
    {
      v42 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v42, 0x10A1C40D4912B22);
    }

    if (v1[47])
    {
      v43 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v43, 0x10A1C40D4912B22);
    }

    if (v1[48])
    {
      v44 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v44, 0x10A1C40D4912B22);
    }

    if (v1[49])
    {
      v45 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v45, 0x10A1C40D4912B22);
    }

    if (v1[50])
    {
      v46 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v46, 0x10A1C40D4912B22);
    }

    if (v1[51])
    {
      v47 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v47, 0x10A1C40D4912B22);
    }

    if (v1[52])
    {
      v48 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v48, 0x10A1C40D4912B22);
    }

    if (v1[53])
    {
      v49 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v49, 0x10A1C40D4912B22);
    }

    if (v1[54])
    {
      v50 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v50, 0x10A1C40D4912B22);
    }

    if (v1[55])
    {
      v51 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v51, 0x10A1C40D4912B22);
    }

    if (v1[56])
    {
      v52 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v52, 0x10A1C40D4912B22);
    }

    if (v1[57])
    {
      v53 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v53, 0x10A1C40D4912B22);
    }

    if (v1[58])
    {
      v54 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v54, 0x10A1C40D4912B22);
    }

    if (v1[59])
    {
      v55 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v55, 0x10A1C40D4912B22);
    }

    if (v1[60])
    {
      v56 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v56, 0x10A1C40D4912B22);
    }

    if (v1[61])
    {
      v57 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v57, 0x10A1C40D4912B22);
    }

    if (v1[62])
    {
      v58 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v58, 0x10A1C40D4912B22);
    }

    if (v1[63])
    {
      v59 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v59, 0x10A1C40D4912B22);
    }

    if (v1[64])
    {
      v60 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v60, 0x10A1C40D4912B22);
    }

    if (v1[65])
    {
      v61 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v61, 0x10A1C40D4912B22);
    }

    if (v1[66])
    {
      v62 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v62, 0x10A1C40D4912B22);
    }

    if (v1[67])
    {
      v63 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v63, 0x10A1C40D4912B22);
    }

    if (v1[68])
    {
      v64 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v64, 0x10A1C40D4912B22);
    }

    if (v1[69])
    {
      v65 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v65, 0x10A1C40D4912B22);
    }

    if (v1[70])
    {
      v66 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v66, 0x10A1C40D4912B22);
    }

    if (v1[71])
    {
      v67 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v67, 0x10A1C40D4912B22);
    }

    if (v1[72])
    {
      v68 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v68, 0x10A1C40D4912B22);
    }

    if (v1[73])
    {
      v69 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v69, 0x10A1C40D4912B22);
    }

    if (v1[74])
    {
      v70 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v70, 0x10A1C40D4912B22);
    }

    if (v1[75])
    {
      v71 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v71, 0x10A1C40D4912B22);
    }

    if (v1[76])
    {
      v72 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v72, 0x10A1C40D4912B22);
    }

    if (v1[77])
    {
      v73 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v73, 0x10A1C40D4912B22);
    }

    if (v1[78])
    {
      v74 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v74, 0x10A1C40D4912B22);
    }

    if (v1[79])
    {
      v75 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v75, 0x10A1C40D4912B22);
    }

    if (v1[80])
    {
      v76 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v76, 0x10A1C40D4912B22);
    }

    if (v1[81])
    {
      v77 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v77, 0x10A1C40D4912B22);
    }

    if (v1[82])
    {
      v78 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v78, 0x10A1C40D4912B22);
    }

    if (v1[83])
    {
      v79 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v79, 0x10A1C40D4912B22);
    }

    if (v1[84])
    {
      v80 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v80, 0x10A1C40D4912B22);
    }

    if (v1[85])
    {
      v81 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v81, 0x10A1C40D4912B22);
    }

    if (v1[86])
    {
      v82 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v82, 0x10A1C40D4912B22);
    }

    if (v1[87])
    {
      v83 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v83, 0x10A1C40D4912B22);
    }

    if (v1[88])
    {
      v84 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v84, 0x10A1C40D4912B22);
    }

    if (v1[89])
    {
      v85 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v85, 0x10A1C40D4912B22);
    }

    if (v1[90])
    {
      v86 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v86, 0x10A1C40D4912B22);
    }

    if (v1[91])
    {
      v87 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v87, 0x10A1C40D4912B22);
    }

    if (v1[92])
    {
      v88 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v88, 0x10A1C40D4912B22);
    }

    if (v1[93])
    {
      v89 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v89, 0x10A1C40D4912B22);
    }

    if (v1[94])
    {
      v90 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v90, 0x10A1C40D4912B22);
    }

    if (v1[95])
    {
      v91 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v91, 0x10A1C40D4912B22);
    }

    if (v1[96])
    {
      v92 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v92, 0x10A1C40D4912B22);
    }

    if (v1[97])
    {
      v93 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v93, 0x10A1C40D4912B22);
    }

    if (v1[98])
    {
      v94 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v94, 0x10A1C40D4912B22);
    }

    if (v1[99])
    {
      v95 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v95, 0x10A1C40D4912B22);
    }

    if (v1[100])
    {
      v96 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v96, 0x10A1C40D4912B22);
    }

    if (v1[101])
    {
      v97 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v97, 0x10A1C40D4912B22);
    }

    if (v1[102])
    {
      v98 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v98, 0x10A1C40D4912B22);
    }

    if (v1[103])
    {
      v99 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v99, 0x10A1C40D4912B22);
    }

    if (v1[104])
    {
      v100 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v100, 0x10A1C40D4912B22);
    }

    if (v1[105])
    {
      v101 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v101, 0x10A1C40D4912B22);
    }

    if (v1[106])
    {
      v102 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v102, 0x10A1C40D4912B22);
    }

    if (v1[107])
    {
      v103 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v103, 0x10A1C40D4912B22);
    }

    if (v1[108])
    {
      v104 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v104, 0x10A1C40D4912B22);
    }

    if (v1[109])
    {
      v105 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v105, 0x10A1C40D4912B22);
    }

    if (v1[110])
    {
      v106 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v106, 0x10A1C40D4912B22);
    }

    if (v1[111])
    {
      v107 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v107, 0x10A1C40D4912B22);
    }

    result = v1[112];
    if (result)
    {
      MEMORY[0x277C8EEF0]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E3F170(uint64_t *a1)
{
  sub_275E3E878(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E3F1B0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = result + 16;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSSSOS::SpecStringArchive::Clear(*(result + 6));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_167;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 7));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_168;
  }

LABEL_167:
  result = TSDSOS::SpecFillArchive::Clear(*(v1 + 8));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_169;
  }

LABEL_168:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 9));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_170:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 11));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_171;
  }

LABEL_169:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 10));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_170;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_171:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 12));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 13));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 14));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_175;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 15));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_176;
  }

LABEL_175:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 16));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_177;
  }

LABEL_176:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 17));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_178;
  }

LABEL_177:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 18));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_179;
  }

LABEL_178:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 19));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_179:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 20));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 21));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 22));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_183;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 23));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_184;
  }

LABEL_183:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 24));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_185;
  }

LABEL_184:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 25));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_186;
  }

LABEL_185:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 26));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_187;
  }

LABEL_186:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 27));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_187:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 28));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecStringArchive::Clear(*(v1 + 29));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::Clear(*(v1 + 30));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_250;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 31));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_251;
  }

LABEL_250:
  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 32));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_252;
  }

LABEL_251:
  result = TSSSOS::SpecColorArchive::Clear(*(v1 + 33));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_253;
  }

LABEL_252:
  result = TSSSOS::SpecColorArchive::Clear(*(v1 + 34));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_254:
    result = TSSSOS::SpecColorArchive::Clear(*(v1 + 36));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_255;
  }

LABEL_253:
  result = TSSSOS::SpecColorArchive::Clear(*(v1 + 35));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_254;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_255:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 37));
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 38));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_191;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 39));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_192;
  }

LABEL_191:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 40));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_193;
  }

LABEL_192:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 41));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_194;
  }

LABEL_193:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 42));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_195;
  }

LABEL_194:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 43));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_195:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 44));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 45));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 46));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_199;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 47));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_200;
  }

LABEL_199:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 48));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_201;
  }

LABEL_200:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 49));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_202;
  }

LABEL_201:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 50));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_203;
  }

LABEL_202:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 51));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_203:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 52));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 53));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 54));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_207;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 55));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_208;
  }

LABEL_207:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 56));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_209;
  }

LABEL_208:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 57));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_210;
  }

LABEL_209:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 58));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_211;
  }

LABEL_210:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 59));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_211:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 60));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 61));
  }

LABEL_70:
  if (!HIBYTE(v4))
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 62));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_258;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 63));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_259;
  }

LABEL_258:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 64));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_260;
  }

LABEL_259:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 65));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_261;
  }

LABEL_260:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 66));
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_262:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 68));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_263;
  }

LABEL_261:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 67));
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_262;
  }

LABEL_78:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_263:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 69));
LABEL_79:
  v5 = *(v1 + 6);
  if (!v5)
  {
    goto LABEL_89;
  }

  if (v5)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 70));
    if ((v5 & 2) == 0)
    {
LABEL_82:
      if ((v5 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_215;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_82;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 71));
  if ((v5 & 4) == 0)
  {
LABEL_83:
    if ((v5 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_216;
  }

LABEL_215:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 72));
  if ((v5 & 8) == 0)
  {
LABEL_84:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_217;
  }

LABEL_216:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 73));
  if ((v5 & 0x10) == 0)
  {
LABEL_85:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_218;
  }

LABEL_217:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 74));
  if ((v5 & 0x20) == 0)
  {
LABEL_86:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_219;
  }

LABEL_218:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 75));
  if ((v5 & 0x40) == 0)
  {
LABEL_87:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_219:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 76));
  if ((v5 & 0x80) != 0)
  {
LABEL_88:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 77));
  }

LABEL_89:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 78));
    if ((v5 & 0x200) == 0)
    {
LABEL_92:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_223;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 79));
  if ((v5 & 0x400) == 0)
  {
LABEL_93:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_224;
  }

LABEL_223:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 80));
  if ((v5 & 0x800) == 0)
  {
LABEL_94:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_225;
  }

LABEL_224:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 81));
  if ((v5 & 0x1000) == 0)
  {
LABEL_95:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_226;
  }

LABEL_225:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 82));
  if ((v5 & 0x2000) == 0)
  {
LABEL_96:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_227;
  }

LABEL_226:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 83));
  if ((v5 & 0x4000) == 0)
  {
LABEL_97:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_227:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 84));
  if ((v5 & 0x8000) != 0)
  {
LABEL_98:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 85));
  }

LABEL_99:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 86));
    if ((v5 & 0x20000) == 0)
    {
LABEL_102:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_231;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 87));
  if ((v5 & 0x40000) == 0)
  {
LABEL_103:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_232;
  }

LABEL_231:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 88));
  if ((v5 & 0x80000) == 0)
  {
LABEL_104:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_233;
  }

LABEL_232:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 89));
  if ((v5 & 0x100000) == 0)
  {
LABEL_105:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_234;
  }

LABEL_233:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 90));
  if ((v5 & 0x200000) == 0)
  {
LABEL_106:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_235;
  }

LABEL_234:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 91));
  if ((v5 & 0x400000) == 0)
  {
LABEL_107:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_235:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 92));
  if ((v5 & 0x800000) != 0)
  {
LABEL_108:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 93));
  }

LABEL_109:
  if (!HIBYTE(v5))
  {
    goto LABEL_118;
  }

  if ((v5 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 94));
    if ((v5 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_266;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 95));
  if ((v5 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_267;
  }

LABEL_266:
  result = TSSSOS::SpecColorArchive::Clear(*(v1 + 96));
  if ((v5 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_268;
  }

LABEL_267:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 97));
  if ((v5 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_269;
  }

LABEL_268:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 98));
  if ((v5 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_270:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 100));
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_271;
  }

LABEL_269:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 99));
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_270;
  }

LABEL_117:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_271:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 101));
LABEL_118:
  v6 = *(v1 + 7);
  if (!v6)
  {
    goto LABEL_128;
  }

  if (v6)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 102));
    if ((v6 & 2) == 0)
    {
LABEL_121:
      if ((v6 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_239;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_121;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 103));
  if ((v6 & 4) == 0)
  {
LABEL_122:
    if ((v6 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_240;
  }

LABEL_239:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 104));
  if ((v6 & 8) == 0)
  {
LABEL_123:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_241;
  }

LABEL_240:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 105));
  if ((v6 & 0x10) == 0)
  {
LABEL_124:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_242;
  }

LABEL_241:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 106));
  if ((v6 & 0x20) == 0)
  {
LABEL_125:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_243;
  }

LABEL_242:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 107));
  if ((v6 & 0x40) == 0)
  {
LABEL_126:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_243:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 108));
  if ((v6 & 0x80) != 0)
  {
LABEL_127:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 109));
  }

LABEL_128:
  if ((v6 & 0x700) == 0)
  {
    goto LABEL_133;
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 110));
    if ((v6 & 0x200) == 0)
    {
LABEL_131:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_131;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 111));
  if ((v6 & 0x400) != 0)
  {
LABEL_132:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 112));
  }

LABEL_133:
  if ((v6 & 0xF800) != 0)
  {
    *(v1 + 908) = 0;
    *(v1 + 226) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(v2 + 893) = 0;
  }

  if (HIBYTE(v6))
  {
    *(v2 + 901) = 0;
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    *(v2 + 909) = 0;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(v2 + 917) = 0;
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(v2 + 925) = 0;
  }

  if (HIBYTE(v7))
  {
    *(v2 + 933) = 0;
  }

  v8 = *(v1 + 9);
  if (v8)
  {
    *(v2 + 941) = 0;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(v2 + 949) = 0;
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(v2 + 957) = 0;
  }

  if (HIBYTE(v8))
  {
    *(v2 + 965) = 0;
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    *(v2 + 973) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(v2 + 981) = 0;
  }

  if ((v9 & 0x3F0000) != 0)
  {
    *(v1 + 1009) = 0;
    *(v1 + 1005) = 0;
  }

  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  v11 = *(v1 + 8);
  v10 = (v1 + 8);
  if (v11)
  {

    return sub_275E224D0(v10);
  }

  return result;
}

google::protobuf::internal *sub_275E3FA08(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v659 = a2;
  if ((sub_275E221E8(a3, &v659, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v659 + 1);
      LODWORD(v7) = *v659;
      if (*v659 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v659, v7);
          v659 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v659 + 2);
      }

      v659 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 1u;
          v549 = *(a1 + 48);
          if (v549)
          {
            goto LABEL_1292;
          }

          v578 = *(a1 + 8);
          if (v578)
          {
            v578 = *(v578 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v578);
          *(a1 + 48) = v549;
          goto LABEL_1291;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x800u;
          v9 = (v6 + 1);
          v8 = *v6;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v10 = *v9;
          v8 = (v10 << 7) + v8 - 128;
          if (v10 < 0)
          {
            v346 = google::protobuf::internal::VarintParseSlow64(v6, v8);
            v659 = v346;
            *(a1 + 904) = v347 != 0;
            if (!v346)
            {
              return 0;
            }
          }

          else
          {
            v9 = (v6 + 2);
LABEL_12:
            v659 = v9;
            *(a1 + 904) = v8 != 0;
          }

          goto LABEL_1306;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 2u;
          v549 = *(a1 + 56);
          if (v549)
          {
            goto LABEL_1292;
          }

          v655 = *(a1 + 8);
          if (v655)
          {
            v655 = *(v655 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v655);
          *(a1 + 56) = v549;
          goto LABEL_1291;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x1000u;
          v322 = (v6 + 1);
          v321 = *v6;
          if ((v321 & 0x8000000000000000) == 0)
          {
            goto LABEL_534;
          }

          v323 = *v322;
          v321 = (v323 << 7) + v321 - 128;
          if (v323 < 0)
          {
            v538 = google::protobuf::internal::VarintParseSlow64(v6, v321);
            v659 = v538;
            *(a1 + 905) = v539 != 0;
            if (!v538)
            {
              return 0;
            }
          }

          else
          {
            v322 = (v6 + 2);
LABEL_534:
            v659 = v322;
            *(a1 + 905) = v321 != 0;
          }

          goto LABEL_1306;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 4u;
          v602 = *(a1 + 64);
          if (!v602)
          {
            v603 = *(a1 + 8);
            if (v603)
            {
              v603 = *(v603 & 0xFFFFFFFFFFFFFFFELL);
            }

            v602 = MEMORY[0x277C8F100](v603);
            *(a1 + 64) = v602;
            v6 = v659;
          }

          v604 = sub_275E60AE4(a3, v602, v6);
          goto LABEL_1305;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x2000u;
          v139 = (v6 + 1);
          v138 = *v6;
          if ((v138 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v140 = *v139;
          v138 = (v140 << 7) + v138 - 128;
          if (v140 < 0)
          {
            v416 = google::protobuf::internal::VarintParseSlow64(v6, v138);
            v659 = v416;
            *(a1 + 906) = v417 != 0;
            if (!v416)
            {
              return 0;
            }
          }

          else
          {
            v139 = (v6 + 2);
LABEL_229:
            v659 = v139;
            *(a1 + 906) = v138 != 0;
          }

          goto LABEL_1306;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 8u;
          v561 = *(a1 + 72);
          if (v561)
          {
            goto LABEL_1198;
          }

          v562 = *(a1 + 8);
          if (v562)
          {
            v562 = *(v562 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F150](v562);
          *(a1 + 72) = v561;
          goto LABEL_1197;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x4000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v340 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v659 = v340;
            *(a1 + 907) = v341 != 0;
            if (!v340)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v659 = v28;
            *(a1 + 907) = v27 != 0;
          }

          goto LABEL_1306;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10u;
          v544 = *(a1 + 80);
          if (v544)
          {
            goto LABEL_1304;
          }

          v651 = *(a1 + 8);
          if (v651)
          {
            v651 = *(v651 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v651);
          *(a1 + 80) = v544;
          goto LABEL_1303;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x8000u;
          v328 = (v6 + 1);
          v327 = *v6;
          if ((v327 & 0x8000000000000000) == 0)
          {
            goto LABEL_544;
          }

          v329 = *v328;
          v327 = (v329 << 7) + v327 - 128;
          if (v329 < 0)
          {
            v542 = google::protobuf::internal::VarintParseSlow64(v6, v327);
            v659 = v542;
            *(a1 + 908) = v543 != 0;
            if (!v542)
            {
              return 0;
            }
          }

          else
          {
            v328 = (v6 + 2);
LABEL_544:
            v659 = v328;
            *(a1 + 908) = v327 != 0;
          }

LABEL_1306:
          if (sub_275E221E8(a3, &v659, *(a3 + 92)))
          {
            return v659;
          }

          break;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20u;
          v544 = *(a1 + 88);
          if (v544)
          {
            goto LABEL_1304;
          }

          v601 = *(a1 + 8);
          if (v601)
          {
            v601 = *(v601 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v601);
          *(a1 + 88) = v544;
          goto LABEL_1303;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10000u;
          v295 = (v6 + 1);
          v294 = *v6;
          if ((v294 & 0x8000000000000000) == 0)
          {
            goto LABEL_489;
          }

          v296 = *v295;
          v294 = (v296 << 7) + v294 - 128;
          if (v296 < 0)
          {
            v520 = google::protobuf::internal::VarintParseSlow64(v6, v294);
            v659 = v520;
            *(a1 + 909) = v521 != 0;
            if (!v520)
            {
              return 0;
            }
          }

          else
          {
            v295 = (v6 + 2);
LABEL_489:
            v659 = v295;
            *(a1 + 909) = v294 != 0;
          }

          goto LABEL_1306;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40u;
          v544 = *(a1 + 96);
          if (v544)
          {
            goto LABEL_1304;
          }

          v555 = *(a1 + 8);
          if (v555)
          {
            v555 = *(v555 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v555);
          *(a1 + 96) = v544;
          goto LABEL_1303;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20000u;
          v244 = (v6 + 1);
          v243 = *v6;
          if ((v243 & 0x8000000000000000) == 0)
          {
            goto LABEL_404;
          }

          v245 = *v244;
          v243 = (v245 << 7) + v243 - 128;
          if (v245 < 0)
          {
            v486 = google::protobuf::internal::VarintParseSlow64(v6, v243);
            v659 = v486;
            *(a1 + 910) = v487 != 0;
            if (!v486)
            {
              return 0;
            }
          }

          else
          {
            v244 = (v6 + 2);
LABEL_404:
            v659 = v244;
            *(a1 + 910) = v243 != 0;
          }

          goto LABEL_1306;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80u;
          v544 = *(a1 + 104);
          if (v544)
          {
            goto LABEL_1304;
          }

          v556 = *(a1 + 8);
          if (v556)
          {
            v556 = *(v556 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v556);
          *(a1 + 104) = v544;
          goto LABEL_1303;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40000u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v350 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v659 = v350;
            *(a1 + 911) = v351 != 0;
            if (!v350)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_64:
            v659 = v40;
            *(a1 + 911) = v39 != 0;
          }

          goto LABEL_1306;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x100u;
          v544 = *(a1 + 112);
          if (v544)
          {
            goto LABEL_1304;
          }

          v657 = *(a1 + 8);
          if (v657)
          {
            v657 = *(v657 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v657);
          *(a1 + 112) = v544;
          goto LABEL_1303;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80000u;
          v280 = (v6 + 1);
          v279 = *v6;
          if ((v279 & 0x8000000000000000) == 0)
          {
            goto LABEL_464;
          }

          v281 = *v280;
          v279 = (v281 << 7) + v279 - 128;
          if (v281 < 0)
          {
            v510 = google::protobuf::internal::VarintParseSlow64(v6, v279);
            v659 = v510;
            *(a1 + 912) = v511 != 0;
            if (!v510)
            {
              return 0;
            }
          }

          else
          {
            v280 = (v6 + 2);
LABEL_464:
            v659 = v280;
            *(a1 + 912) = v279 != 0;
          }

          goto LABEL_1306;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x200u;
          v544 = *(a1 + 120);
          if (v544)
          {
            goto LABEL_1304;
          }

          v546 = *(a1 + 8);
          if (v546)
          {
            v546 = *(v546 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v546);
          *(a1 + 120) = v544;
          goto LABEL_1303;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x100000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v332 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v659 = v332;
            *(a1 + 913) = v333 != 0;
            if (!v332)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v659 = v16;
            *(a1 + 913) = v15 != 0;
          }

          goto LABEL_1306;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x400u;
          v544 = *(a1 + 128);
          if (v544)
          {
            goto LABEL_1304;
          }

          v635 = *(a1 + 8);
          if (v635)
          {
            v635 = *(v635 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v635);
          *(a1 + 128) = v544;
          goto LABEL_1303;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x200000u;
          v214 = (v6 + 1);
          v213 = *v6;
          if ((v213 & 0x8000000000000000) == 0)
          {
            goto LABEL_354;
          }

          v215 = *v214;
          v213 = (v215 << 7) + v213 - 128;
          if (v215 < 0)
          {
            v466 = google::protobuf::internal::VarintParseSlow64(v6, v213);
            v659 = v466;
            *(a1 + 914) = v467 != 0;
            if (!v466)
            {
              return 0;
            }
          }

          else
          {
            v214 = (v6 + 2);
LABEL_354:
            v659 = v214;
            *(a1 + 914) = v213 != 0;
          }

          goto LABEL_1306;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x800u;
          v544 = *(a1 + 136);
          if (v544)
          {
            goto LABEL_1304;
          }

          v545 = *(a1 + 8);
          if (v545)
          {
            v545 = *(v545 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v545);
          *(a1 + 136) = v544;
          goto LABEL_1303;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x400000u;
          v274 = (v6 + 1);
          v273 = *v6;
          if ((v273 & 0x8000000000000000) == 0)
          {
            goto LABEL_454;
          }

          v275 = *v274;
          v273 = (v275 << 7) + v273 - 128;
          if (v275 < 0)
          {
            v506 = google::protobuf::internal::VarintParseSlow64(v6, v273);
            v659 = v506;
            *(a1 + 915) = v507 != 0;
            if (!v506)
            {
              return 0;
            }
          }

          else
          {
            v274 = (v6 + 2);
LABEL_454:
            v659 = v274;
            *(a1 + 915) = v273 != 0;
          }

          goto LABEL_1306;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x1000u;
          v544 = *(a1 + 144);
          if (v544)
          {
            goto LABEL_1304;
          }

          v656 = *(a1 + 8);
          if (v656)
          {
            v656 = *(v656 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v656);
          *(a1 + 144) = v544;
          goto LABEL_1303;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x800000u;
          v271 = (v6 + 1);
          v270 = *v6;
          if ((v270 & 0x8000000000000000) == 0)
          {
            goto LABEL_449;
          }

          v272 = *v271;
          v270 = (v272 << 7) + v270 - 128;
          if (v272 < 0)
          {
            v504 = google::protobuf::internal::VarintParseSlow64(v6, v270);
            v659 = v504;
            *(a1 + 916) = v505 != 0;
            if (!v504)
            {
              return 0;
            }
          }

          else
          {
            v271 = (v6 + 2);
LABEL_449:
            v659 = v271;
            *(a1 + 916) = v270 != 0;
          }

          goto LABEL_1306;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x2000u;
          v544 = *(a1 + 152);
          if (v544)
          {
            goto LABEL_1304;
          }

          v640 = *(a1 + 8);
          if (v640)
          {
            v640 = *(v640 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v640);
          *(a1 + 152) = v544;
          goto LABEL_1303;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x1000000u;
          v292 = (v6 + 1);
          v291 = *v6;
          if ((v291 & 0x8000000000000000) == 0)
          {
            goto LABEL_484;
          }

          v293 = *v292;
          v291 = (v293 << 7) + v291 - 128;
          if (v293 < 0)
          {
            v518 = google::protobuf::internal::VarintParseSlow64(v6, v291);
            v659 = v518;
            *(a1 + 917) = v519 != 0;
            if (!v518)
            {
              return 0;
            }
          }

          else
          {
            v292 = (v6 + 2);
LABEL_484:
            v659 = v292;
            *(a1 + 917) = v291 != 0;
          }

          goto LABEL_1306;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x4000u;
          v544 = *(a1 + 160);
          if (v544)
          {
            goto LABEL_1304;
          }

          v619 = *(a1 + 8);
          if (v619)
          {
            v619 = *(v619 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v619);
          *(a1 + 160) = v544;
          goto LABEL_1303;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x2000000u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v366 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v659 = v366;
            *(a1 + 918) = v367 != 0;
            if (!v366)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_104:
            v659 = v64;
            *(a1 + 918) = v63 != 0;
          }

          goto LABEL_1306;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x8000u;
          v544 = *(a1 + 168);
          if (v544)
          {
            goto LABEL_1304;
          }

          v626 = *(a1 + 8);
          if (v626)
          {
            v626 = *(v626 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v626);
          *(a1 + 168) = v544;
          goto LABEL_1303;
        case 0x20u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x4000000u;
          v232 = (v6 + 1);
          v231 = *v6;
          if ((v231 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v233 = *v232;
          v231 = (v233 << 7) + v231 - 128;
          if (v233 < 0)
          {
            v478 = google::protobuf::internal::VarintParseSlow64(v6, v231);
            v659 = v478;
            *(a1 + 919) = v479 != 0;
            if (!v478)
            {
              return 0;
            }
          }

          else
          {
            v232 = (v6 + 2);
LABEL_384:
            v659 = v232;
            *(a1 + 919) = v231 != 0;
          }

          goto LABEL_1306;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10000u;
          v544 = *(a1 + 176);
          if (v544)
          {
            goto LABEL_1304;
          }

          v547 = *(a1 + 8);
          if (v547)
          {
            v547 = *(v547 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v547);
          *(a1 + 176) = v544;
          goto LABEL_1303;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x8000000u;
          v256 = (v6 + 1);
          v255 = *v6;
          if ((v255 & 0x8000000000000000) == 0)
          {
            goto LABEL_424;
          }

          v257 = *v256;
          v255 = (v257 << 7) + v255 - 128;
          if (v257 < 0)
          {
            v494 = google::protobuf::internal::VarintParseSlow64(v6, v255);
            v659 = v494;
            *(a1 + 920) = v495 != 0;
            if (!v494)
            {
              return 0;
            }
          }

          else
          {
            v256 = (v6 + 2);
LABEL_424:
            v659 = v256;
            *(a1 + 920) = v255 != 0;
          }

          goto LABEL_1306;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20000u;
          v544 = *(a1 + 184);
          if (v544)
          {
            goto LABEL_1304;
          }

          v649 = *(a1 + 8);
          if (v649)
          {
            v649 = *(v649 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v649);
          *(a1 + 184) = v544;
          goto LABEL_1303;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10000000u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v330 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v659 = v330;
            *(a1 + 921) = v331 != 0;
            if (!v330)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v659 = v13;
            *(a1 + 921) = v12 != 0;
          }

          goto LABEL_1306;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40000u;
          v544 = *(a1 + 192);
          if (v544)
          {
            goto LABEL_1304;
          }

          v552 = *(a1 + 8);
          if (v552)
          {
            v552 = *(v552 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v552);
          *(a1 + 192) = v544;
          goto LABEL_1303;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20000000u;
          v325 = (v6 + 1);
          v324 = *v6;
          if ((v324 & 0x8000000000000000) == 0)
          {
            goto LABEL_539;
          }

          v326 = *v325;
          v324 = (v326 << 7) + v324 - 128;
          if (v326 < 0)
          {
            v540 = google::protobuf::internal::VarintParseSlow64(v6, v324);
            v659 = v540;
            *(a1 + 922) = v541 != 0;
            if (!v540)
            {
              return 0;
            }
          }

          else
          {
            v325 = (v6 + 2);
LABEL_539:
            v659 = v325;
            *(a1 + 922) = v324 != 0;
          }

          goto LABEL_1306;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80000u;
          v544 = *(a1 + 200);
          if (v544)
          {
            goto LABEL_1304;
          }

          v548 = *(a1 + 8);
          if (v548)
          {
            v548 = *(v548 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v548);
          *(a1 + 200) = v544;
          goto LABEL_1303;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40000000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v334 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v659 = v334;
            *(a1 + 923) = v335 != 0;
            if (!v334)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v659 = v19;
            *(a1 + 923) = v18 != 0;
          }

          goto LABEL_1306;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x100000u;
          v561 = *(a1 + 208);
          if (v561)
          {
            goto LABEL_1198;
          }

          v637 = *(a1 + 8);
          if (v637)
          {
            v637 = *(v637 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F150](v637);
          *(a1 + 208) = v561;
          goto LABEL_1197;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80000000;
          v238 = (v6 + 1);
          v237 = *v6;
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_394;
          }

          v239 = *v238;
          v237 = (v239 << 7) + v237 - 128;
          if (v239 < 0)
          {
            v482 = google::protobuf::internal::VarintParseSlow64(v6, v237);
            v659 = v482;
            *(a1 + 924) = v483 != 0;
            if (!v482)
            {
              return 0;
            }
          }

          else
          {
            v238 = (v6 + 2);
LABEL_394:
            v659 = v238;
            *(a1 + 924) = v237 != 0;
          }

          goto LABEL_1306;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x200000u;
          v544 = *(a1 + 216);
          if (v544)
          {
            goto LABEL_1304;
          }

          v653 = *(a1 + 8);
          if (v653)
          {
            v653 = *(v653 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v653);
          *(a1 + 216) = v544;
          goto LABEL_1303;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 1u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v336 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v659 = v336;
            *(a1 + 925) = v337 != 0;
            if (!v336)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v659 = v22;
            *(a1 + 925) = v21 != 0;
          }

          goto LABEL_1306;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x400000u;
          v592 = *(a1 + 224);
          if (v592)
          {
            goto LABEL_1191;
          }

          v606 = *(a1 + 8);
          if (v606)
          {
            v606 = *(v606 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v606);
          *(a1 + 224) = v592;
          goto LABEL_1190;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 2u;
          v304 = (v6 + 1);
          v303 = *v6;
          if ((v303 & 0x8000000000000000) == 0)
          {
            goto LABEL_504;
          }

          v305 = *v304;
          v303 = (v305 << 7) + v303 - 128;
          if (v305 < 0)
          {
            v526 = google::protobuf::internal::VarintParseSlow64(v6, v303);
            v659 = v526;
            *(a1 + 926) = v527 != 0;
            if (!v526)
            {
              return 0;
            }
          }

          else
          {
            v304 = (v6 + 2);
LABEL_504:
            v659 = v304;
            *(a1 + 926) = v303 != 0;
          }

          goto LABEL_1306;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x800000u;
          v549 = *(a1 + 232);
          if (v549)
          {
            goto LABEL_1292;
          }

          v605 = *(a1 + 8);
          if (v605)
          {
            v605 = *(v605 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v605);
          *(a1 + 232) = v549;
          goto LABEL_1291;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 4u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v380 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v659 = v380;
            *(a1 + 927) = v381 != 0;
            if (!v380)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_139:
            v659 = v85;
            *(a1 + 927) = v84 != 0;
          }

          goto LABEL_1306;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x1000000u;
          v549 = *(a1 + 240);
          if (v549)
          {
            goto LABEL_1292;
          }

          v647 = *(a1 + 8);
          if (v647)
          {
            v647 = *(v647 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v647);
          *(a1 + 240) = v549;
          goto LABEL_1291;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 8u;
          v100 = (v6 + 1);
          v99 = *v6;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v101 = *v100;
          v99 = (v101 << 7) + v99 - 128;
          if (v101 < 0)
          {
            v390 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v659 = v390;
            *(a1 + 928) = v391 != 0;
            if (!v390)
            {
              return 0;
            }
          }

          else
          {
            v100 = (v6 + 2);
LABEL_164:
            v659 = v100;
            *(a1 + 928) = v99 != 0;
          }

          goto LABEL_1306;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x2000000u;
          v549 = *(a1 + 248);
          if (v549)
          {
            goto LABEL_1292;
          }

          v550 = *(a1 + 8);
          if (v550)
          {
            v550 = *(v550 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v550);
          *(a1 + 248) = v549;
          goto LABEL_1291;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10u;
          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v342 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            v659 = v342;
            *(a1 + 929) = v343 != 0;
            if (!v342)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_49:
            v659 = v31;
            *(a1 + 929) = v30 != 0;
          }

          goto LABEL_1306;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x4000000u;
          v549 = *(a1 + 256);
          if (v549)
          {
            goto LABEL_1292;
          }

          v621 = *(a1 + 8);
          if (v621)
          {
            v621 = *(v621 & 0xFFFFFFFFFFFFFFFELL);
          }

          v549 = MEMORY[0x277C8F140](v621);
          *(a1 + 256) = v549;
LABEL_1291:
          v6 = v659;
LABEL_1292:
          v604 = sub_275E60A14(a3, v549, v6);
          goto LABEL_1305;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_69;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v352 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v659 = v352;
            *(a1 + 930) = v353 != 0;
            if (!v352)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_69:
            v659 = v43;
            *(a1 + 930) = v42 != 0;
          }

          goto LABEL_1306;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x8000000u;
          v570 = *(a1 + 264);
          if (v570)
          {
            goto LABEL_1285;
          }

          v611 = *(a1 + 8);
          if (v611)
          {
            v611 = *(v611 & 0xFFFFFFFFFFFFFFFELL);
          }

          v570 = MEMORY[0x277C8F120](v611);
          *(a1 + 264) = v570;
          goto LABEL_1284;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40u;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v396 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v659 = v396;
            *(a1 + 931) = v397 != 0;
            if (!v396)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_179:
            v659 = v109;
            *(a1 + 931) = v108 != 0;
          }

          goto LABEL_1306;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10000000u;
          v570 = *(a1 + 272);
          if (v570)
          {
            goto LABEL_1285;
          }

          v654 = *(a1 + 8);
          if (v654)
          {
            v654 = *(v654 & 0xFFFFFFFFFFFFFFFELL);
          }

          v570 = MEMORY[0x277C8F120](v654);
          *(a1 + 272) = v570;
          goto LABEL_1284;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80u;
          v121 = (v6 + 1);
          v120 = *v6;
          if ((v120 & 0x8000000000000000) == 0)
          {
            goto LABEL_199;
          }

          v122 = *v121;
          v120 = (v122 << 7) + v120 - 128;
          if (v122 < 0)
          {
            v404 = google::protobuf::internal::VarintParseSlow64(v6, v120);
            v659 = v404;
            *(a1 + 932) = v405 != 0;
            if (!v404)
            {
              return 0;
            }
          }

          else
          {
            v121 = (v6 + 2);
LABEL_199:
            v659 = v121;
            *(a1 + 932) = v120 != 0;
          }

          goto LABEL_1306;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20000000u;
          v570 = *(a1 + 280);
          if (v570)
          {
            goto LABEL_1285;
          }

          v652 = *(a1 + 8);
          if (v652)
          {
            v652 = *(v652 & 0xFFFFFFFFFFFFFFFELL);
          }

          v570 = MEMORY[0x277C8F120](v652);
          *(a1 + 280) = v570;
          goto LABEL_1284;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x100u;
          v316 = (v6 + 1);
          v315 = *v6;
          if ((v315 & 0x8000000000000000) == 0)
          {
            goto LABEL_524;
          }

          v317 = *v316;
          v315 = (v317 << 7) + v315 - 128;
          if (v317 < 0)
          {
            v534 = google::protobuf::internal::VarintParseSlow64(v6, v315);
            v659 = v534;
            *(a1 + 933) = v535 != 0;
            if (!v534)
            {
              return 0;
            }
          }

          else
          {
            v316 = (v6 + 2);
LABEL_524:
            v659 = v316;
            *(a1 + 933) = v315 != 0;
          }

          goto LABEL_1306;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40000000u;
          v570 = *(a1 + 288);
          if (v570)
          {
            goto LABEL_1285;
          }

          v571 = *(a1 + 8);
          if (v571)
          {
            v571 = *(v571 & 0xFFFFFFFFFFFFFFFELL);
          }

          v570 = MEMORY[0x277C8F120](v571);
          *(a1 + 288) = v570;
          goto LABEL_1284;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x200u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v368 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v659 = v368;
            *(a1 + 934) = v369 != 0;
            if (!v368)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_109:
            v659 = v67;
            *(a1 + 934) = v66 != 0;
          }

          goto LABEL_1306;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80000000;
          v544 = *(a1 + 296);
          if (v544)
          {
            goto LABEL_1304;
          }

          v566 = *(a1 + 8);
          if (v566)
          {
            v566 = *(v566 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v566);
          *(a1 + 296) = v544;
          goto LABEL_1303;
        case 0x40u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x400u;
          v313 = (v6 + 1);
          v312 = *v6;
          if ((v312 & 0x8000000000000000) == 0)
          {
            goto LABEL_519;
          }

          v314 = *v313;
          v312 = (v314 << 7) + v312 - 128;
          if (v314 < 0)
          {
            v532 = google::protobuf::internal::VarintParseSlow64(v6, v312);
            v659 = v532;
            *(a1 + 935) = v533 != 0;
            if (!v532)
            {
              return 0;
            }
          }

          else
          {
            v313 = (v6 + 2);
LABEL_519:
            v659 = v313;
            *(a1 + 935) = v312 != 0;
          }

          goto LABEL_1306;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 1u;
          v544 = *(a1 + 304);
          if (v544)
          {
            goto LABEL_1304;
          }

          v650 = *(a1 + 8);
          if (v650)
          {
            v650 = *(v650 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v650);
          *(a1 + 304) = v544;
          goto LABEL_1303;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x800u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v338 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v659 = v338;
            *(a1 + 936) = v339 != 0;
            if (!v338)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v659 = v25;
            *(a1 + 936) = v24 != 0;
          }

          goto LABEL_1306;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 2u;
          v544 = *(a1 + 312);
          if (v544)
          {
            goto LABEL_1304;
          }

          v573 = *(a1 + 8);
          if (v573)
          {
            v573 = *(v573 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v573);
          *(a1 + 312) = v544;
          goto LABEL_1303;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x1000u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v372 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v659 = v372;
            *(a1 + 937) = v373 != 0;
            if (!v372)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_119:
            v659 = v73;
            *(a1 + 937) = v72 != 0;
          }

          goto LABEL_1306;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 4u;
          v544 = *(a1 + 320);
          if (v544)
          {
            goto LABEL_1304;
          }

          v616 = *(a1 + 8);
          if (v616)
          {
            v616 = *(v616 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v616);
          *(a1 + 320) = v544;
          goto LABEL_1303;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x2000u;
          v283 = (v6 + 1);
          v282 = *v6;
          if ((v282 & 0x8000000000000000) == 0)
          {
            goto LABEL_469;
          }

          v284 = *v283;
          v282 = (v284 << 7) + v282 - 128;
          if (v284 < 0)
          {
            v512 = google::protobuf::internal::VarintParseSlow64(v6, v282);
            v659 = v512;
            *(a1 + 938) = v513 != 0;
            if (!v512)
            {
              return 0;
            }
          }

          else
          {
            v283 = (v6 + 2);
LABEL_469:
            v659 = v283;
            *(a1 + 938) = v282 != 0;
          }

          goto LABEL_1306;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 8u;
          v544 = *(a1 + 328);
          if (v544)
          {
            goto LABEL_1304;
          }

          v553 = *(a1 + 8);
          if (v553)
          {
            v553 = *(v553 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v553);
          *(a1 + 328) = v544;
          goto LABEL_1303;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x4000u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v426 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v659 = v426;
            *(a1 + 939) = v427 != 0;
            if (!v426)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_254:
            v659 = v154;
            *(a1 + 939) = v153 != 0;
          }

          goto LABEL_1306;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10u;
          v544 = *(a1 + 336);
          if (v544)
          {
            goto LABEL_1304;
          }

          v646 = *(a1 + 8);
          if (v646)
          {
            v646 = *(v646 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v646);
          *(a1 + 336) = v544;
          goto LABEL_1303;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x8000u;
          v319 = (v6 + 1);
          v318 = *v6;
          if ((v318 & 0x8000000000000000) == 0)
          {
            goto LABEL_529;
          }

          v320 = *v319;
          v318 = (v320 << 7) + v318 - 128;
          if (v320 < 0)
          {
            v536 = google::protobuf::internal::VarintParseSlow64(v6, v318);
            v659 = v536;
            *(a1 + 940) = v537 != 0;
            if (!v536)
            {
              return 0;
            }
          }

          else
          {
            v319 = (v6 + 2);
LABEL_529:
            v659 = v319;
            *(a1 + 940) = v318 != 0;
          }

          goto LABEL_1306;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20u;
          v544 = *(a1 + 344);
          if (v544)
          {
            goto LABEL_1304;
          }

          v600 = *(a1 + 8);
          if (v600)
          {
            v600 = *(v600 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v600);
          *(a1 + 344) = v544;
          goto LABEL_1303;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10000u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v344 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v659 = v344;
            *(a1 + 941) = v345 != 0;
            if (!v344)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_54:
            v659 = v34;
            *(a1 + 941) = v33 != 0;
          }

          goto LABEL_1306;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40u;
          v544 = *(a1 + 352);
          if (v544)
          {
            goto LABEL_1304;
          }

          v648 = *(a1 + 8);
          if (v648)
          {
            v648 = *(v648 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v648);
          *(a1 + 352) = v544;
          goto LABEL_1303;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20000u;
          v205 = (v6 + 1);
          v204 = *v6;
          if ((v204 & 0x8000000000000000) == 0)
          {
            goto LABEL_339;
          }

          v206 = *v205;
          v204 = (v206 << 7) + v204 - 128;
          if (v206 < 0)
          {
            v460 = google::protobuf::internal::VarintParseSlow64(v6, v204);
            v659 = v460;
            *(a1 + 942) = v461 != 0;
            if (!v460)
            {
              return 0;
            }
          }

          else
          {
            v205 = (v6 + 2);
LABEL_339:
            v659 = v205;
            *(a1 + 942) = v204 != 0;
          }

          goto LABEL_1306;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80u;
          v544 = *(a1 + 360);
          if (v544)
          {
            goto LABEL_1304;
          }

          v599 = *(a1 + 8);
          if (v599)
          {
            v599 = *(v599 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v599);
          *(a1 + 360) = v544;
          goto LABEL_1303;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v362 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v659 = v362;
            *(a1 + 943) = v363 != 0;
            if (!v362)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_94:
            v659 = v58;
            *(a1 + 943) = v57 != 0;
          }

          goto LABEL_1306;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x100u;
          v544 = *(a1 + 368);
          if (v544)
          {
            goto LABEL_1304;
          }

          v644 = *(a1 + 8);
          if (v644)
          {
            v644 = *(v644 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v644);
          *(a1 + 368) = v544;
          goto LABEL_1303;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80000u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v348 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v659 = v348;
            *(a1 + 944) = v349 != 0;
            if (!v348)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_59:
            v659 = v37;
            *(a1 + 944) = v36 != 0;
          }

          goto LABEL_1306;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x200u;
          v544 = *(a1 + 376);
          if (v544)
          {
            goto LABEL_1304;
          }

          v558 = *(a1 + 8);
          if (v558)
          {
            v558 = *(v558 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v558);
          *(a1 + 376) = v544;
          goto LABEL_1303;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x100000u;
          v229 = (v6 + 1);
          v228 = *v6;
          if ((v228 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v230 = *v229;
          v228 = (v230 << 7) + v228 - 128;
          if (v230 < 0)
          {
            v476 = google::protobuf::internal::VarintParseSlow64(v6, v228);
            v659 = v476;
            *(a1 + 945) = v477 != 0;
            if (!v476)
            {
              return 0;
            }
          }

          else
          {
            v229 = (v6 + 2);
LABEL_379:
            v659 = v229;
            *(a1 + 945) = v228 != 0;
          }

          goto LABEL_1306;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x400u;
          v544 = *(a1 + 384);
          if (v544)
          {
            goto LABEL_1304;
          }

          v634 = *(a1 + 8);
          if (v634)
          {
            v634 = *(v634 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v634);
          *(a1 + 384) = v544;
          goto LABEL_1303;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x200000u;
          v199 = (v6 + 1);
          v198 = *v6;
          if ((v198 & 0x8000000000000000) == 0)
          {
            goto LABEL_329;
          }

          v200 = *v199;
          v198 = (v200 << 7) + v198 - 128;
          if (v200 < 0)
          {
            v456 = google::protobuf::internal::VarintParseSlow64(v6, v198);
            v659 = v456;
            *(a1 + 946) = v457 != 0;
            if (!v456)
            {
              return 0;
            }
          }

          else
          {
            v199 = (v6 + 2);
LABEL_329:
            v659 = v199;
            *(a1 + 946) = v198 != 0;
          }

          goto LABEL_1306;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x800u;
          v544 = *(a1 + 392);
          if (v544)
          {
            goto LABEL_1304;
          }

          v560 = *(a1 + 8);
          if (v560)
          {
            v560 = *(v560 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v560);
          *(a1 + 392) = v544;
          goto LABEL_1303;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x400000u;
          v124 = (v6 + 1);
          v123 = *v6;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }

          v125 = *v124;
          v123 = (v125 << 7) + v123 - 128;
          if (v125 < 0)
          {
            v406 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v659 = v406;
            *(a1 + 947) = v407 != 0;
            if (!v406)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_204:
            v659 = v124;
            *(a1 + 947) = v123 != 0;
          }

          goto LABEL_1306;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x1000u;
          v544 = *(a1 + 400);
          if (v544)
          {
            goto LABEL_1304;
          }

          v645 = *(a1 + 8);
          if (v645)
          {
            v645 = *(v645 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v645);
          *(a1 + 400) = v544;
          goto LABEL_1303;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x800000u;
          v307 = (v6 + 1);
          v306 = *v6;
          if ((v306 & 0x8000000000000000) == 0)
          {
            goto LABEL_509;
          }

          v308 = *v307;
          v306 = (v308 << 7) + v306 - 128;
          if (v308 < 0)
          {
            v528 = google::protobuf::internal::VarintParseSlow64(v6, v306);
            v659 = v528;
            *(a1 + 948) = v529 != 0;
            if (!v528)
            {
              return 0;
            }
          }

          else
          {
            v307 = (v6 + 2);
LABEL_509:
            v659 = v307;
            *(a1 + 948) = v306 != 0;
          }

          goto LABEL_1306;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x2000u;
          v544 = *(a1 + 408);
          if (v544)
          {
            goto LABEL_1304;
          }

          v551 = *(a1 + 8);
          if (v551)
          {
            v551 = *(v551 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v551);
          *(a1 + 408) = v544;
          goto LABEL_1303;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x1000000u;
          v49 = (v6 + 1);
          v48 = *v6;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v356 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v659 = v356;
            *(a1 + 949) = v357 != 0;
            if (!v356)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_79:
            v659 = v49;
            *(a1 + 949) = v48 != 0;
          }

          goto LABEL_1306;
        case 0x5Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x4000u;
          v544 = *(a1 + 416);
          if (v544)
          {
            goto LABEL_1304;
          }

          v630 = *(a1 + 8);
          if (v630)
          {
            v630 = *(v630 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v630);
          *(a1 + 416) = v544;
          goto LABEL_1303;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x2000000u;
          v115 = (v6 + 1);
          v114 = *v6;
          if ((v114 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v116 = *v115;
          v114 = (v116 << 7) + v114 - 128;
          if (v116 < 0)
          {
            v400 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v659 = v400;
            *(a1 + 950) = v401 != 0;
            if (!v400)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_189:
            v659 = v115;
            *(a1 + 950) = v114 != 0;
          }

          goto LABEL_1306;
        case 0x5Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x8000u;
          v544 = *(a1 + 424);
          if (v544)
          {
            goto LABEL_1304;
          }

          v607 = *(a1 + 8);
          if (v607)
          {
            v607 = *(v607 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v607);
          *(a1 + 424) = v544;
          goto LABEL_1303;
        case 0x60u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x4000000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v354 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v659 = v354;
            *(a1 + 951) = v355 != 0;
            if (!v354)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_74:
            v659 = v46;
            *(a1 + 951) = v45 != 0;
          }

          goto LABEL_1306;
        case 0x61u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10000u;
          v544 = *(a1 + 432);
          if (v544)
          {
            goto LABEL_1304;
          }

          v569 = *(a1 + 8);
          if (v569)
          {
            v569 = *(v569 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v569);
          *(a1 + 432) = v544;
          goto LABEL_1303;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x8000000u;
          v259 = (v6 + 1);
          v258 = *v6;
          if ((v258 & 0x8000000000000000) == 0)
          {
            goto LABEL_429;
          }

          v260 = *v259;
          v258 = (v260 << 7) + v258 - 128;
          if (v260 < 0)
          {
            v496 = google::protobuf::internal::VarintParseSlow64(v6, v258);
            v659 = v496;
            *(a1 + 952) = v497 != 0;
            if (!v496)
            {
              return 0;
            }
          }

          else
          {
            v259 = (v6 + 2);
LABEL_429:
            v659 = v259;
            *(a1 + 952) = v258 != 0;
          }

          goto LABEL_1306;
        case 0x63u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20000u;
          v544 = *(a1 + 440);
          if (v544)
          {
            goto LABEL_1304;
          }

          v638 = *(a1 + 8);
          if (v638)
          {
            v638 = *(v638 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v638);
          *(a1 + 440) = v544;
          goto LABEL_1303;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10000000u;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v376 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v659 = v376;
            *(a1 + 953) = v377 != 0;
            if (!v376)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_129:
            v659 = v79;
            *(a1 + 953) = v78 != 0;
          }

          goto LABEL_1306;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40000u;
          v544 = *(a1 + 448);
          if (v544)
          {
            goto LABEL_1304;
          }

          v567 = *(a1 + 8);
          if (v567)
          {
            v567 = *(v567 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v567);
          *(a1 + 448) = v544;
          goto LABEL_1303;
        case 0x66u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20000000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v360 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v659 = v360;
            *(a1 + 954) = v361 != 0;
            if (!v360)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_89:
            v659 = v55;
            *(a1 + 954) = v54 != 0;
          }

          goto LABEL_1306;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80000u;
          v544 = *(a1 + 456);
          if (v544)
          {
            goto LABEL_1304;
          }

          v612 = *(a1 + 8);
          if (v612)
          {
            v612 = *(v612 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v612);
          *(a1 + 456) = v544;
          goto LABEL_1303;
        case 0x68u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40000000u;
          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v358 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v659 = v358;
            *(a1 + 955) = v359 != 0;
            if (!v358)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_84:
            v659 = v52;
            *(a1 + 955) = v51 != 0;
          }

          goto LABEL_1306;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x100000u;
          v544 = *(a1 + 464);
          if (v544)
          {
            goto LABEL_1304;
          }

          v643 = *(a1 + 8);
          if (v643)
          {
            v643 = *(v643 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v643);
          *(a1 + 464) = v544;
          goto LABEL_1303;
        case 0x6Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80000000;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v364 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v659 = v364;
            *(a1 + 956) = v365 != 0;
            if (!v364)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_99:
            v659 = v61;
            *(a1 + 956) = v60 != 0;
          }

          goto LABEL_1306;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x200000u;
          v544 = *(a1 + 472);
          if (v544)
          {
            goto LABEL_1304;
          }

          v554 = *(a1 + 8);
          if (v554)
          {
            v554 = *(v554 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v554);
          *(a1 + 472) = v544;
          goto LABEL_1303;
        case 0x6Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 1u;
          v289 = (v6 + 1);
          v288 = *v6;
          if ((v288 & 0x8000000000000000) == 0)
          {
            goto LABEL_479;
          }

          v290 = *v289;
          v288 = (v290 << 7) + v288 - 128;
          if (v290 < 0)
          {
            v516 = google::protobuf::internal::VarintParseSlow64(v6, v288);
            v659 = v516;
            *(a1 + 957) = v517 != 0;
            if (!v516)
            {
              return 0;
            }
          }

          else
          {
            v289 = (v6 + 2);
LABEL_479:
            v659 = v289;
            *(a1 + 957) = v288 != 0;
          }

          goto LABEL_1306;
        case 0x6Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x400000u;
          v544 = *(a1 + 480);
          if (v544)
          {
            goto LABEL_1304;
          }

          v568 = *(a1 + 8);
          if (v568)
          {
            v568 = *(v568 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v568);
          *(a1 + 480) = v544;
          goto LABEL_1303;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 2u;
          v298 = (v6 + 1);
          v297 = *v6;
          if ((v297 & 0x8000000000000000) == 0)
          {
            goto LABEL_494;
          }

          v299 = *v298;
          v297 = (v299 << 7) + v297 - 128;
          if (v299 < 0)
          {
            v522 = google::protobuf::internal::VarintParseSlow64(v6, v297);
            v659 = v522;
            *(a1 + 958) = v523 != 0;
            if (!v522)
            {
              return 0;
            }
          }

          else
          {
            v298 = (v6 + 2);
LABEL_494:
            v659 = v298;
            *(a1 + 958) = v297 != 0;
          }

          goto LABEL_1306;
        case 0x6Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x800000u;
          v544 = *(a1 + 488);
          if (v544)
          {
            goto LABEL_1304;
          }

          v563 = *(a1 + 8);
          if (v563)
          {
            v563 = *(v563 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v563);
          *(a1 + 488) = v544;
          goto LABEL_1303;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 4u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_214;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v410 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v659 = v410;
            *(a1 + 959) = v411 != 0;
            if (!v410)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_214:
            v659 = v130;
            *(a1 + 959) = v129 != 0;
          }

          goto LABEL_1306;
        case 0x71u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x1000000u;
          v544 = *(a1 + 496);
          if (v544)
          {
            goto LABEL_1304;
          }

          v615 = *(a1 + 8);
          if (v615)
          {
            v615 = *(v615 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v615);
          *(a1 + 496) = v544;
          goto LABEL_1303;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 8u;
          v94 = (v6 + 1);
          v93 = *v6;
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v95 = *v94;
          v93 = (v95 << 7) + v93 - 128;
          if (v95 < 0)
          {
            v386 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v659 = v386;
            *(a1 + 960) = v387 != 0;
            if (!v386)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_154:
            v659 = v94;
            *(a1 + 960) = v93 != 0;
          }

          goto LABEL_1306;
        case 0x73u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x2000000u;
          v544 = *(a1 + 504);
          if (v544)
          {
            goto LABEL_1304;
          }

          v557 = *(a1 + 8);
          if (v557)
          {
            v557 = *(v557 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v557);
          *(a1 + 504) = v544;
          goto LABEL_1303;
        case 0x74u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10u;
          v310 = (v6 + 1);
          v309 = *v6;
          if ((v309 & 0x8000000000000000) == 0)
          {
            goto LABEL_514;
          }

          v311 = *v310;
          v309 = (v311 << 7) + v309 - 128;
          if (v311 < 0)
          {
            v530 = google::protobuf::internal::VarintParseSlow64(v6, v309);
            v659 = v530;
            *(a1 + 961) = v531 != 0;
            if (!v530)
            {
              return 0;
            }
          }

          else
          {
            v310 = (v6 + 2);
LABEL_514:
            v659 = v310;
            *(a1 + 961) = v309 != 0;
          }

          goto LABEL_1306;
        case 0x75u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x4000000u;
          v544 = *(a1 + 512);
          if (v544)
          {
            goto LABEL_1304;
          }

          v632 = *(a1 + 8);
          if (v632)
          {
            v632 = *(v632 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v632);
          *(a1 + 512) = v544;
          goto LABEL_1303;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20u;
          v268 = (v6 + 1);
          v267 = *v6;
          if ((v267 & 0x8000000000000000) == 0)
          {
            goto LABEL_444;
          }

          v269 = *v268;
          v267 = (v269 << 7) + v267 - 128;
          if (v269 < 0)
          {
            v502 = google::protobuf::internal::VarintParseSlow64(v6, v267);
            v659 = v502;
            *(a1 + 962) = v503 != 0;
            if (!v502)
            {
              return 0;
            }
          }

          else
          {
            v268 = (v6 + 2);
LABEL_444:
            v659 = v268;
            *(a1 + 962) = v267 != 0;
          }

          goto LABEL_1306;
        case 0x77u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x8000000u;
          v544 = *(a1 + 520);
          if (v544)
          {
            goto LABEL_1304;
          }

          v614 = *(a1 + 8);
          if (v614)
          {
            v614 = *(v614 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v614);
          *(a1 + 520) = v544;
          goto LABEL_1303;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v374 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v659 = v374;
            *(a1 + 963) = v375 != 0;
            if (!v374)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_124:
            v659 = v76;
            *(a1 + 963) = v75 != 0;
          }

          goto LABEL_1306;
        case 0x79u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10000000u;
          v544 = *(a1 + 528);
          if (v544)
          {
            goto LABEL_1304;
          }

          v641 = *(a1 + 8);
          if (v641)
          {
            v641 = *(v641 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v641);
          *(a1 + 528) = v544;
          goto LABEL_1303;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80u;
          v301 = (v6 + 1);
          v300 = *v6;
          if ((v300 & 0x8000000000000000) == 0)
          {
            goto LABEL_499;
          }

          v302 = *v301;
          v300 = (v302 << 7) + v300 - 128;
          if (v302 < 0)
          {
            v524 = google::protobuf::internal::VarintParseSlow64(v6, v300);
            v659 = v524;
            *(a1 + 964) = v525 != 0;
            if (!v524)
            {
              return 0;
            }
          }

          else
          {
            v301 = (v6 + 2);
LABEL_499:
            v659 = v301;
            *(a1 + 964) = v300 != 0;
          }

          goto LABEL_1306;
        case 0x7Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20000000u;
          v544 = *(a1 + 536);
          if (v544)
          {
            goto LABEL_1304;
          }

          v628 = *(a1 + 8);
          if (v628)
          {
            v628 = *(v628 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v628);
          *(a1 + 536) = v544;
          goto LABEL_1303;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x100u;
          v277 = (v6 + 1);
          v276 = *v6;
          if ((v276 & 0x8000000000000000) == 0)
          {
            goto LABEL_459;
          }

          v278 = *v277;
          v276 = (v278 << 7) + v276 - 128;
          if (v278 < 0)
          {
            v508 = google::protobuf::internal::VarintParseSlow64(v6, v276);
            v659 = v508;
            *(a1 + 965) = v509 != 0;
            if (!v508)
            {
              return 0;
            }
          }

          else
          {
            v277 = (v6 + 2);
LABEL_459:
            v659 = v277;
            *(a1 + 965) = v276 != 0;
          }

          goto LABEL_1306;
        case 0x7Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40000000u;
          v544 = *(a1 + 544);
          if (v544)
          {
            goto LABEL_1304;
          }

          v564 = *(a1 + 8);
          if (v564)
          {
            v564 = *(v564 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v564);
          *(a1 + 544) = v544;
          goto LABEL_1303;
        case 0x7Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x200u;
          v265 = (v6 + 1);
          v264 = *v6;
          if ((v264 & 0x8000000000000000) == 0)
          {
            goto LABEL_439;
          }

          v266 = *v265;
          v264 = (v266 << 7) + v264 - 128;
          if (v266 < 0)
          {
            v500 = google::protobuf::internal::VarintParseSlow64(v6, v264);
            v659 = v500;
            *(a1 + 966) = v501 != 0;
            if (!v500)
            {
              return 0;
            }
          }

          else
          {
            v265 = (v6 + 2);
LABEL_439:
            v659 = v265;
            *(a1 + 966) = v264 != 0;
          }

          goto LABEL_1306;
        case 0x7Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80000000;
          v544 = *(a1 + 552);
          if (v544)
          {
            goto LABEL_1304;
          }

          v627 = *(a1 + 8);
          if (v627)
          {
            v627 = *(v627 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v627);
          *(a1 + 552) = v544;
          goto LABEL_1303;
        case 0x80u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x400u;
          v172 = (v6 + 1);
          v171 = *v6;
          if ((v171 & 0x8000000000000000) == 0)
          {
            goto LABEL_284;
          }

          v173 = *v172;
          v171 = (v173 << 7) + v171 - 128;
          if (v173 < 0)
          {
            v438 = google::protobuf::internal::VarintParseSlow64(v6, v171);
            v659 = v438;
            *(a1 + 967) = v439 != 0;
            if (!v438)
            {
              return 0;
            }
          }

          else
          {
            v172 = (v6 + 2);
LABEL_284:
            v659 = v172;
            *(a1 + 967) = v171 != 0;
          }

          goto LABEL_1306;
        case 0x81u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 1u;
          v544 = *(a1 + 560);
          if (v544)
          {
            goto LABEL_1304;
          }

          v575 = *(a1 + 8);
          if (v575)
          {
            v575 = *(v575 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v575);
          *(a1 + 560) = v544;
          goto LABEL_1303;
        case 0x82u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x800u;
          v235 = (v6 + 1);
          v234 = *v6;
          if ((v234 & 0x8000000000000000) == 0)
          {
            goto LABEL_389;
          }

          v236 = *v235;
          v234 = (v236 << 7) + v234 - 128;
          if (v236 < 0)
          {
            v480 = google::protobuf::internal::VarintParseSlow64(v6, v234);
            v659 = v480;
            *(a1 + 968) = v481 != 0;
            if (!v480)
            {
              return 0;
            }
          }

          else
          {
            v235 = (v6 + 2);
LABEL_389:
            v659 = v235;
            *(a1 + 968) = v234 != 0;
          }

          goto LABEL_1306;
        case 0x83u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 2u;
          v544 = *(a1 + 568);
          if (v544)
          {
            goto LABEL_1304;
          }

          v609 = *(a1 + 8);
          if (v609)
          {
            v609 = *(v609 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v609);
          *(a1 + 568) = v544;
          goto LABEL_1303;
        case 0x84u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x1000u;
          v88 = (v6 + 1);
          v87 = *v6;
          if ((v87 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v89 = *v88;
          v87 = (v89 << 7) + v87 - 128;
          if (v89 < 0)
          {
            v382 = google::protobuf::internal::VarintParseSlow64(v6, v87);
            v659 = v382;
            *(a1 + 969) = v383 != 0;
            if (!v382)
            {
              return 0;
            }
          }

          else
          {
            v88 = (v6 + 2);
LABEL_144:
            v659 = v88;
            *(a1 + 969) = v87 != 0;
          }

          goto LABEL_1306;
        case 0x85u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 4u;
          v544 = *(a1 + 576);
          if (v544)
          {
            goto LABEL_1304;
          }

          v622 = *(a1 + 8);
          if (v622)
          {
            v622 = *(v622 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v622);
          *(a1 + 576) = v544;
          goto LABEL_1303;
        case 0x86u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x2000u;
          v286 = (v6 + 1);
          v285 = *v6;
          if ((v285 & 0x8000000000000000) == 0)
          {
            goto LABEL_474;
          }

          v287 = *v286;
          v285 = (v287 << 7) + v285 - 128;
          if (v287 < 0)
          {
            v514 = google::protobuf::internal::VarintParseSlow64(v6, v285);
            v659 = v514;
            *(a1 + 970) = v515 != 0;
            if (!v514)
            {
              return 0;
            }
          }

          else
          {
            v286 = (v6 + 2);
LABEL_474:
            v659 = v286;
            *(a1 + 970) = v285 != 0;
          }

          goto LABEL_1306;
        case 0x87u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 8u;
          v544 = *(a1 + 584);
          if (v544)
          {
            goto LABEL_1304;
          }

          v608 = *(a1 + 8);
          if (v608)
          {
            v608 = *(v608 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v608);
          *(a1 + 584) = v544;
          goto LABEL_1303;
        case 0x88u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x4000u;
          v211 = (v6 + 1);
          v210 = *v6;
          if ((v210 & 0x8000000000000000) == 0)
          {
            goto LABEL_349;
          }

          v212 = *v211;
          v210 = (v212 << 7) + v210 - 128;
          if (v212 < 0)
          {
            v464 = google::protobuf::internal::VarintParseSlow64(v6, v210);
            v659 = v464;
            *(a1 + 971) = v465 != 0;
            if (!v464)
            {
              return 0;
            }
          }

          else
          {
            v211 = (v6 + 2);
LABEL_349:
            v659 = v211;
            *(a1 + 971) = v210 != 0;
          }

          goto LABEL_1306;
        case 0x89u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10u;
          v544 = *(a1 + 592);
          if (v544)
          {
            goto LABEL_1304;
          }

          v577 = *(a1 + 8);
          if (v577)
          {
            v577 = *(v577 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v577);
          *(a1 + 592) = v544;
          goto LABEL_1303;
        case 0x8Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x8000u;
          v250 = (v6 + 1);
          v249 = *v6;
          if ((v249 & 0x8000000000000000) == 0)
          {
            goto LABEL_414;
          }

          v251 = *v250;
          v249 = (v251 << 7) + v249 - 128;
          if (v251 < 0)
          {
            v490 = google::protobuf::internal::VarintParseSlow64(v6, v249);
            v659 = v490;
            *(a1 + 972) = v491 != 0;
            if (!v490)
            {
              return 0;
            }
          }

          else
          {
            v250 = (v6 + 2);
LABEL_414:
            v659 = v250;
            *(a1 + 972) = v249 != 0;
          }

          goto LABEL_1306;
        case 0x8Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20u;
          v544 = *(a1 + 600);
          if (v544)
          {
            goto LABEL_1304;
          }

          v565 = *(a1 + 8);
          if (v565)
          {
            v565 = *(v565 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v565);
          *(a1 + 600) = v544;
          goto LABEL_1303;
        case 0x8Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10000u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v370 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v659 = v370;
            *(a1 + 973) = v371 != 0;
            if (!v370)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_114:
            v659 = v70;
            *(a1 + 973) = v69 != 0;
          }

          goto LABEL_1306;
        case 0x8Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40u;
          v544 = *(a1 + 608);
          if (v544)
          {
            goto LABEL_1304;
          }

          v574 = *(a1 + 8);
          if (v574)
          {
            v574 = *(v574 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v574);
          *(a1 + 608) = v544;
          goto LABEL_1303;
        case 0x8Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20000u;
          v97 = (v6 + 1);
          v96 = *v6;
          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v98 = *v97;
          v96 = (v98 << 7) + v96 - 128;
          if (v98 < 0)
          {
            v388 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v659 = v388;
            *(a1 + 974) = v389 != 0;
            if (!v388)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_159:
            v659 = v97;
            *(a1 + 974) = v96 != 0;
          }

          goto LABEL_1306;
        case 0x8Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80u;
          v544 = *(a1 + 616);
          if (v544)
          {
            goto LABEL_1304;
          }

          v639 = *(a1 + 8);
          if (v639)
          {
            v639 = *(v639 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v639);
          *(a1 + 616) = v544;
          goto LABEL_1303;
        case 0x90u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40000u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v394 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v659 = v394;
            *(a1 + 975) = v395 != 0;
            if (!v394)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_174:
            v659 = v106;
            *(a1 + 975) = v105 != 0;
          }

          goto LABEL_1306;
        case 0x91u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x100u;
          v544 = *(a1 + 624);
          if (v544)
          {
            goto LABEL_1304;
          }

          v613 = *(a1 + 8);
          if (v613)
          {
            v613 = *(v613 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v613);
          *(a1 + 624) = v544;
          goto LABEL_1303;
        case 0x92u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80000u;
          v262 = (v6 + 1);
          v261 = *v6;
          if ((v261 & 0x8000000000000000) == 0)
          {
            goto LABEL_434;
          }

          v263 = *v262;
          v261 = (v263 << 7) + v261 - 128;
          if (v263 < 0)
          {
            v498 = google::protobuf::internal::VarintParseSlow64(v6, v261);
            v659 = v498;
            *(a1 + 976) = v499 != 0;
            if (!v498)
            {
              return 0;
            }
          }

          else
          {
            v262 = (v6 + 2);
LABEL_434:
            v659 = v262;
            *(a1 + 976) = v261 != 0;
          }

          goto LABEL_1306;
        case 0x93u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x200u;
          v544 = *(a1 + 632);
          if (v544)
          {
            goto LABEL_1304;
          }

          v610 = *(a1 + 8);
          if (v610)
          {
            v610 = *(v610 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v610);
          *(a1 + 632) = v544;
          goto LABEL_1303;
        case 0x94u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x100000u;
          v241 = (v6 + 1);
          v240 = *v6;
          if ((v240 & 0x8000000000000000) == 0)
          {
            goto LABEL_399;
          }

          v242 = *v241;
          v240 = (v242 << 7) + v240 - 128;
          if (v242 < 0)
          {
            v484 = google::protobuf::internal::VarintParseSlow64(v6, v240);
            v659 = v484;
            *(a1 + 977) = v485 != 0;
            if (!v484)
            {
              return 0;
            }
          }

          else
          {
            v241 = (v6 + 2);
LABEL_399:
            v659 = v241;
            *(a1 + 977) = v240 != 0;
          }

          goto LABEL_1306;
        case 0x95u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x400u;
          v544 = *(a1 + 640);
          if (v544)
          {
            goto LABEL_1304;
          }

          v642 = *(a1 + 8);
          if (v642)
          {
            v642 = *(v642 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v642);
          *(a1 + 640) = v544;
          goto LABEL_1303;
        case 0x96u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x200000u;
          v253 = (v6 + 1);
          v252 = *v6;
          if ((v252 & 0x8000000000000000) == 0)
          {
            goto LABEL_419;
          }

          v254 = *v253;
          v252 = (v254 << 7) + v252 - 128;
          if (v254 < 0)
          {
            v492 = google::protobuf::internal::VarintParseSlow64(v6, v252);
            v659 = v492;
            *(a1 + 978) = v493 != 0;
            if (!v492)
            {
              return 0;
            }
          }

          else
          {
            v253 = (v6 + 2);
LABEL_419:
            v659 = v253;
            *(a1 + 978) = v252 != 0;
          }

          goto LABEL_1306;
        case 0x97u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x800u;
          v544 = *(a1 + 648);
          if (v544)
          {
            goto LABEL_1304;
          }

          v559 = *(a1 + 8);
          if (v559)
          {
            v559 = *(v559 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v559);
          *(a1 + 648) = v544;
          goto LABEL_1303;
        case 0x98u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x400000u;
          v220 = (v6 + 1);
          v219 = *v6;
          if ((v219 & 0x8000000000000000) == 0)
          {
            goto LABEL_364;
          }

          v221 = *v220;
          v219 = (v221 << 7) + v219 - 128;
          if (v221 < 0)
          {
            v470 = google::protobuf::internal::VarintParseSlow64(v6, v219);
            v659 = v470;
            *(a1 + 979) = v471 != 0;
            if (!v470)
            {
              return 0;
            }
          }

          else
          {
            v220 = (v6 + 2);
LABEL_364:
            v659 = v220;
            *(a1 + 979) = v219 != 0;
          }

          goto LABEL_1306;
        case 0x99u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x1000u;
          v544 = *(a1 + 656);
          if (v544)
          {
            goto LABEL_1304;
          }

          v620 = *(a1 + 8);
          if (v620)
          {
            v620 = *(v620 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v620);
          *(a1 + 656) = v544;
          goto LABEL_1303;
        case 0x9Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x800000u;
          v247 = (v6 + 1);
          v246 = *v6;
          if ((v246 & 0x8000000000000000) == 0)
          {
            goto LABEL_409;
          }

          v248 = *v247;
          v246 = (v248 << 7) + v246 - 128;
          if (v248 < 0)
          {
            v488 = google::protobuf::internal::VarintParseSlow64(v6, v246);
            v659 = v488;
            *(a1 + 980) = v489 != 0;
            if (!v488)
            {
              return 0;
            }
          }

          else
          {
            v247 = (v6 + 2);
LABEL_409:
            v659 = v247;
            *(a1 + 980) = v246 != 0;
          }

          goto LABEL_1306;
        case 0x9Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x2000u;
          v544 = *(a1 + 664);
          if (v544)
          {
            goto LABEL_1304;
          }

          v598 = *(a1 + 8);
          if (v598)
          {
            v598 = *(v598 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v598);
          *(a1 + 664) = v544;
          goto LABEL_1303;
        case 0x9Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x1000000u;
          v217 = (v6 + 1);
          v216 = *v6;
          if ((v216 & 0x8000000000000000) == 0)
          {
            goto LABEL_359;
          }

          v218 = *v217;
          v216 = (v218 << 7) + v216 - 128;
          if (v218 < 0)
          {
            v468 = google::protobuf::internal::VarintParseSlow64(v6, v216);
            v659 = v468;
            *(a1 + 981) = v469 != 0;
            if (!v468)
            {
              return 0;
            }
          }

          else
          {
            v217 = (v6 + 2);
LABEL_359:
            v659 = v217;
            *(a1 + 981) = v216 != 0;
          }

          goto LABEL_1306;
        case 0x9Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x4000u;
          v592 = *(a1 + 672);
          if (v592)
          {
            goto LABEL_1191;
          }

          v636 = *(a1 + 8);
          if (v636)
          {
            v636 = *(v636 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v636);
          *(a1 + 672) = v592;
          goto LABEL_1190;
        case 0x9Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x2000000u;
          v175 = (v6 + 1);
          v174 = *v6;
          if ((v174 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v176 = *v175;
          v174 = (v176 << 7) + v174 - 128;
          if (v176 < 0)
          {
            v440 = google::protobuf::internal::VarintParseSlow64(v6, v174);
            v659 = v440;
            *(a1 + 982) = v441 != 0;
            if (!v440)
            {
              return 0;
            }
          }

          else
          {
            v175 = (v6 + 2);
LABEL_289:
            v659 = v175;
            *(a1 + 982) = v174 != 0;
          }

          goto LABEL_1306;
        case 0x9Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x8000u;
          v592 = *(a1 + 680);
          if (v592)
          {
            goto LABEL_1191;
          }

          v596 = *(a1 + 8);
          if (v596)
          {
            v596 = *(v596 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v596);
          *(a1 + 680) = v592;
          goto LABEL_1190;
        case 0xA0u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x4000000u;
          v91 = (v6 + 1);
          v90 = *v6;
          if ((v90 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v92 = *v91;
          v90 = (v92 << 7) + v90 - 128;
          if (v92 < 0)
          {
            v384 = google::protobuf::internal::VarintParseSlow64(v6, v90);
            v659 = v384;
            *(a1 + 983) = v385 != 0;
            if (!v384)
            {
              return 0;
            }
          }

          else
          {
            v91 = (v6 + 2);
LABEL_149:
            v659 = v91;
            *(a1 + 983) = v90 != 0;
          }

          goto LABEL_1306;
        case 0xA1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10000u;
          v592 = *(a1 + 688);
          if (v592)
          {
            goto LABEL_1191;
          }

          v618 = *(a1 + 8);
          if (v618)
          {
            v618 = *(v618 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v618);
          *(a1 + 688) = v592;
          goto LABEL_1190;
        case 0xA2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x8000000u;
          v226 = (v6 + 1);
          v225 = *v6;
          if ((v225 & 0x8000000000000000) == 0)
          {
            goto LABEL_374;
          }

          v227 = *v226;
          v225 = (v227 << 7) + v225 - 128;
          if (v227 < 0)
          {
            v474 = google::protobuf::internal::VarintParseSlow64(v6, v225);
            v659 = v474;
            *(a1 + 984) = v475 != 0;
            if (!v474)
            {
              return 0;
            }
          }

          else
          {
            v226 = (v6 + 2);
LABEL_374:
            v659 = v226;
            *(a1 + 984) = v225 != 0;
          }

          goto LABEL_1306;
        case 0xA3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20000u;
          v561 = *(a1 + 696);
          if (v561)
          {
            goto LABEL_1198;
          }

          v633 = *(a1 + 8);
          if (v633)
          {
            v633 = *(v633 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F150](v633);
          *(a1 + 696) = v561;
          goto LABEL_1197;
        case 0xA4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10000000u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v378 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v659 = v378;
            *(a1 + 985) = v379 != 0;
            if (!v378)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_134:
            v659 = v82;
            *(a1 + 985) = v81 != 0;
          }

          goto LABEL_1306;
        case 0xA5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40000u;
          v592 = *(a1 + 704);
          if (v592)
          {
            goto LABEL_1191;
          }

          v629 = *(a1 + 8);
          if (v629)
          {
            v629 = *(v629 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v629);
          *(a1 + 704) = v592;
          goto LABEL_1190;
        case 0xA6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20000000u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_219;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v412 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v659 = v412;
            *(a1 + 986) = v413 != 0;
            if (!v412)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_219:
            v659 = v133;
            *(a1 + 986) = v132 != 0;
          }

          goto LABEL_1306;
        case 0xA7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80000u;
          v592 = *(a1 + 712);
          if (v592)
          {
            goto LABEL_1191;
          }

          v593 = *(a1 + 8);
          if (v593)
          {
            v593 = *(v593 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F110](v593);
          *(a1 + 712) = v592;
LABEL_1190:
          v6 = v659;
LABEL_1191:
          v604 = sub_275E60D54(a3, v592, v6);
          goto LABEL_1305;
        case 0xA8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40000000u;
          v223 = (v6 + 1);
          v222 = *v6;
          if ((v222 & 0x8000000000000000) == 0)
          {
            goto LABEL_369;
          }

          v224 = *v223;
          v222 = (v224 << 7) + v222 - 128;
          if (v224 < 0)
          {
            v472 = google::protobuf::internal::VarintParseSlow64(v6, v222);
            v659 = v472;
            *(a1 + 987) = v473 != 0;
            if (!v472)
            {
              return 0;
            }
          }

          else
          {
            v223 = (v6 + 2);
LABEL_369:
            v659 = v223;
            *(a1 + 987) = v222 != 0;
          }

          goto LABEL_1306;
        case 0xA9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x100000u;
          v544 = *(a1 + 720);
          if (v544)
          {
            goto LABEL_1304;
          }

          v623 = *(a1 + 8);
          if (v623)
          {
            v623 = *(v623 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v623);
          *(a1 + 720) = v544;
          goto LABEL_1303;
        case 0xAAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80000000;
          v118 = (v6 + 1);
          v117 = *v6;
          if ((v117 & 0x8000000000000000) == 0)
          {
            goto LABEL_194;
          }

          v119 = *v118;
          v117 = (v119 << 7) + v117 - 128;
          if (v119 < 0)
          {
            v402 = google::protobuf::internal::VarintParseSlow64(v6, v117);
            v659 = v402;
            *(a1 + 988) = v403 != 0;
            if (!v402)
            {
              return 0;
            }
          }

          else
          {
            v118 = (v6 + 2);
LABEL_194:
            v659 = v118;
            *(a1 + 988) = v117 != 0;
          }

          goto LABEL_1306;
        case 0xABu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x200000u;
          v544 = *(a1 + 728);
          if (v544)
          {
            goto LABEL_1304;
          }

          v624 = *(a1 + 8);
          if (v624)
          {
            v624 = *(v624 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v624);
          *(a1 + 728) = v544;
          goto LABEL_1303;
        case 0xACu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 1u;
          v103 = (v6 + 1);
          v102 = *v6;
          if ((v102 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v104 = *v103;
          v102 = (v104 << 7) + v102 - 128;
          if (v104 < 0)
          {
            v392 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v659 = v392;
            *(a1 + 989) = v393 != 0;
            if (!v392)
            {
              return 0;
            }
          }

          else
          {
            v103 = (v6 + 2);
LABEL_169:
            v659 = v103;
            *(a1 + 989) = v102 != 0;
          }

          goto LABEL_1306;
        case 0xADu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x400000u;
          v544 = *(a1 + 736);
          if (v544)
          {
            goto LABEL_1304;
          }

          v589 = *(a1 + 8);
          if (v589)
          {
            v589 = *(v589 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v589);
          *(a1 + 736) = v544;
          goto LABEL_1303;
        case 0xAEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 2u;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v430 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v659 = v430;
            *(a1 + 990) = v431 != 0;
            if (!v430)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_264:
            v659 = v160;
            *(a1 + 990) = v159 != 0;
          }

          goto LABEL_1306;
        case 0xAFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x800000u;
          v544 = *(a1 + 744);
          if (v544)
          {
            goto LABEL_1304;
          }

          v591 = *(a1 + 8);
          if (v591)
          {
            v591 = *(v591 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v591);
          *(a1 + 744) = v544;
          goto LABEL_1303;
        case 0xB0u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 4u;
          v169 = (v6 + 1);
          v168 = *v6;
          if ((v168 & 0x8000000000000000) == 0)
          {
            goto LABEL_279;
          }

          v170 = *v169;
          v168 = (v170 << 7) + v168 - 128;
          if (v170 < 0)
          {
            v436 = google::protobuf::internal::VarintParseSlow64(v6, v168);
            v659 = v436;
            *(a1 + 991) = v437 != 0;
            if (!v436)
            {
              return 0;
            }
          }

          else
          {
            v169 = (v6 + 2);
LABEL_279:
            v659 = v169;
            *(a1 + 991) = v168 != 0;
          }

          goto LABEL_1306;
        case 0xB1u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x1000000u;
          v544 = *(a1 + 752);
          if (v544)
          {
            goto LABEL_1304;
          }

          v631 = *(a1 + 8);
          if (v631)
          {
            v631 = *(v631 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v631);
          *(a1 + 752) = v544;
          goto LABEL_1303;
        case 0xB2u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 8u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v398 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v659 = v398;
            *(a1 + 992) = v399 != 0;
            if (!v398)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_184:
            v659 = v112;
            *(a1 + 992) = v111 != 0;
          }

          goto LABEL_1306;
        case 0xB3u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x2000000u;
          v544 = *(a1 + 760);
          if (v544)
          {
            goto LABEL_1304;
          }

          v572 = *(a1 + 8);
          if (v572)
          {
            v572 = *(v572 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v572);
          *(a1 + 760) = v544;
          goto LABEL_1303;
        case 0xB4u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x10u;
          v178 = (v6 + 1);
          v177 = *v6;
          if ((v177 & 0x8000000000000000) == 0)
          {
            goto LABEL_294;
          }

          v179 = *v178;
          v177 = (v179 << 7) + v177 - 128;
          if (v179 < 0)
          {
            v442 = google::protobuf::internal::VarintParseSlow64(v6, v177);
            v659 = v442;
            *(a1 + 993) = v443 != 0;
            if (!v442)
            {
              return 0;
            }
          }

          else
          {
            v178 = (v6 + 2);
LABEL_294:
            v659 = v178;
            *(a1 + 993) = v177 != 0;
          }

          goto LABEL_1306;
        case 0xB5u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x4000000u;
          v570 = *(a1 + 768);
          if (v570)
          {
            goto LABEL_1285;
          }

          v597 = *(a1 + 8);
          if (v597)
          {
            v597 = *(v597 & 0xFFFFFFFFFFFFFFFELL);
          }

          v570 = MEMORY[0x277C8F120](v597);
          *(a1 + 768) = v570;
LABEL_1284:
          v6 = v659;
LABEL_1285:
          v604 = sub_275E60E24(a3, v570, v6);
          goto LABEL_1305;
        case 0xB6u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x20u;
          v202 = (v6 + 1);
          v201 = *v6;
          if ((v201 & 0x8000000000000000) == 0)
          {
            goto LABEL_334;
          }

          v203 = *v202;
          v201 = (v203 << 7) + v201 - 128;
          if (v203 < 0)
          {
            v458 = google::protobuf::internal::VarintParseSlow64(v6, v201);
            v659 = v458;
            *(a1 + 994) = v459 != 0;
            if (!v458)
            {
              return 0;
            }
          }

          else
          {
            v202 = (v6 + 2);
LABEL_334:
            v659 = v202;
            *(a1 + 994) = v201 != 0;
          }

          goto LABEL_1306;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x8000000u;
          v544 = *(a1 + 776);
          if (v544)
          {
            goto LABEL_1304;
          }

          v594 = *(a1 + 8);
          if (v594)
          {
            v594 = *(v594 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v594);
          *(a1 + 776) = v544;
          goto LABEL_1303;
        case 0xB8u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x40u;
          v190 = (v6 + 1);
          v189 = *v6;
          if ((v189 & 0x8000000000000000) == 0)
          {
            goto LABEL_314;
          }

          v191 = *v190;
          v189 = (v191 << 7) + v189 - 128;
          if (v191 < 0)
          {
            v450 = google::protobuf::internal::VarintParseSlow64(v6, v189);
            v659 = v450;
            *(a1 + 995) = v451 != 0;
            if (!v450)
            {
              return 0;
            }
          }

          else
          {
            v190 = (v6 + 2);
LABEL_314:
            v659 = v190;
            *(a1 + 995) = v189 != 0;
          }

          goto LABEL_1306;
        case 0xB9u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10000000u;
          v544 = *(a1 + 784);
          if (v544)
          {
            goto LABEL_1304;
          }

          v590 = *(a1 + 8);
          if (v590)
          {
            v590 = *(v590 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v590);
          *(a1 + 784) = v544;
          goto LABEL_1303;
        case 0xBAu:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x80u;
          v208 = (v6 + 1);
          v207 = *v6;
          if ((v207 & 0x8000000000000000) == 0)
          {
            goto LABEL_344;
          }

          v209 = *v208;
          v207 = (v209 << 7) + v207 - 128;
          if (v209 < 0)
          {
            v462 = google::protobuf::internal::VarintParseSlow64(v6, v207);
            v659 = v462;
            *(a1 + 996) = v463 != 0;
            if (!v462)
            {
              return 0;
            }
          }

          else
          {
            v208 = (v6 + 2);
LABEL_344:
            v659 = v208;
            *(a1 + 996) = v207 != 0;
          }

          goto LABEL_1306;
        case 0xBBu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20000000u;
          v544 = *(a1 + 792);
          if (v544)
          {
            goto LABEL_1304;
          }

          v588 = *(a1 + 8);
          if (v588)
          {
            v588 = *(v588 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v588);
          *(a1 + 792) = v544;
          goto LABEL_1303;
        case 0xBCu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x100u;
          v145 = (v6 + 1);
          v144 = *v6;
          if ((v144 & 0x8000000000000000) == 0)
          {
            goto LABEL_239;
          }

          v146 = *v145;
          v144 = (v146 << 7) + v144 - 128;
          if (v146 < 0)
          {
            v420 = google::protobuf::internal::VarintParseSlow64(v6, v144);
            v659 = v420;
            *(a1 + 997) = v421 != 0;
            if (!v420)
            {
              return 0;
            }
          }

          else
          {
            v145 = (v6 + 2);
LABEL_239:
            v659 = v145;
            *(a1 + 997) = v144 != 0;
          }

          goto LABEL_1306;
        case 0xBDu:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40000000u;
          v544 = *(a1 + 800);
          if (v544)
          {
            goto LABEL_1304;
          }

          v576 = *(a1 + 8);
          if (v576)
          {
            v576 = *(v576 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v576);
          *(a1 + 800) = v544;
          goto LABEL_1303;
        case 0xBEu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x200u;
          v142 = (v6 + 1);
          v141 = *v6;
          if ((v141 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v143 = *v142;
          v141 = (v143 << 7) + v141 - 128;
          if (v143 < 0)
          {
            v418 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v659 = v418;
            *(a1 + 998) = v419 != 0;
            if (!v418)
            {
              return 0;
            }
          }

          else
          {
            v142 = (v6 + 2);
LABEL_234:
            v659 = v142;
            *(a1 + 998) = v141 != 0;
          }

          goto LABEL_1306;
        case 0xBFu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80000000;
          v544 = *(a1 + 808);
          if (v544)
          {
            goto LABEL_1304;
          }

          v595 = *(a1 + 8);
          if (v595)
          {
            v595 = *(v595 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v595);
          *(a1 + 808) = v544;
          goto LABEL_1303;
        case 0xC0u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x400u;
          v193 = (v6 + 1);
          v192 = *v6;
          if ((v192 & 0x8000000000000000) == 0)
          {
            goto LABEL_319;
          }

          v194 = *v193;
          v192 = (v194 << 7) + v192 - 128;
          if (v194 < 0)
          {
            v452 = google::protobuf::internal::VarintParseSlow64(v6, v192);
            v659 = v452;
            *(a1 + 999) = v453 != 0;
            if (!v452)
            {
              return 0;
            }
          }

          else
          {
            v193 = (v6 + 2);
LABEL_319:
            v659 = v193;
            *(a1 + 999) = v192 != 0;
          }

          goto LABEL_1306;
        case 0xC1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 1u;
          v561 = *(a1 + 816);
          if (v561)
          {
            goto LABEL_1198;
          }

          v625 = *(a1 + 8);
          if (v625)
          {
            v625 = *(v625 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F150](v625);
          *(a1 + 816) = v561;
          goto LABEL_1197;
        case 0xC2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x800u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_309;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v448 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v659 = v448;
            *(a1 + 1000) = v449 != 0;
            if (!v448)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_309:
            v659 = v187;
            *(a1 + 1000) = v186 != 0;
          }

          goto LABEL_1306;
        case 0xC3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 2u;
          v544 = *(a1 + 824);
          if (v544)
          {
            goto LABEL_1304;
          }

          v586 = *(a1 + 8);
          if (v586)
          {
            v586 = *(v586 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v586);
          *(a1 + 824) = v544;
          goto LABEL_1303;
        case 0xC4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x1000u;
          v163 = (v6 + 1);
          v162 = *v6;
          if ((v162 & 0x8000000000000000) == 0)
          {
            goto LABEL_269;
          }

          v164 = *v163;
          v162 = (v164 << 7) + v162 - 128;
          if (v164 < 0)
          {
            v432 = google::protobuf::internal::VarintParseSlow64(v6, v162);
            v659 = v432;
            *(a1 + 1001) = v433 != 0;
            if (!v432)
            {
              return 0;
            }
          }

          else
          {
            v163 = (v6 + 2);
LABEL_269:
            v659 = v163;
            *(a1 + 1001) = v162 != 0;
          }

          goto LABEL_1306;
        case 0xC5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 4u;
          v544 = *(a1 + 832);
          if (v544)
          {
            goto LABEL_1304;
          }

          v617 = *(a1 + 8);
          if (v617)
          {
            v617 = *(v617 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v617);
          *(a1 + 832) = v544;
          goto LABEL_1303;
        case 0xC6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x2000u;
          v181 = (v6 + 1);
          v180 = *v6;
          if ((v180 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v182 = *v181;
          v180 = (v182 << 7) + v180 - 128;
          if (v182 < 0)
          {
            v444 = google::protobuf::internal::VarintParseSlow64(v6, v180);
            v659 = v444;
            *(a1 + 1002) = v445 != 0;
            if (!v444)
            {
              return 0;
            }
          }

          else
          {
            v181 = (v6 + 2);
LABEL_299:
            v659 = v181;
            *(a1 + 1002) = v180 != 0;
          }

          goto LABEL_1306;
        case 0xC7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 8u;
          v544 = *(a1 + 840);
          if (v544)
          {
            goto LABEL_1304;
          }

          v581 = *(a1 + 8);
          if (v581)
          {
            v581 = *(v581 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v581);
          *(a1 + 840) = v544;
          goto LABEL_1303;
        case 0xC8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x4000u;
          v136 = (v6 + 1);
          v135 = *v6;
          if ((v135 & 0x8000000000000000) == 0)
          {
            goto LABEL_224;
          }

          v137 = *v136;
          v135 = (v137 << 7) + v135 - 128;
          if (v137 < 0)
          {
            v414 = google::protobuf::internal::VarintParseSlow64(v6, v135);
            v659 = v414;
            *(a1 + 1003) = v415 != 0;
            if (!v414)
            {
              return 0;
            }
          }

          else
          {
            v136 = (v6 + 2);
LABEL_224:
            v659 = v136;
            *(a1 + 1003) = v135 != 0;
          }

          goto LABEL_1306;
        case 0xC9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10u;
          v544 = *(a1 + 848);
          if (v544)
          {
            goto LABEL_1304;
          }

          v583 = *(a1 + 8);
          if (v583)
          {
            v583 = *(v583 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v583);
          *(a1 + 848) = v544;
          goto LABEL_1303;
        case 0xCAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x8000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v408 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v659 = v408;
            *(a1 + 1004) = v409 != 0;
            if (!v408)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_209:
            v659 = v127;
            *(a1 + 1004) = v126 != 0;
          }

          goto LABEL_1306;
        case 0xCBu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20u;
          v544 = *(a1 + 856);
          if (v544)
          {
            goto LABEL_1304;
          }

          v587 = *(a1 + 8);
          if (v587)
          {
            v587 = *(v587 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v587);
          *(a1 + 856) = v544;
          goto LABEL_1303;
        case 0xCCu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x10000u;
          v196 = (v6 + 1);
          v195 = *v6;
          if ((v195 & 0x8000000000000000) == 0)
          {
            goto LABEL_324;
          }

          v197 = *v196;
          v195 = (v197 << 7) + v195 - 128;
          if (v197 < 0)
          {
            v454 = google::protobuf::internal::VarintParseSlow64(v6, v195);
            v659 = v454;
            *(a1 + 1005) = v455 != 0;
            if (!v454)
            {
              return 0;
            }
          }

          else
          {
            v196 = (v6 + 2);
LABEL_324:
            v659 = v196;
            *(a1 + 1005) = v195 != 0;
          }

          goto LABEL_1306;
        case 0xCDu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40u;
          v544 = *(a1 + 864);
          if (v544)
          {
            goto LABEL_1304;
          }

          v582 = *(a1 + 8);
          if (v582)
          {
            v582 = *(v582 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v582);
          *(a1 + 864) = v544;
          goto LABEL_1303;
        case 0xCEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x20000u;
          v151 = (v6 + 1);
          v150 = *v6;
          if ((v150 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v152 = *v151;
          v150 = (v152 << 7) + v150 - 128;
          if (v152 < 0)
          {
            v424 = google::protobuf::internal::VarintParseSlow64(v6, v150);
            v659 = v424;
            *(a1 + 1006) = v425 != 0;
            if (!v424)
            {
              return 0;
            }
          }

          else
          {
            v151 = (v6 + 2);
LABEL_249:
            v659 = v151;
            *(a1 + 1006) = v150 != 0;
          }

          goto LABEL_1306;
        case 0xCFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80u;
          v544 = *(a1 + 872);
          if (v544)
          {
            goto LABEL_1304;
          }

          v584 = *(a1 + 8);
          if (v584)
          {
            v584 = *(v584 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v584);
          *(a1 + 872) = v544;
          goto LABEL_1303;
        case 0xD0u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x40000u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v428 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v659 = v428;
            *(a1 + 1007) = v429 != 0;
            if (!v428)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_259:
            v659 = v157;
            *(a1 + 1007) = v156 != 0;
          }

          goto LABEL_1306;
        case 0xD1u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x100u;
          v544 = *(a1 + 880);
          if (v544)
          {
            goto LABEL_1304;
          }

          v585 = *(a1 + 8);
          if (v585)
          {
            v585 = *(v585 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v585);
          *(a1 + 880) = v544;
          goto LABEL_1303;
        case 0xD2u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x80000u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v446 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v659 = v446;
            *(a1 + 1008) = v447 != 0;
            if (!v446)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_304:
            v659 = v184;
            *(a1 + 1008) = v183 != 0;
          }

          goto LABEL_1306;
        case 0xD3u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x200u;
          v544 = *(a1 + 888);
          if (v544)
          {
            goto LABEL_1304;
          }

          v580 = *(a1 + 8);
          if (v580)
          {
            v580 = *(v580 & 0xFFFFFFFFFFFFFFFELL);
          }

          v544 = MEMORY[0x277C8F130](v580);
          *(a1 + 888) = v544;
LABEL_1303:
          v6 = v659;
LABEL_1304:
          v604 = sub_275E60C84(a3, v544, v6);
          goto LABEL_1305;
        case 0xD4u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x100000u;
          v148 = (v6 + 1);
          v147 = *v6;
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v149 = *v148;
          v147 = (v149 << 7) + v147 - 128;
          if (v149 < 0)
          {
            v422 = google::protobuf::internal::VarintParseSlow64(v6, v147);
            v659 = v422;
            *(a1 + 1009) = v423 != 0;
            if (!v422)
            {
              return 0;
            }
          }

          else
          {
            v148 = (v6 + 2);
LABEL_244:
            v659 = v148;
            *(a1 + 1009) = v147 != 0;
          }

          goto LABEL_1306;
        case 0xD5u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x400u;
          v561 = *(a1 + 896);
          if (v561)
          {
            goto LABEL_1198;
          }

          v579 = *(a1 + 8);
          if (v579)
          {
            v579 = *(v579 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F150](v579);
          *(a1 + 896) = v561;
LABEL_1197:
          v6 = v659;
LABEL_1198:
          v604 = sub_275E60BB4(a3, v561, v6);
LABEL_1305:
          v659 = v604;
          if (v604)
          {
            goto LABEL_1306;
          }

          return 0;
        case 0xD6u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x200000u;
          v166 = (v6 + 1);
          v165 = *v6;
          if ((v165 & 0x8000000000000000) == 0)
          {
            goto LABEL_274;
          }

          v167 = *v166;
          v165 = (v167 << 7) + v165 - 128;
          if (v167 < 0)
          {
            v434 = google::protobuf::internal::VarintParseSlow64(v6, v165);
            v659 = v434;
            *(a1 + 1010) = v435 != 0;
            if (!v434)
            {
              return 0;
            }
          }

          else
          {
            v166 = (v6 + 2);
LABEL_274:
            v659 = v166;
            *(a1 + 1010) = v165 != 0;
          }

          goto LABEL_1306;
        default:
LABEL_1308:
          v658 = sub_275E60FC4(v7, a3, (a1 + 8), &v659);
          if (!v658)
          {
            return v659;
          }

          if (v658 == 1)
          {
            return 0;
          }

          goto LABEL_1306;
      }
    }
  }

  return v659;
}