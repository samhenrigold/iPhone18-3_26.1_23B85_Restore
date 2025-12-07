void sub_271572588(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288133810[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_271572748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271572794(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271572930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271572944(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2715729BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572A74(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572B18(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271572B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572C48(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572CEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271572D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572E1C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572EC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271572F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572FF0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573094(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27157310C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715731C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573268(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2715732E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573398(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_27157343C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2715734B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27157356C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573610(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271573688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573740(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715737E4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27157385C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573914(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715739B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271573A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573AE8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573B8C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271573C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573CBC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573D60(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271573DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573E90(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573F34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271573FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271574064(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271574108(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271574180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271574238(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715742DC(int a1)
{
  result = 1;
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 != 875836534)
        {
          if (a1 == 1094862674)
          {
            return result;
          }

          v5 = 1111970369;
          goto LABEL_37;
        }
      }

      else if (a1 != 875704422 && a1 != 875704438 && a1 != 875836518)
      {
        goto LABEL_39;
      }

      return 2;
    }

    if (a1 > 843264055)
    {
      v6 = -843264056;
LABEL_26:
      v7 = a1 + v6;
      if (v7 > 0x30 || ((1 << v7) & 0x1400000000001) == 0)
      {
        goto LABEL_39;
      }

      return result;
    }

    if (a1 != 24 && a1 != 32)
    {
      v5 = 842285639;
      goto LABEL_37;
    }
  }

  else
  {
    if (a1 <= 1647392358)
    {
      if (a1 > 1278226741)
      {
        if (a1 > 1380410944)
        {
          if (a1 == 1380410945)
          {
            return result;
          }

          v5 = 1380411457;
        }

        else
        {
          if (a1 == 1278226742)
          {
            return result;
          }

          v5 = 1380401729;
        }

        goto LABEL_37;
      }

      v6 = -1278226488;
      goto LABEL_26;
    }

    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return result;
        }

        v5 = 1751411059;
      }

      else
      {
        if (a1 == 1717855600)
        {
          return result;
        }

        v5 = 1717856627;
      }

LABEL_37:
      if (a1 == v5)
      {
        return result;
      }

LABEL_39:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 396, "", 0, "not yet implemented", 0x13uLL, sub_271852CA8, v1, v2);
      abort();
    }

    if (a1 != 1647392359 && a1 != 1647589490)
    {
      v5 = 1647719521;
      goto LABEL_37;
    }
  }

  return result;
}

void *sub_271574524(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v9 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return result;
    }

    v12 = result[1];
    v13 = v9 - 1;
    v14 = *v1;
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(v1 + 5);
      v17 = *v12;
      if (v13)
      {
        for (i = 0; i != v15; ++i)
        {
          v19 = v13;
          v20 = v14;
          do
          {
            *v20 = v17;
            v20 += v2;
            --v19;
          }

          while (v19);
          v17 = *v12;
          *v20 = *v12;
          v14 += v16;
        }

        goto LABEL_20;
      }

      do
      {
        *v14 = v17;
        v14 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v13)
    {
LABEL_21:
      *v14 = *v12;
      return result;
    }

    v17 = *v12;
    do
    {
LABEL_20:
      *v14 = v17;
      v14 += v2;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  v3 = *(v1 + 5);
  v4 = *(v1 + 2);
  v5 = result[1];
  if (v3 == v4)
  {
    v6 = (*(v1 + 3) * v3);
    v7 = *v1;
    v8 = *v5;

    return memset(v7, v8, v6);
  }

  v21 = *(v1 + 3);
  if (v4)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *v1;
    v24 = v21 - 1;
    if (v21 != 1)
    {
      do
      {
        memset(v23, *v5, v4);
        v23 += v3;
        --v24;
      }

      while (v24);
    }

    v8 = *v5;
    v7 = v23;
    v6 = v4;

    return memset(v7, v8, v6);
  }

  return result;
}

void *sub_2715746BC(void *result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 24);
  if (v3 != *(*result + 20) * v2)
  {
    v12 = *(v1 + 3);
    v11 = *(v1 + 4);
    if (v2)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v12 - 1;
    v17 = *v1;
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = *(v1 + 7);
      if (v12 != 1)
      {
        v20 = 0;
        do
        {
          v21 = v16;
          v22 = v17;
          do
          {
            memset(v22, *v15, v2);
            v22 += v3;
            --v21;
          }

          while (v21);
          memset(v22, *v15, v2);
          v17 += v19;
          ++v20;
        }

        while (v20 != v18);
        goto LABEL_20;
      }

      do
      {
        memset(v17, *v15, v2);
        v17 += v19;
        --v18;
      }

      while (v18);
    }

    if (!v16)
    {
LABEL_21:
      v10 = *v15;
      v9 = v17;
      v8 = v2;
      goto LABEL_34;
    }

    do
    {
LABEL_20:
      memset(v17, *v15, v2);
      v17 += v3;
      --v16;
    }

    while (v16);
    goto LABEL_21;
  }

  v4 = *(v1 + 7);
  v5 = *(v1 + 3);
  v6 = result[1];
  v7 = (v5 * v2);
  if (v4 == v5 * v3)
  {
    v8 = (*(v1 + 4) * v7);
    v9 = *v1;
    v10 = *v6;
LABEL_34:

    return memset(v9, v10, v8);
  }

  v23 = *(v1 + 4);
  if (v2)
  {
    v24 = v5 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    v26 = *v1;
    v27 = v23 - 1;
    if (v23 != 1)
    {
      do
      {
        memset(v26, *v6, v7);
        v26 += v4;
        --v27;
      }

      while (v27);
    }

    v10 = *v6;
    v9 = v26;
    v8 = v7;
    goto LABEL_34;
  }

  return result;
}

unint64_t sub_27157487C(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) == 1)
  {
    return sub_2715746BC(result);
  }

  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = *(result + 8);
    v7 = v2 - 1;
    v8 = *(v1 + 24);
    v9 = *v1;
    v10 = v3 - 1;
    if (v10)
    {
      v11 = *(v1 + 28);
      v12 = *v6;
      if (v7)
      {
        v13 = 0;
        v14 = v9 + 2;
        do
        {
          v15 = v14;
          LODWORD(result) = v7;
          do
          {
            *(v15 - 2) = v12;
            v12 = *v6;
            *(v15 - 1) = *v6;
            *v15 = v12;
            v15 += v8;
            result = (result - 1);
          }

          while (result);
          v16 = *v6;
          *(v15 - 2) = *v6;
          *(v15 - 1) = v16;
          v12 = *v6;
          *v15 = *v6;
          v9 += v11;
          ++v13;
          v14 += v11;
        }

        while (v13 != v10);
        goto LABEL_19;
      }

      do
      {
        *v9 = v12;
        v12 = *v6;
        v9[1] = *v6;
        v9[2] = v12;
        v9 += v11;
        --v10;
      }

      while (v10);
    }

    v12 = *v6;
    if (!v7)
    {
LABEL_21:
      *v9 = v12;
      v17 = *v6;
      v9[1] = v17;
      v9[2] = v17;
      return result;
    }

    do
    {
LABEL_19:
      *v9 = v12;
      v12 = *v6;
      v9[1] = *v6;
      v9[2] = v12;
      v9 += v8;
      --v7;
    }

    while (v7);
    v12 = *v6;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_27157497C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a3[1])
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a3;
  if (v3)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  if (HIDWORD(v4))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v12) = 1;
  *(&v12 + 4) = v5 | (v6 << 32);
  *result = a2;
  *(result + 8) = __PAIR64__(v4, 3);
  *(result + 16) = HIDWORD(v4);
  *(result + 20) = v12;
  *(result + 28) = v6;
  *(result + 32) = v4;
  *(result + 40) = *(&v12 + 4);
  if (v6 * HIDWORD(v4) == -1)
  {
    v7 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_20:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return v7;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
      goto LABEL_20;
    }

LABEL_22:
    abort();
  }

  return result;
}

_BYTE ***sub_271574B58(_BYTE ***result, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *(a2 + 24);
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v8 + 3;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 3) = ***result;
            *(v13 - 2) = ***result;
            *(v13 - 1) = ***result;
            *v13 = ***result;
            v13 += v7;
            --v14;
          }

          while (v14);
          *(v13 - 3) = ***result;
          *(v13 - 2) = ***result;
          *(v13 - 1) = ***result;
          *v13 = ***result;
          v8 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_17;
      }

      do
      {
        *v8 = ***result;
        v8[1] = ***result;
        v8[2] = ***result;
        v8[3] = ***result;
        v8 += v10;
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_18:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      return result;
    }

    do
    {
LABEL_17:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      v8 += v7;
      --v6;
    }

    while (v6);
    goto LABEL_18;
  }

  return result;
}

