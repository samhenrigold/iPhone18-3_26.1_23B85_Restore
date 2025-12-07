void sub_27147D2C0(uint64_t *a1, void *a2)
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
  sub_27142E8EC(v19, a2, (v3 + 200));
}

uint64_t sub_27147D6B0(uint64_t a1, uint64_t a2)
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
    v6 = sub_2715CCD74((a1 + 200), (a2 + 200));
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

void sub_27147DA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27147DA60(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_27147E018(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_27147E464(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
  if (v6)
  {
    sub_27147E6F8(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
  if (v7)
  {
    sub_27147EB44(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
  if (v8)
  {
    sub_27147ED58(&v10, v8);
  }

  sub_27147DC2C(&v9, a1);
}

void sub_27147DC2C(uint64_t *a1, _DWORD *a2)
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
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 >= 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_27143E230(a2, (v3 + 200));
  }

  sub_27143E230(a2, (v3 + 200));
}

void sub_27147E018(uint64_t *a1, uint64_t a2)
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

void sub_27147E464(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v14 = (v7 + 16);
      sub_2718460EC(&v14, 4u);
    }

    else
    {
      sub_27184636C(&v14, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v14 = (v6 + 16);
      sub_2718460EC(&v14, 5u);
    }

    else
    {
      sub_27184636C(&v14, (v6 + 8), 5u);
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
      v14 = (v5 + 16);
      sub_2718460EC(&v14, 6u);
    }

    else
    {
      sub_27184636C(&v14, (v5 + 8), 6u);
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
    v14 = (v13 + 16);
    sub_2718460EC(&v14, 2u);
  }

  else
  {
    sub_27184636C(&v14, (v13 + 8), 2u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_27143A0B8(a2, (v3 + 200));
}

void sub_27147E6F8(uint64_t *a1, uint64_t a2)
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

void sub_27147EB44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v12 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_271120E64(v12, &v15, 1);
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
        v13 = *(a2 + 32);
        sub_271120E64(v5, &v13, 1);
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
      v16 = *(a2 + 32);
      sub_271120E64(v8, &v16, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v14 = *(a2 + 32);
      sub_271120E64(v7, &v14, 1);
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
  v17 = v6;
  sub_271120E64(v9, &v17, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v18 = *(a2 + 32);
    sub_271120E64(v11, &v18, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_27143C798(a2, (v3 + 200));
}

void sub_27147ED58(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v10, 4);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v10, 4);
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
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v10, 4);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v10, 4);
  sub_2717312C0(a2);
  sub_27143D504(a2, (v3 + 200));
}

void sub_27147EF0C(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_27147F594(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_27147F9BC(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v6)
  {
    sub_27147FDE0(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v7)
  {
    sub_271480208(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v8)
  {
    sub_2714807A4(&v10, v8);
  }

  sub_27147F0D8(&v9, a1);
}

void sub_27147F0D8(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v33 == v32)
    {
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
      if (v22 >= 1)
      {
        sub_271449EEC(v23, a2, (v3 + 200), v35[0]);
      }

      sub_27144A0A0(a2, (v3 + 200), v35[0]);
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

void sub_27147F594(uint64_t *a1, uint64_t a2)
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

void sub_27147F9BC(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v29 == v28)
    {
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
      LODWORD(v19[0]) = 6;
      sub_27183FB7C(a2[6], v19);
      sub_2713BF6F4(v19, a2, v3 + 16, LODWORD(v19[0]));
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(a2[6], v19);
      sub_27143FF74(v19, a2, (v3 + 200), LODWORD(v19[0]));
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

void sub_27147FDE0(uint64_t *a1, uint64_t a2)
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

void sub_271480208(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22[0]) = 6;
    sub_27183A9AC(a2, v22);
    if (LODWORD(v22[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = LODWORD(v22[0]);
    }

    if (LODWORD(v22[0]) <= 2)
    {
      sub_2713C30AC(v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22[0]) = 2;
      sub_27183A9AC(a2, v22);
      if (LODWORD(v22[0]) >= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = LODWORD(v22[0]);
      }

      sub_271444404(a2, (v3 + 200), v21);
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v22);
    sub_2713B2524(v35, v22);
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
    if (v33 == v32)
    {
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
        operator delete(v23);
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

  sub_271399EB0((v3 + 16), v22);
  sub_2713B2524(v35, v22);
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

void sub_2714807A4(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v29 == v28)
    {
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
      sub_271447050(v19, a2, (v3 + 200));
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

BOOL sub_271480B94(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v40);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v40);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v40);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v25);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v25);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v25);
  }

  if (v40 == v25 && v41 == v26)
  {
    v24[0] = &v42;
    v24[1] = &v45;
    v24[2] = &v46;
    v24[3] = &v49;
    v24[4] = &v52;
    v23[0] = &v27;
    v23[1] = &v30;
    v23[2] = &v31;
    v23[3] = &v34;
    v23[4] = &__p;
    if (sub_2714FBB90(v24, v23))
    {
      if (*(a1 + 200) != *(a2 + 200))
      {
        v7 = 0;
        goto LABEL_27;
      }

      v6 = *(a1 + 232);
      if (v6 == *(a2 + 232))
      {
        v7 = 1;
        if (v6)
        {
          v8 = *(a1 + 224);
          v9 = *(a2 + 224);
          if (v8 != v9)
          {
            v10 = v6 - 1;
            do
            {
              v11 = v10;
              v12 = *v8;
              v13 = *v9;
              v7 = v12 == v13;
              if (v12 != v13)
              {
                break;
              }

              ++v8;
              ++v9;
              v10 = v11 - 1;
            }

            while (v11);
          }
        }

LABEL_27:
        if (v39 != 1)
        {
          goto LABEL_41;
        }

        goto LABEL_28;
      }
    }
  }

  v7 = 0;
  if (v39 != 1)
  {
    goto LABEL_41;
  }

LABEL_28:
  v14 = __p;
  if (__p)
  {
    v15 = v38;
    v16 = __p;
    if (v38 == __p)
    {
LABEL_40:
      v38 = v14;
      operator delete(v16);
      goto LABEL_41;
    }

    while (1)
    {
      v17 = v15;
      if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
      {
        operator delete(*(v15 - 8));
        v15 -= 12;
        if (*(v17 - 72) == 1)
        {
LABEL_35:
          if (*(v17 - 73) < 0)
          {
            operator delete(*v15);
          }
        }
      }

      else
      {
        v15 -= 12;
        if (*(v17 - 72) == 1)
        {
          goto LABEL_35;
        }
      }

      if (v15 == v14)
      {
        v16 = __p;
        goto LABEL_40;
      }
    }
  }

LABEL_41:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v54 == 1)
  {
    v18 = v52;
    if (v52)
    {
      v19 = v53;
      v20 = v52;
      if (v53 == v52)
      {
LABEL_63:
        v53 = v18;
        operator delete(v20);
        goto LABEL_64;
      }

      while (1)
      {
        v21 = v19;
        if (*(v19 - 16) == 1 && *(v19 - 41) < 0)
        {
          operator delete(*(v19 - 8));
          v19 -= 12;
          if (*(v21 - 72) == 1)
          {
LABEL_58:
            if (*(v21 - 73) < 0)
            {
              operator delete(*v19);
            }
          }
        }

        else
        {
          v19 -= 12;
          if (*(v21 - 72) == 1)
          {
            goto LABEL_58;
          }
        }

        if (v19 == v18)
        {
          v20 = v52;
          goto LABEL_63;
        }
      }
    }
  }

LABEL_64:
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  return v7;
}

void sub_271480F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_271480FA0(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_271481558(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_271481A84(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_271481D18(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_271482244(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_271482458(&v10, v8);
      }

      else
      {
        sub_27148116C(&v9, a1);
      }
    }
  }
}

void sub_27148116C(uint64_t *a1, _DWORD *a2)
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
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_27144E11C(a2, v3 + 200);
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_27144E11C(a2, v3 + 200);
    (*(*a2 + 24))(a2);
  }
}

void sub_271481558(uint64_t *a1, uint64_t a2)
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

void sub_271481A84(uint64_t *a1, uint64_t a2)
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
  sub_27144DC04(a2, (v3 + 200));
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

void sub_271481D18(uint64_t *a1, uint64_t a2)
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

void *sub_271482244(uint64_t *a1, uint64_t a2)
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
  sub_27144DF20(a2, (v3 + 200));
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

void sub_271482458(uint64_t *a1, uint64_t a2)
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
  __src = 2;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_2717312C0(a2);
  sub_27144E030(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_27148260C(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_271482CB0(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_2714830D8(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v6)
  {
    sub_2714834FC(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v7)
  {
    sub_271483924(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v8)
  {
    sub_271483ED4(&v10, v8);
  }

  sub_2714827D8(&v9, a1);
}

void sub_2714827D8(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v33 == v32)
    {
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
      if (v22 >= 1)
      {
        sub_27144FEC8(v23, a2, (v3 + 200), v35[0]);
      }

      if (v35[0] >= 2)
      {
        sub_27145022C(a2, (v3 + 200));
      }

      sub_2714500A8(v35, a2, v3 + 200, v35[0]);
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

void sub_271482CB0(uint64_t *a1, uint64_t a2)
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

void sub_2714830D8(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v29 == v28)
    {
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
      LODWORD(v19[0]) = 6;
      sub_27183FB7C(a2[6], v19);
      sub_2713BF6F4(v19, a2, v3 + 16, LODWORD(v19[0]));
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(a2[6], v19);
      sub_27144E838(v19, a2, (v3 + 200), LODWORD(v19[0]));
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

void sub_2714834FC(uint64_t *a1, uint64_t a2)
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

void sub_271483924(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22[0]) = 6;
    sub_27183A9AC(a2, v22);
    if (LODWORD(v22[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = LODWORD(v22[0]);
    }

    if (LODWORD(v22[0]) <= 2)
    {
      sub_2713C30AC(v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22[0]) = 2;
      sub_27183A9AC(a2, v22);
      if (LODWORD(v22[0]) >= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = LODWORD(v22[0]);
      }

      if (LODWORD(v22[0]) > 1)
      {
        sub_27144F504(a2, (v3 + 200));
      }

      sub_27144F380(v22, a2, v3 + 200, v21);
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v22);
    sub_2713B2524(v35, v22);
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
    if (v33 == v32)
    {
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
        operator delete(v23);
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

  sub_271399EB0((v3 + 16), v22);
  sub_2713B2524(v35, v22);
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

void sub_271483ED4(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
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
    if (v29 == v28)
    {
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
      sub_27144F79C(v19, a2, (v3 + 200));
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

void sub_2714842E4(void *a1)
{
  *a1 = &unk_28810C528;
  sub_2714852FC(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271484348(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878D10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878D10))
    {
      sub_271485BA8();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_280878CF8, "{", __p, ",", v2 + 120, "}");
}

void sub_271484448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271484464(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 10;
}

uint64_t sub_2714844E0(uint64_t a1)
{
  *a1 = &unk_288131F88;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 40));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 63) < 0)
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

void sub_27148458C(uint64_t a1)
{
  sub_2714852FC(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714845C4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878CF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878CF0))
    {
      sub_271485914();
    }
  }

  sub_2714853C8(qword_280878CD8, "{", a1 + 8, ",", a1 + 128, "}");
}

void sub_271484678(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2714846A4(uint64_t a1)
{
  *a1 = &unk_288131F88;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a1 + 8));
LABEL_5:

    JUMPOUT(0x2743BF050);
  }

LABEL_10:
  operator delete(*(a1 + 40));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_11;
}

uint64_t sub_271484760(char *a1, char *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131FA8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6[0] = a1 + 8;
      v6[1] = a1 + 32;
      v6[2] = a1 + 40;
      v6[3] = a1 + 64;
      v6[4] = a1 + 72;
      v6[5] = a1 + 96;
      v5[0] = result + 8;
      v5[1] = result + 32;
      v5[2] = result + 40;
      v5[3] = result + 64;
      v5[4] = result + 72;
      v5[5] = result + 96;
      return sub_271484900(v6, v5);
    }
  }

  return result;
}

void sub_27148484C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878CD0))
  {
    sub_2718519B4(qword_280878CB8, "cv3d::kit::viz::TextLog]", 0x17uLL);
    __cxa_guard_release(&qword_280878CD0);
  }

  sub_271484AC8(qword_280878CB8, "{", (a1 + 8), "}");
}

BOOL sub_271484900(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = v3 >= 0 ? *a1 : **a1;
  v10 = v6 >= 0 ? *a2 : *v2;
  if (memcmp(v9, v10, v4) || **(a1 + 8) != *a2[1])
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = a2[2];
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v12 + 8);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v17 = v13 >= 0 ? *(a1 + 16) : *v11;
  v18 = v16 >= 0 ? a2[2] : *v12;
  if (memcmp(v17, v18, v14) || **(a1 + 24) != *a2[3])
  {
    return 0;
  }

  v19 = *(a1 + 32);
  v20 = a2[4];
  v21 = *(v19 + 23);
  if (v21 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = *(v20 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 8);
  }

  if (v22 != v23)
  {
    return 0;
  }

  v25 = v21 >= 0 ? *(a1 + 32) : *v19;
  v26 = v24 >= 0 ? a2[4] : *v20;
  if (memcmp(v25, v26, v22))
  {
    return 0;
  }

  v27 = *(a1 + 40);
  v28 = a2[5];
  v29 = *(v27 + 23);
  if (v29 >= 0)
  {
    v30 = *(v27 + 23);
  }

  else
  {
    v30 = *(v27 + 8);
  }

  v31 = *(v28 + 23);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v28 + 8);
  }

  if (v30 != v31)
  {
    return 0;
  }

  if (v29 >= 0)
  {
    v33 = *(a1 + 40);
  }

  else
  {
    v33 = *v27;
  }

  if (v32 >= 0)
  {
    v34 = a2[5];
  }

  else
  {
    v34 = *v28;
  }

  return memcmp(v33, v34, v30) == 0;
}

