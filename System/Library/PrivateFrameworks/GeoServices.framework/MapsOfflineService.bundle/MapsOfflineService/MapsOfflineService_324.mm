void sub_1346EAC(void *a1)
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
          sub_132EBA4(*v3);
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

void sub_1346F30(void *a1)
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
          sub_133239C(*v3);
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

void sub_1346FB4(void *a1)
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
          sub_133190C(*v3);
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

void sub_1347038(void *a1)
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
          sub_13312B8(*v3);
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

void sub_13470BC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1334170(v9);
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
      sub_1347138(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_1347148(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1334460(v9);
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
      result = sub_13471C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13471D4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_13343B4(v9);
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
      sub_1347250(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1347260(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1334338(v9);
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
      result = sub_13472DC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13472EC(void *a1)
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
          sub_13346B0(*v3);
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

void sub_1347370(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_13355A8(v9);
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
      sub_13473EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13473FC(void *a1)
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
          sub_153145C(*v3);
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

void sub_1347480(void *a1)
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
          sub_15BE590(*v3);
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

void sub_1347504(void *a1)
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
          sub_14F0F08(*v3);
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

void sub_1347588(void *a1)
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
          sub_1812FDC(*v3);
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

void sub_134760C(void *a1)
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
          sub_1341E74(*v3);
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

void sub_1347690(void *a1)
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
          sub_1342444(*v3);
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

void sub_1347714(void *a1)
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
          sub_14F00B4(*v3);
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

void sub_1347798(void *a1)
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
          sub_167C0AC(*v3);
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

void sub_134781C(void *a1)
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
          sub_15208FC(*v3);
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

void sub_13478A0(void *a1)
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
          sub_13356E8(*v3);
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

void sub_1347924(void *a1)
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
          sub_1335BA8(*v3);
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

void sub_13479A8(void *a1)
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
          sub_1336878(*v3);
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

void sub_1347A2C(void *a1)
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
          sub_1336CE0(*v3);
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

void sub_1347AB0(void *a1)
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
          sub_14D9114(*v3);
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

void sub_1347B34(void *a1)
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
          sub_150DFF0(*v3);
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

void sub_1347BB8(void *a1)
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
          sub_15262FC(*v3);
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

void sub_1347C3C(void *a1)
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
          sub_14F2738(*v3);
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

void sub_1347CC0(void *a1)
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
          sub_16B363C(*v3);
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

void sub_1347D44(void *a1)
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
          sub_1339BA0(*v3);
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

void sub_1347DC8(void *a1)
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
          sub_15BBC38(*v3);
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

void sub_1347E4C(void *a1)
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
          sub_1337D5C(*v3);
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

void sub_1347ED0(void *a1)
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
          sub_14D8918(*v3);
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

void sub_1347F54(void *a1)
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
          sub_14F1FA4(*v3);
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

void sub_1347FD8(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_155136C(v9);
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
      sub_1348054(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1348064(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15BFF1C(v9);
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
      sub_13480E0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13480F0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15287EC(v9);
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
      sub_134816C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_134817C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1862ABC(v9);
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
      sub_13481F8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348208(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_134312C(v9);
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
      sub_1348284(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348294(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_13431CC(v9);
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
      sub_1348310(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348320(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1528744(v9);
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
      sub_134839C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13483AC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_167D340(v9);
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
      sub_1348428(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1348438(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_152B224(v9);
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
      sub_13484B4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13484C4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1342A14(v9);
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
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348540(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1342A98(v9);
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
      sub_13485BC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_13485CC(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1342B98(v9);
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
      result = sub_12E6D64(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1348648(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1342C14(v9);
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
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13486C4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_152710C(v9);
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
      sub_1348740(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348750(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_152A1B4(v9);
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
      sub_13487CC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_13487DC(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_152B524(v9);
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
      result = sub_1348858(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1348868(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_152891C(v9);
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
      sub_12E6CD8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13488E4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_16BB5D8(v9);
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
      sub_1348960(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348970(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1342EFC(v9);
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
      sub_13489EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_13489FC(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BE1A4(v9);
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
      result = sub_12E5540(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1348A78(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1342D9C(v9);
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
      sub_1348AF4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348B04(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_152708C(v9);
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
      sub_12E7250(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348B80(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15288A0(v9);
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
      sub_1348BFC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1348CAC()
{

  operator new();
}

uint64_t sub_1348DA4(uint64_t a1)
{

  return sub_19593CC(v1, a1);
}

uint64_t sub_1348DD4@<X0>(uint64_t a1@<X8>)
{

  return sub_19587DC(a1, v1);
}

void sub_1348DF8()
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

  sub_19586BC(1, v0, v3);
}

void sub_1348E38()
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

  sub_19586BC(2, v0, v3);
}

void sub_1348E78()
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

  sub_19586BC(4, v0, v3);
}

void sub_1348EB8()
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

  sub_19586BC(12, v0, v3);
}

void sub_1348EF8()
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

  sub_19586BC(9, v0, v3);
}

void sub_1348F38()
{
  dword_278D288 = 500;
  qword_278D290 = &unk_232F260;
  sub_194EE44(&off_2783298, 500, 9, 0, 0);
  dword_278D298 = 1000;
  qword_278D2A0 = 0;
  sub_194EE44(&off_2770288, 1000, 4, 0, 0);
  dword_278D2A8 = 199;
  qword_278D2B0 = &off_276B6A8;
  sub_194F72C(&off_276FAB8, 199, 11, 0, 0, &off_276B6A8);
  dword_278D2B8 = 100;
  qword_278D2C0 = &off_276B6D0;
  sub_194F72C(&off_276F658, 100, 11, 0, 0, &off_276B6D0);
  dword_278D2C8 = 101;
  qword_278D2D0 = &off_276B770;
  sub_194F72C(&off_276F658, 101, 11, 0, 0, &off_276B770);
  dword_278D2D8 = 102;
  qword_278D2E0 = &off_276B6D0;
  sub_194F72C(&off_276F658, 102, 11, 0, 0, &off_276B6D0);
  dword_278D2E8 = 600;
  qword_278D2F0 = &off_276FAB8;
  sub_194F72C(&off_2776830, 600, 11, 0, 0, &off_276FAB8);
  dword_278D2F8 = 10010;
  qword_278D300 = &off_277E9A8;
  sub_194F72C(&off_276FAB8, 10010, 11, 1, 0, &off_277E9A8);
  dword_278D308 = 10011;
  qword_278D310 = &off_276B820;
  sub_194F72C(&off_276FAB8, 10011, 11, 0, 0, &off_276B820);
  dword_278D318 = 10012;
  qword_278D320 = 0;
  sub_194EE44(&off_276FAB8, 10012, 4, 0, 0);
  dword_278D328 = 10013;
  qword_278D330 = &unk_232F278;
  sub_194EE44(&off_276FAB8, 10013, 12, 0, 0);
  dword_278D338 = 10014;
  qword_278D340 = &unk_232F290;
  sub_194EE44(&off_276FAB8, 10014, 9, 0, 0);
  dword_278D348 = 10015;
  byte_278D34C = 0;
  sub_194EE44(&off_276FAB8, 10015, 8, 0, 0);
  dword_278D350 = 10016;
  qword_278D358 = &unk_232F2A8;
  sub_194EE44(&off_276FAB8, 10016, 9, 0, 0);
  dword_278D360 = 10017;
  qword_278D368 = &off_276B880;
  sub_194F72C(&off_276FAB8, 10017, 11, 0, 0, &off_276B880);
  dword_278D370 = 10018;
  byte_278D374 = 0;
  sub_194EE44(&off_276FAB8, 10018, 8, 0, 0);
  qword_278D378 = 10019;
  sub_194EE44(&off_276FAB8, 10019, 13, 0, 0);
  qword_278D380 = 10020;
  sub_194EE44(&off_276FAB8, 10020, 13, 0, 0);
  dword_278D388 = 10021;
  byte_278D38C = 0;
  sub_194EE44(&off_276FAB8, 10021, 8, 0, 0);
  dword_278D390 = 10022;
  qword_278D398 = &off_277DFF0;
  sub_194F72C(&off_276FAB8, 10022, 11, 0, 0, &off_277DFF0);
  qword_278D3A0 = 10023;
  sub_194EE44(&off_276FAB8, 10023, 13, 0, 0);
  dword_278D3A8 = 501;
  qword_278D3B0 = &off_277DFF0;
  sub_194F72C(&off_2777010, 501, 11, 0, 0, &off_277DFF0);
  dword_278D3B8 = 10000;
  qword_278D3C0 = 0;
  sub_194EE44(&off_276F8E0, 10000, 4, 0, 0);
  dword_278D3C8 = 10000;
  qword_278D3D0 = &unk_232F2C0;
  sub_194EE44(&off_276F940, 10000, 9, 0, 0);
  qword_278D3D8 = 10001;
  sub_194EE44(&off_276F940, 10001, 5, 0, 0);
  dword_278D3E0 = 10002;
  qword_278D3E8 = &unk_232F2D8;
  sub_194EE44(&off_276F940, 10002, 9, 0, 0);
  dword_278D3F0 = 10003;
  qword_278D3F8 = &unk_232F2F0;
  sub_194EE44(&off_276F940, 10003, 9, 0, 0);
  qword_278D400 = 10004;
  sub_194F628(&off_276F940, 10004, 14, 0, 0, sub_14EBAF4);
  dword_278D408 = 10005;
  qword_278D410 = &unk_232F308;
  sub_194EE44(&off_276F940, 10005, 9, 0, 0);
  dword_278D418 = 10006;
  qword_278D420 = &unk_232F320;
  sub_194EE44(&off_276F940, 10006, 9, 0, 0);
  dword_278D428 = 10007;
  qword_278D430 = &unk_232F338;
  sub_194EE44(&off_276F940, 10007, 9, 0, 0);
  qword_278D438 = 10000;
  sub_194EE44(&off_276F9A0, 10000, 5, 0, 0);
  dword_278D440 = 10001;
  qword_278D448 = &unk_232F350;
  sub_194EE44(&off_276F9A0, 10001, 9, 0, 0);
  dword_278D450 = 10002;
  qword_278D458 = &unk_232F368;
  sub_194EE44(&off_276F9A0, 10002, 9, 0, 0);
  dword_278D460 = 1000;
  qword_278D468 = &unk_232F380;
  sub_194EE44(&off_2789ED8, 1000, 9, 1, 0);
  dword_278D470 = 1001;
  qword_278D478 = &unk_232F398;
  sub_194EE44(&off_2789ED8, 1001, 9, 0, 0);
  dword_278D480 = 1002;
  qword_278D488 = &unk_232F3B0;
  sub_194EE44(&off_2789ED8, 1002, 9, 0, 0);
  dword_278D490 = 1003;
  qword_278D498 = &unk_232F3C8;
  sub_194EE44(&off_2789ED8, 1003, 9, 0, 0);
  dword_278D4A0 = 1004;
  qword_278D4A8 = &unk_232F3E0;
  sub_194EE44(&off_2789ED8, 1004, 9, 0, 0);
  dword_278D4B0 = 1005;
  qword_278D4B8 = &unk_232F3F8;
  sub_194EE44(&off_2789ED8, 1005, 9, 0, 0);
  dword_278D4C0 = 1006;
  qword_278D4C8 = &unk_232F410;
  sub_194EE44(&off_2789ED8, 1006, 9, 0, 0);
  dword_278D4D0 = 1007;
  qword_278D4D8 = &unk_232F428;
  sub_194EE44(&off_2789ED8, 1007, 9, 0, 0);
  dword_278D4E0 = 1008;
  qword_278D4E8 = &unk_232F440;
  sub_194EE44(&off_2789ED8, 1008, 9, 0, 0);
  dword_278D4F0 = 1009;
  qword_278D4F8 = &unk_232F458;
  sub_194EE44(&off_2789ED8, 1009, 9, 0, 0);
  qword_278D500 = 1010;
  sub_194F628(&off_2789ED8, 1010, 14, 0, 0, sub_132E618);
  dword_278D508 = 1011;
  qword_278D510 = &off_276B8B8;
  sub_194F72C(&off_2789ED8, 1011, 11, 1, 0, &off_276B8B8);
  dword_278D518 = 1000;
  qword_278D520 = &unk_232F470;
  sub_194EE44(&off_278A328, 1000, 9, 1, 0);
  dword_278D528 = 1000;
  qword_278D530 = &off_277E5E8;
  sub_194F72C(&off_2775FB0, 1000, 11, 0, 0, &off_277E5E8);
  dword_278D538 = 1001;
  qword_278D540 = 0;
  sub_194EE44(&off_2775FB0, 1001, 1, 0, 0);
  dword_278D548 = 1002;
  qword_278D550 = &off_27746C0;
  sub_194F72C(&off_2775FB0, 1002, 11, 1, 0, &off_27746C0);
  dword_278D558 = 1000;
  qword_278D560 = &unk_232F488;
  sub_194EE44(&off_2775AC0, 1000, 9, 1, 0);
  dword_278D568 = 1001;
  qword_278D570 = &unk_232F4A0;

  sub_194EE44(&off_2775AC0, 1001, 9, 0, 0);
}

uint64_t sub_13499B4()
{
  qword_27C5DF0 = "BLOCKED_BY_INCIDENTMAP_MATCHING_FAILEDOKOTHER_ERROROUT_OF_COVERAGETOO_MANY_ROUTESUNUSED_STATUS";
  *algn_27C5DF8 = 19;
  dword_27C5E00 = 2;
  qword_27C5E08 = "MAP_MATCHING_FAILEDOKOTHER_ERROROUT_OF_COVERAGETOO_MANY_ROUTESUNUSED_STATUS";
  unk_27C5E10 = 19;
  dword_27C5E18 = 1;
  qword_27C5E20 = "OKOTHER_ERROROUT_OF_COVERAGETOO_MANY_ROUTESUNUSED_STATUS";
  unk_27C5E28 = 2;
  dword_27C5E30 = 0;
  qword_27C5E38 = "OTHER_ERROROUT_OF_COVERAGETOO_MANY_ROUTESUNUSED_STATUS";
  unk_27C5E40 = 11;
  dword_27C5E48 = 99;
  qword_27C5E50 = "OUT_OF_COVERAGETOO_MANY_ROUTESUNUSED_STATUS";
  unk_27C5E58 = 15;
  dword_27C5E60 = 5;
  qword_27C5E68 = "TOO_MANY_ROUTESUNUSED_STATUS";
  unk_27C5E70 = 15;
  dword_27C5E78 = 4;
  qword_27C5E80 = "UNUSED_STATUS";
  unk_27C5E88 = 13;
  dword_27C5E90 = 3;
  qword_27C5E98 = "INVALID_REQUESTOK";
  unk_27C5EA0 = 15;
  dword_27C5EA8 = 1;
  qword_27C5EB0 = "OK";
  unk_27C5EB8 = 2;
  dword_27C5EC0 = 0;
  qword_27C5EC8 = "RELATIVE_SIDE_CENTERRELATIVE_SIDE_LEFTRELATIVE_SIDE_RIGHTRELATIVE_SIDE_UNKNOWN";
  unk_27C5ED0 = 20;
  dword_27C5ED8 = 3;
  qword_27C5EE0 = "RELATIVE_SIDE_LEFTRELATIVE_SIDE_RIGHTRELATIVE_SIDE_UNKNOWN";
  unk_27C5EE8 = 18;
  dword_27C5EF0 = 1;
  qword_27C5EF8 = "RELATIVE_SIDE_RIGHTRELATIVE_SIDE_UNKNOWN";
  unk_27C5F00 = 19;
  dword_27C5F08 = 2;
  qword_27C5F10 = "RELATIVE_SIDE_UNKNOWN";
  unk_27C5F18 = 21;
  dword_27C5F20 = 0;
  qword_27C5F28 = "INPUT_POINT_TYPE_CENTERINPUT_POINT_TYPE_CYCLING_ENTERINPUT_POINT_TYPE_CYCLING_EXITINPUT_POINT_TYPE_DESTINATIONINPUT_POINT_TYPE_DRIVING_ENTERINPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5F30 = 23;
  dword_27C5F38 = 0;
  qword_27C5F40 = "INPUT_POINT_TYPE_CYCLING_ENTERINPUT_POINT_TYPE_CYCLING_EXITINPUT_POINT_TYPE_DESTINATIONINPUT_POINT_TYPE_DRIVING_ENTERINPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5F48 = 30;
  dword_27C5F50 = 2;
  qword_27C5F58 = "INPUT_POINT_TYPE_CYCLING_EXITINPUT_POINT_TYPE_DESTINATIONINPUT_POINT_TYPE_DRIVING_ENTERINPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5F60 = 29;
  dword_27C5F68 = 3;
  qword_27C5F70 = "INPUT_POINT_TYPE_DESTINATIONINPUT_POINT_TYPE_DRIVING_ENTERINPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5F78 = 28;
  dword_27C5F80 = 1;
  qword_27C5F88 = "INPUT_POINT_TYPE_DRIVING_ENTERINPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5F90 = 30;
  dword_27C5F98 = 4;
  qword_27C5FA0 = "INPUT_POINT_TYPE_DRIVING_EXITINPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5FA8 = 29;
  dword_27C5FB0 = 5;
  qword_27C5FB8 = "INPUT_POINT_TYPE_WALKING_ENTERINPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5FC0 = 30;
  dword_27C5FC8 = 6;
  qword_27C5FD0 = "INPUT_POINT_TYPE_WALKING_EXIT";
  unk_27C5FD8 = 29;
  dword_27C5FE0 = 7;
  qword_27C5FE8 = "DIRECTION_FORWARDDIRECTION_REVERSEDIRECTION_UNKNOWN";
  unk_27C5FF0 = 17;
  dword_27C5FF8 = 1;
  qword_27C6000 = "DIRECTION_REVERSEDIRECTION_UNKNOWN";
  unk_27C6008 = 17;
  dword_27C6010 = 2;
  qword_27C6018 = "DIRECTION_UNKNOWN";
  unk_27C6020 = 17;
  dword_27C6028 = 0;
  qword_27C6030 = "STATICTIME_DEPENDENTUNKNOWN";
  *algn_27C6038 = 6;
  dword_27C6040 = 2;
  qword_27C6048 = "TIME_DEPENDENTUNKNOWN";
  unk_27C6050 = 14;
  dword_27C6058 = 3;
  qword_27C6060 = "UNKNOWN";
  unk_27C6068 = 7;
  dword_27C6070 = 1;
  qword_27C6078 = "CHARGING_STATIONDESTINATIONINTERMEDIATE_ENTRYINTERMEDIATE_EXITORIGINREGULAR";
  unk_27C6080 = 16;
  dword_27C6088 = 6;
  qword_27C6090 = "DESTINATIONINTERMEDIATE_ENTRYINTERMEDIATE_EXITORIGINREGULAR";
  unk_27C6098 = 11;
  dword_27C60A0 = 3;
  qword_27C60A8 = "INTERMEDIATE_ENTRYINTERMEDIATE_EXITORIGINREGULAR";
  unk_27C60B0 = 18;
  dword_27C60B8 = 4;
  qword_27C60C0 = "INTERMEDIATE_EXITORIGINREGULAR";
  unk_27C60C8 = 17;
  dword_27C60D0 = 5;
  qword_27C60D8 = "ORIGINREGULAR";
  unk_27C60E0 = 6;
  dword_27C60E8 = 2;
  qword_27C60F0 = "REGULAR";
  unk_27C60F8 = 7;
  dword_27C6100 = 1;
  qword_27C6108 = "FILTEREDSELECTED_ALTERNATESELECTED_MAIN_ROUTEUNSELECTED";
  unk_27C6110 = 8;
  dword_27C6118 = 3;
  qword_27C6120 = "SELECTED_ALTERNATESELECTED_MAIN_ROUTEUNSELECTED";
  unk_27C6128 = 18;
  dword_27C6130 = 1;
  qword_27C6138 = "SELECTED_MAIN_ROUTEUNSELECTED";
  unk_27C6140 = 19;
  dword_27C6148 = 0;
  qword_27C6150 = "UNSELECTED";
  unk_27C6158 = 10;
  dword_27C6160 = 2;
  qword_27C6168 = "BIASEDDEFAULT_SUB_TRANSPORT_MODE_MAINFAMILIARMAINMOSTLY_FAMILIARNON_NAVIGABLE_ALTERNATE";
  unk_27C6170 = 6;
  dword_27C6178 = 2;
  qword_27C6180 = "DEFAULT_SUB_TRANSPORT_MODE_MAINFAMILIARMAINMOSTLY_FAMILIARNON_NAVIGABLE_ALTERNATE";
  unk_27C6188 = 31;
  dword_27C6190 = 1;
  qword_27C6198 = "FAMILIARMAINMOSTLY_FAMILIARNON_NAVIGABLE_ALTERNATE";
  unk_27C61A0 = 8;
  dword_27C61A8 = 3;
  qword_27C61B0 = "MAINMOSTLY_FAMILIARNON_NAVIGABLE_ALTERNATE";
  unk_27C61B8 = 4;
  dword_27C61C0 = 0;
  qword_27C61C8 = "MOSTLY_FAMILIARNON_NAVIGABLE_ALTERNATE";
  unk_27C61D0 = 15;
  dword_27C61D8 = 4;
  qword_27C61E0 = "NON_NAVIGABLE_ALTERNATE";
  unk_27C61E8 = 23;
  dword_27C61F0 = 5;
  qword_27C61F8 = "L1OTHERQSSUNK";
  unk_27C6200 = 2;
  dword_27C6208 = 2;
  qword_27C6210 = "OTHERQSSUNK";
  unk_27C6218 = 5;
  dword_27C6220 = 3;
  qword_27C6228 = "QSSUNK";
  unk_27C6230 = 3;
  dword_27C6238 = 1;
  qword_27C6240 = "UNK";
  unk_27C6248 = 3;
  dword_27C6250 = 0;
  qword_27C6258 = "ABOVE_STREETCOUNTRYINTERSECTIONPOSTALSTREET_AND_ADDRESSUNKNOWN";
  unk_27C6260 = 12;
  dword_27C6268 = 2;
  qword_27C6270 = "COUNTRYINTERSECTIONPOSTALSTREET_AND_ADDRESSUNKNOWN";
  unk_27C6278 = 7;
  dword_27C6280 = 1;
  qword_27C6288 = "INTERSECTIONPOSTALSTREET_AND_ADDRESSUNKNOWN";
  unk_27C6290 = 12;
  dword_27C6298 = 4;
  qword_27C62A0 = "POSTALSTREET_AND_ADDRESSUNKNOWN";
  unk_27C62A8 = 6;
  dword_27C62B0 = 5;
  qword_27C62B8 = "STREET_AND_ADDRESSUNKNOWN";
  unk_27C62C0 = 18;
  dword_27C62C8 = 3;
  qword_27C62D0 = "UNKNOWN";
  unk_27C62D8 = 7;
  dword_27C62E0 = 0;
  qword_27C62E8 = "LEGACYNATURALUNSAFE";
  unk_27C62F0 = 6;
  dword_27C62F8 = 0;
  qword_27C6300 = "NATURALUNSAFE";
  unk_27C6308 = 7;
  dword_27C6310 = 1;
  qword_27C6318 = "UNSAFE";
  unk_27C6320 = 6;
  dword_27C6328 = 2;
  qword_27C6330 = "BROOKLYN_ENTITY_TYPE_COLLECTIONBROOKLYN_ENTITY_TYPE_GEO_IDBROOKLYN_ENTITY_TYPE_MODULE_LIST_IDBROOKLYN_ENTITY_TYPE_PUBLISHERBROOKLYN_ENTITY_TYPE_UNKNOWN";
  *algn_27C6338 = 31;
  dword_27C6340 = 1;
  qword_27C6348 = "BROOKLYN_ENTITY_TYPE_GEO_IDBROOKLYN_ENTITY_TYPE_MODULE_LIST_IDBROOKLYN_ENTITY_TYPE_PUBLISHERBROOKLYN_ENTITY_TYPE_UNKNOWN";
  unk_27C6350 = 27;
  dword_27C6358 = 3;
  qword_27C6360 = "BROOKLYN_ENTITY_TYPE_MODULE_LIST_IDBROOKLYN_ENTITY_TYPE_PUBLISHERBROOKLYN_ENTITY_TYPE_UNKNOWN";
  unk_27C6368 = 35;
  dword_27C6370 = 4;
  qword_27C6378 = "BROOKLYN_ENTITY_TYPE_PUBLISHERBROOKLYN_ENTITY_TYPE_UNKNOWN";
  unk_27C6380 = 30;
  dword_27C6388 = 2;
  qword_27C6390 = "BROOKLYN_ENTITY_TYPE_UNKNOWN";
  unk_27C6398 = 28;
  dword_27C63A0 = 0;
  dword_27C63B8 = 163;
  qword_27C63C0 = "POI_ADULT_STOREPOI_AIRLINEPOI_AIRPORTPOI_AMUSEMENT_PARKPOI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C63D0 = 164;
  qword_27C63D8 = "POI_AIRLINEPOI_AIRPORTPOI_AMUSEMENT_PARKPOI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C63E8 = 179;
  qword_27C63F0 = "POI_AIRPORTPOI_AMUSEMENT_PARKPOI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6408 = "POI_AMUSEMENT_PARKPOI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6420 = "POI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6430 = 138;
  qword_27C6438 = "POI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6448 = 131;
  qword_27C6450 = "POI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6460 = 132;
  qword_27C6468 = "POI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6478 = 100;
  qword_27C6480 = "POI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6490 = 133;
  qword_27C6498 = "POI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C64A8 = 101;
  qword_27C64B0 = "POI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C64C0 = 102;
  qword_27C64C8 = "POI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C64D8 = 134;
  qword_27C64E0 = "POI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C64F0 = 103;
  qword_27C64F8 = "POI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6508 = 135;
  qword_27C6510 = "POI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6520 = 104;
  qword_27C6528 = "POI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6538 = 216;
  qword_27C6540 = "POI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6550 = 217;
  qword_27C6558 = "POI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6570 = "POI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6580 = 136;
  qword_27C6588 = "POI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6598 = 165;
  qword_27C65A0 = "POI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C65B0 = 130;
  qword_27C65B8 = "POI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C65C8 = 137;
  qword_27C65D0 = "POI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C65E0 = 105;
  qword_27C65E8 = "POI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C65F8 = 106;
  qword_27C6600 = "POI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6610 = 107;
  qword_27C6618 = "POI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6628 = 171;
  qword_27C6630 = "POI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6640 = 172;
  qword_27C6648 = "POI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6658 = 108;
  qword_27C6660 = "POI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6670 = 210;
  qword_27C6678 = "POI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6688 = 109;
  qword_27C6690 = "POI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C66A0 = 110;
  qword_27C66A8 = "POI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C66B8 = 139;
  qword_27C66C0 = "POI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C66D0 = 140;
  qword_27C66D8 = "POI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C66E8 = 169;
  qword_27C66F0 = "POI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C7050 = "POI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7290 = "POI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7320 = "POI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7310 = 21;
  dword_27C7318 = 44;
  qword_27C72F0 = "POI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7308 = "POI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C72F8 = 22;
  dword_27C7300 = 43;
  qword_27C72D8 = "POI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C72D0 = 12;
  qword_27C72E0 = 23;
  dword_27C72E8 = 42;
  qword_27C72C0 = "POI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C72B0 = 18;
  dword_27C72B8 = 41;
  qword_27C72C8 = 22;
  qword_27C72A8 = "POI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7298 = 18;
  dword_27C72A0 = 40;
  qword_27C7278 = "POI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7270 = 39;
  qword_27C7280 = 16;
  dword_27C7288 = 0;
  qword_27C7260 = "POI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7250 = 21;
  dword_27C7258 = 38;
  qword_27C7268 = 17;
  qword_27C71E8 = "POI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7248 = "POI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7238 = 22;
  dword_27C7240 = 11;
  qword_27C7218 = "POI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7230 = "POI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7220 = 17;
  dword_27C7228 = 37;
  qword_27C7200 = "POI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C71F8 = 35;
  qword_27C7208 = 23;
  dword_27C7210 = 36;
  qword_27C71D8 = 37;
  dword_27C71E0 = 34;
  qword_27C71F0 = 32;
  qword_27C71B8 = "POI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C71D0 = "POI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C71C0 = 21;
  dword_27C71C8 = 10;
  qword_27C7170 = "POI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C71A0 = "POI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7198 = 8;
  qword_27C71A8 = 21;
  dword_27C71B0 = 9;
  qword_27C7188 = "POI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7178 = 29;
  dword_27C7180 = 33;
  qword_27C7190 = 19;
  qword_27C7158 = "POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7150 = 32;
  qword_27C7160 = 20;
  dword_27C7168 = 7;
  qword_27C7128 = "POI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7140 = "POI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7130 = 18;
  dword_27C7138 = 6;
  qword_27C7148 = 28;
  qword_27C7110 = "POI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7118 = 18;
  dword_27C7108 = 5;
  dword_27C7120 = 31;
  qword_27C70F8 = "POI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7100 = 15;
  qword_27C70E0 = "POI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C70E8 = 19;
  dword_27C70F0 = 30;
  qword_27C70C8 = "POI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C70D0 = 20;
  dword_27C70C0 = 28;
  dword_27C70D8 = 29;
  qword_27C70B0 = "POI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C70B8 = 20;
  qword_27C7098 = "POI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C70A0 = 17;
  dword_27C70A8 = 27;
  qword_27C7080 = "POI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7088 = 19;
  dword_27C7090 = 26;
  qword_27C7068 = "POI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7070 = 18;
  dword_27C7060 = 4;
  dword_27C7078 = 25;
  qword_27C7038 = "POI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7040 = 16;
  dword_27C7048 = 24;
  qword_27C7058 = 23;
  qword_27C7008 = "POI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7010 = 26;
  qword_27C7020 = "POI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C7028 = 17;
  dword_27C7018 = 22;
  dword_27C7030 = 23;
  qword_27C6FF0 = "POI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6FF8 = 18;
  dword_27C7000 = 21;
  qword_27C6FC0 = "POI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6FC8 = 38;
  qword_27C6FD8 = "POI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6FE0 = 26;
  dword_27C6FD0 = 20;
  dword_27C6FE8 = 3;
  qword_27C6FA8 = "POI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6FB0 = 17;
  dword_27C6FB8 = 19;
  qword_27C6F78 = "POI_COMPANY_COCO_STOREPOI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F80 = 22;
  qword_27C6F90 = "POI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F98 = 27;
  dword_27C6F88 = 16;
  dword_27C6FA0 = 18;
  qword_27C6F60 = "POI_COMPANY_COCOSPOI_COMPANY_COCO_STOREPOI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F68 = 17;
  dword_27C6F70 = 17;
  dword_27C6700 = 213;
  qword_27C6F48 = "POI_COMPANY_CIRCLE_KPOI_COMPANY_COCOSPOI_COMPANY_COCO_STOREPOI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F50 = 20;
  dword_27C6F40 = 15;
  dword_27C6F58 = 2;
  qword_27C6F30 = "POI_COMPANY_BARMIYANPOI_COMPANY_CIRCLE_KPOI_COMPANY_COCOSPOI_COMPANY_COCO_STOREPOI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F38 = 20;
  qword_27C6F18 = "POI_COMPANY_31_ICE_CREAMPOI_COMPANY_BARMIYANPOI_COMPANY_CIRCLE_KPOI_COMPANY_COCOSPOI_COMPANY_COCO_STOREPOI_COMPANY_COMMUNITY_STOREPOI_COMPANY_COSMOPOI_COMPANY_CURRY_HOUSE_COCO_ICHIBANYAPOI_COMPANY_DAILY_YAMAZAKIPOI_COMPANY_DENNYSPOI_COMPANY_DOUTOUR_COFFEEPOI_COMPANY_ENEOSPOI_COMPANY_ESSOPOI_COMPANY_FAMILY_MARTPOI_COMPANY_FUJIYAPOI_COMPANY_GENERALPOI_COMPANY_GUSTOPOI_COMPANY_IDEMITSUPOI_COMPANY_JONATHANPOI_COMPANY_JOYFULLPOI_COMPANY_KFCPOI_COMPANY_KYGNUSPOI_COMPANY_LAWSONPOI_COMPANY_LAWSON_STORE_100POI_COMPANY_LOTTERIAPOI_COMPANY_MATSUMOTO_KIYOSHIPOI_COMPANY_MATSUYAPOI_COMPANY_MCDONALDSPOI_COMPANY_MINI_STOPPOI_COMPANY_MITSUBISHI_TOKYO_UFJ_BANKPOI_COMPANY_MITSUI_SUMITOMO_BANKPOI_COMPANY_MIZUHO_BANKPOI_COMPANY_MOBILPOI_COMPANY_MOS_BURGERPOI_COMPANY_MR_DONUTSPOI_COMPANY_NAKAUPOI_COMPANY_NONEPOI_COMPANY_POPURAPOI_COMPANY_PRONTOPOI_COMPANY_RINGER_HUTPOI_COMPANY_RISONA_BANKPOI_COMPANY_ROYAL_HOSTPOI_COMPANY_SAIZERIYAPOI_COMPANY_SAVE_ONPOI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  unk_27C6F20 = 24;
  dword_27C6F28 = 1;
  dword_27C6EC8 = 218;
  dword_27C6F10 = 129;
  qword_27C6F08 = 7;
  qword_27C6EE8 = "POI_WINERYPOI_ZOO";
  dword_27C6EF8 = 128;
  qword_27C6F00 = "POI_ZOO";
  qword_27C6EF0 = 10;
  qword_27C6ED0 = "POI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6EE0 = 119;
  qword_27C6ED8 = 16;
  qword_27C6E88 = "POI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6EB8 = "POI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6EA8 = 14;
  dword_27C6EB0 = 25;
  qword_27C6EC0 = 9;
  dword_27C6E98 = 178;
  qword_27C6EA0 = "POI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6E90 = 27;
  qword_27C6E70 = "POI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6E80 = 127;
  dword_27C6E68 = 24;
  qword_27C6E78 = 11;
  dword_27C6E50 = 162;
  qword_27C6E58 = "POI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6E48 = 8;
  qword_27C6E60 = 17;
  qword_27C6D98 = "POI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6E40 = "POI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6E30 = 11;
  dword_27C6E38 = 23;
  qword_27C6E10 = "POI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6E20 = 161;
  qword_27C6E28 = "POI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6E18 = 10;
  qword_27C6DF8 = "POI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6E08 = 205;
  qword_27C6E00 = 10;
  dword_27C6DD8 = 160;
  qword_27C6DE0 = "POI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6DF0 = 167;
  qword_27C6DE8 = 17;
  dword_27C6DC0 = 159;
  qword_27C6DC8 = "POI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6DB8 = 15;
  qword_27C6DD0 = 9;
  dword_27C6DA8 = 188;
  qword_27C6DB0 = "POI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6DA0 = 10;
  qword_27C6BA0 = "POI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6D80 = "POI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6D78 = 21;
  qword_27C6D88 = 9;
  dword_27C6D90 = 22;
  dword_27C6D60 = 220;
  qword_27C6D68 = "POI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6D58 = 14;
  qword_27C6D70 = 11;
  dword_27C6D48 = 158;
  qword_27C6D50 = "POI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6D40 = 11;
  qword_27C6D20 = "POI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6D30 = 204;
  qword_27C6D38 = "POI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6D28 = 10;
  qword_27C6D08 = "POI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6D18 = 157;
  qword_27C6D10 = 11;
  dword_27C6CE8 = 156;
  qword_27C6CF0 = "POI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6D00 = 168;
  qword_27C6CF8 = 9;
  dword_27C6CD0 = 126;
  qword_27C6CD8 = "POI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6CC8 = 13;
  qword_27C6CE0 = 11;
  qword_27C6CA8 = "POI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6CC0 = "POI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6CB0 = 14;
  dword_27C6CB8 = 20;
  qword_27C6C90 = "POI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6CA0 = 155;
  qword_27C6C98 = 10;
  dword_27C6C70 = 124;
  qword_27C6C78 = "POI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6C88 = 125;
  qword_27C6C80 = 13;
  dword_27C6C58 = 177;
  qword_27C6C60 = "POI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6C50 = 25;
  qword_27C6C68 = 14;
  dword_27C6C40 = 203;
  qword_27C6C48 = "POI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6C38 = 22;
  qword_27C6C18 = "POI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6C28 = 123;
  qword_27C6C30 = "POI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6C20 = 15;
  qword_27C6C00 = "POI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6C10 = 122;
  qword_27C6C08 = 10;
  dword_27C6BE0 = 202;
  qword_27C6BE8 = "POI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6BF8 = 121;
  qword_27C6BF0 = 15;
  dword_27C6BC8 = 170;
  qword_27C6BD0 = "POI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6BC0 = 20;
  qword_27C6BD8 = 42;
  dword_27C6BB0 = 120;
  qword_27C6BB8 = "POI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6BA8 = 12;
  qword_27C6B88 = "POI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6B98 = 219;
  dword_27C6B80 = 19;
  qword_27C6B90 = 11;
  qword_27C6B40 = "POI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6B70 = "POI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6B60 = 8;
  dword_27C6B68 = 18;
  qword_27C6B78 = 11;
  dword_27C6B50 = 154;
  qword_27C6B58 = "POI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6B48 = 10;
  qword_27C6AE0 = "POI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6B28 = "POI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6B20 = 17;
  qword_27C6B30 = 8;
  dword_27C6B38 = 0;
  dword_27C6B08 = 153;
  qword_27C6B10 = "POI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6B00 = 17;
  qword_27C6B18 = 13;
  dword_27C6AF0 = 118;
  qword_27C6AF8 = "POI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6AE8 = 9;
  dword_27C6AC0 = 201;
  qword_27C6AC8 = "POI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6AD0 = 10;
  dword_27C6AD8 = 16;
  dword_27C6AA8 = 200;
  qword_27C6AB0 = "POI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6AA0 = 35;
  qword_27C6AB8 = 38;
  dword_27C6A48 = 117;
  qword_27C6A98 = "POI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6A88 = 17;
  dword_27C6A90 = 15;
  qword_27C6A68 = "POI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6A78 = 152;
  qword_27C6A80 = "POI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6A70 = 11;
  qword_27C6A50 = "POI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6A60 = 173;
  qword_27C6A58 = 12;
  dword_27C6A30 = 151;
  qword_27C6A38 = "POI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6A28 = 13;
  qword_27C6A40 = 9;
  dword_27C69D0 = 185;
  qword_27C6A20 = "POI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6A10 = 10;
  dword_27C6A18 = 14;
  qword_27C69F0 = "POI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6A00 = 116;
  qword_27C6A08 = "POI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C69F8 = 10;
  qword_27C69D8 = "POI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C69E8 = 176;
  qword_27C69E0 = 18;
  dword_27C69B8 = 149;
  qword_27C69C0 = "POI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C69B0 = 14;
  qword_27C69C8 = 14;
  qword_27C6720 = "POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C69A8 = "POI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6998 = 11;
  dword_27C69A0 = 13;
  qword_27C6978 = "POI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6988 = 115;
  qword_27C6990 = "POI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6980 = 12;
  qword_27C6960 = "POI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6970 = 150;
  dword_27C6958 = 12;
  qword_27C6968 = 16;
  dword_27C6940 = 199;
  qword_27C6948 = "POI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6938 = 15;
  qword_27C6950 = 15;
  qword_27C6918 = "POI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6930 = "POI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6920 = 9;
  dword_27C6928 = 11;
  dword_27C68F8 = 175;
  qword_27C6900 = "POI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6908 = 12;
  dword_27C6910 = 10;
  dword_27C68E0 = 198;
  qword_27C68E8 = "POI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C68D8 = 19;
  qword_27C68F0 = 17;
  dword_27C68C8 = 148;
  qword_27C68D0 = "POI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C68C0 = 11;
  qword_27C68A0 = "POI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C68B0 = 114;
  qword_27C68B8 = "POI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C68A8 = 18;
  qword_27C6888 = "POI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6898 = 113;
  dword_27C6880 = 9;
  qword_27C6890 = 14;
  dword_27C6868 = 112;
  qword_27C6870 = "POI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6860 = 15;
  qword_27C6878 = 12;
  dword_27C6850 = 166;
  qword_27C6858 = "POI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6848 = 19;
  qword_27C6828 = "POI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6838 = 147;
  qword_27C6840 = "POI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6830 = 12;
  qword_27C6810 = "POI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6820 = 146;
  qword_27C6818 = 10;
  dword_27C67F0 = 144;
  qword_27C67F8 = "POI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6808 = 145;
  qword_27C6800 = 18;
  dword_27C67D8 = 143;
  qword_27C67E0 = "POI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C67D0 = 16;
  qword_27C67E8 = 13;
  dword_27C67C0 = 111;
  qword_27C67C8 = "POI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C67B8 = 16;
  qword_27C6798 = "POI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C67A8 = 184;
  qword_27C67B0 = "POI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C67A0 = 17;
  qword_27C6780 = "POI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6790 = 142;
  qword_27C6788 = 16;
  dword_27C6760 = 174;
  qword_27C6768 = "POI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6778 = 209;
  qword_27C6770 = 13;
  dword_27C6748 = 141;
  qword_27C6750 = "POI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6740 = 13;
  qword_27C6758 = 18;
  dword_27C6730 = 215;
  qword_27C6738 = "POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  qword_27C6728 = 21;
  qword_27C6708 = "POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  dword_27C6718 = 214;
  qword_27C63A8 = "POI_ADULT_ENTERTAINMENTPOI_ADULT_STOREPOI_AIRLINEPOI_AIRPORTPOI_AMUSEMENT_PARKPOI_APPLE_INCPOI_APPLE_STOREPOI_AQUARIUMPOI_ARTS_ENTERTAINMENTPOI_ART_GALLERYPOI_AUTOMOTIVE_REPAIR_SERVICESPOI_BANKPOI_BEACHPOI_BEAUTYPOI_BOWLINGPOI_BREWERYPOI_BUSPOI_CABLE_CARPOI_CAFEPOI_CAMPGROUNDPOI_CANNABIS_CLINICPOI_CAPITAL_CITYPOI_CAR_RENTALPOI_CASINOPOI_CASTLEPOI_CEMETERYPOI_COMMERCIALPOI_COMPANYPOI_CONSULATE_EMBASSYPOI_CONVENIENCE_STOREPOI_CONVENTION_CENTERPOI_COURTHOUSEPOI_DENTISTPOI_DESERTPOI_EDUCATIONALPOI_EDUCATIONAL_TIER1POI_EDUCATIONAL_TIER2POI_EDUCATIONAL_TIER3POI_EMERGENCYPOI_EVENT_SERVICESPOI_FAST_FOODPOI_FEDERAL_LANDPOI_FERRY_STATIONPOI_FIRE_STATIONPOI_FIRING_RANGEPOI_FIRST_AIDPOI_FITNESS_CENTERPOI_FORESTPOI_FORTRESSPOI_FUNERAL_SERVICEPOI_GAS_STATIONPOI_GOLFCLUBPOI_GOVERNMENTPOI_HEALTH_MEDICALPOI_HELIPADPOI_HIGH_SPEED_RAILPOI_HOME_SERVICESPOI_HOSPITALPOI_HOTELPOI_HOT_SPRINGSPOI_INFORMATIONPOI_JAPAN_POSTALPOI_LANDMARKPOI_LIBRARYPOI_LIGHTHOUSEPOI_LIGHT_RAILPOI_LOCAL_SERVICESPOI_MARINAPOI_MARKETPOI_MAUSOLEUMPOI_MEDIAPOI_MILITARYPOI_MISSIONPOI_MOVIE_THEATERPOI_MUNICIPAL_BUILDING_CITY_OR_WARDPOI_MUNICIPAL_BUILDING_TOWN_OR_VILLAGEPOI_MUSEUMPOI_MUSICPOI_NATIONAL_PARKPOI_NIGHTCLUBPOI_NONEPOI_PALACEPOI_PARKPOI_PARKINGPOI_PARKLETPOI_PHARMACYPOI_PHYSICAL_FEATUREPOI_PLACE_OF_HISTORIC_OR_CULTURAL_INTERESTPOI_PLANETARIUMPOI_POLICEPOI_POST_OFFICEPOI_PREFECTORAL_OFFICEPOI_PROFESSIONAL_SERVICESPOI_RECREATIONPOI_RELIGIOUSPOI_RESORTPOI_RESTAURANTPOI_REST_AREAPOI_RV_PARKPOI_SAUNAPOI_SEAPORTPOI_SHRINEPOI_SKATINGPOI_SKI_RESORTPOI_STADIUMPOI_STOREPOI_SUBWAYPOI_SUPERMARKETPOI_SWAMPPOI_SWIMMING_POOLPOI_TEMPLEPOI_TENNISPOI_THEATREPOI_TOLLPOI_TRAIN_STATIONPOI_TRANSITPOI_TRANSPORTATION_SERVICESPOI_UNIVERSITYPOI_VENUEPOI_VETERINARIANPOI_WINERYPOI_ZOO";
  unk_27C63B0 = 23;
  qword_27C66F8 = 21;
  qword_27C6710 = 21;
  qword_27C63C8 = 15;
  qword_27C63E0 = 11;
  qword_27C63F8 = 11;
  qword_27C66C8 = 10;
  qword_27C66E0 = 15;
  dword_27C6400 = 6;
  qword_27C6410 = 18;
  dword_27C6418 = 7;
  qword_27C6428 = 13;
  qword_27C6698 = 14;
  qword_27C66B0 = 11;
  qword_27C6440 = 15;
  qword_27C6458 = 12;
  qword_27C6470 = 22;
  qword_27C6488 = 15;
  qword_27C6668 = 21;
  qword_27C6680 = 21;
  qword_27C64A0 = 30;
  qword_27C64B8 = 8;
  qword_27C64D0 = 9;
  qword_27C64E8 = 10;
  qword_27C6638 = 11;
  qword_27C6650 = 21;
  qword_27C6500 = 11;
  qword_27C6518 = 11;
  qword_27C6530 = 7;
  qword_27C6548 = 13;
  qword_27C6608 = 12;
  qword_27C6620 = 14;
  qword_27C6560 = 8;
  dword_27C6568 = 8;
  qword_27C6578 = 14;
  qword_27C6590 = 19;
  qword_27C65A8 = 16;
  qword_27C65F0 = 10;
  qword_27C65C0 = 14;
  qword_27C65D8 = 10;
  qword_27C7338 = "POI_COMPANY_SEICO_MARTPOI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7350 = "POI_COMPANY_SEVEN_ELEVENPOI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7368 = "POI_COMPANY_SHOWA_SHELLPOI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7380 = "POI_COMPANY_STARBUCKS_COFFEEPOI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7398 = "POI_COMPANY_SUBWAYPOI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C73B0 = "POI_COMPANY_SUKIYAPOI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C73C8 = "POI_COMPANY_SUNKUSPOI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C73E0 = "POI_COMPANY_THREE_FPOI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C73F8 = "POI_COMPANY_TSUTAYAPOI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  qword_27C7410 = "POI_COMPANY_TULLYS_COFFEEPOI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7420 = 53;
  qword_27C7428 = "POI_COMPANY_UNIQLOPOI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7438 = 54;
  qword_27C7440 = "POI_COMPANY_YAMAZAKI_STOREPOI_COMPANY_YOSHINOYA";
  dword_27C7450 = 55;
  qword_27C7458 = "POI_COMPANY_YOSHINOYA";
  dword_27C7468 = 56;
  qword_27C7328 = 19;
  dword_27C7330 = 45;
  qword_27C7340 = 22;
  dword_27C7348 = 46;
  qword_27C7358 = 24;
  dword_27C7360 = 13;
  qword_27C7370 = 23;
  dword_27C7378 = 47;
  qword_27C7388 = 28;
  dword_27C7390 = 48;
  qword_27C73A0 = 18;
  dword_27C73A8 = 49;
  qword_27C73B8 = 18;
  dword_27C73C0 = 50;
  qword_27C73D0 = 18;
  dword_27C73D8 = 14;
  qword_27C73E8 = 19;
  dword_27C73F0 = 51;
  qword_27C7400 = 19;
  dword_27C7408 = 52;
  qword_27C7418 = 25;
  qword_27C7430 = 18;
  qword_27C7448 = 26;
  qword_27C7460 = 21;
  qword_27C7488 = "POI_TRANSIT_AGENCY_BARCELONA_METROPOI_TRANSIT_AGENCY_BARTPOI_TRANSIT_AGENCY_BEIJING_SUBWAYPOI_TRANSIT_AGENCY_BERLIN_U_BAHNPOI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C74A0 = "POI_TRANSIT_AGENCY_BARTPOI_TRANSIT_AGENCY_BEIJING_SUBWAYPOI_TRANSIT_AGENCY_BERLIN_U_BAHNPOI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C74B0 = 15;
  qword_27C74D0 = "POI_TRANSIT_AGENCY_BERLIN_U_BAHNPOI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C74F8 = 13;
  dword_27C7510 = 10;
  qword_27C7518 = "POI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7530 = "POI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7588 = 52;
  qword_27C75A8 = "POI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C75B8 = 48;
  qword_27C7560 = "POI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7480 = 41;
  qword_27C7568 = 41;
  qword_27C75D8 = "POI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C75E0 = 41;
  qword_27C75F0 = "POI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7618 = 17;
  dword_27C7630 = 14;
  qword_27C7638 = "POI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7648 = 25;
  dword_27C7660 = 20;
  qword_27C7668 = "POI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7680 = "POI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7698 = "POI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C76B0 = "POI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7578 = "POI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7580 = 49;
  dword_27C76C0 = 49;
  qword_27C76C8 = "POI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C76D8 = 50;
  qword_27C76E0 = "POI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C76F0 = 51;
  qword_27C76F8 = "POI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7710 = "POI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7708 = 42;
  qword_27C7718 = 42;
  qword_27C7728 = "POI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7740 = "POI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7758 = "POI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7590 = "POI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7598 = 36;
  dword_27C7600 = 36;
  qword_27C7640 = 36;
  qword_27C7760 = 36;
  qword_27C7770 = "POI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C74B8 = "POI_TRANSIT_AGENCY_BEIJING_SUBWAYPOI_TRANSIT_AGENCY_BERLIN_U_BAHNPOI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C74C0 = 33;
  qword_27C7688 = 33;
  dword_27C7780 = 33;
  qword_27C7788 = "POI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C74C8 = 28;
  qword_27C74E8 = "POI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C74F0 = 28;
  qword_27C7790 = 28;
  qword_27C77A0 = "POI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C76E8 = 45;
  dword_27C77B0 = 45;
  qword_27C77B8 = "POI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7620 = "POI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7628 = 46;
  dword_27C77C8 = 46;
  qword_27C77D0 = "POI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C77E8 = "POI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C77F8 = 26;
  qword_27C7800 = "POI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7730 = 39;
  qword_27C77F0 = 39;
  dword_27C7810 = 39;
  qword_27C7818 = "POI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7830 = "POI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7678 = 43;
  qword_27C76B8 = 43;
  qword_27C76D0 = 43;
  qword_27C7838 = 43;
  qword_27C7848 = "POI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C74E0 = 37;
  qword_27C75C0 = "POI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C75C8 = 37;
  qword_27C7850 = 37;
  qword_27C7860 = "POI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7870 = 27;
  qword_27C7878 = "POI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7608 = "POI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7610 = 24;
  dword_27C7828 = 24;
  qword_27C7880 = 24;
  dword_27C7888 = 16;
  qword_27C7890 = "POI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C78A8 = "POI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C75A0 = 47;
  qword_27C78B0 = 47;
  qword_27C78C0 = "POI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C78D8 = "POI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C78F0 = "POI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C78F8 = 62;
  qword_27C7908 = "POI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7548 = "POI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7550 = 40;
  dword_27C78D0 = 40;
  qword_27C7910 = 40;
  qword_27C7920 = "POI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  dword_27C7498 = 38;
  qword_27C7500 = "POI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7508 = 38;
  qword_27C7928 = 38;
  qword_27C7938 = "POI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7650 = "POI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  unk_27C7658 = 35;
  dword_27C76A8 = 35;
  qword_27C77C0 = 35;
  qword_27C7940 = 35;
  qword_27C7470 = "POI_TRANSIT_AGENCY_AMSTERDAM_METROPOI_TRANSIT_AGENCY_BARCELONA_METROPOI_TRANSIT_AGENCY_BARTPOI_TRANSIT_AGENCY_BEIJING_SUBWAYPOI_TRANSIT_AGENCY_BERLIN_U_BAHNPOI_TRANSIT_AGENCY_CHICAGO_LPOI_TRANSIT_AGENCY_FUKUOKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_GUANGZHOU_METROPOI_TRANSIT_AGENCY_HONG_KONG_MTRPOI_TRANSIT_AGENCY_KOBE_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_KYOTO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_LONDON_DOCKLANDS_LIGHT_RAILWAYPOI_TRANSIT_AGENCY_LONDON_OVERGROUNDPOI_TRANSIT_AGENCY_LONDON_TRAMLINKPOI_TRANSIT_AGENCY_LONDON_UNDERGROUNDPOI_TRANSIT_AGENCY_LOS_ANGELES_METRO_RAILPOI_TRANSIT_AGENCY_MADRID_METROPOI_TRANSIT_AGENCY_MARTAPOI_TRANSIT_AGENCY_MASSACHUSETTS_BAY_TRANSPORTPOI_TRANSIT_AGENCY_MEXICO_CITY_METROPOI_TRANSIT_AGENCY_MIAMI_METRO_RAILPOI_TRANSIT_AGENCY_MILAN_METROPOI_TRANSIT_AGENCY_MONTREAL_METROPOI_TRANSIT_AGENCY_MOSCOW_METROPOI_TRANSIT_AGENCY_MTA_LONG_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MTA_METRO_NORTH_RAILROADPOI_TRANSIT_AGENCY_MTA_STATEN_ISLAND_RAILROADPOI_TRANSIT_AGENCY_MUNICH_U_BAHNPOI_TRANSIT_AGENCY_NAGOYA_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_NEW_YORK_CITY_SUBWAYPOI_TRANSIT_AGENCY_NONEPOI_TRANSIT_AGENCY_OSAKA_CITY_SUBWAYPOI_TRANSIT_AGENCY_PARIS_METROPOI_TRANSIT_AGENCY_PARIS_RERPOI_TRANSIT_AGENCY_PARIS_TRAMWAYPOI_TRANSIT_AGENCY_PARIS_TRANSILIENPOI_TRANSIT_AGENCY_PATHPOI_TRANSIT_AGENCY_RIO_DE_JANEIRO_METROPOI_TRANSIT_AGENCY_ROME_METROPOI_TRANSIT_AGENCY_SAO_PAULO_METROPOI_TRANSIT_AGENCY_SAPPORO_MUNICIPAL_SUBWAYPOI_TRANSIT_AGENCY_SENDAI_CITY_SUBWAYPOI_TRANSIT_AGENCY_SEOUL_METROPOLITAN_SUBWAYPOI_TRANSIT_AGENCY_SEPTAPOI_TRANSIT_AGENCY_SHANGHAI_SUBWAYPOI_TRANSIT_AGENCY_SINGAPORE_MASS_RAPID_TRANSITPOI_TRANSIT_AGENCY_STOCKHOLM_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOI_TRANSIT_AGENCY_TOKYO_METROPOLITAN_BUREAU_OF_TRANSPORTATIONPOI_TRANSIT_AGENCY_TORONTO_SUBWAY_AND_RTPOI_TRANSIT_AGENCY_VANCOUVER_SKY_TRAINPOI_TRANSIT_AGENCY_WASHINGTON_METROPOI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  *algn_27C7478 = 34;
  qword_27C7490 = 34;
  qword_27C74A8 = 23;
  qword_27C74D8 = 32;
  qword_27C7520 = 34;
  dword_27C7528 = 30;
  qword_27C7538 = 32;
  result = 32;
  dword_27C7540 = 31;
  dword_27C7558 = 9;
  dword_27C7570 = 7;
  qword_27C75B0 = 34;
  dword_27C75D0 = 34;
  dword_27C75E8 = 19;
  qword_27C75F8 = 31;
  qword_27C7670 = 30;
  dword_27C7690 = 22;
  qword_27C76A0 = 31;
  qword_27C7700 = 32;
  dword_27C7720 = 6;
  dword_27C7738 = 11;
  qword_27C7748 = 23;
  dword_27C7750 = 0;
  dword_27C7768 = 8;
  qword_27C7778 = 30;
  dword_27C7798 = 44;
  qword_27C77A8 = 32;
  qword_27C77D8 = 23;
  dword_27C77E0 = 18;
  qword_27C7808 = 29;
  qword_27C7820 = 34;
  dword_27C7840 = 3;
  dword_27C7858 = 4;
  qword_27C7868 = 44;
  qword_27C7898 = 34;
  dword_27C78A0 = 29;
  dword_27C78B8 = 32;
  qword_27C78C8 = 34;
  qword_27C78E0 = 30;
  dword_27C78E8 = 1;
  dword_27C7900 = 2;
  dword_27C7918 = 21;
  dword_27C7930 = 23;
  dword_27C7948 = 12;
  qword_27C7950 = "POI_TRANSIT_AGENCY_YOKOHAMA_MUNICIPAL_SUBWAY";
  qword_27C7958 = 44;
  dword_27C7960 = 5;
  qword_27C7980 = "FEATURE_NONEFEATURE_POI";
  unk_27C7988 = 12;
  qword_27C7968 = "FEATURE_AOIFEATURE_NONEFEATURE_POI";
  unk_27C7970 = 11;
  dword_27C7978 = 2;
  dword_27C7990 = 0;
  qword_27C7998 = "FEATURE_POI";
  unk_27C79A0 = 11;
  dword_27C79A8 = 1;
  qword_27C79C8 = "PC_NONEPC_PARENT";
  qword_27C79B0 = "PC_CHILDPC_NONEPC_PARENT";
  *algn_27C79B8 = 8;
  dword_27C79C0 = 1;
  qword_27C79D0 = 7;
  dword_27C79D8 = 0;
  qword_27C79E0 = "PC_PARENT";
  unk_27C79E8 = 9;
  dword_27C79F0 = 2;
  qword_27C7A00 = 31;
  dword_27C7A08 = 7;
  qword_27C7A10 = "MZR_CHAIN_RECOGNITIONMZR_GEMINI_OVERRIDEMZR_ICON_HEAT_MAP_BASED_ADJUSTMENTMZR_NONEMZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A18 = 21;
  qword_27C7A28 = "MZR_GEMINI_OVERRIDEMZR_ICON_HEAT_MAP_BASED_ADJUSTMENTMZR_NONEMZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A30 = 19;
  dword_27C7A38 = 5;
  qword_27C7A40 = "MZR_ICON_HEAT_MAP_BASED_ADJUSTMENTMZR_NONEMZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A48 = 34;
  qword_27C7A58 = "MZR_NONEMZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A60 = 8;
  dword_27C7A50 = 8;
  qword_27C7A70 = "MZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A78 = 22;
  dword_27C7A80 = 4;
  qword_27C7A88 = "MZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7A90 = 18;
  dword_27C7A98 = 6;
  qword_27C7AA0 = "MZR_VAULTMZR_YELP_REVIEW_RANKING";
  unk_27C7AA8 = 9;
  qword_27C79F8 = "MZR_AOI_POLYGON_SIZE_ADJUSTMENTMZR_CHAIN_RECOGNITIONMZR_GEMINI_OVERRIDEMZR_ICON_HEAT_MAP_BASED_ADJUSTMENTMZR_NONEMZR_POPULARITY_RANKINGMZR_STATIC_RANKINGMZR_VAULTMZR_YELP_REVIEW_RANKING";
  qword_27C7AB8 = "MZR_YELP_REVIEW_RANKING";
  unk_27C7AC0 = 23;
  dword_27C7A20 = 3;
  dword_27C7A68 = 0;
  dword_27C7AB0 = 1;
  dword_27C7AC8 = 2;
  dword_27C7AE0 = 3;
  qword_27C7AE8 = "NEIGHBORHOOD_ICON_DENSITY_LOWNEIGHBORHOOD_ICON_DENSITY_MEDIUMNEIGHBORHOOD_ICON_DENSITY_NONE";
  unk_27C7AF0 = 29;
  dword_27C7AF8 = 1;
  qword_27C7B00 = "NEIGHBORHOOD_ICON_DENSITY_MEDIUMNEIGHBORHOOD_ICON_DENSITY_NONE";
  unk_27C7B08 = 32;
  dword_27C7B10 = 2;
  qword_27C7B18 = "NEIGHBORHOOD_ICON_DENSITY_NONE";
  unk_27C7B20 = 30;
  qword_27C7AD0 = "NEIGHBORHOOD_ICON_DENSITY_HIGHNEIGHBORHOOD_ICON_DENSITY_LOWNEIGHBORHOOD_ICON_DENSITY_MEDIUMNEIGHBORHOOD_ICON_DENSITY_NONE";
  *algn_27C7AD8 = 30;
  dword_27C7B28 = 0;
  return result;
}

BOOL sub_134B0C8(int a1)
{
  result = 1;
  if ((a1 - 1) > 0x3F || ((1 << (a1 - 1)) & 0x800000008000808BLL) == 0)
  {
    return a1 == 128 || a1 == 256;
  }

  return result;
}

void *sub_134B11C(void *a1)
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

void sub_134B190(void *a1)
{
  sub_134B11C(a1);

  operator delete();
}

uint64_t sub_134B1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x300) != 0)
  {
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_134B204(uint64_t a1, char *a2, int32x2_t *a3)
{
  v66 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v66, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v66 + 1;
    v8 = *v66;
    if (*v66 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v66, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v66 + 2;
      }
    }

    v66 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 0xA)
    {
      if (v11 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_73;
        }

        v5 |= 0x20u;
        v29 = v7 + 1;
        LODWORD(v28) = *v7;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_52;
        }

        v30 = *v29;
        v28 = v28 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_52:
          v66 = v29;
          *(a1 + 52) = v28;
          goto LABEL_80;
        }

        v52 = sub_19587DC(v7, v28);
        v66 = v52;
        *(a1 + 52) = v53;
        if (!v52)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v11 != 7 || v8 != 56)
        {
          goto LABEL_73;
        }

        v5 |= 0x40u;
        v23 = v7 + 1;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
LABEL_42:
          v66 = v23;
          *(a1 + 56) = v22;
          goto LABEL_80;
        }

        v48 = sub_19587DC(v7, v22);
        v66 = v48;
        *(a1 + 56) = v49;
        if (!v48)
        {
          goto LABEL_105;
        }
      }
    }

    else if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_73;
      }

      v5 |= 0x80u;
      v34 = v7 + 1;
      v35 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v36 = *v34;
      v35 = v35 + (v36 << 7) - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_62:
        v66 = v34;
        *(a1 + 60) = v35;
        goto LABEL_80;
      }

      v56 = sub_1958770(v7, v35);
      v66 = v56;
      *(a1 + 60) = v57;
      if (!v56)
      {
        goto LABEL_105;
      }
    }

    else if (v11 == 12)
    {
      if (v8 != 96)
      {
        goto LABEL_73;
      }

      v5 |= 0x100u;
      v41 = v7 + 1;
      LODWORD(v40) = *v7;
      if ((v40 & 0x80) == 0)
      {
        goto LABEL_72;
      }

      v42 = *v41;
      v40 = v40 + (v42 << 7) - 128;
      if ((v42 & 0x80000000) == 0)
      {
        v41 = v7 + 2;
LABEL_72:
        v66 = v41;
        *(a1 + 64) = v40;
        goto LABEL_80;
      }

      v64 = sub_19587DC(v7, v40);
      v66 = v64;
      *(a1 + 64) = v65;
      if (!v64)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v11 != 13 || v8 != 104)
      {
        goto LABEL_73;
      }

      v5 |= 0x200u;
      v15 = v7 + 1;
      v16 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v7 + 2;
LABEL_25:
        v66 = v15;
        *(a1 + 68) = v16;
        goto LABEL_80;
      }

      v60 = sub_1958770(v7, v16);
      v66 = v60;
      *(a1 + 68) = v61;
      if (!v60)
      {
        goto LABEL_105;
      }
    }

LABEL_80:
    if (sub_195ADC0(a3, &v66, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_73;
      }

      v5 |= 4u;
      v32 = v7 + 1;
      LODWORD(v31) = *v7;
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      v33 = *v32;
      v31 = v31 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v32 = v7 + 2;
LABEL_57:
        v66 = v32;
        *(a1 + 40) = v31;
        goto LABEL_80;
      }

      v54 = sub_19587DC(v7, v31);
      v66 = v54;
      *(a1 + 40) = v55;
      if (!v54)
      {
        goto LABEL_105;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_73;
      }

      v5 |= 8u;
      v38 = v7 + 1;
      LODWORD(v37) = *v7;
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      v39 = *v38;
      v37 = v37 + (v39 << 7) - 128;
      if ((v39 & 0x80000000) == 0)
      {
        v38 = v7 + 2;
LABEL_67:
        v66 = v38;
        *(a1 + 44) = v37;
        goto LABEL_80;
      }

      v62 = sub_19587DC(v7, v37);
      v66 = v62;
      *(a1 + 44) = v63;
      if (!v62)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_73;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = v12 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        v66 = v13;
        *(a1 + 48) = v12;
        goto LABEL_80;
      }

      v58 = sub_19587DC(v7, v12);
      v66 = v58;
      *(a1 + 48) = v59;
      if (!v58)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_80;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_73;
    }

    v5 |= 1u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_47:
      v66 = v26;
      *(a1 + 24) = v25;
      goto LABEL_80;
    }

    v50 = sub_19587DC(v7, v25);
    v66 = v50;
    *(a1 + 24) = v51;
    if (!v50)
    {
      goto LABEL_105;
    }

    goto LABEL_80;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_35:
      v66 = v20;
      *(a1 + 32) = v19;
      goto LABEL_80;
    }

    v46 = sub_19587DC(v7, v19);
    v66 = v46;
    *(a1 + 32) = v47;
    if (!v46)
    {
      goto LABEL_105;
    }

    goto LABEL_80;
  }

LABEL_73:
  if (v8)
  {
    v43 = (v8 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v45 = sub_11F1920((a1 + 8));
      v7 = v66;
    }

    v66 = sub_1952690(v8, v45, v7, a3);
    if (!v66)
    {
      goto LABEL_105;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_105:
  v66 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v66;
}

char *sub_134B708(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 32);
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
          v6 = (v13 >> 7);
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

    v16 = *(a1 + 40);
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
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 44);
    *v15 = 32;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v20 - 1) = v15 | 0x80;
          v15 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 48);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v20[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 52);
    *v24 = 48;
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v24[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v24[2] = v30 >> 7;
      v29 = v24 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v29 - 1) = v24 | 0x80;
          v24 = (v31 >> 7);
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v24 + 2;
    }
  }

  else
  {
    v29 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 56);
    *v29 = 56;
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v29[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v29[2] = v34 >> 7;
      v33 = v29 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v36) = v29[2];
        do
        {
          *(v33 - 1) = v36 | 0x80;
          v36 = v35 >> 7;
          *v33++ = v35 >> 7;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v33 = v29 + 2;
    }
  }

  else
  {
    v33 = v29;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v39 = *(a1 + 60);
    *v33 = 88;
    v33[1] = v39;
    if (v39 > 0x7F)
    {
      v33[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v33[2] = v39 >> 7;
      v38 = v33 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v38 - 1) = v33 | 0x80;
          LODWORD(v33) = v40 >> 7;
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v38 = v33 + 2;
    }
  }

  else
  {
    v38 = v33;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v43 = *(a1 + 64);
    *v38 = 96;
    v38[1] = v43;
    if (v43 > 0x7F)
    {
      v38[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v38[2] = v43 >> 7;
      v42 = v38 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v45) = v38[2];
        do
        {
          *(v42 - 1) = v45 | 0x80;
          v45 = v44 >> 7;
          *v42++ = v44 >> 7;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v42 = v38 + 2;
    }
  }

  else
  {
    v42 = v38;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v48 = *(a1 + 68);
    *v42 = 104;
    v42[1] = v48;
    if (v48 > 0x7F)
    {
      v42[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v42[2] = v48 >> 7;
      v47 = v42 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v42) = v42[2];
        do
        {
          *(v47 - 1) = v42 | 0x80;
          LODWORD(v42) = v49 >> 7;
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v42 + 2;
    }
  }

  else
  {
    v47 = v42;
  }

  v51 = *(a1 + 8);
  if ((v51 & 1) == 0)
  {
    return v47;
  }

  v53 = v51 & 0xFFFFFFFFFFFFFFFCLL;
  v54 = *(v53 + 31);
  if (v54 < 0)
  {
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
  }

  else
  {
    v55 = (v53 + 8);
  }

  if ((*a3 - v47) >= v54)
  {
    v56 = v54;
    memcpy(v47, v55, v54);
    v47 += v56;
    return v47;
  }

  return sub_1957130(a3, v55, v54, v47);
}

unint64_t sub_134BCE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 40);
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v5;
  }

  return result;
}

unint64_t sub_134BD80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 7) != 0)
  {
    result = sub_134BCE8(a1);
  }

  else
  {
    v3 = (9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6;
    v4 = (9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6;
    v5 = *(a1 + 40);
    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 10;
    }

    result = v3 + v4 + v7 + 3;
  }

  if ((v2 & 0xF8) == 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
    v11 = *(a1 + 44);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v12;
    if ((v2 & 0x10) == 0)
    {
LABEL_10:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_11;
      }

LABEL_32:
      v16 = *(a1 + 52);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v17;
      if ((v2 & 0x40) == 0)
      {
LABEL_12:
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v14 = *(a1 + 48);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v15;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_36:
  v18 = *(a1 + 56);
  if (v18 < 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v19;
  if ((v2 & 0x80) != 0)
  {
LABEL_13:
    result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = *(a1 + 64);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v10;
    }

    if ((v2 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v20 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_134BFC4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_26:
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      LODWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    }

    if ((v2 & 0x200) != 0)
    {
      HIDWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_134C0C8(uint64_t a1)
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
  if (a1 != &off_276C018)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134C180(uint64_t a1)
{
  sub_134C0C8(a1);

  operator delete();
}

uint64_t sub_134C1B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_134C224(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 0xA)
  {
    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 24);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134C5E8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 88;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 96;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v30) >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_134CA1C(_DWORD *a1)
{
  v2 = a1[4];
  if ((v2 & 2) != 0)
  {
    v4 = a1[8];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[9];
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  v7 = a1[10];
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_19:
    v9 = a1[11];
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v10;
  }

  return result;
}

uint64_t sub_134CB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0x1E) != 0)
  {
    v5 = sub_134CA1C(a1);
    if (v2)
    {
LABEL_17:
      v12 = sub_134BD80(*(a1 + 24));
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 < 0)
    {
      v4 = 14;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 4;
    }

    v6 = *(a1 + 36);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    }

    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 = v4 + v7 + v9 + v11;
    if (v2)
    {
      goto LABEL_17;
    }
  }

  if ((v2 & 0x60) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v13 = *(a1 + 48);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v14;
    }

    if ((v2 & 0x40) != 0)
    {
      v15 = *(a1 + 52);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v5 += v20;
  }

  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_134CCD4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v7 = *(v3 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_1354CE4(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(v3 + 52) = *(a2 + 52);
      goto LABEL_10;
    }

LABEL_27:
    *(v3 + 48) = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4((v3 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_134CE44(uint64_t a1)
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
  if (a1 != &off_276C050)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134CEFC(uint64_t a1)
{
  sub_134CE44(a1);

  operator delete();
}

uint64_t sub_134CF34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 52) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_134CFA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v61, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v61 + 1;
    v8 = *v61;
    if (*v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v61 + 2;
      }
    }

    v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 8u;
        v29 = v7 + 1;
        LODWORD(v28) = *v7;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        v30 = *v29;
        v28 = v28 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_51:
          v61 = v29;
          *(a1 + 40) = v28;
          goto LABEL_76;
        }

        v53 = sub_19587DC(v7, v28);
        v61 = v53;
        *(a1 + 40) = v54;
        if (!v53)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v11 != 5 || v8 != 40)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        LODWORD(v19) = *v7;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_34:
          v61 = v20;
          *(a1 + 44) = v19;
          goto LABEL_76;
        }

        v47 = sub_19587DC(v7, v19);
        v61 = v47;
        *(a1 + 44) = v48;
        if (!v47)
        {
          goto LABEL_97;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_46:
        v61 = v26;
        *(a1 + 32) = v25;
        goto LABEL_76;
      }

      v51 = sub_19587DC(v7, v25);
      v61 = v51;
      *(a1 + 32) = v52;
      if (!v51)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_68;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_27:
        v61 = v17;
        *(a1 + 36) = v16;
        goto LABEL_76;
      }

      v45 = sub_19587DC(v7, v16);
      v61 = v45;
      *(a1 + 36) = v46;
      if (!v45)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if (sub_195ADC0(a3, &v61, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_68;
      }

      v5 |= 0x40u;
      v32 = v7 + 1;
      LODWORD(v31) = *v7;
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      v33 = *v32;
      v31 = v31 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v32 = v7 + 2;
LABEL_56:
        v61 = v32;
        *(a1 + 52) = v31;
        goto LABEL_76;
      }

      v55 = sub_19587DC(v7, v31);
      v61 = v55;
      *(a1 + 52) = v56;
      if (!v55)
      {
        goto LABEL_97;
      }
    }

    else if (v11 == 9)
    {
      if (v8 != 72)
      {
        goto LABEL_68;
      }

      v5 |= 0x80u;
      v40 = v7 + 1;
      LODWORD(v39) = *v7;
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      v41 = *v40;
      v39 = v39 + (v41 << 7) - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v40 = v7 + 2;
LABEL_67:
        v61 = v40;
        *(a1 + 56) = v39;
        goto LABEL_76;
      }

      v59 = sub_19587DC(v7, v39);
      v61 = v59;
      *(a1 + 56) = v60;
      if (!v59)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_68;
      }

      v5 |= 0x100u;
      v13 = v7 + 1;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = v12 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        v61 = v13;
        *(a1 + 60) = v12;
        goto LABEL_76;
      }

      v57 = sub_19587DC(v7, v12);
      v61 = v57;
      *(a1 + 60) = v58;
      if (!v57)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v11 != 6)
  {
    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_68;
    }

    v5 |= 0x20u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_41:
      v61 = v23;
      *(a1 + 48) = v22;
      goto LABEL_76;
    }

    v49 = sub_19587DC(v7, v22);
    v61 = v49;
    *(a1 + 48) = v50;
    if (!v49)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

  if (v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v34 = *(a1 + 24);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_1354CE4(v36);
      v34 = v37;
      *(a1 + 24) = v37;
      v7 = v61;
    }

    v38 = sub_21FFD20(a3, v34, v7);