void *sub_271574D20(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(v1 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v1;
    v16 = 2 * v2;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v1 + 20);
      if (!v14)
      {
        v48 = *v13;
        do
        {
          v15->i16[0] = v48;
          v15 = (v15 + 2 * v18);
          --v17;
        }

        while (v17);
        goto LABEL_50;
      }

      v19 = 0;
      v20 = *v13;
      v21 = 2 * v18;
      do
      {
        v22 = v15;
        v23 = v14;
        do
        {
          v22->i16[0] = v20;
          v22 = (v22 + v16);
          --v23;
        }

        while (v23);
        v20 = *v13;
        v22->i16[0] = *v13;
        v15 = (v15 + v21);
        ++v19;
      }

      while (v19 != v17);
    }

    else
    {
      v20 = *v13;
      if (!v14)
      {
LABEL_51:
        v15->i16[0] = v20;
        return result;
      }
    }

    do
    {
      v15->i16[0] = v20;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
LABEL_50:
    v20 = *v13;
    goto LABEL_51;
  }

  v3 = *(v1 + 20);
  v4 = *(v1 + 8);
  if (v3 != v4)
  {
    v24 = *(v1 + 12);
    if (v4)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v1;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v4 & 3);
      v30 = v27 + 1;
      v31 = 2 * v3;
      do
      {
        v32 = *v26;
        v33 = v4;
        v34 = v27;
        if (v4 >= 4)
        {
          if (v4 < 0x10)
          {
            v35 = 0;
LABEL_31:
            v34 = (v27 + 2 * (v4 & 0xFFFFFFFC));
            v39 = vdup_n_s16(v32);
            v40 = 2 * v35;
            v41 = v35 - (v4 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v33 = v4 & 3;
            if ((v4 & 0xFFFFFFFC) == v4)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v36 = vdupq_n_s16(v32);
          v37 = v4 & 0xFFFFFFF0;
          v38 = v30;
          do
          {
            v38[-1] = v36;
            *v38 = v36;
            v38 += 2;
            v37 -= 16;
          }

          while (v37);
          if ((v4 & 0xFFFFFFF0) == v4)
          {
            goto LABEL_23;
          }

          v35 = v4 & 0xFFFFFFF0;
          if ((v4 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v34 = (v27 + 2 * (v4 & 0xFFFFFFF0));
          v33 = v4 & 0xF;
        }

LABEL_36:
        v42 = v33 + 1;
        do
        {
          v34->i16[0] = v32;
          v34 = (v34 + 2);
          --v42;
        }

        while (v42 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    v43 = *v26;
    v44 = v4 - (v4 != 0) + 1;
    if (v44 < 4)
    {
      v45 = v27;
      goto LABEL_73;
    }

    if (v44 >= 0x10)
    {
      v47 = v44 & 0xFFFFFFFFFFFFFFF0;
      v55 = vdupq_n_s16(v43);
      v56 = v27 + 1;
      v57 = v44 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v56[-1] = v55;
        *v56 = v55;
        v56 += 2;
        v57 -= 16;
      }

      while (v57);
      if (v44 == v47)
      {
        return result;
      }

      if ((v44 & 0xC) == 0)
      {
        v45 = (v27 + 2 * v47);
        v4 -= v47;
        goto LABEL_73;
      }
    }

    else
    {
      v47 = 0;
    }

    v4 -= v44 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = (v27 + 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL));
    v58 = vdup_n_s16(v43);
    v59 = (v27 + 2 * v47);
    v60 = v47 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v59++ = v58;
      v60 += 4;
    }

    while (v60);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_73:
    v62 = v4 + 1;
    do
    {
      v45->i16[0] = v43;
      v45 = (v45 + 2);
      --v62;
    }

    while (v62 > 1);
    return result;
  }

  v5 = (*(v1 + 12) * v3);
  if (!v5)
  {
    return result;
  }

  v6 = *v1;
  v7 = *result[1];
  if (v5 < 4)
  {
    v8 = (*(v1 + 12) * v3);
    v9 = *v1;
    goto LABEL_69;
  }

  if (v5 >= 0x10)
  {
    v46 = v5 & 0xFFFFFFF0;
    v49 = vdupq_n_s16(v7);
    v50 = v6 + 1;
    v51 = v46;
    do
    {
      v50[-1] = v49;
      *v50 = v49;
      v50 += 2;
      v51 -= 16;
    }

    while (v51);
    if (v46 == v5)
    {
      return result;
    }

    if ((v5 & 0xC) == 0)
    {
      v9 = (v6 + 2 * v46);
      v8 = v5 & 0xF;
LABEL_69:
      v61 = v8 + 1;
      do
      {
        v9->i16[0] = v7;
        v9 = (v9 + 2);
        --v61;
      }

      while (v61 > 1);
      return result;
    }
  }

  else
  {
    v46 = 0;
  }

  v8 = v5 & 3;
  v9 = (v6 + 2 * (v5 & 0xFFFFFFFC));
  v52 = vdup_n_s16(v7);
  v53 = (v6 + 2 * v46);
  v54 = v46 - (v5 & 0xFFFFFFFC);
  do
  {
    *v53++ = v52;
    v54 += 4;
  }

  while (v54);
  if ((v5 & 0xFFFFFFFC) != v5)
  {
    goto LABEL_69;
  }

  return result;
}

void *sub_271575070(void *result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v12 == 1)
    {
      v22 = *v15;
      if (!v16)
      {
LABEL_54:
        v17->i16[0] = v22;
        v17->i16[1] = v22;
        v17->i16[2] = *v15;
        return result;
      }
    }

    else
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        v22 = *v15;
        do
        {
          v17->i16[0] = v22;
          v17->i16[1] = v22;
          v22 = *v15;
          v17->i16[2] = *v15;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_54;
      }

      v21 = 0;
      v22 = *v15;
      v23 = (v17->i64 + 4);
      do
      {
        result = v23;
        v24 = v16;
        do
        {
          *(result - 2) = v22;
          *(result - 1) = v22;
          v22 = *v15;
          *result = *v15;
          result = (result + v18);
          --v24;
        }

        while (v24);
        *(result - 2) = v22;
        *(result - 1) = v22;
        v22 = *v15;
        *result = *v15;
        v17 = (v17 + 2 * v20);
        ++v21;
        v23 = (v23 + 2 * v20);
      }

      while (v21 != v19);
    }

    do
    {
      v17->i16[0] = v22;
      v17->i16[1] = v22;
      v22 = *v15;
      v17->i16[2] = *v15;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_54;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v25 = result[1];
    v65[0] = *result;
    v65[1] = v25;
    return sub_271575450(v65);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v26 = *(v1 + 16);
    if (v2)
    {
      v27 = v4 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27 || v26 == 0)
    {
      return result;
    }

    v29 = result[1];
    v30 = *v1;
    v31 = v26 - 1;
    if (v31)
    {
      if (!v5)
      {
        return result;
      }

      v32 = 0;
      result = (v5 & 3);
      v33 = v30 + 1;
      v34 = 2 * v3;
      do
      {
        v35 = *v29;
        v36 = v5;
        v37 = v30;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v38 = 0;
LABEL_41:
            v37 = (v30 + 2 * (v5 & 0xFFFFFFFC));
            v42 = vdup_n_s16(v35);
            v43 = 2 * v38;
            v44 = v38 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v30->i8[v43] = v42;
              v43 += 8;
              v44 += 4;
            }

            while (v44);
            v36 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v39 = vdupq_n_s16(v35);
          v40 = v5 & 0xFFFFFFF0;
          v41 = v33;
          do
          {
            v41[-1] = v39;
            *v41 = v39;
            v41 += 2;
            v40 -= 16;
          }

          while (v40);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v38 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v37 = (v30 + 2 * (v5 & 0xFFFFFFF0));
          v36 = v5 & 0xF;
        }

LABEL_46:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = v35;
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_33:
        v30 = (v30 + v34);
        ++v32;
        v33 = (v33 + v34);
      }

      while (v32 != v31);
    }

    if (!v5)
    {
      return result;
    }

    v46 = *v29;
    if (v5 < 4)
    {
      v47 = v5;
      v48 = v30;
      goto LABEL_83;
    }

    if (v5 >= 0x10)
    {
      v56 = v5 & 0xFFFFFFF0;
      v57 = vdupq_n_s16(v46);
      v58 = v30 + 1;
      v59 = v56;
      do
      {
        v58[-1] = v57;
        *v58 = v57;
        v58 += 2;
        v59 -= 16;
      }

      while (v59);
      if (v56 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v48 = (v30 + 2 * v56);
        v47 = v5 & 0xF;
        goto LABEL_83;
      }
    }

    else
    {
      v56 = 0;
    }

    v47 = v5 & 3;
    v48 = (v30 + 2 * (v5 & 0xFFFFFFFC));
    v60 = vdup_n_s16(v46);
    v61 = (v30 + 2 * v56);
    v62 = v56 - (v5 & 0xFFFFFFFC);
    do
    {
      *v61++ = v60;
      v62 += 4;
    }

    while (v62);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_83:
    v64 = v47 + 1;
    do
    {
      v48->i16[0] = v46;
      v48 = (v48 + 2);
      --v64;
    }

    while (v64 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = *result[1];
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = *v1;
    goto LABEL_79;
  }

  if (v6 >= 0x10)
  {
    v49 = v6 & 0xFFFFFFF0;
    v50 = vdupq_n_s16(v8);
    v51 = v7 + 1;
    v52 = v49;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 16;
    }

    while (v52);
    if (v49 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v49);
      v9 = v6 & 0xF;
LABEL_79:
      v63 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v63;
      }

      while (v63 > 1);
      return result;
    }
  }

  else
  {
    v49 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v53 = vdup_n_s16(v8);
  v54 = (v7 + 2 * v49);
  v55 = v49 - (v6 & 0xFFFFFFFC);
  do
  {
    *v54++ = v53;
    v55 += 4;
  }

  while (v55);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_79;
  }

  return result;
}

unint64_t sub_271575450(unint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 12);
  v4 = *(*result + 16);
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = *(result + 8);
    v8 = v3 - 1;
    v9 = *v1;
    v10 = 2 * *(v1 + 6);
    v11 = v4 - 1;
    if (v11)
    {
      v12 = *(v1 + 7);
      v13 = v2 & 0xFFFFFFF0;
      v14 = 2 * v13;
      result = v2 & 0xFFFFFFFC;
      v15 = 2 * result;
      v16 = 0;
      v17 = v9 + 1;
      v18 = 2 * v12;
      if (!v8)
      {
        while (1)
        {
          v43 = *v7;
          v44 = v2;
          v45 = v9;
          if (v2 >= 4)
          {
            if (v2 < 0x10)
            {
              v46 = 0;
LABEL_53:
              v45 = (v9 + v15);
              v50 = vdup_n_s16(v43);
              v51 = 2 * v46;
              v52 = v46 - (v2 & 0xFFFFFFFC);
              do
              {
                *&v9->i8[v51] = v50;
                v51 += 8;
                v52 += 4;
              }

              while (v52);
              v44 = v2 & 3;
              if (result == v2)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

            v47 = vdupq_n_s16(v43);
            v48 = v2 & 0xFFFFFFF0;
            v49 = v17;
            do
            {
              v49[-1] = v47;
              *v49 = v47;
              v49 += 2;
              v48 -= 16;
            }

            while (v48);
            if (v13 == v2)
            {
              goto LABEL_45;
            }

            v46 = v2 & 0xFFFFFFF0;
            if ((v2 & 0xC) != 0)
            {
              goto LABEL_53;
            }

            v45 = (v9 + v14);
            v44 = v2 & 0xF;
          }

LABEL_58:
          v53 = v44 + 1;
          do
          {
            v45->i16[0] = v43;
            v45 = (v45 + 2);
            --v53;
          }

          while (v53 > 1);
LABEL_45:
          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_12:
      v19 = 0;
      v20 = v9;
      v21 = v17;
      while (1)
      {
        v22 = *v7;
        v23 = v2;
        v24 = v20;
        if (v2 >= 4)
        {
          if (v2 < 0x10)
          {
            v25 = 0;
LABEL_21:
            v24 = (v20 + v15);
            v29 = vdup_n_s16(v22);
            v30 = 2 * v25;
            v31 = v25 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v30] = v29;
              v30 += 8;
              v31 += 4;
            }

            while (v31);
            v23 = v2 & 3;
            if (result == v2)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v26 = vdupq_n_s16(v22);
          v27 = v2 & 0xFFFFFFF0;
          v28 = v21;
          do
          {
            v28[-1] = v26;
            *v28 = v26;
            v28 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v13 == v2)
          {
            goto LABEL_13;
          }

          v25 = v2 & 0xFFFFFFF0;
          if ((v2 & 0xC) != 0)
          {
            goto LABEL_21;
          }

          v24 = (v20 + v14);
          v23 = v2 & 0xF;
        }

LABEL_26:
        v32 = v23 + 1;
        do
        {
          v24->i16[0] = v22;
          v24 = (v24 + 2);
          --v32;
        }

        while (v32 > 1);
LABEL_13:
        v20 = (v20 + v10);
        ++v19;
        v21 = (v21 + v10);
        if (v19 == v8)
        {
          v33 = *v7;
          if (v2 < 4)
          {
            v34 = v2;
            v35 = v20;
            goto LABEL_42;
          }

          if (v2 >= 0x10)
          {
            v37 = 0;
            v38 = vdupq_n_s16(v33);
            do
            {
              v20[v37 / 0x10] = v38;
              v21[v37 / 0x10] = v38;
              v37 += 32;
            }

            while (v14 != v37);
            if (v13 != v2)
            {
              v36 = v2 & 0xFFFFFFF0;
              if ((v2 & 0xC) == 0)
              {
                v35 = (v20 + v14);
                v34 = v2 & 0xF;
                goto LABEL_42;
              }

              goto LABEL_37;
            }
          }

          else
          {
            v36 = 0;
LABEL_37:
            v35 = (v20 + v15);
            v39 = vdup_n_s16(v33);
            v40 = 2 * v36;
            v41 = v36 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v34 = v2 & 3;
            if (result != v2)
            {
LABEL_42:
              v42 = v34 + 1;
              do
              {
                v35->i16[0] = v33;
                v35 = (v35 + 2);
                --v42;
              }

              while (v42 > 1);
            }
          }

          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_61:
    if (v8)
    {
      v54 = 0;
      v55 = v2 - (v2 != 0) + 1;
      result = v55 & 0xC;
      v56 = v9 + 1;
      do
      {
        v57 = *v7;
        v58 = v2;
        v59 = v9;
        if (v55 >= 4)
        {
          if (v55 < 0x10)
          {
            v60 = 0;
LABEL_71:
            v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFFCLL));
            v64 = vdup_n_s16(v57);
            v65 = 2 * v60;
            v66 = v60 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v9->i8[v65] = v64;
              v65 += 8;
              v66 += 4;
            }

            while (v66);
            v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            if (v55 == (v55 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_63;
            }

            goto LABEL_76;
          }

          v61 = vdupq_n_s16(v57);
          v62 = v55 & 0xFFFFFFFFFFFFFFF0;
          v63 = v56;
          do
          {
            v63[-1] = v61;
            *v63 = v61;
            v63 += 2;
            v62 -= 16;
          }

          while (v62);
          if (v55 == (v55 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_63;
          }

          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          if ((v55 & 0xC) != 0)
          {
            goto LABEL_71;
          }

          v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFF0));
          v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_76:
        v67 = v58 + 1;
        do
        {
          v59->i16[0] = v57;
          v59 = (v59 + 2);
          --v67;
        }

        while (v67 > 1);
LABEL_63:
        v9 = (v9 + v10);
        ++v54;
        v56 = (v56 + v10);
      }

      while (v54 != v8);
    }

    v68 = *v7;
    v69 = v2 - (v2 != 0) + 1;
    if (v69 < 4)
    {
      v70 = v9;
      goto LABEL_92;
    }

    if (v69 >= 0x10)
    {
      v71 = v69 & 0xFFFFFFFFFFFFFFF0;
      v72 = vdupq_n_s16(v68);
      v73 = v9 + 1;
      v74 = v69 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v73[-1] = v72;
        *v73 = v72;
        v73 += 2;
        v74 -= 16;
      }

      while (v74);
      if (v69 == v71)
      {
        return result;
      }

      if ((v69 & 0xC) == 0)
      {
        v70 = (v9 + 2 * v71);
        v2 -= v71;
LABEL_92:
        v78 = v2 + 1;
        do
        {
          v70->i16[0] = v68;
          v70 = (v70 + 2);
          --v78;
        }

        while (v78 > 1);
        return result;
      }
    }

    else
    {
      v71 = 0;
    }

    v2 -= v69 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = (v9 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v75 = vdup_n_s16(v68);
    v76 = (v9 + 2 * v71);
    v77 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v76++ = v75;
      v77 += 4;
    }

    while (v77);
    if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_92;
    }
  }

  return result;
}

