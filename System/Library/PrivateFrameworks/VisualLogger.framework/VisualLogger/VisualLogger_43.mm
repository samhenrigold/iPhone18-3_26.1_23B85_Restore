void sub_27149C114(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LOBYTE(__p[0]) = 0;
  sub_271839D90(a1, __p);
  v6 = LOBYTE(__p[0]);
  *a2 = __p[0];
  if (a3 >= 2 && v6)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v7 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v7)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      LODWORD(__p[0]) = 1;
      sub_27183A9AC(a1, __p);
      sub_27149C34C(a1, a2 + 8);
      while (1)
      {
        if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
        {
          return;
        }

        sub_27183D78C(a1, __p);
        if (v12 < 0)
        {
          if (__p[1] == 1 && *(a1 + 72) == *__p[0])
          {
LABEL_25:
            v9 = 0;
            if (v12 < 0)
            {
              goto LABEL_28;
            }

            goto LABEL_16;
          }
        }

        else if (v12 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
        {
          goto LABEL_25;
        }

        v9 = 1;
        if (v12 < 0)
        {
LABEL_28:
          operator delete(__p[0]);
        }

LABEL_16:
        if ((v9 & 1) == 0)
        {
          return;
        }
      }
    }

    if (*(a2 + 56) == 1)
    {
      v8 = *(a2 + 48);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      if (v8 != 1)
      {
        *(a2 + 48) = 1;
      }
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 48) = 1;
      *(a2 + 56) = 1;
    }

    sub_27149C410(__p, a1, a2 + 8);
  }
}

void sub_27149C34C(uint64_t a1, uint64_t a2)
{
  sub_27183B6AC(a1, a2);
  v4 = 0;
  sub_271839D90(a1, &v4);
  if (v4)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    sub_27183B6AC(a1, (a2 + 8));
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
    }

    sub_27183B6AC(a1, (a2 + 24));
  }

  else if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a2, __p);
  sub_271839D90(a2, a3);
  sub_27183B6AC(a2, (a3 + 8));
  LOBYTE(__p[0]) = 0;
  sub_271839D90(a2, __p);
  if (LOBYTE(__p[0]))
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_27183B6AC(a2, (a3 + 16));
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_16:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_7;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_16;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_19:
      operator delete(__p[0]);
    }

LABEL_7:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void *sub_27149C554(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v20, a2, v3 + 16);
  return sub_27149C944(v20, a2, v3 + 200);
}

void *sub_27149C944(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  result = sub_27149CA24(a2, a3, v10);
  v12 = a2[12];
  v13 = a2[9];
  a2[6] = *(v12 - 8) + *(v13 - 8) + 8;
  a2[9] = v13 - 8;
  a2[12] = v12 - 8;
  return result;
}

void *sub_27149CA24(void *result, uint64_t a2, unsigned int a3)
{
  v3 = result[6];
  if (result[7] <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v4 = *(result[3] + v3);
  result[6] = v3 + 1;
  *a2 = v4;
  if (a3 >= 2 && v4)
  {
    if (v4 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v7 = result;
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v8 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        v7 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      return sub_27149CEC4(&v12, v7, a2 + 8);
    }

    else
    {
      if (v4 != 1)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "invalid sync type");
        __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v5 = result;
        v6 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v6)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        v5 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      return sub_27149CBFC(&v11, v5, (a2 + 8));
    }
  }

  return result;
}

void *sub_27149CBFC(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  result = sub_27149CCD8(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void *sub_27149CCD8(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *a2 = *(a1[3] + v2);
  v6 = a2 + 3;
  a1[6] += 8;
  v10 = "proceed_n";
  v11 = 9;
  v12 = a2 + 1;
  sub_27149CDBC(a1, &v10);
  v10 = "proceed_until";
  v11 = 13;
  v12 = v6;
  return sub_27149CDBC(a1, &v10);
}

void *sub_27149CDBC(void *result, uint64_t a2)
{
  v3 = result[6];
  v2 = result[7];
  if (v2 <= v3)
  {
    goto LABEL_12;
  }

  v4 = *(a2 + 16);
  v5 = result[3];
  v6 = *(v5 + v3);
  v7 = v3 + 1;
  result[6] = v7;
  if (v6)
  {
    if ((*(v4 + 8) & 1) == 0)
    {
      *v4 = 0;
      *(v4 + 8) = 1;
    }

    v8 = v2 >= v7;
    v9 = v2 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *v4 = *(v5 + v7);
      result[6] += 8;
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  if (*(v4 + 8))
  {
    *(v4 + 8) = 0;
  }

  return result;
}

void *sub_27149CEC4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  result = sub_27149CFA0(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void *sub_27149CFA0(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (a1[7] <= v2)
  {
    goto LABEL_6;
  }

  *a2 = *(a1[3] + v2);
  v3 = a1[7];
  v4 = a1[6] + 1;
  a1[6] = v4;
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 7)
  {
LABEL_6:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 8) = *(a1[3] + v4);
  a1[6] += 8;
  v9[0] = "acknowledge_until";
  v9[1] = 17;
  v9[2] = a2 + 16;
  return sub_27149CDBC(a1, v9);
}

uint64_t sub_27149D0AC(int *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  if (*a1 == 2)
  {
    v13 = 1;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878850))
      {
        sub_2718519B4(qword_280878838, "cv3d::kit::viz::SyncSample]", 0x1AuLL);
        __cxa_guard_release(&qword_280878850);
        sub_271847D5C(qword_280878838, v12, 2);
      }

      sub_271847D5C(qword_280878838, v12, 2);
    }

    v7 = *a1;
  }

  if (v7 <= 0)
  {
    if (a4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a4;
    }

    return sub_27149D25C(a2, a3, v11);
  }

  else
  {
    (*(*a2 + 16))(a2);
    if (a4 >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a4;
    }

    sub_27149D25C(a2, a3, v9);
    return (*(*a2 + 24))(a2);
  }
}

uint64_t sub_27149D25C(void *a1, uint64_t a2, unsigned int a3)
{
  v11 = 0;
  result = (*(*a1 + 80))(a1, &v11);
  v7 = v11;
  *a2 = v11;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v13 = a1[1];
      return sub_27149D874(&v13, a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      return sub_27149D40C(&v12, a1, a2 + 8);
    }
  }

  return result;
}

uint64_t sub_27149D40C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = a2[1];
  v8 = 1;
  (*(v5 + 104))(a2, &v8);
  if (v7 >= 1)
  {
    return sub_27149D5EC(&v7, a2, a3);
  }

  (*(*a2 + 120))(a2, a3);
  v9 = 0;
  (*(*a2 + 80))(a2, &v9);
  if (v9)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    (*(*a2 + 120))(a2, a3 + 8);
  }

  else if (*(a3 + 16))
  {
    *(a3 + 16) = 0;
  }

  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
    }

    return (*(*a2 + 120))(a2, a3 + 24);
  }

  else if (*(a3 + 32))
  {
    *(a3 + 32) = 0;
  }

  return result;
}

uint64_t sub_27149D5EC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4(qword_280878858, "cv3d::kit::viz::SyncCommandSample]", 0x21uLL);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(qword_280878858, v8, 1);
      }

      sub_271847D5C(qword_280878858, v8, 1);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 120))(a2, a3);
  v10 = 0;
  (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    (*(*a2 + 120))(a2, a3 + 8);
  }

  else if (*(a3 + 16))
  {
    *(a3 + 16) = 0;
  }

  v11 = 0;
  result = (*(*a2 + 80))(a2, &v11);
  if (v11)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
    }

    result = (*(*a2 + 120))(a2, a3 + 24);
  }

  else if (*(a3 + 32))
  {
    *(a3 + 32) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

uint64_t sub_27149D874(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 1;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_27149DA00(a1, a2, a3);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  v8 = 0;
  result = (*(*a2 + 80))(a2, &v8);
  if (v8)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    return (*(*a2 + 120))(a2, a3 + 16);
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_27149DA00(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878890))
      {
        sub_2718519B4(qword_280878878, "cv3d::kit::viz::ClientSyncUpdateSample]", 0x26uLL);
        __cxa_guard_release(&qword_280878890);
        sub_271847D5C(qword_280878878, v8, 1);
      }

      sub_271847D5C(qword_280878878, v8, 1);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    result = (*(*a2 + 120))(a2, a3 + 16);
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_27149DC38(__int128 *a1, __int128 *a2)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v7 = &unk_288131AF8;
  v8 = &unk_288131B40;
  v9 = *a1;
  v10 = *(a1 + 4);
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a1 + 48) == 1)
  {
    *v11 = *(a1 + 24);
    v12 = *(a1 + 5);
    a1[2] = 0uLL;
    *(a1 + 3) = 0;
    v13 = 1;
  }

  LOBYTE(v14) = 0;
  v26 = 0;
  if (*(a1 + 200) == 1)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 9);
    *(a1 + 56) = 0uLL;
    v3 = a1[5];
    *(a1 + 72) = 0uLL;
    *v16 = v3;
    v17 = *(a1 + 12);
    *(a1 + 88) = 0uLL;
    v19 = *(a1 + 15);
    *v18 = *(a1 + 104);
    *(a1 + 104) = 0uLL;
    v4 = a1[8];
    v21 = *(a1 + 18);
    *v20 = v4;
    *(a1 + 120) = 0uLL;
    *(a1 + 136) = 0uLL;
    v5 = *(a1 + 152);
    v23 = *(a1 + 21);
    *v22 = v5;
    *(a1 + 152) = 0uLL;
    v6 = a1[11];
    v25 = *(a1 + 24);
    *v24 = v6;
    *(a1 + 168) = 0uLL;
    *(a1 + 184) = 0uLL;
    v26 = 1;
  }

  v27 = a1[13];
  v28 = *(a1 + 28);
  v29 = *a2;
  sub_27113523C(v30, a2 + 1);
  v7 = &unk_28810C498;
  operator new();
}