LABEL_75:
    v61 = v38;
    if (!v38)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

LABEL_68:
  if (v8)
  {
    v42 = (v8 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = *(a1 + 8);
    if (v43)
    {
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v7 = v61;
    }

    v38 = sub_1952690(v8, v44, v7, a3);
    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

char *sub_134D434(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
    *v6 = 24;
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
    *v11 = 32;
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 40;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 50;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 56;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 64;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 56);
    *v30 = 72;
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v30[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v30[2] = v35 >> 7;
      v34 = v30 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v30[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v30 + 2;
    }
  }

  else
  {
    v34 = v30;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 60);
    *v34 = 80;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v39 - 1) = v34 | 0x80;
          v34 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v39;
  }

  v45 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 31);
  if (v46 < 0)
  {
    v47 = *(v45 + 8);
    v46 = *(v45 + 16);
  }

  else
  {
    v47 = (v45 + 8);
  }

  if ((*a3 - v39) >= v46)
  {
    v48 = v46;
    memcpy(v39, v47, v46);
    v39 += v48;
    return v39;
  }

  return sub_1957130(a3, v47, v46, v39);
}

unint64_t sub_134D974(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v2)
  {
    v4 = sub_134BD80(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
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
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(a1 + 44);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_32:
  v13 = *(a1 + 48);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v14;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_36:
  v15 = *(a1 + 52);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v16;
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_40:
  v17 = *(a1 + 56);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v18;
  if ((v2 & 0x100) != 0)
  {
LABEL_44:
    v19 = *(a1 + 60);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v20;
  }

LABEL_48:
  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_134DBC8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v8 = *(v3 + 8);
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          v9 = *v9;
        }

        sub_1354CE4(v9);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_27;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v3 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 48) = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(v3 + 56) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_31:
    *(v3 + 52) = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 60);
    *(v3 + 16) |= 0x100u;
    *(v3 + 60) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4((v3 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_134DD54(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276C090)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_134B11C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_134DE20(uint64_t a1)
{
  sub_134DD54(a1);

  operator delete();
}

uint64_t sub_134DE58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_134B1C8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 48) = 0;
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

uint64_t sub_134DEFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_31:
        *v39 = v22;
        *(a1 + 44) = v21;
        goto LABEL_49;
      }

      v33 = sub_19587DC(v7, v21);
      *v39 = v33;
      *(a1 + 44) = v34;
      if (!v33)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 == 5 && v8 == 42)
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

            sub_1354CE4(v14);
            v12 = v15;
            *(a1 + 32) = v15;
            v7 = *v39;
          }

          v16 = sub_21FFD20(a3, v12, v7);
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      if (v8 != 32)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_36:
        *v39 = v25;
        *(a1 + 48) = v24;
        goto LABEL_49;
      }

      v35 = sub_19587DC(v7, v24);
      *v39 = v35;
      *(a1 + 48) = v36;
      if (!v35)
      {
        goto LABEL_60;
      }
    }