unint64_t sub_2715758B0(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = *(result + 8);
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        do
        {
          v51 = *v15;
          v17->i16[0] = *v15;
          v17->i16[1] = v51;
          v52 = *v15;
          v17->i16[2] = *v15;
          v17->i16[3] = v52;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_53;
      }

      v21 = 0;
      v22 = &v17->i16[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        result = *v15;
        *v23 = result;
        v23[1] = result;
        v17 = (v17 + 2 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_53:
      v53 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v53;
      v54 = *v15;
      v17->i16[2] = v54;
      v17->i16[3] = v54;
      return result;
    }

    do
    {
      v49 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v49;
      v50 = *v15;
      v17->i16[2] = *v15;
      v17->i16[3] = v50;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_53;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v28 = *(result + 8);
    v74[0] = *result;
    v74[1] = v28;
    return sub_271575450(v74);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v29 = *(v1 + 16);
    if (v2)
    {
      v30 = v4 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30 || v29 == 0)
    {
      return result;
    }

    v32 = *(result + 8);
    v33 = *v1;
    v34 = v29 - 1;
    if (v34)
    {
      if (!v5)
      {
        return result;
      }

      v35 = 0;
      result = v5 & 3;
      v36 = v33 + 1;
      v37 = 2 * v3;
      do
      {
        v38 = *v32;
        v39 = v5;
        v40 = v33;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v41 = 0;
LABEL_41:
            v40 = (v33 + 2 * (v5 & 0xFFFFFFFC));
            v45 = vdup_n_s16(v38);
            v46 = 2 * v41;
            v47 = v41 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v33->i8[v46] = v45;
              v46 += 8;
              v47 += 4;
            }

            while (v47);
            v39 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v42 = vdupq_n_s16(v38);
          v43 = v5 & 0xFFFFFFF0;
          v44 = v36;
          do
          {
            v44[-1] = v42;
            *v44 = v42;
            v44 += 2;
            v43 -= 16;
          }

          while (v43);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v41 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v40 = (v33 + 2 * (v5 & 0xFFFFFFF0));
          v39 = v5 & 0xF;
        }

LABEL_46:
        v48 = v39 + 1;
        do
        {
          v40->i16[0] = v38;
          v40 = (v40 + 2);
          --v48;
        }

        while (v48 > 1);
LABEL_33:
        v33 = (v33 + v37);
        ++v35;
        v36 = (v36 + v37);
      }

      while (v35 != v34);
    }

    if (!v5)
    {
      return result;
    }

    v55 = *v32;
    if (v5 < 4)
    {
      v56 = v5;
      v57 = v33;
      goto LABEL_82;
    }

    if (v5 >= 0x10)
    {
      v65 = v5 & 0xFFFFFFF0;
      v66 = vdupq_n_s16(v55);
      v67 = v33 + 1;
      v68 = v65;
      do
      {
        v67[-1] = v66;
        *v67 = v66;
        v67 += 2;
        v68 -= 16;
      }

      while (v68);
      if (v65 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v57 = (v33 + 2 * v65);
        v56 = v5 & 0xF;
        goto LABEL_82;
      }
    }

    else
    {
      v65 = 0;
    }

    v56 = v5 & 3;
    v57 = (v33 + 2 * (v5 & 0xFFFFFFFC));
    v69 = vdup_n_s16(v55);
    v70 = (v33 + 2 * v65);
    v71 = v65 - (v5 & 0xFFFFFFFC);
    do
    {
      *v70++ = v69;
      v71 += 4;
    }

    while (v71);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_82:
    v73 = v56 + 1;
    do
    {
      v57->i16[0] = v55;
      v57 = (v57 + 2);
      --v73;
    }

    while (v73 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = **(result + 8);
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = v7;
    goto LABEL_78;
  }

  if (v6 >= 0x10)
  {
    v58 = v6 & 0xFFFFFFF0;
    v59 = vdupq_n_s16(v8);
    v60 = v7 + 1;
    v61 = v58;
    do
    {
      v60[-1] = v59;
      *v60 = v59;
      v60 += 2;
      v61 -= 16;
    }

    while (v61);
    if (v58 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v58);
      v9 = v6 & 0xF;
LABEL_78:
      v72 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v72;
      }

      while (v72 > 1);
      return result;
    }
  }

  else
  {
    v58 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v62 = vdup_n_s16(v8);
  v63 = (v7 + 2 * v58);
  v64 = v58 - (v6 & 0xFFFFFFFC);
  do
  {
    *v63++ = v62;
    v64 += 4;
  }

  while (v64);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_78;
  }

  return result;
}

void *sub_271575CAC(void *result, int16x4_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v2;
    v16 = 2 * v3;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v2 + 20);
      v19 = *v13;
      if (v14)
      {
        v20 = 0;
        v21 = 2 * v18;
        do
        {
          v22 = v15;
          v23 = v14;
          do
          {
            v22->i16[0] = v19;
            v22 = (v22 + v16);
            --v23;
          }

          while (v23);
          v19 = *v13;
          v22->i16[0] = *v13;
          v15 = (v15 + v21);
          ++v20;
        }

        while (v20 != v17);
        goto LABEL_48;
      }

      do
      {
        v15->i16[0] = v19;
        v15 = (v15 + 2 * v18);
        --v17;
      }

      while (v17);
    }

    if (!v14)
    {
LABEL_49:
      v15->i16[0] = *v13;
      return result;
    }

    v19 = *v13;
    do
    {
LABEL_48:
      v15->i16[0] = v19;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
    goto LABEL_49;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 != v5)
  {
    v24 = *(v2 + 12);
    if (v5)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v2;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v5 & 3);
      v30 = v27 + 1;
      v31 = 2 * v4;
      do
      {
        a2.i16[0] = *v26;
        v32 = v5;
        v33 = v27;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v34 = 0;
LABEL_31:
            v33 = (v27 + 2 * (v5 & 0xFFFFFFFC));
            v38 = vdup_lane_s16(a2, 0);
            v39 = 2 * v34;
            v40 = v34 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v39] = v38;
              v39 += 8;
              v40 += 4;
            }

            while (v40);
            v32 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v35 = vdupq_lane_s16(a2, 0);
          v36 = v5 & 0xFFFFFFF0;
          v37 = v30;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 16;
          }

          while (v36);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_23;
          }

          v34 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v33 = (v27 + 2 * (v5 & 0xFFFFFFF0));
          v32 = v5 & 0xF;
        }

LABEL_36:
        v41 = v32 + 1;
        do
        {
          v33->i16[0] = a2.i16[0];
          v33 = (v33 + 2);
          --v41;
        }

        while (v41 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    a2.i16[0] = *v26;
    v42 = v5 - (v5 != 0) + 1;
    if (v42 < 4)
    {
      v43 = v27;
      goto LABEL_71;
    }

    if (v42 >= 0x10)
    {
      v45 = v42 & 0xFFFFFFFFFFFFFFF0;
      v52 = vdupq_lane_s16(a2, 0);
      v53 = v27 + 1;
      v54 = v42 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53[-1] = v52;
        *v53 = v52;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v42 == v45)
      {
        return result;
      }

      if ((v42 & 0xC) == 0)
      {
        v43 = (v27 + 2 * v45);
        v5 -= v45;
        goto LABEL_71;
      }
    }

    else
    {
      v45 = 0;
    }

    v5 -= v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v27 + 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v55 = vdup_lane_s16(a2, 0);
    v56 = (v27 + 2 * v45);
    v57 = v45 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v56++ = v55;
      v57 += 4;
    }

    while (v57);
    if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_71:
    v59 = v5 + 1;
    do
    {
      v43->i16[0] = a2.i16[0];
      v43 = (v43 + 2);
      --v59;
    }

    while (v59 > 1);
    return result;
  }

  v6 = (*(v2 + 12) * v4);
  if (!v6)
  {
    return result;
  }

  v7 = *v2;
  a2.i16[0] = *result[1];
  if (v6 < 4)
  {
    v8 = (*(v2 + 12) * v4);
    v9 = *v2;
    goto LABEL_67;
  }

  if (v6 >= 0x10)
  {
    v44 = v6 & 0xFFFFFFF0;
    v46 = vdupq_lane_s16(a2, 0);
    v47 = v7 + 1;
    v48 = v44;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 16;
    }

    while (v48);
    if (v44 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v9 = (v7 + 2 * v44);
      v8 = v6 & 0xF;
LABEL_67:
      v58 = v8 + 1;
      do
      {
        v9->i16[0] = a2.i16[0];
        v9 = (v9 + 2);
        --v58;
      }

      while (v58 > 1);
      return result;
    }
  }

  else
  {
    v44 = 0;
  }

  v8 = v6 & 3;
  v9 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v49 = vdup_lane_s16(a2, 0);
  v50 = (v7 + 2 * v44);
  v51 = v44 - (v6 & 0xFFFFFFFC);
  do
  {
    *v50++ = v49;
    v51 += 4;
  }

  while (v51);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_67;
  }

  return result;
}

