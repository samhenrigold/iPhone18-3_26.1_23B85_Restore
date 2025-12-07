void sub_144A34C(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141B9A4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12A47E0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144A3C8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BEF0(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144A444(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144A454(uint64_t **result, void ***a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_14BAE64(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144A4D0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144A4E0(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_155282C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144AA6C(void *a1)
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
          sub_141CCA8(*v3);
          operator delete();
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

void sub_144AAF0(void *a1)
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
          sub_141E248(*v3);
          operator delete();
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

void sub_144AB74(void *a1)
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
          sub_141E8C8(*v3);
          operator delete();
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

void sub_144ABF8(void *a1)
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
          sub_1423D74(*v3);
          operator delete();
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

void sub_144AC7C(void *a1)
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
          sub_142E0E8(*v3);
          operator delete();
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

void sub_144AD00(void *a1)
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
          sub_141F040(*v3);
          operator delete();
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

void sub_144AD84(void *a1)
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
          sub_141F8B0(*v3);
          operator delete();
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

void sub_144AE08(void *a1)
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
          sub_14200A4(*v3);
          operator delete();
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

void sub_144AE8C(void *a1)
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
          sub_1423264(*v3);
          operator delete();
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

void sub_144AF10(void *a1)
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
          sub_1423820(*v3);
          operator delete();
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

void sub_144AF94(void *a1)
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
          sub_141A514(*v3);
          operator delete();
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

void sub_144B018(void *a1)
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
          sub_1428900(*v3);
          operator delete();
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

void sub_144B09C(void *a1)
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
          sub_1429884(*v3);
          operator delete();
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

void sub_144B120(void *a1)
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
          sub_142BD9C(*v3);
          operator delete();
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

void sub_144B1A4(void *a1)
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
          sub_1426070(*v3);
          operator delete();
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

void sub_144B228(void *a1)
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
          sub_142460C(*v3);
          operator delete();
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

void sub_144B2AC(void *a1)
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
          sub_1424FD0(*v3);
          operator delete();
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

void sub_144B330(void *a1)
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
          sub_142D930(*v3);
          operator delete();
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

void sub_144B3B4(void *a1)
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
          sub_1434C28(*v3);
          operator delete();
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

void sub_144B438(void *a1)
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
          sub_140E7E8(*v3);
          operator delete();
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

void sub_144B4BC(void *a1)
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
          sub_140F5B4(*v3);
          operator delete();
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

void sub_144B540(void *a1)
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
          sub_140CC50(*v3);
          operator delete();
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

void sub_144B5C4(void *a1)
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
          sub_1410E28(*v3);
          operator delete();
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

void sub_144B648(void *a1)
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
          sub_148C3B8(*v3);
          operator delete();
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

void sub_144B6CC(void *a1)
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
          sub_1411EE8(*v3);
          operator delete();
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

void sub_144B750(void *a1)
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
          sub_140FFF0(*v3);
          operator delete();
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

void sub_144B7D4(void *a1)
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
          sub_14148FC(*v3);
          operator delete();
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

void sub_144B858(void *a1)
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
          sub_1412F40(*v3);
          operator delete();
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

void sub_144B8DC(void *a1)
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
          sub_14B662C(*v3);
          operator delete();
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

void sub_144B960(void *a1)
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
          sub_1413FB0(*v3);
          operator delete();
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

void sub_144B9E4(void *a1)
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
          sub_1418DC8(*v3);
          operator delete();
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

void sub_144BA68(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_14353DC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144BAE4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144BAF4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_14354F8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144BB70(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144BB80(uint64_t **a1, char **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1435574(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144BBFC(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144BC0C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435984(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144BC88(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144BC98(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_1436258(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144BD14(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144BD24(uint64_t **a1, char **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1435618(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144BDA0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144BDB0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_14356BC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144BE2C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144BE3C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435718(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144BEB8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_144BEC8(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1435848(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E54B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_144BF44(uint64_t **result, uint64_t ***a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_14358E4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_144BFC0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_144BFD0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141C160(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C04C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C05C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435CCC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C0D8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_144C0E8(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1435D84(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_13EBEE0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_144C164(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_14360B8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144C1E0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144C1F0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435BB8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C26C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C27C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435A28(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C2F8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C308(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1435A84(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C384(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C394(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_14361DC(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C410(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C420(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_1436404(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C49C(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C4AC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BB7C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C528(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C538(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BBD8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C5B4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C5C4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_141BB20(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C640(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C650(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BC90(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C6CC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C6DC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_14BD738(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C758(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C768(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BCEC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C7E4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C7F4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_141BC34(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C870(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C880(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_141BE00(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144C8FC(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144C90C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BD48(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144C988(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144C998(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_14BF484(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144CA14(v12, v14);
      --v6;
    }

    while (v6);
  }
}

void sub_144CA24(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141BDA4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144CAA0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144CAB0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_141C040(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144CB2C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144D124(void *a1)
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
          sub_1437454(*v3);
          operator delete();
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

void sub_144D1A8(void *a1)
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
          sub_1436BAC(*v3);
          operator delete();
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

void sub_144D22C(void *a1)
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
          sub_1436540(*v3);
          operator delete();
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

void sub_144D2B0(void *a1)
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
          sub_154CF7C(*v3);
          operator delete();
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

void sub_144D334(void *a1)
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
          sub_14380F0(*v3);
          operator delete();
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

void sub_144D3B8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_143C0BC(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144D434(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144D444(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_143C034(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144D4C0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144D4D0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_143BFD8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144D54C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144D55C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_1552584(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144D5D8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144D5E8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_143C118(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144D664(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144D890(void *a1)
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
          sub_143C794(*v3);
          operator delete();
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

void sub_144D914(void *a1)
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
          sub_149D354(*v3);
          operator delete();
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

void sub_144D998(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1445F1C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_144DA14(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144DA24(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_14BDE5C(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_144DAA0(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_144DAB0(void *a1)
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
          sub_143E120(*v3);
          operator delete();
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

void sub_144DB34(void *a1)
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
          sub_14449D8(*v3);
          operator delete();
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

void sub_144DBB8(void *a1)
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
          sub_143F9B8(*v3);
          operator delete();
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

void sub_144DC3C(void *a1)
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
          sub_1440804(*v3);
          operator delete();
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

void sub_144DCC0(void *a1)
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
          sub_1441D18(*v3);
          operator delete();
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

void sub_144DD44(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1446070(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144DDC0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144DDD0(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1446568(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144DE4C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144DE5C(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_144610C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144DED8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_144DEE8(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_14461A0(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_144DF64(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_144DF74(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_144623C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_144DFF0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_144E06C(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(13, v3, a3);
}

void sub_144E084()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(29, v0, v3);
}

void sub_144E0C4()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_144E06C(v2, v3, v4);
}

void sub_144E0FC()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(16, v0, v3);
}

void sub_144E148(void *a1)
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
          sub_153B7F0(*v3);
          operator delete();
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

std::string *sub_144E1CC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_15519F8(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F94(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_144E31C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_153B82C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

void *sub_144E3B4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_144E438(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_144E438(void *result)
{
  if (result != &off_27713E0)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_14B64B0(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_153BE94(result);

      operator delete();
    }
  }

  return result;
}

void sub_144E4FC(void *a1)
{
  sub_144E3B4(a1);

  operator delete();
}

uint64_t sub_144E534(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = sub_144E5CC(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_144E5CC(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_144E6A8(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_144E31C(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_144E5CC(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_14559C0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1457990(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      result = sub_14584B8(*(a1 + 120));
    }

    if ((v9 & 2) != 0)
    {
      result = sub_1458528(*(a1 + 128));
    }
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_144E6A8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  result = sub_14B6668(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    result = sub_14B6668(*(a1 + 72));
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = sub_14B6728(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:
  result = sub_14B6798(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    result = sub_14B6798(*(a1 + 88));
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_144E79C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v30, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v30 + 1;
    v7 = *v30;
    if (*v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v30 + 2;
      }
    }

    v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v23 = *(a1 + 40);
          if (!v23)
          {
            v24 = *(a1 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            v23 = sub_14BF484(v25);
            *(a1 + 40) = v23;
            v6 = v30;
          }

          v19 = sub_2209138(a3, v23, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1551A70(v18);
          *(a1 + 48) = v16;
          v6 = v30;
        }

        v19 = sub_22030E0(a3, v16, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_14BAE64(v21);
          v12 = v22;
          *(a1 + 24) = v22;
LABEL_31:
          v6 = v30;
        }

LABEL_32:
        v19 = sub_22095B8(a3, v12, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_14BAE64(v14);
        v12 = v15;
        *(a1 + 32) = v15;
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v7)
    {
      v26 = (v7 & 7) == 4;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v30;
      }

      return 0;
    }

    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v6 = v30;
    }

    v19 = sub_1952690(v7, v28, v6, a3);
LABEL_46:
    v30 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  return v30;
}

char *sub_144E9F0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 32);
  *v4 = 18;
  v11 = *(v10 + 20);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 44);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_14B6D24(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 34;
    v17 = *(v16 + 44);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_153C1A4(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_144EC44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = sub_14B71B8(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_153C388(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_144ED7C(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_39;
  }

  if (v5)
  {
    *(result + 16) |= 1u;
    v6 = *(result + 24);
    if (!v6)
    {
      v7 = *(result + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_14BAE64(v8);
      *(result + 24) = v6;
    }

    if (*(a2 + 24))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = &off_2771738;
    }

    sub_144EF20(v6, v9);
    if ((v5 & 2) == 0)
    {
LABEL_4:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(result + 16) |= 2u;
  v10 = *(result + 32);
  if (!v10)
  {
    v11 = *(result + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_14BAE64(v12);
    *(result + 32) = v10;
  }

  if (*(a2 + 32))
  {
    v13 = *(a2 + 32);
  }

  else
  {
    v13 = &off_2771738;
  }

  sub_144EF20(v10, v13);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

LABEL_23:
  *(result + 16) |= 4u;
  v14 = *(result + 40);
  if (!v14)
  {
    v15 = *(result + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_14BF484(v16);
    *(result + 40) = v14;
  }

  if (*(a2 + 40))
  {
    v17 = *(a2 + 40);
  }

  else
  {
    v17 = &off_2773AC8;
  }

  sub_144F194(v14, v17);
  if ((v5 & 8) != 0)
  {
LABEL_31:
    *(result + 16) |= 8u;
    v18 = *(result + 48);
    if (!v18)
    {
      v19 = *(result + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1551A70(v20);
      *(result + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2776880;
    }

    sub_144F404(v18, v21);
  }

LABEL_39:
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((result + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_144EF20(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_1201B48(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = result[5];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((result + 6), *(a2 + 56));
    sub_1565B4C(result + 6, v11, (v10 + 8), v9, *result[8] - *(result + 14), v12);
    v13 = *(result + 14) + v9;
    *(result + 14) = v13;
    v14 = result[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8((result + 9), *(a2 + 80));
    sub_1201B48(result + 9, v17, (v16 + 8), v15, *result[11] - *(result + 20));
    v18 = *(result + 20) + v15;
    *(result + 20) = v18;
    v19 = result[11];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8((result + 12), *(a2 + 104));
    sub_1565BD8(result + 12, v22, (v21 + 8), v20, *result[14] - *(result + 26));
    v23 = *(result + 26) + v20;
    *(result + 26) = v23;
    v24 = result[14];
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if ((v25 & 3) != 0)
  {
    if (v25)
    {
      *(result + 4) |= 1u;
      v26 = result[15];
      if (!v26)
      {
        v27 = result[1];
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_14BAFC4(v28);
        result[15] = v26;
      }

      if (*(a2 + 120))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = &off_27717F8;
      }

      sub_1458FCC(v26, v29);
    }

    if ((v25 & 2) != 0)
    {
      *(result + 4) |= 2u;
      v30 = result[16];
      if (!v30)
      {
        v31 = result[1];
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v30 = sub_14BF234(v32);
        result[16] = v30;
      }

      if (*(a2 + 128))
      {
        v33 = *(a2 + 128);
      }

      else
      {
        v33 = &off_27739B8;
      }

      sub_128F8FC(v30, v33);
    }
  }

  v34 = *(a2 + 8);
  if (v34)
  {

    sub_1957EF4(result + 1, (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_144F194(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 48), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v8 = *(a1 + 56);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_14BF4E0(v10);
        *(a1 + 56) = v8;
      }

      if (*(a2 + 56))
      {
        v11 = *(a2 + 56);
      }

      else
      {
        v11 = &off_2773B38;
      }

      sub_14B7418(v8, v11);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_14BF53C(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_2773B80;
    }

    sub_14B751C(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_34:
      if ((v4 & 0x10) != 0)
      {
        *(a1 + 40) |= 0x10u;
        v22 = *(a1 + 80);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_14BF598(v24);
          *(a1 + 80) = v22;
        }

        if (*(a2 + 80))
        {
          v25 = *(a2 + 80);
        }

        else
        {
          v25 = &off_2773BC0;
        }

        sub_14B7610(v22, v25);
        if ((v4 & 0x20) == 0)
        {
LABEL_36:
          if ((v4 & 0x40) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_62;
        }
      }

      else if ((v4 & 0x20) == 0)
      {
        goto LABEL_36;
      }

      *(a1 + 40) |= 0x20u;
      v26 = *(a1 + 88);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_14BF598(v28);
        *(a1 + 88) = v26;
      }

      if (*(a2 + 88))
      {
        v29 = *(a2 + 88);
      }

      else
      {
        v29 = &off_2773BC0;
      }

      sub_14B7610(v26, v29);
      if ((v4 & 0x40) == 0)
      {
LABEL_37:
        if ((v4 & 0x80) == 0)
        {
LABEL_39:
          *(a1 + 40) |= v4;
          goto LABEL_40;
        }

LABEL_38:
        *(a1 + 100) = *(a2 + 100);
        goto LABEL_39;
      }

LABEL_62:
      *(a1 + 96) = *(a2 + 96);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_26:
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 72);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_14BF4E0(v18);
      *(a1 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = &off_2773B38;
    }

    sub_14B7418(v16, v19);
    goto LABEL_34;
  }

LABEL_40:
  if ((v4 & 0x100) != 0)
  {
    v20 = *(a2 + 104);
    *(a1 + 40) |= 0x100u;
    *(a1 + 104) = v20;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_144F404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144E1CC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 40))
  {
    v9 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    *(a1 + 72) = v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_144F4E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F5D0(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 48) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_144F560(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1457454(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 120);
  if ((*(v6 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(v6 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_144F5D0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 56) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_14B76B0(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 72) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_195228C(*(a1 + 80) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 88) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_144F68C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_144F700(void *a1)
{
  sub_144F68C(a1);

  operator delete();
}

uint64_t sub_144F738(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_144F760(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_144F9A8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v15) >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_144FBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_144FCBC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_2771418)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_153BE94(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_144E3B4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1563C54((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_144FD98(uint64_t a1)
{
  sub_144FCBC(a1);

  operator delete();
}

uint64_t sub_144FDD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144F738(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_144E31C(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_144E534(*(v1 + 56));
    }
  }

  if ((v5 & 0x3C) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
    *(v1 + 76) = 1;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_144FE8C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v48 + 1;
    v8 = *v48;
    if (*v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v48 + 2;
      }
    }

    v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_63;
      }

      v28 = v7 + 1;
      v27 = *v7;
      if (v27 < 0)
      {
        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = v7 + 2;
          goto LABEL_44;
        }

        v48 = sub_19587DC(v7, v27);
        if (!v48)
        {
          goto LABEL_85;
        }
      }

      else
      {
LABEL_44:
        v48 = v28;
      }

      if (v27)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 64) = 0;
      }

      goto LABEL_71;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_63;
      }

      v5 |= 8u;
      v36 = v7 + 1;
      v37 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v38 = *v36;
      v37 = v37 + (v38 << 7) - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_62:
        v48 = v36;
        *(a1 + 68) = v37;
        goto LABEL_71;
      }

      v46 = sub_1958770(v7, v37);
      v48 = v46;
      *(a1 + 68) = v47;
      if (!v46)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_63;
      }

      v5 |= 0x10u;
      v18 = v7 + 1;
      v19 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v18;
      v19 = v19 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        v48 = v18;
        *(a1 + 72) = v19;
        goto LABEL_71;
      }

      v44 = sub_1958770(v7, v19);
      v48 = v44;
      *(a1 + 72) = v45;
      if (!v44)
      {
        goto LABEL_85;
      }
    }

LABEL_71:
    if (sub_195ADC0(a3, &v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 5)
  {
    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 1u;
      v30 = *(a1 + 48);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v30 = sub_1551A70(v32);
        *(a1 + 48) = v30;
        v7 = v48;
      }

      v16 = sub_22030E0(a3, v30, v7);
    }

    else
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_14BA464(v14);
        v12 = v15;
        *(a1 + 56) = v15;
        v7 = v48;
      }

      v16 = sub_220BE38(a3, v12, v7);
    }

LABEL_70:
    v48 = v16;
    if (!v16)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_63;
    }

    v5 |= 0x20u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_57;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_57:
      v48 = v34;
      *(a1 + 76) = v33 != 0;
      goto LABEL_71;
    }

    v42 = sub_19587DC(v7, v33);
    v48 = v42;
    *(a1 + 76) = v43 != 0;
    if (!v42)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

  if (v11 == 7 && v8 == 58)
  {
    v21 = v7 - 1;
    while (1)
    {
      v22 = v21 + 1;
      v48 = v21 + 1;
      v23 = *(a1 + 40);
      if (v23 && (v24 = *(a1 + 32), v24 < *v23))
      {
        *(a1 + 32) = v24 + 1;
        v25 = *&v23[2 * v24 + 2];
      }

      else
      {
        v26 = sub_14BA4E4(*(a1 + 24));
        v25 = sub_19593CC(a1 + 24, v26);
        v22 = v48;
      }

      v21 = sub_220BEC8(a3, v25, v22);
      v48 = v21;
      if (!v21)
      {
        goto LABEL_85;
      }

      if (*a3 <= v21 || *v21 != 58)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_63:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = v48;
    }

    v16 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

char *sub_14502B0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 68);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if (v5)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 48);
    *v15 = 34;
    v20 = *(v19 + 44);
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 1);
    }

    else
    {
      v21 = v15 + 2;
    }

    v15 = sub_153C1A4(v19, v21, a3);
    if ((v5 & 2) == 0)
    {
LABEL_30:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v22 = *(a1 + 56);
  *v15 = 42;
  v23 = *(v22 + 20);
  v15[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v15 + 1);
  }

  else
  {
    v24 = v15 + 2;
  }

  v15 = sub_144E9F0(v22, v24, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_44:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v25 = *(a1 + 76);
    *v15 = 48;
    v15[1] = v25;
    v15 += 2;
  }

LABEL_47:
  v26 = *(a1 + 32);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v28 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 58;
      v29 = *(v28 + 20);
      v15[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v15 + 1);
      }

      else
      {
        v30 = v15 + 2;
      }

      v15 = sub_144F9A8(v28, v30, a3);
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v15;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v15) >= v34)
  {
    v36 = v34;
    memcpy(v15, v35, v34);
    v15 += v36;
    return v15;
  }

  return sub_1957130(a3, v35, v34, v15);
}

uint64_t sub_1450690(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_144FBE0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x3F) != 0)
  {
    if (v8)
    {
      v11 = sub_153C388(*(a1 + 48));
      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v12 = sub_144EC44(*(a1 + 56));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

LABEL_21:
    v13 = *(a1 + 64);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
LABEL_16:
        v2 += (v8 >> 4) & 2;
        goto LABEL_17;
      }

LABEL_15:
      v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_16;
    }

LABEL_25:
    v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v9 = *(a1 + 8);
  if (v9)
  {
    v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1450848(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15659B8((result + 24), v7, (v6 + 8), v5, **(result + 40) - *(result + 32));
    v8 = *(result + 32) + v5;
    *(result + 32) = v8;
    v9 = *(result + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      *(result + 16) |= 1u;
      v12 = *(result + 48);
      if (!v12)
      {
        v13 = *(result + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1551A70(v14);
        *(result + 48) = v12;
      }

      if (*(a2 + 48))
      {
        v15 = *(a2 + 48);
      }

      else
      {
        v15 = &off_2776880;
      }

      sub_144F404(v12, v15);
      if ((v10 & 2) == 0)
      {
LABEL_7:
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_33;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 16) |= 2u;
    v16 = *(result + 56);
    if (!v16)
    {
      v17 = *(result + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      a3.n128_f64[0] = sub_14BA464(v18);
      *(result + 56) = v16;
    }

    if (*(a2 + 56))
    {
      v19 = *(a2 + 56);
    }

    else
    {
      v19 = &off_27713E0;
    }

    sub_144ED7C(v16, v19, a3);
    if ((v10 & 4) == 0)
    {
LABEL_8:
      if ((v10 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(result + 64) = *(a2 + 64);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(result + 68) = *(a2 + 68);
    if ((v10 & 0x10) == 0)
    {
LABEL_10:
      if ((v10 & 0x20) == 0)
      {
LABEL_12:
        *(result + 16) |= v10;
        goto LABEL_13;
      }

LABEL_11:
      *(result + 76) = *(a2 + 76);
      goto LABEL_12;
    }

LABEL_35:
    *(result + 72) = *(a2 + 72);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((result + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14509FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_195228C(*(a1 + 48) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_144F4E8(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1450A5C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1450AD0(void *a1)
{
  sub_1450A5C(a1);

  operator delete();
}

uint64_t sub_1450B08(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1450B30(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v24 = sub_19587DC(v7, v19);
          if (!v24)
          {
            goto LABEL_51;
          }

          goto LABEL_33;
        }

        v20 = v7 + 2;
      }

      v24 = v20;
LABEL_33:
      if (v19 > 2)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 32) = v19;
      }

      goto LABEL_42;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if (v23 < 0)
    {
      v23 = (*v22 << 7) + v23 - 128;
      if (*v22 < 0)
      {
        v22 = sub_19587DC(v7, v23);
      }

      else
      {
        v22 = v7 + 2;
      }
    }

    v24 = v22;
    *(a1 + 24) = -(v23 & 1) ^ (v23 >> 1);
    v5 = 1;
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v24 = sub_19587DC(v7, v16);
      if (!v24)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_25:
      v24 = v17;
    }

    if (v16 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 28) = v16;
    }

    goto LABEL_42;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v24;
    }

    v24 = sub_1952690(v8, v15, v7, a3);
    if (!v24)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_1450DAC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    v8 = (2 * v7) ^ (v7 >> 31);
    __dst[1] = (2 * v7) ^ (v7 >> 31);
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v6 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v6 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v6++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          v6 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v12[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v16;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v16) >= v24)
  {
    v26 = v24;
    memcpy(v16, v25, v24);
    v16 += v26;
    return v16;
  }

  return sub_1957130(a3, v25, v24, v16);
}

uint64_t sub_1450FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v2 = ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 28);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
  if ((v1 & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
  }

LABEL_16:
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v2 += v10;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_14510E4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1451168(void *a1)
{
  sub_14510E4(a1);

  operator delete();
}

uint64_t sub_14511A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_14511B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v16 = a2;
  if (sub_195ADC0(a3, &v16, a3[11].u32[1]))
  {
    return v16;
  }

  while (1)
  {
    v6 = v16 + 1;
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v16, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v16 + 2;
      }
    }

    v16 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v10 = (a1 + 40);
        goto LABEL_13;
      }

      if (v7 == 16)
      {
        v17 = sub_1211E88(&v16);
        v12 = (a1 + 40);
LABEL_18:
        sub_194FE98(v12, &v17);
        if (!v16)
        {
          return 0;
        }

        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1)
    {
      if (v7 == 10)
      {
        v10 = (a1 + 16);
LABEL_13:
        v11 = sub_1958918(v10, v6, a3);
        goto LABEL_27;
      }

      if (v7 == 8)
      {
        v17 = sub_1211E88(&v16);
        v12 = (a1 + 16);
        goto LABEL_18;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v6 = v16;
    }

    v11 = sub_1952690(v7, v15, v6, a3);
LABEL_27:
    v16 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_28:
    if (sub_195ADC0(a3, &v16, a3[11].u32[1]))
    {
      return v16;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v16;
  }

  return 0;
}

char *sub_1451354(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v31 = v6 >> 14;
        v6 >>= 7;
      }

      while (v31);
      v4 = v7 - 1;
    }

    v8 = v4 + 2;
    *v7 = v6;
    v9 = *(a1 + 24);
    v10 = &v9[*(a1 + 16)];
    do
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v12 = *v9++;
      v11 = v12;
      *v8 = v12;
      if (v12 > 0x7F)
      {
        *v8 = v11 | 0x80;
        v13 = v11 >> 7;
        v8[1] = v11 >> 7;
        v4 = v8 + 2;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = v8[1];
          do
          {
            *(v4 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v4++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v4 = v8 + 1;
      }

      v8 = v4;
    }

    while (v9 < v10);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 18;
    v17 = v4 + 1;
    if (v16 >= 0x80)
    {
      do
      {
        *v17++ = v16 | 0x80;
        v32 = v16 >> 14;
        v16 >>= 7;
      }

      while (v32);
      v4 = v17 - 1;
    }

    v18 = v4 + 2;
    *v17 = v16;
    v19 = *(a1 + 48);
    v20 = &v19[*(a1 + 40)];
    do
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v22 = *v19++;
      v21 = v22;
      *v18 = v22;
      if (v22 > 0x7F)
      {
        *v18 = v21 | 0x80;
        v23 = v21 >> 7;
        v18[1] = v21 >> 7;
        v4 = v18 + 2;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v18[1];
          do
          {
            *(v4 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v4++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v4 = v18 + 1;
      }

      v18 = v4;
    }

    while (v19 < v20);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v4;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v4) >= v29)
  {
    v33 = v29;
    memcpy(v4, v30, v29);
    v4 += v33;
    return v4;
  }

  return sub_1957130(a3, v30, v29, v4);
}

uint64_t sub_14515E4(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 32) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E5C((a1 + 40));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 56) = v7;
  result = v5 + v6;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 60) = result;
  return result;
}

std::string *sub_14516C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__s.__data_[16];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&v10[4 * v9], *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14517C4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145187C(uint64_t a1)
{
  sub_14517C4(a1);

  operator delete();
}

uint64_t sub_14518B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1451930(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1451AB0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1451B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1451C84(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1451D24(uint64_t a1)
{
  sub_1451C84(a1);

  operator delete();
}

uint64_t sub_1451D5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1451DA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_22:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_25:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_30;
    }
  }

  if (v7 >> 3 == 1 && v7 == 13)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 4;
    goto LABEL_25;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_22;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_30;
  }

LABEL_31:
  *v19 = 0;
LABEL_30:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_1451F30(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if ((*a3 - v4) >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_1452030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_14520E0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32))
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145218C(uint64_t a1)
{
  sub_14520E0(a1);

  operator delete();
}

std::string *sub_14521C4(std::string *result)
{
  v1 = result;
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_194EC40((result + 32), &off_2773CA8);
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 44) = 0;
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1452284(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = sub_194DB04((a1 + 24), v14);
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    if (v8 != 8)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      *v32 = v19;
      *(a1 + 40) = v20;
      goto LABEL_42;
    }

    v28 = sub_1958770(v7, v20);
    *v32 = v28;
    *(a1 + 40) = v29;
    if (!v28)
    {
      goto LABEL_51;
    }

LABEL_42:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_34;
    }

    v5 |= 8u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_33:
      *v32 = v23;
      *(a1 + 44) = v22 != 0;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v22);
    *v32 = v30;
    *(a1 + 44) = v31 != 0;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_194EAD4((a1 + 32), &off_2773CA8, v17);
LABEL_23:
    v18 = sub_1958890(v15, *v32, a3);
LABEL_41:
    *v32 = v18;
    if (!v18)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_34:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v18 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_1452520(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 44);
  *v6 = 24;
  v6[1] = v13;
  v6 += 2;
  if ((v5 & 2) != 0)
  {
LABEL_13:
    v6 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

LABEL_14:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
  }

  v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if ((*a3 - v6) >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_14526CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 = v2 + ((v1 >> 2) & 2);
LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14527D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA44((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14528F4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956ABC(a1 + 64);
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14529C4(uint64_t a1)
{
  sub_14528F4(a1);

  operator delete();
}

uint64_t sub_14529FC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  *(a1 + 64) = 0;
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_11:
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1452AC0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    return *v45;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v45 + 1);
    v9 = **v45;
    if (**v45 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v45, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v45 + 2);
      }
    }

    *v45 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 3)
    {
      break;
    }

    if (v13 == 4)
    {
      if (v9 != 32)
      {
        if (v9 == 34)
        {
          *&v46 = a1 + 64;
          *(&v46 + 1) = sub_144E248;
          v47 = a1 + 8;
          v48 = 4;
          v36 = sub_1216588(a3, v8, &v46, v5);
          goto LABEL_80;
        }

        goto LABEL_73;
      }

      v26 = (v8 - 1);
      while (2)
      {
        *v45 = v26 + 1;
        v27 = *(v26 + 1);
        v28 = (v26 + 2);
        if (v27 < 0)
        {
          v29 = *v28;
          v30 = (v29 << 7) + v27;
          LODWORD(v27) = v30 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = (v26 + 3);
            goto LABEL_38;
          }

          *v45 = sub_19587DC(v26 + 1, (v30 - 128));
          if (!*v45)
          {
            goto LABEL_86;
          }

          LODWORD(v27) = v33;
        }

        else
        {
LABEL_38:
          *v45 = v28;
        }

        if (v27 > 3)
        {
          sub_12E8500();
        }

        else
        {
          v31 = *(a1 + 64);
          if (v31 == *(a1 + 68))
          {
            v32 = v31 + 1;
            sub_1958E5C((a1 + 64), v31 + 1);
            *(*(a1 + 72) + 4 * v31) = v27;
          }

          else
          {
            *(*(a1 + 72) + 4 * v31) = v27;
            v32 = v31 + 1;
          }

          *(a1 + 64) = v32;
        }

        v26 = *v45;
        if (*a3 <= *v45 || **v45 != 32)
        {
          goto LABEL_81;
        }

        continue;
      }
    }

    if (v13 == 5)
    {
      if (v9 == 42)
      {
        *(a1 + 16) |= 1u;
        v34 = *(a1 + 8);
        v15 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v15 = *v15;
        }

        v16 = (a1 + 80);
        goto LABEL_54;
      }
    }

    else if (v13 == 6 && v9 == 50)
    {
      *(a1 + 16) |= 2u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = (a1 + 88);
LABEL_54:
      v35 = sub_194DB04(v16, v15);
      v36 = sub_1958890(v35, *v45, a3);
      goto LABEL_80;
    }

LABEL_73:
    if (v9)
    {
      v43 = (v9 & 7) == 4;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      if (!v8)
      {
        goto LABEL_86;
      }

      a3[10].i32[0] = v9 - 1;
      return *v45;
    }

    if (*v7)
    {
      v44 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v8 = *v45;
    }

    v36 = sub_1952690(v9, v44, v8, a3);
LABEL_80:
    *v45 = v36;
    if (!v36)
    {
      goto LABEL_86;
    }

LABEL_81:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      return *v45;
    }
  }

  if (v13 != 1)
  {
    if (v13 == 2 && v9 == 18)
    {
      v18 = v8 - 1;
      while (1)
      {
        v19 = (v18 + 1);
        *v45 = v18 + 1;
        v20 = *(a1 + 56);
        if (v20 && (v21 = *(a1 + 48), v21 < *v20))
        {
          *(a1 + 48) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = *(a1 + 40);
          if (!v23)
          {
            operator new();
          }

          *v25 = v24;
          v25[1] = sub_195A650;
          *v24 = 0;
          v24[1] = 0;
          v24[2] = 0;
          v22 = sub_19593CC(a1 + 40, v24);
          v19 = *v45;
        }

        v18 = sub_1958890(v22, v19, a3);
        *v45 = v18;
        if (!v18)
        {
          goto LABEL_86;
        }

        if (*a3 <= v18 || *v18 != 18)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_73;
  }

  if (v9 != 8)
  {
    if (v9 == 10)
    {
      v36 = sub_1958918((a1 + 24), v8, a3);
      goto LABEL_80;
    }

    goto LABEL_73;
  }

  v37 = v8 - 1;
  while (1)
  {
    *v45 = v37 + 1;
    v38 = v37[1];
    if (v37[1] < 0)
    {
      v39 = v38 + (v37[2] << 7);
      v38 = v39 - 128;
      if (v37[2] < 0)
      {
        v37 = sub_1958770((v37 + 1), v39 - 128);
        v38 = v40;
      }

      else
      {
        v37 += 3;
      }
    }

    else
    {
      v37 += 2;
    }

    *v45 = v37;
    v41 = *(a1 + 24);
    if (v41 == *(a1 + 28))
    {
      v42 = v41 + 1;
      sub_1958E5C((a1 + 24), v41 + 1);
      *(*(a1 + 32) + 4 * v41) = v38;
      v37 = *v45;
    }

    else
    {
      *(*(a1 + 32) + 4 * v41) = v38;
      v42 = v41 + 1;
    }

    *(a1 + 24) = v42;
    if (!v37)
    {
      break;
    }

    if (*a3 <= v37 || *v37 != 8)
    {
      goto LABEL_81;
    }
  }

LABEL_86:
  *v45 = 0;
  return *v45;
}

char *sub_1452F50(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 24);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 32) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 48);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 56) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || (*a3 - v8 + 14) < v15)
      {
        v8 = sub_1957480(a3, 2, v14, v8);
      }

      else
      {
        *v8 = 18;
        v8[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v8 + 2;
        memcpy(v8 + 2, v14, v15);
        v8 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = *(a1 + 64);
  if (v17 < 1)
  {
    v20 = v8;
  }

  else
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v19 = *(*(a1 + 72) + 4 * j);
      *v8 = 32;
      v8[1] = v19;
      if (v19 > 0x7F)
      {
        v8[1] = v19 | 0x80;
        v21 = v19 >> 7;
        v8[2] = v19 >> 7;
        v20 = v8 + 3;
        if (v19 >= 0x4000)
        {
          LOBYTE(v22) = v8[2];
          do
          {
            *(v20 - 1) = v22 | 0x80;
            v22 = v21 >> 7;
            *v20++ = v21 >> 7;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v20 = v8 + 2;
      }

      v8 = v20;
    }
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    v20 = sub_128AEEC(a3, 5, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  if ((v24 & 2) != 0)
  {
    v20 = sub_128AEEC(a3, 6, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if ((*a3 - v20) >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_145322C(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 72) + 4 * v10);
      if (v12 < 0)
      {
        v13 = 10;
      }

      else
      {
        v13 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
      }

      v11 += v13;
      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v11 = 0;
  }

  result = v4 + v9 + v11;
  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      result += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v19 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      result += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_14533CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v14 + v13);
    v15 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v15 + 4 * v14), *(a2 + 72), 4 * *(a2 + 64));
  }

  v16 = *(a2 + 16);
  if ((v16 & 3) != 0)
  {
    if (v16)
    {
      v17 = *(a2 + 80);
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_194EA1C((a1 + 80), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    }

    if ((v16 & 2) != 0)
    {
      v20 = *(a2 + 88);
      *(a1 + 16) |= 2u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((a1 + 88), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    }
  }

  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_145359C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1453610(void *a1)
{
  sub_145359C(a1);

  operator delete();
}

uint64_t sub_1453648(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1453660(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 13)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 4;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_1453794(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 13;
    *(v4 + 1) = v6;
    v4 += 5;
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1453874(uint64_t a1)
{
  v1 = 5;
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_14538CC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1453940(void *a1)
{
  sub_14538CC(a1);

  operator delete();
}

uint64_t sub_1453978(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 1;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1453994(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v14 = v6 + 1;
    v13 = *v6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_18:
      v19 = v14;
      *(a1 + 24) = v13 != 0;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17 != 0;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
    {
      goto LABEL_26;
    }
  }

  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_1453B18(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1453BF8(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1);
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_1453C48(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2771598)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_14651C4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1453D00(uint64_t a1)
{
  sub_1453C48(a1);

  operator delete();
}

uint64_t sub_1453D38(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1453D98(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

uint64_t sub_1453D98(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1450B08(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1453E2C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v19;
        v22 = (v21 << 7) + v20;
        LODWORD(v20) = v22 - 128;
        if (v21 < 0)
        {
          v25 = sub_19587DC(v6, (v22 - 128));
          if (!v25)
          {
            return 0;
          }

          LODWORD(v20) = v23;
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v25 = v19;
        }

        if (sub_1454008(v20))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v20;
        }

        else
        {
          sub_12E8450();
        }

        continue;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v25;
        }

        return 0;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v25;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_14BB658(v17);
      v15 = v18;
      *(a1 + 24) = v18;
      v6 = v25;
    }

    v14 = sub_220BF58(a3, v15, v6);
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v25;
}

uint64_t sub_1454008(unsigned int a1)
{
  result = 1;
  if ((a1 - 41 > 0x2F || ((1 << (a1 - 41)) & 0xFF8003FFFFFFLL) == 0) && (a1 > 0x27 || ((1 << a1) & 0x8E7FF718FFLL) == 0))
  {
    return 0;
  }

  return result;
}

char *sub_1454068(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1465594(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v6) >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_14541F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1465860(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t **sub_14542BC(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(result + 4) |= 1u;
      v5 = result[3];
      if (!v5)
      {
        v6 = *(v3 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_14BB658(v7);
        *(v3 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771CA0;
      }

      result = sub_145438C(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t **sub_145438C(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    result = sub_1565CF0((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
    v7 = *(v3 + 32) + v4;
    *(v3 + 32) = v7;
    v8 = *(v3 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(v3 + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(v3 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(v3 + 56) = *(a2 + 56);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(v3 + 52) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4((v3 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14544A8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1454548(uint64_t a1)
{
  sub_14544A8(a1);

  operator delete();
}

uint64_t sub_1454580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 32) = 0x100000000;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}