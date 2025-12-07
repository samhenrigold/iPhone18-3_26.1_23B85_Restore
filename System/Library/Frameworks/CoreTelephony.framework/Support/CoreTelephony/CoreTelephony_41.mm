void sub_10028D604(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10027C3B4(va);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028D648(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028D694(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10027EB58((a1 + 48), *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10004EFD0((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return a1;
}

void sub_10028D778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10028D7BC(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
  v10 = v8 - 1072;
  for (i = 1 - a4; ; ++i)
  {
    v12 = a2 - v9;
    v13 = 0xF0B7672A07A44C6BLL * (a2 - v9);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v23 = a2 - 67;
      v24 = v9;
      result = sub_10031A0B8((a2 - 67), v9);
      if (result)
      {
        v21 = &v24;
        v22 = &v23;
        return sub_10028DBAC(v21, v22);
      }

      return result;
    }

LABEL_10:
    if (v12 <= 25727)
    {
      if (a5)
      {

        return sub_10028DE28(v9, a2);
      }

      else
      {

        return sub_10028DF58(v9, a2);
      }
    }

    if (i == 1)
    {
      if (v9 != a2)
      {

        return sub_10028E6CC(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v9[67 * (v13 >> 1)];
    v16 = a2 - 67;
    if (v12 < 0x21801)
    {
      sub_10028DC44(v15, v9, v16);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_10028DC44(v9, v15, v16);
      v17 = &v9[67 * v14];
      sub_10028DC44(v9 + 67, v17 - 67, a2 - 134);
      sub_10028DC44(v9 + 134, v17 + 67, a2 - 201);
      sub_10028DC44(v17 - 67, v15, v17 + 67);
      sub_10028E634(v9, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((sub_10031A0B8(v10, v9) & 1) == 0)
    {
      result = sub_10028E054(v9, a2);
      v8 = result;
      goto LABEL_24;
    }

LABEL_17:
    v18 = sub_10028E200(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_10028E3AC(v9, v18);
    v8 = (v18 + 67);
    result = sub_10028E3AC(v18 + 67, a2);
    if (!result)
    {
      a4 = -i;
      if (v20)
      {
        goto LABEL_2;
      }

LABEL_22:
      result = sub_10028D7BC(v9, v18, a3, -i, a5 & 1);
      v8 = (v18 + 67);
LABEL_24:
      a5 = 0;
      a4 = -i;
      goto LABEL_2;
    }

    a2 = v18;
    if (v20)
    {
      return result;
    }
  }

  if (v13 == 3)
  {

    return sub_10028DC44(v9, v9 + 67, a2 - 67);
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      return sub_10028DCFC(v9, v9 + 67, v9 + 134, v9 + 201, a2 - 67);
    }

    goto LABEL_10;
  }

  v23 = a2 - 67;
  v24 = v9;
  v27 = v9 + 67;
  v28 = v9;
  v25 = a2 - 67;
  v26 = v9 + 134;
  sub_10028DC44(v9, v9 + 67, v9 + 134);
  result = sub_10031A0B8((a2 - 67), (v9 + 134));
  if (result)
  {
    sub_10028DBAC(&v26, &v25);
    result = sub_10031A0B8(v26, (v9 + 67));
    if (result)
    {
      sub_10028DBAC(&v27, &v26);
      result = sub_10031A0B8(v27, v9);
      if (result)
      {
        v21 = &v28;
        v22 = &v27;
        return sub_10028DBAC(v21, v22);
      }
    }
  }

  return result;
}

uint64_t sub_10028DBAC(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  bzero(v5, 0x430uLL);
  sub_100284850(v5, v2);
  sub_10026A694(v2, v3);
  sub_10026A694(v3, v5);
  return sub_10027C3B4(v5);
}

uint64_t sub_10028DC44(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_10031A0B8(a2, a1);
  result = sub_10031A0B8(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_10028DBAC(&v11, &v10);
    if (sub_10031A0B8(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_10028DBAC(&v10, &v9);
    if (sub_10031A0B8(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_10028DBAC(v7, v8);
    }
  }

  return 1;
}

uint64_t sub_10028DCFC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_10028DC44(a1, a2, a3);
  if (sub_10031A0B8(a4, a3))
  {
    sub_10028DBAC(&v17, &v16);
    if (sub_10031A0B8(v17, a2))
    {
      sub_10028DBAC(&v18, &v17);
      if (sub_10031A0B8(v18, a1))
      {
        sub_10028DBAC(&v19, &v18);
      }
    }
  }

  result = sub_10031A0B8(a5, a4);
  if (result)
  {
    sub_10028DBAC(&v12, &v11);
    result = sub_10031A0B8(v12, a3);
    if (result)
    {
      sub_10028DBAC(&v13, &v12);
      result = sub_10031A0B8(v13, a2);
      if (result)
      {
        sub_10028DBAC(&v14, &v13);
        result = sub_10031A0B8(v14, a1);
        if (result)
        {
          return sub_10028DBAC(&v15, &v14);
        }
      }
    }
  }

  return result;
}

__int128 *sub_10028DE28(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 67);
    if (result + 67 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = sub_10031A0B8(v4, v7);
        if (result)
        {
          bzero(v11, 0x430uLL);
          sub_100284850(v11, v6);
          v8 = v5;
          while (1)
          {
            sub_10026A694(v3 + v8 + 1072, (v3 + v8));
            if (!v8)
            {
              break;
            }

            v9 = sub_10031A0B8(v11, v3 + v8 - 1072);
            v8 -= 1072;
            if ((v9 & 1) == 0)
            {
              v10 = v3 + v8 + 1072;
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          sub_10026A694(v10, v11);
          result = sub_10027C3B4(v11);
        }

        v4 = (v6 + 67);
        v5 += 1072;
      }

      while (v6 + 67 != a2);
    }
  }

  return result;
}

__int128 *sub_10028DF58(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 67;
    while (v4 != a2)
    {
      v5 = v4;
      result = sub_10031A0B8(v4, v3);
      if (result)
      {
        bzero(v6, 0x430uLL);
        sub_100284850(v6, v5);
        do
        {
          sub_10026A694((v3 + 67), v3);
          v3 -= 67;
        }

        while ((sub_10031A0B8(v6, v3) & 1) != 0);
        sub_10026A694((v3 + 67), v6);
        result = sub_10027C3B4(v6);
      }

      v4 = v5 + 67;
      v3 = v5;
    }
  }

  return result;
}

__int128 *sub_10028E054(__int128 *a1, __int128 *a2)
{
  v11 = a2;
  v12 = a1;
  bzero(v13, 0x430uLL);
  sub_100284850(v13, a1);
  if (sub_10031A0B8(v13, (a2 - 67)))
  {
    v4 = a1;
    do
    {
      v4 += 67;
      v12 = v4;
    }

    while ((sub_10031A0B8(v13, v4) & 1) == 0);
  }

  else
  {
    v5 = a1 + 67;
    do
    {
      v4 = v5;
      v12 = v5;
      if (v5 >= v11)
      {
        break;
      }

      v6 = sub_10031A0B8(v13, v5);
      v5 = v4 + 67;
    }

    while (!v6);
  }

  v7 = v11;
  if (v4 < v11)
  {
    do
    {
      v7 -= 67;
      v11 = v7;
    }

    while ((sub_10031A0B8(v13, v7) & 1) != 0);
    v4 = v12;
  }

  if (v4 < v7)
  {
    do
    {
      sub_10028DBAC(&v12, &v11);
      do
      {
        v12 += 67;
      }

      while (!sub_10031A0B8(v13, v12));
      do
      {
        v11 -= 67;
      }

      while ((sub_10031A0B8(v13, v11) & 1) != 0);
      v4 = v12;
    }

    while (v12 < v11);
  }

  v8 = v4 - 67;
  if (v8 != a1)
  {
    sub_10026A694(a1, v8);
  }

  sub_10026A694(v8, v13);
  v9 = v12;
  sub_10027C3B4(v13);
  return v9;
}

void sub_10028E1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028E200(__int128 *a1, __int128 *a2)
{
  v11 = a2;
  bzero(v13, 0x430uLL);
  sub_100284850(v13, a1);
  v3 = 0;
  do
  {
    v12 = &a1[v3 + 67];
    v3 += 67;
  }

  while ((sub_10031A0B8(v12, v13) & 1) != 0);
  v4 = v11;
  if (v3 == 67)
  {
    v7 = a1 + 67;
    do
    {
      if (v7 >= v4)
      {
        break;
      }

      v4 -= 67;
      v11 = v4;
    }

    while ((sub_10031A0B8(v4, v13) & 1) == 0);
  }

  else
  {
    v5 = v11 - 67;
    do
    {
      v11 = v5;
      v6 = sub_10031A0B8(v5, v13);
      v5 -= 67;
    }

    while (!v6);
    v7 = v12;
  }

  v8 = v7;
  if (v7 < v11)
  {
    do
    {
      sub_10028DBAC(&v12, &v11);
      do
      {
        v12 += 67;
      }

      while ((sub_10031A0B8(v12, v13) & 1) != 0);
      do
      {
        v11 -= 67;
      }

      while (!sub_10031A0B8(v11, v13));
      v8 = v12;
    }

    while (v12 < v11);
  }

  v9 = (v8 - 67);
  if (v8 - 67 != a1)
  {
    sub_10026A694(a1, v8 - 67);
  }

  sub_10026A694(v9, v13);
  sub_10027C3B4(v13);
  return v9;
}

void sub_10028E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

BOOL sub_10028E3AC(__int128 *a1, __int128 *a2)
{
  v14 = a2;
  v15 = a1;
  v4 = 0xF0B7672A07A44C6BLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10028DC44(a1, a1 + 67, a2 - 67);
        return 1;
      case 4:
        v18 = a1 + 67;
        *&v19[0] = a1;
        v11 = a2 - 67;
        v16 = a2 - 67;
        v17 = a1 + 134;
        sub_10028DC44(a1, a1 + 67, a1 + 134);
        if (!sub_10031A0B8(v11, (a1 + 134)))
        {
          return 1;
        }

        sub_10028DBAC(&v17, &v16);
        if (!sub_10031A0B8(v17, (a1 + 67)))
        {
          return 1;
        }

        sub_10028DBAC(&v18, &v17);
        if (!sub_10031A0B8(v18, a1))
        {
          return 1;
        }

        v5 = v19;
        v6 = &v18;
        goto LABEL_6;
      case 5:
        sub_10028DCFC(a1, a1 + 67, a1 + 134, a1 + 201, a2 - 67);
        return 1;
    }

LABEL_12:
    v7 = a1 + 134;
    sub_10028DC44(a1, a1 + 67, a1 + 134);
    v8 = a1 + 201;
    if (v8 != a2)
    {
      v9 = 0;
      while (1)
      {
        if (sub_10031A0B8(v8, v7))
        {
          bzero(v19, 0x430uLL);
          sub_100284850(v19, v8);
          do
          {
            v10 = v7;
            sub_10026A694((v7 + 67), v7);
            if (v7 == v15)
            {
              break;
            }

            v7 -= 67;
          }

          while ((sub_10031A0B8(v19, v10 - 1072) & 1) != 0);
          sub_10026A694(v10, v19);
          if (++v9 == 8)
          {
            v12 = v8 + 67 == v14;
            sub_10027C3B4(v19);
            return v12;
          }

          sub_10027C3B4(v19);
        }

        v7 = v8;
        v8 += 67;
        if (v8 == v14)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v14 = a2 - 67;
  if (sub_10031A0B8((a2 - 67), a1))
  {
    v5 = &v15;
    v6 = &v14;
LABEL_6:
    sub_10028DBAC(v5, v6);
  }

  return 1;
}

uint64_t sub_10028E634(__int128 *a1, __int128 *a2)
{
  bzero(v5, 0x430uLL);
  sub_100284850(v5, a1);
  sub_10026A694(a1, a2);
  sub_10026A694(a2, v5);
  return sub_10027C3B4(v5);
}

__int128 *sub_10028E6CC(__int128 *a1, char *a2, __int128 *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xF0B7672A07A44C6BLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 1073)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[67 * v10];
      do
      {
        sub_10028E820(v7, a4, v9, v12);
        v12 -= 67;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (sub_10031A0B8(v13, v18))
        {
          sub_10028DBAC(&v17, &v18);
          sub_10028E820(v18, a4, v9, v18);
        }

        v13 = v17 + 67;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 1073)
    {
      v14 = 0xF0B7672A07A44C6BLL * (v8 >> 4);
      do
      {
        sub_10028E9C8(v7, v6, a4, v14);
        v6 -= 67;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_10028E820(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xF0B7672A07A44C6BLL * ((a4 - result) >> 4)))
    {
      v9 = (0xE16ECE540F4898D6 * ((a4 - result) >> 4)) | 1;
      v10 = (result + 1072 * v9);
      v11 = 0xE16ECE540F4898D6 * ((a4 - result) >> 4) + 2;
      if (v11 < a3 && sub_10031A0B8(result + 1072 * v9, (v10 + 67)))
      {
        v10 += 67;
        v9 = v11;
      }

      result = sub_10031A0B8(v10, v5);
      if ((result & 1) == 0)
      {
        bzero(v14, 0x430uLL);
        sub_100284850(v14, v5);
        do
        {
          v12 = v10;
          sub_10026A694(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v13 = (2 * v9) | 1;
          v10 = (v6 + 1072 * v13);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v13;
          }

          else if (sub_10031A0B8(v6 + 1072 * v13, (v10 + 67)))
          {
            v10 += 67;
          }

          else
          {
            v9 = v13;
          }

          v5 = v12;
        }

        while (!sub_10031A0B8(v10, v14));
        sub_10026A694(v12, v14);
        return sub_10027C3B4(v14);
      }
    }
  }

  return result;
}

void sub_10028E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

__int128 *sub_10028E9C8(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    bzero(v11, 0x430uLL);
    sub_100284850(v11, v7);
    v8 = sub_10028EAEC(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 1072);
    if (v8 == v10)
    {
      sub_10026A694(v8, v11);
    }

    else
    {
      sub_10026A694(v8, v10);
      sub_10026A694(v10, v11);
      sub_10028EB98(v7, (v9 + 67), a3, 0xF0B7672A07A44C6BLL * (v9 + 67 - v7));
    }

    return sub_10027C3B4(v11);
  }

  return result;
}

void sub_10028EAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

__int128 *sub_10028EAEC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[67 * v5];
    v8 = v7 + 67;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 134;
      if (sub_10031A0B8((v7 + 67), (v7 + 134)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    sub_10026A694(a1, v8);
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

uint64_t sub_10028EB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = (result + 1072 * v5);
    v7 = (a2 - 1072);
    result = sub_10031A0B8(v6, a2 - 1072);
    if (result)
    {
      bzero(v9, 0x430uLL);
      sub_100284850(v9, v7);
      do
      {
        v8 = v6;
        sub_10026A694(v7, v6);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (v4 + 1072 * v5);
        v7 = v8;
      }

      while ((sub_10031A0B8(v6, v9) & 1) != 0);
      sub_10026A694(v8, v9);
      return sub_10027C3B4(v9);
    }
  }

  return result;
}

void sub_10028EC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028ED30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028ED7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_10028EDFC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_10028EEA0();
  }

  return result;
}

void sub_10028EF50(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10028EF6C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10028EF6C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 120) == 1 && *(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10028F06C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36EF8;
  a2[1] = v2;
  return result;
}

void sub_10028F098(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10028F164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028F1B0(uint64_t a1)
{
  *a1 = off_101E36F78;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028F20C(uint64_t a1)
{
  *a1 = off_101E36F78;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10028F32C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10028F34C(char *result, uint64_t a2)
{
  *a2 = off_101E36F78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10028F3D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028F3F0(char *a1)
{
  sub_10028F698((a1 + 8));

  operator delete(a1);
}

void sub_10028F42C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 16))
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = a1 + 32;
          if (*(a1 + 55) < 0)
          {
            v6 = *(a1 + 32);
          }

          *buf = 136315138;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I send.tss.after.delete timer expired, sourceIccid: %s", buf, 0xCu);
        }

        *buf = v3;
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(&buf[8], *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *&buf[8] = *(a1 + 32);
          v9 = *(a1 + 48);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10028F64C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10028F698(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_10028F6EC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10025F1D0(*v1, (v1 + 8));
  sub_1000EF424(&v4);
  return sub_1000049E0(&v3);
}

void sub_10028F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10028F74C(uint64_t a1)
{
  *a1 = off_101E36FF8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028F7A8(uint64_t a1)
{
  *a1 = off_101E36FF8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10028F8C8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10028F8E8(char *result, uint64_t a2)
{
  *a2 = off_101E36FF8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10028F96C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028F98C(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10028F9C8(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 16) && (v4 & 1) == 0)
      {
        sub_1002773C4(v5, (a1 + 32));
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10028FA5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_UNKNOWN **sub_10028FB20(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_10028FC5C(a3, a2[1]);
    }

    v7 = a2[1];
    if (*(v7 + 151) < 0)
    {
      operator delete(*(v7 + 128));
    }

    if (*(v7 + 112) == 1 && *(v7 + 111) < 0)
    {
      operator delete(*(v7 + 88));
    }

    if (*(v7 + 80) == 1 && *(v7 + 79) < 0)
    {
      operator delete(*(v7 + 56));
    }

    if (*(v7 + 48) == 1 && *(v7 + 47) < 0)
    {
      operator delete(*(v7 + 24));
    }

    v10 = v7;
    sub_10016C644(&v10);
    operator delete(v7);
    result = 0;
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_10028FB20;
    a3[1] = v9;
LABEL_20:
    *a2 = 0;
    return result;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_10183BBB0;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028FCD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_10028FD58(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = (v1 + 32);
  v3 = *v1;
  v4 = sub_10025CD10((*v1 + 328), (v1 + 32));
  if (v3[42] == v4)
  {
    v7 = v3[5];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    if (*(v1 + 55) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315394;
    *&buf[4] = v2;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    v8 = "cannot find source iccid in tr.ctr : %s. drop tr.ind. Target Transfer Controller: %p";
    v9 = v7;
    v10 = 22;
    goto LABEL_31;
  }

  v5 = v4;
  v6 = *(v1 + 31);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!*(v1 + 31))
    {
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  if (*(v1 + 16))
  {
LABEL_10:
    v11 = (v1 + 8);
    v12 = (v4 + 672);
    if (v6 >= 0)
    {
      v13 = *(v1 + 31);
    }

    else
    {
      v13 = *(v1 + 16);
    }

    v14 = *(v4 + 695);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v4 + 680);
    }

    if (v13 == v14)
    {
      v16 = (v6 >= 0 ? v1 + 8 : *v11);
      v17 = (v15 >= 0 ? v5 + 672 : *v12);
      if (!memcmp(v16, v17, v13))
      {
        goto LABEL_32;
      }
    }

    v18 = v3[5];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    if ((v6 & 0x80000000) != 0)
    {
      v11 = *v11;
    }

    if (v15 < 0)
    {
      v12 = *v12;
    }

    if (*(v1 + 55) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    *&buf[24] = v2;
    v8 = "uuid mismatched : %s != %s, source iccid : %s. drop tr.ind";
    v9 = v18;
    v10 = 32;
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_39;
  }

LABEL_32:
  v19 = v3[126];
  v3[126] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (*(v1 + 344) == 1)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_10027EF58(buf, (v1 + 56));
    sub_100931630(buf);
    sub_100319FE0(v5, buf);
    sub_100111F5C(buf);
  }

  *buf = 0;
  if (*(v1 + 352) - 1 <= 1)
  {
    buf[0] = *(v1 + 352);
    buf[1] = *(v1 + 353);
  }

  sub_10026E010(v3, (v1 + 32), buf);
LABEL_39:
  sub_100290034(&v22);
  return sub_1000049E0(&v21);
}

void sub_100290008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_100111F5C(&a12);
  sub_100290034(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100290034(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    *(v1 + 352) = 0;
    if (*(v1 + 344) == 1)
    {
      sub_100111F5C(v1 + 56);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1002900B4(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_10025CD10((*v1 + 328), (v1 + 8));
  if (*(v2 + 336) != v3)
  {
    v4 = v3;
    sub_100319F10(v3, 0);
    sub_100319F28(v4, 70095);
  }

  v12 = 0;
  v11 = 0;
  sub_100254358(v2, (v1 + 8), 11, 0x38u, &v12, &v11);
  sub_10001021C(&v11);
  sub_100005978(&v12);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v5 = *(v1 + 8);
    v10 = *(v1 + 24);
    *__p = v5;
  }

  sub_100255D0C(v2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100254E74(v2);
  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

void sub_1002901B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100290200(uint64_t a1)
{
  *a1 = off_101E37088;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100290270(uint64_t a1)
{
  *a1 = off_101E37088;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1002903D8(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029041C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101E37088;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  else
  {
    v6 = *(v3 + 40);
    *(a2 + 56) = *(v3 + 7);
    *(a2 + 40) = v6;
  }

  if (v3[87] < 0)
  {
    return sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  v7 = *(v3 + 4);
  *(a2 + 80) = *(v3 + 10);
  *(a2 + 64) = v7;
  return result;
}

void sub_1002904D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10029050C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_100290574(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_1002905D8(uint64_t a1, unsigned __int8 *a2, const void **a3)
{
  v4 = *a2;
  v8 = *a3;
  *a3 = 0;
  if (v4 == 1)
  {
    ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "cp.tr.ctr");
    v5 = v10;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_101768E6C();
    }
  }

  else
  {
    v6 = *(a1 + 8);
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_1009325F0((a1 + 16), &__p);
    sub_100264940(v6, (a1 + 64), a1 + 40, &__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }
  }

  return sub_10001021C(&v8);
}

void sub_1002906A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002906D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100290720(void *a1)
{
  *a1 = off_101E37108;
  sub_1002854D4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100290770(void *a1)
{
  *a1 = off_101E37108;
  sub_1002854D4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100290868(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100290888(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37108;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10028CC38(a2 + 32, a1 + 32);
}

void sub_1002908F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100290914(char *a1)
{
  sub_100290EEC((a1 + 8));

  operator delete(a1);
}

void sub_100290950(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && a1[2])
    {
      sub_1002665D8(v3);
      sub_10026679C(v3);
      v5 = *(v3 + 168);
      v6 = *(v3 + 176);
      if (v6 - v5 < 1)
      {
        v7 = 0;
        v11 = 0;
      }

      else
      {
        v7 = 0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 5);
        while (1)
        {
          v8 = operator new(672 * v7, &std::nothrow);
          if (v8)
          {
            break;
          }

          v9 = v7 >> 1;
          v10 = v7 > 1;
          v7 >>= 1;
          if (!v10)
          {
            v11 = 0;
            v7 = v9;
            goto LABEL_15;
          }
        }

        v11 = v8;
      }

LABEL_15:
      sub_100290F38(v5, v6, 0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 5), v11, v7);
      if (v11)
      {
        operator delete(v11);
      }

      v33 = 0x400000000000000;
      *__p = *"18.4";
      v13 = sub_100927A9C(__p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = *(v3 + 848);
      if (*(v14 + 47) < 0)
      {
        sub_100005F2C(__dst, *(v14 + 24), *(v14 + 32));
      }

      else
      {
        *__dst = *(v14 + 24);
        v31 = *(v14 + 40);
      }

      v15 = sub_100927A9C(__dst);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      if (*(v3 + 240))
      {
        v16 = v15 >= v13;
      }

      else
      {
        v16 = 1;
      }

      v17 = !v16;
      v28 = 0;
      cf = 0;
      v27 = 0;
      sub_1009252B0((v3 + 168), &v27, v3 + 976, v17, &cf);
      if (v28)
      {
        sub_100004A34(v28);
      }

      if (*(v3 + 147) == 1)
      {
        v18 = *(v3 + 88);
        if (v18)
        {
          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v20 = v19;
            v21 = *(v3 + 80);
            if (v21)
            {
              if ((*(*v21 + 344))(*(v3 + 80), 1) != 2)
              {
                v26 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                if (sub_100932CD8((v3 + 40), &v26, 1))
                {
                  v22 = 2;
                }

                else
                {
                  v22 = 1;
                }

                (*(*v21 + 336))(v21, v22, 1);
                sub_100010250(&v26);
              }

              if ((*(*v21 + 344))(v21, 0) != 2)
              {
                v25 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                if (sub_100932CD8((v3 + 40), &v25, 0))
                {
                  v23 = 2;
                }

                else
                {
                  v23 = 1;
                }

                (*(*v21 + 336))(v21, v23, 0);
                sub_100010250(&v25);
              }
            }

            sub_100004A34(v20);
          }
        }
      }

      v24 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_100259554((a1 + 4), &v24, *(v3 + 161), 0);
      sub_100010250(&v24);
      sub_10027572C(v3);
    }
  }

  else
  {
    v4 = 0;
  }

  ctu::OsLogContext::OsLogContext(__p, kCtLoggingSystemName, "cp.tr.ctr");
  v12 = __p[1];
  ctu::OsLogContext::~OsLogContext(__p);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  __p[0] = 0;
  sub_100259554((a1 + 4), __p, 0, 5);
  sub_100010250(__p);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_100290D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_100010250(&a13);
  sub_100004A34(v32);
  sub_100010250(&a19);
  if (v33)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100290E20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100290E6C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100290EEC(uint64_t a1)
{
  sub_1002854D4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_100290F38(uint64_t result, __int128 *a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v109 = a2;
  v110 = result;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  if (a3 == 2)
  {
    v109 = a2 - 42;
    v7 = (result + 432);
    v8 = *(a2 - 217);
    if (v8 >= 0)
    {
      v9 = *(a2 - 217);
    }

    else
    {
      v9 = *(a2 - 29);
    }

    v10 = *(result + 455);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(result + 440);
    }

    if (v9 == v10 && (v8 >= 0 ? (v12 = a2 - 15) : (v12 = *(a2 - 30)), v11 >= 0 ? (v13 = (v6 + 432)) : (v13 = *v7), !memcmp(v12, v13, v9)))
    {
      v101 = *(v5 - 649);
      if (v101 >= 0)
      {
        v102 = *(v5 - 649);
      }

      else
      {
        v102 = *(v5 - 83);
      }

      v103 = *(v6 + 23);
      v104 = v103;
      if ((v103 & 0x80u) != 0)
      {
        v103 = *(v6 + 8);
      }

      if (v102 == v103)
      {
        v105 = v101 >= 0 ? v5 - 42 : *(v5 - 84);
        v106 = v104 >= 0 ? v6 : *v6;
        result = memcmp(v105, v106, v102);
        if (!result)
        {
          if ((*(v5 - 382) & 1) != 0 || *(v6 + 290) != 1)
          {
            return result;
          }

          return sub_1002918E0(&v110, &v109);
        }
      }

      v14 = (v5 - 42);
      v15 = v6;
    }

    else
    {
      v14 = (v5 - 15);
      v15 = (v6 + 432);
    }

    result = sub_1000068BC(v14, v15);
    if (result <= 0)
    {
      return result;
    }

    return sub_1002918E0(&v110, &v109);
  }

  if (a3 <= 0)
  {
    if (result == a2)
    {
      return result;
    }

    v22 = result + 672;
    if ((result + 672) == a2)
    {
      return result;
    }

    v23 = 0;
    v24 = result;
    while (1)
    {
      v25 = v24;
      v24 = v22;
      v26 = (v25 + 1104);
      v27 = *(v25 + 1127);
      if (v27 >= 0)
      {
        v28 = *(v25 + 1127);
      }

      else
      {
        v28 = *(v25 + 1112);
      }

      v29 = *(v25 + 455);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v25 + 440);
      }

      if (v28 != v29)
      {
        break;
      }

      v31 = (v27 >= 0 ? v25 + 1104 : *v26);
      v32 = v30 >= 0 ? (v25 + 432) : *(v25 + 432);
      if (memcmp(v31, v32, v28))
      {
        break;
      }

      v75 = *(v25 + 695);
      if (v75 >= 0)
      {
        v76 = *(v25 + 695);
      }

      else
      {
        v76 = *(v25 + 680);
      }

      v77 = *(v25 + 23);
      v78 = v77;
      if ((v77 & 0x80u) != 0)
      {
        v77 = *(v25 + 8);
      }

      if (v76 != v77 || (v75 >= 0 ? (v79 = v24) : (v79 = *v24), v78 >= 0 ? (v80 = v25) : (v80 = *v25), result = memcmp(v79, v80, v76), result))
      {
        v33 = v24;
        v34 = v25;
LABEL_41:
        result = sub_1000068BC(v33, v34);
        if (result <= 0)
        {
          goto LABEL_95;
        }

        goto LABEL_42;
      }

      if ((*(v25 + 962) & 1) != 0 || *(v25 + 290) != 1)
      {
        goto LABEL_95;
      }

LABEL_42:
      v166 = 0;
      v35 = *v24;
      v112 = *(v24 + 16);
      v111 = v35;
      *(v24 + 8) = 0u;
      *v24 = 0;
      v113 = *(v25 + 696);
      v114 = *(v25 + 712);
      v36 = *(v25 + 720);
      *(v25 + 696) = 0u;
      *(v25 + 712) = 0u;
      v115 = v36;
      v116 = *(v25 + 736);
      *(v25 + 728) = 0u;
      v118 = *(v25 + 760);
      v117 = *(v25 + 744);
      *(v25 + 760) = 0;
      *(v25 + 744) = 0u;
      v37 = *(v25 + 768);
      v120 = *(v25 + 784);
      v119 = v37;
      *(v25 + 784) = 0;
      *(v25 + 768) = 0u;
      v38 = *(v25 + 792);
      v122 = *(v25 + 808);
      v121 = v38;
      *(v25 + 808) = 0;
      *(v25 + 792) = 0u;
      v39 = *(v25 + 816);
      v124 = *(v25 + 832);
      v123 = v39;
      *(v25 + 832) = 0;
      *(v25 + 816) = 0u;
      v40 = *(v25 + 840);
      v126 = *(v25 + 856);
      v125 = v40;
      *(v25 + 856) = 0;
      *(v25 + 840) = 0u;
      v41 = *(v25 + 864);
      v128 = *(v25 + 880);
      v127 = v41;
      *(v25 + 880) = 0;
      *(v25 + 864) = 0u;
      v42 = *(v25 + 888);
      v130 = *(v25 + 904);
      v129 = v42;
      *(v25 + 904) = 0;
      *(v25 + 888) = 0u;
      v43 = *(v25 + 912);
      v132 = *(v25 + 928);
      v131 = v43;
      *(v25 + 928) = 0;
      *(v25 + 912) = 0u;
      v44 = *(v25 + 936);
      v134 = *(v25 + 952);
      v133 = v44;
      *(v25 + 952) = 0;
      *(v25 + 936) = 0u;
      v45 = *(v25 + 960);
      v136 = *(v25 + 976);
      v135 = v45;
      v46 = *(v25 + 984);
      v138 = *(v25 + 1000);
      v137 = v46;
      *(v25 + 1000) = 0;
      *(v25 + 984) = 0u;
      v47 = *(v25 + 1008);
      v140 = *(v25 + 1024);
      v139 = v47;
      *(v25 + 1024) = 0;
      *(v25 + 1008) = 0u;
      v48 = *(v25 + 1032);
      v142 = *(v25 + 1048);
      v141 = v48;
      *(v25 + 1048) = 0;
      *(v25 + 1032) = 0u;
      v49 = *(v25 + 1056);
      v144 = *(v25 + 1072);
      v143 = v49;
      *(v25 + 1072) = 0;
      *(v25 + 1056) = 0u;
      v50 = *(v25 + 1080);
      v146 = *(v25 + 1096);
      v145 = v50;
      *(v25 + 1096) = 0;
      *(v25 + 1080) = 0u;
      v51 = *v26;
      v148 = *(v25 + 1120);
      v147 = v51;
      *(v25 + 1120) = 0;
      *v26 = 0u;
      v52 = *(v25 + 1128);
      v150 = *(v25 + 1144);
      v149 = v52;
      *(v25 + 1144) = 0;
      *(v25 + 1128) = 0u;
      v53 = *(v25 + 1152);
      v152 = *(v25 + 1168);
      v151 = v53;
      *(v25 + 1168) = 0;
      *(v25 + 1152) = 0u;
      v54 = *(v25 + 1176);
      v154 = *(v25 + 1192);
      v153 = v54;
      *(v25 + 1192) = 0;
      *(v25 + 1176) = 0u;
      v55 = *(v25 + 1200);
      v156 = *(v25 + 1216);
      v155 = v55;
      *(v25 + 1216) = 0;
      *(v25 + 1200) = 0u;
      v56 = *(v25 + 1224);
      v158 = *(v25 + 1240);
      v157 = v56;
      *(v25 + 1240) = 0;
      *(v25 + 1224) = 0u;
      v57 = *(v25 + 1248);
      v160 = *(v25 + 1264);
      v159 = v57;
      *(v25 + 1264) = 0;
      *(v25 + 1248) = 0u;
      v58 = *(v25 + 1272);
      v162 = *(v25 + 1288);
      v161 = v58;
      *(v25 + 1288) = 0;
      *(v25 + 1272) = 0u;
      v59 = *(v25 + 1296);
      v164 = *(v25 + 1312);
      v163 = v59;
      *(v25 + 1312) = 0;
      *(v25 + 1296) = 0u;
      v60 = *(v25 + 1320);
      LOBYTE(v166) = *(v25 + 1336);
      v165 = v60;
      sub_100281D90(v24, v25);
      if (v25 == v6)
      {
        v25 = v6;
        goto LABEL_94;
      }

      v61 = v23;
      while (1)
      {
        v62 = v6 + v61;
        if (v148 >= 0)
        {
          v63 = HIBYTE(v148);
        }

        else
        {
          v63 = *(&v147 + 1);
        }

        v64 = *(v62 - 217);
        v65 = v64;
        if ((v64 & 0x80u) != 0)
        {
          v64 = *(v62 - 232);
        }

        if (v63 != v64 || (v148 >= 0 ? (v66 = &v147) : (v66 = v147), v65 >= 0 ? (v67 = (v6 + v61 - 240)) : (v67 = *(v6 + v61 - 240)), memcmp(v66, v67, v63)))
        {
          v68 = &v147;
          v69 = (v6 + v61 - 240);
          goto LABEL_58;
        }

        if (v112 >= 0)
        {
          v70 = HIBYTE(v112);
        }

        else
        {
          v70 = *(&v111 + 1);
        }

        v71 = *(v6 + v61 - 649);
        v72 = *(v6 + v61 - 664);
        if (v71 >= 0)
        {
          v72 = *(v6 + v61 - 649);
        }

        if (v70 == v72)
        {
          v73 = v112 >= 0 ? &v111 : v111;
          v74 = v71 >= 0 ? (v6 + v61 - 672) : *(v6 + v61 - 672);
          if (!memcmp(v73, v74, v70))
          {
            break;
          }
        }

        v68 = &v111;
        v69 = (v6 + v61 - 672);
LABEL_58:
        if (sub_1000068BC(v68, v69) <= 0)
        {
          goto LABEL_93;
        }

LABEL_59:
        v25 -= 672;
        sub_100281D90(v6 + v61, (v6 + v61 - 672));
        v61 -= 672;
        if (!v61)
        {
          v25 = v6;
          goto LABEL_93;
        }
      }

      if ((BYTE2(v135) & 1) == 0)
      {
        if (*(v6 + v61 - 382) != 1)
        {
          goto LABEL_93;
        }

        goto LABEL_59;
      }

      v25 = v6 + v61;
LABEL_93:
      v5 = a2;
LABEL_94:
      sub_100281D90(v25, &v111);
      result = sub_10027DF50(&v111);
LABEL_95:
      v22 = v24 + 672;
      v23 += 672;
      if ((v24 + 672) == v5)
      {
        return result;
      }
    }

    v33 = (v25 + 1104);
    v34 = (v25 + 432);
    goto LABEL_41;
  }

  v18 = a4;
  v19 = a3 >> 1;
  v20 = (result + 672 * (a3 >> 1));
  if (a3 > a5)
  {
    sub_100290F38(result, result + 672 * (a3 >> 1), a3 >> 1, a4, a5);
    v21 = a3 - v19;
    sub_100290F38(v20, v5, v21, v18, a5);

    return sub_1002922B4(v6, v20, v5, v19, v21, v18, a5);
  }

  v108 = 0;
  *&v111 = a4;
  *(&v111 + 1) = &v108;
  sub_100291C14(result, result + 672 * (a3 >> 1), a3 >> 1, a4);
  v108 = a3 >> 1;
  v81 = a3 - v19;
  v82 = v18 + 672 * v19;
  sub_100291C14(v6 + 672 * (a3 >> 1), v5, v81, v82);
  v108 = a3;
  v83 = v18 + 672 * a3;
  v84 = v82;
  while (v84 != v83)
  {
    v85 = *(v84 + 455);
    if (v85 >= 0)
    {
      v86 = *(v84 + 455);
    }

    else
    {
      v86 = *(v84 + 440);
    }

    v87 = *(v18 + 455);
    v88 = v87;
    if ((v87 & 0x80u) != 0)
    {
      v87 = *(v18 + 440);
    }

    if (v86 != v87 || (v85 >= 0 ? (v89 = (v84 + 432)) : (v89 = *(v84 + 432)), v88 >= 0 ? (v90 = (v18 + 432)) : (v90 = *(v18 + 432)), memcmp(v89, v90, v86)))
    {
      v91 = (v84 + 432);
      v92 = (v18 + 432);
      goto LABEL_117;
    }

    v93 = *(v84 + 23);
    if (v93 >= 0)
    {
      v94 = *(v84 + 23);
    }

    else
    {
      v94 = *(v84 + 8);
    }

    v95 = *(v18 + 23);
    v96 = v95;
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v18 + 8);
    }

    if (v94 != v95 || (v93 >= 0 ? (v97 = v84) : (v97 = *v84), v96 >= 0 ? (v98 = v18) : (v98 = *v18), memcmp(v97, v98, v94)))
    {
      v91 = v84;
      v92 = v18;
LABEL_117:
      if (sub_1000068BC(v91, v92) <= 0)
      {
        goto LABEL_135;
      }

      goto LABEL_118;
    }

    if ((*(v84 + 290) & 1) != 0 || *(v18 + 290) != 1)
    {
LABEL_135:
      sub_100281D90(v6, v18);
      v18 += 672;
      goto LABEL_136;
    }

LABEL_118:
    sub_100281D90(v6, v84);
    v84 += 672;
LABEL_136:
    v6 += 672;
    if (v18 == v82)
    {
      while (v84 != v83)
      {
        sub_100281D90(v6, v84);
        v84 += 672;
        v6 += 672;
      }

      goto LABEL_143;
    }
  }

  while (v18 != v82)
  {
    sub_100281D90(v6, v18);
    v18 += 672;
    v6 += 672;
  }

LABEL_143:
  result = v111;
  if (v111)
  {
    v99 = *(&v111 + 1);
    if (**(&v111 + 1))
    {
      v100 = 0;
      do
      {
        ++v100;
        result = sub_10027DF50(result) + 672;
      }

      while (v100 < *v99);
    }
  }

  return result;
}

void sub_1002918CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100293180(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002918E0(uint64_t *a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v35 = *(v2 + 16);
  v34 = v4;
  *(v2 + 8) = 0u;
  *v2 = 0;
  v5 = *(v2 + 24);
  v37 = *(v2 + 40);
  v36 = v5;
  *(v2 + 32) = 0u;
  *(v2 + 24) = 0;
  v6 = *(v2 + 48);
  v39 = *(v2 + 64);
  v38 = v6;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0u;
  v7 = *(v2 + 72);
  v41 = *(v2 + 88);
  v40 = v7;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0u;
  v8 = *(v2 + 96);
  v43 = *(v2 + 112);
  v42 = v8;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0u;
  v9 = *(v2 + 120);
  v45 = *(v2 + 136);
  v44 = v9;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0u;
  v10 = *(v2 + 144);
  v47 = *(v2 + 160);
  v46 = v10;
  *(v2 + 160) = 0;
  *(v2 + 144) = 0u;
  v11 = *(v2 + 168);
  v49 = *(v2 + 184);
  v48 = v11;
  *(v2 + 184) = 0;
  *(v2 + 168) = 0u;
  v12 = *(v2 + 192);
  v51 = *(v2 + 208);
  v50 = v12;
  *(v2 + 208) = 0;
  *(v2 + 192) = 0u;
  v13 = *(v2 + 216);
  v53 = *(v2 + 232);
  v52 = v13;
  *(v2 + 232) = 0;
  *(v2 + 216) = 0u;
  v14 = *(v2 + 240);
  v55 = *(v2 + 256);
  v54 = v14;
  *(v2 + 256) = 0;
  *(v2 + 240) = 0u;
  v15 = *(v2 + 280);
  v56 = *(v2 + 264);
  v57 = v15;
  *(v2 + 280) = 0;
  *(v2 + 264) = 0u;
  v16 = *(v2 + 288);
  v17 = *(v2 + 304);
  v18 = *(v2 + 328);
  v60 = *(v2 + 312);
  v58 = v16;
  v59 = v17;
  v61 = v18;
  *(v2 + 328) = 0;
  *(v2 + 312) = 0u;
  v19 = *(v2 + 336);
  v63 = *(v2 + 352);
  v62 = v19;
  *(v2 + 352) = 0;
  *(v2 + 336) = 0u;
  v20 = *(v2 + 376);
  v64 = *(v2 + 360);
  v65 = v20;
  *(v2 + 376) = 0;
  *(v2 + 360) = 0u;
  v21 = *(v2 + 384);
  v67 = *(v2 + 400);
  v66 = v21;
  *(v2 + 400) = 0;
  *(v2 + 384) = 0u;
  v22 = *(v2 + 424);
  v68 = *(v2 + 408);
  v69 = v22;
  *(v2 + 424) = 0;
  *(v2 + 408) = 0u;
  v23 = *(v2 + 432);
  v71 = *(v2 + 448);
  v70 = v23;
  *(v2 + 448) = 0;
  *(v2 + 432) = 0u;
  v24 = *(v2 + 472);
  v72 = *(v2 + 456);
  v73 = v24;
  *(v2 + 472) = 0;
  *(v2 + 456) = 0u;
  v25 = *(v2 + 480);
  v75 = *(v2 + 496);
  v74 = v25;
  *(v2 + 496) = 0;
  *(v2 + 480) = 0u;
  v26 = *(v2 + 520);
  v76 = *(v2 + 504);
  v77 = v26;
  *(v2 + 520) = 0;
  *(v2 + 504) = 0u;
  v27 = *(v2 + 528);
  v79 = *(v2 + 544);
  v78 = v27;
  *(v2 + 544) = 0;
  *(v2 + 528) = 0u;
  v28 = *(v2 + 568);
  v80 = *(v2 + 552);
  v81 = v28;
  *(v2 + 568) = 0;
  *(v2 + 552) = 0u;
  v29 = *(v2 + 576);
  v83 = *(v2 + 592);
  v82 = v29;
  *(v2 + 592) = 0;
  *(v2 + 576) = 0u;
  v30 = *(v2 + 616);
  v84 = *(v2 + 600);
  v85 = v30;
  *(v2 + 616) = 0;
  *(v2 + 600) = 0u;
  v31 = *(v2 + 624);
  v87 = *(v2 + 640);
  v86 = v31;
  *(v2 + 640) = 0;
  *(v2 + 624) = 0u;
  memset(v90, 0, sizeof(v90));
  v32 = *(v2 + 664);
  v88 = *(v2 + 648);
  v89 = v32;
  sub_100281D90(v2, v3);
  sub_100281D90(v3, &v34);
  return sub_10027DF50(&v34);
}

double sub_100291C14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = a2;
  v7 = a1;
  if (a3 == 2)
  {
    v9 = (a2 - 672);
    v10 = (a1 + 432);
    v11 = *(a2 - 217);
    if (v11 >= 0)
    {
      v12 = *(a2 - 217);
    }

    else
    {
      v12 = *(a2 - 232);
    }

    v13 = *(a1 + 455);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a1 + 440);
    }

    if (v12 == v13 && (v11 >= 0 ? (v15 = (a2 - 240)) : (v15 = *(a2 - 240)), v14 >= 0 ? (v16 = (v7 + 432)) : (v16 = *v10), !memcmp(v15, v16, v12)))
    {
      v73 = *(v6 - 649);
      if (v73 >= 0)
      {
        v74 = *(v6 - 649);
      }

      else
      {
        v74 = *(v6 - 664);
      }

      v75 = *(v7 + 23);
      v76 = v75;
      if ((v75 & 0x80u) != 0)
      {
        v75 = *(v7 + 8);
      }

      if (v74 == v75)
      {
        v77 = v73 >= 0 ? (v6 - 672) : *v9;
        v78 = v76 >= 0 ? v7 : *v7;
        if (!memcmp(v77, v78, v74))
        {
          if ((*(v6 - 382) & 1) == 0 && *(v7 + 290) == 1)
          {
            goto LABEL_22;
          }

          goto LABEL_159;
        }
      }

      v17 = (v6 - 672);
      v18 = v7;
    }

    else
    {
      v17 = (v6 - 240);
      v18 = (v7 + 432);
    }

    if (sub_1000068BC(v17, v18) > 0)
    {
LABEL_22:
      sub_100281AB0(v4, (v6 - 672));
      v9 = v7;
LABEL_160:
      *&result = sub_100281AB0(v4 + 672, v9).n128_u64[0];
      return result;
    }

LABEL_159:
    sub_100281AB0(v4, v7);
    goto LABEL_160;
  }

  if (a3 == 1)
  {

    *&result = sub_100281AB0(a4, a1).n128_u64[0];
    return result;
  }

  if (a3 > 8)
  {
    v56 = 672 * (a3 >> 1);
    v57 = v56 + a1;
    sub_100290F38(a1, v56 + a1, a3 >> 1, a4, a3 >> 1);
    sub_100290F38(v56 + v7, v6, a3 - (a3 >> 1), v4 + v56, a3 - (a3 >> 1));
    v82 = 0;
    v58 = v56 + v7;
    while (1)
    {
      if (v58 == v6)
      {
        while (v7 != v57)
        {
          *&result = sub_100281AB0(v4, v7).n128_u64[0];
          v7 += 672;
          v4 += 672;
          ++v82;
        }

        return result;
      }

      v59 = *(v58 + 455);
      if (v59 >= 0)
      {
        v60 = *(v58 + 455);
      }

      else
      {
        v60 = *(v58 + 440);
      }

      v61 = *(v7 + 455);
      v62 = v61;
      if ((v61 & 0x80u) != 0)
      {
        v61 = *(v7 + 440);
      }

      if (v60 != v61)
      {
        break;
      }

      v63 = v59 >= 0 ? (v58 + 432) : *(v58 + 432);
      v64 = v62 >= 0 ? (v7 + 432) : *(v7 + 432);
      if (memcmp(v63, v64, v60))
      {
        break;
      }

      v67 = *(v58 + 23);
      if (v67 >= 0)
      {
        v68 = *(v58 + 23);
      }

      else
      {
        v68 = *(v58 + 8);
      }

      v69 = *(v7 + 23);
      v70 = v69;
      if ((v69 & 0x80u) != 0)
      {
        v69 = *(v7 + 8);
      }

      if (v68 != v69 || (v67 >= 0 ? (v71 = v58) : (v71 = *v58), v70 >= 0 ? (v72 = v7) : (v72 = *v7), memcmp(v71, v72, v68)))
      {
        v65 = v58;
        v66 = v7;
LABEL_116:
        if (sub_1000068BC(v65, v66) <= 0)
        {
          goto LABEL_134;
        }

        goto LABEL_117;
      }

      if ((*(v58 + 290) & 1) != 0 || *(v7 + 290) != 1)
      {
LABEL_134:
        *&result = sub_100281AB0(v4, v7).n128_u64[0];
        ++v82;
        v7 += 672;
        goto LABEL_135;
      }

LABEL_117:
      *&result = sub_100281AB0(v4, v58).n128_u64[0];
      ++v82;
      v58 += 672;
LABEL_135:
      v4 += 672;
      if (v7 == v57)
      {
        while (v58 != v6)
        {
          *&result = sub_100281AB0(v4, v58).n128_u64[0];
          v58 += 672;
          v4 += 672;
          ++v82;
        }

        return result;
      }
    }

    v65 = (v58 + 432);
    v66 = (v7 + 432);
    goto LABEL_116;
  }

  if (a1 == a2)
  {
    return result;
  }

  *&result = sub_100281AB0(a4, a1).n128_u64[0];
  v81 = 1;
  v19 = (v7 + 672);
  if (v7 + 672 == v6)
  {
    return result;
  }

  v20 = 0;
  v21 = v4;
  v79 = v6;
  do
  {
    v22 = v19;
    v23 = v21 + 672;
    v24 = (v7 + 1104);
    v25 = *(v7 + 1127);
    if (v25 >= 0)
    {
      v26 = *(v7 + 1127);
    }

    else
    {
      v26 = *(v7 + 1112);
    }

    v27 = *(v21 + 455);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(v21 + 440);
    }

    if (v26 == v27 && (v25 >= 0 ? (v29 = (v7 + 1104)) : (v29 = *v24), v28 >= 0 ? (v30 = (v21 + 432)) : (v30 = *(v21 + 432)), !memcmp(v29, v30, v26)))
    {
      v50 = *(v7 + 695);
      if (v50 >= 0)
      {
        v51 = *(v7 + 695);
      }

      else
      {
        v51 = *(v7 + 680);
      }

      v52 = *(v21 + 23);
      v53 = v52;
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(v21 + 8);
      }

      if (v51 == v52)
      {
        v54 = v50 >= 0 ? v22 : *v22;
        v55 = v53 >= 0 ? v21 : *v21;
        if (!memcmp(v54, v55, v51))
        {
          if ((*(v7 + 962) & 1) != 0 || *(v21 + 290) != 1)
          {
LABEL_96:
            *&result = sub_100281AB0(v21 + 672, v22).n128_u64[0];
            ++v81;
            goto LABEL_97;
          }

          goto LABEL_42;
        }
      }

      v31 = v22;
      v32 = v21;
    }

    else
    {
      v31 = (v7 + 1104);
      v32 = (v21 + 432);
    }

    if (sub_1000068BC(v31, v32) <= 0)
    {
      goto LABEL_96;
    }

LABEL_42:
    sub_100281AB0(v21 + 672, v21);
    ++v81;
    v33 = v4;
    if (v21 == v4)
    {
      goto LABEL_93;
    }

    v80 = v21 + 672;
    v34 = v20;
    while (1)
    {
      v35 = v4 + v34;
      v36 = *(v7 + 1127);
      if (v36 >= 0)
      {
        v37 = *(v7 + 1127);
      }

      else
      {
        v37 = *(v7 + 1112);
      }

      v38 = *(v35 - 217);
      v39 = v38;
      if ((v38 & 0x80u) != 0)
      {
        v38 = *(v35 - 232);
      }

      if (v37 != v38 || (v36 >= 0 ? (v40 = (v7 + 1104)) : (v40 = *v24), v39 >= 0 ? (v41 = (v4 + v34 - 240)) : (v41 = *(v4 + v34 - 240)), memcmp(v40, v41, v37)))
      {
        v42 = (v7 + 1104);
        v43 = (v4 + v34 - 240);
        goto LABEL_58;
      }

      v44 = *(v7 + 695);
      if (v44 >= 0)
      {
        v45 = *(v7 + 695);
      }

      else
      {
        v45 = *(v7 + 680);
      }

      v46 = *(v4 + v34 - 649);
      v47 = *(v4 + v34 - 664);
      if (v46 >= 0)
      {
        v47 = *(v4 + v34 - 649);
      }

      if (v45 != v47 || (v44 >= 0 ? (v48 = v22) : (v48 = *v22), v46 >= 0 ? (v49 = (v4 + v34 - 672)) : (v49 = *(v4 + v34 - 672)), memcmp(v48, v49, v45)))
      {
        v42 = v22;
        v43 = (v4 + v34 - 672);
LABEL_58:
        if (sub_1000068BC(v42, v43) <= 0)
        {
          goto LABEL_77;
        }

        goto LABEL_59;
      }

      if (*(v7 + 962))
      {
        break;
      }

      if (*(v4 + v34 - 382) != 1)
      {
LABEL_77:
        v33 = v21;
        goto LABEL_92;
      }

LABEL_59:
      v21 -= 672;
      sub_100281D90(v4 + v34, (v4 + v34 - 672));
      v34 -= 672;
      if (!v34)
      {
        v33 = v4;
        goto LABEL_92;
      }
    }

    v33 = v4 + v34;
LABEL_92:
    v6 = v79;
    v23 = v80;
LABEL_93:
    sub_100281D90(v33, v22);
LABEL_97:
    v19 = v22 + 42;
    v20 += 672;
    v21 = v23;
    v7 = v22;
  }

  while (v22 + 42 != v6);
  return result;
}

void sub_10029228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100293180(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002922B4(uint64_t result, __int128 *a2, __int128 *a3, int64_t a4, int64_t a5, __int128 *a6, int64_t a7)
{
  v201 = a2;
  v202 = result;
  v199 = a5;
  if (!a5)
  {
    return result;
  }

  v9 = result;
  v10 = a2;
  v11 = a2;
  v12 = result;
  do
  {
    if (v199 <= a7 || a4 <= a7)
    {
      if (a4 > v199)
      {
        if (v11 == a3)
        {
          return result;
        }

        v88 = 0;
        v89 = 0;
        do
        {
          v90 = &v11[v88];
          v91 = &a6[v88];
          v92 = v11[v88];
          *(v91 + 2) = *&v11[v88 + 1];
          *v91 = v92;
          *(v90 + 8) = 0uLL;
          *v90 = 0;
          v93 = *(&v11[v88 + 1] + 8);
          *(v91 + 5) = *(&v11[v88 + 2] + 1);
          *(v91 + 24) = v93;
          v90[2] = 0uLL;
          *(v90 + 3) = 0;
          v94 = v11[v88 + 3];
          *(v91 + 8) = *&v11[v88 + 4];
          v91[3] = v94;
          *(v90 + 56) = 0uLL;
          *(v90 + 6) = 0;
          v95 = *(&v11[v88 + 4] + 8);
          *(v91 + 11) = *(&v11[v88 + 5] + 1);
          *(v91 + 72) = v95;
          *(v90 + 11) = 0;
          *(v90 + 72) = 0uLL;
          v96 = v11[v88 + 6];
          *(v91 + 14) = *&v11[v88 + 7];
          v91[6] = v96;
          *(v90 + 14) = 0;
          v90[6] = 0uLL;
          v97 = *(&v11[v88 + 7] + 8);
          *(v91 + 17) = *(&v11[v88 + 8] + 1);
          *(v91 + 120) = v97;
          *(v90 + 17) = 0;
          *(v90 + 120) = 0uLL;
          v98 = v11[v88 + 9];
          *(v91 + 20) = *&v11[v88 + 10];
          v91[9] = v98;
          *(v90 + 20) = 0;
          v90[9] = 0uLL;
          v99 = *(&v11[v88 + 10] + 8);
          *(v91 + 23) = *(&v11[v88 + 11] + 1);
          *(v91 + 168) = v99;
          *(v90 + 23) = 0;
          *(v90 + 168) = 0uLL;
          v100 = v11[v88 + 12];
          *(v91 + 26) = *&v11[v88 + 13];
          v91[12] = v100;
          *(v90 + 26) = 0;
          v90[12] = 0uLL;
          v101 = *(&v11[v88 + 13] + 8);
          *(v91 + 29) = *(&v11[v88 + 14] + 1);
          *(v91 + 216) = v101;
          *(v90 + 29) = 0;
          *(v90 + 216) = 0uLL;
          v102 = v11[v88 + 15];
          *(v91 + 32) = *&v11[v88 + 16];
          v91[15] = v102;
          *(v90 + 32) = 0;
          v90[15] = 0uLL;
          v103 = (&v11[v88 + 16] + 8);
          v104 = *v103;
          *(v91 + 35) = *(&v11[v88 + 17] + 1);
          *(&a6[v88 + 16] + 8) = v104;
          *(v90 + 35) = 0;
          *v103 = 0uLL;
          v105 = v11[v88 + 18];
          *(v91 + 38) = *&v11[v88 + 19];
          v91[18] = v105;
          v106 = (&v11[v88 + 19] + 8);
          v107 = *v106;
          *(v91 + 41) = *(&v11[v88 + 20] + 1);
          *(&a6[v88 + 19] + 8) = v107;
          *(v90 + 41) = 0;
          *v106 = 0uLL;
          v108 = v11[v88 + 21];
          *(v91 + 44) = *&v11[v88 + 22];
          v91[21] = v108;
          *(v90 + 44) = 0;
          v109 = (&v11[v88 + 22] + 8);
          v110 = *v109;
          v111 = *(&v11[v88 + 23] + 1);
          v90[21] = 0uLL;
          *(v91 + 47) = v111;
          *(&a6[v88 + 22] + 8) = v110;
          *(v90 + 47) = 0;
          v112 = v11[v88 + 24];
          v113 = *&v11[v88 + 25];
          *v109 = 0uLL;
          *(v91 + 50) = v113;
          v91[24] = v112;
          *(v90 + 50) = 0;
          v114 = (&v11[v88 + 25] + 8);
          v90[24] = 0uLL;
          v115 = *v114;
          *(v91 + 53) = *(&v11[v88 + 26] + 1);
          *(&a6[v88 + 25] + 8) = v115;
          *(v90 + 53) = 0;
          *v114 = 0uLL;
          v116 = v11[v88 + 27];
          *(v91 + 56) = *&v11[v88 + 28];
          v91[27] = v116;
          *(v90 + 56) = 0;
          v90[27] = 0uLL;
          v117 = (&v11[v88 + 28] + 8);
          v118 = *v117;
          *(v91 + 59) = *(&v11[v88 + 29] + 1);
          *(&a6[v88 + 28] + 8) = v118;
          *(v90 + 59) = 0;
          *v117 = 0uLL;
          v119 = v11[v88 + 30];
          *(v91 + 62) = *&v11[v88 + 31];
          v91[30] = v119;
          *(v90 + 62) = 0;
          v120 = (&v11[v88 + 31] + 8);
          v121 = *v120;
          v122 = *(&v11[v88 + 32] + 1);
          v90[30] = 0uLL;
          *(v91 + 65) = v122;
          *(&a6[v88 + 31] + 8) = v121;
          *(v90 + 65) = 0;
          v123 = v11[v88 + 33];
          v124 = *&v11[v88 + 34];
          *v120 = 0uLL;
          *(v91 + 68) = v124;
          v91[33] = v123;
          *(v90 + 68) = 0;
          v125 = (&v11[v88 + 34] + 8);
          v90[33] = 0uLL;
          v126 = *v125;
          *(v91 + 71) = *(&v11[v88 + 35] + 1);
          *(&a6[v88 + 34] + 8) = v126;
          *(v90 + 71) = 0;
          *v125 = 0uLL;
          v127 = v11[v88 + 36];
          *(v91 + 74) = *&v11[v88 + 37];
          v91[36] = v127;
          *(v90 + 74) = 0;
          v90[36] = 0uLL;
          v128 = (&v11[v88 + 37] + 8);
          v129 = *v128;
          *(v91 + 77) = *(&v11[v88 + 38] + 1);
          *(&a6[v88 + 37] + 8) = v129;
          *(v90 + 77) = 0;
          *v128 = 0uLL;
          v130 = v11[v88 + 39];
          *(v91 + 80) = *&v11[v88 + 40];
          v91[39] = v130;
          *(v90 + 80) = 0;
          v131 = *(&v11[v88 + 40] + 8);
          LOBYTE(v128) = BYTE8(v11[v88 + 41]);
          v90[39] = 0uLL;
          *(v91 + 664) = v128;
          *(&a6[v88 + 40] + 8) = v131;
          ++v89;
          v88 += 42;
        }

        while (v90 + 42 != a3);
        v132 = (a3 - 42);
        v133 = &a6[v88];
        while (1)
        {
          if (v11 == v9)
          {
            while (v133 != a6)
            {
              v133 -= 42;
              result = sub_100281D90(v132, v133);
              v132 -= 672;
            }

            goto LABEL_215;
          }

          v134 = v11 - 42;
          v135 = *(v133 - 217);
          if (v135 >= 0)
          {
            v136 = *(v133 - 217);
          }

          else
          {
            v136 = *(v133 - 29);
          }

          v137 = *(v11 - 217);
          v138 = v137;
          if ((v137 & 0x80u) != 0)
          {
            v137 = *(v11 - 29);
          }

          if (v136 == v137 && (v135 >= 0 ? (v139 = v133 - 15) : (v139 = *(v133 - 30)), v138 >= 0 ? (v140 = v11 - 15) : (v140 = *(v11 - 30)), !memcmp(v139, v140, v136)))
          {
            v144 = *(v133 - 649);
            if (v144 >= 0)
            {
              v145 = *(v133 - 649);
            }

            else
            {
              v145 = *(v133 - 83);
            }

            v146 = *(v11 - 649);
            v147 = v146;
            if ((v146 & 0x80u) != 0)
            {
              v146 = *(v11 - 83);
            }

            if (v145 == v146)
            {
              v148 = v144 >= 0 ? v133 - 42 : *(v133 - 84);
              v149 = v147 >= 0 ? v11 - 42 : *v134;
              if (!memcmp(v148, v149, v145))
              {
                if ((*(v133 - 382) & 1) == 0)
                {
                  v143 = v11 - 42;
                  if (*(v11 - 382))
                  {
                    goto LABEL_151;
                  }
                }

LABEL_150:
                v134 = v133 - 42;
                v143 = v11;
                v133 -= 42;
                goto LABEL_151;
              }
            }

            v141 = (v133 - 42);
            v142 = (v11 - 42);
          }

          else
          {
            v141 = (v133 - 15);
            v142 = (v11 - 15);
          }

          v143 = v11 - 42;
          if (sub_1000068BC(v141, v142) <= 0)
          {
            goto LABEL_150;
          }

LABEL_151:
          result = sub_100281D90(v132, v134);
          v132 -= 672;
          v11 = v143;
          if (v133 == a6)
          {
            goto LABEL_215;
          }
        }
      }

      if (v9 == v11)
      {
        return result;
      }

      v89 = 0;
      v150 = a6;
      v151 = v9;
      do
      {
        v152 = *v151;
        *(v150 + 16) = *(v151 + 16);
        *v150 = v152;
        *(v151 + 8) = 0uLL;
        *v151 = 0;
        v153 = *(v151 + 24);
        *(v150 + 40) = *(v151 + 40);
        *(v150 + 24) = v153;
        *(v151 + 32) = 0uLL;
        *(v151 + 24) = 0;
        v154 = *(v151 + 48);
        *(v150 + 64) = *(v151 + 64);
        *(v150 + 48) = v154;
        *(v151 + 56) = 0uLL;
        *(v151 + 48) = 0;
        v155 = *(v151 + 72);
        *(v150 + 88) = *(v151 + 88);
        *(v150 + 72) = v155;
        *(v151 + 88) = 0;
        *(v151 + 72) = 0uLL;
        v156 = *(v151 + 96);
        *(v150 + 112) = *(v151 + 112);
        *(v150 + 96) = v156;
        *(v151 + 112) = 0;
        *(v151 + 96) = 0uLL;
        v157 = *(v151 + 120);
        *(v150 + 136) = *(v151 + 136);
        *(v150 + 120) = v157;
        *(v151 + 136) = 0;
        *(v151 + 120) = 0uLL;
        v158 = *(v151 + 144);
        *(v150 + 160) = *(v151 + 160);
        *(v150 + 144) = v158;
        *(v151 + 160) = 0;
        *(v151 + 144) = 0uLL;
        v159 = *(v151 + 168);
        *(v150 + 184) = *(v151 + 184);
        *(v150 + 168) = v159;
        *(v151 + 184) = 0;
        *(v151 + 168) = 0uLL;
        v160 = *(v151 + 192);
        *(v150 + 208) = *(v151 + 208);
        *(v150 + 192) = v160;
        *(v151 + 208) = 0;
        *(v151 + 192) = 0uLL;
        v161 = *(v151 + 216);
        *(v150 + 232) = *(v151 + 232);
        *(v150 + 216) = v161;
        *(v151 + 232) = 0;
        *(v151 + 216) = 0uLL;
        v162 = *(v151 + 240);
        *(v150 + 256) = *(v151 + 256);
        *(v150 + 240) = v162;
        *(v151 + 256) = 0;
        *(v151 + 240) = 0uLL;
        v163 = *(v151 + 264);
        *(v150 + 280) = *(v151 + 280);
        *(v150 + 264) = v163;
        *(v151 + 280) = 0;
        *(v151 + 264) = 0uLL;
        v164 = *(v151 + 288);
        *(v150 + 304) = *(v151 + 304);
        *(v150 + 288) = v164;
        v165 = *(v151 + 312);
        *(v150 + 328) = *(v151 + 328);
        *(v150 + 312) = v165;
        *(v151 + 328) = 0;
        *(v151 + 312) = 0uLL;
        v166 = *(v151 + 336);
        *(v150 + 352) = *(v151 + 352);
        *(v150 + 336) = v166;
        *(v151 + 352) = 0;
        *(v151 + 336) = 0uLL;
        v167 = *(v151 + 360);
        *(v150 + 376) = *(v151 + 376);
        *(v150 + 360) = v167;
        *(v151 + 376) = 0;
        *(v151 + 360) = 0uLL;
        v168 = *(v151 + 384);
        *(v150 + 400) = *(v151 + 400);
        *(v150 + 384) = v168;
        *(v151 + 400) = 0;
        *(v151 + 384) = 0uLL;
        v169 = *(v151 + 408);
        *(v150 + 424) = *(v151 + 424);
        *(v150 + 408) = v169;
        *(v151 + 424) = 0;
        *(v151 + 408) = 0uLL;
        v170 = *(v151 + 432);
        *(v150 + 448) = *(v151 + 448);
        *(v150 + 432) = v170;
        *(v151 + 448) = 0;
        *(v151 + 432) = 0uLL;
        v171 = *(v151 + 456);
        *(v150 + 472) = *(v151 + 472);
        *(v150 + 456) = v171;
        *(v151 + 472) = 0;
        *(v151 + 456) = 0uLL;
        v172 = *(v151 + 480);
        *(v150 + 496) = *(v151 + 496);
        *(v150 + 480) = v172;
        *(v151 + 496) = 0;
        *(v151 + 480) = 0uLL;
        v173 = *(v151 + 504);
        *(v150 + 520) = *(v151 + 520);
        *(v150 + 504) = v173;
        *(v151 + 520) = 0;
        *(v151 + 504) = 0uLL;
        v174 = *(v151 + 528);
        *(v150 + 544) = *(v151 + 544);
        *(v150 + 528) = v174;
        *(v151 + 544) = 0;
        *(v151 + 528) = 0uLL;
        v175 = *(v151 + 552);
        *(v150 + 568) = *(v151 + 568);
        *(v150 + 552) = v175;
        *(v151 + 568) = 0;
        *(v151 + 552) = 0uLL;
        v176 = *(v151 + 576);
        *(v150 + 592) = *(v151 + 592);
        *(v150 + 576) = v176;
        *(v151 + 592) = 0;
        *(v151 + 576) = 0uLL;
        v177 = *(v151 + 600);
        *(v150 + 616) = *(v151 + 616);
        *(v150 + 600) = v177;
        *(v151 + 616) = 0;
        *(v151 + 600) = 0uLL;
        v178 = *(v151 + 624);
        *(v150 + 640) = *(v151 + 640);
        *(v150 + 624) = v178;
        *(v151 + 640) = 0;
        *(v151 + 624) = 0uLL;
        v179 = *(v151 + 648);
        *(v150 + 664) = *(v151 + 664);
        *(v150 + 648) = v179;
        ++v89;
        v151 += 672;
        v150 += 672;
      }

      while (v151 != v11);
      v180 = a6;
      while (1)
      {
        if (v11 == a3)
        {
          do
          {
            result = sub_100281D90(v9, v180);
            v9 += 672;
            v35 = v150 - 672 == v180;
            v180 += 672;
          }

          while (!v35);
LABEL_215:
          if (a6)
          {
            do
            {
              result = sub_10027DF50(a6);
              a6 += 42;
              --v89;
            }

            while (v89);
          }

          return result;
        }

        v181 = *(v11 + 455);
        if (v181 >= 0)
        {
          v182 = *(v11 + 455);
        }

        else
        {
          v182 = *(v11 + 55);
        }

        v183 = *(v180 + 455);
        v184 = v183;
        if ((v183 & 0x80u) != 0)
        {
          v183 = *(v180 + 440);
        }

        if (v182 != v183)
        {
          break;
        }

        v185 = v181 >= 0 ? v11 + 27 : *(v11 + 54);
        v186 = v184 >= 0 ? (v180 + 432) : *(v180 + 432);
        if (memcmp(v185, v186, v182))
        {
          break;
        }

        v189 = *(v11 + 23);
        if (v189 >= 0)
        {
          v190 = *(v11 + 23);
        }

        else
        {
          v190 = *(v11 + 1);
        }

        v191 = *(v180 + 23);
        v192 = v191;
        if ((v191 & 0x80u) != 0)
        {
          v191 = *(v180 + 8);
        }

        if (v190 != v191 || (v189 >= 0 ? (v193 = v11) : (v193 = *v11), v192 >= 0 ? (v194 = v180) : (v194 = *v180), memcmp(v193, v194, v190)))
        {
          v187 = v11;
          v188 = v180;
LABEL_192:
          if (sub_1000068BC(v187, v188) <= 0)
          {
            goto LABEL_210;
          }

          goto LABEL_193;
        }

        if ((*(v11 + 290) & 1) != 0 || *(v180 + 290) != 1)
        {
LABEL_210:
          result = sub_100281D90(v9, v180);
          v180 += 672;
          goto LABEL_211;
        }

LABEL_193:
        result = sub_100281D90(v9, v11);
        v11 += 42;
LABEL_211:
        v9 += 672;
        if (v150 == v180)
        {
          goto LABEL_215;
        }
      }

      v187 = (v11 + 27);
      v188 = (v180 + 432);
      goto LABEL_192;
    }

    if (!a4)
    {
      return result;
    }

    v13 = -a4;
    for (i = v9 + 672; ; i += 672)
    {
      v15 = (i - 240);
      v16 = *(v11 + 455);
      if (v16 >= 0)
      {
        v17 = *(v11 + 455);
      }

      else
      {
        v17 = *(v11 + 55);
      }

      v18 = *(i - 217);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(i - 232);
      }

      if (v17 != v18 || (v16 >= 0 ? (v20 = v11 + 27) : (v20 = *(v11 + 54)), v19 >= 0 ? (v21 = (i - 240)) : (v21 = *v15), memcmp(v20, v21, v17)))
      {
        v22 = (v11 + 27);
        goto LABEL_21;
      }

      v15 = (i - 672);
      v24 = *(v11 + 23);
      if (v24 >= 0)
      {
        v25 = *(v11 + 23);
      }

      else
      {
        v25 = *(v11 + 1);
      }

      v26 = *(i - 649);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(i - 664);
      }

      if (v25 == v26)
      {
        v28 = v24 >= 0 ? v11 : *v11;
        v29 = v27 >= 0 ? (i - 672) : *v15;
        result = memcmp(v28, v29, v25);
        if (!result)
        {
          break;
        }
      }

      v22 = v11;
LABEL_21:
      result = sub_1000068BC(v22, v15);
      if (result > 0)
      {
        goto LABEL_41;
      }

LABEL_22:
      v9 += 672;
      v202 = i;
      v12 = v9;
      if (__CFADD__(v13++, 1))
      {
        return result;
      }
    }

    if ((*(v11 + 290) & 1) != 0 || (*(i - 382) & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_41:
    v30 = -v13;
    v31 = v199;
    v196 = a6;
    if (-v13 >= v199)
    {
      if (v13 == -1)
      {
        return sub_1002918E0(&v202, &v201);
      }

      v195 = v30 / 2;
      v33 = v9 + 672 * (v30 / 2);
      v37 = a3;
      if (a3 == v11)
      {
        v56 = a3;
        goto LABEL_120;
      }

      v55 = 0xCF3CF3CF3CF3CF3DLL * ((a3 - v11) >> 5);
      v200 = (v33 + 432);
      v56 = v11;
      while (2)
      {
        v57 = v11;
        v58 = v55 >> 1;
        v59 = v56;
        v60 = v56 + 672 * (v55 >> 1);
        v61 = *(v60 + 455);
        if (v61 >= 0)
        {
          v62 = *(v60 + 455);
        }

        else
        {
          v62 = *(v60 + 440);
        }

        v63 = *(v33 + 455);
        v64 = v63;
        v65 = v33;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(v33 + 440);
        }

        if (v62 != v63 || (v61 >= 0 ? (v66 = (v60 + 432)) : (v66 = *(v60 + 432)), v64 >= 0 ? (v67 = v200) : (v67 = *v200), memcmp(v66, v67, v62)))
        {
          v68 = sub_1000068BC((v60 + 432), v200) <= 0;
          v33 = v65;
          goto LABEL_96;
        }

        v69 = *(v60 + 23);
        if (v69 >= 0)
        {
          v70 = *(v60 + 23);
        }

        else
        {
          v70 = *(v60 + 8);
        }

        v33 = v65;
        v71 = *(v65 + 23);
        v72 = v71;
        if (v71 < 0)
        {
          v71 = v65[1];
        }

        if (v70 == v71 && (v69 >= 0 ? (v73 = v60) : (v73 = *v60), v72 >= 0 ? (v74 = v65) : (v74 = *v65), v75 = memcmp(v73, v74, v70), v33 = v65, !v75))
        {
          if (*(v60 + 290))
          {
            v11 = v57;
            v56 = v59;
          }

          else
          {
            v77 = *(v65 + 290);
            v11 = v57;
            v56 = v59;
            if (v77 == 1)
            {
              goto LABEL_97;
            }
          }
        }

        else
        {
          v76 = sub_1000068BC(v60, v33);
          v33 = v65;
          v68 = v76 <= 0;
LABEL_96:
          v11 = v57;
          v56 = v59;
          if (!v68)
          {
LABEL_97:
            v56 = v60 + 672;
            v58 = v55 + ~v58;
          }
        }

        v55 = v58;
        if (!v58)
        {
          v37 = a3;
          v31 = v199;
LABEL_120:
          v32 = 0xCF3CF3CF3CF3CF3DLL * ((v56 - v11) >> 5);
          v79 = v11;
          v11 = v56;
          v78 = v195;
          goto LABEL_121;
        }

        continue;
      }
    }

    v32 = v199 / 2;
    v33 = v10;
    v34 = &v10[42 * (v199 / 2)];
    v36 = v10 - v12;
    v35 = v10 == v12;
    v37 = a3;
    if (v35)
    {
      goto LABEL_118;
    }

    v38 = 0xCF3CF3CF3CF3CF3DLL * (v36 >> 5);
    while (2)
    {
      v39 = v38 >> 1;
      v40 = v12 + 672 * (v38 >> 1);
      v41 = *(v34 + 455);
      if (v41 >= 0)
      {
        v42 = *(v34 + 455);
      }

      else
      {
        v42 = *(v34 + 55);
      }

      v43 = *(v40 + 455);
      v44 = v43;
      if ((v43 & 0x80u) != 0)
      {
        v43 = *(v40 + 440);
      }

      if (v42 != v43 || (v41 >= 0 ? (v45 = v34 + 27) : (v45 = *(v34 + 54)), v44 >= 0 ? (v46 = (v40 + 432)) : (v46 = *(v40 + 432)), memcmp(v45, v46, v42)))
      {
        v47 = (v34 + 27);
        v48 = (v40 + 432);
        goto LABEL_58;
      }

      v49 = *(v34 + 23);
      if (v49 >= 0)
      {
        v50 = *(v34 + 23);
      }

      else
      {
        v50 = *(v34 + 1);
      }

      v51 = *(v40 + 23);
      v52 = v51;
      if ((v51 & 0x80u) != 0)
      {
        v51 = *(v40 + 8);
      }

      if (v50 == v51 && (v49 >= 0 ? (v53 = v34) : (v53 = *v34), v52 >= 0 ? (v54 = (v12 + 672 * (v38 >> 1))) : (v54 = *v40), !memcmp(v53, v54, v50)))
      {
        if ((*(v34 + 290) & 1) != 0 || (*(v40 + 290) & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v47 = v34;
        v48 = (v12 + 672 * (v38 >> 1));
LABEL_58:
        if (sub_1000068BC(v47, v48) <= 0)
        {
LABEL_59:
          v12 = v40 + 672;
          v39 = v38 + ~v39;
        }
      }

      v38 = v39;
      if (v39)
      {
        continue;
      }

      break;
    }

    v33 = v12;
    v37 = a3;
    v31 = v199;
    v32 = v199 / 2;
LABEL_118:
    v78 = 0xCF3CF3CF3CF3CF3DLL * ((v33 - v9) >> 5);
    v79 = v11;
    v12 = v9;
    v11 = v34;
LABEL_121:
    v80 = v11;
    if (v33 != v79)
    {
      v80 = v33;
      if (v11 != v79)
      {
        v81 = v33;
        v82 = v32;
        v83 = sub_1002931E0(v33, v79, v11);
        v32 = v82;
        v33 = v81;
        v80 = v83;
      }
    }

    a4 = -(v78 + v13);
    v84 = v31 - v32;
    if ((v78 + v32) >= (v31 - (v78 + v32) - v13))
    {
      v86 = v11;
      v11 = v33;
      v87 = v32;
      result = sub_1002922B4(v80, v86, v37, -(v78 + v13), v84, v196, a7);
      v10 = v11;
      v84 = v87;
      a4 = v78;
      a6 = v196;
      a3 = v80;
    }

    else
    {
      a3 = v37;
      v85 = v78;
      a6 = v196;
      result = sub_1002922B4(v9, v33, v80, v85, v32, v196, a7);
      v202 = v80;
      v9 = v80;
      v12 = v80;
      v10 = v11;
    }

    v201 = v11;
    v199 = v84;
  }

  while (v84);
  return result;
}

uint64_t *sub_100293180(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        ++v4;
        v2 = sub_10027DF50(v2) + 672;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

__int128 *sub_1002931E0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    sub_1002918E0(&v11, &v10);
    v5 = (v11 + 672);
    v6 = v10 + 42;
    v10 = v6;
    v11 += 672;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        sub_1002918E0(&v11, &v10);
        v7 = (v11 + 672);
        v8 = v10 + 42;
        v10 = v8;
        v11 += 672;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

uint64_t sub_100293290(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100293328(uint64_t a1)
{
  *a1 = off_101E37188;
  if (*(a1 + 1360) == 1)
  {
    sub_1002813D0(a1 + 80);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10029339C(uint64_t a1)
{
  *a1 = off_101E37188;
  if (*(a1 + 1360) == 1)
  {
    sub_1002813D0(a1 + 80);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1002934DC(_Unwind_Exception *a1)
{
  v3 = v1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10000FF50((v1 + 4));
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_100293518(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37188;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(a2 + 32, a1 + 32);
  v5 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10028036C((a2 + 80), a1 + 80);
}

void sub_1002935A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10000FF50(v1 + 32);
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1002935DC(uint64_t a1)
{
  if (*(a1 + 1360) == 1)
  {
    sub_1002813D0(a1 + 80);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100293648(uint64_t a1)
{
  if (*(a1 + 1360) == 1)
  {
    sub_1002813D0(a1 + 80);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1002936B0(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6 && a1[2])
    {
      sub_1000224C8(v10, (a1 + 4));
      v7 = a1[9];
      v12 = a1[8];
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10028036C(v14, (a1 + 10));
      v14[1288] = v4;
      v9[0] = 0;
      v9[1] = 0;
      sub_100004AA0(v9, (v5 + 8));
      operator new();
    }
  }

  else
  {
    v6 = 0;
  }

  ctu::OsLogContext::OsLogContext(v10, kCtLoggingSystemName, "cp.tr.ctr");
  v8 = v11;
  ctu::OsLogContext::~OsLogContext(v10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  sub_10000FFD0((a1 + 4), 0);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1002938CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100293948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100293994(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1280] = 0;
  if (*(a2 + 1280) == 1)
  {
    sub_1002939FC(a1, a2);
    a1[1280] = 1;
  }

  return a1;
}

void sub_1002939DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1280) == 1)
  {
    sub_1002813D0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002939FC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 56) = 0uLL;
  *(a2 + 6) = 0;
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 72) = 0uLL;
  *(a2 + 11) = 0;
  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  a2[6] = 0uLL;
  *(a2 + 14) = 0;
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 120) = 0uLL;
  *(a2 + 17) = 0;
  sub_100DFEE00((a1 + 144), a2 + 9);
  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 24) = 0;
  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  v12 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v12;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 30) = 0;
  v13 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *(a1 + 264) = v13;
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  v14 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v14;
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  v15 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 312) = v15;
  *(a2 + 39) = 0;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  v16 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v16;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  v17 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *(a1 + 360) = v17;
  *(a2 + 45) = 0;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  v18 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v18;
  *(a2 + 48) = 0;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  v19 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *(a1 + 408) = v19;
  *(a2 + 51) = 0;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  v20 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v20;
  *(a2 + 54) = 0;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  v21 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 59);
  *(a1 + 456) = v21;
  *(a2 + 57) = 0;
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  v22 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v22;
  *(a2 + 60) = 0;
  *(a2 + 61) = 0;
  *(a2 + 62) = 0;
  v23 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 504) = v23;
  *(a2 + 63) = 0;
  *(a2 + 64) = 0;
  *(a2 + 65) = 0;
  *(a1 + 528) = 0;
  *(a1 + 680) = 0;
  if (*(a2 + 680) == 1)
  {
    *(a1 + 544) = 0;
    *(a1 + 528) = 0u;
    *(a1 + 528) = a2[33];
    *(a1 + 544) = *(a2 + 68);
    *(a2 + 68) = 0;
    a2[33] = 0u;
    *(a1 + 552) = 0;
    *(a1 + 576) = 0;
    if (*(a2 + 576) == 1)
    {
      v24 = *(a2 + 552);
      *(a1 + 568) = *(a2 + 71);
      *(a1 + 552) = v24;
      *(a2 + 71) = 0;
      *(a2 + 70) = 0;
      *(a2 + 69) = 0;
      *(a1 + 576) = 1;
    }

    *(a1 + 584) = 0;
    *(a1 + 608) = 0;
    if (*(a2 + 608) == 1)
    {
      v25 = *(a2 + 584);
      *(a1 + 600) = *(a2 + 75);
      *(a1 + 584) = v25;
      *(a2 + 75) = 0;
      *(a2 + 74) = 0;
      *(a2 + 73) = 0;
      *(a1 + 608) = 1;
    }

    *(a1 + 616) = 0;
    *(a1 + 640) = 0;
    if (*(a2 + 640) == 1)
    {
      v26 = *(a2 + 616);
      *(a1 + 632) = *(a2 + 79);
      *(a1 + 616) = v26;
      *(a2 + 79) = 0;
      *(a2 + 78) = 0;
      *(a2 + 77) = 0;
      *(a1 + 640) = 1;
    }

    *(a1 + 648) = *(a2 + 162);
    v27 = a2[41];
    *(a1 + 672) = *(a2 + 84);
    *(a1 + 656) = v27;
    *(a2 + 84) = 0;
    *(a2 + 83) = 0;
    *(a2 + 82) = 0;
    *(a1 + 680) = 1;
  }

  sub_100293F80(a1 + 688, (a2 + 43));
  v28 = *(a2 + 856);
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 856) = v28;
  *(a2 + 856) = 0u;
  *(a2 + 109) = 0;
  *(a1 + 880) = 0;
  *(a1 + 904) = 0;
  if (*(a2 + 904) == 1)
  {
    v29 = a2[55];
    *(a1 + 896) = *(a2 + 112);
    *(a1 + 880) = v29;
    *(a2 + 112) = 0;
    *(a2 + 111) = 0;
    *(a2 + 110) = 0;
    *(a1 + 904) = 1;
  }

  v30 = a2[57];
  *(a1 + 928) = *(a2 + 464);
  *(a1 + 912) = v30;
  v31 = *(a2 + 936);
  *(a1 + 952) = *(a2 + 119);
  *(a1 + 936) = v31;
  *(a2 + 119) = 0;
  *(a2 + 118) = 0;
  *(a2 + 117) = 0;
  v32 = a2[60];
  *(a1 + 976) = *(a2 + 122);
  *(a1 + 960) = v32;
  *(a2 + 122) = 0;
  *(a2 + 121) = 0;
  *(a2 + 120) = 0;
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 992) = 0;
  *(a1 + 1112) = 0;
  if (*(a2 + 1112) == 1)
  {
    v33 = a2[62];
    *(a1 + 1008) = *(a2 + 126);
    *(a1 + 992) = v33;
    *(a2 + 126) = 0;
    *(a2 + 125) = 0;
    *(a2 + 124) = 0;
    v34 = *(a2 + 1032);
    *(a1 + 1016) = *(a2 + 1016);
    *(a1 + 1032) = v34;
    v35 = *(a2 + 1048);
    v36 = *(a2 + 1064);
    v37 = *(a2 + 1096);
    *(a1 + 1080) = *(a2 + 1080);
    *(a1 + 1096) = v37;
    *(a1 + 1048) = v35;
    *(a1 + 1064) = v36;
    *(a1 + 1112) = 1;
  }

  v38 = a2[70];
  v39 = a2[71];
  *(a1 + 1152) = *(a2 + 144);
  *(a1 + 1136) = v39;
  *(a1 + 1120) = v38;
  *(a1 + 1160) = *(a2 + 145);
  *(a1 + 1168) = *(a2 + 146);
  *(a2 + 1160) = 0u;
  *(a1 + 1176) = *(a2 + 147);
  *(a1 + 1184) = *(a2 + 148);
  *(a2 + 1176) = 0u;
  *(a1 + 1192) = *(a2 + 149);
  *(a1 + 1200) = *(a2 + 150);
  *(a2 + 1192) = 0u;
  *(a1 + 1208) = *(a2 + 151);
  *(a1 + 1216) = *(a2 + 152);
  *(a2 + 1208) = 0u;
  v40 = *(a2 + 612);
  *(a1 + 1226) = *(a2 + 1226);
  *(a1 + 1224) = v40;
  *(a1 + 1232) = a2[77];
  a2[77] = 0u;
  sub_10010BE30(a1 + 1248, (a2 + 78));
  return a1;
}

void sub_100293F24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100293F80(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    if (*(a2 + 32) == 1)
    {
      v2 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v2;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a1 + 32) = 1;
    }

    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    if (*(a2 + 64) == 1)
    {
      v3 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v3;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 40) = 0;
      *(a1 + 64) = 1;
    }

    *(a1 + 72) = 0;
    *(a1 + 96) = 0;
    if (*(a2 + 96) == 1)
    {
      v4 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v4;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 72) = 0;
      *(a1 + 96) = 1;
    }

    *(a1 + 104) = *(a2 + 104);
    v5 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v5;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    result = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = result;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    *(a1 + 160) = 1;
  }

  return result;
}

uint64_t *sub_100294088(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  if (*(v1 + 1336))
  {
    if ((*(v1 + 1328) & 1) == 0)
    {
      sub_1000D1644();
    }

    (*(**(v1 + 32) + 312))(*(v1 + 32), v1 + 48);
    v2 = *(v1 + 1336) == 0;
  }

  else
  {
    v2 = 1;
  }

  sub_10000FFD0(v1, v2);
  sub_100294148(&v5);
  return sub_1000049E0(&v4);
}

void sub_10029412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100294148(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100294148(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 1328) == 1)
    {
      sub_1002813D0(v1 + 48);
    }

    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10000FF50(v1);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002941B4(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 25);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1002942A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E37208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100294304(void *a1)
{
  *a1 = off_101E37258;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  return a1;
}

void sub_100294368(void *a1)
{
  *a1 = off_101E37258;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_100294480(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E37258;
  *(a2 + 8) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 8);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1002944F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 8);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_100294554(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(__p);
}

uint64_t *sub_1002945AC(uint64_t a1, char *a2, char *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 24);
  v7 = (a1 + 16);
  result = sub_100294650(v5, (a1 + 16), &unk_101802C98, &v7);
  *(result + 26) = v3;
  *(result + 27) = v4;
  return result;
}

uint64_t sub_100294604(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100294650(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 25);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100294724(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_1002947A4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10002B644(v1 + 40);
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10029480C(void *a1)
{
  v31 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = v3[21];
        for (i = v3[22]; v6 != i; v6 += 672)
        {
          v8 = a1[3];
          v11 = *(v8 + 8);
          v9 = v8 + 8;
          v10 = v11;
          if (!v11)
          {
            goto LABEL_13;
          }

          v12 = v6[291];
          v13 = v9;
          do
          {
            v14 = *(v10 + 25);
            v15 = v14 >= v12;
            v16 = v14 < v12;
            if (v15)
            {
              v13 = v10;
            }

            v10 = *(v10 + 8 * v16);
          }

          while (v10);
          if (v13 != v9 && v12 >= *(v13 + 25))
          {
            v18 = sub_100294B6C(a1[3], v6 + 291);
            if ((*v18 & 1) == 0)
            {
              v19 = v18[1];
              v20 = v3[5];
              v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              switch(v19)
              {
                case 6:
                  if (v21)
                  {
                    v27 = v6 + 24;
                    if (v6[47] < 0)
                    {
                      v27 = *v27;
                    }

                    *buf = 136315138;
                    v33 = v27;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s does not have matching certs", buf, 0xCu);
                  }

                  v23 = 5;
                  break;
                case 3:
                  if (v21)
                  {
                    v26 = v6 + 24;
                    if (v6[47] < 0)
                    {
                      v26 = *v26;
                    }

                    *buf = 136315138;
                    v33 = v26;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s is regulatory restrict outside regulated area", buf, 0xCu);
                  }

                  v23 = 3;
                  break;
                case 2:
                  if (v21)
                  {
                    v22 = v6 + 24;
                    if (v6[47] < 0)
                    {
                      v22 = *v22;
                    }

                    *buf = 136315138;
                    v33 = v22;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s is regulatory restrict in regulated area", buf, 0xCu);
                  }

                  v23 = 2;
                  break;
                default:
                  if (v21)
                  {
                    v28 = v6 + 24;
                    if (v6[47] < 0)
                    {
                      v28 = *v28;
                    }

                    *buf = 136315138;
                    v33 = v28;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s is regulatory restrict due to unknown location", buf, 0xCu);
                  }

                  v23 = 4;
                  break;
              }

              v6[305] = v23;
            }
          }

          else
          {
LABEL_13:
            v17 = v3[5];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v24 = "china";
              if (!v6[291])
              {
                v24 = "gsma";
              }

              v25 = v6 + 24;
              if (v6[47] < 0)
              {
                v25 = *v25;
              }

              *buf = 136315394;
              v33 = v24;
              v34 = 2080;
              v35 = v25;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no result for sim type (%s), iccid : %s", buf, 0x16u);
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  v29 = a1[8];
  if (!v29)
  {
    sub_100022DB4();
  }

  (*(*v29 + 48))(v29);
  return sub_1002947A4(&v31);
}

void sub_100294B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100004A34(v11);
  sub_1002947A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100294B6C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000A58E4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 25);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 26;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100294BC4(uint64_t a1)
{
  *a1 = off_101E372E8;
  sub_10002B644(a1 + 56);
  v4 = (a1 + 32);
  sub_1000DD3FC(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100294C2C(uint64_t a1)
{
  *a1 = off_101E372E8;
  sub_10002B644(a1 + 56);
  v3 = (a1 + 32);
  sub_1000DD3FC(&v3);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100294D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000DD3FC(va);
  v5 = v3[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100294D94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E372E8;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_1000DD160((a2 + 32), *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 7);
  return sub_10009CF40(a2 + 56, a1 + 56);
}

void sub_100294E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000DD3FC(va);
  v5 = *(v3 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100294E5C(uint64_t a1)
{
  sub_10002B644(a1 + 56);
  v3 = (a1 + 32);
  sub_1000DD3FC(&v3);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100294EA8(uint64_t a1)
{
  sub_10002B644(a1 + 56);
  v3 = (a1 + 32);
  sub_1000DD3FC(&v3);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_100294EFC(void *a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  if (a2[2])
  {
    *(v4 + 16) = &v22;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v21 = &v22;
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && a1[2])
    {
      v8 = *(v6 + 168);
      v9 = *(v6 + 176);
      if (v8 != v9)
      {
        v10 = v8 + 294;
        do
        {
          memset(v30, 0, 48);
          memset(v29, 0, sizeof(v29));
          v27 = 0u;
          *v28 = 0u;
          *v26 = 0u;
          if (*(v10 - 223) < 0)
          {
            sub_100005F2C(v28, *(v10 - 246), *(v10 - 238));
          }

          else
          {
            v11 = *(v10 - 246);
            v29[0] = *(v10 - 230);
            *v28 = v11;
          }

          if (*(v10 - 199) < 0)
          {
            sub_100005F2C(&v29[1], *(v10 - 222), *(v10 - 214));
          }

          else
          {
            v12 = *(v10 - 222);
            v29[3] = *(v10 - 206);
            *&v29[1] = v12;
          }

          if (*(v10 - 175) < 0)
          {
            sub_100005F2C(v30, *(v10 - 198), *(v10 - 190));
          }

          else
          {
            v13 = *(v10 - 198);
            *&v30[1] = *(v10 - 182);
            v30[0] = v13;
          }

          if (*(v10 - 151) < 0)
          {
            sub_100005F2C(&v30[1] + 8, *(v10 - 174), *(v10 - 166));
          }

          else
          {
            v14 = *(v10 - 174);
            *(&v30[2] + 1) = *(v10 - 158);
            *(&v30[1] + 8) = v14;
          }

          sub_100295360(v26, __p);
          v15 = sub_100007A6C(&v21, __p);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          if (&v22 != v15)
          {
            if (*(v15 + 56) == 2)
            {
              v16 = *(v6 + 40);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__p[0]) = 0;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I flex policy", __p, 2u);
              }

              *(v6 + 161) = 1;
            }

            else if (!*(v15 + 56))
            {
              *v10 = 17;
            }
          }

          if (SHIBYTE(v30[2]) < 0)
          {
            operator delete(*(&v30[1] + 1));
          }

          if (SBYTE7(v30[1]) < 0)
          {
            operator delete(*&v30[0]);
          }

          if (SHIBYTE(v29[3]) < 0)
          {
            operator delete(v29[1]);
          }

          if (SHIBYTE(v29[0]) < 0)
          {
            operator delete(v28[0]);
          }

          if (BYTE8(v27) == 1 && SBYTE7(v27) < 0)
          {
            operator delete(v26[0]);
          }

          v17 = v10 + 378;
          v10 += 672;
        }

        while (v17 != v9);
      }

      v18 = a1[10];
      if (!v18)
      {
        sub_100022DB4();
      }

      (*(*v18 + 48))(v18);
      goto LABEL_49;
    }
  }

  else
  {
    v7 = 0;
  }

  ctu::OsLogContext::OsLogContext(v26, kCtLoggingSystemName, "cp.tr.ctr");
  v19 = v26[1];
  ctu::OsLogContext::~OsLogContext(v26);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  v20 = a1[10];
  if (!v20)
  {
    sub_100022DB4();
  }

  (*(*v20 + 48))(v20);
LABEL_49:
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_100009970(&v21, v22);
}

void sub_100295258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100295314(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100295360(const void **a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = *(a1 + 23);
    }

    else
    {
      v4 = a1[1];
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_1000677C4(a2, v4 + 1);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    if (v4)
    {
      if (*(a1 + 23) >= 0)
      {
        v5 = a1;
      }

      else
      {
        v5 = *a1;
      }

      memmove(v3, v5, v4);
    }

    *(v3 + v4) = 44;
  }

  else
  {
    std::operator+<char>();
    v6 = std::string::append(&v30, ",", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 79);
    if (v8 >= 0)
    {
      v9 = (a1 + 7);
    }

    else
    {
      v9 = a1[7];
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 79);
    }

    else
    {
      v10 = a1[8];
    }

    v11 = std::string::append(&v31, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v32, ",", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(a1 + 103);
    if (v15 >= 0)
    {
      v16 = (a1 + 10);
    }

    else
    {
      v16 = a1[10];
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 103);
    }

    else
    {
      v17 = a1[11];
    }

    v18 = std::string::append(&v33, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v34, ",", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v24 = a1[13];
    v23 = a1 + 13;
    v22 = v24;
    v25 = *(v23 + 23);
    if (v25 >= 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    if (v25 >= 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v23[1];
    }

    v28 = std::string::append(&v35, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v3[2] = *(&v28->__r_.__value_.__l + 2);
    *v3 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1002955BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100295650(void *a1)
{
  *a1 = off_101E37378;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_1002956A8(void *a1)
{
  *a1 = off_101E37378;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_100295794(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E37378;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v4 = a2[1];
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100295800(NSObject **a1)
{
  sub_10028B1D4(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100295840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10029588C(void *a1)
{
  *a1 = off_101E373F8;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_1002958E4(void *a1)
{
  *a1 = off_101E373F8;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1002959D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E373F8;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v4 = a2[1];
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100295A3C(NSObject **a1)
{
  sub_10028B1D4(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100295A7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100295AC8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10002B644(v1 + 24);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100295B24(void *a1)
{
  v10 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 168);
        for (i = *(v3 + 176); v6 != i; v6 += 672)
        {
          if ((sub_100649EC4(*(v6 + 294)) & 1) != 0 && (*(v6 + 305) - 2) <= 3u)
          {
            *(v6 + 294) = 0x83868584 >> (8 * ((*(v6 + 305) - 2) & 0x1F));
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  v8 = a1[6];
  if (!v8)
  {
    sub_100022DB4();
  }

  (*(*v8 + 48))(v8);
  return sub_100295AC8(&v10);
}

void sub_100295C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100295AC8(va);
  _Unwind_Resume(a1);
}

void sub_100295C34(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t sub_100295CF8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_100295D78(void *a1)
{
  *a1 = off_101E37478;
  sub_10028BCB4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100295DC8(void *a1)
{
  *a1 = off_101E37478;
  sub_10028BCB4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100295EC0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100295EE0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37478;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100296324(a2 + 32, a1 + 32);
}

void sub_100295F4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100295F6C(char *a1)
{
  sub_1002963BC((a1 + 8));

  operator delete(a1);
}

void sub_100295FA8(void *a1, unsigned __int8 *a2, void *a3)
{
  v4 = *a2;
  v5 = a3 + 1;
  v6 = a3[1];
  v19 = *a3;
  v20 = v6;
  if (a3[2])
  {
    *(v6 + 16) = &v20;
    *a3 = v5;
    *v5 = 0;
    a3[2] = 0;
  }

  else
  {
    v19 = &v20;
  }

  v7 = a1[3];
  if (!v7)
  {
    v9 = 0;
LABEL_13:
    v23 = 0;
    v24 = 0;
    v22 = &v23;
    v13 = a1[7];
    if (!v13)
    {
      sub_100022DB4();
    }

    (*(*v13 + 48))(v13, &v22);
    goto LABEL_15;
  }

  v8 = a1[1];
  v9 = std::__shared_weak_count::lock(v7);
  if (!v9 || !a1[2])
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(v8 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = asString(v4);
      sub_101768F28(v11, buf, v10);
    }

    v23 = 0;
    v24 = 0;
    v22 = &v23;
    v12 = a1[7];
    if (!v12)
    {
      sub_100022DB4();
    }

    (*(*v12 + 48))(v12, &v22);
    sub_10028B908(&v22, v23);
    goto LABEL_16;
  }

  v14 = *(v8 + 768);
  if (v14 == (v8 + 776))
  {
LABEL_26:
    if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768F70();
    }

    v23 = 0;
    v24 = 0;
    v22 = &v23;
    v18 = a1[7];
    if (!v18)
    {
      sub_100022DB4();
    }
  }

  else
  {
    while (!sub_10016FA58(&v19, v14 + 40))
    {
      v15 = *(v14 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v14 + 2);
          v17 = *v16 == v14;
          v14 = v16;
        }

        while (!v17);
      }

      v14 = v16;
      if (v16 == (v8 + 776))
      {
        goto LABEL_26;
      }
    }

    sub_100296408(&v22, &v19);
    v18 = a1[7];
    if (!v18)
    {
      sub_100022DB4();
    }
  }

  (*(*v18 + 48))(v18, &v22);
LABEL_15:
  sub_10028B908(&v22, v23);
  if (v9)
  {
LABEL_16:
    sub_100004A34(v9);
  }

  sub_10028B908(&v19, v20);
}

void sub_100296270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10028B908(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1002962D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100296324(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1002963BC(uint64_t a1)
{
  sub_10028BCB4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_100296408(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100296460(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100296460(uint64_t result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002964E8(v5, (v5 + 8), v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1002964E8(uint64_t **a1, uint64_t *a2, char *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10028BA24();
  }

  return result;
}

uint64_t sub_100296578(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1002965F8(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1002966AC();
  }

  return v5;
}

uint64_t sub_10029674C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000CFC8C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_100296798(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_10029684C();
  }

  return v5;
}

void *sub_1002968EC(void *a1)
{
  *a1 = off_101E37508;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100296944(void *a1)
{
  *a1 = off_101E37508;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_100296A48(uint64_t result, uint64_t a2)
{
  *a2 = off_101E37508;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100296AA8(void *a1)
{
  sub_1001E3C94(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100296AE4(void *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "failure";
          if (v3)
          {
            v9 = "success";
          }

          LODWORD(v11) = 136315138;
          *(&v11 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Record delete : %s", &v11, 0xCu);
        }
      }

      sub_100004A34(v7);
    }
  }

  result = a1[4];
  if (result)
  {
    v11 = xmmword_1017E3F70;
    BYTE8(v11) = v3;
    return (*(*result + 112))(result, &v11);
  }

  return result;
}

uint64_t sub_100296C10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100296C5C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v22, ", IMEI:", 7uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v23, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v24, ", EID:", 6uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a1 + 24);
  v14 = a1 + 24;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  v19 = std::string::append(&v25, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v26, " }", 2uLL);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_100296DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100296E60(void *a1)
{
  *a1 = off_101E37588;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100296EB8(void *a1)
{
  *a1 = off_101E37588;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_100296FBC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E37588;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10029701C(void *a1)
{
  sub_1001E3C94(a1 + 8);

  operator delete(a1);
}

void sub_100297058(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[2])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = "fail";
          if (v3)
          {
            v11 = "succeed";
          }

          *v13 = 136315650;
          *&v13[4] = v11;
          if ((v3 >> 8))
          {
            v12 = "true";
          }

          else
          {
            v12 = "false";
          }

          *v14 = 2080;
          *&v14[2] = v12;
          v15 = 1024;
          v16 = v4;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "deleting blocklist %s. modified: %s, with error code: %d", v13, 0x1Cu);
        }
      }

      sub_100004A34(v8);
    }
  }

  if ((v3 & 0x100) != 0)
  {
    v10 = a1[4];
    if (v10)
    {
      *v13 = 0x800002000;
      *&v13[8] = 256;
      *v14 = v4;
      v13[8] = v3 & 1;
      (*(*v10 + 112))(v10, v13);
    }
  }
}

uint64_t sub_1002971D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100297224(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1002972A4(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_100297324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100297348(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100649BB4(*(*(v1 + 8) + 273));
    v5 = sub_10064A100(*(*(v1 + 8) + 272));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I abort due to consent : %s, error: %s", buf, 0x16u);
  }

  v6 = *(v1 + 8);
  if (*(v6 + 273) == 3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  sub_100319F10(v6, v7);
  v8 = *(v1 + 8);
  if (*(v8 + 273) == 3)
  {
    v9 = 45;
  }

  else
  {
    v9 = 72;
  }

  if (*(v8 + 272) == 10)
  {
    sub_100319F10(v8, 12);
    sub_100319F28(*(v1 + 8), 70073);
    v9 = 70;
  }

  v13 = 0;
  v14 = 0;
  sub_100254358(v2, (v1 + 16), 11, v9, &v14, &v13);
  sub_10001021C(&v13);
  sub_100005978(&v14);
  if (*(v1 + 39) < 0)
  {
    sub_100005F2C(buf, *(v1 + 16), *(v1 + 24));
  }

  else
  {
    *buf = *(v1 + 16);
    *&buf[16] = *(v1 + 32);
  }

  sub_100255D0C(v2, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100254E74(v2);
  sub_100297548(&v12);
  return sub_1000049E0(&v11);
}

void sub_1002974FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100297548(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100297548(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

void sub_1002975A0(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_100254C38(v1);
  sub_100254E74(v1);
  operator delete();
}

void sub_10029762C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v44 = 0uLL;
  v45 = 0;
  sub_1002549A0(v2, v1 + 3, &v44);
  (***(v2 + 48))(&v20);
  ServiceMap = Registry::getServiceMap(v20);
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v46 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v46);
  if (v9)
  {
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = v11;
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v12 = 0;
  v13 = 1;
LABEL_9:
  if (v21)
  {
    sub_100004A34(v21);
  }

  v42 = 0;
  v43 = 0;
  (***(v2 + 48))(&v46);
  Registry::getNotificationSenderFactory(&v20, v46);
  v14 = v20;
  (***(v2 + 48))(&v38);
  Registry::getTimerService(&v40, v38);
  (*(*v14 + 168))(&v42, v14, &v40, v2 + 24);
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (v39)
  {
    sub_100004A34(v39);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v47)
  {
    sub_100004A34(v47);
  }

  sub_100260418(v2, &v20);
  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(&v21, v44, *(&v44 + 1));
  }

  else
  {
    v21 = v44;
    v22 = v45;
  }

  if (*(v1 + 47) < 0)
  {
    sub_100005F2C(&v23, v1[3], v1[4]);
  }

  else
  {
    v15 = *(v1 + 3);
    v24 = v1[5];
    v23 = v15;
  }

  sub_10006F264(&v25, (v1 + 9));
  v26 = v1[1];
  v16 = v1[2];
  v27 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v10;
  v29 = v12;
  if ((v13 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v1 + 127) < 0)
  {
    sub_100005F2C(&v30, v1[13], v1[14]);
  }

  else
  {
    v17 = *(v1 + 13);
    v31 = v1[15];
    v30 = v17;
  }

  if (*(v1 + 151) < 0)
  {
    sub_100005F2C(&v32, v1[16], v1[17]);
  }

  else
  {
    v18 = *(v1 + 8);
    v33 = v1[18];
    v32 = v18;
  }

  v34 = v42;
  v35 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = *(v2 + 146);
  v19 = *(v2 + 24);
  v37 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  v48 = 0;
  operator new();
}

void sub_100297B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v45 + 39) < 0)
  {
    operator delete(*(v45 + 16));
  }

  sub_100005978(v46);
  operator delete(v45);
  sub_100297DD0(&a17);
  v49 = *(v47 - 160);
  if (v49)
  {
    sub_100004A34(v49);
  }

  if ((a10 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  if (*(v47 - 129) < 0)
  {
    operator delete(*(v47 - 152));
  }

  sub_100297D20(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

void sub_100297CF0(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x100297CE8);
}

void sub_100297D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x100297CC8);
  }

  JUMPOUT(0x100297CC4);
}

uint64_t *sub_100297D20(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 151) < 0)
    {
      operator delete(*(v1 + 128));
    }

    if (*(v1 + 127) < 0)
    {
      operator delete(*(v1 + 104));
    }

    if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

const void **sub_100297DD0(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return sub_100005978(a1);
}

void *sub_100297E90(void *a1)
{
  *a1 = off_101E37618;
  sub_100297DD0((a1 + 1));
  return a1;
}

void sub_100297ED4(void *a1)
{
  *a1 = off_101E37618;
  sub_100297DD0((a1 + 1));

  operator delete();
}

void sub_100297FE4(void *a1)
{
  sub_100297DD0(a1 + 8);

  operator delete(a1);
}

CFIndex sub_100298020(CFIndex result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v2 = result;
    result = *(result + 8);
    if (result)
    {
      result = CFStringGetLength(result);
      if (result >= 1)
      {
        v3 = *(v2 + 184);
        v13[0] = *(v2 + 176);
        v13[1] = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = *(v2 + 120);
        v12[0] = *(v2 + 112);
        v12[1] = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10005C7A4(&v11, (v2 + 8));
        v5 = *(v2 + 192);
        v6 = *(v2 + 200);
        v9 = v6;
        v10 = 0;
        if (v6)
        {
          dispatch_retain(v6);
        }

        v7 = *(v2 + 104);
        v8[0] = *(v2 + 96);
        v8[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10026CEDC(v13, v12, (v2 + 40), v2 + 16, &v11, &v10, 0, v5, &v9, v8);
        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        if (v6)
        {
          dispatch_release(v6);
        }

        sub_10001021C(&v10);
        sub_100005978(&v11);
        if (v4)
        {
          sub_100004A34(v4);
        }

        if (v3)
        {
          sub_100004A34(v3);
        }

        result = *(v2 + 96);
        if (result)
        {
          return (*(*result + 64))(result, v2 + 128, v2 + 152, v2 + 40, 6, v2 + 64);
        }
      }
    }
  }

  return result;
}

void sub_100298190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16)
{
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  sub_10001021C(&a15);
  sub_100005978(&a16);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002981DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100298228(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4(a1, a2);
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  sub_10006F264((a1 + 56), (a2 + 56));
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v9 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v9;
  }

  v10 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 184) = *(a2 + 184);
  v11 = *(a2 + 192);
  *(a1 + 192) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  return a1;
}

void sub_100298360(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v3 = *(v1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  sub_100005978(v1);
  _Unwind_Resume(a1);
}

void *sub_1002983F8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      a3[1] = a2[1];
      *a3 = sub_1002983F8;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = a2[1];
    *a3 = sub_1002983F8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_10183AE20;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002984C0(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v2 = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 8) = v2;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  *(result + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v3 = *(a2 + 40);
    *(result + 56) = *(a2 + 56);
    *(result + 40) = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(result + 64) = 1;
  }

  *(result + 72) = 0;
  *(result + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    v4 = *(a2 + 72);
    *(result + 88) = *(a2 + 88);
    *(result + 72) = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 96) = *(a2 + 96);
    *(result + 112) = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(result + 120) = 0;
    *(result + 144) = 0;
    if (*(a2 + 144) == 1)
    {
      v5 = *(a2 + 120);
      *(result + 136) = *(a2 + 136);
      *(result + 120) = v5;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 120) = 0;
      *(result + 144) = 1;
    }

    v6 = *(a2 + 152);
    *(result + 160) = 0;
    *(result + 152) = v6;
    *(result + 184) = 0;
    if (*(a2 + 184) == 1)
    {
      v7 = *(a2 + 160);
      *(result + 176) = *(a2 + 176);
      *(result + 160) = v7;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = 0;
      *(result + 184) = 1;
    }

    *(result + 192) = 0;
    *(result + 216) = 0;
    if (*(a2 + 216) == 1)
    {
      v8 = *(a2 + 192);
      *(result + 208) = *(a2 + 208);
      *(result + 192) = v8;
      *(a2 + 200) = 0;
      *(a2 + 208) = 0;
      *(a2 + 192) = 0;
      *(result + 216) = 1;
    }

    *(result + 224) = 1;
  }

  *(result + 232) = 0;
  *(result + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v9 = *(a2 + 232);
    *(result + 248) = *(a2 + 248);
    *(result + 232) = v9;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 232) = 0;
    *(result + 256) = 1;
  }

  *(result + 264) = 0;
  *(result + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v10 = *(a2 + 264);
    *(result + 280) = *(a2 + 280);
    *(result + 264) = v10;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a2 + 264) = 0;
    v11 = *(a2 + 288);
    *(result + 304) = *(a2 + 304);
    *(result + 288) = v11;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 288) = 0;
    v12 = *(a2 + 312);
    *(result + 328) = *(a2 + 328);
    *(result + 312) = v12;
    *(a2 + 320) = 0;
    *(a2 + 328) = 0;
    *(a2 + 312) = 0;
    v13 = *(a2 + 336);
    *(result + 352) = *(a2 + 352);
    *(result + 336) = v13;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(result + 360) = 1;
  }

  *(result + 368) = 0;
  *(result + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    v14 = *(a2 + 368);
    *(result + 384) = *(a2 + 384);
    *(result + 368) = v14;
    *(a2 + 376) = 0;
    *(a2 + 384) = 0;
    *(a2 + 368) = 0;
    v15 = *(a2 + 392);
    *(result + 408) = *(a2 + 408);
    *(result + 392) = v15;
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 392) = 0;
    v16 = *(a2 + 416);
    *(result + 432) = *(a2 + 432);
    *(result + 416) = v16;
    *(a2 + 424) = 0;
    *(a2 + 432) = 0;
    *(a2 + 416) = 0;
    *(result + 440) = *(a2 + 440);
    *(result + 448) = 1;
  }

  *(result + 456) = 0;
  *(result + 480) = 0;
  if (*(a2 + 480) == 1)
  {
    v17 = *(a2 + 456);
    *(result + 472) = *(a2 + 472);
    *(result + 456) = v17;
    *(a2 + 464) = 0;
    *(a2 + 472) = 0;
    *(a2 + 456) = 0;
    *(result + 480) = 1;
  }

  *(result + 488) = 0;
  *(result + 512) = 0;
  if (*(a2 + 512) == 1)
  {
    v18 = *(a2 + 488);
    *(result + 504) = *(a2 + 504);
    *(result + 488) = v18;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
    *(a2 + 488) = 0;
    *(result + 512) = 1;
  }

  *(result + 520) = 0;
  *(result + 544) = 0;
  if (*(a2 + 544) == 1)
  {
    v19 = *(a2 + 520);
    *(result + 536) = *(a2 + 536);
    *(result + 520) = v19;
    *(a2 + 536) = 0;
    *(a2 + 528) = 0;
    *(a2 + 520) = 0;
    *(result + 544) = 1;
  }

  *(result + 552) = 0;
  *(result + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    v20 = *(a2 + 552);
    *(result + 568) = *(a2 + 568);
    *(result + 552) = v20;
    *(a2 + 568) = 0;
    *(a2 + 560) = 0;
    *(a2 + 552) = 0;
    *(result + 576) = 1;
  }

  *(result + 584) = *(a2 + 584);
  return result;
}

uint64_t *sub_10029887C(void ***a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10000501C(&v8, "TransferAuthResponseTime");
  v6[1] = COERCE_VOID_FASTCALL_INT64void_CHARvoidvoid_(CFAbsoluteTimeGetCurrent());
  v6[0] = sub_1002983F8;
  sub_100261328(v2, (v1 + 3), &v8, v6);
  sub_100176638(v6);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  sub_1000224C8(&v8, (v1 + 6));
  sub_1002837FC(v6, (v1 + 10));
  sub_100271240(v2, (v1 + 3), &v8, v6, 0);
  if (v7 == 1)
  {
    sub_100283CE0(v6);
  }

  sub_10000FF50(&v8);
  sub_100298A04(&v5);
  return sub_1000049E0(&v4);
}

void sub_100298994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  if (LOBYTE(STACK[0x260]) == 1)
  {
    sub_100283CE0(&a12);
  }

  sub_10000FF50(v11 - 72);
  sub_100298A04(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100298A04(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 672) == 1)
    {
      sub_100283CE0(v1 + 80);
    }

    sub_10000FF50(v1 + 48);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100298A84(uint64_t a1)
{
  *a1 = off_101E37698;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100298AE8(uint64_t a1)
{
  *a1 = off_101E37698;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_100298C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E37698;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  result = sub_1000224C8(a2 + 40, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  v7 = *(a1 + 96);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100298CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_100298D00(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

void sub_100298D5C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

uint64_t sub_100298DB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 72);
  v4 = os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR);
  if (v3 == 1)
  {
    if (v4)
    {
      sub_101768FA4();
    }

    v5 = 1;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
    if (v4)
    {
      sub_101768FD8();
    }

    v5 = 0;
LABEL_9:
    v6 = sub_100932AF0(0, 1, v5);
    v15 = 52;
    v7 = 7;
    goto LABEL_13;
  }

  if (v4)
  {
    sub_10176900C();
  }

  v6 = sub_100932AF0(0, 0, 0);
  v7 = 0;
  v15 = 56;
LABEL_13:
  if (*(v2 + 384) == 1)
  {
    v16 = (v2 + 360);
    *(sub_10028EDFC((v2 + 1064), (v2 + 360), &unk_101802C98, &v16, &v13) + 83) = 1;
    v16 = (v2 + 360);
    v8 = sub_10028EDFC((v2 + 1064), (v2 + 360), &unk_101802C98, &v16, &v13);
    *(v8 + 21) = v6;
    *(v8 + 88) = 1;
  }

  v14 = 11;
  v16 = 0;
  v13 = 0;
  v12[0] = v7;
  v12[1] = 1;
  v10 = v6;
  v11 = 1;
  sub_1002540BC(v2, (a1 + 16), &v14, 0, &v16, &v15, &v13, v12, &v10, (a1 + 80));
  sub_10001021C(&v13);
  sub_100005978(&v16);
  return sub_10000FFD0(a1 + 40, 1);
}

void sub_100298F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  v14 = va_arg(va1, void);
  sub_10001021C(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100298F8C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E376F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100298FD8(uint64_t a1)
{
  *a1 = off_101E37718;
  sub_10000FF50(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10029902C(uint64_t a1)
{
  *a1 = off_101E37718;
  sub_10000FF50(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_100299174(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37718;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  if (*(a1 + 55) < 0)
  {
    sub_100005F2C((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v5;
  }

  result = sub_1000224C8(a2 + 56, a1 + 56);
  *(a2 + 88) = *(a1 + 88);
  return result;
}

void sub_100299200(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_100299224(char *a1)
{
  sub_10029946C((a1 + 8));

  operator delete(a1);
}

const void **sub_100299260(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR);
  if (v3 == 1)
  {
    if (v4)
    {
      sub_101769040();
    }

    v5 = *(a1 + 88);
    v6 = 1;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
    if (v4)
    {
      sub_101768FD8();
    }

    v5 = *(a1 + 88);
    v6 = 0;
LABEL_9:
    v7 = sub_100932AF0(v5, 1, v6);
    v16 = 52;
    v8 = 7;
    goto LABEL_13;
  }

  if (v4)
  {
    sub_10176900C();
  }

  v7 = sub_100932AF0(*(a1 + 88), 0, 0);
  v8 = 0;
  v16 = 56;
LABEL_13:
  if (*(v2 + 384) == 1)
  {
    sub_10064BEE8(v2 + 1056, 1);
    v17 = (v2 + 360);
    v9 = sub_10028EDFC((v2 + 1064), (v2 + 360), &unk_101802C98, &v17, &v14);
    *(v9 + 21) = v7;
    *(v9 + 88) = 1;
  }

  v15 = 11;
  v17 = 0;
  v14 = 0;
  v13[0] = v8;
  v13[1] = 1;
  v11 = v7;
  v12 = 1;
  sub_1002540BC(v2, (a1 + 32), &v15, 0, &v17, &v16, &v14, v13, &v11, (a1 + 24));
  sub_10001021C(&v14);
  result = sub_100005978(&v17);
  if (*(a1 + 80))
  {
    return sub_10000FFD0(a1 + 56, 1);
  }

  return result;
}

void sub_100299404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  v14 = va_arg(va1, void);
  sub_10001021C(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100299420(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10029946C(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t sub_1002994BC(uint64_t a1)
{
  *a1 = off_101E37798;
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  sub_100283CE0(a1 + 64);
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100299528(uint64_t a1)
{
  *a1 = off_101E37798;
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  sub_100283CE0(a1 + 64);
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100299680(_Unwind_Exception *a1)
{
  sub_100283CE0((v1 + 8));
  sub_10000FF50((v1 + 4));
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_1002996C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37798;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(a2 + 32, a1 + 32);
  sub_100283910(a2 + 64, (a1 + 64));
  result = (a2 + 656);
  if (*(a1 + 679) < 0)
  {
    result = sub_100005F2C(result, *(a1 + 656), *(a1 + 664));
  }

  else
  {
    v6 = *(a1 + 656);
    *(a2 + 672) = *(a1 + 672);
    *result = v6;
  }

  *(a2 + 680) = *(a1 + 680);
  return result;
}

void sub_100299770(_Unwind_Exception *a1)
{
  sub_100283CE0(v1 + 64);
  sub_10000FF50(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1002997A8(uint64_t a1)
{
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  sub_100283CE0(a1 + 64);
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10029980C(uint64_t a1)
{
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  sub_100283CE0(a1 + 64);
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10029986C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_100299C78(v13, a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *a3;
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && *(a1 + 16))
    {
      if (v14 == 1)
      {
        sub_10000501C(__p, "TransferAuthWebServResponseTime");
        Current = CFAbsoluteTimeGetCurrent();
        v21 = sub_1002983F8;
        sub_100261328(v5, a1 + 656, __p, &v21);
        sub_100176638(&v21);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        sub_100299E08(__p, v13);
        sub_1002766CC(v5, (a1 + 656), __p, a1 + 64);
        if (v17 == 1)
        {
          sub_100284EB4(__p);
        }

        sub_1000224C8(&v24, a1 + 32);
        sub_100283910(&v21, (a1 + 64));
        v23 = 1;
        sub_100271240(v5, a1 + 656, &v24, &v21, 1);
        if (v23 == 1)
        {
          sub_100283CE0(&v21);
        }

        v9 = &v24;
      }

      else
      {
        sub_1000224C8(&v21, a1 + 32);
        v9 = &v21;
        sub_100270EC0(v5, a1 + 656, v7, 1, &v21);
      }

      sub_10000FF50(v9);
LABEL_21:
      sub_100004A34(v8);
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v21, kCtLoggingSystemName, "cp.tr.ctr");
  v10 = *&Current;
  ctu::OsLogContext::~OsLogContext(&v21);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  v11 = sub_100932AF0(1, 0, 0);
  if (*(v5 + 384) == 1)
  {
    sub_10064BEE8(v5 + 1056, 1);
    v21 = (v5 + 360);
    v12 = sub_10028EDFC((v5 + 1064), (v5 + 360), &unk_101802C98, &v21, __p);
    *(v12 + 21) = v11;
    *(v12 + 88) = 1;
  }

  v20 = 11;
  v21 = 0;
  v19 = 56;
  __p[0] = 0;
  v18 = 256;
  v24 = v11;
  v25 = 1;
  sub_1002540BC(v5, (a1 + 656), &v20, 0, &v21, &v19, __p, &v18, &v24, (a1 + 680));
  sub_10001021C(__p);
  sub_100005978(&v21);
  sub_10000FFD0(a1 + 32, 1);
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v14 == 1)
  {
    sub_100284EB4(v13);
  }
}

void sub_100299B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (LOBYTE(STACK[0x4A0]) == 1)
  {
    sub_100283CE0(&STACK[0x250]);
  }

  sub_10000FF50(v47 - 88);
  sub_100004A34(v46);
  if (a46 == 1)
  {
    sub_100284EB4(&a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100299C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100299C78(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    *result = *a2;
    *(result + 8) = 0;
    *(result + 32) = 0;
    if (*(a2 + 32) == 1)
    {
      v2 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 8) = v2;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(result + 32) = 1;
    }

    v3 = *(a2 + 40);
    *(result + 48) = 0;
    *(result + 40) = v3;
    *(result + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v4 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v4;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = 1;
    }

    *(result + 80) = 0;
    *(result + 176) = 0;
    if (*(a2 + 176) == 1)
    {
      v5 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v5;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      v6 = *(a2 + 104);
      *(result + 120) = *(a2 + 120);
      *(result + 104) = v6;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0;
      v7 = *(a2 + 128);
      *(result + 144) = *(a2 + 144);
      *(result + 128) = v7;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 128) = 0;
      v8 = *(a2 + 152);
      *(result + 168) = *(a2 + 168);
      *(result + 152) = v8;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(result + 176) = 1;
    }

    *(result + 184) = 0;
    *(result + 264) = 0;
    if (*(a2 + 264) == 1)
    {
      v9 = *(a2 + 184);
      *(result + 200) = *(a2 + 200);
      *(result + 184) = v9;
      *(a2 + 192) = 0;
      *(a2 + 200) = 0;
      *(a2 + 184) = 0;
      v10 = *(a2 + 208);
      *(result + 224) = *(a2 + 224);
      *(result + 208) = v10;
      *(a2 + 216) = 0;
      *(a2 + 224) = 0;
      *(a2 + 208) = 0;
      v11 = *(a2 + 232);
      *(result + 248) = *(a2 + 248);
      *(result + 232) = v11;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 232) = 0;
      *(result + 256) = *(a2 + 256);
      *(result + 264) = 1;
    }

    *(result + 272) = 1;
  }

  return result;
}

_BYTE *sub_100299E08(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    sub_100299E70(a1, a2);
    a1[272] = 1;
  }

  return a1;
}

void sub_100299E50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 272) == 1)
  {
    sub_100284EB4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100299E70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_10006F264((a1 + 8), (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  sub_10006F264((a1 + 48), (a2 + 48));
  sub_100283BB8((a1 + 80), a2 + 80);
  sub_100283C20((a1 + 184), a2 + 184);
  return a1;
}

void sub_100299ED0(_Unwind_Exception *a1)
{
  sub_100283AE0(v1 + 80);
  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100299F2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

_UNKNOWN **sub_100299FAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_100299FAC;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_100299FAC;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_1017E8720;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029A074(uint64_t a1)
{
  *a1 = off_101E37838;
  sub_100005978((a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_10000FF50(a1 + 16);
  return a1;
}

void sub_10029A0D0(uint64_t a1)
{
  *a1 = off_101E37838;
  sub_100005978((a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_10000FF50(a1 + 16);

  operator delete();
}

void sub_10029A1F8(_Unwind_Exception *a1)
{
  sub_10000FF50(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 sub_10029A21C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E37838;
  *(a2 + 8) = v4;
  sub_1000224C8(a2 + 16, a1 + 16);
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C((a2 + 48), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v5 = *(a1 + 48);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 48) = v5;
  }

  *(a2 + 72) = *(a1 + 72);
  sub_10005C7A4((a2 + 80), (a1 + 80));
  result = *(a1 + 88);
  *(a2 + 88) = result;
  return result;
}

uint64_t sub_10029A2C4(uint64_t a1)
{
  sub_100005978((a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_10000FF50(a1 + 16);
}

void sub_10029A310(uint64_t a1)
{
  sub_100005978((a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_10029A364(uint64_t a1)
{
  v2 = *(a1 + 8);
  v8 = 11;
  v7 = 0;
  v6[0] = *(a1 + 88);
  v6[1] = 1;
  v4 = *(a1 + 92);
  v5 = 1;
  sub_1002540BC(v2, (a1 + 48), &v8, 0, (a1 + 80), (a1 + 72), &v7, v6, &v4, (a1 + 96));
  sub_10001021C(&v7);
  return sub_10000FFD0(a1 + 16, 1);
}

void sub_10029A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029A40C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029A458(uint64_t a1)
{
  *a1 = off_101E378B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029A4B4(uint64_t a1)
{
  *a1 = off_101E378B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029A5D4(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029A5F4(char *result, uint64_t a2)
{
  *a2 = off_101E378B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10029A678(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029A698(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10029A6D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        *(v3 + 153) = 0;
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *__p = *(a1 + 32);
          v7 = *(a1 + 48);
        }

        sub_100255D0C(v3, __p);
        if (SHIBYTE(v7) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10029A7A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029A7EC(uint64_t a1)
{
  *a1 = off_101E37938;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10029A864(uint64_t a1)
{
  *a1 = off_101E37938;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10029A9A0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10029AA10(void **__p)
{
  if (*(__p + 95) < 0)
  {
    operator delete(__p[9]);
  }

  if (*(__p + 71) < 0)
  {
    operator delete(__p[6]);
  }

  v2 = __p[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_10029AA7C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[6];
          v9 = a1 + 6;
          v10 = v11;
          v12 = *(v9 + 23);
          v13 = CSIBOOLAsString(v4);
          if (v12 >= 0)
          {
            v14 = v9;
          }

          else
          {
            v14 = v10;
          }

          v15 = 136315394;
          v16 = v14;
          v17 = 2080;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I subscribe for push. iccid: [%s]. success ? %s", &v15, 0x16u);
        }

        *(v5 + 158) = v4;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10029AB98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029ABE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_10029AC94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029ACD0(uint64_t a1)
{
  *a1 = off_101E379B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10029AD2C(uint64_t a1)
{
  *a1 = off_101E379B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10029AE54(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029AE74(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E379B8;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = *(v3 + 14);
  return result;
}

void sub_10029AF04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029AF24(char *a1)
{
  sub_10029B25C((a1 + 8));

  operator delete(a1);
}

void sub_10029AF60(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  if (*a2 != 1)
  {
    v21 = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_10026AF7C(v2, (a1 + 32), (v4 + 8));
      v5 = **(a1 + 16);
      if (v5 != 6000 && v5 != 6013)
      {
        v7 = sub_10025CD10(v2 + 41, (a1 + 32));
        if (v2[42] != v7)
        {
          *(v7 + 976) = v5;
          *(v7 + 984) = 1;
        }
      }
    }

    v8 = v2[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_100A38E30(*(a1 + 56));
      v14 = *(a1 + 16);
      if (v14)
      {
        v15 = sub_100531604(*v14);
      }

      else
      {
        v15 = "";
      }

      *buf = 136315394;
      *&buf[4] = v13;
      v23 = 2080;
      v24 = v15;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "TSS request failed. EventCause: [%s], response status: [%s]", buf, 0x16u);
      v8 = v2[5];
    }

    v9 = *(a1 + 56);
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v9 == 1)
    {
      if (v10)
      {
        sub_101769074();
      }

      v11 = sub_100932AF0(8, 1, 1);
    }

    else
    {
      if (v9 != 3)
      {
        if (v10)
        {
          sub_1017690DC();
        }

        v11 = sub_100932AF0(8, 0, 0);
        v12 = 0;
        v21 = 56;
        goto LABEL_25;
      }

      if (v10)
      {
        sub_1017690A8();
      }

      v11 = sub_100932AF0(8, 1, 0);
    }

    v21 = 52;
    v12 = 7;
LABEL_25:
    v20 = 11;
    *buf = 0;
    v19 = 0;
    v18[0] = v12;
    v18[1] = 1;
    v16 = v11;
    v17 = 1;
    sub_1002540BC(v2, (a1 + 32), &v20, 0, buf, &v21, &v19, v18, &v16, v2 + 44);
    sub_10001021C(&v19);
    sub_100005978(buf);
    return;
  }

  sub_100254C38(*(a1 + 8));

  sub_100254E74(v2);
}

void sub_10029B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  v12 = va_arg(va1, void);
  sub_10001021C(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10029B210(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E37A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10029B25C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_10029B2B0(uint64_t a1)
{
  *a1 = off_101E37A38;
  sub_1000296E0((a1 + 64));
  sub_100005978((a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10029B30C(uint64_t a1)
{
  *a1 = off_101E37A38;
  sub_1000296E0((a1 + 64));
  sub_100005978((a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

const void **sub_10029B45C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E37A38;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  *(a2 + 40) = *(a1 + 40);
  sub_10005C7A4((a2 + 48), (a1 + 48));
  *(a2 + 56) = *(a1 + 56);
  result = sub_100029714((a2 + 64), (a1 + 64));
  v7 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v7;
  return result;
}