__int16 sub_271575FE8@<H0>(void *a1@<X0>, int16x4_t a2@<D0>)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v12 = *(v2 + 12);
    v13 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v13 == 0)
    {
      return a2.i16[0];
    }

    v16 = a1[1];
    v17 = v12 - 1;
    v18 = *v2;
    v19 = 2 * *(v2 + 24);
    v20 = v13 - 1;
    if (v20)
    {
      v21 = *(v2 + 28);
      v22 = *v16;
      if (v17)
      {
        v23 = 0;
        v24 = &v18->i16[1];
        do
        {
          v25 = v24;
          v26 = v17;
          do
          {
            *(v25 - 1) = v22;
            v22 = *v16;
            *v25 = *v16;
            v25 = (v25 + v19);
            --v26;
          }

          while (v26);
          *(v25 - 1) = v22;
          v22 = *v16;
          *v25 = *v16;
          v18 = (v18 + 2 * v21);
          ++v23;
          v24 += v21;
        }

        while (v23 != v20);
        goto LABEL_60;
      }

      v52 = 2 * v21;
      do
      {
        v18->i16[0] = v22;
        v22 = *v16;
        v18->i16[1] = *v16;
        v18 = (v18 + v52);
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = *v16;
    }

    if (!v17)
    {
LABEL_61:
      v18->i16[0] = v22;
      a2.i16[0] = *v16;
      v18->i16[1] = *v16;
      return a2.i16[0];
    }

    do
    {
LABEL_60:
      v18->i16[0] = v22;
      v22 = *v16;
      v18->i16[1] = *v16;
      v18 = (v18 + v19);
      --v17;
    }

    while (v17);
    goto LABEL_61;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v27 = a1[1];
    v73 = 0;
    v72 = v4;
    v74[0] = &v73;
    v74[1] = &v72;
    v74[2] = v27;
    v29 = *(v2 + 12);
    v28 = *(v2 + 16);
    if (v4)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30 && v28 != 0)
    {
      v75[0] = 0;
      v75[1] = v4 - 1;
      v75[2] = 1;
      v75[3] = v29 - 1;
      v75[4] = v3;
      v75[5] = v28 - 1;
      v75[6] = *(v2 + 28);
      v32 = *v2;
      v76[0] = 0;
      v76[1] = 0;
      sub_271576400(v75, v76, v74, v32, a2);
    }

    return a2.i16[0];
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v33 = *(v2 + 16);
    if (v3)
    {
      v34 = v6 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34 || v33 == 0)
    {
      return a2.i16[0];
    }

    v36 = a1[1];
    v37 = *v2;
    v38 = v33 - 1;
    if (v38)
    {
      if (!v7)
      {
        return a2.i16[0];
      }

      v39 = 0;
      v40 = v37 + 1;
      v41 = 2 * v5;
      do
      {
        a2.i16[0] = *v36;
        v42 = v7;
        v43 = v37;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v44 = 0;
LABEL_48:
            v43 = (v37 + 2 * (v7 & 0xFFFFFFFC));
            v48 = vdup_lane_s16(a2, 0);
            v49 = 2 * v44;
            v50 = v44 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v37->i8[v49] = v48;
              v49 += 8;
              v50 += 4;
            }

            while (v50);
            v42 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_40;
            }

            goto LABEL_53;
          }

          v45 = vdupq_lane_s16(a2, 0);
          v46 = v7 & 0xFFFFFFF0;
          v47 = v40;
          do
          {
            v47[-1] = v45;
            *v47 = v45;
            v47 += 2;
            v46 -= 16;
          }

          while (v46);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_40;
          }

          v44 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v43 = (v37 + 2 * (v7 & 0xFFFFFFF0));
          v42 = v7 & 0xF;
        }

LABEL_53:
        v51 = v42 + 1;
        do
        {
          v43->i16[0] = a2.i16[0];
          v43 = (v43 + 2);
          --v51;
        }

        while (v51 > 1);
LABEL_40:
        v37 = (v37 + v41);
        ++v39;
        v40 = (v40 + v41);
      }

      while (v39 != v38);
    }

    if (!v7)
    {
      return a2.i16[0];
    }

    a2.i16[0] = *v36;
    if (v7 < 4)
    {
      v53 = v7;
      v54 = v37;
      goto LABEL_90;
    }

    if (v7 >= 0x10)
    {
      v62 = v7 & 0xFFFFFFF0;
      v63 = vdupq_lane_s16(a2, 0);
      v64 = v37 + 1;
      v65 = v62;
      do
      {
        v64[-1] = v63;
        *v64 = v63;
        v64 += 2;
        v65 -= 16;
      }

      while (v65);
      if (v62 == v7)
      {
        return a2.i16[0];
      }

      if ((v7 & 0xC) == 0)
      {
        v54 = (v37 + 2 * v62);
        v53 = v7 & 0xF;
        goto LABEL_90;
      }
    }

    else
    {
      v62 = 0;
    }

    v53 = v7 & 3;
    v54 = (v37 + 2 * (v7 & 0xFFFFFFFC));
    v66 = vdup_lane_s16(a2, 0);
    v67 = (v37 + 2 * v62);
    v68 = v62 - (v7 & 0xFFFFFFFC);
    do
    {
      *v67++ = v66;
      v68 += 4;
    }

    while (v68);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return a2.i16[0];
    }

LABEL_90:
    v70 = v53 + 1;
    do
    {
      v54->i16[0] = a2.i16[0];
      v54 = (v54 + 2);
      --v70;
    }

    while (v70 > 1);
    return a2.i16[0];
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return a2.i16[0];
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = v9;
    goto LABEL_86;
  }

  if (v8 >= 0x10)
  {
    v55 = v8 & 0xFFFFFFF0;
    v56 = vdupq_lane_s16(a2, 0);
    v57 = v9 + 1;
    v58 = v55;
    do
    {
      v57[-1] = v56;
      *v57 = v56;
      v57 += 2;
      v58 -= 16;
    }

    while (v58);
    if (v55 == v8)
    {
      return a2.i16[0];
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v55);
      v10 = v8 & 0xF;
LABEL_86:
      v69 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v69;
      }

      while (v69 > 1);
      return a2.i16[0];
    }
  }

  else
  {
    v55 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v59 = vdup_lane_s16(a2, 0);
  v60 = (v9 + 2 * v55);
  v61 = v55 - (v8 & 0xFFFFFFFC);
  do
  {
    *v60++ = v59;
    v61 += 4;
  }

  while (v61);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_86;
  }

  return a2.i16[0];
}

_DWORD *sub_271576400(_DWORD *result, int16x8_t **a2, uint64_t a3, int16x8_t *a4, int16x4_t a5)
{
  if (result[5])
  {
    for (i = 0; i < result[5]; ++i)
    {
      *a2 = a4;
      v6 = result[3];
      v7 = *(a3 + 8);
      if (!v6)
      {
        v9 = a4;
        *a2 = a4;
        v22 = *v7;
        if (v22 >= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      if (*v7 < 1)
      {
        v9 = (a4 + (2 * (v6 - 1) + 2) * result[4]);
        *a2 = v9;
        v22 = *v7;
        if (v22 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }

      v8 = 0;
      v9 = a4;
      do
      {
        *a2 = v9;
        v10 = **(a3 + 8);
        if (v10 >= 1)
        {
          a5.i16[0] = **(a3 + 16);
          v11 = **(a3 + 8);
          v12 = v9;
          if (v10 < 4)
          {
            goto LABEL_22;
          }

          if (v10 >= 0x10)
          {
            v13 = v10 & 0x7FFFFFFFFFFFFFF0;
            v14 = vdupq_lane_s16(a5, 0);
            v15 = v9 + 1;
            v16 = v10 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v15[-1] = v14;
              *v15 = v14;
              v15 += 2;
              v16 -= 16;
            }

            while (v16);
            if (v10 != v13)
            {
              if ((v10 & 0xC) != 0)
              {
                goto LABEL_17;
              }

              v12 = (v9 + 2 * v13);
              v11 = v10 & 0xF;
LABEL_22:
              v20 = v11 + 1;
              do
              {
                v12->i16[0] = a5.i16[0];
                v12 = (v12 + 2);
                --v20;
              }

              while (v20 > 1);
            }
          }

          else
          {
            v13 = 0;
LABEL_17:
            v11 = v10 & 3;
            v12 = (v9 + 2 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
            v17 = vdup_lane_s16(a5, 0);
            v18 = (v9 + 2 * v13);
            v19 = v13 - (v10 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v18++ = v17;
              v19 += 4;
            }

            while (v19);
            if (v10 != (v10 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_22;
            }
          }

          v6 = result[3];
        }

        v9 = (v9 + 2 * result[4]);
        ++v8;
      }

      while (v8 < v6);
      v21 = *(a3 + 8);
      *a2 = v9;
      v22 = *v21;
      if (v22 < 1)
      {
        goto LABEL_3;
      }

LABEL_30:
      a5.i16[0] = **(a3 + 16);
      if (v22 < 4)
      {
        v23 = v22;
        v24 = v9;
        goto LABEL_43;
      }

      if (v22 >= 0x10)
      {
        v25 = v22 & 0x7FFFFFFFFFFFFFF0;
        v26 = vdupq_lane_s16(a5, 0);
        v27 = v9 + 1;
        v28 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v27[-1] = v26;
          *v27 = v26;
          v27 += 2;
          v28 -= 16;
        }

        while (v28);
        if (v22 != v25)
        {
          if ((v22 & 0xC) == 0)
          {
            v24 = (v9 + 2 * v25);
            v23 = v22 & 0xF;
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v25 = 0;
LABEL_38:
        v23 = v22 & 3;
        v24 = (v9 + 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL));
        v29 = vdup_lane_s16(a5, 0);
        v30 = (v9 + 2 * v25);
        v31 = v25 - (v22 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v30++ = v29;
          v31 += 4;
        }

        while (v31);
        if (v22 != (v22 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_43:
          v32 = v23 + 1;
          do
          {
            v24->i16[0] = a5.i16[0];
            v24 = (v24 + 2);
            --v32;
          }

          while (v32 > 1);
        }
      }

LABEL_3:
      a4 = (a4 + 2 * result[6]);
    }
  }

  *a2 = a4;
  v33 = result[3];
  if (v33)
  {
    if (**(a3 + 8) >= 1)
    {
      v34 = 0;
      while (1)
      {
        *a2 = a4;
        v35 = **(a3 + 8);
        if (v35 < 1)
        {
          goto LABEL_50;
        }

        a5.i16[0] = **(a3 + 16);
        v36 = **(a3 + 8);
        v37 = a4;
        if (v35 >= 4)
        {
          if (v35 < 0x10)
          {
            v38 = 0;
LABEL_59:
            v36 = v35 & 3;
            v37 = (a4 + 2 * (v35 & 0x7FFFFFFFFFFFFFFCLL));
            v42 = vdup_lane_s16(a5, 0);
            v43 = (a4 + 2 * v38);
            v44 = v38 - (v35 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v43++ = v42;
              v44 += 4;
            }

            while (v44);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_49;
            }

            goto LABEL_64;
          }

          v38 = v35 & 0x7FFFFFFFFFFFFFF0;
          v39 = vdupq_lane_s16(a5, 0);
          v40 = a4 + 1;
          v41 = v35 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v40[-1] = v39;
            *v40 = v39;
            v40 += 2;
            v41 -= 16;
          }

          while (v41);
          if (v35 == v38)
          {
            goto LABEL_49;
          }

          if ((v35 & 0xC) != 0)
          {
            goto LABEL_59;
          }

          v37 = (a4 + 2 * v38);
          v36 = v35 & 0xF;
        }

LABEL_64:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = a5.i16[0];
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_49:
        v33 = result[3];
LABEL_50:
        a4 = (a4 + 2 * result[4]);
        if (++v34 >= v33)
        {
          goto LABEL_68;
        }
      }
    }

    a4 = (a4 + (2 * (v33 - 1) + 2) * result[4]);
  }

LABEL_68:
  *a2 = a4;
  v46 = **(a3 + 8);
  if (v46 >= 1)
  {
    a5.i16[0] = **(a3 + 16);
    if (v46 < 4)
    {
      v47 = **(a3 + 8);
      v48 = a4;
      goto LABEL_82;
    }

    if (v46 >= 0x10)
    {
      v49 = v46 & 0x7FFFFFFFFFFFFFF0;
      v50 = vdupq_lane_s16(a5, 0);
      v51 = a4 + 1;
      v52 = v46 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v51[-1] = v50;
        *v51 = v50;
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      if (v46 == v49)
      {
        return result;
      }

      if ((v46 & 0xC) == 0)
      {
        v48 = (a4 + 2 * v49);
        v47 = v46 & 0xF;
LABEL_82:
        v56 = v47 + 1;
        do
        {
          v48->i16[0] = a5.i16[0];
          v48 = (v48 + 2);
          --v56;
        }

        while (v56 > 1);
        return result;
      }
    }

    else
    {
      v49 = 0;
    }

    v47 = v46 & 3;
    v48 = (a4 + 2 * (v46 & 0x7FFFFFFFFFFFFFFCLL));
    v53 = vdup_lane_s16(a5, 0);
    v54 = (a4 + 2 * v49);
    v55 = v49 - (v46 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      *v54++ = v53;
      v55 += 4;
    }

    while (v55);
    if (v46 != (v46 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_82;
    }
  }

  return result;
}

void sub_2715767EC(uint64_t *result, int16x4_t a2)
{
  v2 = *result;
  if (*(*result + 20) != 1)
  {
    v59[0] = result[1];
    if (*(v2 + 8))
    {
      v12 = *(v2 + 12) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && *(v2 + 16) != 0)
    {
      v60 = v59;
      sub_271576B58(&v60, v2);
    }

    return;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v14 = result[1];
    v58 = 0;
    v57 = v4;
    v59[0] = &v58;
    v59[1] = &v57;
    v59[2] = v14;
    v16 = *(v2 + 12);
    v15 = *(v2 + 16);
    if (v4)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && v15 != 0)
    {
      LODWORD(v60) = 0;
      HIDWORD(v60) = v4 - 1;
      v61 = 1;
      v62 = v16 - 1;
      v63 = v3;
      v64 = v15 - 1;
      v65 = *(v2 + 28);
      v19 = *v2;
      v66[0] = 0;
      v66[1] = 0;
      sub_271576400(&v60, v66, v59, v19, a2);
    }

    return;
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v20 = *(v2 + 16);
    if (v3)
    {
      v21 = v6 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v20 == 0)
    {
      return;
    }

    v23 = result[1];
    v24 = *v2;
    v25 = v20 - 1;
    if (v25)
    {
      if (!v7)
      {
        return;
      }

      v26 = 0;
      v27 = v24 + 1;
      v28 = 2 * v5;
      do
      {
        a2.i16[0] = *v23;
        v29 = v7;
        v30 = v24;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v31 = 0;
LABEL_42:
            v30 = (v24 + 2 * (v7 & 0xFFFFFFFC));
            v35 = vdup_lane_s16(a2, 0);
            v36 = 2 * v31;
            v37 = v31 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v24->i8[v36] = v35;
              v36 += 8;
              v37 += 4;
            }

            while (v37);
            v29 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_34;
            }

            goto LABEL_47;
          }

          v32 = vdupq_lane_s16(a2, 0);
          v33 = v7 & 0xFFFFFFF0;
          v34 = v27;
          do
          {
            v34[-1] = v32;
            *v34 = v32;
            v34 += 2;
            v33 -= 16;
          }

          while (v33);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_34;
          }

          v31 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_42;
          }

          v30 = (v24 + 2 * (v7 & 0xFFFFFFF0));
          v29 = v7 & 0xF;
        }

LABEL_47:
        v38 = v29 + 1;
        do
        {
          v30->i16[0] = a2.i16[0];
          v30 = (v30 + 2);
          --v38;
        }

        while (v38 > 1);
LABEL_34:
        v24 = (v24 + v28);
        ++v26;
        v27 = (v27 + v28);
      }

      while (v26 != v25);
    }

    if (!v7)
    {
      return;
    }

    a2.i16[0] = *v23;
    if (v7 < 4)
    {
      v39 = v7;
      v40 = v24;
      goto LABEL_78;
    }

    if (v7 >= 0x10)
    {
      v48 = v7 & 0xFFFFFFF0;
      v49 = vdupq_lane_s16(a2, 0);
      v50 = v24 + 1;
      v51 = v48;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
      if (v48 == v7)
      {
        return;
      }

      if ((v7 & 0xC) == 0)
      {
        v40 = (v24 + 2 * v48);
        v39 = v7 & 0xF;
        goto LABEL_78;
      }
    }

    else
    {
      v48 = 0;
    }

    v39 = v7 & 3;
    v40 = (v24 + 2 * (v7 & 0xFFFFFFFC));
    v52 = vdup_lane_s16(a2, 0);
    v53 = (v24 + 2 * v48);
    v54 = v48 - (v7 & 0xFFFFFFFC);
    do
    {
      *v53++ = v52;
      v54 += 4;
    }

    while (v54);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return;
    }