void sub_27149E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_27149F980(&a9);
  _Unwind_Resume(a1);
}

void sub_27149E08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0x10B3C40AA30A612, a3, a4, a5, a6, a7, a8);
  sub_27149F980(&a9);
  _Unwind_Resume(a1);
}

void *sub_27149E0E4(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

void sub_27149E154(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));

  JUMPOUT(0x2743BF050);
}

void sub_27149E1F4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808788F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808788F0))
    {
      sub_27149F368();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_2808788D8, "{", __p, ",", v2 + 248, "}");
}

void sub_27149E2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149E310(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 1;
}

void *sub_27149E388(void *a1)
{
  *a1 = &unk_288131B40;
  sub_2711B039C((a1 + 1));
  return a1;
}

void *sub_27149E3CC(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

void sub_27149E43C(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));

  JUMPOUT(0x2743BF050);
}

void sub_27149E4CC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808788D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808788D0))
    {
      sub_27149F0D4();
    }
  }

  sub_27149EB88(qword_2808788B8, "{", a1 + 8, ",", a1 + 256, "}");
}

void sub_27149E580(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_27149E5AC(void *a1)
{
  *a1 = &unk_288131B40;
  sub_2711B039C((a1 + 1));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27149E610(char *a1, char *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131B60, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6[0] = a1 + 8;
      v6[1] = a1 + 24;
      v6[2] = a1 + 64;
      v6[3] = a1 + 216;
      v5[0] = result + 8;
      v5[1] = result + 24;
      v5[2] = result + 64;
      v5[3] = result + 216;
      return sub_2714F8C34(v6, v5);
    }
  }

  return result;
}

void sub_27149E6DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808788B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808788B0))
  {
    sub_2718519B4(qword_280878898, "cv3d::kit::viz::PeerInfo]", 0x18uLL);
    __cxa_guard_release(&qword_2808788B0);
  }

  sub_27149E790(qword_280878898, "{", a1 + 8, "}");
}

void sub_27149E790(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_27149E93C(&v6, &v7, a3);
}

void sub_27149E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149EB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149EB88(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_27149EDB8(&v8, &v9, a3);
}