void sub_271484AC8(__int128 *a1, __int128 *a2, std::string *a3, __int128 *a4)
{
  v8 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v6, *a1, *(a1 + 1));
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 2);
  }

  v8 = 1;
  v9 = &v6;
  v10 = a2;
  v11 = &v6;
  v12 = a2;
  v13 = a2;
  sub_271136F58(&v11, &v6);
  v9 = a3;
  v10 = &a3[1];
  v11 = &a3[1].__r_.__value_.__r.__words[1];
  v12 = &a3[2].__r_.__value_.__r.__words[1];
  v13 = &a3[2].__r_.__value_.__r.__words[2];
  v14 = &a3[3].__r_.__value_.__s.__data_[16];
  v16 = &v6;
  v17 = "{";
  v18 = &v6;
  v19 = "{";
  v20 = "{";
  if (v8 != -1)
  {
    v21 = &v16;
    (*(&off_2881319B8 + v8))(&v21, &v6);
    LOBYTE(v16) = 1;
    v17 = &v6;
    v18 = &v15;
    sub_271484D28(&v9, &v16);
  }

  sub_2711308D4();
}

void sub_271484D28(std::string **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v10 = *(a2 + 8);
    v11 = ",";
    v12 = v10;
    v13 = ",";
    v14 = ",";
    v5 = *(v10 + 24);
    if (v5 == -1)
    {
      goto LABEL_9;
    }

    v9.__r_.__value_.__r.__words[0] = &v10;
    (*(&off_2881319B8 + v5))(&v9);
  }

  *a2 = 0;
  v10 = *(a2 + 8);
  v11 = v4;
  v12 = v10;
  v13 = v4;
  v14 = v4;
  v6 = *(v10 + 24);
  if (v6 != -1)
  {
    v9.__r_.__value_.__r.__words[0] = &v10;
    (off_2881319A0[v6])(&v9);
    v7 = a1[1];
    if (*a2)
    {
      goto LABEL_8;
    }

    v10 = *(a2 + 8);
    v11 = ",";
    v12 = v10;
    v13 = ",";
    v14 = ",";
    v8 = *(v10 + 24);
    if (v8 != -1)
    {
      v9.__r_.__value_.__r.__words[0] = &v10;
      (*(&off_2881319B8 + v8))(&v9);
LABEL_8:
      *a2 = 0;
      sub_2714850B0(&v10, *(a2 + 8), v7);
    }
  }