LABEL_78:
    v56 = v39 + 1;
    do
    {
      v40->i16[0] = a2.i16[0];
      v40 = (v40 + 2);
      --v56;
    }

    while (v56 > 1);
    return;
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return;
  }

  v9 = *v2;
  a2.i16[0] = *result[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = *v2;
    goto LABEL_74;
  }

  if (v8 >= 0x10)
  {
    v41 = v8 & 0xFFFFFFF0;
    v42 = vdupq_lane_s16(a2, 0);
    v43 = v9 + 1;
    v44 = v41;
    do
    {
      v43[-1] = v42;
      *v43 = v42;
      v43 += 2;
      v44 -= 16;
    }

    while (v44);
    if (v41 == v8)
    {
      return;
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v41);
      v10 = v8 & 0xF;
LABEL_74:
      v55 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v55;
      }

      while (v55 > 1);
      return;
    }
  }

  else
  {
    v41 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v45 = vdup_lane_s16(a2, 0);
  v46 = (v9 + 2 * v41);
  v47 = v41 - (v8 & 0xFFFFFFFC);
  do
  {
    *v46++ = v45;
    v47 += 4;
  }

  while (v47);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_74;
  }
}

__int16 sub_271576B58@<H0>(__int16 ***a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *a2;
    v8 = 2 * *(a2 + 24);
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v7 + 2;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 2) = ***a1;
            *(v13 - 1) = ***a1;
            *v13 = ***a1;
            v13[1] = ***a1;
            v13 = (v13 + v8);
            --v14;
          }

          while (v14);
          *(v13 - 2) = ***a1;
          *(v13 - 1) = ***a1;
          *v13 = ***a1;
          v13[1] = ***a1;
          v7 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_18;
      }

      v15 = 2 * v10;
      do
      {
        *v7 = ***a1;
        v7[1] = ***a1;
        v7[2] = ***a1;
        v7[3] = ***a1;
        v7 = (v7 + v15);
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_19:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v16 = **a1;
      result = *v16;
      v7[3] = *v16;
      return result;
    }

    do
    {
LABEL_18:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v7[3] = ***a1;
      v7 = (v7 + v8);
      --v6;
    }

    while (v6);
    goto LABEL_19;
  }

  return result;
}

__int32 **sub_271576D2C(__int32 **result, int32x2_t a2)
{
  v2 = *result;
  v3 = (*result)[4];
  if (v3 != 1)
  {
    v11 = *(v2 + 8);
    v12 = *(v2 + 12);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return result;
    }

    v14 = result[1];
    v15 = v11 - 1;
    v16 = *v2;
    v17 = 4 * v3;
    v18 = v12 - 1;
    if (v18)
    {
      v19 = *(v2 + 20);
      if (!v15)
      {
        v48 = *v14;
        do
        {
          v16->i32[0] = v48;
          v16 = (v16 + 4 * v19);
          --v18;
        }

        while (v18);
        goto LABEL_50;
      }

      v20 = 0;
      v21 = *v14;
      v22 = 4 * v19;
      do
      {
        v23 = v16;
        v24 = v15;
        do
        {
          *v23 = v21;
          v23 = (v23 + v17);
          --v24;
        }

        while (v24);
        v21 = *v14;
        *v23 = *v14;
        v16 = (v16 + v22);
        ++v20;
      }

      while (v20 != v18);
    }

    else
    {
      v21 = *v14;
      if (!v15)
      {
LABEL_51:
        v16->i32[0] = v21;
        return result;
      }
    }

    do
    {
      v16->i32[0] = v21;
      v16 = (v16 + v17);
      --v15;
    }

    while (v15);
LABEL_50:
    v21 = *v14;
    goto LABEL_51;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 == v5)
  {
    v6 = *(v2 + 12);
    v7 = (v6 * v4);
    if (!v7)
    {
      return result;
    }

    v8 = *v2;
    a2.i32[0] = *result[1];
    if (v7 < 8)
    {
      v9 = (v6 * v4);
      v10 = *v2;
LABEL_39:
      v43 = v9 + 1;
      do
      {
        v10->i32[0] = a2.i32[0];
        v10 = (v10 + 4);
        --v43;
      }

      while (v43 > 1);
      return result;
    }

    v9 = (v6 * v4) & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v40 = vdupq_lane_s32(a2, 0);
    v41 = v8 + 1;
    v42 = v7 & 0xFFFFFFF8;
    do
    {
      v41[-1] = v40;
      *v41 = v40;
      v41 += 2;
      v42 -= 8;
    }

    while (v42);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v25 = *(v2 + 12);
    if (v5)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = result[1];
      v28 = *v2;
      v29 = v25 - 1;
      if (v29)
      {
        v30 = 0;
        v31 = v28 + 1;
        result = (4 * v4);
        do
        {
          a2.i32[0] = *v27;
          v32 = v5;
          v33 = v28;
          if (v5 < 8)
          {
            goto LABEL_28;
          }

          v33 = (v28 + 4 * (v5 & 0xFFFFFFF8));
          v34 = vdupq_lane_s32(a2, 0);
          v35 = v5 & 0xFFFFFFF8;
          v36 = v31;
          do
          {
            v36[-1] = v34;
            *v36 = v34;
            v36 += 2;
            v35 -= 8;
          }

          while (v35);
          v32 = v5 & 7;
          if ((v5 & 0xFFFFFFF8) != v5)
          {
LABEL_28:
            v37 = v32 + 1;
            do
            {
              v33->i32[0] = a2.i32[0];
              v33 = (v33 + 4);
              --v37;
            }

            while (v37 > 1);
          }

          v28 = (v28 + 4 * v4);
          ++v30;
          v31 = (result + v31);
        }

        while (v30 != v29);
      }

      a2.i32[0] = *v27;
      v38 = v5 - (v5 != 0) + 1;
      if (v38 >= 8)
      {
        v5 -= v38 & 0xFFFFFFFFFFFFFFF8;
        v39 = (v28 + 4 * (v38 & 0xFFFFFFFFFFFFFFF8));
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v28 + 1;
        v46 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45[-1] = v44;
          *v45 = v44;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v39 = v28;
      }

      v47 = v5 + 1;
      do
      {
        v39->i32[0] = a2.i32[0];
        v39 = (v39 + 4);
        --v47;
      }

      while (v47 > 1);
    }
  }

  return result;
}

