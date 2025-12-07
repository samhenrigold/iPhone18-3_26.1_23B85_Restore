void sub_2714BC09C(uint64_t result, void ***a2)
{
  v4 = *(result + 40);
  if (*v4 <= 1u)
  {
    *(result + 72) = "sync_command_id";
    v5 = result + 72;
    v7 = (result + 88);
    v6 = *(result + 88);
    *(result + 80) = 15;
    v8 = (result + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (result + 88);
  v5 = result + 72;
  v8 = (result + 80);
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_27182815C(result);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CA870(&v25, v11);
    v4 = *(result + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[2] & 1) == 0)
  {
    v25 = 0;
    v15 = sub_27182815C(result);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = a2[1];
    v15 = sub_27182815C(result);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CA870(&v25, v16);
  }

  if (**(result + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[4] & 1) == 0)
  {
    v25 = 0;
    v23 = sub_27182815C(result);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = a2[3];
    v20 = sub_27182815C(result);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CA870(&v25, v21);
  }
}

void *sub_2714BC3F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v11 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_271120E64(v11, &v15, 1);
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
  ++*(a2 + 40);
  return sub_2714BC590(&v12, a2, v3 + 200);
}

void *sub_2714BC590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    LOBYTE(v17[0]) = *(a2 + 32);
    sub_271120E64(v5, v17, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  v6 = *(a3 + 16);
  v17[0] = *a3;
  v17[1] = v6;
  v17[2] = *(a3 + 32);
  v18 = *(a3 + 48);
  if ((v18 & 1) == 0)
  {
    v16 = 0;
    sub_2718388F8(a2, &v16);
    v12 = *(a2 + 34);
    if (!*(a2 + 40))
    {
      goto LABEL_12;
    }

LABEL_11:
    v13 = *(a2 + 24);
    LOBYTE(v17[0]) = *(a2 + 32);
    sub_271120E64(v13, v17, 1);
    goto LABEL_12;
  }

  v16 = 1;
  sub_2718388F8(a2, &v16);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v16 = *(a2 + 32);
    sub_271120E64(v7, &v16, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2714985FC(a2, v17 + 8);
  v8 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v9 = *(a2 + 24);
    v16 = *(a2 + 32);
    sub_271120E64(v9, &v16, 1);
  }

  v10 = *(a2 + 24);
  v16 = v8;
  sub_271120E64(v10, &v16, 1);
  v11 = *(a2 + 40) + 1;
  *(a2 + 40) = v11;
  v12 = *(a2 + 34);
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  v14 = *(a2 + 24);
  LOBYTE(v17[0]) = v12;
  result = sub_271120E64(v14, v17, 1);
  ++*(a2 + 40);
  return result;
}

char *sub_2714BC748(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v11[0]) = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), v11, v11 + 4, 4);
    v7 = LODWORD(v11[0]);
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v11[0]) = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), v11, v11 + 4, 4);
    v6 = v11[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v11[0]) = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), v11, v11 + 4, 4);
    v5 = LODWORD(v11[0]);
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v11[0]) = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), v11, v11 + 4, 4);
  sub_2717312C0(a2);
  v9 = *(v3 + 216);
  v11[0] = *(v3 + 200);
  v11[1] = v9;
  v11[2] = *(v3 + 232);
  v12 = *(v3 + 248);
  result = sub_2714BC958(a2, v11);
  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
  return result;
}

char *sub_2714BC958(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    __src = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v8, 1);
    v8 = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &v8, &v9, 4);
    sub_2717312C0(a1);
    result = sub_271498BD8(a1, (a2 + 8));
    v5 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v5 + 10) = *(a1 + 32) - v5 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    v6 = 0;
    return sub_27173318C((a1 + 24), *(a1 + 32), &v6, &__src, 1);
  }

  return result;
}

uint64_t sub_2714BCA54(_DWORD *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  if (v8)
  {
    LOBYTE(v6) = 1;
    (*(*a1 + 80))(a1, &v6);
    v4 = a1[2];
    v6 = 1;
    (*(*a1 + 104))(a1, &v6);
    if (v4 < 1)
    {
      return sub_271499040(a1, v7 + 8);
    }

    else
    {
      if (v4 == 2)
      {
        v6 = 1;
        (*(*a1 + 104))(a1, &v6);
      }

      (*(*a1 + 16))(a1);
      sub_271499040(a1, v7 + 8);
      return (*(*a1 + 24))(a1);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    return (*(*a1 + 80))(a1, &v6);
  }
}

void sub_2714BCC54(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_2714BD280(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_2714BDA28(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714BDFB0(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_2714BE758(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_2714BEE28(&v10, v8);
      }

      else
      {
        sub_2714BCE20(&v9, a1);
      }
    }
  }
}

void *sub_2714BCE20(uint64_t *a1, void **a2)
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

  return sub_2714BF3D4(a2, v3 + 200);
}

void sub_2714BD280(uint64_t *a1, uint64_t a2)
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

void sub_2714BD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10 = *(a2 + 32);
  v5 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, &v10);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  *&v10 = "version";
  *(&v10 + 1) = 7;
  LODWORD(v11) = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v11);
  v6 = *(a2 + 104);
  *(a2 + 88) = "initial_sync_command";
  *(a2 + 96) = 20;
  if ((v6 & 1) == 0)
  {
    *(a2 + 104) = 1;
  }

  if (*sub_27182D6C4(a2))
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    LOBYTE(v11) = 0;
    BYTE8(v11) = 0;
    LOBYTE(v12) = 0;
    sub_2714BD804(&v13, a2, &v10);
    v7 = v11;
    *(a3 + 8) = v10;
    *(a3 + 24) = v7;
    *(a3 + 40) = v12;
    *(a3 + 48) = 1;
  }

  else
  {
    ++*(a2 + 112);
    if (*(a3 + 48) == 1)
    {
      *(a3 + 48) = 0;
    }
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v10 = *(a2 + 8);
  v5 = v10;
  v11[0] = v6;
  v7 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v7;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v12);
  if (v5 < 1)
  {
    sub_27149A3AC(a2, a3);
  }

  else
  {
    sub_2714BD904(&v10, a2, a3);
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BD904(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v7 = 1;
    v5 = *(a2 + 104);
    *(a2 + 88) = "min_version";
    *(a2 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    sub_27182EB6C(a2, &v7);
    if (v7 >= 2)
    {
      v6 = v7;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4(qword_280878858, "cv3d::kit::viz::SyncCommandSample]", 0x21uLL);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(qword_280878858, v6, 1);
      }

      sub_271847D5C(qword_280878858, v6, 1);
    }
  }

  sub_27149A3AC(a2, a3);
}

uint64_t sub_2714BDA28(uint64_t *a1, void *a2)
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
  LODWORD(v20[0]) = 1;
  sub_27183FB7C(a2[6], v20);
  return sub_2714BDE4C(v20, a2, v3 + 200);
}

uint64_t sub_2714BDE4C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(a2[6], &v9);
  *&v8 = (*(a2[2] + 32))(a2 + 2);
  *(&v8 + 1) = v9;
  sub_2713BF82C((a2 + 3), &v8);
  LOBYTE(v9) = 0;
  sub_27183F824(a2[6], &v9);
  if (v9)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    LODWORD(v8) = 1;
    sub_27183FB7C(a2[6], &v8);
    sub_27149AD88(&v8, a2, a3 + 8, v8);
  }

  else if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

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

void sub_2714BDFB0(uint64_t *a1, uint64_t a2)
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

void sub_2714BE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10 = *(a2 + 32);
  v5 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, &v10);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  *&v10 = "version";
  *(&v10 + 1) = 7;
  LODWORD(v11) = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v11);
  v6 = *(a2 + 104);
  *(a2 + 88) = "initial_sync_command";
  *(a2 + 96) = 20;
  if ((v6 & 1) == 0)
  {
    *(a2 + 104) = 1;
  }

  if (*sub_27182D2AC(a2))
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    LOBYTE(v11) = 0;
    BYTE8(v11) = 0;
    LOBYTE(v12) = 0;
    sub_2714BE534(&v13, a2, &v10);
    v7 = v11;
    *(a3 + 8) = v10;
    *(a3 + 24) = v7;
    *(a3 + 40) = v12;
    *(a3 + 48) = 1;
  }

  else
  {
    ++*(a2 + 112);
    if (*(a3 + 48) == 1)
    {
      *(a3 + 48) = 0;
    }
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v10 = *(a2 + 8);
  v5 = v10;
  v11[0] = v6;
  v7 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v7;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v12);
  if (v5 < 1)
  {
    sub_27149B894(a2, a3);
  }

  else
  {
    sub_2714BE634(&v10, a2, a3);
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BE634(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v7 = 1;
    v5 = *(a2 + 104);
    *(a2 + 88) = "min_version";
    *(a2 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    sub_27182DBE0(a2, &v7);
    if (v7 >= 2)
    {
      v6 = v7;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4(qword_280878858, "cv3d::kit::viz::SyncCommandSample]", 0x21uLL);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(qword_280878858, v6, 1);
      }

      sub_271847D5C(qword_280878858, v6, 1);
    }
  }

  sub_27149B894(a2, a3);
}

void sub_2714BE758(uint64_t *a1, uint64_t a2)
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

    sub_271399EB0((v3 + 16), v21);
    sub_2713B2524(v34, v21);
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

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v34, v21);
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
    operator delete(v22);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v21[0]) = 6;
  sub_27183A9AC(a2, v21);
  if (LODWORD(v21[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = LODWORD(v21[0]);
  }

  if (LODWORD(v21[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v21, a2, v3 + 16, v19);
LABEL_95:
  sub_2714BEC28(v21, a2, v3 + 200);
}

void sub_2714BEC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p) = 1;
  sub_27183A9AC(a2, &__p);
  v7 = 0;
  sub_271839D90(a2, &v7);
  if (v7)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    LODWORD(__p) = 1;
    sub_27183A9AC(a2, &__p);
    sub_27149C34C(a2, a3 + 8);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_21;
      }

      sub_27183D78C(a2, &__p);
      if (v10 < 0)
      {
        if (v9 == 1 && *(a2 + 72) == *__p)
        {
LABEL_14:
          v5 = 0;
          if (v10 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_5;
        }
      }

      else if (v10 == 1 && *(a2 + 72) == __p)
      {
        goto LABEL_14;
      }

      v5 = 1;
      if (v10 < 0)
      {
LABEL_17:
        operator delete(__p);
      }

LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

LABEL_21:
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &__p);
    if (v10 < 0)
    {
      if (v9 == 1 && *(a2 + 72) == *__p)
      {
LABEL_29:
        v6 = 0;
        if (v10 < 0)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }
    }

    else if (v10 == 1 && *(a2 + 72) == __p)
    {
      goto LABEL_29;
    }

    v6 = 1;
    if (v10 < 0)
    {
LABEL_32:
      operator delete(__p);
    }

LABEL_20:
    if ((v6 & 1) == 0)
    {
      return;
    }
  }
}

void *sub_2714BEE28(uint64_t *a1, void *a2)
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
  return sub_2714BF218(v20, a2, v3 + 200);
}

void *sub_2714BF218(uint64_t a1, void *a2, uint64_t a3)
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
  result = sub_2714BF2F4(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void *sub_2714BF2F4(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(result[3] + v2);
  result[6] = v2 + 1;
  if (v3)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    return sub_27149CBFC(&v5, result, (a2 + 8));
  }

  else if (*(a2 + 48))
  {
    *(a2 + 48) = 0;
  }

  return result;
}

void *sub_2714BF3D4(void *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = a1[1];
  v7 = 1;
  (*(v4 + 104))(a1, &v7);
  if (v6 >= 1)
  {
    sub_2714BF500(&v6, a1, a2);
    return a1;
  }

  v8 = 0;
  (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    sub_27149D40C(&v9, a1, a2 + 8);
    return a1;
  }

  else
  {
    if (!*(a2 + 48))
    {
      return a1;
    }

    *(a2 + 48) = 0;
    return a1;
  }
}