void sub_27149ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149EDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149F04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808788B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27149F1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149F328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27149F368()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_27149F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_27149F6FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131AF8;
  *(a1 + 8) = &unk_288131B40;
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v2;
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
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a1 + 216) = 1;
  }

  v10 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v10;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v11 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v11;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = 1;
  }

  result = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = result;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    result = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 328) = result;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 328) = 0;
    *(a1 + 352) = 1;
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
    if (*(a2 + 416) != 1)
    {
LABEL_9:
      *(a1 + 432) = 0;
      *(a1 + 456) = 0;
      if (*(a2 + 456) != 1)
      {
        return result;
      }

LABEL_13:
      *(a1 + 432) = 0;
      *(a1 + 440) = 0;
      *(a1 + 448) = 0;
      result = *(a2 + 432);
      *(a1 + 432) = result;
      *(a1 + 448) = *(a2 + 448);
      *(a2 + 432) = 0;
      *(a2 + 440) = 0;
      *(a2 + 448) = 0;
      *(a1 + 456) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
    if (*(a2 + 416) != 1)
    {
      goto LABEL_9;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = result;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 400) = _X2;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  if (*(a2 + 456) == 1)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_27149F980(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

BOOL sub_27149F9F0(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v51);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v51);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v51);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v36);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v36);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v36);
  }

  if (v51 == v36 && v52 == v37 && (v26 = &v53, v27 = &v56, v28 = &v57, v29 = &v60, v30 = &v63, v16 = &v38, v17 = &v41, v18 = &v42, v19 = &v45, p_p = &__p, sub_2714FBB90(&v26, &v16)))
  {
    v26 = (a1 + 200);
    v27 = (a1 + 224);
    v28 = (a1 + 248);
    v29 = (a1 + 272);
    v30 = (a1 + 296);
    v31 = a1 + 320;
    v32 = a1 + 344;
    v33 = a1 + 352;
    v34 = a1 + 376;
    v35 = a1 + 392;
    v16 = (a2 + 200);
    v17 = (a2 + 224);
    v18 = (a2 + 248);
    v19 = (a2 + 272);
    p_p = (a2 + 296);
    v21 = a2 + 320;
    v22 = a2 + 344;
    v23 = a2 + 352;
    v24 = a2 + 376;
    v25 = a2 + 392;
    v6 = sub_2713A6524(&v26, &v16);
    if (v50 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v6 = 0;
    if (v50 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v49;
    v9 = __p;
    if (v49 == __p)
    {
LABEL_31:
      v49 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v65 == 1)
  {
    v11 = v63;
    if (v63)
    {
      v12 = v64;
      v13 = v63;
      if (v64 == v63)
      {
LABEL_54:
        v64 = v11;
        operator delete(v13);
        goto LABEL_55;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_49:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v63;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v62 == 1 && v61 < 0)
  {
    operator delete(v60);
  }

  if (v59 == 1 && v58 < 0)
  {
    operator delete(v57);
  }

  if (v55 == 1 && v54 < 0)
  {
    operator delete(v53);
  }

  return v6;
}

void sub_27149FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_271134CBC(v57);
  sub_271134CBC(&a57);
  _Unwind_Resume(a1);
}

void sub_27149FE18(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_2714A03D0(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_2714A17B0(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_2714A213C(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_2714A2D94(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_2714A33F0(&v10, v8);
      }

      else
      {
        sub_27149FFE4(&v9, a1);
      }
    }
  }
}

void sub_27149FFE4(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v13 = 4;
    (*(*a2 + 104))(a2, &v13);
    v10 = v13;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v13);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v13 = 5;
    (*(*a2 + 104))(a2, &v13);
    v8 = v13;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v13);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v13 = 6;
    (*(*a2 + 104))(a2, &v13);
    v6 = v13;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v13);
  }

LABEL_17:
  v11 = a2[2];
  v13 = 2;
  (*(*a2 + 104))(a2, &v13);
  v12 = v13;
  if (v11 < 1)
  {
    sub_2714A3AAC(a2, (v3 + 200), v13);
  }

  else
  {
    if (v11 == 2)
    {
      v13 = 1;
      (*(*a2 + 104))(a2, &v13);
    }

    (*(*a2 + 16))(a2);
    sub_2714A3AAC(a2, (v3 + 200), v12);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714A03D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_2714A08FC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A0A10(a1, v5, v3);
}

void sub_2714A09FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A0A10(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v6 = *(a1 + 88);
    *(a1 + 72) = "user_given_name";
    *(a1 + 80) = 15;
    if ((v6 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2);
  if (**(a1 + 40) <= 1u)
  {
    v7 = *(a1 + 88);
    *(a1 + 72) = "product_name";
    *(a1 + 80) = 12;
    if ((v7 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2 + 24);
  if (**(a1 + 40) <= 1u)
  {
    v8 = *(a1 + 88);
    *(a1 + 72) = "type";
    *(a1 + 80) = 4;
    if ((v8 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2 + 48);
  if (**(a1 + 40) <= 1u)
  {
    v9 = *(a1 + 88);
    *(a1 + 72) = "serial_number";
    *(a1 + 80) = 13;
    if ((v9 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2 + 72);
  if (**(a1 + 40) <= 1u)
  {
    v10 = *(a1 + 88);
    *(a1 + 72) = "os_build_version";
    *(a1 + 80) = 16;
    if ((v10 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2 + 96);
  if (**(a1 + 40) <= 1u)
  {
    v11 = *(a1 + 88);
    *(a1 + 72) = "os_product_version";
    *(a1 + 80) = 18;
    if ((v11 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1, a2 + 120);
  v12 = *(a1 + 40);
  if (*v12 > 1u)
  {
    v15 = (a1 + 88);
    v13 = a1 + 72;
    v16 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v13 == *"version" && *(*v13 + 3) == *"sion")
    {
LABEL_29:
      if (*v12 <= 1u)
      {
        v21 = *v15;
        *v13 = "process_name";
        *v16 = 12;
        if ((v21 & 1) == 0)
        {
          *v15 = 1;
        }
      }

      sub_27182B1E4(a1, a2 + 152);
      if (**(a1 + 40) <= 1u)
      {
        v22 = *v15;
        *v13 = "uuid";
        *v16 = 4;
        if ((v22 & 1) == 0)
        {
          *v15 = 1;
        }
      }

      sub_2714A1134(a2 + 176);
    }
  }

  else
  {
    *(a1 + 72) = "process_id";
    v13 = a1 + 72;
    v15 = (a1 + 88);
    v14 = *(a1 + 88);
    *(a1 + 80) = 10;
    v16 = (a1 + 80);
    if ((v14 & 1) == 0)
    {
      *v15 = 1;
    }
  }

  v23 = *(a2 + 144);
  v18 = sub_2718289B0(a1);
  v19 = *v18;
  *v18 = 5;
  v20 = v18[1];
  v18[1] = v23;
  v23 = v20;
  sub_2715CC40C(&v23, v19);
  v12 = *v5;
  goto LABEL_29;
}

void sub_2714A0ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714A0EEC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_271127178((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_271127178((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_271127178((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  *(a1 + 144) = *(a2 + 36);
  if (*(a2 + 175) < 0)
  {
    sub_271127178((a1 + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v10;
  }

  v11 = a2[11];
  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  return a1;
}

void sub_2714A1048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 96));
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2714A1134(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = 0;
  operator new();
}

void sub_2714A13AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A1428(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v5 = 0;
  sub_2714A1564(&v6, v4, v3);
}

void sub_2714A1520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A1550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A176C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A17B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_2718460EC(&v19, 4u);
    }

    else
    {
      sub_27184636C(&v19, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_2718460EC(&v19, 5u);
    }

    else
    {
      sub_27184636C(&v19, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_2718460EC(&v19, 6u);
    }

    else
    {
      sub_27184636C(&v19, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v13 = *(a2 + 24);
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_2718460EC(&v19, 2u);
  }

  else
  {
    sub_27184636C(&v19, (v13 + 8), 2u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714A1A44(a2, (v3 + 200), 2);
  v14 = *(a2 + 24);
  v15 = *(*(v14 + 88) - 8);
  sub_2718404E0((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_2714A1A44(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A1B58(a1, v5, v3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A1B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A1B58(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v29 = (v6 + 16);
    sub_271847238(&v29, a2);
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_271847654((v6 + 8), a2);
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
LABEL_3:
      sub_271847654((v7 + 8), a2 + 3);
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  v29 = (v7 + 16);
  sub_271847238(&v29, a2 + 3);
  v8 = *(a1 + 24);
  if (*(v8 + 40) != 1)
  {
LABEL_4:
    sub_271847654((v8 + 8), a2 + 6);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v29 = (v8 + 16);
  sub_271847238(&v29, a2 + 6);
  v9 = *(a1 + 24);
  if (*(v9 + 40) != 1)
  {
LABEL_5:
    sub_271847654((v9 + 8), a2 + 9);
    v10 = *(a1 + 24);
    if (*(v10 + 40) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v29 = (v9 + 16);
  sub_271847238(&v29, a2 + 9);
  v10 = *(a1 + 24);
  if (*(v10 + 40) != 1)
  {
LABEL_6:
    sub_271847654((v10 + 8), a2 + 12);
    v11 = *(a1 + 24);
    if (*(v11 + 40) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v29 = (v10 + 16);
  sub_271847238(&v29, a2 + 12);
  v11 = *(a1 + 24);
  if (*(v11 + 40) != 1)
  {
LABEL_7:
    sub_271847654((v11 + 8), a2 + 15);
    v12 = *(a1 + 24);
    if (*(v12 + 40) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v29 = (v11 + 16);
  sub_271847238(&v29, a2 + 15);
  v12 = *(a1 + 24);
  if (*(v12 + 40) != 1)
  {
LABEL_8:
    sub_271845FEC((v12 + 8), a2[36]);
    v13 = *(a1 + 24);
    if (*(v13 + 40) != 1)
    {
      goto LABEL_9;
    }

LABEL_23:
    v29 = (v13 + 16);
    sub_271847238(&v29, a2 + 19);
    v14 = *(a1 + 24);
    if (*(v14 + 40) != 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    v29 = (v14 + 16);
    sub_2718454CC(&v29, a2 + 176);
    sub_2718454CC(&v29, a2 + 177);
    sub_2718454CC(&v29, a2 + 178);
    sub_2718454CC(&v29, a2 + 179);
    sub_2718454CC(&v29, a2 + 180);
    sub_2718454CC(&v29, a2 + 181);
    sub_2718454CC(&v29, a2 + 182);
    sub_2718454CC(&v29, a2 + 183);
    sub_2718454CC(&v29, a2 + 184);
    sub_2718454CC(&v29, a2 + 185);
    sub_2718454CC(&v29, a2 + 186);
    sub_2718454CC(&v29, a2 + 187);
    sub_2718454CC(&v29, a2 + 188);
    sub_2718454CC(&v29, a2 + 189);
    sub_2718454CC(&v29, a2 + 190);
    sub_2718454CC(&v29, a2 + 191);
    if (a3 < 2)
    {
      return;
    }

LABEL_25:
    v17 = *(a1 + 24);
    if (*(v17 + 40) == 1)
    {
      v29 = (v17 + 16);
      sub_2718460EC(&v29, 1u);
      sub_271840ADC(*(a1 + 24));
      v18 = *(a1 + 24);
      if (*(v18 + 40) != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_27184636C(&v29, (v17 + 8), 1u);
      sub_271840ADC(*(a1 + 24));
      v18 = *(a1 + 24);
      if (*(v18 + 40) != 1)
      {
LABEL_27:
        sub_27184636C(&v29, (v18 + 8), a2[48]);
        v19 = *(a1 + 24);
        if (*(v19 + 40) != 1)
        {
          goto LABEL_28;
        }

        goto LABEL_35;
      }
    }

    v29 = (v18 + 16);
    sub_2718460EC(&v29, a2[48]);
    v19 = *(a1 + 24);
    if (*(v19 + 40) != 1)
    {
LABEL_28:
      sub_27184636C(&v29, (v19 + 8), a2[49]);
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

LABEL_35:
    v29 = (v19 + 16);
    sub_2718460EC(&v29, a2[49]);
    v20 = *(a1 + 24);
    if (*(v20 + 40) != 1)
    {
LABEL_29:
      sub_27184636C(&v29, (v20 + 8), a2[50]);
      v21 = *(a1 + 24);
      if (*(v21 + 40) != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_37;
    }

LABEL_36:
    v29 = (v20 + 16);
    sub_2718460EC(&v29, a2[50]);
    v21 = *(a1 + 24);
    if (*(v21 + 40) != 1)
    {
LABEL_30:
      sub_27184636C(&v29, (v21 + 8), a2[51]);
      v22 = *(a1 + 24);
      if (*(v22 + 40) != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_37:
    v29 = (v21 + 16);
    sub_2718460EC(&v29, a2[51]);
    v22 = *(a1 + 24);
    if (*(v22 + 40) != 1)
    {
LABEL_31:
      sub_27184636C(&v29, (v22 + 8), a2[52]);
      v23 = *(a1 + 24);
      if (*(v23 + 40) != 1)
      {
LABEL_32:
        sub_27184636C(&v29, (v23 + 8), a2[53]);
LABEL_40:
        v24 = *(a1 + 24);
        v25 = *(*(v24 + 88) - 8);
        sub_2718404E0((v24 + 48), *(v24 + 16) - v25 - 9);
        v26 = *(v24 + 48);
        if (v26)
        {
          memmove((*(v24 + 24) + v25), *(v24 + 56), v26);
        }

        *(v24 + 48) = 0;
        v27 = *(v24 + 80);
        v28 = *(v24 + 88) - 8;
        *(v24 + 88) = v28;
        if (v27 == v28)
        {
          std::ostream::write();
          if (*(v24 + 40) == 1)
          {
            free(*(v24 + 24));
            *(v24 + 40) = 0;
          }
        }

        return;
      }

LABEL_39:
      v29 = (v23 + 16);
      sub_2718460EC(&v29, a2[53]);
      goto LABEL_40;
    }

LABEL_38:
    v29 = (v22 + 16);
    sub_2718460EC(&v29, a2[52]);
    v23 = *(a1 + 24);
    if (*(v23 + 40) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

LABEL_22:
  v29 = (v12 + 16);
  sub_271845BC4(&v29, a2[36]);
  v13 = *(a1 + 24);
  if (*(v13 + 40) == 1)
  {
    goto LABEL_23;
  }

LABEL_9:
  sub_271847654((v13 + 8), a2 + 19);
  v14 = *(a1 + 24);
  if (*(v14 + 40) == 1)
  {
    goto LABEL_24;
  }

LABEL_10:
  for (i = 0; i != 16; ++i)
  {
    while (1)
    {
      v16 = *(a2 + i + 176);
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(v29) = -52;
      BYTE1(v29) = v16;
      std::ostream::write();
      if (++i == 16)
      {
        goto LABEL_14;
      }
    }

    LOBYTE(v29) = *(a2 + i + 176);
    std::ostream::write();
  }

LABEL_14:
  if (a3 >= 2)
  {
    goto LABEL_25;
  }
}

void sub_2714A213C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_2714A2668(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A277C(a1, v5, v3);
}

void sub_2714A2768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A277C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v6 = *(a1 + 88);
    *(a1 + 72) = "user_given_name";
    *(a1 + 80) = 15;
    if ((v6 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2);
  if (**(a1 + 40) <= 1u)
  {
    v7 = *(a1 + 88);
    *(a1 + 72) = "product_name";
    *(a1 + 80) = 12;
    if ((v7 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2 + 24);
  if (**(a1 + 40) <= 1u)
  {
    v8 = *(a1 + 88);
    *(a1 + 72) = "type";
    *(a1 + 80) = 4;
    if ((v8 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2 + 48);
  if (**(a1 + 40) <= 1u)
  {
    v9 = *(a1 + 88);
    *(a1 + 72) = "serial_number";
    *(a1 + 80) = 13;
    if ((v9 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2 + 72);
  if (**(a1 + 40) <= 1u)
  {
    v10 = *(a1 + 88);
    *(a1 + 72) = "os_build_version";
    *(a1 + 80) = 16;
    if ((v10 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2 + 96);
  if (**(a1 + 40) <= 1u)
  {
    v11 = *(a1 + 88);
    *(a1 + 72) = "os_product_version";
    *(a1 + 80) = 18;
    if ((v11 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1, a2 + 120);
  v12 = *(a1 + 40);
  if (*v12 > 1u)
  {
    v15 = (a1 + 88);
    v13 = a1 + 72;
    v16 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v13 == *"version" && *(*v13 + 3) == *"sion")
    {
LABEL_29:
      if (*v12 <= 1u)
      {
        v21 = *v15;
        *v13 = "process_name";
        *v16 = 12;
        if ((v21 & 1) == 0)
        {
          *v15 = 1;
        }
      }

      sub_271829354(a1, a2 + 152);
      if (**(a1 + 40) <= 1u)
      {
        v22 = *v15;
        *v13 = "uuid";
        *v16 = 4;
        if ((v22 & 1) == 0)
        {
          *v15 = 1;
        }
      }

      sub_2714A1134(a2 + 176);
    }
  }

  else
  {
    *(a1 + 72) = "process_id";
    v13 = a1 + 72;
    v15 = (a1 + 88);
    v14 = *(a1 + 88);
    *(a1 + 80) = 10;
    v16 = (a1 + 80);
    if ((v14 & 1) == 0)
    {
      *v15 = 1;
    }
  }

  v23 = *(a2 + 144);
  v18 = sub_27182815C(a1);
  v19 = *v18;
  *v18 = 5;
  v20 = v18[1];
  v18[1] = v23;
  v23 = v20;
  sub_2715CA870(&v23, v19);
  v12 = *v5;
  goto LABEL_29;
}

void sub_2714A2C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A2C58(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v5 = 0;
  sub_2714A1564(&v6, v4, v3);
}

void sub_2714A2D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A2D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2714A2D94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_2714A2FA8(a2, (v3 + 200), 2);
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_2714A2FA8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A30BC(a1, v5, v3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A30A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A30BC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  sub_271839128(a1, a2);
  sub_271839128(a1, (a2 + 24));
  sub_271839128(a1, (a2 + 48));
  sub_271839128(a1, (a2 + 72));
  sub_271839128(a1, (a2 + 96));
  sub_271839128(a1, (a2 + 120));
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v24 = *(a1 + 32);
    sub_271120E64(v6, &v24, 1);
  }

  MEMORY[0x2743BE7E0](*(a1 + 24), *(a2 + 36));
  ++*(a1 + 40);
  sub_271839128(a1, (a2 + 152));
  sub_2718388F8(a1, a2 + 176);
  sub_2718388F8(a1, a2 + 177);
  sub_2718388F8(a1, a2 + 178);
  sub_2718388F8(a1, a2 + 179);
  sub_2718388F8(a1, a2 + 180);
  sub_2718388F8(a1, a2 + 181);
  sub_2718388F8(a1, a2 + 182);
  sub_2718388F8(a1, a2 + 183);
  sub_2718388F8(a1, a2 + 184);
  sub_2718388F8(a1, a2 + 185);
  sub_2718388F8(a1, a2 + 186);
  sub_2718388F8(a1, a2 + 187);
  sub_2718388F8(a1, a2 + 188);
  sub_2718388F8(a1, a2 + 189);
  sub_2718388F8(a1, a2 + 190);
  sub_2718388F8(a1, a2 + 191);
  if (a3 >= 2)
  {
    if (*(a1 + 40))
    {
      v7 = *(a1 + 24);
      v25 = *(a1 + 32);
      sub_271120E64(v7, &v25, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 1);
    v8 = *(a1 + 40);
    *(a1 + 40) = v8 + 1;
    if (v8 != -1)
    {
      v9 = *(a1 + 24);
      v26 = *(a1 + 32);
      sub_271120E64(v9, &v26, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 48));
    v10 = *(a1 + 40);
    *(a1 + 40) = v10 + 1;
    if (v10 != -1)
    {
      v11 = *(a1 + 24);
      v27 = *(a1 + 32);
      sub_271120E64(v11, &v27, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 49));
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    if (v12 != -1)
    {
      v13 = *(a1 + 24);
      v28 = *(a1 + 32);
      sub_271120E64(v13, &v28, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 50));
    v14 = *(a1 + 40);
    *(a1 + 40) = v14 + 1;
    if (v14 != -1)
    {
      v15 = *(a1 + 24);
      v29 = *(a1 + 32);
      sub_271120E64(v15, &v29, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 51));
    v16 = *(a1 + 40);
    *(a1 + 40) = v16 + 1;
    if (v16 != -1)
    {
      v17 = *(a1 + 24);
      v30 = *(a1 + 32);
      sub_271120E64(v17, &v30, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 52));
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    if (v18 != -1)
    {
      v19 = *(a1 + 24);
      v31 = *(a1 + 32);
      sub_271120E64(v19, &v31, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 53));
    v20 = *(a1 + 40);
    v21 = *(a1 + 34);
    *(a1 + 40) = v20 + 1;
    if (v20 != -1)
    {
      v22 = *(a1 + 24);
      v32 = *(a1 + 32);
      sub_271120E64(v22, &v32, 1);
    }

    v23 = *(a1 + 24);
    v33 = v21;
    sub_271120E64(v23, &v33, 1);
    ++*(a1 + 40);
  }
}

void sub_2714A33F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
  v9 = __src;
  sub_2717312C0(a2);
  sub_2714A35A4(a2, (v3 + 200), v9);
  v10 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v10 + 10) = *(a2 + 32) - v10 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714A35A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A36B8(a1, v5, v3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A36A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

char *sub_2714A36B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  __src = v6;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v8, &v8[v9], v9);
  v10 = *(a2 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 32);
  }

  __src = v10;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v12, &v12[v13], v13);
  v14 = *(a2 + 71);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 56);
  }

  __src = v14;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v15 = *(a2 + 71);
  if (v15 >= 0)
  {
    v16 = (a2 + 48);
  }

  else
  {
    v16 = *(a2 + 48);
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 71);
  }

  else
  {
    v17 = *(a2 + 56);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v16, &v16[v17], v17);
  v18 = *(a2 + 95);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 80);
  }

  __src = v18;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v19 = *(a2 + 95);
  if (v19 >= 0)
  {
    v20 = (a2 + 72);
  }

  else
  {
    v20 = *(a2 + 72);
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 95);
  }

  else
  {
    v21 = *(a2 + 80);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v20, &v20[v21], v21);
  v22 = *(a2 + 119);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 104);
  }

  __src = v22;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v23 = *(a2 + 119);
  if (v23 >= 0)
  {
    v24 = (a2 + 96);
  }

  else
  {
    v24 = *(a2 + 96);
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 119);
  }

  else
  {
    v25 = *(a2 + 104);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v24, &v24[v25], v25);
  v26 = *(a2 + 143);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a2 + 128);
  }

  __src = v26;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v27 = *(a2 + 143);
  if (v27 >= 0)
  {
    v28 = (a2 + 120);
  }

  else
  {
    v28 = *(a2 + 120);
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 143);
  }

  else
  {
    v29 = *(a2 + 128);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v28, &v28[v29], v29);
  sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 144), (a2 + 148), 4);
  v30 = *(a2 + 175);
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a2 + 160);
  }

  __src = v30;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v31 = *(a2 + 175);
  if (v31 >= 0)
  {
    v32 = (a2 + 152);
  }

  else
  {
    v32 = *(a2 + 152);
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 175);
  }

  else
  {
    v33 = *(a2 + 160);
  }

  sub_27173318C((a1 + 24), *(a1 + 32), v32, &v32[v33], v33);
  result = sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 176), (a2 + 192), 16);
  if (a3 >= 2)
  {
    LODWORD(__src) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
    sub_2717312C0(a1);
    sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 192), (a2 + 196), 4);
    sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 196), (a2 + 200), 4);
    sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 200), (a2 + 204), 4);
    sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 204), (a2 + 208), 4);
    sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 208), (a2 + 212), 4);
    result = sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 212), (a2 + 216), 4);
    v35 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v35 + 10) = *(a1 + 32) - v35 - 18;
    *(a1 + 56) -= 8;
  }

  return result;
}

void sub_2714A3AAC(int *a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  sub_2714A0EEC(v5, a2);
  sub_2714A3BC0(a1, v5, v3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A3BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A3BC0(int *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 144))(a1);
  (*(*a1 + 144))(a1, a2 + 24);
  (*(*a1 + 144))(a1, a2 + 48);
  (*(*a1 + 144))(a1, a2 + 72);
  (*(*a1 + 144))(a1, a2 + 96);
  (*(*a1 + 144))(a1, a2 + 120);
  (*(*a1 + 56))(a1, a2 + 144);
  (*(*a1 + 144))(a1, a2 + 152);
  if ((a1[3] & 2) != 0)
  {
    sub_2714A1134(a2 + 176);
  }

  __p = (a2 + 176);
  sub_2714A3F68(a1, &__p);
  if (a3 >= 2)
  {
    v6 = a1[2];
    LODWORD(__p) = 1;
    (*(*a1 + 104))(a1, &__p);
    if (v6 < 1)
    {
      __p = "current";
      v8 = 7;
      v9 = a2 + 192;
      sub_2714A4254(a1, &__p);
      __p = "min";
      v8 = 3;
      v9 = a2 + 204;
      sub_2714A4254(a1, &__p);
    }

    else
    {
      if (v6 == 2)
      {
        LODWORD(__p) = 1;
        (*(*a1 + 104))(a1, &__p);
      }

      (*(*a1 + 16))(a1);
      __p = "current";
      v8 = 7;
      v9 = a2 + 192;
      sub_2714A4254(a1, &__p);
      __p = "min";
      v8 = 3;
      v9 = a2 + 204;
      sub_2714A4254(a1, &__p);
      (*(*a1 + 24))(a1);
    }
  }
}

void sub_2714A3F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714A3F68(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 80))(a1, *a2);
  (*(*a1 + 80))(a1, v3 + 1);
  (*(*a1 + 80))(a1, v3 + 2);
  (*(*a1 + 80))(a1, v3 + 3);
  (*(*a1 + 80))(a1, v3 + 4);
  (*(*a1 + 80))(a1, v3 + 5);
  (*(*a1 + 80))(a1, v3 + 6);
  (*(*a1 + 80))(a1, v3 + 7);
  (*(*a1 + 80))(a1, v3 + 8);
  (*(*a1 + 80))(a1, v3 + 9);
  (*(*a1 + 80))(a1, v3 + 10);
  (*(*a1 + 80))(a1, v3 + 11);
  (*(*a1 + 80))(a1, v3 + 12);
  (*(*a1 + 80))(a1, v3 + 13);
  (*(*a1 + 80))(a1, v3 + 14);
  v4 = *(*a1 + 80);

  return v4(a1, v3 + 15);
}

_BYTE *sub_2714A4254(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((a1[12] & 2) != 0)
  {
    v6 = 0;
    sub_2714A1564(&v7, v5, v3);
  }

  (*(*a1 + 104))(a1, *(a2 + 16));
  (*(*a1 + 104))(a1, v3 + 4);
  (*(*a1 + 104))(a1, v3 + 8);
  return a1;
}

void sub_2714A43D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A43F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A4404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A4418(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_2714A4AA0(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_2714A5BD0(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714A63C8(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_2714A7080(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_2714A7B1C(&v10, v8);
      }

      else
      {
        sub_2714A45E4(&v9, a1);
      }
    }
  }
}

void sub_2714A45E4(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v23);
    sub_2713B2524(v35, v23);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v23);
  sub_2713B2524(v35, v23);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v23[0] = a2[1];
  v20 = v23[0];
  v35[0] = 6;
  v19[13](a2, v35);
  if (v20 < 1)
  {
    if (v35[0] < 3)
    {
      sub_2713C66D4(v35, a2, v3 + 16, v35[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v35[0]);
    }
  }

  else
  {
    sub_2713C62C8(v23, a2, v3 + 16, v35[0]);
  }

  v21 = *a2;
  v23[0] = a2[1];
  v22 = v23[0];
  v35[0] = 2;
  v21[13](a2, v35);
  if (v22 < 1)
  {
    sub_2714A8668(a2, v3 + 200, v35[0]);
  }

  else
  {
    sub_2714A83BC(v23, a2, v3 + 200, v35[0]);
  }
}

void sub_2714A4AA0(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714A4F7C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "user_given_name";
  *(a1 + 96) = 15;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v6, &v20);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v20;
  *(a2 + 16) = v21;
  v7 = *(a1 + 104);
  *(a1 + 88) = "product_name";
  *(a1 + 96) = 12;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v8, &v20);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v20;
  *(a2 + 40) = v21;
  v9 = *(a1 + 104);
  *(a1 + 88) = "type";
  *(a1 + 96) = 4;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v10, &v20);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  v11 = *(a1 + 104);
  *(a1 + 88) = "serial_number";
  *(a1 + 96) = 13;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v12, &v20);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v20;
  *(a2 + 88) = v21;
  v13 = *(a1 + 104);
  *(a1 + 88) = "os_build_version";
  *(a1 + 96) = 16;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v14, &v20);
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  v15 = *(a1 + 104);
  *(a1 + 88) = "os_product_version";
  *(a1 + 96) = 18;
  if ((v15 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v16 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v16, &v20);
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  *(a2 + 120) = v20;
  *(a2 + 136) = v21;
  v17 = *(a1 + 104);
  *(a1 + 88) = "process_id";
  *(a1 + 96) = 10;
  if ((v17 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182EAD4(a1, (a2 + 144));
  v18 = *(a1 + 104);
  *(a1 + 88) = "process_name";
  *(a1 + 96) = 12;
  if ((v18 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v19 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D6E6C(v19, &v20);
  if (*(a2 + 175) < 0)
  {
    operator delete(*(a2 + 152));
  }

  *(a2 + 152) = v20;
  *(a2 + 168) = v21;
  *&v20 = "uuid";
  *(&v20 + 1) = 4;
  v21 = a2 + 176;
  sub_2714A5404(a1, &v20);
}

void sub_2714A53CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A5404(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v8 = 0;
  v7 = 0uLL;
  sub_2715D6E6C(v4, &v7);
  v6 = v8;
  *__p = v7;
  operator new();
}

void sub_2714A550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  a15 = 0;
  sub_27184D728(&a15, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_2714A55A8(uint64_t *a1, _OWORD *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_2714A56E0(a1, __p);
  sub_271817BC0(__p, &v7);
  if ((v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v6);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = v7;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2714A568C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t *sub_2714A56E0(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x2743BE660](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_2714A5970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2714A5930);
  }

  __cxa_rethrow();
}

void sub_2714A5A20(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v8 = 0;
  v7 = 0uLL;
  sub_2715D6E6C(v4, &v7);
  v6 = v8;
  *__p = v7;
  operator new();
}

void sub_2714A5B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a16 = 0;
  sub_27184D728(&a16, v23);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2714A5BD0(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(a2[6], v20);
  sub_2713BF6F4(v20, a2, v3 + 16, LODWORD(v20[0]));
  LODWORD(v20[0]) = 2;
  sub_27183FB7C(a2[6], v20);
  return sub_2714A5FF4(v20, a2, v3 + 200, v20[0]);
}

uint64_t sub_2714A5FF4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  v7 = a2 + 2;
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  if (a4 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4;
  }

  sub_2714A6104(a2, a3, v8);
  v9 = a2[4];
  result = (*(*v7 + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*v7 + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714A6104(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2718403E0(*(a1 + 48), a2);
  sub_2718403E0(*(a1 + 48), (a2 + 24));
  sub_2718403E0(*(a1 + 48), (a2 + 48));
  sub_2718403E0(*(a1 + 48), (a2 + 72));
  sub_2718403E0(*(a1 + 48), (a2 + 96));
  sub_2718403E0(*(a1 + 48), (a2 + 120));
  sub_27183FACC(*(a1 + 48), (a2 + 144));
  sub_2718403E0(*(a1 + 48), (a2 + 152));
  v6 = *(a1 + 48);
  sub_27183F824(v6, (a2 + 176));
  sub_27183F824(v6, (a2 + 177));
  sub_27183F824(v6, (a2 + 178));
  sub_27183F824(v6, (a2 + 179));
  sub_27183F824(v6, (a2 + 180));
  sub_27183F824(v6, (a2 + 181));
  sub_27183F824(v6, (a2 + 182));
  sub_27183F824(v6, (a2 + 183));
  sub_27183F824(v6, (a2 + 184));
  sub_27183F824(v6, (a2 + 185));
  sub_27183F824(v6, (a2 + 186));
  sub_27183F824(v6, (a2 + 187));
  sub_27183F824(v6, (a2 + 188));
  sub_27183F824(v6, (a2 + 189));
  sub_27183F824(v6, (a2 + 190));
  sub_27183F824(v6, (a2 + 191));
  if (a3 >= 2)
  {
    v8 = 1;
    sub_27183FB7C(*(a1 + 48), &v8);
    sub_2714A628C(&v7, a1, (a2 + 192));
  }
}

uint64_t sub_2714A628C(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = 0;
  sub_27183FF6C(a2[6], &v9);
  *&v8 = (*(a2[2] + 32))(a2 + 2);
  *(&v8 + 1) = v9;
  sub_2713BF82C((a2 + 3), &v8);
  sub_27183FB7C(a2[6], a3);
  sub_27183FB7C(a2[6], a3 + 1);
  sub_27183FB7C(a2[6], a3 + 2);
  sub_27183FB7C(a2[6], a3 + 3);
  sub_27183FB7C(a2[6], a3 + 4);
  sub_27183FB7C(a2[6], a3 + 5);
  v5 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(a2[2] + 40))(a2 + 2, v7);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714A63C8(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714A68A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "user_given_name";
  *(a1 + 96) = 15;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v6, &v20);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v20;
  *(a2 + 16) = v21;
  v7 = *(a1 + 104);
  *(a1 + 88) = "product_name";
  *(a1 + 96) = 12;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v8, &v20);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v20;
  *(a2 + 40) = v21;
  v9 = *(a1 + 104);
  *(a1 + 88) = "type";
  *(a1 + 96) = 4;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v10, &v20);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  v11 = *(a1 + 104);
  *(a1 + 88) = "serial_number";
  *(a1 + 96) = 13;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v12, &v20);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v20;
  *(a2 + 88) = v21;
  v13 = *(a1 + 104);
  *(a1 + 88) = "os_build_version";
  *(a1 + 96) = 16;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v14, &v20);
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  v15 = *(a1 + 104);
  *(a1 + 88) = "os_product_version";
  *(a1 + 96) = 18;
  if ((v15 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v16 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v16, &v20);
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  *(a2 + 120) = v20;
  *(a2 + 136) = v21;
  v17 = *(a1 + 104);
  *(a1 + 88) = "process_id";
  *(a1 + 96) = 10;
  if ((v17 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182DB48(a1, (a2 + 144));
  v18 = *(a1 + 104);
  *(a1 + 88) = "process_name";
  *(a1 + 96) = 12;
  if ((v18 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v19 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v21 = 0;
  v20 = 0uLL;
  sub_2715D666C(v19, &v20);
  if (*(a2 + 175) < 0)
  {
    operator delete(*(a2 + 152));
  }

  *(a2 + 152) = v20;
  *(a2 + 168) = v21;
  *&v20 = "uuid";
  *(&v20 + 1) = 4;
  v21 = a2 + 176;
  sub_2714A6D2C(a1, &v20);
}

void sub_2714A6CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A6D2C(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v8 = 0;
  v7 = 0uLL;
  sub_2715D666C(v4, &v7);
  v6 = v8;
  *__p = v7;
  operator new();
}

void sub_2714A6E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  a15 = 0;
  sub_27184D728(&a15, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2714A6ED0(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v8 = 0;
  v7 = 0uLL;
  sub_2715D666C(v4, &v7);
  v6 = v8;
  *__p = v7;
  operator new();
}

void sub_2714A6FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a16 = 0;
  sub_27184D728(&a16, v23);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2714A7080(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v23);
      sub_2713B2524(v37, &v23);
      sub_2713E031C(v3 + 16, v37);
      if (v49 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v48;
          v7 = __p;
          if (v48 != __p)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = __p;
          }

          v48 = v5;
          operator delete(v7);
        }
      }

      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v36 != 1)
      {
        goto LABEL_66;
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      v14 = v35;
      v15 = v34;
      if (v35 == v34)
      {
LABEL_65:
        v35 = v13;
        operator delete(v15);
LABEL_66:
        if (v33 == 1 && v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1 && v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(v25);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }
    }

    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), &v23);
    sub_2713B2524(v37, &v23);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v23) = 6;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v23;
  }

  if (v23 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v23);
      if (SHIBYTE(v25) < 0)
      {
        if (v24 == 1 && *(a2 + 72) == *v23)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v25) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v25) < 0)
      {
LABEL_93:
        operator delete(v23);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v23, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v23) = 2;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v23;
  }

  sub_2714A7614(a2, v3 + 200, v21);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (v24 == 1 && *(a2 + 72) == *v23)
      {
LABEL_108:
        v22 = 0;
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_111;
        }

        goto LABEL_99;
      }
    }

    else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
    {
      goto LABEL_108;
    }

    v22 = 1;
    if (SHIBYTE(v25) < 0)
    {
LABEL_111:
      operator delete(v23);
    }

LABEL_99:
    if ((v22 & 1) == 0)
    {
      return;
    }
  }
}

void sub_2714A7614(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 80);
  *(a1 + 80) = v6 + 1;
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v7 = a2 + 24;
    v8 = v6 + 2;
    *(a1 + 80) = v8;
  }

  else
  {
    sub_27183D78C(a1, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v28;
    ++*(a1 + 104);
    v9 = *(a1 + 128);
    v7 = a2 + 24;
    v8 = *(a1 + 80) + 1;
    *(a1 + 80) = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v10 = a2 + 48;
    v11 = v8 + 1;
    *(a1 + 80) = v11;
    goto LABEL_12;
  }

LABEL_9:
  sub_27183D78C(a1, __p);
  if (*(a2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v12 = *__p;
  *(v7 + 16) = v28;
  *v7 = v12;
  ++*(a1 + 104);
  v13 = *(a1 + 128);
  v10 = a2 + 48;
  v11 = *(a1 + 80) + 1;
  *(a1 + 80) = v11;
  if ((v13 & 1) == 0)
  {
LABEL_14:
    sub_27183D78C(a1, __p);
    if (*(a2 + 71) < 0)
    {
      operator delete(*v10);
    }

    v16 = *__p;
    *(v10 + 16) = v28;
    *v10 = v16;
    ++*(a1 + 104);
    v17 = *(a1 + 128);
    v14 = a2 + 72;
    v15 = *(a1 + 80) + 1;
    *(a1 + 80) = v15;
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_12:
  if (*(a1 + 131) != 1)
  {
    goto LABEL_14;
  }

  *(a1 + 132) = 1;
  v14 = a2 + 72;
  v15 = v11 + 1;
  *(a1 + 80) = v15;
LABEL_17:
  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v18 = a2 + 96;
    v19 = v15 + 1;
    *(a1 + 80) = v19;
    goto LABEL_22;
  }

LABEL_19:
  sub_27183D78C(a1, __p);
  if (*(a2 + 95) < 0)
  {
    operator delete(*v14);
  }

  v20 = *__p;
  *(v14 + 16) = v28;
  *v14 = v20;
  ++*(a1 + 104);
  v21 = *(a1 + 128);
  v18 = a2 + 96;
  v19 = *(a1 + 80) + 1;
  *(a1 + 80) = v19;
  if ((v21 & 1) == 0)
  {
LABEL_24:
    sub_27183D78C(a1, __p);
    if (*(a2 + 119) < 0)
    {
      operator delete(*v18);
    }

    v23 = *__p;
    *(v18 + 16) = v28;
    *v18 = v23;
    ++*(a1 + 104);
    v24 = *(a1 + 128);
    v22 = a2 + 120;
    ++*(a1 + 80);
    if ((v24 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_22:
  if (*(a1 + 131) != 1)
  {
    goto LABEL_24;
  }

  *(a1 + 132) = 1;
  v22 = a2 + 120;
  *(a1 + 80) = v19 + 1;
LABEL_27:
  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    goto LABEL_32;
  }

LABEL_29:
  sub_27183D78C(a1, __p);
  if (*(a2 + 143) < 0)
  {
    operator delete(*v22);
  }

  v25 = *__p;
  *(v22 + 16) = v28;
  *v22 = v25;
  ++*(a1 + 104);
LABEL_32:
  sub_27183A66C(a1, (a2 + 144));
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, __p);
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 152) = *__p;
    *(a2 + 168) = v28;
    ++*(a1 + 104);
  }

  sub_271839D90(a1, (a2 + 176));
  sub_271839D90(a1, (a2 + 177));
  sub_271839D90(a1, (a2 + 178));
  sub_271839D90(a1, (a2 + 179));
  sub_271839D90(a1, (a2 + 180));
  sub_271839D90(a1, (a2 + 181));
  sub_271839D90(a1, (a2 + 182));
  sub_271839D90(a1, (a2 + 183));
  sub_271839D90(a1, (a2 + 184));
  sub_271839D90(a1, (a2 + 185));
  sub_271839D90(a1, (a2 + 186));
  sub_271839D90(a1, (a2 + 187));
  sub_271839D90(a1, (a2 + 188));
  sub_271839D90(a1, (a2 + 189));
  sub_271839D90(a1, (a2 + 190));
  sub_271839D90(a1, (a2 + 191));
  if (a3 >= 2)
  {
    LODWORD(__p[0]) = 1;
    sub_27183A9AC(a1, __p);
    sub_27183A9AC(a1, (a2 + 192));
    sub_27183A9AC(a1, (a2 + 196));
    sub_27183A9AC(a1, (a2 + 200));
    sub_27183A9AC(a1, (a2 + 204));
    sub_27183A9AC(a1, (a2 + 208));
    sub_27183A9AC(a1, (a2 + 212));
    do
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        return;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v28) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_49:
          v26 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_52;
          }

          continue;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_49;
      }

      v26 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_52:
        operator delete(__p[0]);
      }
    }

    while ((v26 & 1) != 0);
  }
}