LABEL_49:
    if (sub_195ADC0(a3, v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_26:
      *v39 = v19;
      *(a1 + 40) = v18;
      goto LABEL_49;
    }

    v37 = sub_19587DC(v7, v18);
    *v39 = v37;
    *(a1 + 40) = v38;
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v29 = sub_194DB04((a1 + 24), v28);
    v16 = sub_1958890(v29, *v39, a3);
LABEL_48:
    *v39 = v16;
    if (!v16)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

LABEL_41:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v39;
    }

    v16 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_134E1E4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 32);
    *v17 = 42;
    v22 = *(v21 + 20);
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v17 + 1);
    }

    else
    {
      v23 = v17 + 2;
    }

    v17 = sub_134B708(v21, v23, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v17;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if ((*a3 - v17) >= v27)
  {
    v29 = v27;
    memcpy(v17, v28, v27);
    v17 += v29;
    return v17;
  }

  return sub_1957130(a3, v28, v27, v17);
}

uint64_t sub_134E4A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_134BD80(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a1 + 44);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x10) != 0)
  {
LABEL_22:
    v12 = *(a1 + 48);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v13;
  }

LABEL_26:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_134E62C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_1354CE4(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276BFD0;
    }

    sub_134BFC4(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_25:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_134E798(uint64_t a1)
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
  if (a1 != &off_276C0C8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134E850(uint64_t a1)
{
  sub_134E798(a1);

  operator delete();
}

uint64_t sub_134E888(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_134E8F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 5)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 24);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134ECB8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 48;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 56;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v30) >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