uint64_t sub_2714BF500(int *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A50))
      {
        sub_2718519B4(qword_280878A38, "cv3d::kit::viz::UpdateSyncConfigurationSample]", 0x2DuLL);
        __cxa_guard_release(&qword_280878A50);
        sub_271847D5C(qword_280878A38, v8, 1);
      }

      sub_271847D5C(qword_280878A38, v8, 1);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    result = sub_27149D40C(&v11, a2, a3 + 8);
  }

  else if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void *sub_2714BF6EC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 0xE)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/DataType.cpp", 43, "idx < static_cast<uint32_t>(DataType::End)", 0x2AuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "idx < static_cast<uint32_t>(DataType::End)", 42, "", 0);
        a1 = v3;
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
      v7(v6, "idx < static_cast<uint32_t>(DataType::End)", 42, "", 0);
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
  v8 = &(&off_279E2F608)[2 * v2];
  v9 = *v8;
  v10 = v8[1];

  return sub_271120E64(a1, v9, v10);
}

uint64_t sub_2714BF83C(uint64_t a1, void *a2, void *a3, __int128 *a4, void *a5)
{
  v10 = sub_271121384(a1, 1);
  *v10 = &unk_28810ABE0;
  v11 = a2[1];
  v10[2] = *a2;
  v10[3] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      sub_271127178((a1 + 48), *a4, *(a4 + 1));
    }

    else
    {
      v13 = *a4;
      *(a1 + 64) = *(a4 + 2);
      *(a1 + 48) = v13;
    }
  }

  else
  {
    *(a1 + 71) = 4;
    strcpy((a1 + 48), "logs");
  }

  if (!*a5)
  {
    operator new();
  }

  v14 = a5[1];
  *(a1 + 72) = *a5;
  *(a1 + 80) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2714BF9C0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (!v4)
  {
    sub_27112F828(v2);
    nullsub_1();
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v4);
  sub_27112F828(v2);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_2714BFA28(uint64_t a1)
{
  *a1 = &unk_28810ABE0;
  v2 = *(a1 + 80);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(a1 + 71) < 0)
  {
LABEL_4:
    operator delete(*(a1 + 48));
  }

LABEL_5:
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  nullsub_1();
}

void sub_2714BFB54(uint64_t a1)
{
  sub_2714BFA28(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714BFB8C(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v38 = v5;
    if (v5)
    {
      if (*(a1 + 32))
      {
        v6 = *a2;
        v7 = strlen(*a2);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v8 = v7;
        if (v7 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v28) = v7;
        if (v7)
        {
          memmove(&__dst, v6, v7);
        }

        *(&__dst + v8) = 0;
        v29 = *(a2 + 24);
        v9 = *(a2 + 32);
        v10 = strlen(v9);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v11 = v10;
        if (v10 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v31) = v10;
        if (v10)
        {
          memmove(v30, v9, v10);
        }

        *(v30 + v11) = 0;
        v32 = *(a2 + 40) & ~(*(a2 + 40) >> 31);
        v12 = *(a2 + 48);
        v13 = strlen(v12);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v34) = v13;
        if (v13)
        {
          memmove(v33, v12, v13);
          *(v33 + v14) = 0;
          v15 = *(a2 + 56);
          v16 = *(v15 + 120);
          if ((v16 & 0x10) == 0)
          {
LABEL_20:
            if ((v16 & 8) == 0)
            {
              HIBYTE(v36) = 0;
              LOBYTE(v35[0]) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if (v18 < 0)
              {
                goto LABEL_31;
              }

LABEL_34:
              v23 = a1 + 48;
LABEL_35:
              v24 = (*(*v17 + 48))(v17, v23, v18);
              (*(*v24 + 56))(v24);
              v49 = (*(**(a1 + 72) + 16))(*(a1 + 72));
              v50 = v25;
              LOBYTE(v51) = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              LOBYTE(v55) = 0;
              v56 = 0;
              LOBYTE(v57) = 0;
              v58 = 0;
              LOBYTE(__p) = 0;
              v60 = 0;
              v39 = __dst;
              v40 = v28;
              __dst = 0uLL;
              v28 = 0;
              v43 = v31;
              LODWORD(v41) = v29;
              v42 = *v30;
              v30[0] = 0;
              v30[1] = 0;
              v31 = 0;
              v44 = v32;
              v46 = v34;
              v45 = *v33;
              v33[0] = 0;
              v33[1] = 0;
              v34 = 0;
              v48 = v36;
              v47 = *v35;
              v35[0] = 0;
              v35[1] = 0;
              v36 = 0;
              operator new();
            }

            v21 = *(v15 + 40);
            v22 = *(v15 + 56) - v21;
            if (v22 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_37:
              sub_271120DA8();
            }

LABEL_28:
            if (v22 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v36) = v22;
            if (v22)
            {
              memmove(v35, v21, v22);
              *(v35 + v22) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              LOBYTE(v35[0]) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

LABEL_31:
            v23 = *(a1 + 48);
            v18 = *(a1 + 56);
            goto LABEL_35;
          }
        }

        else
        {
          LOBYTE(v33[0]) = 0;
          v15 = *(a2 + 56);
          v16 = *(v15 + 120);
          if ((v16 & 0x10) == 0)
          {
            goto LABEL_20;
          }
        }

        v19 = *(v15 + 112);
        v20 = *(v15 + 72);
        if (v19 < v20)
        {
          *(v15 + 112) = v20;
          v19 = v20;
        }

        v21 = *(v15 + 64);
        v22 = v19 - v21;
        if (v19 - v21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v26 = v5;
        (v5->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }
}

void sub_2714C06C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (*(v49 + 72) == 1 && *(v49 + 71) < 0)
  {
    operator delete(*v51);
  }

  if (*(v49 + 47) < 0)
  {
    operator delete(*v50);
  }

  std::__shared_weak_count::~__shared_weak_count(v49);
  operator delete(v54);
  sub_2714FBE4C(&a28);
  sub_2714FBE4C(&a9);
  sub_271134CBC(v52 + 16);
  sub_2713B1398(&a12);
  sub_27112F828(&a26);
  _Unwind_Resume(a1);
}

void sub_2714C07C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_2713B1398(&a12);
  sub_27112F828(&a35);
  _Unwind_Resume(a1);
}

void sub_2714C08A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288131FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C08F4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2714C09B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C0A08(uint64_t a1)
{
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 24);

  operator delete(v3);
}

void sub_2714C0A98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714C0AF4(uint64_t a1)
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

uint64_t sub_2714C0B9C(uint64_t a1)
{
  while (1)
  {
    v3 = *(a1 + 96);
    v2 = *(a1 + 104);
    if (v3 == v2)
    {
      break;
    }

    sub_2714C0C90(a1, *(v2 - 2));
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v3 = *(a1 + 96);
  }

  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3;
    if (v5 != v3)
    {
      do
      {
        v7 = *(v5 - 1);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 16;
      }

      while (v5 != v3);
      v6 = *(a1 + 96);
    }

    *(a1 + 104) = v3;
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 32));
  v8 = *(a1 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t sub_2714C0C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 96);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      v4 += 16;
      if (v4 == v3)
      {
        return 0;
      }
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  (*(*a2 + 32))(a2, a1);
  v5 = *(a1 + 104);
  if (v4 + 16 != v5)
  {
    do
    {
      v6 = v4;
      v7 = *(v4 + 16);
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      v8 = *(v4 + 8);
      *v4 = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      v4 += 16;
    }

    while (v6 + 32 != v5);
    v5 = *(a1 + 104);
  }

  for (; v5 != v4; v5 -= 16)
  {
    v10 = *(v5 - 8);
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  *(a1 + 104) = v4;
  return 1;
}

void sub_2714C0E38(uint64_t a1)
{
  sub_2714C0B9C(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C0E70(uint64_t a1)
{
  sub_2714C0B9C(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2714C10E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(&a9);
  sub_27112F828(va);
  sub_27112F828(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C110C(void *a1, void *a2)
{
  v5 = a1[12];
  v4 = a1[13];
  if (v5 != v4)
  {
    v6 = a1[12];
    while (*v6 != *a2)
    {
      v6 += 16;
      if (v6 == v4)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v4)
    {
      return 0;
    }
  }

LABEL_8:
  v8 = a1[14];
  if (v4 >= v8)
  {
    v11 = (v4 - v5) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_27134B450();
    }

    v13 = v8 - v5;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v18 = 16 * v11;
    v19 = *a2;
    *(16 * v11) = *a2;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = (v18 + 16);
    v15 = a1[12];
    v16 = a1[13] - v15;
    v17 = v18 - v16;
    memcpy((v18 - v16), v15, v16);
    a1[12] = v17;
    a1[13] = v10;
    a1[14] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v9 = a2[1];
    *v4 = *a2;
    *(v4 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v4 + 16;
  }

  a1[13] = v10;
  (*(**a2 + 24))(*a2, a1);
  return 1;
}

void sub_2714C12C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_27134B450();
  }

  std::mutex::unlock((a1 + 32));
}

void sub_2714C139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  std::mutex::unlock((v9 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_2714C13B8(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *a2;
  v5 = a2[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_2714C110C(a1, v8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::unlock((a1 + 32));
  return v6;
}

void sub_2714C146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::mutex::unlock((v9 + 32));
  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_2714C1488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_2714C14D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_2714C151C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_2714C156C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  for (i = *(a1 + 104); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 32));
  return a1 + 8;
}

uint64_t sub_2714C1604(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 88);
  for (i = *(a1 + 96); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 24));
  return a1;
}

uint64_t sub_2714C169C(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_2714C1714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2714C1790(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714C181C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714C18AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1 + 8;
}

uint64_t sub_2714C1950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1;
}

std::__shared_weak_count *sub_2714C19F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_2714C1A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = 0;
  a2[1] = 0;
  result = *(v2 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(v2 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_2714C1A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void sub_2714C1AF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881321E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C1B58(char a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return;
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      *(a2 + 23) = 15;
      strcpy(a2, "data is invalid");
      return;
    case 5:
      *(a2 + 23) = 20;
      *(a2 + 16) = 1684630625;
      v3 = "timestamp is invalid";
      goto LABEL_12;
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      operator new();
    case 11:
      *(a2 + 23) = 19;
      strcpy(a2, "failed to load data");
      return;
    case 12:
      *(a2 + 23) = 20;
      *(a2 + 16) = 1701999980;
      v3 = "sequence i/o failure";
LABEL_12:
      *a2 = *v3;
      *(a2 + 20) = 0;
      break;
    case 13:
      operator new();
    default:
      *(a2 + 23) = 18;
      strcpy(a2, "unknown error code");
      break;
  }
}

__n128 sub_2714C1F58@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return v6;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return v6;
    case 2:
      operator new();
    case 3:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v5 = "server send failure";
      goto LABEL_11;
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v5 = "client send failure";
      goto LABEL_11;
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      *(a2 + 23) = 7;
      strcpy(a2, "timeout");
      return v6;
    case 13:
      *(a2 + 23) = 15;
      strcpy(a2, "invalid peer ID");
      return v6;
    case 14:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25701;
      v4 = "client is outdated";
      goto LABEL_20;
    case 15:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1702196083;
      v5 = "configuration issue";
LABEL_11:
      v6 = *v5;
      *a2 = *v5;
      *(a2 + 19) = 0;
      break;
    default:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25956;
      v4 = "unknown error code";
LABEL_20:
      v6 = *v4;
      *a2 = *v4;
      *(a2 + 18) = 0;
      break;
  }

  return v6;
}

void sub_2714C2388(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  sub_2714C24EC("ignoring data of timestamp ", a1, "; ", v5, " is processing only the first encountered timestamp, which was '", a2, "'");
}

void sub_2714C24C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v10 = 0;
  v11[0] = v9;
  v11[1] = a1;
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a1;
  v12 = v11;
  sub_27134B55C(&v12);
  sub_2714C4794(&v8, v9, a2);
}

void sub_2714C26C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C26DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C28A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C28CC(std::string *a1, uint64_t a2, std::string *a3, uint64_t *a4, std::string *a5)
{
  v8 = 0;
  v10[0] = v7;
  v10[1] = a1;
  v10[2] = v7;
  v10[3] = a1;
  v10[4] = a1;
  v9 = v10;
  sub_27134B55C(&v9);
  sub_2714C4794(&v6, v7, a2);
}

void sub_2714C2D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_271130878(&a11);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a11);
  _Unwind_Resume(a1);
}