LABEL_9:
  sub_2711308D4();
}

void sub_271485094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714852B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714852FC(uint64_t a1)
{
  *a1 = &unk_288131F40;
  sub_271134CBC(a1 + 144);
  *(a1 + 8) = &unk_288131F88;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 48));
      if ((*(a1 + 39) & 0x80000000) == 0)
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
  if (*(a1 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 16));
  return a1;
}

void sub_2714853C8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_2714855F8(&v8, &v9, a3);
}

void sub_271485568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271485580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271485594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878CD0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714859E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271485B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271485BA8()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271485DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

__n128 sub_271485E94(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131F40;
  *(a1 + 8) = &unk_288131F88;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  v6 = *(a2 + 128);
  *(a1 + 144) = 0;
  *(a1 + 128) = v6;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  result = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v9;
  *(a1 + 176) = result;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    result = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = result;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = 1;
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
LABEL_5:
      *(a1 + 304) = 0;
      *(a1 + 328) = 0;
      if (*(a2 + 328) != 1)
      {
        return result;
      }

LABEL_9:
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      result = *(a2 + 304);
      *(a1 + 304) = result;
      *(a1 + 320) = *(a2 + 320);
      *(a2 + 304) = 0;
      *(a2 + 312) = 0;
      *(a2 + 320) = 0;
      *(a1 + 328) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 240);
  v10[1].n128_u64[0] = *(a2 + 256);
  *v10 = result;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 272) = _X2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    goto LABEL_9;
  }

  return result;
}