unint64_t sub_134F0EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    result = 0;
    goto LABEL_37;
  }

  if (v2)
  {
    v4 = sub_134BD80(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v11 = *(a1 + 44);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v13 = *(a1 + 48);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v14;
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
    v15 = *(a1 + 52);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v16;
  }

LABEL_37:
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    result += v19;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_134F308(uint64_t a1)
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
  if (a1 != &off_276C100)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134F3C0(uint64_t a1)
{
  sub_134F308(a1);

  operator delete();
}

uint64_t sub_134F3F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_134F464(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 0xA)
  {
    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 24);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134F828(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 88;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 96;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v30) >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_134FC5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0x1E) != 0)
  {
    v5 = sub_134CA1C(a1);
    if (v2)
    {
LABEL_17:
      v12 = sub_134BD80(*(a1 + 24));
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 < 0)
    {
      v4 = 14;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 4;
    }

    v6 = *(a1 + 36);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    }

    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 = v4 + v7 + v9 + v11;
    if (v2)
    {
      goto LABEL_17;
    }
  }

  if ((v2 & 0x60) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v13 = *(a1 + 48);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v14;
    }

    if ((v2 & 0x40) != 0)
    {
      v15 = *(a1 + 52);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v5 += v20;
  }

  *(a1 + 20) = v5;
  return v5;
}