void sub_2714C2E18(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v25 = 0;
    v28 = v24;
    v29 = ", max queue size ";
    v30 = v24;
    v31 = ", max queue size ";
    v32[0] = ", max queue size ";
    v26.__r_.__value_.__r.__words[0] = &v28;
    sub_2712FAC1C(&v26);
    std::to_string(&v26, a2);
    v28 = v24;
    v29 = &v26;
    v30 = v24;
    v31 = &v26;
    v32[0] = &v26;
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v27 = &v28;
    (off_288132260[v25])(&v27, v24);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v28 = &v26;
    (off_2881322C0[v25])(&v12, &v28, v24);
    if (v25 != -1)
    {
      (off_288132230[v25])(&v28, v24);
    }

    v7 = HIBYTE(v14);
    v9 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 < 0)
  {
    v10 = *(a1 + 8);
  }

  v28 = v11;
  v29 = v10;
  if ((v7 & 0x80u) == 0)
  {
    v9 = &v12;
    v8 = v7;
  }

  v30 = v9;
  v31 = v8;
  sub_271131230(&v28, v32, 0, 0, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v15;
  }

  v17 = 1;
  LOBYTE(v18) = 0;
  v22 = 0;
  v23 = 1;
  sub_27139F524(7, &__p, a4);
  if (v23 == 1)
  {
    if (v22 != 1)
    {
      goto LABEL_24;
    }

    if (v21 < 0)
    {
      operator delete(v20);
      if ((v19 & 0x80000000) == 0)
      {
LABEL_24:
        if (v17 != 1)
        {
          goto LABEL_27;
        }

LABEL_25:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_27;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v18);
    if (v17 != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_27:
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(v12);
    return;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_31;
  }
}

void sub_2714C30E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
    sub_271130878(va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2714C3128);
}

void sub_2714C3178(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v17[0] = "Cannot save data as '";
  v17[1] = 21;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v17[2] = v5;
  v17[3] = v4;
  v17[4] = "'. Reason: ";
  v17[5] = 11;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v17[6] = v7;
  v17[7] = v6;
  sub_271131230(v17, &v18, 0, 0, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  v10 = 1;
  LOBYTE(v11) = 0;
  v15 = 0;
  v16 = 1;
  sub_27139F524(8, &__p, a3);
  if (v16 == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_18;
    }

    if (v14 < 0)
    {
      operator delete(v13);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_18:
        if (v10 != 1)
        {
          goto LABEL_21;
        }

LABEL_19:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_21;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v11);
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2714C3308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3340(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v4 = a1[1];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = a1[1];
    if (*(a1 + 23))
    {
LABEL_3:
      v25 = "Package id '";
      v26 = 12;
      v5 = *a1;
      if (v3 < 0)
      {
        v3 = v4;
      }

      else
      {
        v5 = a1;
      }

      v27 = v5;
      v28 = v3;
      v30 = 222;
      sub_271131230(&v25, &v31, 0, 0, &v16);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v8, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        v8 = v16;
      }

      v9 = 1;
      LOBYTE(v10) = 0;
      v14 = 0;
      v15 = 1;
      sub_27139F524(9, &v8, a2);
      if (v15 == 1)
      {
        if (v14 == 1)
        {
          if (v13 < 0)
          {
            operator delete(__p);
          }

          if (v11 < 0)
          {
            operator delete(v10);
          }
        }

        if (v9 == 1 && SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = v8.__r_.__value_.__r.__words[0];
LABEL_34:
          operator delete(v7);
          goto LABEL_35;
        }
      }

      goto LABEL_35;
    }
  }

  v25 = "Package id '";
  v26 = 12;
  v6 = *a1;
  if (v3 < 0)
  {
    v3 = v4;
  }

  else
  {
    v6 = a1;
  }

  v27 = v6;
  v28 = v3;
  v29 = "' encountered during loading is unrecognized. An empty package name indicates a serialization error (e.g. invalid data in the stream)";
  v30 = 133;
  sub_271131230(&v25, &v31, 0, 0, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v17, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v16;
  }

  v18 = 1;
  LOBYTE(v19) = 0;
  v23 = 0;
  v24 = 1;
  sub_27139F524(9, &v17, a2);
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v17.__r_.__value_.__r.__words[0];
      goto LABEL_34;
    }
  }

LABEL_35:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_2714C359C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C35E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v26 = 0;
    v29 = v25;
    v30 = "Package '";
    v31 = v25;
    v32 = "Package '";
    v33 = "Package '";
    v27.__r_.__value_.__r.__words[0] = &v29;
    sub_2711E8810(&v27);
    v29 = v25;
    v30 = a1;
    v31 = v25;
    v32 = a1;
    v33 = a1;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_2881322F0[v26])(&v27, v25);
    v29 = v25;
    v30 = "' data type id ";
    v31 = v25;
    v32 = "' data type id ";
    v33 = "' data type id ";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (*(&off_288132308 + v26))(&v27, v25);
    std::to_string(&v27, *(a1 + 24));
    v29 = v25;
    v30 = &v27;
    v31 = v25;
    v32 = &v27;
    v33 = &v27;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v28 = &v29;
    (off_288132260[v26])(&v28, v25);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v29 = v25;
    v30 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    v31 = v25;
    v32 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    v33 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_288132338[v26])(&v27, v25);
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v29 = &v27;
    (off_2881322C0[v26])(v14, &v29, v25);
    if (v26 != -1)
    {
      (off_288132230[v26])(&v29, v25);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(&v5, v14[0], v14[1]);
    }

    else
    {
      v5 = *v14;
      v6 = v15;
    }

    v7 = 1;
    LOBYTE(v8) = 0;
    v12 = 0;
    v13 = 1;
    sub_27139F524(10, &v5, a2);
    if (v13 == 1)
    {
      if (v12 == 1)
      {
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v9 < 0)
        {
          operator delete(v8);
        }
      }

      if (v7 == 1 && SHIBYTE(v6) < 0)
      {
        v4 = v5;
LABEL_44:
        operator delete(v4);
      }
    }
  }

  else
  {
    v26 = 0;
    v29 = v25;
    v30 = "Package '";
    v31 = v25;
    v32 = "Package '";
    v33 = "Package '";
    v27.__r_.__value_.__r.__words[0] = &v29;
    sub_2711E8810(&v27);
    v29 = v25;
    v30 = a1;
    v31 = v25;
    v32 = a1;
    v33 = a1;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_2881322F0[v26])(&v27, v25);
    v29 = v25;
    v30 = "' data type id ";
    v31 = v25;
    v32 = "' data type id ";
    v33 = "' data type id ";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (*(&off_288132308 + v26))(&v27, v25);
    std::to_string(&v27, *(a1 + 24));
    v29 = v25;
    v30 = &v27;
    v31 = v25;
    v32 = &v27;
    v33 = &v27;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v28 = &v29;
    (off_288132260[v26])(&v28, v25);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v29 = v25;
    v30 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    v31 = v25;
    v32 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    v33 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_288132320[v26])(&v27, v25);
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v29 = &v27;
    (off_2881322C0[v26])(v14, &v29, v25);
    if (v26 != -1)
    {
      (off_288132230[v26])(&v29, v25);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(v16, v14[0], v14[1]);
    }

    else
    {
      *v16 = *v14;
      v17 = v15;
    }

    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    v24 = 1;
    sub_27139F524(10, v16, a2);
    if (v24 == 1)
    {
      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(v21);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }
      }

      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        v4 = v16[0];
        goto LABEL_44;
      }
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_2714C3B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3B68(_Unwind_Exception *a1)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
    sub_271130878(v1 - 136);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2714C3BA8);
}

void sub_2714C3BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  if (a3)
  {
    sub_2714C3F50(", reason: ", &v7);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  sub_2714C3D88("Failed to send command(s) to client ", a1, &v5, ".");
}

void sub_2714C3D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_2714C3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8[0] = v6;
  v8[1] = a1;
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = a1;
  v9 = v8;
  sub_2712CA36C(&v9);
  sub_2714C602C(&v5, v6, a2);
}

void sub_2714C3EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C3F50(const char *a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = a1;
  v8 = v4;
  v9 = a1;
  v10 = a1;
  v11 = &v6;
  sub_2712C4188(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288132350[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_10:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_10;
  }

  v11 = &v6;
  (*(&off_288132248 + v5))(&v11, v4);
LABEL_6:
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_2881322C0[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288132230[v5])(&v6, v4);
  }

  return result;
}

void sub_2714C41F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C4224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8[0] = v6;
  v8[1] = a1;
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = a1;
  v9 = v8;
  sub_2711FE8BC(&v9);
  sub_2714C602C(&v5, v6, a2);
}

void sub_2714C4388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C4510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8[0] = v6;
  v8[1] = a1;
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = a1;
  v9 = v8;
  sub_2711FE8BC(&v9);
  sub_2714C602C(&v5, v6, a2);
}

void sub_2714C46A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C4708(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C4750(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C499C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C49E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = *a3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = *(a3 + 8);
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  v9[0] = a2;
  v9[1] = &__dst;
  v9[2] = a2;
  v9[3] = &__dst;
  v9[4] = &__dst;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v10 = v9;
  (off_288132260[v6])(&v10, a2);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2714C4B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2714C4B1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
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

void sub_2714C4C10(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v10])(&v11, v3);
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

void sub_2714C4DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C4E2C(uint64_t a1, uint64_t a2)
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

void sub_2714C506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2714C5098(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714C53A4(a2, v3);
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

void sub_2714C5198(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v9])(&v10, v2);
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

void sub_2714C5358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714C53A4(uint64_t a1, const char *a2)
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

void sub_2714C5540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C5554(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
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

void sub_2714C5648(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v10])(&v11, v3);
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

void sub_2714C580C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C5864(uint64_t a1, uint64_t a2)
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

void sub_2714C5AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C5AC0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
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

void sub_2714C5BB4(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v10])(&v11, v3);
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

void sub_2714C5D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C5DD0(uint64_t a1, uint64_t a2)
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

void sub_2714C6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714C625C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2714C62A0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
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

void sub_2714C6394(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v10])(&v11, v3);
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

void sub_2714C6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C65B0(uint64_t a1, uint64_t a2)
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

void sub_2714C67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C680C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
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

void sub_2714C6900(uint64_t *a1, uint64_t a2)
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
    (off_288132230[v10])(&v11, v3);
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

void sub_2714C6AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C6B1C(uint64_t a1, uint64_t a2)
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