BOOL sub_271486088(uint64_t a1, uint64_t a2)
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
    v6 = sub_271486438((a1 + 200), (a2 + 200));
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

void sub_2714863FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

BOOL sub_271486438(void *a1, void *a2)
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

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 24) != *(v6 + 24))
  {
    return 0;
  }

  v8 = *(v7 + 55);
  if (v8 >= 0)
  {
    v9 = *(v7 + 55);
  }

  else
  {
    v9 = v7[5];
  }

  v10 = *(v6 + 55);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[5];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 4 : v7[4];
  v13 = v11 >= 0 ? v6 + 4 : v6[4];
  if (memcmp(v12, v13, v9) || *(v7 + 14) != *(v6 + 14))
  {
    return 0;
  }

  v14 = *(v7 + 87);
  if (v14 >= 0)
  {
    v15 = *(v7 + 87);
  }

  else
  {
    v15 = v7[9];
  }

  v16 = *(v6 + 87);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = v6[9];
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? v7 + 8 : v7[8];
  v19 = v17 >= 0 ? v6 + 8 : v6[8];
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  v20 = *(v7 + 111);
  if (v20 >= 0)
  {
    v21 = *(v7 + 111);
  }

  else
  {
    v21 = v7[12];
  }

  v22 = *(v6 + 111);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v6[12];
  }

  if (v21 != v22)
  {
    return 0;
  }

  if (v20 >= 0)
  {
    v24 = v7 + 11;
  }

  else
  {
    v24 = v7[11];
  }

  if (v23 >= 0)
  {
    v25 = v6 + 11;
  }

  else
  {
    v25 = v6[11];
  }

  return memcmp(v24, v25, v21) == 0;
}