void sub_2714A7B1C(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v42;
        v11 = __p;
        if (v42 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v42 = v9;
        operator delete(v11);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v17 = v29;
    v15 = v28;
    if (v29 == v28)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v28;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v42;
      v7 = __p;
      if (v42 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v42 = v5;
      operator delete(v7);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v14 = v29;
  v15 = v28;
  if (v29 != v28)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v29 = v13;
  operator delete(v15);
LABEL_66:
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v19, a2, v3 + 16);
  sub_2714A7F0C(v19, a2, v3 + 200);
}

void sub_2714A7F0C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  sub_2714A7FEC(a2, a3, v10);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
}

void sub_2714A7FEC(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2717318E8(a1, a2);
  sub_2717318E8(a1, a2 + 24);
  sub_2717318E8(a1, a2 + 48);
  sub_2717318E8(a1, a2 + 72);
  sub_2717318E8(a1, a2 + 96);
  sub_2717318E8(a1, a2 + 120);
  v6 = a1[6];
  v7 = a1[7];
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_12;
  }

  *(a2 + 144) = *(a1[3] + v6);
  a1[6] += 4;
  sub_2717318E8(a1, a2 + 152);
  v10 = a1[6];
  v11 = a1[7];
  v8 = v11 >= v10;
  v12 = v11 - v10;
  if (!v8)
  {
    v12 = 0;
  }

  if (v12 <= 0xF)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_12:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 176) = *(a1[3] + v10);
  a1[6] += 16;
  if (a3 >= 2)
  {
    sub_2714A815C(&v14, a1, (a2 + 192));
  }
}