float sub_271576F84(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v43 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v43;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[1];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 1) = *v15;
          *v23 = v25;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v26 = *v15;
        *(v23 - 1) = *v15;
        *v23 = v26;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      LODWORD(a2) = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v42 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v42;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v27 = a1[1];
    v55[0] = *a1;
    v55[1] = v27;
    sub_271577238(v55, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v49 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v49;
      }

      while (v49 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v46 = vdupq_lane_s32(*&a2, 0);
    v47 = v8 + 1;
    v48 = v7 & 0xFFFFFFF8;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 8;
    }

    while (v48);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v28 = *(v2 + 16);
    if (v3)
    {
      v29 = v5 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v28 != 0)
    {
      v31 = a1[1];
      v32 = *v2;
      v33 = v28 - 1;
      if (v33)
      {
        if (!v6)
        {
          return *&a2;
        }

        v34 = 0;
        v35 = v32 + 1;
        do
        {
          LODWORD(a2) = *v31;
          v36 = v6;
          v37 = v32;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v37 = (v32 + 4 * (v6 & 0xFFFFFFF8));
          v38 = vdupq_lane_s32(*&a2, 0);
          v39 = v6 & 0xFFFFFFF8;
          v40 = v35;
          do
          {
            v40[-1] = v38;
            *v40 = v38;
            v40 += 2;
            v39 -= 8;
          }

          while (v39);
          v36 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v41 = v36 + 1;
            do
            {
              v37->i32[0] = LODWORD(a2);
              v37 = (v37 + 4);
              --v41;
            }

            while (v41 > 1);
          }

          v32 = (v32 + 4 * v4);
          ++v34;
          v35 = (v35 + 4 * v4);
        }

        while (v34 != v33);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v31;
      if (v6 >= 8)
      {
        v44 = v6 & 7;
        v45 = (v32 + 4 * (v6 & 0xFFFFFFF8));
        v50 = vdupq_lane_s32(*&a2, 0);
        v51 = v32 + 1;
        v52 = v6 & 0xFFFFFFF8;
        do
        {
          v51[-1] = v50;
          *v51 = v50;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v44 = v6;
        v45 = v32;
      }

      v53 = v44 + 1;
      do
      {
        v45->i32[0] = LODWORD(a2);
        v45 = (v45 + 4);
        --v53;
      }

      while (v53 > 1);
    }
  }

  return *&a2;
}

unint64_t sub_271577238(unint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 12);
  v5 = *(*result + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = *(result + 8);
    v9 = v4 - 1;
    v10 = *(v2 + 6);
    v11 = *v2;
    v12 = 4 * v10;
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 7);
      v15 = v3 & 0xFFFFFFF8;
      v16 = 4 * v15;
      LODWORD(result) = 0;
      v17 = v11 + 1;
      if (v9)
      {
        v18 = 4 * v14;
        do
        {
          v19 = 0;
          v20 = v11;
          v21 = v17;
          v22 = v11;
          do
          {
            a2.i32[0] = *v8;
            v23 = v3;
            v24 = v22;
            if (v3 < 8)
            {
              goto LABEL_18;
            }

            v24 = (v22 + v16);
            v25 = vdupq_lane_s32(a2, 0);
            v26 = v3 & 0xFFFFFFF8;
            v27 = v21;
            do
            {
              v27[-1] = v25;
              *v27 = v25;
              v27 += 2;
              v26 -= 8;
            }

            while (v26);
            v23 = v3 & 7;
            if (v15 != v3)
            {
LABEL_18:
              v28 = v23 + 1;
              do
              {
                v24->i32[0] = a2.i32[0];
                v24 = (v24 + 4);
                --v28;
              }

              while (v28 > 1);
            }

            v22 = (v22 + 4 * v10);
            ++v19;
            v21 = (v21 + v12);
            v20 = (v20 + v12);
          }

          while (v19 != v9);
          a2.i32[0] = *v8;
          v29 = v3;
          if (v3 < 8)
          {
            goto LABEL_25;
          }

          v30 = 0;
          v22 = (v22 + v16);
          v31 = vdupq_lane_s32(a2, 0);
          do
          {
            v20[v30 / 0x10] = v31;
            v21[v30 / 0x10] = v31;
            v30 += 32;
          }

          while (v16 != v30);
          v29 = v3 & 7;
          if (v15 != v3)
          {
LABEL_25:
            v32 = v29 + 1;
            do
            {
              v22->i32[0] = a2.i32[0];
              v22 = (v22 + 4);
              --v32;
            }

            while (v32 > 1);
          }

          v11 = (v11 + v18);
          result = (result + 1);
          v17 = (v17 + v18);
        }

        while (result != v13);
      }

      else
      {
        do
        {
          a2.i32[0] = *v8;
          v33 = v3;
          v34 = v11;
          if (v3 < 8)
          {
            goto LABEL_34;
          }

          v34 = (v11 + v16);
          v35 = vdupq_lane_s32(a2, 0);
          v36 = v3 & 0xFFFFFFF8;
          v37 = v17;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 8;
          }

          while (v36);
          v33 = v3 & 7;
          if (v15 != v3)
          {
LABEL_34:
            v38 = v33 + 1;
            do
            {
              v34->i32[0] = a2.i32[0];
              v34 = (v34 + 4);
              --v38;
            }

            while (v38 > 1);
          }

          v11 = (v11 + 4 * v14);
          result = (result + 1);
          v17 = (v17 + 4 * v14);
        }

        while (result != v13);
      }
    }

    if (v9)
    {
      v39 = 0;
      v40 = v3 - (v3 != 0) + 1;
      result = 4 * (v40 & 0xFFFFFFFFFFFFFFF8);
      v41 = v11 + 1;
      do
      {
        a2.i32[0] = *v8;
        v42 = v3;
        v43 = v11;
        if (v40 < 8)
        {
          goto LABEL_44;
        }

        v43 = (v11 + result);
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v40 & 0xFFFFFFFFFFFFFFF8;
        v46 = v41;
        do
        {
          v46[-1] = v44;
          *v46 = v44;
          v46 += 2;
          v45 -= 8;
        }

        while (v45);
        v42 = v3 - (v40 & 0xFFFFFFFFFFFFFFF8);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_44:
          v47 = v42 + 1;
          do
          {
            v43->i32[0] = a2.i32[0];
            v43 = (v43 + 4);
            --v47;
          }

          while (v47 > 1);
        }

        v11 = (v11 + 4 * v10);
        ++v39;
        v41 = (v41 + v12);
      }

      while (v39 != v9);
    }

    a2.i32[0] = *v8;
    v48 = v3 - (v3 != 0) + 1;
    if (v48 < 8)
    {
      v49 = v11;
LABEL_52:
      v53 = v3 + 1;
      do
      {
        v49->i32[0] = a2.i32[0];
        v49 = (v49 + 4);
        --v53;
      }

      while (v53 > 1);
      return result;
    }

    v3 -= v48 & 0xFFFFFFFFFFFFFFF8;
    v49 = (v11 + 4 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v50 = vdupq_lane_s32(a2, 0);
    v51 = v11 + 1;
    v52 = v48 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 8;
    }

    while (v52);
    if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }
  }

  return result;
}