uint64_t sub_134FE6C(uint64_t a1)
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
  if (a1 != &off_276C138)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134FF24(uint64_t a1)
{
  sub_134FE6C(a1);

  operator delete();
}

uint64_t sub_134FF5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x3E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_134FFC8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v46, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v46 + 1;
    v8 = *v46;
    if (*v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v46 + 2;
      }
    }

    v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_48;
      }

      v5 |= 2u;
      v20 = v7 + 1;
      LODWORD(v19) = *v7;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v21 = *v20;
      v19 = v19 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_31:
        v46 = v20;
        *(a1 + 32) = v19;
        goto LABEL_56;
      }

      v36 = sub_19587DC(v7, v19);
      v46 = v36;
      *(a1 + 32) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_48;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_41:
        v46 = v26;
        *(a1 + 36) = v25;
        goto LABEL_56;
      }

      v44 = sub_19587DC(v7, v25);
      v46 = v44;
      *(a1 + 36) = v45;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_48;
      }

      v5 |= 8u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        v46 = v14;
        *(a1 + 40) = v13;
        goto LABEL_56;
      }

      v42 = sub_19587DC(v7, v13);
      v46 = v42;
      *(a1 + 40) = v43;
      if (!v42)
      {
        goto LABEL_71;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, &v46, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_48;
    }

    v5 |= 0x10u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v46 = v23;
      *(a1 + 48) = v22;
      goto LABEL_56;
    }

    v38 = sub_19587DC(v7, v22);
    v46 = v38;
    *(a1 + 48) = v39;
    if (!v38)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_48;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      v46 = v17;
      *(a1 + 52) = v16;
      goto LABEL_56;
    }

    v40 = sub_19587DC(v7, v16);
    v46 = v40;
    *(a1 + 52) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v28 = *(a1 + 24);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_1354CE4(v30);
      v28 = v31;
      *(a1 + 24) = v31;
      v7 = v46;
    }

    v32 = sub_21FFD20(a3, v28, v7);
LABEL_55:
    v46 = v32;
    if (!v32)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

LABEL_48:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v46;
    }

    v32 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

char *sub_1350328(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 48);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 52);
    *v19 = 48;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v26;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v26) >= v33)
  {
    v35 = v33;
    memcpy(v26, v34, v33);
    v26 += v35;
    return v26;
  }

  return sub_1957130(a3, v34, v33, v26);
}

unint64_t sub_13506D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_29;
  }

  if (v2)
  {
    v4 = sub_134BD80(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x20) != 0)
  {
LABEL_25:
    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v12;
  }

LABEL_29:
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}