_DWORD **sub_2714A815C(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  v13 = a3;
  v14 = a3 + 1;
  v15 = a3 + 2;
  v16 = a2;
  sub_2714A8258(&v13, &v16);
  v13 = a3 + 3;
  v14 = a3 + 4;
  v15 = a3 + 5;
  v16 = a2;
  result = sub_2714A8258(&v13, &v16);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

_DWORD **sub_2714A8258(_DWORD **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 48);
  v4 = *(*a2 + 56);
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    goto LABEL_11;
  }

  **result = *(*(v2 + 24) + v3);
  *(v2 + 48) += 4;
  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = *(*a2 + 56);
  v5 = v9 >= v8;
  v10 = v9 - v8;
  if (!v5)
  {
    v10 = 0;
  }

  if (v10 <= 3)
  {
    goto LABEL_11;
  }

  *result[1] = *(*(v7 + 24) + v8);
  *(v7 + 48) += 4;
  v11 = *a2;
  v12 = *(*a2 + 48);
  v13 = *(*a2 + 56);
  v5 = v13 >= v12;
  v14 = v13 - v12;
  if (!v5)
  {
    v14 = 0;
  }

  if (v14 <= 3)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *result[2] = *(*(v11 + 24) + v12);
  *(v11 + 48) += 4;
  return result;
}