void sub_2714865F8(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_271486B04(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_2714873C8(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_271487804(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_271487F64(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_271488270(&v10, v8);
      }

      else
      {
        sub_2714867C4(&v9, a1);
      }
    }
  }
}

void sub_2714867C4(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v11 = 4;
    (*(*a2 + 104))(a2, &v11);
    v10 = v11;
    if (v9 < 1)
    {
      sub_2713DFA84(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v9 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713DFA84(a2, v3 + 16, v10);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v11 = 5;
    (*(*a2 + 104))(a2, &v11);
    v8 = v11;
    if (v7 < 1)
    {
      sub_2713DF128(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v7 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713DF128(a2, v3 + 16, v8);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v11 = 6;
    (*(*a2 + 104))(a2, &v11);
    v6 = v11;
    if (v5 < 1)
    {
      sub_2713B9F84(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v5 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713B9F84(a2, v3 + 16, v6);
  }

  (*(*a2 + 24))(a2);
LABEL_17:
  v11 = 1;
  (*(*a2 + 104))(a2, &v11);
  sub_271488660(a2, (v3 + 200));
}

void sub_271486B04(uint64_t *a1, uint64_t a2)
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

void sub_271487038(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(v16, a1[1]);
  sub_27182B1E4(v1, v16);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_2718289B0(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_2715CC40C(&v27, v7);
  }

  sub_27182B1E4(v1, &v19);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_2718289B0(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_2715CC40C(&v27, v14);
  }

  sub_27182B1E4(v1, &v22);
  sub_27182B1E4(v1, &__p);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16[0]);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_27148722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271487264(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_271127178((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  return a1;
}

void sub_271487354(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2714873C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v14[0] = (v7 + 16);
      sub_2718460EC(v14, 4u);
    }

    else
    {
      sub_27184636C(v14, (v7 + 8), 4u);
    }

    sub_271840ADC(a2[3]);
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v14[0] = (v6 + 16);
      sub_2718460EC(v14, 5u);
    }

    else
    {
      sub_27184636C(v14, (v6 + 8), 5u);
    }

    sub_271840ADC(a2[3]);
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v14[0] = (v5 + 16);
      sub_2718460EC(v14, 6u);
    }

    else
    {
      sub_27184636C(v14, (v5 + 8), 6u);
    }

    sub_271840ADC(a2[3]);
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = a2[3];
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

  v13 = a2[3];
  if (*(v13 + 40) == 1)
  {
    v14[0] = (v13 + 16);
    sub_2718460EC(v14, 1u);
  }

  else
  {
    sub_27184636C(v14, (v13 + 8), 1u);
  }

  v15 = 1;
  v14[0] = a2;
  v14[1] = (v3 + 200);
  v14[2] = &v15;
  sub_2714875DC(v14);
}

void sub_2714875DC(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(v8, a1[1]);
  v2 = *(v1 + 24);
  if (*(v2 + 40) == 1)
  {
    v18 = (v2 + 16);
    sub_271847238(&v18, v8);
  }

  else
  {
    sub_271847654((v2 + 8), v8);
  }

  v3 = *(v1 + 24);
  if (*(v3 + 40) == 1)
  {
    v18 = (v3 + 16);
    sub_2718454CC(&v18, v10);
  }

  else
  {
    if (v10[0] < 0)
    {
      LOBYTE(v18) = -52;
      BYTE1(v18) = v10[0];
    }

    else
    {
      LOBYTE(v18) = v10[0];
    }

    std::ostream::write();
  }

  v4 = *(v1 + 24);
  if (*(v4 + 40) == 1)
  {
    v18 = (v4 + 16);
    sub_271847238(&v18, v11);
  }

  else
  {
    sub_271847654((v4 + 8), v11);
  }

  v5 = *(v1 + 24);
  if (*(v5 + 40) == 1)
  {
    v18 = (v5 + 16);
    sub_2718460EC(&v18, v13);
  }

  else
  {
    sub_27184636C(&v18, (v5 + 8), v13);
  }

  v6 = *(v1 + 24);
  if (*(v6 + 40) == 1)
  {
    v18 = (v6 + 16);
    sub_271847238(&v18, v14);
  }

  else
  {
    sub_271847654((v6 + 8), v14);
  }

  v7 = *(v1 + 24);
  if (*(v7 + 40) == 1)
  {
    v18 = (v7 + 16);
    sub_271847238(&v18, __p);
  }

  else
  {
    sub_271847654((v7 + 8), __p);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v14[0]);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v8[0]);
    return;
  }

LABEL_29:
  operator delete(v11[0]);
  if (v9 < 0)
  {
    goto LABEL_30;
  }
}

void sub_2714877F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271487804(uint64_t *a1, uint64_t a2)
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

void sub_271487D38(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(v16, a1[1]);
  sub_271829354(v1, v16);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_27182815C(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_2715CA870(&v27, v7);
  }

  sub_271829354(v1, &v19);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_27182815C(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_2715CA870(&v27, v14);
  }

  sub_271829354(v1, &v22);
  sub_271829354(v1, &__p);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16[0]);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_271487F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

void sub_271487F64(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v12 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v12, v13, 1);
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
        LOBYTE(v13[0]) = *(a2 + 32);
        sub_271120E64(v5, v13, 1);
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
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v8, v13, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v7, v13, 1);
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
  LOBYTE(v13[0]) = v6;
  sub_271120E64(v9, v13, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    LOBYTE(v13[0]) = *(a2 + 32);
    sub_271120E64(v11, v13, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  v14 = 1;
  v13[0] = a2;
  v13[1] = v3 + 200;
  v13[2] = &v14;
  sub_271488144(v13);
}

void sub_271488144(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(v3, a1[1]);
  sub_271839128(v1, v3);
  sub_2718388F8(v1, v5);
  sub_271839128(v1, &v6);
  if (*(v1 + 40))
  {
    v2 = *(v1 + 24);
    v13 = *(v1 + 32);
    sub_271120E64(v2, &v13, 1);
  }

  MEMORY[0x2743BE7F0](*(v1 + 24), v8);
  ++*(v1 + 40);
  sub_271839128(v1, &v9);
  sub_271839128(v1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v3[0]);
    return;
  }

LABEL_10:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_11;
  }
}

void sub_27148825C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271488270(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v9[0]) = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), v9, v9 + 4, 4);
    v7 = LODWORD(v9[0]);
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v9[0]) = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), v9, v9 + 4, 4);
    v6 = v9[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v9[0]) = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), v9, v9 + 4, 4);
    v5 = LODWORD(v9[0]);
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v9[0]) = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), v9, v9 + 4, 4);
  v10 = v9[0];
  v9[0] = a2;
  v9[1] = v3 + 200;
  v9[2] = &v10;
  sub_2714883F8(v9);
}