void sub_2714C6D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2714C6D78(void *a1, uint64_t a2)
{
  v151 = *MEMORY[0x277D85DE8];
  v91[0] = xmmword_271892FB8;
  v91[1] = unk_271892FC8;
  v91[2] = xmmword_271892FD8;
  v91[3] = unk_271892FE8;
  v92 = 2;
  v90[7] = *&off_279E2F758;
  v90[8] = xmmword_279E2F768;
  v90[2] = xmmword_279E2F708;
  v90[3] = *&off_279E2F718;
  v90[5] = *&off_279E2F738;
  v90[6] = xmmword_279E2F748;
  v90[4] = xmmword_279E2F728;
  v90[0] = xmmword_279E2F6E8;
  v90[1] = *&off_279E2F6F8;
  v4 = v91;
  *&v95 = v91;
  *(&v95 + 1) = v90;
  v5 = &v97;
  v96[0] = &unk_2881086A8;
  v96[1] = a2;
  v97 = v96;
  *&v98 = &v93;
  v6 = v90;
  *(&v98 + 1) = v91;
  do
  {
    *&v111 = v4;
    *(&v111 + 1) = v6;
    if (!v97)
    {
      sub_27112AFFC();
    }

    if ((*(*v97 + 48))(v97, &v111))
    {
      break;
    }

    v4 = (v95 + 8);
    v6 = (*(&v95 + 1) + 16);
    *&v95 = v4;
    *(&v95 + 1) += 16;
  }

  while (v4 != v98 || v6 != *(&v98 + 1));
  *&v147 = &v93;
  *(&v147 + 1) = v91;
  v8 = &unk_2881086A8;
  v148[0] = &unk_2881086A8;
  v148[1] = a2;
  v149 = v148;
  *&v150 = &v93;
  *(&v150 + 1) = v91;
  v111 = v95;
  if (!v97)
  {
    v5 = &v113;
    goto LABEL_13;
  }

  if (v97 != v96)
  {
    v113 = v97;
LABEL_13:
    *v5 = 0;
    v114 = v98;
    *v115 = v147;
    v9 = v148;
    goto LABEL_14;
  }

  v113 = v112;
  (*(*v97 + 24))();
  v9 = v149;
  v114 = v98;
  *v115 = v147;
  if (v149)
  {
    if (v149 == v148)
    {
      v8 = *v149;
LABEL_14:
      v117 = &v115[16];
      v8[3](v9);
      v118[0] = v150;
      v10 = v149;
      if (v149 != v148)
      {
        goto LABEL_15;
      }

LABEL_27:
      (*(*v10 + 32))(v10);
      v11 = v97;
      if (v97 != v96)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    v117 = v149;
    v149 = 0;
    v118[0] = v150;
    v10 = 0;
    if (!v148)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v117 = 0;
    v118[0] = v150;
    v10 = 0;
    if (!v148)
    {
      goto LABEL_27;
    }
  }

LABEL_15:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v11 = v97;
  if (v97 != v96)
  {
LABEL_18:
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v103 = v111;
    v12 = &v103;
    v13 = v113;
    if (!v113)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_28:
  (*(*v11 + 32))(v11);
  v103 = v111;
  v12 = &v103;
  v13 = v113;
  if (!v113)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v13 == v112)
  {
    v105 = v104;
    (*(*v13 + 24))(v13, v104);
    v106 = v114;
    v107 = *v115;
    v14 = v117;
    if (!v117)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v12 = &v111;
  v105 = v13;
LABEL_31:
  *(v12 + 5) = 0;
  v106 = v114;
  v107 = *v115;
  v14 = v117;
  if (!v117)
  {
LABEL_32:
    v15 = &v109;
LABEL_36:
    *v15 = 0;
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != &v115[16])
  {
    v15 = &v117;
    v109 = v14;
    goto LABEL_36;
  }

  v109 = v108;
  (*(*v14 + 24))(v14, v108);
LABEL_38:
  v110 = v118[0];
  if (v117 == &v115[16])
  {
    (*(*v117 + 32))(v117);
    v16 = v113;
    if (v113 != v112)
    {
      goto LABEL_42;
    }

LABEL_48:
    (*(*v16 + 32))(v16);
    v131 = v103;
    v17 = v105;
    if (v105)
    {
      goto LABEL_45;
    }

LABEL_49:
    v133 = 0;
    v134 = v106;
    v139 = v103;
LABEL_54:
    v141 = v17;
    goto LABEL_55;
  }

  if (v117)
  {
    (*(*v117 + 40))();
  }

  v16 = v113;
  if (v113 == v112)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v131 = v103;
  v17 = v105;
  if (!v105)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (v17 == v104)
  {
    v133 = v132;
    (*(*v17 + 24))(v17, v132);
    v17 = v133;
  }

  else
  {
    v17 = (*(*v17 + 16))(v17);
    v133 = v17;
  }

  v134 = v106;
  v139 = v131;
  if (!v17)
  {
    goto LABEL_54;
  }

  if (v17 != v132)
  {
    v17 = (*(*v17 + 16))(v17);
    goto LABEL_54;
  }

  v141 = v140;
  (*(*v17 + 24))(v17, v140);
LABEL_55:
  v142 = v134;
  v127 = v107;
  v18 = v109;
  if (!v109)
  {
    v129 = 0;
    v130 = v110;
    v135 = v107;
LABEL_63:
    v137 = v18;
    goto LABEL_64;
  }

  if (v109 == v108)
  {
    v129 = v128;
    (*(*v109 + 24))();
    v18 = v129;
  }

  else
  {
    v18 = (*(*v109 + 16))();
    v129 = v18;
  }

  v130 = v110;
  v135 = v127;
  if (!v18)
  {
    goto LABEL_63;
  }

  if (v18 != v128)
  {
    v18 = (*(*v18 + 16))(v18);
    goto LABEL_63;
  }

  v137 = v136;
  (*(*v18 + 24))(v18, v136);
LABEL_64:
  v138 = v130;
  v147 = v139;
  v19 = &v147;
  if (!v141)
  {
LABEL_67:
    *(v19 + 5) = 0;
    goto LABEL_69;
  }

  if (v141 != v140)
  {
    v19 = &v139;
    v149 = v141;
    goto LABEL_67;
  }

  v149 = v148;
  (*(*v141 + 24))();
LABEL_69:
  v150 = v142;
  v143 = v135;
  v20 = &v143;
  if (!v137)
  {
LABEL_72:
    *(v20 + 5) = 0;
    goto LABEL_74;
  }

  if (v137 != v136)
  {
    v20 = &v135;
    v145 = v137;
    goto LABEL_72;
  }

  v145 = v144;
  (*(*v137 + 24))();
LABEL_74:
  v146 = v138;
  v111 = v147;
  v21 = &v111;
  if (!v149)
  {
LABEL_77:
    *(v21 + 5) = 0;
    goto LABEL_79;
  }

  if (v149 != v148)
  {
    v21 = &v147;
    v113 = v149;
    goto LABEL_77;
  }

  v113 = v112;
  (*(*v149 + 24))(v149, v112);
LABEL_79:
  v114 = v150;
  *&v115[8] = v143;
  if (v145)
  {
    if (v145 == v144)
    {
      *&v118[0] = v116;
      (*(*v145 + 24))(v145, v116);
    }

    else
    {
      *&v118[0] = v145;
      v145 = 0;
    }
  }

  else
  {
    *&v118[0] = 0;
  }

  *(v118 + 8) = v146;
  if (v145 == v144)
  {
    (*(*v145 + 32))(v145);
    v22 = v149;
    if (v149 != v148)
    {
      goto LABEL_88;
    }

LABEL_106:
    (*(*v22 + 32))(v22);
    v23 = v137;
    if (v137 != v136)
    {
      goto LABEL_91;
    }

LABEL_107:
    (*(*v23 + 32))(v23);
    v24 = v129;
    if (v129 != v128)
    {
      goto LABEL_94;
    }

LABEL_108:
    (*(*v24 + 32))(v24);
    v25 = v141;
    if (v141 != v140)
    {
      goto LABEL_97;
    }

LABEL_109:
    (*(*v25 + 32))(v25);
    v26 = v133;
    if (v133 != v132)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

  if (v145)
  {
    (*(*v145 + 40))(v145);
  }

  v22 = v149;
  if (v149 == v148)
  {
    goto LABEL_106;
  }

LABEL_88:
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  v23 = v137;
  if (v137 == v136)
  {
    goto LABEL_107;
  }

LABEL_91:
  if (v23)
  {
    (*(*v23 + 40))(v23);
  }

  v24 = v129;
  if (v129 == v128)
  {
    goto LABEL_108;
  }

LABEL_94:
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v25 = v141;
  if (v141 == v140)
  {
    goto LABEL_109;
  }

LABEL_97:
  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

  v26 = v133;
  if (v133 != v132)
  {
LABEL_100:
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    v95 = v111;
    v27 = v113;
    if (v113)
    {
      goto LABEL_103;
    }

    goto LABEL_111;
  }

LABEL_110:
  (*(*v26 + 32))(v26);
  v95 = v111;
  v27 = v113;
  if (v113)
  {
LABEL_103:
    if (v27 == v112)
    {
      v97 = v96;
      (*(*v27 + 24))(v27, v96);
    }

    else
    {
      v97 = v27;
      v113 = 0;
    }

    goto LABEL_113;
  }

LABEL_111:
  v97 = 0;
LABEL_113:
  v98 = v114;
  v99 = *&v115[8];
  if (*&v118[0])
  {
    if (*&v118[0] == v116)
    {
      v101 = v100;
      (*(**&v118[0] + 24))();
    }

    else
    {
      v101 = *&v118[0];
      *&v118[0] = 0;
    }
  }

  else
  {
    v101 = 0;
  }

  v102 = *(v118 + 8);
  if (*&v118[0] == v116)
  {
    (*(**&v118[0] + 32))(*&v118[0]);
    v28 = v113;
    if (v113 != v112)
    {
      goto LABEL_122;
    }
  }

  else
  {
    if (*&v118[0])
    {
      (*(**&v118[0] + 40))();
    }

    v28 = v113;
    if (v113 != v112)
    {
LABEL_122:
      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      v123 = v95;
      v29 = v97;
      if (!v97)
      {
        goto LABEL_130;
      }

      goto LABEL_128;
    }
  }

  (*(*v28 + 32))(v28);
  v123 = v95;
  v29 = v97;
  if (!v97)
  {
LABEL_130:
    v125 = v29;
    goto LABEL_132;
  }

LABEL_128:
  if (v29 != v96)
  {
    v29 = (*(*v29 + 16))(v29);
    goto LABEL_130;
  }

  v125 = v124;
  (*(*v29 + 24))(v29, v124);
LABEL_132:
  v126 = v98;
  v119 = v99;
  v30 = v101;
  if (!v101)
  {
LABEL_135:
    v121 = v30;
    goto LABEL_137;
  }

  if (v101 != v100)
  {
    v30 = (*(*v101 + 16))();
    goto LABEL_135;
  }

  v121 = v120;
  (*(*v101 + 24))();
LABEL_137:
  v122 = v102;
  v143 = v123;
  v31 = v125;
  if (!v125)
  {
LABEL_140:
    v145 = v31;
    goto LABEL_142;
  }

  if (v125 != v124)
  {
    v31 = (*(*v125 + 16))();
    goto LABEL_140;
  }

  v145 = v144;
  (*(*v125 + 24))();
LABEL_142:
  v146 = v126;
  v139 = v119;
  v32 = v121;
  if (!v121)
  {
LABEL_145:
    v141 = v32;
    goto LABEL_147;
  }

  if (v121 != v120)
  {
    v32 = (*(*v121 + 16))();
    goto LABEL_145;
  }

  v141 = v140;
  (*(*v121 + 24))();
LABEL_147:
  v142 = v122;
  v111 = v143;
  v33 = v145;
  if (!v145)
  {
LABEL_150:
    v113 = v33;
    goto LABEL_152;
  }

  if (v145 != v144)
  {
    v33 = (*(*v145 + 16))(v145);
    goto LABEL_150;
  }

  v113 = v112;
  (*(*v145 + 24))(v145, v112);
LABEL_152:
  v114 = v146;
  v147 = v139;
  v34 = v141;
  if (!v141)
  {
LABEL_155:
    v149 = v34;
    goto LABEL_157;
  }

  if (v141 != v140)
  {
    v34 = (*(*v141 + 16))();
    goto LABEL_155;
  }

  v149 = v148;
  (*(*v141 + 24))();
LABEL_157:
  v150 = v142;
  v36 = *(&v111 + 1);
  v35 = v111;
  if (v111 == v147)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      v35 += 8;
      v36 += 16;
      *&v111 = v35;
      *(&v111 + 1) = v36;
      if (v35 != v114 || v36 != *(&v114 + 1))
      {
        while (1)
        {
          *&v135 = v35;
          *(&v135 + 1) = v36;
          if (!v113)
          {
            sub_27112AFFC();
          }

          v43 = (*(*v113 + 48))(v113, &v135);
          v35 = v111;
          if (v43)
          {
            break;
          }

          v35 = v111 + 8;
          v36 = *(&v111 + 1) + 16;
          *&v111 = v35;
          *(&v111 + 1) += 16;
          if (v35 == v114 && v36 == *(&v114 + 1))
          {
            goto LABEL_173;
          }
        }

        v36 = *(&v111 + 1);
      }

LABEL_173:
      ++v37;
    }

    while (v35 != v147 || v36 != *(&v147 + 1));
  }

  if (v149 == v148)
  {
    (*(*v149 + 32))(v149);
    v38 = v113;
    if (v113 != v112)
    {
      goto LABEL_163;
    }

LABEL_190:
    (*(*v38 + 32))(v38);
    v39 = v141;
    if (v141 != v140)
    {
      goto LABEL_166;
    }

    goto LABEL_191;
  }

  if (v149)
  {
    (*(*v149 + 40))(v149);
  }

  v38 = v113;
  if (v113 == v112)
  {
    goto LABEL_190;
  }

LABEL_163:
  if (v38)
  {
    (*(*v38 + 40))(v38);
  }

  v39 = v141;
  if (v141 != v140)
  {
LABEL_166:
    if (v39)
    {
      (*(*v39 + 40))(v39);
    }

    v40 = v145;
    if (v145 != v144)
    {
      goto LABEL_169;
    }

LABEL_192:
    (*(*v40 + 32))(v40);
    goto LABEL_193;
  }

LABEL_191:
  (*(*v39 + 32))(v39);
  v40 = v145;
  if (v145 == v144)
  {
    goto LABEL_192;
  }

LABEL_169:
  if (v40)
  {
    (*(*v40 + 40))(v40);
  }

LABEL_193:
  if (v37 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v37;
  }

  v111 = v123;
  v46 = v125;
  if (!v125)
  {
    goto LABEL_199;
  }

  if (v125 != v124)
  {
    v46 = (*(*v125 + 16))();
LABEL_199:
    v113 = v46;
    goto LABEL_201;
  }

  v113 = v112;
  (*(*v125 + 24))();
LABEL_201:
  v114 = v126;
  v147 = v119;
  v47 = v121;
  if (!v121)
  {
LABEL_204:
    v149 = v47;
    goto LABEL_206;
  }

  if (v121 != v120)
  {
    v47 = (*(*v121 + 16))();
    goto LABEL_204;
  }

  v149 = v148;
  (*(*v121 + 24))();
LABEL_206:
  v150 = v122;
  v49 = *(&v111 + 1);
  v48 = v111;
  if (v111 == v147)
  {
    v50 = 0;
  }

  else
  {
    v50 = 0;
    do
    {
      v55 = *(v49 + 8);
      v48 += 8;
      v49 += 16;
      *&v111 = v48;
      *(&v111 + 1) = v49;
      if (v48 != v114 || v49 != *(&v114 + 1))
      {
        while (1)
        {
          *&v135 = v48;
          *(&v135 + 1) = v49;
          if (!v113)
          {
            sub_27112AFFC();
          }

          v57 = (*(*v113 + 48))(v113, &v135);
          v48 = v111;
          if (v57)
          {
            break;
          }

          v48 = v111 + 8;
          v49 = *(&v111 + 1) + 16;
          *&v111 = v48;
          *(&v111 + 1) += 16;
          if (v48 == v114 && v49 == *(&v114 + 1))
          {
            goto LABEL_216;
          }
        }

        v49 = *(&v111 + 1);
      }

LABEL_216:
      v50 += v55;
    }

    while (v48 != v147 || v49 != *(&v147 + 1));
  }

  v51 = 3 * v45 - 3;
  if (v149 != v148)
  {
    if (v149)
    {
      (*(*v149 + 40))(v149);
    }

    v52 = v51 + v50;
    v53 = v113;
    if (v113 != v112)
    {
      goto LABEL_212;
    }

LABEL_233:
    (*(*v53 + 32))(v53);
    goto LABEL_234;
  }

  (*(*v149 + 32))(v149);
  v52 = v51 + v50;
  v53 = v113;
  if (v113 == v112)
  {
    goto LABEL_233;
  }

LABEL_212:
  if (v53)
  {
    (*(*v53 + 40))(v53);
  }

LABEL_234:
  memset(&__dst, 0, sizeof(__dst));
  if (v52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v52 >= 0x17)
  {
    if ((v52 | 7) == 0x17)
    {
      v59 = 24;
    }

    else
    {
      v59 = v52 | 7;
    }

    sub_27113107C(&__dst, v59);
  }

  v135 = v123;
  v60 = v125;
  if (v125)
  {
    if (v125 == v124)
    {
      v137 = v136;
      (*(*v125 + 24))();
      goto LABEL_245;
    }

    v60 = (*(*v125 + 16))();
  }

  v137 = v60;
LABEL_245:
  v138 = v126;
  if (v37 < 1)
  {
    goto LABEL_274;
  }

  std::string::append(&__dst, **(&v135 + 1), *(*(&v135 + 1) + 8));
  if (v37 == 1)
  {
    goto LABEL_274;
  }

  *&v135 = v135 + 8;
  v61 = v135;
  *(&v135 + 1) += 16;
  v62 = *(&v135 + 1);
  if (v135 != v138)
  {
    do
    {
      *&v131 = v61;
      *(&v131 + 1) = v62;
      if (!v137)
      {
        sub_27112AFFC();
      }

      if ((*(*v137 + 48))(v137, &v131))
      {
        break;
      }

      v61 = v135 + 8;
      v62 = *(&v135 + 1) + 16;
      *&v135 = v61;
      *(&v135 + 1) += 16;
    }

    while (v61 != v138 || v62 != *(&v138 + 1));
  }

  v131 = v135;
  v64 = v137;
  if (!v137)
  {
    goto LABEL_258;
  }

  if (v137 != v136)
  {
    v64 = (*(*v137 + 16))();
LABEL_258:
    v133 = v64;
    goto LABEL_262;
  }

  v133 = v132;
  (*(*v137 + 24))();
LABEL_262:
  v134 = v138;
  v127 = v119;
  v65 = v121;
  if (!v121)
  {
LABEL_265:
    v129 = v65;
    goto LABEL_267;
  }

  if (v121 != v120)
  {
    v65 = (*(*v121 + 16))();
    goto LABEL_265;
  }

  v129 = v128;
  (*(*v121 + 24))();
LABEL_267:
  v130 = v122;
  if (v131 != v127)
  {
    do
    {
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
        v74 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v74 - __dst.__r_.__value_.__l.__size_ < 3)
        {
          if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 3 - v74)
          {
            sub_271120DA8();
          }

LABEL_293:
          operator new();
        }

        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 20) < 3)
        {
          goto LABEL_293;
        }

        p_dst = &__dst;
      }

      v76 = p_dst + size;
      v76[2] = 32;
      *v76 = 31776;
      v77 = size + 3;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 3;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v77 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v77] = 0;
      std::string::append(&__dst, **(&v131 + 1), *(*(&v131 + 1) + 8));
      *&v131 = v131 + 8;
      v78 = v131;
      *(&v131 + 1) += 16;
      v71 = *(&v131 + 1);
      if (v131 != v134)
      {
        while (1)
        {
          v94[0] = v78;
          v94[1] = v71;
          if (!v133)
          {
            sub_27112AFFC();
          }

          v79 = (*(*v133 + 48))(v133, v94);
          v78 = v131;
          if (v79)
          {
            break;
          }

          v78 = v131 + 8;
          v71 = *(&v131 + 1) + 16;
          *&v131 = v78;
          *(&v131 + 1) += 16;
          if (v78 == v134 && v71 == *(&v134 + 1))
          {
            goto LABEL_284;
          }
        }

        v71 = *(&v131 + 1);
      }