float sub_271577500(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v46 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v46;
          v47 = *v15;
          v17->i32[2] = *v15;
          v17->i32[3] = v47;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        v28 = *v15;
        *v23 = *v15;
        v23[1] = v28;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      v48 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v48;
      LODWORD(a2) = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v44 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v44;
      v45 = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = v45;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v29 = a1[1];
    v60[0] = *a1;
    v60[1] = v29;
    sub_271577238(v60, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v54 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v54;
      }

      while (v54 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v51 = vdupq_lane_s32(*&a2, 0);
    v52 = v8 + 1;
    v53 = v7 & 0xFFFFFFF8;
    do
    {
      v52[-1] = v51;
      *v52 = v51;
      v52 += 2;
      v53 -= 8;
    }

    while (v53);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *(v2 + 16);
    if (v3)
    {
      v31 = v5 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (!v31 && v30 != 0)
    {
      v33 = a1[1];
      v34 = *v2;
      v35 = v30 - 1;
      if (v35)
      {
        if (!v6)
        {
          return *&a2;
        }

        v36 = 0;
        v37 = v34 + 1;
        do
        {
          LODWORD(a2) = *v33;
          v38 = v6;
          v39 = v34;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v39 = (v34 + 4 * (v6 & 0xFFFFFFF8));
          v40 = vdupq_lane_s32(*&a2, 0);
          v41 = v6 & 0xFFFFFFF8;
          v42 = v37;
          do
          {
            v42[-1] = v40;
            *v42 = v40;
            v42 += 2;
            v41 -= 8;
          }

          while (v41);
          v38 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v43 = v38 + 1;
            do
            {
              v39->i32[0] = LODWORD(a2);
              v39 = (v39 + 4);
              --v43;
            }

            while (v43 > 1);
          }

          v34 = (v34 + 4 * v4);
          ++v36;
          v37 = (v37 + 4 * v4);
        }

        while (v36 != v35);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v33;
      if (v6 >= 8)
      {
        v49 = v6 & 7;
        v50 = (v34 + 4 * (v6 & 0xFFFFFFF8));
        v55 = vdupq_lane_s32(*&a2, 0);
        v56 = v34 + 1;
        v57 = v6 & 0xFFFFFFF8;
        do
        {
          v56[-1] = v55;
          *v56 = v55;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v49 = v6;
        v50 = v34;
      }

      v58 = v49 + 1;
      do
      {
        v50->i32[0] = LODWORD(a2);
        v50 = (v50 + 4);
        --v58;
      }

      while (v58 > 1);
    }
  }

  return *&a2;
}

void sub_2715777F4(void x0_0, int a1, unint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      *v40 = &unk_2881117F8;
      if (a2 <= 0x20)
      {
        v3 = 32;
      }

      else
      {
        v3 = a2;
      }

      v4 = v3 << 32;
      if (!HIDWORD(a2))
      {
        v4 = 0x2000000000;
      }

      v31 = &unk_288116190;
      if (a2)
      {
        ++v4;
      }

      *v38 = a2;
      *&v38[8] = v4;
      sub_27154547C(&v31, 0, 1, v38, 0);
      v31 = &unk_288116190;
      operator new();
    case 2:
      *v40 = &unk_288110F48;
      if (a2 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = a2;
      }

      v20 = v19 << 32;
      if (!HIDWORD(a2))
      {
        v20 = 0x1000000000;
      }

      v31 = &unk_288115F50;
      if (a2)
      {
        ++v20;
      }

      *v38 = a2;
      *&v38[8] = v20;
      sub_27154DDA4(&v31, 0, 2, v38, 0);
      v31 = &unk_288115F50;
      operator new();
    case 3:
      *v40 = &unk_288110658;
      if (a2 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = a2;
      }

      v10 = v9 << 32;
      if (!HIDWORD(a2))
      {
        v10 = 0x1000000000;
      }

      v31 = &unk_288115C80;
      if (a2)
      {
        ++v10;
      }

      *v38 = a2;
      *&v38[8] = v10;
      sub_271553E98(&v31, 0, 3, v38, 0);
      v31 = &unk_288115C80;
      operator new();
    case 4:
      *v40 = &unk_2881104B8;
      if (a2 <= 8)
      {
        v23 = 8;
      }

      else
      {
        v23 = a2;
      }

      v24 = v23 << 32;
      if (!HIDWORD(a2))
      {
        v24 = 0x800000000;
      }

      v31 = &unk_288115BF0;
      if (a2)
      {
        ++v24;
      }

      *v38 = a2;
      *&v38[8] = v24;
      sub_271559F7C(&v31, 0, 4, v38, 0.0);
      v31 = &unk_288115BF0;
      operator new();
    case 5:
      v37 = &unk_2881103C8;
      v15 = 2 * (a2 != 0);
      LODWORD(v16) = v15 * a2;
      if ((v15 * a2) <= 0x20)
      {
        LODWORD(v16) = 32;
      }

      if (HIDWORD(a2))
      {
        v16 = v16;
      }

      else
      {
        v16 = 32;
      }

      *v38 = 2;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v16;
      *&v38[24] = a2;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_2881155A0;
      v32 = 0;
      sub_271546E30(0, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_2715472F0(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_271547A6C(&v31, v40);
      v31 = &unk_288115B60;
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v37 = &unk_288110228;
      v25 = 2 * (a2 != 0);
      LODWORD(v26) = v25 * a2;
      if ((v25 * a2) <= 0x10)
      {
        LODWORD(v26) = 16;
      }

      v31 = &unk_288115AD0;
      if (HIDWORD(a2))
      {
        v26 = v26;
      }

      else
      {
        v26 = 16;
      }

      *v38 = 2;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v25 & 0x1FFFFFFFFLL | ((v26 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v26;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_271556084(&v31, 0, 7, v38, 0);
      v31 = &unk_288115AD0;
      operator new();
    case 8:
      v37 = &unk_288110138;
      v17 = 2 * (a2 != 0);
      LODWORD(v18) = v17 * a2;
      if ((v17 * a2) <= 8)
      {
        LODWORD(v18) = 8;
      }

      v31 = &unk_288115A40;
      if (HIDWORD(a2))
      {
        v18 = v18;
      }

      else
      {
        v18 = 8;
      }

      *v38 = 2;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v17 & 0x1FFFFFFFFLL | ((v18 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v18;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_27155C168(&v31, 0, 8, v38, 0.0);
      v31 = &unk_288115A40;
      operator new();
    case 21:
      v37 = &unk_288111658;
      if (a2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      LODWORD(v8) = v7 * a2;
      if ((v7 * a2) <= 0x20)
      {
        LODWORD(v8) = 32;
      }

      v31 = &unk_288116100;
      if (HIDWORD(a2))
      {
        v8 = v8;
      }

      else
      {
        v8 = 32;
      }

      *v38 = 3;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v7 | (v8 << 32);
      *&v38[12] = *v40;
      *&v38[20] = v8;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_271549C34(&v31, 0, 21, v38, 0);
      v31 = &unk_288116100;
      operator new();
    case 22:
      v37 = &unk_288111568;
      if (a2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      LODWORD(v12) = v11 * a2;
      if ((v11 * a2) <= 0x10)
      {
        LODWORD(v12) = 16;
      }

      v31 = &unk_288116070;
      if (HIDWORD(a2))
      {
        v12 = v12;
      }

      else
      {
        v12 = 16;
      }

      *v38 = 3;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v11 | (v12 << 32);
      *&v38[12] = *v40;
      *&v38[20] = v12;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_27154FF94(&v31, 0, 22, v38, 0);
      v31 = &unk_288116070;
      operator new();
    case 25:
      v37 = &unk_288111318;
      v13 = 4 * (a2 != 0);
      LODWORD(v14) = v13 * a2;
      if ((v13 * a2) <= 0x20)
      {
        LODWORD(v14) = 32;
      }

      if (HIDWORD(a2))
      {
        v14 = v14;
      }

      else
      {
        v14 = 32;
      }

      *v38 = 4;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v14;
      *&v38[24] = a2;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_288115480;
      v32 = 0;
      sub_27154B108(0, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_27154B5C8(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_27154BD44(&v31, v40);
      v31 = &unk_288115FE0;
      operator new();
    case 31:
      v37 = &unk_288110DA8;
      v21 = 4 * (a2 != 0);
      LODWORD(v22) = v21 * a2;
      if ((v21 * a2) <= 0x10)
      {
        LODWORD(v22) = 16;
      }

      v31 = &unk_288115EC0;
      if (HIDWORD(a2))
      {
        v22 = v22;
      }

      else
      {
        v22 = 16;
      }

      *v38 = 4;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v21 & 0x3FFFFFFFFLL | ((v22 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v22;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_271557E9C(&v31, 0, 31, v38, 0);
      v31 = &unk_288115EC0;
      operator new();
    case 32:
      v37 = &unk_288110CB8;
      v29 = 4 * (a2 != 0);
      LODWORD(v30) = v29 * a2;
      if ((v29 * a2) <= 8)
      {
        LODWORD(v30) = 8;
      }

      v31 = &unk_288115E30;
      if (HIDWORD(a2))
      {
        v30 = v30;
      }

      else
      {
        v30 = 8;
      }

      *v38 = 4;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v29 & 0x3FFFFFFFFLL | ((v30 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v30;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_27155E308(&v31, 0, 32, v38, 0.0);
      v31 = &unk_288115E30;
      operator new();
    case 37:
      v37 = &unk_2881108E8;
      v27 = 4 * (a2 != 0);
      LODWORD(v28) = v27 * a2;
      if ((v27 * a2) <= 0x20)
      {
        LODWORD(v28) = 32;
      }

      if (HIDWORD(a2))
      {
        v28 = v28;
      }

      else
      {
        v28 = 32;
      }

      *v38 = 4;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v27 & 0x3FFFFFFFFLL | ((v28 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v28;
      *&v38[24] = a2;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_288115480;
      v32 = 0;
      sub_27154B108(0, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_27154B5C8(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_27154BD44(&v31, v40);
      v31 = &unk_288115DA0;
      operator new();
    case 38:
      v37 = &unk_2881107F8;
      v5 = 4 * (a2 != 0);
      LODWORD(v6) = v5 * a2;
      if ((v5 * a2) <= 0x10)
      {
        LODWORD(v6) = 16;
      }

      v31 = &unk_288115D10;
      if (HIDWORD(a2))
      {
        v6 = v6;
      }

      else
      {
        v6 = 16;
      }

      *v38 = 4;
      *&v38[4] = a2;
      *v40 = 1;
      *&v40[4] = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v6;
      *&v38[24] = a2;
      v39 = *&v40[4];
      sub_2715520B8(&v31, 0, 38, v38, 0);
      v31 = &unk_288115D10;
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_271579118(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715792F4(void x0_0, int a1, unint64_t a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v33[0] = &unk_2881117F8;
      v3 = 0x100000000;
      if (a2 > 0x100000000)
      {
        v3 = a2;
      }

      *v29 = a2;
      *&v29[8] = (a2 != 0) | (v3 << 32);
      sub_27155F860(&v27, v29);
      operator new();
    case 2:
      v33[0] = &unk_288110F48;
      v17 = 0x100000000;
      if (a2 > 0x100000000)
      {
        v17 = a2;
      }

      *v29 = a2;
      *&v29[8] = (a2 != 0) | (v17 << 32);
      sub_271560C74(&v27, v29);
      operator new();
    case 3:
      v33[0] = &unk_288110658;
      v8 = 0x100000000;
      if (a2 > 0x100000000)
      {
        v8 = a2;
      }

      *v29 = a2;
      *&v29[8] = (a2 != 0) | (v8 << 32);
      sub_271562088(&v27, v29);
      operator new();
    case 4:
      v33[0] = &unk_2881104B8;
      v20 = 0x100000000;
      if (a2 > 0x100000000)
      {
        v20 = a2;
      }

      *v29 = a2;
      *&v29[8] = (a2 != 0) | (v20 << 32);
      sub_27156349C(&v27, v29);
      operator new();
    case 5:
      v13 = 2 * (a2 != 0);
      LODWORD(v14) = v13 * a2;
      if (HIDWORD(a2))
      {
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      *v29 = 2;
      *&v29[4] = a2;
      v28 = &unk_2881103C8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v14;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_2715648B0(&v27, v29);
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v21 = 2 * (a2 != 0);
      LODWORD(v22) = v21 * a2;
      if (HIDWORD(a2))
      {
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      *v29 = 2;
      *&v29[4] = a2;
      v28 = &unk_288110228;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v21 & 0x1FFFFFFFFLL | ((v22 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v22;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_271565CE0(&v27, v29);
      operator new();
    case 8:
      v15 = 2 * (a2 != 0);
      LODWORD(v16) = v15 * a2;
      if (HIDWORD(a2))
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      *v29 = 2;
      *&v29[4] = a2;
      v28 = &unk_288110138;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v16;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156710C(&v27, v29);
      operator new();
    case 21:
      if (a2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v7) = v6 * a2;
      if (HIDWORD(a2))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      *v29 = 3;
      *&v29[4] = a2;
      v28 = &unk_288111658;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v6 | (v7 << 32);
      *&v29[12] = v33[0];
      v30 = v7;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_271568530(&v27, v29);
      operator new();
    case 22:
      if (a2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v10) = v9 * a2;
      if (HIDWORD(a2))
      {
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      *v29 = 3;
      *&v29[4] = a2;
      v28 = &unk_288111568;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v9 | (v10 << 32);
      *&v29[12] = v33[0];
      v30 = v10;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156985C(&v27, v29);
      operator new();
    case 25:
      v11 = 4 * (a2 != 0);
      LODWORD(v12) = v11 * a2;
      if (HIDWORD(a2))
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      *v29 = 4;
      *&v29[4] = a2;
      v28 = &unk_288111318;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v12;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156AB88(&v27, v29);
      operator new();
    case 31:
      v18 = 4 * (a2 != 0);
      LODWORD(v19) = v18 * a2;
      if (HIDWORD(a2))
      {
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      *v29 = 4;
      *&v29[4] = a2;
      v28 = &unk_288110DA8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v19;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156BFC0(&v27, v29);
      operator new();
    case 32:
      v25 = 4 * (a2 != 0);
      LODWORD(v26) = v25 * a2;
      if (HIDWORD(a2))
      {
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      *v29 = 4;
      *&v29[4] = a2;
      v28 = &unk_288110CB8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v25 & 0x3FFFFFFFFLL | ((v26 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v26;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156D3EC(&v27, v29);
      operator new();
    case 37:
      v23 = 4 * (a2 != 0);
      LODWORD(v24) = v23 * a2;
      if (HIDWORD(a2))
      {
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      *v29 = 4;
      *&v29[4] = a2;
      v28 = &unk_2881108E8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v23 & 0x3FFFFFFFFLL | ((v24 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v24;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156E810(&v27, v29);
      operator new();
    case 38:
      v4 = 4 * (a2 != 0);
      LODWORD(v5) = v4 * a2;
      if (HIDWORD(a2))
      {
        v5 = v5;
      }

      else
      {
        v5 = 0;
      }

      *v29 = 4;
      *&v29[4] = a2;
      v28 = &unk_2881107F8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v4 & 0x3FFFFFFFFLL | ((v5 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v5;
      v31 = a2;
      v32 = *(v33 + 4);
      sub_27156FC48(&v27, v29);
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_27157A738(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157A9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ACB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B710(unsigned int *a1, int a2)
{
  v6 = a2;
  v8[0] = 0;
  v8[1] = 0;
  value = v8;
  sub_271810FE4(&value);
}

void sub_27157B9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(va);
  sub_27112F828(&a9);
  sub_27112F828(v11);
  _Unwind_Resume(a1);
}

void sub_27157BAA4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v8 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CC4DE8];
  value = 0;
  if (v5 && CFDictionaryGetValueIfPresent(*a1, v5, &value))
  {
    v6 = value;
    if (value)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        CFRetain(v6);
        sub_27157C100(&v11, v6);
      }
    }

    v9[0] = 0;
    v9[16] = 0;
  }

LABEL_12:
  *a2 = 0;
  a2[16] = 0;
}

void sub_27157BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9 - 48);
  sub_27157C440(va);
  _Unwind_Resume(a1);
}

BOOL sub_27157BD28(const void **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = *a1;
      goto LABEL_10;
    }
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

  else
  {
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

LABEL_10:
  v10 = a1[1];
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v11 = v8;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v11)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v13 = *a2;
  v12 = *(a2 + 8);
  if (!v12)
  {
    return v13 == 0;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v13 == 0;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return v13 == 0;
}

void sub_27157BFD4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_27157C100(&v4, v3);
}

void sub_27157C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27157C384(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27157C3BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27157C3E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27157C440(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void sub_27157C4BC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_271150CCC(&v4, v3);
}

uint64_t sub_27157C5E8(uint64_t *a1, const void *a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3, a2);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_27143B84C(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_27157C7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27157C7F4(uint64_t *a1, const void *a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3, a2);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_27143B84C(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_27157C9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157CBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27157CC2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 323, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetPixelFormatType(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetPixelFormatType(v6);
}

uint64_t sub_27157CE68(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 340, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_2715812EC);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 341, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "idx < p_->GetCachedBaseAddress().size()", 39, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, "", 0);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_2715812EC);
  }

  return *(*(v17 + 112) + 8 * v11);
}

void *sub_27157D16C(void *result)
{
  *result = &unk_288115A20;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_27157D200(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2715821B8(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_27157D2FC(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2715821B8(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288115A20;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_27157D414(void *a1)
{
  sub_27157D2FC(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27157D44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2715822BC(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_27157D548(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2715822BC(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288115A20;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_27157D660(void *a1)
{
  sub_27157D548(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27157D698(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    *(a1 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  v6 = vceq_s32(vdup_n_s32(a3), 0x200000001);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  *(a1 + 24) = vandq_s8(v7, vdupq_n_s64(1uLL));
  *(a1 + 40) = 850045863;
  v8 = 0uLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = a2;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = 0uLL;
      a2 = v9;
    }
  }

  *(a1 + 120) = v8;
  *(a1 + 104) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_288109288;
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  sub_2717F23C8(&v11, IOSurface, 1, 0);
}

void sub_27157D8A0(_Unwind_Exception *a1)
{
  sub_2717F319C(v2);
  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_27157FEB4(v1);
  _Unwind_Resume(a1);
}

void sub_27157D8CC(void *a1, CFTypeRef cf, int a3, unsigned int a4)
{
  if (cf)
  {
    if (a3)
    {
      v4 = cf;
      CFRetain(cf);
      cf = v4;
    }
  }

  sub_271581C74(&v5, cf);
}

void sub_27157DAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27157DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27157DAF8(uint64_t a1, unsigned int *a2, OSType a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v5[2] = 0;
  sub_27157BFD4(v5, a5);
}

void sub_27157E37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_27157F0A8(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_27157E480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27112F828(v21 - 128);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157E4B8()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x27157E518);
}

void sub_27157E4D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x27157E518);
}

void sub_27157E514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_271130878(va);
  sub_27112F828(&a22);
  _Unwind_Resume(a1);
}

void sub_27157E530()
{
  v1 = *(v0 - 128);
  *(v0 - 128) = 0;
  if (v1)
  {
    sub_27184D728(v0 - 128, v1);
  }

  JUMPOUT(0x27157E518);
}

void *sub_27157E54C(void *result)
{
  *result = &unk_288115A20;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27157E6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157E700(unsigned int *a1, OSType a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v26 = 0;
  if (*(a5 + 32) != 1)
  {
LABEL_8:
    pixelFormatType = a2;
    if (sub_2715742DC(a2) >= 2)
    {
      v19 = 0;
      v20.__r_.__value_.__r.__words[0] = &v18;
      v20.__r_.__value_.__l.__size_ = "MakeViewPixelBuffer";
      v20.__r_.__value_.__r.__words[2] = &v18;
      v21 = "MakeViewPixelBuffer";
      v22 = "MakeViewPixelBuffer";
      v23 = &v20;
      sub_2712C3608(&v23);
      v20.__r_.__value_.__r.__words[0] = &v18;
      v20.__r_.__value_.__l.__size_ = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      v20.__r_.__value_.__r.__words[2] = &v18;
      v21 = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      v22 = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      if (v19 != -1)
      {
        v23 = &v20;
        (off_288133900[v19])(&v23, &v18);
        sub_2711FE4F8(&v20, &v18, &pixelFormatType);
      }

      sub_2711308D4();
    }

    v15 = 0;
    if ((a4 & 0x100000000) == 0)
    {
      v11 = *a1;
      v12 = sub_2712B6A04(a2);
      v13 = sub_2712BA740(a2) - 1;
      if (v13 > 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = dword_27189B034[v13];
      }

      LODWORD(a4) = v12 * v11 * v14;
    }

    if (v26 == 1)
    {
      operator new();
    }

    if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], *a1, a1[1], a2, a3, a4, 0, 0, 0, &v15))
    {
      v19 = 0;
      v20.__r_.__value_.__r.__words[0] = &v18;
      v20.__r_.__value_.__l.__size_ = "MakeViewPixelBuffer";
      v20.__r_.__value_.__r.__words[2] = &v18;
      v21 = "MakeViewPixelBuffer";
      v22 = "MakeViewPixelBuffer";
      v23 = &v20;
      sub_2712C3608(&v23);
      v20.__r_.__value_.__r.__words[0] = &v18;
      v20.__r_.__value_.__l.__size_ = " for format ";
      v20.__r_.__value_.__r.__words[2] = &v18;
      v21 = " for format ";
      v22 = " for format ";
      if (v19 != -1)
      {
        v23 = &v20;
        (*(&off_2881338B8 + v19))(&v23, &v18);
        sub_2711FE4F8(&v17, &v18, &pixelFormatType);
      }

      sub_2711308D4();
    }

    sub_271581C74(&v18, v15);
  }

  v10 = *(a5 + 24);
  if (v10)
  {
    if (v10 == a5)
    {
      v25 = v24;
      (*(*v10 + 24))(v10, v24);
      goto LABEL_7;
    }

    v10 = (*(*v10 + 16))(v10);
  }

  v25 = v10;
LABEL_7:
  v26 = 1;
  goto LABEL_8;
}

void sub_27157EE3C(_Unwind_Exception *a1)
{
  MEMORY[0x2743BF050](v1, 0x1020C40A5B76CDFLL);
  sub_2712252F8(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_27157EE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v27);
  sub_27112F828(va);
  sub_2712252F8(v25 - 112);
  _Unwind_Resume(a1);
}

void sub_27157EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271130878(va);
  sub_2712252F8(v24 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_27157F0A8(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  else if (*(result + 31) < 0)
  {
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  return result;
}

void sub_27157F130(void *a1)
{
  *a1 = &unk_288115A20;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27157F1D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);
  *a2 = &unk_288109288;
  a2[1] = v13;
  a2[2] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

size_t sub_27157F398(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 293, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetWidth(v6);
}

size_t sub_27157F5D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 303, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetHeight(v6);
}

size_t sub_27157F810(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 313, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetBytesPerRow(v6);
}

_DWORD *sub_27157FA4C(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6 = (a1 + 2);
  *&v14 = a3;
  *(&v14 + 1) = a4;
  sub_271580044();
  v7 = qword_28087BC40;
  if (!qword_28087BC40)
  {
    goto LABEL_8;
  }

  v8 = &qword_28087BC40;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != &qword_28087BC40 && *(v8 + 8) <= a2)
  {
    sub_271580044();
    v17 = v14;
    v18 = ": ";
    v19 = 2;
    v11 = v8[5];
    v10 = v8 + 5;
    v9 = v11;
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = v10[1];
    }

    else
    {
      v9 = v10;
    }

    v20 = v9;
    v21 = v12;
    sub_271131230(&v17, v22, 0, 0, v6);
  }

  else
  {
LABEL_8:
    sub_271580044();
    LODWORD(v19) = 0;
    sub_2714C49E0(&v16, &v17, &v14);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v16 = &v15;
    (off_288133870[v19])(&v16, &v17);
    if (v19 != -1)
    {
      (off_288133840[v19])(&v16, &v17);
    }
  }

  return a1;
}

void sub_27157FBD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_27157FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27157FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_27157FC18(void *a1, int *a2)
{
  v11 = 0;
  v14 = v10;
  v15 = "{";
  v16 = v10;
  v17 = "{";
  v18 = "{";
  v12.__r_.__value_.__r.__words[0] = &v14;
  sub_271136E64(&v12);
  std::to_string(&v12, *a2);
  v14 = v10;
  v15 = &v12;
  v16 = v10;
  v17 = &v12;
  v18 = &v12;
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v14;
  (off_288133858[v11])(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v14 = v10;
  v15 = ",";
  v16 = v10;
  v17 = ",";
  v18 = ",";
  if (v11 == -1 || (v12.__r_.__value_.__r.__words[0] = &v14, (*(&off_288133888 + v11))(&v12, v10), v14 = v10, v15 = (a2 + 2), v16 = v10, v17 = (a2 + 2), v18 = (a2 + 2), v11 == -1) || (v12.__r_.__value_.__r.__words[0] = &v14, (off_2881338A0[v11])(&v12, v10), v14 = v10, v15 = "}", v16 = v10, v17 = "}", v18 = "}", v11 == -1))
  {
    sub_2711308D4();
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_288133888 + v11))(&v12, v10);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v14 = &v12;
  (off_288133870[v11])(__p, &v14, v10);
  if (v11 != -1)
  {
    (off_288133840[v11])(&v14, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_271120E64(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_27157FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27157FEB4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27157FF3C(uint64_t a1, uint64_t a2)
{
  v3[6] = 0;
  v4[0] = v3;
  v4[1] = "Failed to create CVPixelBuffer: ";
  v4[2] = v3;
  v4[3] = "Failed to create CVPixelBuffer: ";
  v4[4] = "Failed to create CVPixelBuffer: ";
  v5 = v4;
  sub_27123B354(&v5);
  sub_27157222C(v4, v3, a2);
}

void sub_271580044()
{
  v1 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087BC30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087BC30))
    {
      v0 = 0;
      operator new();
    }
  }
}

void sub_2715808FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a79 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a80);
  if ((a79 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a77 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a78);
  if ((a77 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a72);
  if ((a71 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a68);
  if ((a67 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a66);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a16 & 0x80000000) == 0)
    {
LABEL_38:
      __cxa_guard_abort(&qword_28087BC30);
      _Unwind_Resume(a1);
    }

LABEL_37:
    operator delete(a11);
    __cxa_guard_abort(&qword_28087BC30);
    _Unwind_Resume(a1);
  }

LABEL_36:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

uint64_t sub_271580B40(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

void sub_271580BFC(uint64_t *result, uint64_t a2)
{
  qword_28087BC48 = 0;
  qword_28087BC40 = 0;
  qword_28087BC38 = &qword_28087BC40;
  if (a2)
  {
    operator new();
  }
}

void sub_271580DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271580DF4(va);
  sub_271580E5C(qword_28087BC40);
  _Unwind_Resume(a1);
}

void *sub_271580DF4(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_271580E5C(char *a1)
{
  if (a1)
  {
    sub_271580E5C(*a1);
    sub_271580E5C(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t sub_271580ED8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(v3, &v6);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return MEMORY[0x2743BF050](a1, 0x1020C40A5B76CDFLL);
}

void sub_2715811B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271581230(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581268(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27158128C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715812EC(CVPixelBufferRef ****a1)
{
  IOSurface = CVPixelBufferGetIOSurface(****a1);
  v2 = IOSurface;
  if (IOSurface)
  {
    CFRetain(IOSurface);
  }

  sub_271580FAC(&buffer, v2);
}

void sub_271581528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  operator delete(v10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271581574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715815B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581604(uint64_t a1)
{
  *(a1 + 160) = &unk_288109288;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

size_t sub_271581708(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288133840[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2715817FC(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288133840[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2715819C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271581A18(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_271581C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271581E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271581EF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581F30(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_271581F54(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271581FB4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2715820B8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_2715821B8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2715822BC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_2715827A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715827C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715827F0(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2715829FC(v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2715829FC(v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715829FC(v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_2715829C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829FC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v39[0] = &unk_288109288;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_288109288;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v33, 0);
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v41);
  v19 = sub_2717F3958(v41);
  v20 = sub_2717F3D9C(v41);
  v21 = sub_2717F41E0(v41);
  v22 = v18;
  v41[0] = &unk_288109288;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_288109288;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *a1 = v17;
  a1[1] = v28;
  a1[2] = v25;
  if (v21 * HIDWORD(v28) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, v33);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v32 = *v29;
      v31 = *(v29 + 8);
      v29 += 16;
      v32(v31, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v29 != v30);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}