void sub_2714883F8(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(&v14, a1[1]);
  v2 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v2 = v15;
  }

  __src = v2;
  sub_27173318C((v1 + 24), *(v1 + 32), &__src, &v31, 8);
  if ((v16 & 0x80u) == 0)
  {
    v3 = &v14;
  }

  else
  {
    v3 = v14;
  }

  if ((v16 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v15;
  }

  sub_27173318C((v1 + 24), *(v1 + 32), v3, &v3[v4], v4);
  sub_27173318C((v1 + 24), *(v1 + 32), &v17, v18, 1);
  v5 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v5 = v20;
  }

  __src = v5;
  sub_27173318C((v1 + 24), *(v1 + 32), &__src, &v31, 8);
  if ((v21 & 0x80u) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19;
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v20;
  }

  sub_27173318C((v1 + 24), *(v1 + 32), v6, &v6[v7], v7);
  sub_27173318C((v1 + 24), *(v1 + 32), v22, v23, 4);
  v8 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v8 = v25;
  }

  __src = v8;
  sub_27173318C((v1 + 24), *(v1 + 32), &__src, &v31, 8);
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24;
  }

  else
  {
    v9 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v25;
  }

  sub_27173318C((v1 + 24), *(v1 + 32), v9, &v9[v10], v10);
  v11 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v11 = v28;
  }

  __src = v11;
  sub_27173318C((v1 + 24), *(v1 + 32), &__src, &v31, 8);
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v13 = v29;
  }

  else
  {
    v13 = v28;
  }

  sub_27173318C((v1 + 24), *(v1 + 32), p_p, &p_p[v13], v13);
  if (v29 < 0)
  {
    operator delete(__p);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v24);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v14);
    return;
  }