LABEL_284:
      ;
    }

    while (v78 != v127 || v71 != *(&v127 + 1));
  }

  if (v129 == v128)
  {
    (*(*v129 + 32))(v129);
    v66 = v133;
    if (v133 != v132)
    {
LABEL_272:
      if (v66)
      {
        (*(*v66 + 40))(v66);
      }

LABEL_274:
      v67 = v137;
      if (v137 != v136)
      {
        goto LABEL_275;
      }

LABEL_310:
      (*(*v67 + 32))(v67);
      v68 = v121;
      if (v121 != v120)
      {
        goto LABEL_278;
      }

      goto LABEL_311;
    }
  }

  else
  {
    if (v129)
    {
      (*(*v129 + 40))();
    }

    v66 = v133;
    if (v133 != v132)
    {
      goto LABEL_272;
    }
  }

  (*(*v66 + 32))(v66);
  v67 = v137;
  if (v137 == v136)
  {
    goto LABEL_310;
  }

LABEL_275:
  if (v67)
  {
    (*(*v67 + 40))(v67);
  }

  v68 = v121;
  if (v121 != v120)
  {
LABEL_278:
    v69 = a1;
    if (v68)
    {
      (*(*v68 + 40))(v68);
    }

    v70 = v125;
    if (v125 != v124)
    {
      goto LABEL_281;
    }

LABEL_312:
    (*(*v70 + 32))(v70);
    goto LABEL_313;
  }

LABEL_311:
  (*(*v68 + 32))(v68);
  v69 = a1;
  v70 = v125;
  if (v125 == v124)
  {
    goto LABEL_312;
  }

LABEL_281:
  if (v70)
  {
    (*(*v70 + 40))(v70);
  }

LABEL_313:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &__dst;
  }

  else
  {
    v81 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = __dst.__r_.__value_.__l.__size_;
  }

  v83 = sub_271120E64(v69, v81, v82);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v84 = v101;
    if (v101 != v100)
    {
      goto LABEL_321;
    }

LABEL_333:
    (*(*v84 + 32))(v84);
    v85 = v97;
    if (v97 != v96)
    {
      goto LABEL_324;
    }

LABEL_334:
    (*(*v85 + 32))(v85);
    v86 = v109;
    if (v109 != v108)
    {
      goto LABEL_327;
    }

    goto LABEL_335;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v84 = v101;
  if (v101 == v100)
  {
    goto LABEL_333;
  }

LABEL_321:
  if (v84)
  {
    (*(*v84 + 40))(v84);
  }

  v85 = v97;
  if (v97 == v96)
  {
    goto LABEL_334;
  }

LABEL_324:
  if (v85)
  {
    (*(*v85 + 40))(v85);
  }

  v86 = v109;
  if (v109 != v108)
  {
LABEL_327:
    if (v86)
    {
      (*(*v86 + 40))(v86);
    }

    v87 = v105;
    if (v105 != v104)
    {
      goto LABEL_330;
    }

LABEL_336:
    (*(*v87 + 32))(v87);
    return v83;
  }

LABEL_335:
  (*(*v86 + 32))(v86);
  v87 = v105;
  if (v105 == v104)
  {
    goto LABEL_336;
  }

LABEL_330:
  if (v87)
  {
    (*(*v87 + 40))(v87);
  }

  return v83;
}