void sub_2714A83BC(int *a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  if (*a1 == 2)
  {
    v12 = 1;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878910))
      {
        sub_2714A8564();
      }

      sub_271847D5C(qword_2808788F8, v11, 2);
    }

    v7 = *a1;
  }

  if (v7 <= 0)
  {
    if (a4 >= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = a4;
    }

    sub_2714A8668(a2, a3, v10);
  }

  else
  {
    (*(*a2 + 16))(a2);
    if (a4 >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a4;
    }

    sub_2714A8668(a2, a3, v9);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714A8638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A8668(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 144))(a1);
  (*(*a1 + 144))(a1, a2 + 24);
  (*(*a1 + 144))(a1, a2 + 48);
  (*(*a1 + 144))(a1, a2 + 72);
  (*(*a1 + 144))(a1, a2 + 96);
  (*(*a1 + 144))(a1, a2 + 120);
  (*(*a1 + 56))(a1, a2 + 144);
  (*(*a1 + 144))(a1, a2 + 152);
  if ((*(a1 + 12) & 2) != 0)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    (*(*a1 + 144))(a1, &__p);
    operator new();
  }

  __p = (a2 + 176);
  sub_2714A89DC(a1, &__p);
  if (a3 >= 2)
  {
    v6 = *a1;
    *&v11 = a1[1];
    v7 = v11;
    LODWORD(__p) = 1;
    (*(v6 + 104))(a1, &__p);
    if (v7 < 1)
    {
      __p = "current";
      v9 = 7;
      v10 = a2 + 192;
      sub_2714A8E7C(a1, &__p);
      __p = "min";
      v9 = 3;
      v10 = a2 + 204;
      sub_2714A8E7C(a1, &__p);
    }

    else
    {
      sub_2714A8CC8(&v11, a1, a2 + 192);
    }
  }
}

