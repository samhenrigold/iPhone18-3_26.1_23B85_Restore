_BYTE *sub_2714EFAEC(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = v2 + 16;
    return sub_2718459EC(&v5, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > 0x7F)
    {
      if (v4 > 0xFF)
      {
        v6 = -51;
        v7 = __rev16(v4);
      }

      else
      {
        v8 = -52;
        v9 = v4;
      }

      return std::ostream::write();
    }

    else
    {
      v10 = *a2;
      return std::ostream::write();
    }
  }
}

_BYTE *sub_2714EFBB0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) != 1)
  {
    return sub_27184636C(&v5, (v2 + 8), *a2);
  }

  v4 = v2 + 16;
  return sub_2718460EC(&v4, *a2);
}

_BYTE *sub_2714EFC0C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846AEC(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271846E00((v4 + 8), v6);
  }
}

_BYTE *sub_2714EFC64(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846AEC(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271846E00((v4 + 8), v6);
  }
}

uint64_t **sub_2714EFCBC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) != 1)
  {
    return std::ostream::write();
  }

  v4 = v2 + 16;
  return sub_271846EFC(&v5, &v4, a2);
}

uint64_t **sub_2714EFD30(uint64_t a1, unint64_t *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (*(v2 + 40) != 1)
  {
    return std::ostream::write();
  }

  v5[0] = (v2 + 16);
  return sub_271846FE4(&v4, v5, a2);
}

uint64_t **sub_2714EFDC8(uint64_t a1, const void ***a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v6[1] = v2;
    v6[2] = v3;
    v6[0] = (v4 + 16);
    return sub_271847238(v6, a2);
  }

  else
  {

    return sub_271847654((v4 + 8), a2);
  }
}