LABEL_40:
  operator delete(v19);
  if (v16 < 0)
  {
    goto LABEL_41;
  }
}

void sub_27148864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271488660(uint64_t a1, __int128 *a2)
{
  sub_271487264(v3, a2);
  (*(*a1 + 144))(a1, v3);
  (*(*a1 + 80))(a1, &v5);
  (*(*a1 + 144))(a1, &v6);
  (*(*a1 + 104))(a1, &v8);
  (*(*a1 + 144))(a1, &v9);
  (*(*a1 + 144))(a1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v3[0]);
    return;
  }

LABEL_8:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_9;
  }
}

void sub_271488820(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_271488F7C(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_271489598(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714899F0(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_27148A00C(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_27148A698(&v10, v8);
      }

      else
      {
        sub_2714889EC(&v9, a1);
      }
    }
  }
}

uint64_t sub_2714889EC(uint64_t *a1, void **a2)
{
  v47 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0((v3 + 16), v22);
    sub_2713B2524(v34, v22);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v45;
        v11 = __p;
        if (v45 != __p)
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

        v45 = v9;
        operator delete(v11);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v17 = v32;
    v15 = v31;
    if (v32 == v31)
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
        v15 = v31;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v22);
  sub_2713B2524(v34, v22);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v45;
      v7 = __p;
      if (v45 != __p)
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

      v45 = v5;
      operator delete(v7);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v14 = v32;
  v15 = v31;
  if (v32 != v31)
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
  v32 = v13;
  operator delete(v15);
LABEL_66:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v22[0] = a2[1];
  v20 = v22[0];
  v34[0] = 6;
  v19[13](a2, v34);
  if (v20 < 1)
  {
    if (v34[0] < 3)
    {
      sub_2713C66D4(v34, a2, v3 + 16, v34[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v34[0]);
    }
  }

  else
  {
    sub_2713C62C8(v22, a2, v3 + 16, v34[0]);
  }

  LODWORD(v22[0]) = 1;
  (*(*a2 + 13))(a2, v22);
  (*(*a2 + 18))(a2, v3 + 200);
  (*(*a2 + 10))(a2, v3 + 224);
  (*(*a2 + 18))(a2, v3 + 232);
  (*(*a2 + 13))(a2, v3 + 256);
  (*(*a2 + 18))(a2, v3 + 264);
  return (*(*a2 + 18))(a2, v3 + 288);
}

void sub_271488F7C(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, &v20);
    sub_2713B2524(v33, &v20);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
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

  sub_271399EB0((v3 + 16), &v20);
  sub_2713B2524(v33, &v20);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_271489564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271489598(uint64_t *a1, void *a2)
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
  LODWORD(v19[0]) = 6;
  sub_27183FB7C(a2[6], v19);
  sub_2713BF6F4(v19, a2, v3 + 16, LODWORD(v19[0]));
  LODWORD(v19[0]) = 1;
  sub_27183FB7C(a2[6], v19);
  sub_2718403E0(a2[6], (v3 + 200));
  sub_27183F824(a2[6], (v3 + 224));
  sub_2718403E0(a2[6], (v3 + 232));
  sub_27183FB7C(a2[6], (v3 + 256));
  sub_2718403E0(a2[6], (v3 + 264));
  sub_2718403E0(a2[6], (v3 + 288));
}

void sub_2714899F0(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, &v20);
    sub_2713B2524(v33, &v20);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
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

  sub_271399EB0((v3 + 16), &v20);
  sub_2713B2524(v33, &v20);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_271489FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_27148A00C(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0((v3 + 16), v26);
    sub_2713B2524(v39, v26);
    sub_2713E031C(v3 + 16, v39);
    if (v51 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
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

        v50 = v9;
        operator delete(v11);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v38 != 1)
    {
      goto LABEL_66;
    }

    v13 = v36;
    if (!v36)
    {
      goto LABEL_66;
    }

    v17 = v37;
    v15 = v36;
    if (v37 == v36)
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
        v15 = v36;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v26);
  sub_2713B2524(v39, v26);
  sub_2713E031C(v3 + 16, v39);
  if (v51 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v50;
      v7 = __p;
      if (v50 != __p)
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

      v50 = v5;
      operator delete(v7);
    }
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 != 1)
  {
    goto LABEL_66;
  }

  v13 = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  v14 = v37;
  v15 = v36;
  if (v37 != v36)
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
  v37 = v13;
  operator delete(v15);