void sub_2714A8984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  a15 = 0;
  sub_27184D728(&a15, v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714A89DC(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 80))(a1, *a2);
  (*(*a1 + 80))(a1, v3 + 1);
  (*(*a1 + 80))(a1, v3 + 2);
  (*(*a1 + 80))(a1, v3 + 3);
  (*(*a1 + 80))(a1, v3 + 4);
  (*(*a1 + 80))(a1, v3 + 5);
  (*(*a1 + 80))(a1, v3 + 6);
  (*(*a1 + 80))(a1, v3 + 7);
  (*(*a1 + 80))(a1, v3 + 8);
  (*(*a1 + 80))(a1, v3 + 9);
  (*(*a1 + 80))(a1, v3 + 10);
  (*(*a1 + 80))(a1, v3 + 11);
  (*(*a1 + 80))(a1, v3 + 12);
  (*(*a1 + 80))(a1, v3 + 13);
  (*(*a1 + 80))(a1, v3 + 14);
  v4 = *(*a1 + 80);

  return v4(a1, v3 + 15);
}

_BYTE *sub_2714A8CC8(int *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    LODWORD(v9) = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878930))
      {
        sub_2718519B4(qword_280878918, "cv3d::kit::kio::ProtocolInfoSample]", 0x22uLL);
        __cxa_guard_release(&qword_280878930);
        sub_271847D5C(qword_280878918, v8, 1);
      }

      sub_271847D5C(qword_280878918, v8, 1);
    }

    v5 = *a1;
  }

  if (v5 >= 1)
  {
    (*(*a2 + 16))(a2);
  }

  v9 = "current";
  v10 = 7;
  v11 = a3;
  sub_2714A8E7C(a2, &v9);
  v9 = "min";
  v10 = 3;
  v11 = a3 + 12;
  result = sub_2714A8E7C(a2, &v9);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

_BYTE *sub_2714A8E7C(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  (*(*a1 + 104))(a1, *(a2 + 16));
  (*(*a1 + 104))(a1, v3 + 4);
  (*(*a1 + 104))(a1, v3 + 8);
  return a1;
}