uint64_t sub_2714EFE18(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v6 = v5 + 16;
    if (a3)
    {
      do
      {
        result = sub_2718470CC(&v6, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (*a2 != 1)
      {
        v8 = -62;
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v7 = -61;
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714EFEE8(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v7 = v5 + 16;
    if (a3)
    {
      do
      {
        result = sub_271845378(&v7, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v6 = *a2;
        if (v6 <= -33)
        {
          break;
        }

        v8 = *a2;
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v9 = -48;
      v10 = v6;
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714EFFB0(uint64_t result, __int16 *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 2 * a3;
      do
      {
        v6 = *a2++;
        result = sub_27184561C(&v9, v6);
        v5 -= 2;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 2 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718458EC((v4 + 8), v8);
      v7 -= 2;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0034(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271845BC4(&v9, v6);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271845FEC((v4 + 8), v8);
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F00B8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846460(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718469A8((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F013C(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846460(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718469A8((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F01C0(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v7 = v5 + 16;
    if (a3)
    {
      do
      {
        result = sub_2718454CC(&v7, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v6 = *a2;
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }

        v8 = -52;
        v9 = v6;
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v10 = *a2;
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714F0284(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v7 = v5 + 16;
    if (a3)
    {
      do
      {
        result = sub_271845378(&v7, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v6 = *a2;
        if (v6 <= -33)
        {
          break;
        }

        v8 = *a2;
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v9 = -48;
      v10 = v6;
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714F034C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_27183F518(a1, v4);
}

void *sub_2714F0374(void *result, unsigned int *a2, uint64_t a3)
{
  v4 = result[3];
  if (*(v4 + 40) == 1)
  {
    v9 = v4 + 16;
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        v6 = *a2++;
        result = sub_2718460EC(&v9, v6);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2++;
      result = sub_27184636C(&v10, (v4 + 8), v8);
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F03FC(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846AEC(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271846E00((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0480(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846AEC(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271846E00((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0504(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v8 = v4 + 16;
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        result = sub_271846EFC(v9, &v8, a2++);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 4 * a3;
    do
    {
      v7 = *a2++;
      v9[1] = -54;
      v10 = bswap32(v7);
      result = std::ostream::write();
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714F05A8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9[0] = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        result = sub_271846FE4(&v8, v9, a2++);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 8 * a3;
    do
    {
      v7 = *a2++;
      LOBYTE(v9[0]) = -53;
      *(v9 + 1) = bswap64(v7);
      result = std::ostream::write();
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void *sub_2714F0678(void *result, const void ***a2, uint64_t a3)
{
  v4 = result[3];
  if (*(v4 + 40) == 1)
  {
    v7 = (v4 + 16);
    if (a3)
    {
      v5 = 24 * a3;
      do
      {
        result = sub_271847238(&v7, a2);
        a2 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 24 * a3;
    do
    {
      result = sub_271847654((v4 + 8), a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return result;
}

uint64_t **sub_2714F070C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a1 + 24);
  if (*(v2 + 40) != 1)
  {
    return sub_2718452C0((v2 + 8), &v4);
  }

  v5 = (v2 + 16);
  v6 = DWORD2(v4);
  v7 = v4;
  return sub_27184500C(&v5, &v6);
}

uint64_t **sub_2714F0778(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a1 + 24);
  if (*(v4 + 40) != 1)
  {
    return sub_2718452C0((v4 + 8), v6);
  }

  v7 = (v4 + 16);
  v8 = v3;
  v9 = v2;
  return sub_27184500C(&v7, &v8);
}

void sub_2714F07E8(void *a1)
{
  *(a1 - 2) = &unk_288116C00;
  v1 = a1[1];
  *a1 = &unk_288116D50;
  a1[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714F08BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v22 = (v4 + 16);
    sub_2718460EC(&v22, 2u);
    sub_271840ADC(*(a1 + 24));
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = (v5 + 16);
    sub_271847238(&v22, (a2 + 8));
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_27184636C(&v22, (v4 + 8), 2u);
  sub_271840ADC(*(a1 + 24));
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_271847654((v5 + 8), (a2 + 8));
  v6 = *(a1 + 24);
  if (*(v6 + 40) != 1)
  {
LABEL_4:
    sub_27184636C(&v22, (v6 + 8), *(a2 + 32));
    goto LABEL_8;
  }

LABEL_7:
  v22 = (v6 + 16);
  sub_2718460EC(&v22, *(a2 + 32));
LABEL_8:
  v7 = *(a1 + 24);
  v8 = *(*(v7 + 88) - 8);
  sub_2718404E0((v7 + 48), *(v7 + 16) - v8 - 9);
  v9 = *(v7 + 48);
  if (v9)
  {
    memmove((*(v7 + 24) + v8), *(v7 + 56), v9);
  }

  *(v7 + 48) = 0;
  v10 = *(v7 + 80);
  v11 = *(v7 + 88) - 8;
  *(v7 + 88) = v11;
  if (v10 == v11)
  {
    std::ostream::write();
    if (*(v7 + 40) == 1)
    {
      free(*(v7 + 24));
      *(v7 + 40) = 0;
    }
  }

  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = v12;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v12 = v14;
    }
  }

  v22 = &unk_28810A5F8;
  v23 = v12;
  v15 = (*(*v12 + 16))(v12);
  v16 = *(a1 + 24);
  if (*(v16 + 40) == 1)
  {
    v24 = (v16 + 16);
    sub_2718460EC(&v24, v15);
  }

  else
  {
    sub_27184636C(&v24, (v16 + 8), v15);
  }

  sub_271840ADC(*(a1 + 24));
  (*(*v23 + 32))(v23, a1, v15);
  v17 = *(a1 + 24);
  v18 = *(*(v17 + 88) - 8);
  sub_2718404E0((v17 + 48), *(v17 + 16) - v18 - 9);
  v19 = *(v17 + 48);
  if (v19)
  {
    memmove((*(v17 + 24) + v18), *(v17 + 56), v19);
  }

  *(v17 + 48) = 0;
  v20 = *(v17 + 80);
  v21 = *(v17 + 88) - 8;
  *(v17 + 88) = v21;
  if (v20 == v21)
  {
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(*(v17 + 24));
      *(v17 + 40) = 0;
    }
  }
}

void sub_2714F0BDC(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_2713A2F3C(v24, a2);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(v21) = *(a1 + 32);
    sub_271120E64(v3, &v21, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  ++*(a1 + 40);
  sub_271839128(a1, &v25);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v21) = *(a1 + 32);
    sub_271120E64(v4, &v21, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v27);
  v5 = *(a1 + 40);
  v6 = *(a1 + 34);
  *(a1 + 40) = v5 + 1;
  if (v5 != -1)
  {
    v7 = *(a1 + 24);
    LOBYTE(v21) = *(a1 + 32);
    sub_271120E64(v7, &v21, 1);
  }

  v8 = *(a1 + 24);
  LOBYTE(v21) = v6;
  sub_271120E64(v8, &v21, 1);
  ++*(a1 + 40);
  if (v30 > 1)
  {
    sub_2711308D4();
  }

  v9 = v28;
  v10 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v21 = &unk_28810A5F8;
  v22 = v9;
  v12 = (*(*v9 + 16))(v9);
  if (*(a1 + 40))
  {
    v13 = *(a1 + 24);
    v23 = *(a1 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v12);
  ++*(a1 + 40);
  (*(*v22 + 32))(v22, a1, v12);
  v14 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v15 = *(a1 + 24);
    v23 = *(a1 + 32);
    sub_271120E64(v15, &v23, 1);
  }

  v16 = *(a1 + 24);
  v23 = v14;
  sub_271120E64(v16, &v23, 1);
  ++*(a1 + 40);
  v17 = __p;
  if (__p)
  {
    v18 = v32;
    v19 = __p;
    if (v32 != __p)
    {
      do
      {
        v20 = *(v18 - 1);
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v18 -= 16;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v32 = v17;
    operator delete(v19);
  }

  if (v30 != -1)
  {
    (off_288132620[v30])(&v21, &v28);
  }

  v30 = -1;
  if (v26 < 0)
  {
    operator delete(v25);
  }
}

void sub_2714F0F24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F0F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27139FD58(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F0F54(char *a1, char *a2)
{
  v2 = a1;
  v3 = *(a1 + 6);
  if (v3 == 1)
  {
    v17 = -1;
    if (a2[23] < 0)
    {
      sub_271127178(&v15, *a2, *(a2 + 1));
    }

    else
    {
      v15 = *a2;
      v16 = *(a2 + 2);
    }

    v14 = v16;
    *__p = v15;
    if (v16 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = v15;
    }

    if (v16 >= 0)
    {
      v10 = HIBYTE(v16);
    }

    else
    {
      v10 = *(&v15 + 1);
    }

    v11 = v2[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = v2;
      v2 = *v2;
      v11 = *(v12 + 1);
    }

    sub_27184C050(v9, v10, v2, v11, 0);
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = a2[23];
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v5) == 0;
}

void sub_2714F10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F10C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F10DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 14);
  if (v2 != 1)
  {
    if (!v2)
    {
      v5 = 0;
      sub_27136892C(&__p, v4, a1);
    }

    sub_2711308D4();
  }

  v5 = 0;
  sub_27136892C(&__p, v4, a2);
}

void sub_2714F135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F13B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F13C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F13DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 14);
  v3 = *(a2 + 14);
  if (v2)
  {
    if (v3 == 1)
    {
      if (v2 != 1)
      {
        sub_2711308D4();
      }

      v4 = *(a1 + 23);
      if (v4 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = a1[1];
      }

      v6 = *(a2 + 23);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = a2[1];
      }

      if (v5 == v6)
      {
        if (v4 < 0)
        {
          a1 = *a1;
        }

        if (v7 < 0)
        {
          a2 = *a2;
        }

        return memcmp(a1, a2, v5) == 0;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = a2[1];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = a1;
  if (v9 < 0)
  {
    a1 = *a1;
  }

  v14 = a2;
  if (v12 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v10))
  {
    return 0;
  }

  v15 = *(v14 + 48);
  v16 = *(v13 + 48);
  result = v16 == v15;
  if (v16 == v15 && *(v13 + 48))
  {
    v17 = *(v13 + 47);
    if (v17 >= 0)
    {
      v5 = *(v13 + 47);
    }

    else
    {
      v5 = v13[4];
    }

    v18 = *(v14 + 47);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = v14[4];
    }

    if (v5 == v18)
    {
      if (v17 >= 0)
      {
        a1 = v13 + 3;
      }

      else
      {
        a1 = v13[3];
      }

      if (v19 >= 0)
      {
        a2 = v14 + 3;
      }

      else
      {
        a2 = v14[3];
      }

      return memcmp(a1, a2, v5) == 0;
    }

    return 0;
  }

  return result;
}

void *sub_2714F1544(void *a1, __int128 *a2)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 0;
      sub_2714F63DC();
    }

    sub_2711308D4();
  }

  v10 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v8, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 2);
  }

  v12 = v9;
  v11 = v8;
  if (v9 >= 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11;
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = *(&v11 + 1);
  }

  result = sub_271120E64(a1, v4, v5);
  if (SHIBYTE(v12) < 0)
  {
    v7 = result;
    operator delete(v11);
    return v7;
  }

  return result;
}

void sub_2714F1668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F16AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F16C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (!sub_2714F5B38(a1, a2))
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = v8 == *(a2 + 64);
  if (v8 == *(a2 + 64) && *(a1 + 64) && (v10 = *(a1 + 60), v9 = v10 == *(a2 + 60)) && *(a1 + 60))
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (!v9)
  {
    return 0;
  }

  v11 = *(a1 + 112);
  v12 = v11 == *(a2 + 112);
  if (v11 == *(a2 + 112) && *(a1 + 112) && (v13 = *(a1 + 104), v12 = v13 == *(a2 + 104)) && *(a1 + 104))
  {
    v14 = *(a1 + 95);
    if (v14 >= 0)
    {
      v15 = *(a1 + 95);
    }

    else
    {
      v15 = *(a1 + 80);
    }

    v16 = *(a2 + 95);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 80);
    }

    if (v15 != v16)
    {
      return 0;
    }

    v18 = v14 >= 0 ? (a1 + 72) : *(a1 + 72);
    v19 = v17 >= 0 ? (a2 + 72) : *(a2 + 72);
    if (memcmp(v18, v19, v15) || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if (!v12)
  {
    return 0;
  }

  v20 = *(a1 + 152);
  v21 = *(a2 + 152);
  if (v20 == v21 && *(a1 + 152))
  {
    v22 = *(a1 + 144);
    v23 = *(a2 + 144);
    if (v22)
    {
      if (v23 != 1)
      {
        return 0;
      }

      if (v22 != 1)
      {
        goto LABEL_164;
      }

      v24 = *(a1 + 143);
      if ((v24 & 0x80000000) == 0)
      {
        v25 = *(a1 + 143);
      }

      else
      {
        v25 = *(a1 + 128);
      }

      v26 = *(a2 + 143);
      v27 = *(a2 + 128);
      if ((v26 & 0x80000000) == 0)
      {
        v27 = *(a2 + 143);
      }

      if (v25 != v27)
      {
        return 0;
      }

      v28 = v24 >> 63;
      v29 = v26 >> 63;
    }

    else
    {
      if (v23)
      {
        return 0;
      }

      v32 = *(a1 + 143);
      if ((v32 & 0x80000000) == 0)
      {
        v25 = *(a1 + 143);
      }

      else
      {
        v25 = *(a1 + 128);
      }

      v33 = *(a2 + 143);
      v34 = *(a2 + 128);
      if ((v33 & 0x80000000) == 0)
      {
        v34 = *(a2 + 143);
      }

      if (v25 != v34)
      {
        return 0;
      }

      v28 = v32 >> 63;
      v29 = v33 >> 63;
    }

    if (v28)
    {
      v35 = *(a1 + 120);
    }

    else
    {
      v35 = (a1 + 120);
    }

    if (v29)
    {
      v36 = *(a2 + 120);
    }

    else
    {
      v36 = (a2 + 120);
    }

    if (memcmp(v35, v36, v25))
    {
      return 0;
    }
  }

  else if (v20 != v21)
  {
    return 0;
  }

  v30 = *(a1 + 224);
  v31 = *(a2 + 224);
  if (v30 == v31 && *(a1 + 224))
  {
    if (!sub_2714F13DC((a1 + 160), (a2 + 160)))
    {
      return 0;
    }
  }

  else if (v30 != v31)
  {
    return 0;
  }

  v37 = *(a1 + 256);
  v38 = *(a2 + 256);
  if (v37 == v38 && *(a1 + 256))
  {
    if ((sub_2714F58D8((a1 + 232), (a2 + 232)) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37 != v38)
  {
    return 0;
  }

  v39 = *(a1 + 312);
  v40 = *(a2 + 312);
  if (v39 == v40 && *(a1 + 312))
  {
    if (!sub_2714F5B38(a1 + 264, a2 + 264))
    {
      return 0;
    }
  }

  else if (v39 != v40)
  {
    return 0;
  }

  v41 = *(a1 + 416);
  v42 = *(a2 + 416);
  if (v41 != v42 || !*(a1 + 416))
  {
    goto LABEL_105;
  }

  v43 = *(a1 + 400);
  v44 = *(a2 + 400);
  if (v43)
  {
    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != 1)
    {
      goto LABEL_164;
    }

    v45 = *(a1 + 359);
    if (v45 >= 0)
    {
      v46 = *(a1 + 359);
    }

    else
    {
      v46 = *(a1 + 344);
    }

    v47 = *(a2 + 359);
    v48 = v47;
    if ((v47 & 0x80u) != 0)
    {
      v47 = *(a2 + 344);
    }

    if (v46 != v47)
    {
      return 0;
    }

    v49 = v45 >= 0 ? (a1 + 336) : *(a1 + 336);
    v50 = v48 >= 0 ? (a2 + 336) : *(a2 + 336);
    if (memcmp(v49, v50, v46))
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v44)
  {
    return 0;
  }

  v41 = *(a1 + 384);
  v42 = *(a2 + 384);
  if (v41 == v42 && *(a1 + 384))
  {
    if (!sub_2714FB228((a1 + 336), (a2 + 336)))
    {
      return 0;
    }
  }

  else
  {
LABEL_105:
    if (v41 != v42)
    {
      return 0;
    }
  }

LABEL_106:
  v51 = *(a1 + 576);
  v52 = v51 == *(a2 + 576);
  if (v51 != *(a2 + 576) || !*(a1 + 576))
  {
    goto LABEL_130;
  }

  v53 = *(a1 + 560);
  v54 = *(a2 + 560);
  if (v53)
  {
    if (v54 != 1)
    {
      return 0;
    }

    if (v53 == 1)
    {
      v55 = *(a1 + 471);
      if (v55 >= 0)
      {
        v56 = *(a1 + 471);
      }

      else
      {
        v56 = *(a1 + 456);
      }

      v57 = *(a2 + 471);
      v58 = v57;
      if ((v57 & 0x80u) != 0)
      {
        v57 = *(a2 + 456);
      }

      if (v56 != v57)
      {
        return 0;
      }

      v59 = v55 >= 0 ? (a1 + 448) : *(a1 + 448);
      v60 = v58 >= 0 ? (a2 + 448) : *(a2 + 448);
      if (memcmp(v59, v60, v56))
      {
        return 0;
      }

      goto LABEL_131;
    }

LABEL_164:
    sub_2711308D4();
  }

  if (v54)
  {
    return 0;
  }

  v61 = *(a1 + 544);
  v52 = v61 == *(a2 + 544);
  if (v61 == *(a2 + 544) && *(a1 + 544))
  {
    if (!sub_2714FB8D4(a1 + 448, a2 + 448))
    {
      return 0;
    }
  }

  else
  {
LABEL_130:
    if (!v52)
    {
      return 0;
    }
  }

LABEL_131:
  v62 = *(a1 + 624);
  v63 = v62 == *(a2 + 624);
  if (v62 == *(a2 + 624) && *(a1 + 624) && (v64 = *(a1 + 616), v63 = v64 == *(a2 + 616)) && *(a1 + 616))
  {
    v65 = *(a1 + 600);
    v66 = *(a1 + 592);
    v67 = *(a2 + 592);
    if (v65 - v66 != *(a2 + 600) - v67)
    {
      return 0;
    }

    for (; v66 != v65; v67 += 96)
    {
      result = sub_2714FB8D4(v66, v67);
      if (!result)
      {
        return result;
      }

      v66 += 96;
    }
  }

  else if (!v63)
  {
    return 0;
  }

  v68 = *(a1 + 680);
  v69 = *(a2 + 680);
  if (v68 != v69 || v68 == 0)
  {
    if (v68 != v69)
    {
      return 0;
    }
  }

  else if (!sub_2714F5B38(a1 + 632, a2 + 632))
  {
    return 0;
  }

  v71 = *(a1 + 712);
  v72 = v71 == *(a2 + 712);
  if (v71 == *(a2 + 712))
  {
    if (*(a1 + 712))
    {
      v73 = *(a1 + 704);
      v72 = v73 == *(a2 + 704);
      if (v73 == *(a2 + 704))
      {
        if (*(a1 + 704))
        {
          if (*(a1 + 688) != *(a2 + 688) || *(a1 + 696) != *(a2 + 696))
          {
            return 0;
          }

          goto LABEL_157;
        }
      }
    }
  }

  if (!v72)
  {
    return 0;
  }

LABEL_157:
  v74 = *(a2 + 744);
  v75 = *(a1 + 744);
  result = v75 == v74;
  if (v75 == v74)
  {
    if (*(a1 + 744))
    {
      v76 = *(a2 + 736);
      v77 = *(a1 + 736);
      result = v77 == v76;
      if (v77 == v76)
      {
        if (*(a1 + 736))
        {
          if (*(a1 + 720) == *(a2 + 720))
          {
            return *(a1 + 728) == *(a2 + 728);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void *sub_2714F1C74(void *a1, uint64_t a2)
{
  sub_271120E64(a1, "{", 1);
  v37 = 1;
  v35 = &v37;
  v36 = a1;
  v34[0] = 0;
  v34[24] = 0;
  sub_2714F36B8(&v35, "package_id", a2, v34);
  if (*(a2 + 64) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v4 = sub_271120E64(a1, "data_type_id", 12);
    sub_271120E64(v4, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 112) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v5 = sub_271120E64(a1, "package_data_id", 15);
    sub_271120E64(v5, ": ", 2);
    LODWORD(v46) = 0;
    operator new();
  }

  if (*(a2 + 152) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v6 = sub_271120E64(a1, "context_name", 12);
    sub_271120E64(v6, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 224) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v7 = sub_271120E64(a1, "context_id", 10);
    sub_271120E64(v7, ": ", 2);
    v41 = 0;
    operator new();
  }

  if ((*(a2 + 256) & 1) == 0)
  {
    v11 = 7;
    HIBYTE(v40) = 7;
    LODWORD(v38) = 1819047278;
    v12 = 1953525612;
LABEL_29:
    *(&v38 + 3) = v12;
    HIBYTE(v38) = 0;
    goto LABEL_30;
  }

  v9 = *(a2 + 240);
  v8 = *(a2 + 248);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (v9)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  if (!v9)
  {
LABEL_28:
    v11 = 7;
    HIBYTE(v40) = 7;
    LODWORD(v38) = 1819047278;
    v12 = 1920233580;
    goto LABEL_29;
  }

LABEL_25:
  v10 = (*(*(a2 + 232) + 16))();
  (*(*v10 + 24))(&v38);
  v11 = HIBYTE(v40);
LABEL_30:
  v13 = v38;
  v14 = v39;
  v33[0] = v40;
  *(v33 + 3) = *(&v40 + 3);
  v39 = 0;
  v40 = 0;
  v38 = 0;
  if (*(a2 + 256) != 1)
  {
    goto LABEL_44;
  }

  if (*v35 == 1)
  {
    *v35 = 0;
    v15 = v36;
  }

  else
  {
    v15 = v36;
    sub_271120E64(v36, ",", 1);
  }

  v16 = sub_271120E64(v15, "value", 5);
  v17 = sub_271120E64(v16, ": ", 2);
  if ((v11 & 0x80) != 0)
  {
    sub_271127178(&v42, v13, v14);
    v19 = v45;
    v18 = v42;
    v14 = v43;
  }

  else
  {
    v42 = v13;
    v43 = v14;
    *v44 = v33[0];
    *&v44[3] = *(v33 + 3);
    v45 = v11;
    v18 = v13;
    v19 = v11;
  }

  v20 = (v19 & 0x80u) == 0 ? &v42 : v18;
  v21 = (v19 & 0x80u) == 0 ? v19 : v14;
  sub_271120E64(v17, v20, v21);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    operator delete(v13);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  operator delete(v42);
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  operator delete(v38);
LABEL_46:
  v32[0] = 0;
  v32[24] = 0;
  sub_2714F36B8(&v35, "name", a2 + 264, v32);
  if (*(a2 + 416) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v22 = v36;
    }

    else
    {
      v22 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v23 = sub_271120E64(v22, "instance_id", 11);
    sub_271120E64(v23, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 576) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v24 = v36;
    }

    else
    {
      v24 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v25 = sub_271120E64(v24, "reference_id", 12);
    sub_271120E64(v25, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 624) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v26 = v36;
    }

    else
    {
      v26 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v27 = sub_271120E64(v26, "references", 10);
    sub_271120E64(v27, ": ", 2);
    LODWORD(v46) = 0;
    operator new();
  }

  v31[0] = 0;
  v31[24] = 0;
  sub_2714F36B8(&v35, "space", a2 + 632, v31);
  v30[0] = 0;
  v30[24] = 0;
  sub_2714F3A7C(&v35, "custom_timestamp", a2 + 688, v30);
  v29[0] = 0;
  v29[24] = 0;
  sub_2714F3A7C(&v35, "auto_timestamp", a2 + 720, v29);
  sub_271120E64(a1, "}", 1);
  return a1;
}

void sub_2714F33D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 169) < 0)
  {
    operator delete(*(v44 - 192));
  }

  v46 = *(v44 - 200);
  *(v44 - 200) = 0;
  if (v46)
  {
    sub_27184D728(v44 - 200, v46);
    sub_271130878(&__p);
    _Unwind_Resume(a1);
  }

  sub_271130878(&__p);
  _Unwind_Resume(a1);
}

void sub_2714F3668()
{
  if (v0 < 0)
  {
    JUMPOUT(0x2714F3670);
  }

  JUMPOUT(0x2714F349CLL);
}

void sub_2714F3690(_Unwind_Exception *a1)
{
  v3 = *(v1 - 144);
  *(v1 - 144) = 0;
  if (v3)
  {
    sub_27184D728(v1 - 144, v3);
  }

  sub_271130878(v1 - 192);
  _Unwind_Resume(a1);
}

void sub_2714F36B8(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 48) == 1)
  {
    if (**a1 == 1)
    {
      **a1 = 0;
    }

    else
    {
      v6 = a1;
      sub_271120E64(*(a1 + 8), ",", 1);
      a1 = v6;
    }

    v7 = *(a1 + 8);
    v8 = strlen(__s);
    v9 = sub_271120E64(v7, __s, v8);
    v10 = sub_271120E64(v9, ": ", 2);
    if (*(a4 + 24) != 1)
    {
      v15 = 0;
      operator new();
    }

    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v14 = *(a4 + 16);
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v14 >= 0)
    {
      v12 = HIBYTE(v14);
    }

    else
    {
      v12 = __p[1];
    }

    sub_271120E64(v10, v11, v12);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714F39F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  MEMORY[0x2743BF050](v25, 0x10B2C40EED050F3, a3, a4, a5, a6, a7, a8);
  sub_271130878(&a15);
  _Unwind_Resume(a1);
}

void sub_2714F3A7C(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 1)
  {
    if (**a1 == 1)
    {
      **a1 = 0;
    }

    else
    {
      v6 = a1;
      sub_271120E64(*(a1 + 8), ",", 1);
      a1 = v6;
    }

    v7 = *(a1 + 8);
    v8 = strlen(__s);
    v9 = sub_271120E64(v7, __s, v8);
    v10 = sub_271120E64(v9, ": ", 2);
    if (*(a4 + 24) != 1)
    {
      v15 = 0;
      operator new();
    }

    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v14 = *(a4 + 16);
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v14 >= 0)
    {
      v12 = HIBYTE(v14);
    }

    else
    {
      v12 = __p[1];
    }

    sub_271120E64(v10, v11, v12);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714F3D38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  MEMORY[0x2743BF050](v16, 0x10B2C40EED050F3, a3, a4, a5, a6, a7, a8);
  sub_271130878(&a16);
  _Unwind_Resume(a1);
}

void *sub_2714F3DA4(void *a1)
{
  *a1 = off_2881327C0;
  sub_271347580((a1 + 2));
  return a1;
}

void sub_2714F3DE8(void *a1)
{
  *a1 = off_2881327C0;
  sub_271347580((a1 + 2));

  JUMPOUT(0x2743BF050);
}

BOOL sub_2714F3E4C(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  __src = a3;
  __len = a4;
  if (*(a1 + 80) == 1 && (*(a1 + 76) != 1 || *(a1 + 72) != *(a2 + 24)))
  {
    return 0;
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      *&__p[16] = *(a2 + 16);
    }

    LOBYTE(v33) = 1;
    v8 = sub_2714F6B10(a1 + 16, __p);
    if (v33 == 1 && (__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (!v8)
    {
      return 0;
    }
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) != 1)
    {
      return 0;
    }

    v9 = *(a1 + 111);
    if (v9 >= 0)
    {
      v10 = *(a1 + 111);
    }

    else
    {
      v10 = *(a1 + 96);
    }

    v11 = *(a2 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (v10 != v11)
    {
      return 0;
    }

    v13 = v9 >= 0 ? (a1 + 88) : *(a1 + 88);
    v14 = v12 >= 0 ? a2 : *a2;
    if (memcmp(v13, v14, v10) || *(a1 + 112) != *(a2 + 24))
    {
      return 0;
    }
  }

  if (*(a1 + 168) == 1)
  {
    LODWORD(v33) = 0;
    sub_2714C49E0(&v40, __p, &__src);
    if (v33 == -1)
    {
      sub_2711308D4();
    }

    v40 = &v39;
    (off_288132810[v33])(v37, &v40, __p);
    if (v33 != -1)
    {
      (off_2881327F8[v33])(&v40, __p);
    }

    result = sub_2714F0F54((a1 + 136), v37);
    if (v38 < 0)
    {
      v23 = result;
      operator delete(v37[0]);
      result = v23;
      if (!v23)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 240) == 1)
  {
    v15 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    v31 = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    v30[v15 - 8] = 0;
    *&__p[15] = *&v30[7];
    v16 = __dst;
    *__p = __dst;
    *&__p[8] = *v30;
    __p[23] = v31;
    LOBYTE(v33) = 0;
    v34 = 0;
    if (v31 >= 0)
    {
      v16 = __p;
    }

    v17 = *&__p[8];
    if (v31 >= 0)
    {
      v17 = v31;
    }

    if (!v17)
    {
      goto LABEL_111;
    }

    v18 = v16;
    if (v17 < 8)
    {
LABEL_116:
      v28 = &v16[v17];
      do
      {
        if (*v18 == 58)
        {
          *v18 = 95;
        }

        ++v18;
      }

      while (v18 != v28);
      goto LABEL_111;
    }

    if (v17 < 0x10)
    {
      v19 = 0;
      goto LABEL_52;
    }

    v19 = v17 & 0xFFFFFFFFFFFFFFF0;
    v24 = v16 + 7;
    v25.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
    v25.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
    v26 = v17 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v27 = vceqq_s8(*(v24 - 7), v25);
      if (v27.i8[0])
      {
        *(v24 - 7) = 95;
        if ((v27.i8[1] & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      else if ((v27.i8[1] & 1) == 0)
      {
LABEL_79:
        if (v27.i8[2])
        {
          goto LABEL_80;
        }

        goto LABEL_96;
      }

      *(v24 - 6) = 95;
      if (v27.i8[2])
      {
LABEL_80:
        *(v24 - 5) = 95;
        if ((v27.i8[3] & 1) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_97;
      }

LABEL_96:
      if ((v27.i8[3] & 1) == 0)
      {
LABEL_81:
        if (v27.i8[4])
        {
          goto LABEL_82;
        }

        goto LABEL_98;
      }

LABEL_97:
      *(v24 - 4) = 95;
      if (v27.i8[4])
      {
LABEL_82:
        *(v24 - 3) = 95;
        if ((v27.i8[5] & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_99;
      }

LABEL_98:
      if ((v27.i8[5] & 1) == 0)
      {
LABEL_83:
        if (v27.i8[6])
        {
          goto LABEL_84;
        }

        goto LABEL_100;
      }

LABEL_99:
      *(v24 - 2) = 95;
      if (v27.i8[6])
      {
LABEL_84:
        *(v24 - 1) = 95;
        if ((v27.i8[7] & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_101;
      }

LABEL_100:
      if ((v27.i8[7] & 1) == 0)
      {
LABEL_85:
        if (v27.i8[8])
        {
          goto LABEL_86;
        }

        goto LABEL_102;
      }

LABEL_101:
      *v24 = 95;
      if (v27.i8[8])
      {
LABEL_86:
        v24[1] = 95;
        if ((v27.i8[9] & 1) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_103;
      }

LABEL_102:
      if ((v27.i8[9] & 1) == 0)
      {
LABEL_87:
        if (v27.i8[10])
        {
          goto LABEL_88;
        }

        goto LABEL_104;
      }

LABEL_103:
      v24[2] = 95;
      if (v27.i8[10])
      {
LABEL_88:
        v24[3] = 95;
        if ((v27.i8[11] & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_105;
      }

LABEL_104:
      if ((v27.i8[11] & 1) == 0)
      {
LABEL_89:
        if (v27.i8[12])
        {
          goto LABEL_90;
        }

        goto LABEL_106;
      }

LABEL_105:
      v24[4] = 95;
      if (v27.i8[12])
      {
LABEL_90:
        v24[5] = 95;
        if ((v27.i8[13] & 1) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_107;
      }

LABEL_106:
      if ((v27.i8[13] & 1) == 0)
      {
LABEL_91:
        if (v27.i8[14])
        {
          goto LABEL_92;
        }

        goto LABEL_108;
      }

LABEL_107:
      v24[6] = 95;
      if (v27.i8[14])
      {
LABEL_92:
        v24[7] = 95;
        if (v27.i8[15])
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      }

LABEL_108:
      if (v27.i8[15])
      {
LABEL_109:
        v24[8] = 95;
      }

LABEL_76:
      v24 += 16;
      v26 -= 16;
      if (!v26)
      {
        if (v17 == v19)
        {
          goto LABEL_111;
        }

        if ((v17 & 8) == 0)
        {
          v18 = &v16[v19];
          goto LABEL_116;
        }

LABEL_52:
        v18 = &v16[v17 & 0xFFFFFFFFFFFFFFF8];
        v20 = v19 - (v17 & 0xFFFFFFFFFFFFFFF8);
        v21 = &v16[v19 + 3];
        while (2)
        {
          v22 = vceq_s8(*(v21 - 3), 0x3A3A3A3A3A3A3A3ALL);
          if (v22.i8[0])
          {
            *(v21 - 3) = 95;
            if ((v22.i8[1] & 1) == 0)
            {
              goto LABEL_56;
            }

LABEL_64:
            *(v21 - 2) = 95;
            if ((v22.i8[2] & 1) == 0)
            {
              goto LABEL_65;
            }

LABEL_57:
            *(v21 - 1) = 95;
            if ((v22.i8[3] & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_66:
            *v21 = 95;
            if ((v22.i8[4] & 1) == 0)
            {
              goto LABEL_67;
            }

LABEL_59:
            v21[1] = 95;
            if ((v22.i8[5] & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_68:
            v21[2] = 95;
            if ((v22.i8[6] & 1) == 0)
            {
              goto LABEL_69;
            }

LABEL_61:
            v21[3] = 95;
            if (v22.i8[7])
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v22.i8[1])
            {
              goto LABEL_64;
            }

LABEL_56:
            if (v22.i8[2])
            {
              goto LABEL_57;
            }

LABEL_65:
            if (v22.i8[3])
            {
              goto LABEL_66;
            }

LABEL_58:
            if (v22.i8[4])
            {
              goto LABEL_59;
            }

LABEL_67:
            if (v22.i8[5])
            {
              goto LABEL_68;
            }

LABEL_60:
            if (v22.i8[6])
            {
              goto LABEL_61;
            }

LABEL_69:
            if (v22.i8[7])
            {
LABEL_70:
              v21[4] = 95;
            }
          }

          v21 += 8;
          v20 += 8;
          if (!v20)
          {
            if (v17 != (v17 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_116;
            }

LABEL_111:
            sub_2714F10DC((a1 + 176), __p);
          }

          continue;
        }
      }
    }
  }

  return 1;
}

void sub_2714F4444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271181F68(va);
  _Unwind_Resume(a1);
}

void sub_2714F4458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 - 65) < 0)
  {
    operator delete(*(v19 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714F44BC(uint64_t a1, uint64_t a2)
{
  v139 = *MEMORY[0x277D85DE8];
  v4 = a2 + 16;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    sub_2714FCC00(v4);
    *v110 = *__p;
    v111 = v126;
    v112 = v127;
    LODWORD(v6) = 1;
    v113 = 1;
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (SHIBYTE(v111) < 0)
    {
      sub_271127178(__p, v110[0], v110[1]);
    }

    else
    {
      *__p = *v110;
      v126 = v111;
    }

    goto LABEL_11;
  }

  LOBYTE(v110[0]) = 0;
  v113 = 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_15;
  }

  LODWORD(v6) = 0;
  LOBYTE(__p[0]) = 0;
LABEL_11:
  LOBYTE(v127) = v6;
  v7 = sub_2714F6B10(a1 + 16, __p);
  if (v127 == 1 && SHIBYTE(v126) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v7)
  {
    goto LABEL_331;
  }

LABEL_15:
  if (*(a1 + 80) == 1)
  {
    v8 = *(a1 + 76);
    if (v8 == v6 && *(a1 + 76))
    {
      if (*(a1 + 72) != v112)
      {
        goto LABEL_331;
      }
    }

    else if (v8 != v6)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 128) == 1)
  {
    v9 = *(a1 + 120);
    if (v9 == v6 && *(a1 + 120))
    {
      v10 = *(a1 + 111);
      if (v10 >= 0)
      {
        v11 = *(a1 + 111);
      }

      else
      {
        v11 = *(a1 + 96);
      }

      v12 = HIBYTE(v111);
      if (SHIBYTE(v111) < 0)
      {
        v12 = v110[1];
      }

      if (v11 != v12)
      {
        goto LABEL_331;
      }

      v13 = v10 >= 0 ? (a1 + 88) : *(a1 + 88);
      v14 = SHIBYTE(v111) >= 0 ? v110 : v110[0];
      if (memcmp(v13, v14, v11) || *(a1 + 112) != v112)
      {
        goto LABEL_331;
      }
    }

    else if (v9 != v6)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 168) == 1 && !sub_2714F0F54((a1 + 136), **a2))
  {
    goto LABEL_331;
  }

  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  if (!v15 || (atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v16)
    {
      goto LABEL_45;
    }

LABEL_48:
    v17 = 0;
    if (*(a1 + 240) != 1)
    {
      goto LABEL_50;
    }

LABEL_49:
    sub_2714F10DC((a1 + 176), **a2);
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_45:
  v17 = sub_2714FC508(v4);
  if (*(a1 + 240) == 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (*(a1 + 272) == 1)
  {
    v19 = *(a2 + 24);
    v18 = *(a2 + 32);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    if (!v19)
    {
      goto LABEL_61;
    }

    v21 = *(a1 + 256);
    v20 = *(a1 + 264);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }
    }

    if (v21)
    {
      v22 = (*(*(a1 + 248) + 16))(a1 + 248);
      v23 = (*(*v4 + 16))(v4);
      if (((*(*v22 + 16))(v22, v23) & 1) == 0)
      {
        goto LABEL_331;
      }
    }

    else
    {
LABEL_61:
      v25 = *(a2 + 24);
      v24 = *(a2 + 32);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      if (v25)
      {
        goto LABEL_331;
      }

      v27 = *(a1 + 256);
      v26 = *(a1 + 264);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_331;
      }
    }
  }

  if (*(a1 + 328) == 1)
  {
    if (v16)
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v127) = 0;
      if (*(v17 + 40) == 1)
      {
        if (*(v17 + 39) < 0)
        {
          sub_271127178(__p, *(v17 + 16), *(v17 + 24));
        }

        else
        {
          *__p = *(v17 + 16);
          v126 = *(v17 + 32);
        }

        LOBYTE(v127) = 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v127) = 0;
    }

    v28 = sub_2714F6B10(a1 + 280, __p);
    if (v127 == 1 && SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v28)
    {
LABEL_331:
      v107 = 0;
      goto LABEL_332;
    }
  }

  if (*(a1 + 432) != 1)
  {
    goto LABEL_114;
  }

  if (v16)
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v129) = 0;
    if (*(v17 + 160) == 1)
    {
      if (*(v17 + 135) < 0)
      {
        sub_271127178(__p, *(v17 + 112), *(v17 + 120));
      }

      else
      {
        *__p = *(v17 + 112);
        v126 = *(v17 + 128);
      }

      _X0 = 0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      v128 = _X0;
      LOBYTE(v129) = 1;
      v37 = *(a1 + 416);
      if (v37 == 1)
      {
        sub_2714F5EBC(v118, __p);
        if (SHIBYTE(v118[2]) >= 0)
        {
          v53 = v118;
        }

        else
        {
          v53 = v118[0];
        }

        if (SHIBYTE(v118[2]) >= 0)
        {
          v54 = HIBYTE(v118[2]);
        }

        else
        {
          v54 = v118[1];
        }

        v55 = *(a1 + 375);
        if ((v55 & 0x8000000000000000) != 0)
        {
          v56 = *(a1 + 352);
          v55 = *(a1 + 360);
        }

        else
        {
          v56 = (a1 + 352);
        }

        sub_27184C050(v53, v54, v56, v55, 0);
      }

      if (v37)
      {
        sub_2711308D4();
      }

      goto LABEL_92;
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v129) = 0;
  }

  if (*(a1 + 416))
  {
    v29 = 0;
    goto LABEL_110;
  }

LABEL_92:
  sub_2714F5EBC(v118, (a1 + 352));
  sub_2714F5EBC(&v134, __p);
  v38 = HIBYTE(v118[2]);
  if (SHIBYTE(v118[2]) >= 0)
  {
    v39 = HIBYTE(v118[2]);
  }

  else
  {
    v39 = v118[1];
  }

  v40 = HIBYTE(v135);
  v41 = SHIBYTE(v135);
  if (v135 < 0)
  {
    v40 = *(&v134 + 1);
  }

  if (v39 == v40)
  {
    if (SHIBYTE(v118[2]) >= 0)
    {
      v42 = v118;
    }

    else
    {
      v42 = v118[0];
    }

    if (v135 >= 0)
    {
      v43 = &v134;
    }

    else
    {
      v43 = v134;
    }

    v29 = memcmp(v42, v43, v39) == 0;
  }

  else
  {
    v29 = 0;
  }

  if (v41 < 0)
  {
    operator delete(v134);
    v38 = HIBYTE(v118[2]);
  }

  if (v38 < 0)
  {
    operator delete(v118[0]);
  }

LABEL_110:
  if (v129 == 1 && SHIBYTE(v126) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v29)
  {
    goto LABEL_331;
  }

LABEL_114:
  if (*(a1 + 592) != 1)
  {
    goto LABEL_268;
  }

  if (!v16)
  {
    goto LABEL_122;
  }

  if ((*(v17 + 40) & 1) == 0)
  {
    if (*(v17 + 160))
    {
      LOBYTE(v114[0]) = 0;
      v116 = 0;
      LOBYTE(v134) = 0;
      v138 = 0;
      if (*(v17 + 160) != 1)
      {
        LOBYTE(v118[0]) = 0;
        v119 = 0;
        LOBYTE(v120[0]) = 0;
        v124 = 0;
        goto LABEL_230;
      }

      goto LABEL_151;
    }

LABEL_122:
    v44 = 0;
    LOBYTE(__p[0]) = 0;
    v133 = 0;
    v45 = *(a1 + 576);
    if (!v45)
    {
      goto LABEL_123;
    }

    goto LABEL_237;
  }

  LOBYTE(v114[0]) = 0;
  v116 = 0;
  if (*(v17 + 39) < 0)
  {
    sub_271127178(v114, *(v17 + 16), *(v17 + 24));
  }

  else
  {
    *v114 = *(v17 + 16);
    v115 = *(v17 + 32);
  }

  v116 = 1;
  LOBYTE(v134) = 0;
  v138 = 0;
  if (*(v17 + 160))
  {
LABEL_151:
    if (*(v17 + 135) < 0)
    {
      sub_271127178(&v134, *(v17 + 112), *(v17 + 120));
    }

    else
    {
      v134 = *(v17 + 112);
      v135 = *(v17 + 128);
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v136 = _X0;
    v137 = 0;
    v57 = 1;
    v138 = 1;
    if ((v116 & 1) == 0)
    {
      LOBYTE(v118[0]) = 0;
      v119 = 0;
      LOBYTE(v120[0]) = 0;
      v124 = 0;
      goto LABEL_227;
    }

    goto LABEL_156;
  }

  v57 = 0;
LABEL_156:
  *&v117[1] = v115;
  v117[0] = *v114;
  v114[1] = 0;
  v115 = 0;
  v114[0] = 0;
  v61 = BYTE7(v117[1]);
  v62 = *(&v117[0] + 1);
  v63 = *&v117[0];
  if ((SBYTE7(v117[1]) & 0x80u) == 0)
  {
    v64 = v117;
  }

  else
  {
    v64 = *&v117[0];
  }

  if ((SBYTE7(v117[1]) & 0x80u) == 0)
  {
    v62 = SBYTE7(v117[1]);
  }

  if (!v62)
  {
    goto LABEL_226;
  }

  v65 = v64;
  if (v62 < 8)
  {
LABEL_338:
    v109 = v64 + v62;
    do
    {
      if (*v65 == 35)
      {
        *v65 = 95;
      }

      ++v65;
    }

    while (v65 != v109);
    goto LABEL_225;
  }

  if (v62 < 0x10)
  {
    v66 = 0;
    goto LABEL_165;
  }

  v66 = v62 & 0xFFFFFFFFFFFFFFF0;
  v70 = v64 + 7;
  v71.i64[0] = 0x2323232323232323;
  v71.i64[1] = 0x2323232323232323;
  v72 = v62 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v73 = vceqq_s8(*(v70 - 7), v71);
    if (v73.i8[0])
    {
      *(v70 - 7) = 95;
      if ((v73.i8[1] & 1) == 0)
      {
        goto LABEL_193;
      }
    }

    else if ((v73.i8[1] & 1) == 0)
    {
LABEL_193:
      if (v73.i8[2])
      {
        goto LABEL_194;
      }

      goto LABEL_210;
    }

    *(v70 - 6) = 95;
    if (v73.i8[2])
    {
LABEL_194:
      *(v70 - 5) = 95;
      if ((v73.i8[3] & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_211;
    }

LABEL_210:
    if ((v73.i8[3] & 1) == 0)
    {
LABEL_195:
      if (v73.i8[4])
      {
        goto LABEL_196;
      }

      goto LABEL_212;
    }

LABEL_211:
    *(v70 - 4) = 95;
    if (v73.i8[4])
    {
LABEL_196:
      *(v70 - 3) = 95;
      if ((v73.i8[5] & 1) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_213;
    }

LABEL_212:
    if ((v73.i8[5] & 1) == 0)
    {
LABEL_197:
      if (v73.i8[6])
      {
        goto LABEL_198;
      }

      goto LABEL_214;
    }

LABEL_213:
    *(v70 - 2) = 95;
    if (v73.i8[6])
    {
LABEL_198:
      *(v70 - 1) = 95;
      if ((v73.i8[7] & 1) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_215;
    }

LABEL_214:
    if ((v73.i8[7] & 1) == 0)
    {
LABEL_199:
      if (v73.i8[8])
      {
        goto LABEL_200;
      }

      goto LABEL_216;
    }

LABEL_215:
    *v70 = 95;
    if (v73.i8[8])
    {
LABEL_200:
      v70[1] = 95;
      if ((v73.i8[9] & 1) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_217;
    }

LABEL_216:
    if ((v73.i8[9] & 1) == 0)
    {
LABEL_201:
      if (v73.i8[10])
      {
        goto LABEL_202;
      }

      goto LABEL_218;
    }

LABEL_217:
    v70[2] = 95;
    if (v73.i8[10])
    {
LABEL_202:
      v70[3] = 95;
      if ((v73.i8[11] & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_219;
    }

LABEL_218:
    if ((v73.i8[11] & 1) == 0)
    {
LABEL_203:
      if (v73.i8[12])
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    }

LABEL_219:
    v70[4] = 95;
    if (v73.i8[12])
    {
LABEL_204:
      v70[5] = 95;
      if ((v73.i8[13] & 1) == 0)
      {
        goto LABEL_205;
      }

      goto LABEL_221;
    }

LABEL_220:
    if ((v73.i8[13] & 1) == 0)
    {
LABEL_205:
      if ((v73.i8[14] & 1) == 0)
      {
        goto LABEL_222;
      }

      goto LABEL_206;
    }

LABEL_221:
    v70[6] = 95;
    if ((v73.i8[14] & 1) == 0)
    {
LABEL_222:
      if ((v73.i8[15] & 1) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_223;
    }

LABEL_206:
    v70[7] = 95;
    if ((v73.i8[15] & 1) == 0)
    {
      goto LABEL_190;
    }

LABEL_223:
    v70[8] = 95;
LABEL_190:
    v70 += 16;
    v72 -= 16;
  }

  while (v72);
  if (v62 == v66)
  {
    goto LABEL_225;
  }

  if ((v62 & 8) == 0)
  {
    v65 = v64 + v66;
    goto LABEL_338;
  }

LABEL_165:
  v65 = v64 + (v62 & 0xFFFFFFFFFFFFFFF8);
  v67 = v66 - (v62 & 0xFFFFFFFFFFFFFFF8);
  v68 = v64 + v66 + 3;
  while (2)
  {
    v69 = vceq_s8(*(v68 - 3), 0x2323232323232323);
    if (v69.i8[0])
    {
      *(v68 - 3) = 95;
      if ((v69.i8[1] & 1) == 0)
      {
        goto LABEL_169;
      }

LABEL_177:
      *(v68 - 2) = 95;
      if ((v69.i8[2] & 1) == 0)
      {
        goto LABEL_178;
      }

LABEL_170:
      *(v68 - 1) = 95;
      if ((v69.i8[3] & 1) == 0)
      {
        goto LABEL_171;
      }

LABEL_179:
      *v68 = 95;
      if ((v69.i8[4] & 1) == 0)
      {
        goto LABEL_180;
      }

LABEL_172:
      v68[1] = 95;
      if ((v69.i8[5] & 1) == 0)
      {
        goto LABEL_173;
      }

LABEL_181:
      v68[2] = 95;
      if ((v69.i8[6] & 1) == 0)
      {
        goto LABEL_182;
      }

LABEL_174:
      v68[3] = 95;
      if (v69.i8[7])
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (v69.i8[1])
      {
        goto LABEL_177;
      }

LABEL_169:
      if (v69.i8[2])
      {
        goto LABEL_170;
      }

LABEL_178:
      if (v69.i8[3])
      {
        goto LABEL_179;
      }

LABEL_171:
      if (v69.i8[4])
      {
        goto LABEL_172;
      }

LABEL_180:
      if (v69.i8[5])
      {
        goto LABEL_181;
      }

LABEL_173:
      if (v69.i8[6])
      {
        goto LABEL_174;
      }

LABEL_182:
      if (v69.i8[7])
      {
LABEL_183:
        v68[4] = 95;
      }
    }

    v68 += 8;
    v67 += 8;
    if (v67)
    {
      continue;
    }

    break;
  }

  if (v62 != (v62 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_338;
  }

LABEL_225:
  v63 = *&v117[0];
  v61 = BYTE7(v117[1]);
  v57 = v138;
LABEL_226:
  v118[0] = v63;
  v118[1] = *(&v117[0] + 1);
  *(&v118[1] + 7) = *(v117 + 15);
  memset(v117, 0, 24);
  HIBYTE(v118[2]) = v61;
  v119 = 1;
  LOBYTE(v120[0]) = 0;
  v124 = 0;
  if ((v57 & 1) == 0)
  {
LABEL_230:
    v77 = 0;
    goto LABEL_231;
  }

LABEL_227:
  _X0 = 0;
  _X1 = 0;
  v121 = v135;
  *v120 = v134;
  v135 = 0;
  v134 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v122 = _X0;
  v123 = 0;
  v77 = 1;
  v124 = 1;
  if ((v138 & 1) != 0 && SHIBYTE(v135) < 0)
  {
    operator delete(v134);
  }

LABEL_231:
  if (v116 == 1 && SHIBYTE(v115) < 0)
  {
    operator delete(v114[0]);
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v127) = 0;
  if (v119 == 1)
  {
    *__p = *v118;
    v126 = v118[2];
    memset(v118, 0, sizeof(v118));
    LOBYTE(v127) = 1;
    LOBYTE(v128) = 0;
    v132 = 0;
    v44 = 1;
    if (!v77)
    {
      goto LABEL_236;
    }

LABEL_248:
    _X0 = 0;
    _X1 = 0;
    v129 = v121;
    v128 = *v120;
    v120[1] = 0;
    v121 = 0;
    v120[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v130 = _X0;
    v131 = 0;
    v132 = 1;
    v133 = 1;
    v45 = *(a1 + 576);
    if (!v45)
    {
      goto LABEL_123;
    }

LABEL_237:
    if (v44)
    {
      if (v45 == 1)
      {
        sub_2714F61D8(&v134, __p);
        if (v135 >= 0)
        {
          v78 = &v134;
        }

        else
        {
          v78 = v134;
        }

        if (v135 >= 0)
        {
          v79 = HIBYTE(v135);
        }

        else
        {
          v79 = *(&v134 + 1);
        }

        v80 = *(a1 + 487);
        if ((v80 & 0x8000000000000000) != 0)
        {
          v81 = *(a1 + 464);
          v80 = *(a1 + 472);
        }

        else
        {
          v81 = (a1 + 464);
        }

        sub_27184C050(v78, v79, v81, v80, 0);
      }

      sub_2711308D4();
    }

    v52 = 0;
  }

  else
  {
    LOBYTE(v128) = 0;
    v132 = 0;
    v44 = 1;
    if (v77)
    {
      goto LABEL_248;
    }

LABEL_236:
    v133 = 1;
    v45 = *(a1 + 576);
    if (v45)
    {
      goto LABEL_237;
    }

LABEL_123:
    sub_2714F61D8(&v134, a1 + 464);
    sub_2714F61D8(v114, __p);
    v46 = HIBYTE(v135);
    if (v135 >= 0)
    {
      v47 = HIBYTE(v135);
    }

    else
    {
      v47 = *(&v134 + 1);
    }

    v48 = HIBYTE(v115);
    v49 = SHIBYTE(v115);
    if (v115 < 0)
    {
      v48 = v114[1];
    }

    if (v47 == v48)
    {
      if (v135 >= 0)
      {
        v50 = &v134;
      }

      else
      {
        v50 = v134;
      }

      if (v115 >= 0)
      {
        v51 = v114;
      }

      else
      {
        v51 = v114[0];
      }

      v52 = memcmp(v50, v51, v47) == 0;
    }

    else
    {
      v52 = 0;
    }

    if (v49 < 0)
    {
      operator delete(v114[0]);
      v46 = HIBYTE(v135);
    }

    if (v46 < 0)
    {
      operator delete(v134);
    }
  }

  if (v133 == 1)
  {
    if (v132 == 1 && SHIBYTE(v129) < 0)
    {
      operator delete(v128);
    }

    if (v127 == 1 && SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v44)
  {
    if (v124 == 1 && SHIBYTE(v121) < 0)
    {
      operator delete(v120[0]);
    }

    if (v119 == 1 && SHIBYTE(v118[2]) < 0)
    {
      operator delete(v118[0]);
    }
  }

  if (!v52)
  {
    goto LABEL_331;
  }

LABEL_268:
  if (*(a1 + 696) == 1)
  {
    if (v16)
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v127) = 0;
      if (*(v17 + 96) == 1)
      {
        if (*(v17 + 95) < 0)
        {
          sub_271127178(__p, *(v17 + 72), *(v17 + 80));
        }

        else
        {
          *__p = *(v17 + 72);
          v126 = *(v17 + 88);
        }

        LOBYTE(v127) = 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v127) = 0;
    }

    v85 = sub_2714F6B10(a1 + 648, __p);
    if (v127 == 1 && SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v85)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 640) != 1)
  {
    goto LABEL_311;
  }

  if (v16)
  {
    sub_2714F6A94(__p, v17 + 176);
    v86 = v127;
  }

  else
  {
    v86 = 0;
    LOBYTE(__p[0]) = 0;
    LOBYTE(v127) = 0;
  }

  v87 = *(a1 + 632);
  LOBYTE(v88) = v87 == v86;
  if (v87 != v86 || !*(a1 + 632))
  {
    goto LABEL_295;
  }

  v89 = *(a1 + 616);
  v90 = *(a1 + 608);
  v91 = __p[0];
  if (v89 - v90 != __p[1] - __p[0])
  {
    LOBYTE(v88) = 0;
LABEL_295:
    if ((v86 & 1) == 0)
    {
      goto LABEL_307;
    }

    v91 = __p[0];
LABEL_297:
    if (!v91)
    {
      goto LABEL_307;
    }

    v93 = v88;
    v94 = __p[1];
    v95 = v91;
    if (__p[1] != v91)
    {
      do
      {
        v96 = v94;
        if (*(v94 - 16) == 1 && *(v94 - 41) < 0)
        {
          operator delete(*(v94 - 8));
        }

        v94 -= 12;
        if (*(v96 - 72) == 1 && *(v96 - 73) < 0)
        {
          operator delete(*v94);
        }
      }

      while (v94 != v91);
      v95 = __p[0];
    }

    __p[1] = v91;
    operator delete(v95);
    if (v93)
    {
      goto LABEL_311;
    }

    goto LABEL_331;
  }

  if (v90 == v89)
  {
    LOBYTE(v88) = 1;
    goto LABEL_295;
  }

  v92 = __p[0];
  do
  {
    v88 = sub_2714FB8D4(v90, v92);
    if (!v88)
    {
      break;
    }

    v90 += 96;
    v92 += 96;
  }

  while (v90 != v89);
  if (v86)
  {
    goto LABEL_297;
  }

LABEL_307:
  if (!v88)
  {
    goto LABEL_331;
  }

LABEL_311:
  v97 = *(a1 + 728);
  if (v97 == 1)
  {
    if (v16)
    {
      v98 = *(v17 + 48) & 0xFFFFFFFFFFFFFF00;
      LOBYTE(v97) = *(v17 + 56);
      v99 = *(v17 + 64);
      v100 = *(v17 + 48);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v99 = 0;
    }

    v101 = *(a1 + 720);
    if (v101 == v99 && *(a1 + 720))
    {
      if (*(a1 + 704) != (v100 | v98) || *(a1 + 712) != v97)
      {
        goto LABEL_331;
      }
    }

    else if (v101 != v99)
    {
      goto LABEL_331;
    }
  }

  v102 = *(a1 + 760);
  if (v102 == 1)
  {
    if (v16)
    {
      v103 = *v17 & 0xFFFFFFFFFFFFFF00;
      LOBYTE(v102) = *(v17 + 8);
      v104 = *v17;
      v105 = 1;
    }

    else
    {
      v103 = 0;
      v104 = 0;
      v105 = 0;
    }

    v106 = *(a1 + 752);
    if (v106 == v105 && *(a1 + 752))
    {
      if (*(a1 + 736) != (v104 | v103) || *(a1 + 744) != v102)
      {
        goto LABEL_331;
      }
    }

    else if (v106 != v105)
    {
      goto LABEL_331;
    }
  }

  v107 = 1;
LABEL_332:
  if (v113 == 1 && SHIBYTE(v111) < 0)
  {
    operator delete(v110[0]);
  }

  return v107;
}

void sub_2714F5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67 == 1 && a66 < 0)
  {
    operator delete(__p);
  }

  if (a44 == 1 && a42 < 0)
  {
    operator delete(a37);
  }

  sub_2714F6354(&a28);
  sub_2714F6354(&a19);
  sub_2714F62D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2714F5894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F58D8(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v11 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v11;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else if (!v4)
  {
    goto LABEL_13;
  }

  v6 = a2[1];
  v5 = a2[2];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v12 = a1;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a1 = v12;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v6)
  {
LABEL_7:
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a2 + 16))(a2);
    v9 = *(*v7 + 16);

    return v9(v7, v8);
  }

LABEL_13:
  v14 = a1[1];
  v13 = a1[2];
  if (v13 && (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (v14)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = a2[1];
  v15 = a2[2];
  if (!v15)
  {
    return v16 == 0;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v16 == 0;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  return v16 == 0;
}

BOOL sub_2714F5B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2)
  {
    if (v3 == 1)
    {
      if (v2 != 1)
      {
        sub_2711308D4();
      }

      v4 = *(a1 + 31);
      if (v4 >= 0)
      {
        v5 = *(a1 + 31);
      }

      else
      {
        v5 = *(a1 + 16);
      }

      v6 = *(a2 + 31);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 16);
      }

      if (v5 == v6)
      {
        v10 = *(a1 + 8);
        v8 = (a1 + 8);
        v9 = v10;
        if (v4 < 0)
        {
          v8 = v9;
        }

        v13 = *(a2 + 8);
        v11 = (a2 + 8);
        v12 = v13;
        if (v7 < 0)
        {
          v11 = v12;
        }

        return memcmp(v8, v11, v5) == 0;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  if (v15 == *(a2 + 32) && v15 != 0)
  {
    v17 = *(a1 + 31);
    if (v17 >= 0)
    {
      v5 = *(a1 + 31);
    }

    else
    {
      v5 = *(a1 + 16);
    }

    v18 = *(a2 + 31);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a2 + 16);
    }

    if (v5 == v18)
    {
      if (v17 >= 0)
      {
        v8 = (a1 + 8);
      }

      else
      {
        v8 = *(a1 + 8);
      }

      if (v19 >= 0)
      {
        v11 = (a2 + 8);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      return memcmp(v8, v11, v5) == 0;
    }

    return 0;
  }

  return v15 == *(a2 + 32);
}

void *sub_2714F5C58(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 0;
      sub_2714F63DC();
    }

    sub_2711308D4();
  }

  sub_2714F5D90((a2 + 8));
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

void sub_2714F5D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714F5D90(__int128 *a1)
{
  v5 = 0;
  if (*(a1 + 24) == 1)
  {
    v5 = -1;
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v3, *a1, *(a1 + 1));
    }

    else
    {
      v3 = *a1;
      v4 = *(a1 + 2);
    }

    v1 = 1;
    v5 = 1;
  }

  else
  {
    v6[0] = &v3;
    v6[1] = "nullopt";
    v6[2] = &v3;
    v6[3] = "nullopt";
    v6[4] = "nullopt";
    v7 = v6;
    sub_2711316E8(&v7);
    v1 = v5;
    if (v5 == -1)
    {
      sub_2711308D4();
    }
  }

  v6[0] = &v7;
  result = (off_288132810[v1])(v6, &v3);
  if (v5 != -1)
  {
    return (off_2881327F8[v5])(v6, &v3);
  }

  return result;
}

uint64_t sub_2714F5EBC(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  if (*(a2 + 48) == 1)
  {
    operator new();
  }

  v6[0] = v3;
  v6[1] = "nullopt";
  v6[2] = v3;
  v6[3] = "nullopt";
  v6[4] = "nullopt";
  __dst = v6;
  sub_2711316E8(&__dst);
  if (v4 == -1)
  {
    sub_2711308D4();
  }

  v6[0] = &__dst;
  result = (off_288132810[v4])(v6, v3);
  if (v4 != -1)
  {
    return (off_2881327F8[v4])(v6, v3);
  }

  return result;
}

void sub_2714F6144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743BF050](v3, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F6174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F61D8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27139DEA8(v5, v3, a2);
  }

  v5[0] = v3;
  v5[1] = "nullopt";
  v5[2] = v3;
  v5[3] = "nullopt";
  v5[4] = "nullopt";
  v6 = v5;
  sub_2711316E8(&v6);
  if (v4 == -1)
  {
    sub_2711308D4();
  }

  v5[0] = &v6;
  result = (off_288132810[v4])(v5, v3);
  if (v4 != -1)
  {
    return (off_2881327F8[v4])(v5, v3);
  }

  return result;
}

uint64_t sub_2714F62D8(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    if (*(result + 56) == 1 && *(result + 55) < 0)
    {
      v1 = result;
      operator delete(*(result + 32));
      result = v1;
    }

    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      v2 = result;
      operator delete(*result);
      return v2;
    }
  }

  return result;
}

uint64_t sub_2714F6354(uint64_t result)
{
  if (*(result + 56) == 1 && *(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  if (*(result + 23) < 0)
  {
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

void sub_2714F65A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

void *sub_2714F65D8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714F68E4(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2714F66D8(uint64_t *a1, uint64_t a2)
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
    (off_2881327F8[v9])(&v10, v2);
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

void sub_2714F6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714F68E4(uint64_t a1, const char *a2)
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

void sub_2714F6A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F6A94(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = result;
    sub_271135440(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
    result = v2;
    *(v2 + 24) = 1;
  }

  return result;
}

BOOL sub_2714F6B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(a2 + 24) == 1)
    {
      if (v3 == 1)
      {
        sub_2714F5D90(a2);
        if ((v22 & 0x80u) == 0)
        {
          v5 = &v20;
        }

        else
        {
          v5 = v20;
        }

        if ((v22 & 0x80u) == 0)
        {
          v6 = v22;
        }

        else
        {
          v6 = v21;
        }

        v7 = *(a1 + 31);
        if ((v7 & 0x8000000000000000) != 0)
        {
          v8 = *(a1 + 8);
          v7 = *(a1 + 16);
        }

        else
        {
          v8 = (a1 + 8);
        }

        sub_27184C050(v5, v6, v8, v7, 0);
      }

      sub_2711308D4();
    }

    return 0;
  }

  sub_2714F5D90((a1 + 8));
  sub_2714F5D90(a2);
  v9 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v10 = v22;
  }

  else
  {
    v10 = v21;
  }

  v11 = v19;
  v12 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v10 != v11)
  {
    result = 0;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((v22 & 0x80u) == 0)
  {
    v13 = &v20;
  }

  else
  {
    v13 = v20;
  }

  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  result = memcmp(v13, v14, v10) == 0;
  if (v12 < 0)
  {
LABEL_29:
    v16 = result;
    operator delete(__p[0]);
    result = v16;
    v9 = v22;
  }

LABEL_30:
  if ((v9 & 0x80) != 0)
  {
    v17 = result;
    operator delete(v20);
    return v17;
  }

  return result;
}

void sub_2714F6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F6EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F6EEC(void *a1, uint64_t a2)
{
  v48[5] = *MEMORY[0x277D85DE8];
  v4 = sub_271120E64(a1, "{", 1);
  sub_271120E64(v4, "Device: ", 8);
  if (*(a2 + 200) == 1)
  {
    v5 = sub_271120E64(a1, "{", 1);
    v6 = sub_271120E64(v5, "Name: ", 6);
    v7 = *(a2 + 79);
    if (v7 >= 0)
    {
      v8 = a2 + 56;
    }

    else
    {
      v8 = *(a2 + 56);
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 79);
    }

    else
    {
      v9 = *(a2 + 64);
    }

    v10 = sub_271120E64(v6, v8, v9);
    v11 = sub_271120E64(v10, ", ", 2);
    v12 = sub_271120E64(v11, "Product: ", 9);
    v13 = *(a2 + 103);
    if (v13 >= 0)
    {
      v14 = a2 + 80;
    }

    else
    {
      v14 = *(a2 + 80);
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 103);
    }

    else
    {
      v15 = *(a2 + 88);
    }

    v16 = sub_271120E64(v12, v14, v15);
    v17 = sub_271120E64(v16, ", ", 2);
    v18 = sub_271120E64(v17, "SN: ", 4);
    v19 = *(a2 + 151);
    if (v19 >= 0)
    {
      v20 = a2 + 128;
    }

    else
    {
      v20 = *(a2 + 128);
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 151);
    }

    else
    {
      v21 = *(a2 + 136);
    }

    v22 = sub_271120E64(v18, v20, v21);
    v23 = sub_271120E64(v22, ", ", 2);
    v24 = sub_271120E64(v23, "OS: ", 4);
    v25 = *(a2 + 199);
    if (v25 >= 0)
    {
      v26 = a2 + 176;
    }

    else
    {
      v26 = *(a2 + 176);
    }

    if (v25 >= 0)
    {
      v27 = *(a2 + 199);
    }

    else
    {
      v27 = *(a2 + 184);
    }

    v28 = sub_271120E64(v24, v26, v27);
    v29 = sub_271120E64(v28, " (", 2);
    v30 = *(a2 + 175);
    if (v30 >= 0)
    {
      v31 = a2 + 152;
    }

    else
    {
      v31 = *(a2 + 152);
    }

    if (v30 >= 0)
    {
      v32 = *(a2 + 175);
    }

    else
    {
      v32 = *(a2 + 160);
    }

    v33 = sub_271120E64(v29, v31, v32);
    v34 = ")}";
    v35 = 2;
  }

  else
  {
    v34 = "not available";
    v33 = a1;
    v35 = 13;
  }

  sub_271120E64(v33, v34, v35);
  v36 = sub_271120E64(a1, ", ", 2);
  sub_271120E64(v36, "Process: ", 9);
  if (*(a2 + 48) == 1)
  {
    v37 = *(a2 + 47);
    if (v37 >= 0)
    {
      v38 = a2 + 24;
    }

    else
    {
      v38 = *(a2 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(a2 + 47);
    }

    else
    {
      v39 = *(a2 + 32);
    }

    v40 = sub_271120E64(a1, v38, v39);
    sub_271120E64(v40, " ", 1);
  }

  v41 = sub_271120E64(a1, "(", 1);
  v42 = MEMORY[0x2743BE7E0](v41, *(a2 + 16));
  v43 = sub_271120E64(v42, "), ", 3);
  v44 = sub_271120E64(v43, "UUID: ", 6);
  sub_2718179D4(a2, v48);
  v45 = sub_271120E64(v44, v48, 36);
  v46 = sub_271120E64(v45, ", ", 2);
  sub_271120E64(v46, "Protocol: ", 10);
  v47 = 0;
  operator new();
}

void sub_2714F746C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    sub_27184D728(&a19, v20);
  }

  sub_271130878(&a12);
  _Unwind_Resume(a1);
}

void sub_2714F7534(void *a1, unsigned __int8 *a2)
{
  v2 = a1;
  sub_271120E64(a1, "{Type: ", 7);
  operator new();
}

void sub_2714F776C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2714F77C8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C400, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v10 = a2;
    v11 = __cxa_guard_acquire(&qword_28087C400);
    a2 = v10;
    v12 = v11;
    a1 = v13;
    if (v12)
    {
      v14 = &unk_288116A60;
      sub_271816484(xmmword_28087C370, &v14);
      __cxa_guard_release(&qword_28087C400);
      a1 = v13;
      a2 = v10;
    }
  }

  if (a2)
  {
    *a4 = *(*(*a1 + 24))(a1);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v6 = sub_27112B054();
  v7 = *v6;
  *(a4 + 24) = 0;
  *(a4 + 16) = v7;
  *(a4 + 48) = 0;
  if (*(v6 + 32) == 1)
  {
    if (*(v6 + 31) < 0)
    {
      sub_271127178((a4 + 24), *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 2);
      *(a4 + 40) = *(v6 + 3);
      *(a4 + 24) = v8;
    }

    *(a4 + 48) = 1;
  }

  sub_2711B0ED4(a4 + 56, xmmword_28087C370);
  *(a4 + 200) = 1;
  result = *a3;
  *(a4 + 208) = *a3;
  *(a4 + 224) = a3[1].n128_u64[0];
  return result;
}

void sub_2714F7948(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2714F7974@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C400, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v10 = a2;
    v11 = __cxa_guard_acquire(&qword_28087C400);
    a2 = v10;
    v12 = v11;
    a1 = v13;
    if (v12)
    {
      v14 = &unk_288116A60;
      sub_271816484(xmmword_28087C370, &v14);
      __cxa_guard_release(&qword_28087C400);
      a1 = v13;
      a2 = v10;
    }
  }

  if (a2)
  {
    *a4 = *(*(*a1 + 16))(a1);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v6 = sub_27112B054();
  v7 = *v6;
  *(a4 + 24) = 0;
  *(a4 + 16) = v7;
  *(a4 + 48) = 0;
  if (*(v6 + 32) == 1)
  {
    if (*(v6 + 31) < 0)
    {
      sub_271127178((a4 + 24), *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 2);
      *(a4 + 40) = *(v6 + 3);
      *(a4 + 24) = v8;
    }

    *(a4 + 48) = 1;
  }

  sub_2711B0ED4(a4 + 56, xmmword_28087C370);
  *(a4 + 200) = 1;
  result = *a3;
  *(a4 + 208) = *a3;
  *(a4 + 224) = a3[1].n128_u64[0];
  return result;
}

void sub_2714F7AF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F7B20(void *a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 40);
    sub_271120E64(a1, "Sync{", 5);
    if (v3)
    {
      v4 = *(a2 + 40);
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      if (*(a2 + 48))
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v13 = v6;
      if (v4 == 1)
      {
        v15 = 0;
        sub_2714F8FDC(&__p, &v13);
      }
    }

    else
    {
      v9 = *(a2 + 40);
      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      if (*(a2 + 48))
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      if (!v9)
      {
        v15 = 0;
        sub_2714F8FDC(&__p, &v12);
      }
    }

    sub_2711308D4();
  }

  sub_271120E64(a1, "Sync{", 5);
  if (*(a2 + 40))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (*(a2 + 48))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v18) = v8;
  LODWORD(v17) = 0;
  sub_2714F8FDC(&v16, &v18);
}

uint64_t sub_2714F839C(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_2714F83F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_2714F8470(void *a1, unint64_t *a2)
{
  v7[0] = a2;
  v7[1] = a2 + 1;
  v7[2] = a2 + 3;
  v12 = 0;
  v13 = v11;
  v14 = "{";
  v15 = v11;
  v16 = "{";
  v17 = "{";
  v18 = &v13;
  sub_271136E64(&v18);
  LOBYTE(v13) = 1;
  v14 = v11;
  v15 = &v10;
  sub_2714F9258(v7, &v13);
  v13 = v11;
  v14 = "}";
  v15 = v11;
  v16 = "}";
  v17 = "}";
  if (v12 == -1)
  {
    sub_2711308D4();
  }

  v18 = &v13;
  (*(&off_2881328A0 + v12))(&v18, v11);
  if (v12 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v18;
  (off_288132858[v12])(__p, &v13, v11);
  if (v12 != -1)
  {
    (off_288132840[v12])(&v13, v11);
  }

  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  result = sub_271120E64(a1, v3, v4);
  if (v9 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_2714F85EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F8608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F861C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F8630(std::mutex *a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock(a1 + 1);
  sig = a1[2].__m_.__sig;
  v6 = *a1[2].__m_.__opaque;
  if (sig == v6)
  {
    v8 = 0;
    LOBYTE(v7) = 0;
    std::mutex::unlock(a1 + 1);
    if (a1->__m_.__opaque[8] != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v7 = *(v6 - 40);
  if (*(v6 - 24) == 1)
  {
    v9 = *(v6 - 32);
    a1->__m_.__opaque[8] = *(v6 - 24);
    *a1->__m_.__opaque = v9;
    if (*(v6 - 8) != 1)
    {
LABEL_4:
      if (a1->__m_.__opaque[8])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (*(v6 - 8) != 1)
  {
    goto LABEL_4;
  }

  v10 = *(v6 - 16);
  a1->__m_.__opaque[24] = *(v6 - 8);
  *&a1->__m_.__opaque[16] = v10;
  if (a1->__m_.__opaque[8])
  {
LABEL_11:
    *&a1->__m_.__opaque[32] = *(v6 - 40);
    a1->__m_.__opaque[40] = 1;
    goto LABEL_13;
  }

LABEL_10:
  if (a1->__m_.__opaque[24])
  {
    goto LABEL_11;
  }

  LOBYTE(a1->__m_.__sig) = 2;
LABEL_13:
  v2 = v7 >> 8;
  *a1[2].__m_.__opaque = sig;
  v8 = 1;
  std::mutex::unlock(a1 + 1);
  if (a1->__m_.__opaque[8] != 1)
  {
    goto LABEL_18;
  }

LABEL_14:
  v11 = *a1->__m_.__opaque;
  if (v11)
  {
    *a1->__m_.__opaque = v11 - 1;
    LOBYTE(a1->__m_.__sig) = 3;
  }

  else
  {
    LOBYTE(a1->__m_.__sig) = 1;
    a1->__m_.__opaque[0] = 0;
    a1->__m_.__opaque[8] = 0;
    if ((v8 & 1) == 0)
    {
      v7 = *&a1->__m_.__opaque[32];
      v2 = v7 >> 8;
      v8 = a1->__m_.__opaque[40];
    }
  }

LABEL_18:
  if (a1->__m_.__opaque[24] != 1)
  {
    sig_low = LOBYTE(a1->__m_.__sig);
    v12 = *&a1->__m_.__opaque[48];
    if (sig_low != 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    a1->__m_.__opaque[32] = 0;
    a1->__m_.__opaque[40] = 0;
    *a2 = 1;
    goto LABEL_26;
  }

  v12 = *&a1->__m_.__opaque[48];
  if (*&a1->__m_.__opaque[16] <= v12)
  {
    LOBYTE(a1->__m_.__sig) = 1;
    a1->__m_.__opaque[16] = 0;
    a1->__m_.__opaque[24] = 0;
    if ((v8 & 1) == 0)
    {
      v7 = *&a1->__m_.__opaque[32];
      v2 = v7 >> 8;
      v8 = a1->__m_.__opaque[40];
    }

    goto LABEL_25;
  }

  LOBYTE(sig_low) = 3;
  LOBYTE(a1->__m_.__sig) = 3;
LABEL_22:
  *a2 = sig_low;
  *&a1->__m_.__opaque[48] = v12 + 1;
LABEL_26:
  *(a2 + 8) = v12;
  *(a2 + 16) = v7 | (v2 << 8);
  *(a2 + 24) = v8;
}

uint64_t sub_2714F87F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v22.__m_ = (a1 + 64);
  v22.__owns_ = 1;
  std::mutex::lock((a1 + 64));
  if ((a4 & 1) == 0)
  {
    if (*(a1 + 128) == *(a1 + 136))
    {
      do
      {
        v18 = *(a2 + 24);
        if (!v18)
        {
          sub_27112AFFC();
        }

        v19 = (*(*v18 + 48))(v18);
        if (v19)
        {
          break;
        }

        std::condition_variable::wait((a1 + 152), &v22);
      }

      while (*(a1 + 128) == *(a1 + 136));
      v17 = v19 ^ 1u;
      if (!v22.__owns_)
      {
        return v17;
      }
    }

    else
    {
      v17 = 1;
      if (!v22.__owns_)
      {
        return v17;
      }
    }

LABEL_32:
    std::mutex::unlock(v22.__m_);
    return v17;
  }

  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + a3;
  do
  {
    v10 = *(a1 + 128);
    v11 = *(a1 + 136);
    v12 = v10 != v11;
    if (v10 != v11)
    {
      goto LABEL_31;
    }

    v13 = *(a2 + 24);
    if (!v13)
    {
      goto LABEL_37;
    }

    if ((*(*v13 + 48))(v13))
    {
      goto LABEL_31;
    }

    if (v8.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v14.__d_.__rep_ = v8.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v14.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v15.__d_.__rep_)
    {
      v16 = 0;
LABEL_20:
      v9.__d_.__rep_ = v16 + v14.__d_.__rep_;
      goto LABEL_4;
    }

    if (v15.__d_.__rep_ < 1)
    {
      if (v15.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v9.__d_.__rep_ = v14.__d_.__rep_ + 0x8000000000000000;
        goto LABEL_4;
      }

LABEL_19:
      v16 = 1000 * v15.__d_.__rep_;
      if (1000 * v15.__d_.__rep_ <= (v14.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v15.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_19;
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v14.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

LABEL_3:
    v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_4:
    std::condition_variable::__do_timed_wait((a1 + 152), &v22, v9);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v8.__d_.__rep_);
  if (*(a1 + 128) != *(a1 + 136))
  {
    v12 = 1;
LABEL_31:
    v17 = v12;
    if (!v22.__owns_)
    {
      return v17;
    }

    goto LABEL_32;
  }

  v21 = *(a2 + 24);
  if (!v21)
  {
LABEL_37:
    sub_27112AFFC();
  }

  (*(*v21 + 48))(v21);
  v17 = 0;
  if (v22.__owns_)
  {
    goto LABEL_32;
  }

  return v17;
}

void sub_2714F8A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F8A98(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_2714F8FC4();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

BOOL sub_2714F8C34(void *a1, void *a2)
{
  if (**a1 != **a2 || *(*a1 + 8) != *(*a2 + 8))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (*v3 != *v4)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  v6 = *(v4 + 32);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v3 + 31);
    if (v8 >= 0)
    {
      v9 = *(v3 + 31);
    }

    else
    {
      v9 = *(v3 + 16);
    }

    v10 = *(v4 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v4 + 16);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = (v4 + 8);
    v15 = *(v3 + 8);
    v14 = (v3 + 8);
    v13 = v15;
    if (v8 >= 0)
    {
      v13 = v14;
    }

    v16 = *v12;
    if (v11 >= 0)
    {
      v16 = v12;
    }

    v17 = a1;
    v18 = a2;
    v19 = memcmp(v13, v16, v9);
    a2 = v18;
    v20 = v19;
    a1 = v17;
    if (v20)
    {
      return 0;
    }
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v21 + 144);
  v24 = *(v22 + 144);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 == v24)
    {
      goto LABEL_31;
    }

    return 0;
  }

  v35 = *(v21 + 23);
  if (v35 >= 0)
  {
    v36 = *(v21 + 23);
  }

  else
  {
    v36 = *(v21 + 8);
  }

  v37 = *(v22 + 23);
  v38 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(v22 + 8);
  }

  if (v36 != v37)
  {
    return 0;
  }

  v39 = a1;
  v40 = a2;
  v41 = v35 >= 0 ? a1[2] : *v21;
  v42 = v38 >= 0 ? a2[2] : *v22;
  if (memcmp(v41, v42, v36))
  {
    return 0;
  }

  v43 = *(v21 + 47);
  if (v43 >= 0)
  {
    v44 = *(v21 + 47);
  }

  else
  {
    v44 = *(v21 + 32);
  }

  v45 = *(v22 + 47);
  v46 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(v22 + 32);
  }

  if (v44 != v45)
  {
    return 0;
  }

  v47 = v43 >= 0 ? (v21 + 24) : *(v21 + 24);
  v48 = v46 >= 0 ? (v22 + 24) : *(v22 + 24);
  if (memcmp(v47, v48, v44))
  {
    return 0;
  }

  v49 = *(v21 + 71);
  if (v49 >= 0)
  {
    v50 = *(v21 + 71);
  }

  else
  {
    v50 = *(v21 + 56);
  }

  v51 = *(v22 + 71);
  v52 = v51;
  if ((v51 & 0x80u) != 0)
  {
    v51 = *(v22 + 56);
  }

  if (v50 != v51)
  {
    return 0;
  }

  v53 = v49 >= 0 ? (v21 + 48) : *(v21 + 48);
  v54 = v52 >= 0 ? (v22 + 48) : *(v22 + 48);
  if (memcmp(v53, v54, v50))
  {
    return 0;
  }

  v55 = *(v21 + 95);
  if (v55 >= 0)
  {
    v56 = *(v21 + 95);
  }

  else
  {
    v56 = *(v21 + 80);
  }

  v57 = *(v22 + 95);
  v58 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v57 = *(v22 + 80);
  }

  if (v56 != v57)
  {
    return 0;
  }

  v59 = v55 >= 0 ? (v21 + 72) : *(v21 + 72);
  v60 = v58 >= 0 ? (v22 + 72) : *(v22 + 72);
  if (memcmp(v59, v60, v56))
  {
    return 0;
  }

  v61 = *(v21 + 119);
  if (v61 >= 0)
  {
    v62 = *(v21 + 119);
  }

  else
  {
    v62 = *(v21 + 104);
  }

  v63 = *(v22 + 119);
  v64 = v63;
  if ((v63 & 0x80u) != 0)
  {
    v63 = *(v22 + 104);
  }

  if (v62 != v63)
  {
    return 0;
  }

  v65 = v61 >= 0 ? (v21 + 96) : *(v21 + 96);
  v66 = v64 >= 0 ? (v22 + 96) : *(v22 + 96);
  if (memcmp(v65, v66, v62))
  {
    return 0;
  }

  v67 = *(v21 + 143);
  if (v67 >= 0)
  {
    v68 = *(v21 + 143);
  }

  else
  {
    v68 = *(v21 + 128);
  }

  v69 = *(v22 + 143);
  v70 = v69;
  if ((v69 & 0x80u) != 0)
  {
    v69 = *(v22 + 128);
  }

  if (v68 != v69)
  {
    return 0;
  }

  v73 = *(v21 + 120);
  v72 = v21 + 120;
  v71 = v73;
  v74 = (v67 >= 0 ? v72 : v71);
  v77 = *(v22 + 120);
  v76 = v22 + 120;
  v75 = v77;
  v78 = (v70 >= 0 ? v76 : v75);
  v79 = memcmp(v74, v78, v68);
  a2 = v40;
  a1 = v39;
  if (v79)
  {
    return 0;
  }

LABEL_31:
  v26 = a1[3];
  v27 = a2[3];
  if (*v26 != *v27 || *(v26 + 8) != *(v27 + 8))
  {
    return 0;
  }

  v29 = *(v26 + 12);
  v30 = *(v26 + 20);
  v31 = *(v27 + 12);
  v32 = *(v27 + 20);
  return v29 == v31 && v30 == v32;
}

void sub_2714F9214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F9258(unint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v13 = *(a2 + 8);
    v14 = ",";
    v15 = v13;
    v16 = ",";
    v17 = ",";
    v5 = *(v13 + 24);
    if (v5 == -1)
    {
      goto LABEL_15;
    }

    v12.__r_.__value_.__r.__words[0] = &v13;
    (*(&off_2881328A0 + v5))(&v12);
  }

  *a2 = 0;
  v6 = *(a2 + 8);
  std::to_string(&v12, *v4);
  v13 = v6;
  v14 = &v12;
  v15 = v6;
  v16 = &v12;
  v17 = &v12;
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v18 = &v13;
  (off_288132828[v7])(&v18, v6);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    v8 = a1[1];
    if (*a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = a1[1];
    if (*a2)
    {
      goto LABEL_11;
    }
  }

  v13 = *(a2 + 8);
  v14 = ",";
  v15 = v13;
  v16 = ",";
  v17 = ",";
  v9 = *(v13 + 24);
  if (v9 == -1)
  {
    goto LABEL_15;
  }

  v12.__r_.__value_.__r.__words[0] = &v13;
  (*(&off_2881328A0 + v9))(&v12);
LABEL_11:
  *a2 = 0;
  sub_2714F9430(*(a2 + 8), *v8, *(v8 + 8));
  v10 = a1[2];
  if ((*a2 & 1) == 0)
  {
    v13 = *(a2 + 8);
    v14 = ",";
    v15 = v13;
    v16 = ",";
    v17 = ",";
    v11 = *(v13 + 24);
    if (v11 != -1)
    {
      v12.__r_.__value_.__r.__words[0] = &v13;
      (*(&off_2881328A0 + v11))(&v12);
      goto LABEL_14;
    }

LABEL_15:
    sub_2711308D4();
  }

LABEL_14:
  *a2 = 0;
  sub_2714F9430(*(a2 + 8), *v10, *(v10 + 8));
}

void sub_2714F9414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F9430(uint64_t a1, unint64_t __val, char a3)
{
  if (a3)
  {
    std::to_string(&v6, __val);
    v8 = a1;
    v9 = &v6;
    v10 = a1;
    v11 = &v6;
    v12 = &v6;
    v4 = *(a1 + 24);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v7 = &v8;
    (off_288132828[v4])(&v7, a1);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = a1;
    v9 = "nullopt";
    v10 = a1;
    v11 = "nullopt";
    v12 = "nullopt";
    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      sub_2711308D4();
    }

    v6.__r_.__value_.__r.__words[0] = &v8;
    (*(&off_288132888 + v5))(&v6, a1);
  }
}

void sub_2714F9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2714F953C(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_28087B8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B8B8))
  {
    sub_2714FAB48(off_279E2F7D8, qword_279E2F7F0);
    __cxa_guard_release(&qword_28087B8B8);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_2714A56E0(a1, &v12);
  v4 = sub_27123ADBC(&qword_28087B8C0, &v12);
  if (v4 == &qword_28087B8C8)
  {
    v5 = HIBYTE(v14);
    if (SHIBYTE(v14) < 0)
    {
      if (v13 != 4 || *v12 != 1701736270)
      {
LABEL_15:
        __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v8 = std::string::append(&v10, "', expected ", 0xCuLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v11.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        sub_2714F984C();
      }
    }

    else if (SHIBYTE(v14) != 4 || v12 != 1701736270)
    {
      goto LABEL_15;
    }

    *a2 = 0;
    if (v5 < 0)
    {
      goto LABEL_12;
    }

    return a1;
  }

  v6 = HIBYTE(v14);
  *a2 = *(v4 + 56);
  if ((v6 & 0x80) == 0)
  {
    return a1;
  }

LABEL_12:
  operator delete(v12);
  return a1;
}

void sub_2714F9770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(a28);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if (a20 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (*(v35 - 33) < 0)
      {
        operator delete(*(v35 - 56));
      }

      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v33);
    goto LABEL_12;
  }

LABEL_10:
  if (!v34)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_2714F984C()
{
  v0[6] = 0;
  v2[0] = v0;
  v2[1] = "{";
  v2[2] = v0;
  v3 = "{";
  v4 = "{";
  *&v1 = v2;
  sub_271136E64(&v1);
  LODWORD(v3) = 0;
  sub_2714FAEB0();
}

void sub_2714F9B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271130878(&a22);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2714F9B88@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X0>, size_t __len@<X1>)
{
  if (!__len)
  {
    HIBYTE(v50) = 0;
LABEL_16:
    *(&v49 + __len) = 0;
    a1[2] = v50;
    *a1 = v49;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    v10 = *(a1 + 23);
    v11 = *a1;
    if (v10 >= 0)
    {
      v11 = a1;
    }

    if (v10 < 0)
    {
      v10 = a1[1];
    }

    if (!v10)
    {
      return __src;
    }

    v12 = v11;
    if (v10 < 8)
    {
LABEL_83:
      v21 = (v11 + v10);
      do
      {
        if (*v12 == 58)
        {
          *v12 = 95;
        }

        v12 = (v12 + 1);
      }

      while (v12 != v21);
      return __src;
    }

    if (v10 < 0x10)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v13 = v10 & 0xFFFFFFFFFFFFFFF0;
    v17 = v11 + 7;
    v18.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
    v18.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
    v19 = v10 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v20 = vceqq_s8(*(v17 - 7), v18);
      if (v20.i8[0])
      {
        *(v17 - 7) = 95;
        if ((v20.i8[1] & 1) == 0)
        {
LABEL_49:
          if ((v20.i8[2] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_66;
        }
      }

      else if ((v20.i8[1] & 1) == 0)
      {
        goto LABEL_49;
      }

      *(v17 - 6) = 95;
      if ((v20.i8[2] & 1) == 0)
      {
LABEL_50:
        if ((v20.i8[3] & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v17 - 5) = 95;
      if ((v20.i8[3] & 1) == 0)
      {
LABEL_51:
        if ((v20.i8[4] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v17 - 4) = 95;
      if ((v20.i8[4] & 1) == 0)
      {
LABEL_52:
        if ((v20.i8[5] & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(v17 - 3) = 95;
      if ((v20.i8[5] & 1) == 0)
      {
LABEL_53:
        if ((v20.i8[6] & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(v17 - 2) = 95;
      if ((v20.i8[6] & 1) == 0)
      {
LABEL_54:
        if ((v20.i8[7] & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_71;
      }

LABEL_70:
      *(v17 - 1) = 95;
      if ((v20.i8[7] & 1) == 0)
      {
LABEL_55:
        if ((v20.i8[8] & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_72;
      }

LABEL_71:
      *v17 = 95;
      if ((v20.i8[8] & 1) == 0)
      {
LABEL_56:
        if ((v20.i8[9] & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_73;
      }

LABEL_72:
      v17[1] = 95;
      if ((v20.i8[9] & 1) == 0)
      {
LABEL_57:
        if ((v20.i8[10] & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

LABEL_73:
      v17[2] = 95;
      if ((v20.i8[10] & 1) == 0)
      {
LABEL_58:
        if ((v20.i8[11] & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_75;
      }

LABEL_74:
      v17[3] = 95;
      if ((v20.i8[11] & 1) == 0)
      {
LABEL_59:
        if ((v20.i8[12] & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_76;
      }

LABEL_75:
      v17[4] = 95;
      if ((v20.i8[12] & 1) == 0)
      {
LABEL_60:
        if ((v20.i8[13] & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      v17[5] = 95;
      if ((v20.i8[13] & 1) == 0)
      {
LABEL_61:
        if ((v20.i8[14] & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_78;
      }

LABEL_77:
      v17[6] = 95;
      if ((v20.i8[14] & 1) == 0)
      {
LABEL_62:
        if (v20.i8[15])
        {
          goto LABEL_79;
        }

        goto LABEL_46;
      }

LABEL_78:
      v17[7] = 95;
      if (v20.i8[15])
      {
LABEL_79:
        v17[8] = 95;
      }

LABEL_46:
      v17 += 16;
      v19 -= 16;
      if (!v19)
      {
        if (v10 == v13)
        {
          return __src;
        }

        if ((v10 & 8) == 0)
        {
          v12 = (v11 + v13);
          goto LABEL_83;
        }

LABEL_24:
        v12 = (v11 + (v10 & 0xFFFFFFFFFFFFFFF8));
        v14 = v13 - (v10 & 0xFFFFFFFFFFFFFFF8);
        v15 = v11 + v13 + 3;
        while (2)
        {
          v16 = vceq_s8(*(v15 - 3), 0x3A3A3A3A3A3A3A3ALL);
          if (v16.i8[0])
          {
            *(v15 - 3) = 95;
            if (v16.i8[1])
            {
              goto LABEL_36;
            }

LABEL_28:
            if ((v16.i8[2] & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_37:
            *(v15 - 1) = 95;
            if (v16.i8[3])
            {
              goto LABEL_38;
            }

LABEL_30:
            if ((v16.i8[4] & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_39:
            v15[1] = 95;
            if (v16.i8[5])
            {
              goto LABEL_40;
            }

LABEL_32:
            if ((v16.i8[6] & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_41:
            v15[3] = 95;
            if (v16.i8[7])
            {
LABEL_42:
              v15[4] = 95;
            }
          }

          else
          {
            if ((v16.i8[1] & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_36:
            *(v15 - 2) = 95;
            if (v16.i8[2])
            {
              goto LABEL_37;
            }

LABEL_29:
            if ((v16.i8[3] & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_38:
            *v15 = 95;
            if (v16.i8[4])
            {
              goto LABEL_39;
            }

LABEL_31:
            if ((v16.i8[5] & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_40:
            v15[2] = 95;
            if (v16.i8[6])
            {
              goto LABEL_41;
            }

LABEL_33:
            if (v16.i8[7])
            {
              goto LABEL_42;
            }
          }

          v15 += 8;
          v14 += 8;
          if (!v14)
          {
            if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
            {
              return __src;
            }

            goto LABEL_83;
          }

          continue;
        }
      }
    }
  }

  v5 = __src;
  v6 = 0;
  do
  {
    if (!(__len + v6))
    {
      goto LABEL_11;
    }

    v7 = *(__src + __len + v6-- - 1);
  }

  while (v7 != 58);
  v8 = __len + v6;
  if (__len + v6 == -1)
  {
LABEL_11:
    if (__len > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_246;
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = __len;
    __src = memmove(&v49, __src, __len);
    goto LABEL_16;
  }

  if (v8)
  {
    if (__len <= v8)
    {
      sub_2711280A8("string_view::substr");
    }

    if (~v6 < __len)
    {
      v22 = ~v6;
    }

    else
    {
      v22 = __len;
    }

    if (v22 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v22 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v55) = v22;
      if (v6 != -1)
      {
        memmove(&v54, __src + __len + v6 + 1, v22);
      }

      *(&v54 + v22) = 0;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v53 = v8;
      __src = memmove(&v51, v5, __len + v6);
      v52[__len - 8 + v6] = 0;
      v30 = *v52;
      a1[3] = v51;
      a1[4] = v30;
      *(a1 + 39) = *&v52[7];
      LOBYTE(v30) = v53;
      v31 = v55;
      *a1 = v54;
      a1[2] = v31;
      *(a1 + 47) = v30;
      *(a1 + 48) = 1;
      v32 = *(a1 + 23);
      v33 = *a1;
      if (v32 >= 0)
      {
        v33 = a1;
      }

      if (v32 < 0)
      {
        v32 = a1[1];
      }

      if (!v32)
      {
        return __src;
      }

      v34 = v33;
      if (v32 < 8)
      {
LABEL_242:
        v48 = (v33 + v32);
        do
        {
          if (*v34 == 58)
          {
            *v34 = 95;
          }

          v34 = (v34 + 1);
        }

        while (v34 != v48);
        return __src;
      }

      if (v32 < 0x10)
      {
        v35 = 0;
        goto LABEL_138;
      }

      v35 = v32 & 0xFFFFFFFFFFFFFFF0;
      v44 = v33 + 7;
      v45.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
      v45.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
      v46 = v32 & 0xFFFFFFFFFFFFFFF0;
      while (1)
      {
        v47 = vceqq_s8(*(v44 - 7), v45);
        if (v47.i8[0])
        {
          *(v44 - 7) = 95;
          if ((v47.i8[1] & 1) == 0)
          {
LABEL_207:
            if ((v47.i8[2] & 1) == 0)
            {
              goto LABEL_208;
            }

            goto LABEL_224;
          }
        }

        else if ((v47.i8[1] & 1) == 0)
        {
          goto LABEL_207;
        }

        *(v44 - 6) = 95;
        if ((v47.i8[2] & 1) == 0)
        {
LABEL_208:
          if ((v47.i8[3] & 1) == 0)
          {
            goto LABEL_209;
          }

          goto LABEL_225;
        }

LABEL_224:
        *(v44 - 5) = 95;
        if ((v47.i8[3] & 1) == 0)
        {
LABEL_209:
          if ((v47.i8[4] & 1) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_226;
        }

LABEL_225:
        *(v44 - 4) = 95;
        if ((v47.i8[4] & 1) == 0)
        {
LABEL_210:
          if ((v47.i8[5] & 1) == 0)
          {
            goto LABEL_211;
          }

          goto LABEL_227;
        }

LABEL_226:
        *(v44 - 3) = 95;
        if ((v47.i8[5] & 1) == 0)
        {
LABEL_211:
          if ((v47.i8[6] & 1) == 0)
          {
            goto LABEL_212;
          }

          goto LABEL_228;
        }

LABEL_227:
        *(v44 - 2) = 95;
        if ((v47.i8[6] & 1) == 0)
        {
LABEL_212:
          if ((v47.i8[7] & 1) == 0)
          {
            goto LABEL_213;
          }

          goto LABEL_229;
        }

LABEL_228:
        *(v44 - 1) = 95;
        if ((v47.i8[7] & 1) == 0)
        {
LABEL_213:
          if ((v47.i8[8] & 1) == 0)
          {
            goto LABEL_214;
          }

          goto LABEL_230;
        }

LABEL_229:
        *v44 = 95;
        if ((v47.i8[8] & 1) == 0)
        {
LABEL_214:
          if ((v47.i8[9] & 1) == 0)
          {
            goto LABEL_215;
          }

          goto LABEL_231;
        }

LABEL_230:
        v44[1] = 95;
        if ((v47.i8[9] & 1) == 0)
        {
LABEL_215:
          if ((v47.i8[10] & 1) == 0)
          {
            goto LABEL_216;
          }

          goto LABEL_232;
        }

LABEL_231:
        v44[2] = 95;
        if ((v47.i8[10] & 1) == 0)
        {
LABEL_216:
          if ((v47.i8[11] & 1) == 0)
          {
            goto LABEL_217;
          }

          goto LABEL_233;
        }

LABEL_232:
        v44[3] = 95;
        if ((v47.i8[11] & 1) == 0)
        {
LABEL_217:
          if ((v47.i8[12] & 1) == 0)
          {
            goto LABEL_218;
          }

          goto LABEL_234;
        }

LABEL_233:
        v44[4] = 95;
        if ((v47.i8[12] & 1) == 0)
        {
LABEL_218:
          if ((v47.i8[13] & 1) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_235;
        }

LABEL_234:
        v44[5] = 95;
        if ((v47.i8[13] & 1) == 0)
        {
LABEL_219:
          if ((v47.i8[14] & 1) == 0)
          {
            goto LABEL_220;
          }

          goto LABEL_236;
        }

LABEL_235:
        v44[6] = 95;
        if ((v47.i8[14] & 1) == 0)
        {
LABEL_220:
          if (v47.i8[15])
          {
            goto LABEL_237;
          }

          goto LABEL_204;
        }

LABEL_236:
        v44[7] = 95;
        if (v47.i8[15])
        {
LABEL_237:
          v44[8] = 95;
        }

LABEL_204:
        v44 += 16;
        v46 -= 16;
        if (!v46)
        {
          if (v32 == v35)
          {
            return __src;
          }

          if ((v32 & 8) == 0)
          {
            v34 = (v33 + v35);
            goto LABEL_242;
          }

LABEL_138:
          v34 = (v33 + (v32 & 0xFFFFFFFFFFFFFFF8));
          v36 = v35 - (v32 & 0xFFFFFFFFFFFFFFF8);
          v37 = v33 + v35 + 3;
          while (2)
          {
            v38 = vceq_s8(*(v37 - 3), 0x3A3A3A3A3A3A3A3ALL);
            if (v38.i8[0])
            {
              *(v37 - 3) = 95;
              if (v38.i8[1])
              {
                goto LABEL_150;
              }

LABEL_142:
              if ((v38.i8[2] & 1) == 0)
              {
                goto LABEL_143;
              }

LABEL_151:
              *(v37 - 1) = 95;
              if (v38.i8[3])
              {
                goto LABEL_152;
              }

LABEL_144:
              if ((v38.i8[4] & 1) == 0)
              {
                goto LABEL_145;
              }

LABEL_153:
              v37[1] = 95;
              if (v38.i8[5])
              {
                goto LABEL_154;
              }

LABEL_146:
              if ((v38.i8[6] & 1) == 0)
              {
                goto LABEL_147;
              }

LABEL_155:
              v37[3] = 95;
              if (v38.i8[7])
              {
LABEL_156:
                v37[4] = 95;
              }
            }

            else
            {
              if ((v38.i8[1] & 1) == 0)
              {
                goto LABEL_142;
              }

LABEL_150:
              *(v37 - 2) = 95;
              if (v38.i8[2])
              {
                goto LABEL_151;
              }

LABEL_143:
              if ((v38.i8[3] & 1) == 0)
              {
                goto LABEL_144;
              }

LABEL_152:
              *v37 = 95;
              if (v38.i8[4])
              {
                goto LABEL_153;
              }

LABEL_145:
              if ((v38.i8[5] & 1) == 0)
              {
                goto LABEL_146;
              }

LABEL_154:
              v37[2] = 95;
              if (v38.i8[6])
              {
                goto LABEL_155;
              }

LABEL_147:
              if (v38.i8[7])
              {
                goto LABEL_156;
              }
            }

            v37 += 8;
            v36 += 8;
            if (!v36)
            {
              if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
              {
                return __src;
              }

              goto LABEL_242;
            }

            continue;
          }
        }
      }
    }

LABEL_246:
    sub_271120DA8();
  }

  v9 = __len - 1;
  if (__len - 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_246;
  }

  if (__len >= 0x18)
  {
    operator new();
  }

  HIBYTE(v57) = __len - 1;
  if (__len != 1)
  {
    __src = memmove(&__dst, __src + 1, v9);
  }

  *(&__dst + v9) = 0;
  a1[2] = v57;
  *a1 = __dst;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v23 = *(a1 + 23);
  v24 = *a1;
  if (v23 >= 0)
  {
    v24 = a1;
  }

  if (v23 < 0)
  {
    v23 = a1[1];
  }

  if (!v23)
  {
    return __src;
  }

  v25 = v24;
  if (v23 < 8)
  {
    goto LABEL_199;
  }

  if (v23 < 0x10)
  {
    v26 = 0;
    goto LABEL_105;
  }

  v26 = v23 & 0xFFFFFFFFFFFFFFF0;
  v39 = v24 + 7;
  v40.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v40.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v41 = v23 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v42 = vceqq_s8(*(v39 - 7), v40);
    if (v42.i8[0])
    {
      *(v39 - 7) = 95;
      if ((v42.i8[1] & 1) == 0)
      {
LABEL_165:
        if ((v42.i8[2] & 1) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_182;
      }
    }

    else if ((v42.i8[1] & 1) == 0)
    {
      goto LABEL_165;
    }

    *(v39 - 6) = 95;
    if ((v42.i8[2] & 1) == 0)
    {
LABEL_166:
      if ((v42.i8[3] & 1) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_183;
    }

LABEL_182:
    *(v39 - 5) = 95;
    if ((v42.i8[3] & 1) == 0)
    {
LABEL_167:
      if ((v42.i8[4] & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_184;
    }

LABEL_183:
    *(v39 - 4) = 95;
    if ((v42.i8[4] & 1) == 0)
    {
LABEL_168:
      if ((v42.i8[5] & 1) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_185;
    }

LABEL_184:
    *(v39 - 3) = 95;
    if ((v42.i8[5] & 1) == 0)
    {
LABEL_169:
      if ((v42.i8[6] & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_186;
    }

LABEL_185:
    *(v39 - 2) = 95;
    if ((v42.i8[6] & 1) == 0)
    {
LABEL_170:
      if ((v42.i8[7] & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_187;
    }

LABEL_186:
    *(v39 - 1) = 95;
    if ((v42.i8[7] & 1) == 0)
    {
LABEL_171:
      if ((v42.i8[8] & 1) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_188;
    }

LABEL_187:
    *v39 = 95;
    if ((v42.i8[8] & 1) == 0)
    {
LABEL_172:
      if ((v42.i8[9] & 1) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_189;
    }

LABEL_188:
    v39[1] = 95;
    if ((v42.i8[9] & 1) == 0)
    {
LABEL_173:
      if ((v42.i8[10] & 1) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_190;
    }

LABEL_189:
    v39[2] = 95;
    if ((v42.i8[10] & 1) == 0)
    {
LABEL_174:
      if ((v42.i8[11] & 1) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_191;
    }

LABEL_190:
    v39[3] = 95;
    if ((v42.i8[11] & 1) == 0)
    {
LABEL_175:
      if ((v42.i8[12] & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_192;
    }

LABEL_191:
    v39[4] = 95;
    if ((v42.i8[12] & 1) == 0)
    {
LABEL_176:
      if ((v42.i8[13] & 1) == 0)
      {
        goto LABEL_177;
      }

      goto LABEL_193;
    }

LABEL_192:
    v39[5] = 95;
    if ((v42.i8[13] & 1) == 0)
    {
LABEL_177:
      if (v42.i8[14])
      {
        goto LABEL_194;
      }

      goto LABEL_178;
    }

LABEL_193:
    v39[6] = 95;
    if (v42.i8[14])
    {
LABEL_194:
      v39[7] = 95;
      if ((v42.i8[15] & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_195;
    }

LABEL_178:
    if ((v42.i8[15] & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_195:
    v39[8] = 95;
LABEL_162:
    v39 += 16;
    v41 -= 16;
  }

  while (v41);
  if (v23 == v26)
  {
    return __src;
  }

  if ((v23 & 8) == 0)
  {
    v25 = (v24 + v26);
    goto LABEL_199;
  }

LABEL_105:
  v25 = (v24 + (v23 & 0xFFFFFFFFFFFFFFF8));
  v27 = v26 - (v23 & 0xFFFFFFFFFFFFFFF8);
  v28 = v24 + v26 + 3;
  while (2)
  {
    v29 = vceq_s8(*(v28 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v29.i8[0])
    {
      *(v28 - 3) = 95;
      if (v29.i8[1])
      {
        goto LABEL_117;
      }

LABEL_109:
      if ((v29.i8[2] & 1) == 0)
      {
        goto LABEL_110;
      }

LABEL_118:
      *(v28 - 1) = 95;
      if (v29.i8[3])
      {
        goto LABEL_119;
      }

LABEL_111:
      if ((v29.i8[4] & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_120:
      v28[1] = 95;
      if (v29.i8[5])
      {
        goto LABEL_121;
      }

LABEL_113:
      if ((v29.i8[6] & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_122:
      v28[3] = 95;
      if (v29.i8[7])
      {
LABEL_123:
        v28[4] = 95;
      }
    }

    else
    {
      if ((v29.i8[1] & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_117:
      *(v28 - 2) = 95;
      if (v29.i8[2])
      {
        goto LABEL_118;
      }

LABEL_110:
      if ((v29.i8[3] & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_119:
      *v28 = 95;
      if (v29.i8[4])
      {
        goto LABEL_120;
      }

LABEL_112:
      if ((v29.i8[5] & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_121:
      v28[2] = 95;
      if (v29.i8[6])
      {
        goto LABEL_122;
      }

LABEL_114:
      if (v29.i8[7])
      {
        goto LABEL_123;
      }
    }

    v28 += 8;
    v27 += 8;
    if (v27)
    {
      continue;
    }

    break;
  }

  if (v23 == (v23 & 0xFFFFFFFFFFFFFFF8))
  {
    return __src;
  }

LABEL_199:
  v43 = (v24 + v23);
  do
  {
    if (*v25 == 58)
    {
      *v25 = 95;
    }

    v25 = (v25 + 1);
  }

  while (v25 != v43);
  return __src;
}

void sub_2714FA6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714FA6D0(uint64_t a1, const void *a2, size_t __len, char a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = __len;
  if (__len)
  {
    memmove(&v7, a2, __len);
  }

  *(&v7 + __len) = 0;
  *__p = v7;
  v12 = v8;
  v13 = a4;
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_2711B1344(&v9, v10, __p, __p);
  (*(*a1 + 32))(a1, &v9);
  sub_271167834(&v9, v10[0]);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2714FA834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_271167834(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714FA860(uint64_t a1, const void ***a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v8, v9, v4 + 4, (v4 + 4));
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  (*(*a1 + 32))(a1, &v8);
  sub_271167834(&v8, v9[0]);
}

uint64_t sub_2714FA968(uint64_t a1, char *a2, size_t a3)
{
  result = (*(*a1 + 56))();
  if ((v9 & 1) == 0)
  {
    if (a3)
    {
      v10 = a3;
      do
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v11 = a2[--v10];
      }

      while (v11 != 46);
      if (v10 == -1)
      {
LABEL_7:
        v7 = 0;
        v8 = 256;
        *&v16[7] = 256;
        LOBYTE(__p[0]) = 0;
        goto LABEL_18;
      }

      if (a3 >= v10)
      {
        a3 = v10;
      }

      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = a3;
      if (v10)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      *__p = __dst;
      *v16 = v18;
      v16[8] = 1;
      v7 = HIBYTE(v18);
      v8 = *(&__dst + 1);
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      v16[8] = 0;
    }

LABEL_18:
    if ((v7 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v7 & 0x80u) == 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    result = (*(*a1 + 64))(a1, v12, v13);
    if (v16[8] == 1 && (v16[7] & 0x80000000) != 0)
    {
      v14 = result;
      operator delete(__p[0]);
      return v14;
    }
  }

  return result;
}

void sub_2714FAB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714FAB48(uint64_t *a1, uint64_t *a2)
{
  qword_28087B8D0 = 0;
  qword_28087B8C8 = 0;
  qword_28087B8C0 = &qword_28087B8C8;
  if (*a1 != *a2 || a1[2] != a2[2])
  {
    sub_2714FAEB0();
  }
}

void sub_2714FAE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_271167834(&qword_28087B8C0, qword_28087B8C8);
  _Unwind_Resume(a1);
}

void sub_2714FAE88(_Unwind_Exception *a1)
{
  if (v1 < 0)
  {
    operator delete(v2);
  }

  sub_271167834(&qword_28087B8C0, qword_28087B8C8);
  _Unwind_Resume(a1);
}

void sub_2714FB088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

unint64_t sub_2714FB0B0(uint64_t a1)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  _X22 = std::stoll(a1, 0, 10);
  std::to_string(&v21, _X22);
  v10 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v12 = *(a1 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 8);
  }

  if (size != v12)
  {
    v16 = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_23:
    LOBYTE(_X22) = 0;
    return _X20 & 0xFFFFFFFFFFFFFF00 | _X22;
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v21;
  }

  else
  {
    v14 = v21.__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  v16 = memcmp(v14, v15, size) == 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  operator delete(v21.__r_.__value_.__l.__data_);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_19:
  v17 = *(a1 + 32);
  do
  {
    _X3 = *(a1 + 40);
    __asm { CASPAL          X2, X3, X22, X23, [X8] }

    _ZF = _X2 == v17;
    v17 = _X2;
  }

  while (!_ZF);
  _X20 = _X22;
  return _X20 & 0xFFFFFFFFFFFFFF00 | _X22;
}

BOOL sub_2714FB228(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_2714FB29C(void ***__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t __len@<X1>)
{
  v46[2] = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 80) = 0;
    return;
  }

  v7 = 0;
  v8 = __len;
  while (__src[v7] != 35)
  {
    if (__len == ++v7)
    {
      v9 = 0;
      LOBYTE(v10) = 0;
      goto LABEL_16;
    }
  }

  LOBYTE(v10) = 0;
  v9 = 0;
  if (__len != v7 && v7 != -1)
  {
    v11 = __len >= v7 ? v7 : __len;
    v8 = __len >= v11 ? v11 : __len;
    v9 = ~v7;
    v10 = 1;
    if (!v11)
    {
      v13 = 0;
      v14 = v9 + __len;
      if (__len < (v9 + __len))
      {
        v14 = __len;
      }

      v15 = __len - v14;
      v16 = v14;
      if (__len >= v14)
      {
        goto LABEL_24;
      }

      goto LABEL_115;
    }
  }

LABEL_16:
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v40) = v8;
  memmove(&__dst, __src, v8);
  *(&__dst + v8) = 0;
  v13 = __dst;
  v46[0] = v40;
  *(v46 + 7) = *(&v40 + 7);
  v3 = HIBYTE(v40);
  __dst = 0;
  v40 = 0uLL;
  if (v10)
  {
    v10 = 0;
    v14 = v9 + __len;
    if (__len < (v9 + __len))
    {
      v14 = __len;
    }

    v15 = __len - v14;
    v16 = v14;
    if (__len >= __len - v14)
    {
LABEL_24:
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v38) = v17;
      if (v17)
      {
        memmove(&v37, &__src[v15], v17);
      }

      *(&v37 + v17) = 0;
      v18 = v37;
      v44[0] = v38;
      *(v44 + 7) = *(&v38 + 7);
      v12 = HIBYTE(v38);
      v38 = 0uLL;
      v37 = 0;
      v45[0] = v44[0];
      *(v45 + 7) = *(v44 + 7);
      v44[0] = 0;
      *(v44 + 7) = 0;
      if (v10)
      {
        *a1 = 0;
        *(a1 + 24) = 0;
        v20 = (v3 & 0x80u) != 0;
        *(a1 + 32) = 0;
        *(a1 + 80) = 0;
        v21 = 1;
        goto LABEL_106;
      }

      v19 = 1;
      goto LABEL_37;
    }

LABEL_115:
    sub_2711280A8("string_view::substr");
  }

  v18 = 0;
  v19 = 0;
LABEL_37:
  *&v42[7] = *(v46 + 7);
  v41 = v13;
  *v42 = v46[0];
  v43 = v3;
  v46[0] = 0;
  *(v46 + 7) = 0;
  if ((v3 & 0x80u) == 0)
  {
    v22 = &v41;
  }

  else
  {
    v22 = v13;
  }

  v23 = *v42;
  if ((v3 & 0x80u) == 0)
  {
    v23 = v3;
  }

  if (!v23)
  {
    goto LABEL_104;
  }

  v24 = v22;
  if (v23 < 8)
  {
LABEL_118:
    v36 = v22 + v23;
    do
    {
      if (*v24 == 35)
      {
        *v24 = 95;
      }

      ++v24;
    }

    while (v24 != v36);
    goto LABEL_103;
  }

  if (v23 < 0x10)
  {
    v25 = 0;
    goto LABEL_46;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFF0;
  v29 = v22 + 7;
  v30.i64[0] = 0x2323232323232323;
  v30.i64[1] = 0x2323232323232323;
  v31 = v23 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v32 = vceqq_s8(*(v29 - 7), v30);
    if (v32.i8[0])
    {
      *(v29 - 7) = 95;
      if ((v32.i8[1] & 1) == 0)
      {
LABEL_71:
        if ((v32.i8[2] & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_88;
      }
    }

    else if ((v32.i8[1] & 1) == 0)
    {
      goto LABEL_71;
    }

    *(v29 - 6) = 95;
    if ((v32.i8[2] & 1) == 0)
    {
LABEL_72:
      if ((v32.i8[3] & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_89;
    }

LABEL_88:
    *(v29 - 5) = 95;
    if ((v32.i8[3] & 1) == 0)
    {
LABEL_73:
      if ((v32.i8[4] & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

LABEL_89:
    *(v29 - 4) = 95;
    if ((v32.i8[4] & 1) == 0)
    {
LABEL_74:
      if ((v32.i8[5] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    *(v29 - 3) = 95;
    if ((v32.i8[5] & 1) == 0)
    {
LABEL_75:
      if ((v32.i8[6] & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    *(v29 - 2) = 95;
    if ((v32.i8[6] & 1) == 0)
    {
LABEL_76:
      if ((v32.i8[7] & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    *(v29 - 1) = 95;
    if ((v32.i8[7] & 1) == 0)
    {
LABEL_77:
      if ((v32.i8[8] & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    *v29 = 95;
    if ((v32.i8[8] & 1) == 0)
    {
LABEL_78:
      if ((v32.i8[9] & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    v29[1] = 95;
    if ((v32.i8[9] & 1) == 0)
    {
LABEL_79:
      if ((v32.i8[10] & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    v29[2] = 95;
    if ((v32.i8[10] & 1) == 0)
    {
LABEL_80:
      if ((v32.i8[11] & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    v29[3] = 95;
    if ((v32.i8[11] & 1) == 0)
    {
LABEL_81:
      if ((v32.i8[12] & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    v29[4] = 95;
    if ((v32.i8[12] & 1) == 0)
    {
LABEL_82:
      if ((v32.i8[13] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

LABEL_98:
    v29[5] = 95;
    if ((v32.i8[13] & 1) == 0)
    {
LABEL_83:
      if (v32.i8[14])
      {
        goto LABEL_100;
      }

      goto LABEL_84;
    }

LABEL_99:
    v29[6] = 95;
    if (v32.i8[14])
    {
LABEL_100:
      v29[7] = 95;
      if ((v32.i8[15] & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_101;
    }

LABEL_84:
    if ((v32.i8[15] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_101:
    v29[8] = 95;
LABEL_68:
    v29 += 16;
    v31 -= 16;
  }

  while (v31);
  if (v23 == v25)
  {
    goto LABEL_103;
  }

  if ((v23 & 8) == 0)
  {
    v24 = v22 + v25;
    goto LABEL_118;
  }

LABEL_46:
  v24 = v22 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v26 = v25 - (v23 & 0xFFFFFFFFFFFFFFF8);
  v27 = v22 + v25 + 3;
  while (2)
  {
    v28 = vceq_s8(*(v27 - 3), 0x2323232323232323);
    if (v28.i8[0])
    {
      *(v27 - 3) = 95;
      if (v28.i8[1])
      {
        goto LABEL_58;
      }

LABEL_50:
      if ((v28.i8[2] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      *(v27 - 1) = 95;
      if (v28.i8[3])
      {
        goto LABEL_60;
      }

LABEL_52:
      if ((v28.i8[4] & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      v27[1] = 95;
      if (v28.i8[5])
      {
        goto LABEL_62;
      }

LABEL_54:
      if ((v28.i8[6] & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_63:
      v27[3] = 95;
      if (v28.i8[7])
      {
LABEL_64:
        v27[4] = 95;
      }
    }

    else
    {
      if ((v28.i8[1] & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_58:
      *(v27 - 2) = 95;
      if (v28.i8[2])
      {
        goto LABEL_59;
      }

LABEL_51:
      if ((v28.i8[3] & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_60:
      *v27 = 95;
      if (v28.i8[4])
      {
        goto LABEL_61;
      }

LABEL_53:
      if ((v28.i8[5] & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_62:
      v27[2] = 95;
      if (v28.i8[6])
      {
        goto LABEL_63;
      }

LABEL_55:
      if (v28.i8[7])
      {
        goto LABEL_64;
      }
    }

    v27 += 8;
    v26 += 8;
    if (v26)
    {
      continue;
    }

    break;
  }

  if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_118;
  }

LABEL_103:
  v13 = v41;
  v3 = v43;
LABEL_104:
  v33 = *v42;
  v34 = *&v42[7];
  *a1 = v13;
  a1[1] = v33;
  *(a1 + 15) = v34;
  *(a1 + 23) = v3;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  if (v19)
  {
    v13 = 0;
    v20 = 0;
    v21 = 0;
LABEL_106:
    v35 = v45[0];
    a1[4] = v18;
    a1[5] = v35;
    *(a1 + 47) = *(v45 + 7);
    *(a1 + 55) = v12;
    v45[0] = 0;
    *(v45 + 7) = 0;
    a1[8] = 0;
    a1[9] = 0;
    *(a1 + 80) = 1;
    if ((v21 & 1) == 0)
    {
      if (v20)
      {
        operator delete(v13);
      }

      goto LABEL_109;
    }
  }

  else
  {
LABEL_109:
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_2714FB8B8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0 && v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2714FB8D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 == v3)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? a1 : *a1;
  v10 = v8 >= 0 ? a2 : *a2;
  v11 = a1;
  v12 = a2;
  v13 = memcmp(v9, v10, v6);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (v14)
  {
    return 0;
  }

LABEL_21:
  v15 = *(a1 + 80);
  if (v15 != *(a2 + 80) || v15 == 0)
  {
    return v15 == *(a2 + 80);
  }

  v18 = *(a1 + 55);
  if (v18 >= 0)
  {
    v19 = *(a1 + 55);
  }

  else
  {
    v19 = *(a1 + 40);
  }

  v20 = *(a2 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 40);
  }

  if (v19 != v20)
  {
    return 0;
  }

  if (v18 >= 0)
  {
    v22 = (a1 + 32);
  }

  else
  {
    v22 = *(a1 + 32);
  }

  if (v21 >= 0)
  {
    v23 = (a2 + 32);
  }

  else
  {
    v23 = *(a2 + 32);
  }

  return memcmp(v22, v23, v19) == 0;
}

void sub_2714FBA10(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_271120E64(a1, "{", 1);
  sub_2711DC2EC(&v4, &v3, a2);
}

BOOL sub_2714FBB90(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(*a2 + 24);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v2 + 23);
    if (v8 >= 0)
    {
      v9 = *(v2 + 23);
    }

    else
    {
      v9 = v2[1];
    }

    v10 = *(v3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v3[1];
    }

    if (v9 != v10)
    {
      return 0;
    }

    if (v8 < 0)
    {
      v2 = *v2;
    }

    if (v11 < 0)
    {
      v3 = *v3;
    }

    v12 = a1;
    v13 = a2;
    v14 = memcmp(v2, v3, v9);
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if (v15)
    {
      return 0;
    }
  }

  v16 = a1[1];
  v17 = a2[1];
  v18 = *(v16 + 16);
  v19 = *(v17 + 16);
  if (v18 != v19 || v18 == 0)
  {
    if (v18 != v19)
    {
      return 0;
    }
  }

  else if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
  {
    return 0;
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v21 + 24);
  v24 = *(v22 + 24);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 != v24)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(v21 + 23);
    if (v26 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = v21[1];
    }

    v28 = *(v22 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v22[1];
    }

    if (v27 != v28)
    {
      return 0;
    }

    if (v26 < 0)
    {
      v21 = *v21;
    }

    if (v29 < 0)
    {
      v22 = *v22;
    }

    v30 = a1;
    v31 = a2;
    v32 = memcmp(v21, v22, v27);
    a2 = v31;
    v33 = v32;
    a1 = v30;
    if (v33)
    {
      return 0;
    }
  }

  v34 = a1[3];
  v35 = a2[3];
  v36 = *(v34 + 48);
  v37 = *(v35 + 48);
  if (v36 != v37 || v36 == 0)
  {
    if (v36 != v37)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(v34 + 23);
    if (v39 >= 0)
    {
      v40 = *(v34 + 23);
    }

    else
    {
      v40 = v34[1];
    }

    v41 = *(v35 + 23);
    v42 = v41;
    if ((v41 & 0x80u) != 0)
    {
      v41 = v35[1];
    }

    if (v40 != v41)
    {
      return 0;
    }

    if (v39 < 0)
    {
      v34 = *v34;
    }

    if (v42 < 0)
    {
      v35 = *v35;
    }

    v43 = a1;
    v44 = a2;
    v45 = memcmp(v34, v35, v40);
    a2 = v44;
    v46 = v45;
    a1 = v43;
    if (v46)
    {
      return 0;
    }
  }

  v47 = a1[4];
  v48 = a2[4];
  v49 = *(v48 + 24);
  v50 = *(v47 + 24);
  result = v50 == v49;
  if (v50 != v49 || !*(v47 + 24))
  {
    return result;
  }

  v51 = *v47;
  v52 = *(v47 + 8);
  v53 = *v48;
  if (v52 - *v47 != *(v48 + 8) - *v48)
  {
    return 0;
  }

  if (v51 == v52)
  {
    return 1;
  }

  do
  {
    result = sub_2714FB8D4(v51, v53);
    if (!result)
    {
      break;
    }

    v51 += 96;
    v53 += 96;
  }

  while (v51 != v52);
  return result;
}

uint64_t sub_2714FBE4C(uint64_t result)
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

void sub_2714FBEC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FBF50(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        return *(v3 + 8);
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_10;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_10:
    abort();
  }

  return result;
}

uint64_t sub_2714FC08C(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v7 = a2[1];
    v6 = a2[2];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = a2[1];
    v6 = a2[2];
    if (v5)
    {
LABEL_4:
      if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v7)
        {
LABEL_7:
          v8 = (*(*a1 + 16))(a1);
          v9 = (*(*a2 + 16))(a2);
          result = (*(*v8 + 16))(v8, v9);
          if (!result)
          {
            return result;
          }

          v11 = a1[1];
          if (v11)
          {
            goto LABEL_24;
          }

          sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
          if (byte_28087C430 == 1)
          {
            if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
            {
LABEL_23:
              qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
              v11 = a1[1];
LABEL_24:
              v16 = (*(*v11 + 24))(v11);
              v17 = a2[1];
              if (v17)
              {
LABEL_33:
                v22 = (*(*v17 + 24))(v17);
                if (*v16 == *v22 && *(v16 + 8) == *(v22 + 8))
                {
                  v24[0] = v16 + 16;
                  v24[1] = v16 + 48;
                  v24[2] = v16 + 72;
                  v24[3] = v16 + 112;
                  v24[4] = v16 + 176;
                  v23[0] = v22 + 16;
                  v23[1] = v22 + 48;
                  v23[2] = v22 + 72;
                  v23[3] = v22 + 112;
                  v23[4] = v22 + 176;
                  return sub_2714FBB90(v24, v23);
                }

                return 0;
              }

              sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
              if (byte_28087C430 == 1)
              {
                if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
                {
LABEL_32:
                  qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
                  v17 = a2[1];
                  goto LABEL_33;
                }
              }

              else
              {
                v18 = qword_28087C408;
                v19 = qword_28087C410;
                if (qword_28087C408 == qword_28087C410)
                {
                  goto LABEL_38;
                }
              }

              do
              {
                v21 = *v18;
                v20 = *(v18 + 8);
                v18 += 16;
                v21(v20, "data_", 5, "", 0);
              }

              while (v18 != v19);
              if (byte_28087C430)
              {
                goto LABEL_32;
              }

LABEL_38:
              abort();
            }
          }

          else
          {
            v12 = qword_28087C408;
            v13 = qword_28087C410;
            if (qword_28087C408 == qword_28087C410)
            {
              goto LABEL_38;
            }
          }

          do
          {
            v15 = *v12;
            v14 = *(v12 + 8);
            v12 += 16;
            v15(v14, "data_", 5, "", 0);
          }

          while (v12 != v13);
          if ((byte_28087C430 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }
      }

      else if (v7)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  return v7 == 0;
}

uint64_t sub_2714FC508(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 24);

  return v8();
}

uint64_t sub_2714FC660(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 16);

  return v8();
}

void sub_2714FC7B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *&v16 = v2;
  *(&v16 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 32))(&v19);
  v6 = std::string::insert(&v19, 0, ",", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v3 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
LABEL_14:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_16:
  if ((atomic_load_explicit(qword_28087B8E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_28087B8E8))
  {
    sub_27112B400(&xmmword_28087B920, "viz::SharedData");
    __cxa_guard_release(qword_28087B8E8);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8;
  v18 = -1;
  if (byte_28087B937 < 0)
  {
    sub_271127178(&v16, xmmword_28087B920, *(&xmmword_28087B920 + 1));
  }

  else
  {
    v16 = xmmword_28087B920;
    v17 = unk_28087B930;
  }

  v18 = 1;
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "{";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "{";
  v21 = "{";
  sub_271136F58(&v19.__r_.__value_.__r.__words[2], &v16);
  sub_271136C48(&v15, &v16, &v10);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = __p;
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = __p;
  v21 = __p;
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v22 = &v19;
  (off_288132958[v18])(&v22, &v16);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "}";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "}";
  v21 = "}";
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v22 = &v19;
  (*(&off_288132970 + v18))(&v22, &v16);
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v19.__r_.__value_.__r.__words[0] = &v22;
  (off_288132940[v18])(&v19, &v16);
  if (v18 != -1)
  {
    (off_288132928[v18])(&v19, &v16);
  }

  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_32:
    operator delete(__p[0]);
    return;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_32;
  }
}