LABEL_66:
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v26[0]) = 6;
  sub_27183A9AC(a2, v26);
  if (LODWORD(v26[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = LODWORD(v26[0]);
  }

  if (LODWORD(v26[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v26);
      if (SHIBYTE(v27) < 0)
      {
        if (v26[1] == 1 && *(a2 + 72) == *v26[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v27) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v27) == 1 && *(a2 + 72) == LOBYTE(v26[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v27) < 0)
      {
LABEL_93:
        operator delete(v26[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v26, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v26[0]) = 1;
  sub_27183A9AC(a2, v26);
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a2, v26);
    if (*(v3 + 223) < 0)
    {
      operator delete(*(v3 + 200));
    }

    *(v3 + 200) = *v26;
    *(v3 + 216) = v27;
    ++*(a2 + 104);
  }

  sub_271839D90(a2, (v3 + 224));
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a2, v26);
    if (*(v3 + 255) < 0)
    {
      operator delete(*(v3 + 232));
    }

    *(v3 + 232) = *v26;
    *(v3 + 248) = v27;
    ++*(a2 + 104);
  }

  sub_27183A9AC(a2, (v3 + 256));
  v22 = *(a2 + 80);
  *(a2 + 80) = v22 + 1;
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    v23 = v3 + 288;
    *(a2 + 80) = v22 + 2;
  }

  else
  {
    sub_27183D78C(a2, v26);
    v24 = (v3 + 264);
    if (*(v3 + 287) < 0)
    {
      operator delete(*v24);
    }

    result.n128_u64[0] = v26[0];
    *v24 = *v26;
    *(v3 + 280) = v27;
    ++*(a2 + 104);
    v25 = *(a2 + 128);
    v23 = v3 + 288;
    ++*(a2 + 80);
    if ((v25 & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  if (*(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    return result;
  }

LABEL_115:
  sub_27183D78C(a2, v26);
  if (*(v3 + 311) < 0)
  {
    operator delete(*v23);
  }

  result = *v26;
  *(v23 + 16) = v27;
  *v23 = result;
  ++*(a2 + 104);
  return result;
}

double sub_27148A698(uint64_t *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0((v3 + 16), v26);
    sub_2713B2524(v39, v26);
    sub_2713E031C(v3 + 16, v39);
    if (v51 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
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

        v50 = v9;
        operator delete(v11);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v38 != 1)
    {
      goto LABEL_66;
    }

    v13 = v36;
    if (!v36)
    {
      goto LABEL_66;
    }

    v17 = v37;
    v15 = v36;
    if (v37 == v36)
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
        v15 = v36;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v26);
  sub_2713B2524(v39, v26);
  sub_2713E031C(v3 + 16, v39);
  if (v51 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v50;
      v7 = __p;
      if (v50 != __p)
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

      v50 = v5;
      operator delete(v7);
    }
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 != 1)
  {
    goto LABEL_66;
  }

  v13 = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  v14 = v37;
  v15 = v36;
  if (v37 != v36)
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
  v37 = v13;
  operator delete(v15);
LABEL_66:
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v26, a2, v3 + 16);
  v19 = a2[6];
  v20 = a2[7];
  v21 = v20 >= v19;
  v22 = v20 - v19;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v23 = *(a2[3] + v19);
  a2[6] = v19 + 4;
  v39[0] = v23;
  v26[0] = a2;
  v26[1] = v3 + 200;
  v27 = v39;
  return sub_27148AB08(v26);
}

double sub_27148AB08(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2717318E8(*a1, v2);
  v3 = v1[6];
  if (v1[7] <= v3)
  {
    goto LABEL_8;
  }

  *(v2 + 24) = *(v1[3] + v3);
  ++v1[6];
  sub_2717318E8(v1, v2 + 32);
  v4 = v1[6];
  v5 = v1[7];
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 3)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(v2 + 56) = *(v1[3] + v4);
  v1[6] += 4;
  sub_2717318E8(v1, v2 + 64);

  return sub_2717318E8(v1, v2 + 88);
}

BOOL sub_27148AC30(uint64_t a1, uint64_t a2)
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
    v6 = sub_27153ED84(a1 + 200, a2 + 200);
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