void sub_2714C8BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2714D4180(&STACK[0x3D0]);
  sub_2714D4180(&STACK[0x420]);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2714D4180(&STACK[0x2E0]);
  sub_2714D4180(&STACK[0x330]);
  sub_2714C8DA4(&a52);
  sub_2714C8EA0(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C8DA4(uint64_t a1)
{
  v2 = a1 + 88;
  v3 = *(a1 + 112);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (v4 != a1 + 16)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 40);
  if (v4 == a1 + 16)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_2714C8EA0(uint64_t a1)
{
  v2 = a1 + 80;
  v3 = *(a1 + 104);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (v4 != a1 + 16)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 40);
  if (v4 == a1 + 16)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void *sub_2714C8F9C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v4 = *(v1 + 8);
      *(v1 + 8) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

uint64_t sub_2714C9044(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    (*(**(*(a1 + 288) + 8) + 24))(*(*(a1 + 288) + 8));
  }

  if (*(a1 + 456) == 1)
  {
    sub_2714D8B28(a1 + 416, 0, 0);
  }

  v2 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v4 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v2, 0xA1C40BD48D6D6);
  }

  sub_2714D53D8(a1 + 416);
  std::mutex::~mutex((a1 + 352));
  std::condition_variable::~condition_variable((a1 + 304));
  v5 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v5)
  {
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    MEMORY[0x2743BF050](v5, 0xA1C40BD48D6D6);
  }

  std::mutex::~mutex((a1 + 224));
  v8 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v8)
  {
    MEMORY[0x2743BF050](v8, 0x10A1C40756C35FELL);
  }

  v9 = *(a1 + 208);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (*(a1 + 160) != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*(a1 + 160) != 1)
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 152);
  if (v10 == a1 + 128)
  {
    (*(*v10 + 32))(v10);
    if (*(a1 + 88) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  if (v10)
  {
    (*(*v10 + 40))(v10);
    if (*(a1 + 88) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (*(a1 + 88) != 1)
  {
    goto LABEL_37;
  }

LABEL_26:
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    if (v12 != v11)
    {
      v14 = 0;
      do
      {
        v15 = v12 + v14;
        if (*(v12 + v14 - 8) == 1)
        {
          v16 = *(v15 - 16);
          if (v16 != -1)
          {
            (off_2881323C8[v16])(&v20, v15 - 48);
          }

          *(v15 - 16) = -1;
        }

        *(v15 - 816) = off_2881327C0;
        sub_271347580(v15 - 800);
        v14 -= 816;
      }

      while (v12 + v14 != v11);
      v13 = *(a1 + 64);
    }

    *(a1 + 72) = v11;
    operator delete(v13);
  }

LABEL_37:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return a1;
}

void sub_2714C9408(uint64_t a1)
{
  sub_2714C9044(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C9440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 + 16;
  v9 = (*(*(a3 + 16) + 24))(a3 + 16);
  v11 = 48;
  if (!*(v9 + 64))
  {
    v11 = 0;
  }

  v12 = v9 + v11;
  if (*(a2 + 184) == 1)
  {
    v10 = (a2 + 176);
    if (*(a2 + 176) != *(v12 + 8))
    {
      sub_2714C2388(v12, v10, "exporter", 8);
    }
  }

  else
  {
    *(a2 + 168) = *v12;
    *(a2 + 184) = 1;
  }

  v13 = *(a2 + 168);
  v14 = *v12 - v13;
  if (*v12 == v13 || v14 < 0)
  {
    if (v14 <= -1000000001)
    {
      v18[0] = -((v13 - *v12) / 0xF4240uLL);
      sub_2714C2768(v12, v18);
    }
  }

  else
  {
    v15 = (*(*v8 + 24))(v8, v10);
    v16 = 48;
    if (!*(v15 + 64))
    {
      v16 = 0;
    }

    *(a2 + 168) = *(v15 + v16);
  }

  v19.__pn_.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  v18[0] = a2;
  v18[1] = &v19;
  v18[2] = a3;
  v17 = *(a4 + 32);
  if (v17 == -1)
  {
    sub_2711308D4();
  }

  v21 = v18;
  (off_2881323E8[v17])(&v21, a4);
  if (v20)
  {
    sub_2714E56F4(*(a2 + 216), a2 + 192, (a2 + 224), (a2 + 32), a3, &v19, *(a2 + 464));
  }

  *(a1 + 120) = 1;
}

void sub_2714C9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2714C9824(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v61 == 1 && v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (a2 == 4)
  {
    v52 = __cxa_begin_catch(a1);
    sub_2714D7694(v59, v52 + 16);
    sub_271238E60(v49, v59);
    sub_27112D71C(v59);
  }

  else
  {
    if (a2 == 3)
    {
      v53 = __cxa_begin_catch(a1);
      v54 = (*(*v53 + 16))(v53);
      sub_2711CC04C(v57, v54);
      v58 = 1;
      sub_27139F524(2, v57, v59);
    }

    else
    {
      v55 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v56 = (*(*v55 + 16))(v55);
        sub_2711CC04C(v57, v56);
        v58 = 1;
        sub_27139F524(3, v57, v59);
      }

      else
      {
        v57[0] = 0;
        v58 = 0;
        sub_27139F524(1, v57, v59);
      }
    }

    sub_271238E60(v49, v59);
    sub_27112D71C(v59);
    sub_27112D66C(v57);
  }

  __cxa_end_catch();
}

void sub_2714C9984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_2714C99E4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a3;
  if (*(a2 + 88))
  {
    sub_2714FCC00(a3 + 16);
    v6 = *(a2 + 64);
    v7 = *(a2 + 72);
    if (v6 != v7)
    {
      while ((sub_2714F44BC(v6, a3) & 1) == 0)
      {
        v6 += 816;
        if (v6 == v7)
        {
          v6 = v7;
          break;
        }
      }

      v7 = *(a2 + 72);
    }

    if (v6 == v7)
    {
      v12[0] = 6;
      v13 = 0;
      sub_2714C9BF8(a1, v10, v12);
      if (v13 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v6 + 808))
      {
        sub_2714C9BF8(a1, v10, v6 + 768);
        goto LABEL_16;
      }

      v12[0] = 6;
      v13 = 0;
      sub_2714C9BF8(a1, v10, v12);
      if (v13 == -1)
      {
LABEL_16:
        if (v9 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    (off_2881323C8[v13])(&v11, v12);
    goto LABEL_16;
  }

  v12[0] = 6;
  v13 = 0;
  sub_2714C9BF8(a1, v10, v12);
  if (v13 != -1)
  {
    (off_2881323C8[v13])(&__p, v12);
  }
}

void sub_2714C9B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C9BF8(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(*a2 + 112) == 1)
  {
    v5 = a2[1];
    __lk.__m_ = (v4 + 352);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 352));
    if (*(v4 + 104) != 1)
    {
      goto LABEL_7;
    }

    v6 = atomic_load((v4 + 296));
    if ((*(v4 + 104) & 1) == 0)
    {
      sub_2711B0B74();
    }

    if (*(v4 + 96) > v6)
    {
LABEL_7:
      atomic_fetch_add((v4 + 296), 1u);
      v34[0] = &unk_288132570;
      v36 = v34;
      operator new();
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = atomic_load((v4 + 296));
    if (*(v4 + 104) != 1)
    {
      goto LABEL_80;
    }

    if (*(v4 + 96) > v8)
    {
      goto LABEL_7;
    }

    rep = v7.__d_.__rep_;
    LODWORD(v43) = 0;
    v37 = v42;
    v38 = "blocking caller while waiting for space in queue";
    v39 = v42;
    v40 = "blocking caller while waiting for space in queue";
    v41 = "blocking caller while waiting for space in queue";
    v23 = &v37;
    sub_2712D85E0(&v23);
    if (v43 == -1)
    {
LABEL_81:
      sub_2711308D4();
    }

    v37 = &v23;
    (off_288132410[v43])(v34, &v37, v42);
    if (v43 != -1)
    {
      (off_2881323F8[v43])(&v37, v42);
    }

    sub_2714C2E18(v34, *(v4 + 96), *(v4 + 104), v24);
    if (*(v4 + 160) == 1)
    {
      v13 = *(v4 + 152);
      if (!v13)
      {
LABEL_82:
        sub_27112AFFC();
      }

      (*(*v13 + 48))(v13, v4 + 32, v5 + 16, v24);
    }

    if (v32 == 1)
    {
      if (v31 == 1)
      {
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27[1]);
        }
      }

      if (LOBYTE(v27[0]) == 1 && SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    std::chrono::steady_clock::now();
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16.__d_.__rep_ = 1000000000;
    if (v15.__d_.__rep_)
    {
      if (v15.__d_.__rep_ <= 0)
      {
        v16.__d_.__rep_ = 0x800000003B9ACA00;
        if (v15.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          goto LABEL_48;
        }
      }

      else if (v15.__d_.__rep_ >= 0x20C49BA5D411B8)
      {
        v16.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_48;
      }

      v16.__d_.__rep_ = 1000 * v15.__d_.__rep_ + 1000000000;
    }

LABEL_48:
    std::condition_variable::__do_timed_wait((v4 + 304), &__lk, v16);
    std::chrono::steady_clock::now();
    v17 = atomic_load((v4 + 296));
    if (*(v4 + 104) == 1)
    {
      v18 = v14.__d_.__rep_ - rep;
      while (1)
      {
        if (*(v4 + 96) > v17)
        {
          goto LABEL_7;
        }

        if (std::chrono::steady_clock::now().__d_.__rep_ - (v18 + rep) >= 500000000)
        {
          break;
        }

LABEL_70:
        std::chrono::steady_clock::now();
        v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v19.__d_.__rep_ = 1000000000;
        if (v21.__d_.__rep_)
        {
          if (v21.__d_.__rep_ < 1)
          {
            if (v21.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v19.__d_.__rep_ = 1000 * v21.__d_.__rep_ + 1000000000;
            }

            else
            {
              v19.__d_.__rep_ = 0x800000003B9ACA00;
            }
          }

          else if (v21.__d_.__rep_ >= 0x20C49BA5D411B8)
          {
            v19.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19.__d_.__rep_ = 1000 * v21.__d_.__rep_ + 1000000000;
          }
        }

        std::condition_variable::__do_timed_wait((v4 + 304), &__lk, v19);
        std::chrono::steady_clock::now();
        v17 = atomic_load((v4 + 296));
        if ((*(v4 + 104) & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      LODWORD(v43) = 0;
      v37 = v42;
      v38 = "blocking caller while waiting for space in queue";
      v39 = v42;
      v40 = "blocking caller while waiting for space in queue";
      v41 = "blocking caller while waiting for space in queue";
      v23 = &v37;
      sub_2712D85E0(&v23);
      if (v43 == -1)
      {
        goto LABEL_81;
      }

      v37 = &v23;
      (off_288132410[v43])(v34, &v37, v42);
      if (v43 != -1)
      {
        (off_2881323F8[v43])(&v37, v42);
      }

      sub_2714C2E18(v34, *(v4 + 96), *(v4 + 104), v24);
      if (*(v4 + 160) == 1)
      {
        v20 = *(v4 + 152);
        if (!v20)
        {
          goto LABEL_82;
        }

        (*(*v20 + 48))(v20, v4 + 32, v5 + 16, v24);
      }

      if (v32 != 1)
      {
        goto LABEL_67;
      }

      if (v31 != 1)
      {
        goto LABEL_64;
      }

      if (v30 < 0)
      {
        operator delete(__p);
        if ((v28 & 0x80000000) == 0)
        {
LABEL_64:
          if (LOBYTE(v27[0]) == 1)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }
      }

      else if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      operator delete(v27[1]);
      if (LOBYTE(v27[0]) == 1)
      {
LABEL_65:
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }
      }

LABEL_67:
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v18 = std::chrono::steady_clock::now().__d_.__rep_ - rep;
      goto LABEL_70;
    }

LABEL_80:
    sub_2711B0B74();
  }

  sub_2714C9440(v24, *a2, a2[1], a3);
  if (v33 == 1)
  {
    *a1 = 0;
    a1[8] = 0;
    return;
  }

  if (*(v4 + 160) != 1)
  {
    *a1 = 0;
    a1[8] = 0;
    if (v32 != 1)
    {
      return;
    }

    goto LABEL_16;
  }

  v10 = *(v4 + 152);
  if (!v10)
  {
    sub_27112AFFC();
  }

  (*(*v10 + 48))(v10, v4 + 32, a2[1] + 16, v24);
  v11 = v33;
  *a1 = 0;
  a1[8] = 0;
  if ((v11 & 1) == 0 && v32 == 1)
  {
LABEL_16:
    if (v31 == 1)
    {
      if (v30 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[1]);
      }
    }

    if (LOBYTE(v27[0]) == 1 && SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_2714CABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_27112D71C(&a20);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714CAD50(uint64_t a1, uint64_t a2)
{
  sub_2714C99E4(&v4, a1, a2);
  if (v5 == 1)
  {
    std::future<void>::~future(&v4);
  }

  return a1;
}

void sub_2714CADC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810C008;
  v7[0] = 0;
  v9 = 0;
  if (*(a4 + 32) == 1)
  {
    v6 = *(a4 + 24);
    if (v6)
    {
      if (v6 == a4)
      {
        v8 = v7;
        (*(*v6 + 24))(v6, v7);
      }

      else
      {
        v8 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 1;
  }

  if (*(a3 + 48) == 1)
  {
    sub_27174C01C();
  }

  operator new();
}

void sub_2714CB80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714CB9B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      (*(**(*(v2 + 288) + 8) + 24))(*(*(v2 + 288) + 8));
    }

    if (*(v2 + 456) == 1)
    {
      sub_2714D8B28(v2 + 416, 0, 0);
    }
  }

  v3 = *(a1 + 16);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2714CBA94(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      (*(**(*(v2 + 288) + 8) + 24))(*(*(v2 + 288) + 8));
    }

    if (*(v2 + 456) == 1)
    {
      sub_2714D8B28(v2 + 416, 0, 0);
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714CBB80(uint64_t a1, uint64_t a2)
{
  sub_2714C99E4(&v4, *(a1 + 8), a2);
  if (v5 == 1)
  {
    std::future<void>::~future(&v4);
  }

  return a1;
}

void sub_2714CBBD0(void *a1)
{
  v1 = a1;
  v2 = a1[32];
  if (!v2)
  {
    return;
  }

  v3 = (*(*v2 + 16))(v2);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  LOBYTE(v69) = 0;
  *v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v66 = 0;
  v65 = 0uLL;
  LOBYTE(v67) = 0;
  sub_2714DEEBC(&v50, v63);
  if (v1[35] < 0x86BCA1AF286BCA1BLL * ((v1[37] - v1[36]) >> 3))
  {
    goto LABEL_139;
  }

  v4 = 0;
  v5 = v3 + 4;
  v48 = v3;
  while (1)
  {
    v6 = v1[34];
    *(v6 + 128) = 1;
    *(v6 + 80) = 0;
    *(v6 + 104) = 0;
    *(v6 + 130) = 0;
    *(v6 + 132) = 0;
    LODWORD(v63[0]) = 3;
    sub_27183A9AC(v6, v63);
    v7 = v63[0];
    if (LODWORD(v63[0]) > 1)
    {
      sub_27183B36C(v6, &v50);
      ++*(v6 + 80);
      if (*(v6 + 128) == 1 && *(v6 + 131) == 1)
      {
        *(v6 + 132) = 1;
      }

      else
      {
        sub_27183D78C(v6, v63);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        __p = *v63;
        v52 = v63[2];
        ++*(v6 + 104);
      }

      sub_27183A9AC(v6, &v53);
      v8 = *(v6 + 80);
      *(v6 + 80) = v8 + 1;
      if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
      {
        *(v6 + 132) = 1;
        *(v6 + 80) = v8 + 2;
      }

      else
      {
        sub_27183D78C(v6, v63);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        v54 = *v63;
        v55 = v63[2];
        ++*(v6 + 104);
        v10 = *(v6 + 128);
        ++*(v6 + 80);
        if ((v10 & 1) == 0 || (*(v6 + 131) & 1) == 0)
        {
          sub_27183D78C(v6, v63);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          v56 = *v63;
          v57 = v63[2];
          ++*(v6 + 104);
          goto LABEL_36;
        }
      }

      *(v6 + 132) = 1;
LABEL_36:
      sub_27183B02C(v6, &v58);
      if (v7 == 2)
      {
        goto LABEL_71;
      }

      v12 = *(v6 + 80);
      *(v6 + 80) = v12 + 1;
      if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
      {
        *(v6 + 132) = 1;
        *(v6 + 80) = v12 + 2;
LABEL_58:
        *(v6 + 132) = 1;
        goto LABEL_71;
      }

      sub_27183D78C(v6, v63);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      v59 = *v63;
      v60 = v63[2];
      ++*(v6 + 104);
      v13 = *(v6 + 128);
      ++*(v6 + 80);
      if (v13 & 1) != 0 && (*(v6 + 131))
      {
        goto LABEL_58;
      }

      sub_27183D78C(v6, v63);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61);
      }

      v61 = *v63;
      v62 = v63[2];
      ++*(v6 + 104);
      while (1)
      {
LABEL_71:
        if ((*(v6 + 131) & 1) != 0 || (*(*(v6 + 16) + *(**(v6 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_90;
        }

        sub_27183D78C(v6, v63);
        if (SHIBYTE(v63[2]) < 0)
        {
          if (v63[1] == 1 && *(v6 + 72) == *v63[0])
          {
LABEL_79:
            v14 = 0;
            if (SHIBYTE(v63[2]) < 0)
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }
        }

        else if (SHIBYTE(v63[2]) == 1 && *(v6 + 72) == LOBYTE(v63[0]))
        {
          goto LABEL_79;
        }

        v14 = 1;
        if (SHIBYTE(v63[2]) < 0)
        {
LABEL_82:
          operator delete(v63[0]);
        }

LABEL_70:
        if ((v14 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    v64 = 0;
    memset(v63, 0, sizeof(v63));
    LOBYTE(v69) = 0;
    *v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v72 = 0;
    v66 = 0;
    v65 = 0uLL;
    LOBYTE(v67) = 0;
    sub_2714DEDA0(v73, v63);
    sub_27183B36C(v6, v73);
    ++*(v6 + 80);
    if (*(v6 + 128) == 1 && *(v6 + 131) == 1)
    {
      *(v6 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v6, v63);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74);
      }

      v74 = *v63;
      v75 = v63[2];
      ++*(v6 + 104);
    }

    sub_27183A9AC(v6, &v76);
    v9 = *(v6 + 80);
    *(v6 + 80) = v9 + 1;
    if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
    {
      *(v6 + 132) = 1;
      *(v6 + 80) = v9 + 2;
LABEL_32:
      *(v6 + 132) = 1;
      goto LABEL_43;
    }

    sub_27183D78C(v6, v63);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    v77 = *v63;
    v78 = v63[2];
    ++*(v6 + 104);
    v11 = *(v6 + 128);
    ++*(v6 + 80);
    if (v11 & 1) != 0 && (*(v6 + 131))
    {
      goto LABEL_32;
    }

    sub_27183D78C(v6, v63);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    v79 = *v63;
    v80 = v63[2];
    ++*(v6 + 104);
LABEL_43:
    sub_27183B02C(v6, &v81);
    sub_2714DF0B8(v63, v73);
    v50 = v63[0];
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

    __p = *&v63[1];
    v52 = v63[3];
    HIBYTE(v63[3]) = 0;
    LOBYTE(v63[1]) = 0;
    v53 = v64;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    v54 = v65;
    v55 = v66;
    HIBYTE(v66) = 0;
    LOBYTE(v65) = 0;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    v56 = v67;
    v57 = v68;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
    v58 = v69;
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    v59 = *v70;
    v60 = *&v71[0];
    BYTE7(v71[0]) = 0;
    LOBYTE(v70[0]) = 0;
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
      v61 = *(v71 + 8);
      v62 = *(&v71[1] + 1);
      HIBYTE(v71[1]) = 0;
      BYTE8(v71[0]) = 0;
      if (SBYTE7(v71[0]) < 0)
      {
        operator delete(v70[0]);
        if ((SHIBYTE(v68) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v66) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_85;
        }
      }

      else if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v61 = *(v71 + 8);
      v62 = *(&v71[1] + 1);
      HIBYTE(v71[1]) = 0;
      BYTE8(v71[0]) = 0;
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    operator delete(v67);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
LABEL_62:
      if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_86;
    }

LABEL_85:
    operator delete(v65);
    if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
    {
LABEL_63:
      if ((SHIBYTE(v80) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(v63[1]);
    if ((SHIBYTE(v80) & 0x80000000) == 0)
    {
LABEL_64:
      if (SHIBYTE(v78) < 0)
      {
        goto LABEL_88;
      }

      goto LABEL_65;
    }

LABEL_87:
    operator delete(v79);
    if (SHIBYTE(v78) < 0)
    {
LABEL_88:
      operator delete(v77);
      if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

LABEL_65:
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_89:
    operator delete(v74);
LABEL_90:
    if (!sub_27183DB7C(v6))
    {
      break;
    }

    sub_2714DF1E0(&v50, v63);
    v15 = v1[37];
    v16 = v1[38];
    if (v15 >= v16)
    {
      v22 = v5;
      v23 = v4;
      v24 = v1[36];
      v25 = 0x86BCA1AF286BCA1BLL * ((v15 - v24) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0x1AF286BCA1AF286)
      {
        sub_271135560();
      }

      v27 = v1;
      v28 = 0x86BCA1AF286BCA1BLL * ((v16 - v24) >> 3);
      if (2 * v28 > v26)
      {
        v26 = 2 * v28;
      }

      if (v28 >= 0xD79435E50D7943)
      {
        v29 = 0x1AF286BCA1AF286;
      }

      else
      {
        v29 = v26;
      }

      if (v29)
      {
        if (v29 <= 0x1AF286BCA1AF286)
        {
          operator new();
        }

        sub_2711270EC();
      }

      v30 = 152 * v25;
      *v30 = v63[0];
      *(v30 + 8) = *&v63[1];
      *(v30 + 24) = v63[3];
      memset(&v63[1], 0, 24);
      *(v30 + 32) = v64;
      *(v30 + 40) = v65;
      *(v30 + 56) = v66;
      v66 = 0;
      v65 = 0uLL;
      *(152 * v25 + 0x40) = 0;
      *(v30 + 88) = 0;
      if (v69 == 1)
      {
        *(152 * v25 + 0x40) = v67;
        *(152 * v25 + 0x50) = v68;
        v68 = 0;
        v67 = 0uLL;
        *(152 * v25 + 0x58) = 1;
      }

      v31 = v1[36];
      v32 = v1[37];
      v33 = v32 - v31;
      *(152 * v25 + 0x60) = *v70;
      v34 = *&v71[0];
      v70[1] = 0;
      *&v71[0] = 0;
      v70[0] = 0;
      v35 = *(&v71[0] + 1);
      *(152 * v25 + 0x70) = v34;
      *(152 * v25 + 0x78) = v35;
      *(152 * v25 + 0x80) = v71[1];
      *(152 * v25 + 0x90) = v72;
      v71[1] = 0uLL;
      v72 = 0;
      if (v32 == v31)
      {
        v4 = v23;
      }

      else
      {
        v49 = v32 - v31;
        v36 = 0;
        v37 = -8 * ((v32 - v31) >> 3) + 152 * v25;
        do
        {
          v40 = &v31[v36];
          v41 = v37 + v36;
          *v41 = *&v31[v36];
          v42 = *&v31[v36 + 8];
          *(v41 + 24) = *&v31[v36 + 24];
          *(v41 + 8) = v42;
          *(v40 + 2) = 0;
          *(v40 + 3) = 0;
          *(v40 + 1) = 0;
          *(v41 + 32) = *&v31[v36 + 32];
          v43 = *&v31[v36 + 40];
          *(v41 + 56) = *&v31[v36 + 56];
          *(v41 + 40) = v43;
          *(v40 + 6) = 0;
          *(v40 + 7) = 0;
          *(v40 + 5) = 0;
          *(v37 + v36 + 64) = 0;
          *(v41 + 88) = 0;
          if (v31[v36 + 88] == 1)
          {
            v44 = *(v40 + 4);
            *(v37 + v36 + 80) = *(v40 + 10);
            *(v37 + v36 + 64) = v44;
            *(v40 + 9) = 0;
            *(v40 + 10) = 0;
            *(v40 + 8) = 0;
            *(v41 + 88) = 1;
          }

          v38 = *(v40 + 6);
          *(v41 + 112) = *(v40 + 14);
          *(v41 + 96) = v38;
          *(v40 + 13) = 0;
          *(v40 + 14) = 0;
          *(v40 + 12) = 0;
          *(v41 + 120) = *(v40 + 15);
          v39 = *(v40 + 8);
          *(v41 + 144) = *(v40 + 18);
          *(v41 + 128) = v39;
          *(v40 + 17) = 0;
          *(v40 + 18) = 0;
          *(v40 + 16) = 0;
          v36 += 152;
        }

        while (v40 + 152 != v32);
        v4 = v23;
        do
        {
          sub_2714D73E0(v31);
          v31 += 152;
        }

        while (v31 != v32);
        v31 = v27[36];
        v33 = v49;
      }

      v27[36] = v30 - v33;
      v27[37] = v30 + 152;
      v27[38] = 0;
      v1 = v27;
      if (v31)
      {
        operator delete(v31);
      }

      v45 = SHIBYTE(v72);
      v27[37] = v30 + 152;
      v3 = v48;
      v5 = v22;
      if (v45 < 0)
      {
        operator delete(*&v71[1]);
        if ((SBYTE7(v71[0]) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }
      }

      else if ((SBYTE7(v71[0]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }
    }

    else
    {
      *v15 = v63[0];
      v17 = *&v63[1];
      *(v15 + 24) = v63[3];
      *(v15 + 8) = v17;
      memset(&v63[1], 0, 24);
      *(v15 + 32) = v64;
      v18 = v65;
      *(v15 + 56) = v66;
      *(v15 + 40) = v18;
      v66 = 0;
      v65 = 0uLL;
      *(v15 + 64) = 0;
      *(v15 + 88) = 0;
      if (v69 == 1)
      {
        v19 = v67;
        *(v15 + 80) = v68;
        *(v15 + 64) = v19;
        v68 = 0;
        v67 = 0uLL;
        *(v15 + 88) = 1;
      }

      v20 = *v70;
      *(v15 + 112) = *&v71[0];
      *(v15 + 96) = v20;
      v70[1] = 0;
      *&v71[0] = 0;
      v70[0] = 0;
      *(v15 + 120) = *(&v71[0] + 1);
      v21 = v71[1];
      *(v15 + 144) = v72;
      *(v15 + 128) = v21;
      v72 = 0;
      v71[1] = 0uLL;
      v1[37] = v15 + 152;
      if ((SBYTE7(v71[0]) & 0x80000000) == 0)
      {
LABEL_120:
        if (v69 != 1)
        {
          goto LABEL_126;
        }

        goto LABEL_124;
      }
    }

    operator delete(v70[0]);
    if (v69 != 1)
    {
      goto LABEL_126;
    }

LABEL_124:
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }

LABEL_126:
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
      if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
      {
LABEL_128:
        if ((*(v5 + *(*v3 - 24)) & 2) != 0)
        {
          break;
        }

        goto LABEL_132;
      }
    }

    else if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

    operator delete(v63[1]);
    if ((*(v5 + *(*v3 - 24)) & 2) != 0)
    {
      break;
    }

LABEL_132:
    v46 = v4 > 0x1FE;
    v4 += 2;
    if (v46)
    {
      v4 = 0;
      if (v1[35] < 0x86BCA1AF286BCA1BLL * ((v1[37] - v1[36]) >> 3))
      {
        goto LABEL_139;
      }
    }
  }

  v47 = v1[33];
  v1[32] = 0;
  v1[33] = 0;
  if (v47)
  {
    if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }
  }

LABEL_139:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
    if (SHIBYTE(v60) < 0)
    {
      goto LABEL_146;
    }

LABEL_141:
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_147:
    operator delete(v56);
    if (SHIBYTE(v55) < 0)
    {
      goto LABEL_148;
    }

LABEL_143:
    if (SHIBYTE(v52) < 0)
    {
LABEL_149:
      operator delete(__p);
    }
  }

  else
  {
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_146:
    operator delete(v59);
    if (SHIBYTE(v57) < 0)
    {
      goto LABEL_147;
    }

LABEL_142:
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

LABEL_148:
    operator delete(v54);
    if (SHIBYTE(v52) < 0)
    {
      goto LABEL_149;
    }
  }
}

void sub_2714CC890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_2714D2B08(va);
  _Unwind_Resume(a1);
}

void sub_2714CC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_2714D2B08(va);
  sub_2714D7810(&a11);
  _Unwind_Resume(a1);
}

void sub_2714CC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC924(uint64_t a1)
{
  v62 = (a1 + 344);
  v63 = (a1 + 320);
  while (1)
  {
    v2 = *(a1 + 288);
    v3 = *(a1 + 280);
    if (v3 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v2) >> 3) && !*(a1 + 256))
    {
      return;
    }

    v4 = v2 + 152 * v3;
    v5 = *(a1 + 136);
    v6 = *(a1 + 144);
    if (v5 != v6)
    {
      break;
    }

LABEL_14:
    v11 = *v63;
    if (!*v63)
    {
      goto LABEL_56;
    }

    v12 = *(v4 + 31);
    if (v12 >= 0)
    {
      v13 = (v4 + 8);
    }

    else
    {
      v13 = *(v4 + 8);
    }

    if (v12 >= 0)
    {
      v14 = *(v4 + 31);
    }

    else
    {
      v14 = *(v4 + 16);
    }

    v15 = v63;
    do
    {
      while (1)
      {
        v16 = *(v11 + 55);
        v17 = v16 >= 0 ? v11 + 4 : v11[4];
        v18 = v16 >= 0 ? *(v11 + 55) : v11[5];
        v19 = v14 >= v18 ? v18 : v14;
        v20 = memcmp(v17, v13, v19);
        if (v20)
        {
          break;
        }

        if (v18 >= v14)
        {
          goto LABEL_36;
        }

LABEL_22:
        v11 = v11[1];
        if (!v11)
        {
          goto LABEL_37;
        }
      }

      if (v20 < 0)
      {
        goto LABEL_22;
      }

LABEL_36:
      v15 = v11;
      v11 = *v11;
    }

    while (v11);
LABEL_37:
    if (v15 == v63)
    {
      goto LABEL_56;
    }

    v23 = v15[4];
    v22 = v15 + 4;
    v21 = v23;
    v24 = *(v22 + 23);
    if (v24 >= 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

    if (v24 >= 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v22[1];
    }

    if (v26 >= v14)
    {
      v27 = v14;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v13, v25, v27);
    if (v28)
    {
      if (v28 < 0)
      {
LABEL_56:
        sub_27112AE58((a1 + 312), (v4 + 8), v4 + 8);
        sub_2714C3340((v4 + 8), &v67);
        v78 = v67;
        LOBYTE(v79) = 0;
        v88 = 0;
        if (v77 == 1)
        {
          v81 = 0;
          if (v70 == 1)
          {
            v79 = __p;
            v80 = v69;
            v69 = 0;
            __p = 0uLL;
            v81 = 1;
            LOBYTE(v82) = 0;
            v87 = 0;
            if (v76 != 1)
            {
              goto LABEL_59;
            }

LABEL_62:
            v82 = v71;
            v83 = v72;
            v72 = 0;
            v71 = 0uLL;
            v84 = v73;
            v85 = v74;
            v86 = v75;
            v74 = 0uLL;
            v75 = 0;
            v87 = 1;
            v88 = 1;
            if (v70)
            {
              goto LABEL_63;
            }
          }

          else
          {
            LOBYTE(v82) = 0;
            v87 = 0;
            if (v76 == 1)
            {
              goto LABEL_62;
            }

LABEL_59:
            v88 = 1;
            if (v70)
            {
LABEL_63:
              if (SHIBYTE(v69) < 0)
              {
                operator delete(__p);
              }
            }
          }
        }

        operator new();
      }
    }

    else if (v14 < v26)
    {
      goto LABEL_56;
    }

LABEL_104:
    v51 = *(a1 + 288);
    v52 = *(a1 + 280) + 1;
    *(a1 + 280) = v52;
    if (v52 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v51) >> 3))
    {
      sub_2714CBBD0(a1);
    }
  }

  while (1)
  {
    if (*v5)
    {
      v7 = (*(**v5 + 16))(*v5);
      v9 = *(v4 + 31);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *(v4 + 8);
        v9 = *(v4 + 16);
        if (v8 != v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v10 = (v4 + 8);
        if (v8 != v9)
        {
          goto LABEL_7;
        }
      }

      if (!memcmp(v7, v10, v9))
      {
        break;
      }
    }

LABEL_7:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  if (((*(**v5 + 40))(*v5, *(v4 + 32)) & 1) == 0)
  {
    v33 = *(v4 + 32);
    v34 = *v62;
    if (!*v62)
    {
LABEL_92:
      operator new();
    }

    v35 = *(v4 + 31);
    if (v35 >= 0)
    {
      v36 = (v4 + 8);
    }

    else
    {
      v36 = *(v4 + 8);
    }

    if (v35 >= 0)
    {
      v37 = *(v4 + 31);
    }

    else
    {
      v37 = *(v4 + 16);
    }

    while (1)
    {
      v38 = v34;
      v41 = v34[4];
      v39 = v34 + 4;
      v40 = v41;
      v42 = *(v39 + 23);
      if (v42 >= 0)
      {
        v43 = v39;
      }

      else
      {
        v43 = v40;
      }

      if (v42 >= 0)
      {
        v44 = *(v39 + 23);
      }

      else
      {
        v44 = v39[1];
      }

      if (v44 >= v37)
      {
        v45 = v37;
      }

      else
      {
        v45 = v44;
      }

      v46 = memcmp(v36, v43, v45);
      if (v46)
      {
        if (v46 < 0)
        {
          goto LABEL_73;
        }

LABEL_87:
        v47 = memcmp(v43, v36, v45);
        if (v47)
        {
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_106;
          }
        }

        else if (v44 >= v37)
        {
LABEL_106:
          v53 = v38[8];
          if (!v53)
          {
LABEL_119:
            operator new();
          }

          v54 = v38 + 8;
          v55 = v38[8];
          do
          {
            v56 = *(v55 + 28);
            v57 = v56 >= v33;
            v58 = v56 < v33;
            if (v57)
            {
              v54 = v55;
            }

            v55 = *(v55 + 8 * v58);
          }

          while (v55);
          if (v54 != v38 + 8 && *(v54 + 7) <= v33)
          {
            goto LABEL_104;
          }

          while (1)
          {
            while (1)
            {
              v59 = v53;
              v60 = *(v53 + 28);
              if (v60 <= v33)
              {
                break;
              }

              v53 = *v59;
              if (!*v59)
              {
                goto LABEL_119;
              }
            }

            if (v60 >= v33)
            {
              break;
            }

            v53 = v59[1];
            if (!v53)
            {
              goto LABEL_119;
            }
          }

          if (*(v4 + 31) < 0)
          {
            sub_271127178(v64, *(v4 + 8), *(v4 + 16));
          }

          else
          {
            v61 = *(v4 + 8);
            v65 = *(v4 + 24);
            *v64 = v61;
          }

          v66 = v33;
          sub_2714C35E8(v64, &v67);
          v78 = v67;
          LOBYTE(v79) = 0;
          v88 = 0;
          if (v77 == 1)
          {
            v81 = 0;
            if (v70 == 1)
            {
              v79 = __p;
              v80 = v69;
              v69 = 0;
              __p = 0uLL;
              v81 = 1;
              LOBYTE(v82) = 0;
              v87 = 0;
              if (v76 != 1)
              {
                goto LABEL_126;
              }

LABEL_129:
              v82 = v71;
              v83 = v72;
              v72 = 0;
              v71 = 0uLL;
              v84 = v73;
              v85 = v74;
              v86 = v75;
              v74 = 0uLL;
              v75 = 0;
              v87 = 1;
              v88 = 1;
              if (v70)
              {
                goto LABEL_130;
              }
            }

            else
            {
              LOBYTE(v82) = 0;
              v87 = 0;
              if (v76 == 1)
              {
                goto LABEL_129;
              }

LABEL_126:
              v88 = 1;
              if (v70)
              {
LABEL_130:
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64[0]);
          }

          operator new();
        }

        v34 = v38[1];
        if (!v34)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v37 >= v44)
        {
          goto LABEL_87;
        }

LABEL_73:
        v34 = *v38;
        if (!*v38)
        {
          goto LABEL_92;
        }
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    v29 = *(a1 + 288) + 152 * *(a1 + 280);
    if (*(v29 + 31) < 0)
    {
      sub_271127178(&v78, *(v29 + 8), *(v29 + 16));
      DWORD2(v79) = *(v29 + 32);
      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      if (v32 == v31)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v30 = *(v29 + 8);
      *&v79 = *(v29 + 24);
      v78 = v30;
      DWORD2(v79) = *(v29 + 32);
      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      if (v32 == v31)
      {
LABEL_100:
        v32 = v31;
        goto LABEL_101;
      }
    }

    v48 = v32;
    while (1)
    {
      v49 = *(v29 + 63);
      if ((v49 & 0x8000000000000000) != 0)
      {
        v50 = *(v29 + 40);
        v49 = *(v29 + 48);
      }

      else
      {
        v50 = (v29 + 40);
      }

      if (sub_2714F3E4C(v48, &v78, v50, v49))
      {
        break;
      }

      v48 += 768;
      v32 += 768;
      if (v48 == v31)
      {
        goto LABEL_100;
      }
    }

LABEL_101:
    if (SBYTE7(v79) < 0)
    {
      operator delete(v78);
    }

    if (v32 == v31)
    {
      goto LABEL_104;
    }
  }
}