void sub_2714A8FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  a15 = 0;
  sub_27184D728(&a15, v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2714A9050(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131350;
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  *(a1 + 8) = &unk_288131398;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = a1 + 24;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    *(a2 + 16) = v2;
    *v2 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v5;
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  result = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 112) = v10;
  *(a1 + 96) = result;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    result = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = result;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    *(a1 + 144) = 1;
    *(a1 + 160) = 0;
    v11 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
LABEL_8:
      *(a1 + 224) = 0;
      v12 = (a1 + 224);
      *(a1 + 248) = 0;
      if (*(a2 + 248) != 1)
      {
        return result;
      }

LABEL_12:
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      result = *(a2 + 224);
      *(a1 + 224) = result;
      *(a1 + 240) = *(a2 + 240);
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a1 + 248) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 160) = 0;
    v11 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
      goto LABEL_8;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 160);
  v11[1].n128_u64[0] = *(a2 + 176);
  *v11 = result;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 192) = _X2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 224) = 0;
  v12 = (a1 + 224);
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2714A9210(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_2714A9280(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v33);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v33);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v33);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v18);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v18);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v18);
  }

  if (v33 == v18 && v34 == v19 && (v17[0] = &v35, v17[1] = &v38, v17[2] = &v39, v17[3] = &v42, v17[4] = &v45, v16[0] = &v20, v16[1] = &v23, v16[2] = &v24, v16[3] = &v27, v16[4] = &__p, sub_2714FBB90(v17, v16)))
  {
    v17[0] = a1 + 200;
    v16[0] = (a2 + 200);
    v6 = sub_2711B7DB8(v17, v16);
    if (v32 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v6 = 0;
    if (v32 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v31;
    v9 = __p;
    if (v31 == __p)
    {
LABEL_31:
      v31 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v47 == 1)
  {
    v11 = v45;
    if (v45)
    {
      v12 = v46;
      v13 = v45;
      if (v46 == v45)
      {
LABEL_54:
        v46 = v11;
        operator delete(v13);
        goto LABEL_55;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_49:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v45;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  return v6;
}

void sub_2714A960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714A9648(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_2714A9C00(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_2714AAC50(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_2714AB104(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_2714ABAB0(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_2714ABE6C(&v10, v8);
      }

      else
      {
        sub_2714A9814(&v9, a1);
      }
    }
  }
}

void sub_2714A9814(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 1;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_2714AC210(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2714AC210(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_2714A9C00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_2714AA128(uint64_t a1, const void ***a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v9, v10, v5 + 4, (v5 + 4));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  sub_2714AA220(a1, &v9);
  sub_271167834(&v9, v10[0]);
}

void sub_2714AA220(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "context_enable_state_changes";
    *(a1 + 80) = 28;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  if (__p.i64[0] != __p.i64[1])
  {
    v14 = __p.i64[0];
    v15 = __p.i64[0] + 24;
    sub_2714AA6FC(a1, &v14);
  }

  v10 = *(a1 + 56);
  *(a1 + 40) = *(v10 - 8);
  *(a1 + 56) = v10 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_2714AAAF4(&v14, __p.i64[0], 0, __p.i64[1]);
  v6 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v7 = v15;
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v16;
  *(a2 + 16) = v16;
  if (v8)
  {
    *(v7 + 16) = v6;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
    sub_271167834(&v14, 0);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v6;
    sub_271167834(&v14, v7);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v11 = __p.i64[1];
  v12 = v9;
  if (__p.i64[1] != v9)
  {
    do
    {
      v13 = *(v11 - 9);
      v11 -= 4;
      if (v13 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v9);
    v12 = __p.i64[0];
  }

  __p.i64[1] = v9;
  operator delete(v12);
}

void sub_2714AA404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AA424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AA44C(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v3 = a1[2];
  v19 = 0uLL;
  if (v3)
  {
    if (!(v3 >> 59))
    {
      operator new();
    }

    sub_271135560();
  }

  v18 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    v17 = vdupq_n_s64(0);
    goto LABEL_31;
  }

  do
  {
    v5 = *(v4 + 56);
    if (*(v4 + 55) < 0)
    {
      sub_271127178(__p, v4[4], v4[5]);
    }

    else
    {
      *__p = *(v4 + 2);
      v21 = v4[6];
    }

    v22 = v5;
    v6 = v19.i64[0];
    v7 = (v19.i64[1] - v19.i64[0]) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_271135560();
    }

    v9 = -v19.i64[0];
    if (-v19.i64[0] >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v7;
    *v11 = *__p;
    *(v11 + 16) = v21;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    *(v11 + 24) = v5;
    v12 = 32 * v7 + 32;
    v13 = (v11 - 32 * ((v19.i64[1] - v19.i64[0]) >> 5));
    memcpy(v13, v19.i64[0], v19.i64[1] - v19.i64[0]);
    v19.i64[0] = v13;
    if (v6)
    {
      operator delete(v6);
      v19.i64[1] = v12;
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v4[1];
      if (v14)
      {
        do
        {
LABEL_22:
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
        goto LABEL_5;
      }
    }

    else
    {
      v19.i64[1] = v12;
      v14 = v4[1];
      if (v14)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v15 = v4[2];
      v16 = *v15 == v4;
      v4 = v15;
    }

    while (!v16);
LABEL_5:
    v4 = v15;
  }

  while (v15 != v18);
  v17 = v19;
LABEL_31:
  *a2 = v17;
  a2[1].i64[0] = 0;
}

void sub_2714AA6FC(uint64_t a1, uint64_t a2)
{
  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  sub_27182B1E4(a1, *a2);
  v4 = **(a2 + 8);
  v6 = 0;
  sub_2714AA85C(&v7, v5, &v4);
}

void sub_2714AA818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AA834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714AA848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714AAAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AAAF4(void **a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  if (a2 != a4)
  {
    v5 = a2;
    do
    {
      v7 = *(v5 + 24);
      if (*(v5 + 23) < 0)
      {
        sub_271127178(__p, *v5, *(v5 + 1));
      }

      else
      {
        v8 = *v5;
        v10 = *(v5 + 2);
        *__p = v8;
      }

      v11 = v7;
      if (!*sub_2711B1458(a1, a1 + 1, &v13, &v12, __p))
      {
        operator new();
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 2;
    }

    while (v5 != a4);
  }
}

void sub_2714AAC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AAC50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_2718460EC(&v19, 4u);
    }

    else
    {
      sub_27184636C(&v19, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_2718460EC(&v19, 5u);
    }

    else
    {
      sub_27184636C(&v19, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_2718460EC(&v19, 6u);
    }

    else
    {
      sub_27184636C(&v19, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v13 = *(a2 + 24);
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_2718460EC(&v19, 1u);
  }

  else
  {
    sub_27184636C(&v19, (v13 + 8), 1u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714AAEE4(a2, (v3 + 200));
  v14 = *(a2 + 24);
  v15 = *(*(v14 + 88) - 8);
  sub_2718404E0((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_2714AAEE4(uint64_t a1, const void ***a2)
{
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
LABEL_3:
      sub_271846E00((v6 + 8), v5);
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      sub_2711B1344(&v16, &v17, v4 + 4, (v4 + 4));
      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v3);
    v5 = v18;
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_3;
    }
  }

  v20 = (v6 + 16);
  sub_271846AEC(&v20, v5);
LABEL_13:
  v10 = v16;
  if (v16 != &v17)
  {
    do
    {
      v11 = *(a1 + 24);
      if (*(v11 + 40) == 1)
      {
        v20 = (v11 + 16);
        sub_271847238(&v20, v10 + 4);
      }

      else
      {
        sub_271847654((v11 + 8), v10 + 4);
      }

      v12 = *(v10 + 56);
      v19 = *(v10 + 56);
      v13 = *(a1 + 24);
      if (*(v13 + 40) == 1)
      {
        v20 = (v13 + 16);
        sub_2718454CC(&v20, &v19);
      }

      else
      {
        if (v12 < 0)
        {
          LOBYTE(v20) = -52;
          BYTE1(v20) = v12;
        }

        else
        {
          LOBYTE(v20) = v12;
        }

        std::ostream::write();
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v9 = *v15 == v10;
          v10 = v15;
        }

        while (!v9);
      }

      v10 = v15;
    }

    while (v15 != &v17);
  }

  sub_271167834(&v16, v17);
}

void sub_2714AB104(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_2714AB62C(uint64_t a1, const void ***a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v9, v10, v5 + 4, (v5 + 4));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  sub_2714AB724(a1, &v9);
  sub_271167834(&v9, v10[0]);
}

void sub_2714AB724(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "context_enable_state_changes";
    *(a1 + 80) = 28;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  if (__p.i64[0] != __p.i64[1])
  {
    v14 = __p.i64[0];
    v15 = __p.i64[0] + 24;
    sub_2714AB950(a1, &v14);
  }

  v10 = *(a1 + 56);
  *(a1 + 40) = *(v10 - 8);
  *(a1 + 56) = v10 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_2714AAAF4(&v14, __p.i64[0], 0, __p.i64[1]);
  v6 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v7 = v15;
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v16;
  *(a2 + 16) = v16;
  if (v8)
  {
    *(v7 + 16) = v6;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
    sub_271167834(&v14, 0);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v6;
    sub_271167834(&v14, v7);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v11 = __p.i64[1];
  v12 = v9;
  if (__p.i64[1] != v9)
  {
    do
    {
      v13 = *(v11 - 9);
      v11 -= 4;
      if (v13 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v9);
    v12 = __p.i64[0];
  }

  __p.i64[1] = v9;
  operator delete(v12);
}

void sub_2714AB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AB928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AB93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AB950(uint64_t a1, uint64_t a2)
{
  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  sub_271829354(a1, *a2);
  v4 = **(a2 + 8);
  v6 = 0;
  sub_2714AA85C(&v7, v5, &v4);
}

void sub_2714ABA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ABA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714ABA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2714ABAB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2714ABCC4(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_2714ABCC4(uint64_t a1, const void ***a2)
{
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v13, &v14, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v15;
    if (!*(a1 + 40))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = 0;
  if (*(a1 + 40))
  {
LABEL_12:
    v9 = *(a1 + 24);
    v16 = *(a1 + 32);
    sub_271120E64(v9, &v16, 1);
  }

LABEL_13:
  MEMORY[0x2743BE850](*(a1 + 24), v5);
  ++*(a1 + 40);
  v10 = v13;
  if (v13 != &v14)
  {
    do
    {
      sub_271839128(a1, (v10 + 4));
      v16 = *(v10 + 56);
      sub_2718388F8(a1, &v16);
      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v8 = *v12 == v10;
          v10 = v12;
        }

        while (!v8);
      }

      v10 = v12;
    }

    while (v12 != &v14);
  }

  sub_271167834(&v13, v14);
}

void sub_2714ABE6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_2717312C0(a2);
  sub_2714AC020(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714AC020(uint64_t a1, const void ***a2)
{
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    do
    {
      sub_2711B1344(&v16, &v17, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v18;
  }

  __src = v5;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v20, 8);
  v9 = v16;
  if (v16 != &v17)
  {
    do
    {
      v10 = *(v9 + 55);
      if ((v10 & 0x80u) != 0)
      {
        v10 = v9[5];
      }

      __src = v10;
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v20, 8);
      v11 = *(v9 + 55);
      if (v11 >= 0)
      {
        v12 = (v9 + 4);
      }

      else
      {
        v12 = v9[4];
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 55);
      }

      else
      {
        v13 = v9[5];
      }

      sub_27173318C((a1 + 24), *(a1 + 32), v12, &v12[v13], v13);
      LOBYTE(__src) = *(v9 + 56);
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v8 = *v15 == v9;
          v9 = v15;
        }

        while (!v8);
      }

      v9 = v15;
    }

    while (v15 != &v17);
  }

  sub_271167834(&v16, v17);
}

void sub_2714AC210(uint64_t a1, const void ***a2)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    do
    {
      sub_2711B1344(&v12, &v13, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v14;
  }

  v15 = v5;
  (*(*a1 + 120))(a1, &v15);
  v9 = v12;
  if (v12 != &v13)
  {
    do
    {
      (*(*a1 + 144))(a1, v9 + 4);
      LOBYTE(v15) = *(v9 + 56);
      (*(*a1 + 80))(a1, &v15);
      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v8 = *v11 == v9;
          v9 = v11;
        }

        while (!v8);
      }

      v9 = v11;
    }

    while (v11 != &v13);
  }

  sub_271167834(&v12, v13);
}

void sub_2714AC3E8(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_2714ACA6C(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_2714AD638(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714ADC38(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_2714AE694(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_2714AED5C(&v10, v8);
      }

      else
      {
        sub_2714AC5B4(&v9, a1);
      }
    }
  }
}

void sub_2714AC5B4(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v23);
    sub_2713B2524(v35, v23);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v23);
  sub_2713B2524(v35, v23);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v23[0] = a2[1];
  v20 = v23[0];
  v35[0] = 6;
  v19[13](a2, v35);
  if (v20 < 1)
  {
    if (v35[0] < 3)
    {
      sub_2713C66D4(v35, a2, v3 + 16, v35[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v35[0]);
    }
  }

  else
  {
    sub_2713C62C8(v23, a2, v3 + 16, v35[0]);
  }

  v21 = *a2;
  v23[0] = a2[1];
  v22 = v23[0];
  v35[0] = 1;
  v21[13](a2, v35);
  if (v22 < 1)
  {
    sub_2714AF558(a2, v3 + 200);
  }

  else
  {
    sub_2714AF3C4(v23, a2, v3 + 200);
  }
}