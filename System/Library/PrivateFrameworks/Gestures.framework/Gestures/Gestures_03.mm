uint64_t sub_18E6AC168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  return a1;
}

uint64_t sub_18E6AC1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 48) == 1)
  {
    v9 = *v8;
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    *(v7 + 48) = *(v8 + 48);
    *(v7 + 16) = v10;
    *(v7 + 32) = v11;
    *v7 = v9;
  }

  else if (*(v8 + 48) == 1)
  {
    sub_18E6AC114(v7);
    v13 = *(v8 + 16);
    v12 = *(v8 + 32);
    v14 = *v8;
    *(v7 + 48) = *(v8 + 48);
    *(v7 + 16) = v13;
    *(v7 + 32) = v12;
    *v7 = v14;
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 24) = *(v8 + 24);
    *(v7 + 32) = *(v8 + 32);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 48) = *(v8 + 48);
  }

  return a1;
}

uint64_t sub_18E6AC2FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    v19 = v18 <= 0;
    if (v18 < 0)
    {
      v18 = -1;
    }

    if (v19)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_18E6AC44C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFC8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      result = 0.0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 2147483646;
    }

    else
    {
      *(v19 + 48) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_18E6AC640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ExpirablePayload(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E6AC6D8(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 1uLL)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 2;
      v9 = v12 + 2;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  v14 = v5 + 1;
  if (v9 == 1)
  {
    v15 = a2;
    (*(v4 + 16))(a1);
    a2 = v15;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    *a1 = *a2;
  }

  *(v3 + v5) = v16;
  v17 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *(v17 + 24) = *(v18 + 24);

  return v3;
}

uint64_t sub_18E6AC880(unsigned __int8 *a1, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) <= 1uLL)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_18;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_18:
  if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
  }
}

unsigned __int8 *sub_18E6AC9A0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 1uLL)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
    v11 = 1;
  }

  else
  {
    v11 = 0;
    *a1 = *a2;
  }

  a1[v5] = v11;
  v12 = &a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8;
  v13 = &a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 24) = *(v13 + 24);

  return a1;
}

unsigned __int8 *sub_18E6ACAFC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 1uLL)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_35;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_35:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          *a1 = *a2;
        }

        a1[v7] = v18;
        goto LABEL_39;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_35;
  }

LABEL_39:
  v19 = *(v6 + 64);
  if (v19 <= 1)
  {
    v19 = 1;
  }

  v20 = v19 + 8;
  v21 = (&a1[v20] & 0xFFFFFFFFFFFFFFF8);
  v22 = (&a2[v20] & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v21[1] = v22[1];
  v21[2] = v22[2];
  v21[3] = v22[3];

  return a1;
}

__n128 sub_18E6ACD3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    v10 = a1;
    (*(*(*(a3 + 16) - 8) + 32))(a1, a2);
    a1 = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    *a1 = *a2;
  }

  a1[v4] = v11;
  v12 = &a2[v4 + 8] & 0xFFFFFFFFFFFFFFF8;
  result = *v12;
  v14 = *(v12 + 16);
  v15 = &a1[v4 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v15 = result;
  *(v15 + 16) = v14;
  return result;
}

unsigned __int8 *sub_18E6ACE80(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 1uLL)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_35;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_35:
        if (v13 == 1)
        {
          (*(v6 + 32))(a1, a2, v5);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          *a1 = *a2;
        }

        a1[v7] = v18;
        goto LABEL_39;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_35;
  }

LABEL_39:
  v19 = *(v6 + 64);
  if (v19 <= 1)
  {
    v19 = 1;
  }

  v20 = v19 + 8;
  v21 = (&a1[v20] & 0xFFFFFFFFFFFFFFF8);
  v22 = (&a2[v20] & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v21[1] = v22[1];
  v21[2] = v22[2];
  v21[3] = v22[3];

  return a1;
}

uint64_t sub_18E6AD0B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 40;
  v5 = v4 & 0xFFFFFFF8;
  v6 = a2 - 2147483645;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_23:
    v12 = *(((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if ((v12 + 1) >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  if (v8 != 2)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + v4);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_19:
  v11 = v9 - 1;
  if (v5)
  {
    v11 = 0;
    LODWORD(v5) = *a1;
  }

  return (v5 | v11) + 0x7FFFFFFF;
}

unsigned int *sub_18E6AD19C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 40;
  if (a3 < 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else
  {
    v6 = a3 - 2147483645;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v9 = a2 - 2147483646;
    }

    else
    {
      v9 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v10 = a2 - 0x7FFFFFFF;
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v10;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v5) = v9;
      }

      else
      {
        *(result + v5) = v9;
      }
    }

    else if (v8)
    {
      *(result + v5) = v9;
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_29:
        *(((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 24) = a2;
        return result;
      }

LABEL_28:
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v8 == 2)
    {
      *(result + v5) = 0;
      goto LABEL_28;
    }

    *(result + v5) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t sub_18E6AD310(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_18E6AD3A8(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 1uLL)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if (v6 > 7 || (*(v4 + 80) & 0x100000) != 0 || (v5 + 1) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = *(a2 + v5);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v12 = v5;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

LABEL_25:
      v14 = (v13 | (v11 << (8 * v5))) + 2;
      v10 = v13 + 2;
      if (v5 < 4)
      {
        v10 = v14;
      }

      goto LABEL_27;
    }

    if (v12)
    {
      v13 = *a2;
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v10 == 1)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 1;
  }

  else
  {
    *a1 = *a2;
    a1[v5] = 0;
  }

  return v3;
}

unsigned __int8 *sub_18E6AD500(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_18E6AD5E0(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 1uLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 16))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  result[v3] = v10;
  return result;
}

unsigned __int8 *sub_18E6AD6F8(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_35;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_33:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_33;
  }

LABEL_35:
  if (v12 == 1)
  {
    v17 = result;
    (*(v3 + 16))();
    result = v17;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *result = *a2;
  }

  result[v4] = v18;
  return result;
}

_BYTE *sub_18E6AD8D4(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 1uLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  result[v3] = v10;
  return result;
}

unsigned __int8 *sub_18E6AD9EC(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_35;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_33:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_33;
  }

LABEL_35:
  if (v12 == 1)
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *result = *a2;
  }

  result[v4] = v18;
  return result;
}

uint64_t sub_18E6ADBC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_18E6ADCDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_18E6ADE90(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 64) <= 1uLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_18E6ADF2C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 1uLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

double sub_18E6AE000@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

__n128 sub_18E6AE018@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = a6 + *(type metadata accessor for ExpirationComponent(0, a3, a4, a5) + 44);
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v12;
  result = *(a2 + 32);
  *(v11 + 32) = result;
  *(v11 + 48) = *(a2 + 48);
  return result;
}

double sub_18E6AE0BC@<D0>(uint64_t a1@<X8>)
{
  sub_18E6AE000(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_18E6AE108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6AE15C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6AE1B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v103 = a5;
  v6 = v5;
  v97 = a2;
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  *&v94 = *(a4 + 24);
  *&v93 = v11;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = &v85 - v13;
  v102 = v14;
  v99 = type metadata accessor for ExpirablePayload(0, v14, v15, v16);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v85 - v17;
  v18 = *(a3 + 16);
  v19 = *(a3 + 24);
  v20 = *(v10 + 24);
  v21 = swift_checkMetadataState();
  v101 = a1;
  v98 = v21;
  v108 = v10;
  v22 = v20(v21, v10);
  if (v25)
  {
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    if ((_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      type metadata accessor for ExpirationComponent.Failure(0, v93, v94, v108);
      swift_getWitnessTable();
      swift_allocError();
      *v39 = v28;
      v39[1] = v29;
      return swift_willThrow();
    }

    v30 = v18;
    v31 = v19;
    *&v94 = v27;
    v32 = (v6 + *(a4 + 44));
    v33 = v32[6];
    v92 = v28;
    if (v33 == 1)
    {
      *&v93 = MEMORY[0x1E69E7CC0];
LABEL_18:
      if (qword_1EAC8D970 != -1)
      {
LABEL_32:
        swift_once();
      }

      v63 = dword_1EAC8FCA0;
      do
      {
        v64 = (v63 + 1);
        if (v63 == -1)
        {
          __break(1u);
          goto LABEL_32;
        }

        v65 = v63;
        atomic_compare_exchange_strong_explicit(&dword_1EAC8FCA0, &v65, v64, memory_order_relaxed, memory_order_relaxed);
        v66 = v65 == v63;
        v63 = v65;
      }

      while (!v66);
      v67 = v31;
      v68 = v30;

      v36 = sub_18E6EDD58(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v70 = *(v36 + 2);
      v69 = *(v36 + 3);
      if (v70 >= v69 >> 1)
      {
        v36 = sub_18E6EDD58((v69 > 1), v70 + 1, 1, v36);
      }

      *(v36 + 2) = v70 + 1;
      v71 = &v36[56 * v70];
      *(v71 + 8) = v64;
      *(v71 + 5) = v68;
      *(v71 + 6) = v67;
      v72 = v26;
      v73 = v94;
      *(v71 + 7) = v26;
      *(v71 + 8) = v73;
      v74 = v92;
      *(v71 + 9) = v92;
      *(v71 + 10) = v29;
      sub_18E6AF850(*v32, v32[1], v32[2], v32[3], v32[4], v32[5], v32[6]);
      *v32 = v64;
      v32[1] = v68;
      v32[2] = v67;
      v32[3] = v72;
      v32[4] = v73;
      v32[5] = v74;
      v32[6] = v29;
      v38 = v100;
      v37 = v93;
      goto LABEL_26;
    }

    v89 = v19;
    v90 = v30;
    v50 = v32[1];
    v91 = *v32;
    v52 = v32[2];
    v51 = v32[3];
    v53 = v32[4];
    v54 = v32[5];

    if ((_s8Gestures9TimestampV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      v87 = v50;
      v55 = v91;
      v88 = v54;
      v56 = sub_18E6EDD58(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      *&v93 = v56;
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v86 = v58 + 1;
        v84 = sub_18E6EDD58((v57 > 1), v58 + 1, 1, v93);
        v59 = v86;
        *&v93 = v84;
      }

      v60 = v87;
      v61 = v93;
      *(v93 + 16) = v59;
      v62 = v61 + 56 * v58;
      *(v62 + 32) = v55;
      *(v62 + 40) = v60;
      *(v62 + 48) = v52;
      *(v62 + 56) = v51;
      *(v62 + 64) = v53;
      *(v62 + 72) = v88;
      *(v62 + 80) = v33;
      sub_18E6AF850(*v32, v32[1], v32[2], v32[3], v32[4], v32[5], v32[6]);
      *(v32 + 1) = 0u;
      *(v32 + 2) = 0u;
      *v32 = 0u;
      v32[6] = 1;
      goto LABEL_17;
    }

    sub_18E6AF850(v91, v50, v52, v51, v53, v54, v33);
    if (v32[6] == 1)
    {
      *&v93 = MEMORY[0x1E69E7CC0];
LABEL_17:
      v30 = v90;
      v31 = v89;
      goto LABEL_18;
    }
  }

  else
  {
    v34 = (v5 + *(a4 + 44));
    v35 = v34[6];
    if (v35 != 1)
    {
      v41 = *(v34 + 1);
      v93 = *(v34 + 3);
      v94 = v41;
      v42 = v34[5];
      v43 = *v34;

      v37 = sub_18E6EDD58(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v45 = *(v37 + 2);
      v44 = *(v37 + 3);
      if (v45 >= v44 >> 1)
      {
        v37 = sub_18E6EDD58((v44 > 1), v45 + 1, 1, v37);
      }

      v46 = v108;
      *(v37 + 2) = v45 + 1;
      v47 = &v37[56 * v45];
      *(v47 + 8) = v43;
      v48 = v93;
      *(v47 + 40) = v94;
      *(v47 + 56) = v48;
      *(v47 + 9) = v42;
      *(v47 + 10) = v35;
      sub_18E6AF850(*v34, v34[1], v34[2], v34[3], v34[4], v34[5], v34[6]);
      *(v34 + 1) = 0u;
      *(v34 + 2) = 0u;
      *v34 = 0u;
      v34[6] = 1;
      v36 = MEMORY[0x1E69E7CC0];
      v38 = v100;
      v49 = v46;
      goto LABEL_27;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v38 = v100;
LABEL_26:
  v49 = v108;
LABEL_27:
  (*(v49 + 16))(v98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v78 = v95;
    v77 = v96;
    v79 = v38;
    v80 = v102;
    (*(v96 + 32))(v95, v79, v102);
    v104 = v36;
    v105 = v37;
    v106 = 0;
    v107 = 0;
    sub_18E6FEC1C(v78, &v104, v80, v103);
    sub_18E6AF804(v104, v105, v106, v107);
    return (*(v77 + 8))(v78, v80);
  }

  else
  {
    v81 = *v38;
    v82 = v102;
    v83 = v103;
    *v103 = v81;
    v83[1] = v36;
    v83[2] = v37;
    type metadata accessor for GestureOutput(0, v82, v75, v76);
    v83[3] = 0;
    v83[4] = 0;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_18E6AE884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_18E6AF87C(v4, v5, v6, v7, v8, v9, v10);
}

__n128 sub_18E6AE8B0(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = (v2 + *(a2 + 44));
  sub_18E6AF850(*v5, v5[1], v5[2], v5[3], v5[4], v5[5], v5[6]);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  result = v8;
  *(v5 + 2) = v8;
  v5[6] = v4;
  return result;
}

uint64_t sub_18E6AE940()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_18E6AE970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ExpirablePayload(0, a6, a3, a4);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  (*(*(a6 - 8) + 16))(&v18 - v15, a1, a6);
  swift_storeEnumTagMultiPayload();
  sub_18E6AEA84(v16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18E6AEA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ExpirablePayload(0, a6, a3, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ExpirationRecord(0, a6, v15, v16);
  v18 = (a7 + *(result + 28));
  *v18 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  return result;
}

uint64_t sub_18E6AEB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for ExpirablePayload(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  (*(*(a2 - 8) + 16))(&v12 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_18E6AEA84(v10, 0, 0, 0, 0, a2, a5);
}

uint64_t sub_18E6AEC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for ExpirablePayload(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t sub_18E6AEC84(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_18E6AECD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6AED24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6AEDB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6AEDEC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[3] = a2;
  v15 = type metadata accessor for ExpirationRecord(0, a7, a3, a4);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v20 - v17;
  sub_18E6AE970(a1, a3, a4, a5, a6, a7, v20 - v17);
  memset(v21, 0, sizeof(v21));
  sub_18E6FEC1C(v18, v21, v15, a8);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_18E6AEF20@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for ExpirationRecord(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  sub_18E6AEB30(a1, a3, v12, v13, v15 - v10);
  memset(v15, 0, sizeof(v15));
  sub_18E6FEC1C(v11, v15, v8, x8_0);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18E6AF030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v40 = a6;
  v41 = a4;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v9 = *(a5 + 16);
  v36 = type metadata accessor for ExpirablePayload(0, v9, a3, a4);
  v10 = MEMORY[0x1EEE9AC00](v36);
  v12 = &v34 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExpirationRecord(255, v9, v16, v17);
  v21 = type metadata accessor for GestureOutput(0, v18, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  (*(v13 + 16))(v15, v7, a5);
  if (swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v25 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
    v27 = *v25;
    v26 = *(v25 + 1);
    v28 = *(v25 + 3);
    v34 = *(v25 + 2);
    v35 = v26;
    v29 = &v24[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v9 - 8) + 32))(v12, v15, v9);
  }

  else
  {
    v30 = *v15;
    v27 = *(v15 + 1);
    v31 = *(v15 + 2);
    v28 = *(v15 + 4);
    v34 = *(v15 + 3);
    v35 = v31;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v29 = &v24[*(swift_getTupleTypeMetadata2() + 48)];
    *v12 = v30;
  }

  swift_storeEnumTagMultiPayload();
  sub_18E6AEA84(v12, v37, v38, v39, v41, v9, v24);
  *v29 = v27;
  v32 = v34;
  *(v29 + 1) = v35;
  *(v29 + 2) = v32;
  *(v29 + 3) = v28;
  swift_storeEnumTagMultiPayload();
  (*(v22 + 32))(v40, v24, v21);
}

uint64_t sub_18E6AF490(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_18E72B438();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_18E6A695C(*v15, 0x6E6F73616572, 0xE600000000000000);
  }

  (*(v10 + 32))(v13, v15, v4);
  (*(v10 + 16))(v9, v13, v4);
  (*(v10 + 56))(v9, 0, 1, v4);
  sub_18E6C9080(v9, 0x65756C6176, 0xE500000000000000, v4);
  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_18E6AF730(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6AF784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6AF804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E6AF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t sub_18E6AF87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t sub_18E6AF898(uint64_t a1)
{
  result = *(a1 + 48);
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_18E6AF8AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2 == 1)
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  else
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(result + 48) = v2;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t sub_18E6AF920(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (*(result + 48) == 1)
  {
    if (v2 == 1)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      *(result + 48) = *(a2 + 6);
      *(result + 16) = v4;
      *(result + 32) = v5;
      *result = v3;
      return result;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    v11 = result;
    *(result + 48) = *(a2 + 6);
  }

  else
  {
    if (v2 == 1)
    {
      v6 = result;
      sub_18E6AC114(result);
      v9 = a2[1];
      v8 = a2[2];
      v10 = *a2;
      *(v6 + 48) = *(a2 + 6);
      *(v6 + 16) = v9;
      *(v6 + 32) = v8;
      *v6 = v10;
      return v6;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    v11 = result;
    *(result + 48) = *(a2 + 6);
  }

  return v11;
}

uint64_t sub_18E6AFA2C(uint64_t result, uint64_t a2)
{
  if (*(result + 48) == 1)
  {
    v2 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v2;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 48);
    if (v3 == 1)
    {
      v4 = result;
      sub_18E6AC114(result);
      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = *(a2 + 48);
    }

    else
    {
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 40) = *(a2 + 40);
      *(result + 48) = v3;
      v4 = result;
    }

    return v4;
  }

  return result;
}

uint64_t sub_18E6AFAD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_18E6AFB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Expiration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for Expiration(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for Expiration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for Expiration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Expiration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E6AFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GestureTag(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureTag(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E6AFE34()
{
  result = qword_1EAC8E0B0;
  if (!qword_1EAC8E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E0B0);
  }

  return result;
}

unint64_t sub_18E6AFE98()
{
  result = qword_1EAC8E0B8;
  if (!qword_1EAC8E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E0B8);
  }

  return result;
}

uint64_t TapComponent.tapInterval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TapComponent.pointCountTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TapComponent.minimumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TapComponent.maximumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TapComponent.init(tapCount:tapInterval:pointCount:pointCountTimeout:minimumDuration:maximumDuration:maximumMovement:maximumSeparationDistance:failOnExceedingMaximumPointCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  v20 = *(type metadata accessor for TapComponent(0, a15, a16, a4) + 68);
  v22 = type metadata accessor for EventSource(255, a15, *(a16 + 8), v21);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for DynamicCombinerComponent(255, v22, WitnessTable, v24);
  v26 = swift_getWitnessTable();
  v28 = type metadata accessor for TimeoutComponent(255, v25, v26, v27);
  v29 = swift_getWitnessTable();
  v30 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v30, v31, v32);
  v33 = swift_getWitnessTable();
  v34 = type metadata accessor for ExpirationComponent(255, v28, v29, v33);
  v35 = swift_getWitnessTable();
  v37 = type metadata accessor for DurationGate(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = type metadata accessor for ExpirationComponent(255, v37, v38, v33);
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = *(a16 + 16);
  v71 = v39;
  v72 = v40;
  v73 = v41;
  v74 = v42;
  v43 = type metadata accessor for SeparationDistanceGate(255, &v71);
  type metadata accessor for CGPoint(255);
  v45 = v44;
  v46 = swift_getWitnessTable();
  v47 = type metadata accessor for MapComponent(255, v43, v45, v46);
  v48 = swift_getWitnessTable();
  v49 = type metadata accessor for ValueTracker(255, v47, v45, v48);
  v50 = swift_getWitnessTable();
  v71 = v49;
  v72 = v45;
  v73 = v50;
  v74 = &protocol witness table for CGPoint;
  v51 = type metadata accessor for MovementGate(255, &v71);
  v52 = swift_getWitnessTable();
  v54 = type metadata accessor for RepeatComponent(255, v51, v52, v53);
  v55 = swift_getWitnessTable();
  v56 = sub_18E6B04D4();
  v57 = type metadata accessor for ExpirationComponent(255, v54, v55, v56);
  v58 = swift_getWitnessTable();
  v59 = type metadata accessor for MapComponent(255, v57, v45, v58);
  v60 = swift_getWitnessTable();
  v62 = type metadata accessor for DiscreteGate(0, v59, v60, v61);
  result = (*(*(v62 - 8) + 56))(a9 + v20, 1, 1, v62);
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13;
  *(a9 + 80) = a1;
  *(a9 + 88) = a4;
  *(a9 + 96) = a14;
  return result;
}

unint64_t sub_18E6B04D4()
{
  result = qword_1EAC8E0C8;
  if (!qword_1EAC8E0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E0D0, &unk_18E72F0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E0C8);
  }

  return result;
}

uint64_t TapComponent.upstream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v68 = a2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for EventSource(255, v6, *(v7 + 8), a3);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v66 = v6;
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v65 = v7;
  v28 = *(v7 + 16);
  v69 = v25;
  v70 = v26;
  v71 = v27;
  v72 = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, &v69);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  v69 = v35;
  v70 = v31;
  v71 = v36;
  v72 = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, &v69);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(0, v43, v31, v44);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v63 - v47;
  v64 = swift_getWitnessTable();
  v50 = type metadata accessor for DiscreteGate(255, v45, v64, v49);
  v51 = sub_18E72B438();
  v52 = *(v51 - 8);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v63 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v63 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57, v4, a1);
  v67 = a1;
  (*(v52 + 32))(v55, &v57[*(a1 + 68)], v51);
  v59 = *(v50 - 8);
  if ((*(v59 + 48))(v55, 1, v50) != 1)
  {
    return (*(v59 + 32))(v68, v55, v50);
  }

  v63 = *(v52 + 8);
  v63(v55, v51);
  sub_18E718CC0(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), v48, *v4, *(v4 + 8), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), v66, v65);
  v60 = v68;
  sub_18E6AA794(v45, v68);
  (*(v46 + 8))(v48, v45);
  v61 = *(v67 + 68);
  v63((v4 + v61), v51);
  (*(v59 + 16))(v4 + v61, v60, v50);
  return (*(v59 + 56))(v4 + v61, 0, 1, v50);
}

uint64_t TapComponent.upstream.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 68);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for EventSource(255, *(a2 + 16), *(v7 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = *(v7 + 16);
  v52 = v25;
  v53 = v26;
  v54 = v27;
  v55 = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, &v52);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  v52 = v35;
  v53 = v31;
  v54 = v36;
  v55 = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, &v52);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(255, v43, v31, v44);
  v46 = swift_getWitnessTable();
  v48 = type metadata accessor for DiscreteGate(255, v45, v46, v47);
  v49 = sub_18E72B438();
  (*(*(v49 - 8) + 8))(v4 + v6, v49);
  v50 = *(v48 - 8);
  (*(v50 + 32))(v4 + v6, a1, v48);
  return (*(v50 + 56))(v4 + v6, 0, 1, v48);
}

void (*TapComponent.upstream.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  v7 = v5;
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v8 = *(a2 + 24);
  v9 = type metadata accessor for EventSource(255, *(a2 + 16), *(v8 + 8), v6);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for DynamicCombinerComponent(255, v9, WitnessTable, v11);
  v13 = swift_getWitnessTable();
  v15 = type metadata accessor for TimeoutComponent(255, v12, v13, v14);
  v16 = swift_getWitnessTable();
  v17 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v17, v18, v19);
  v20 = swift_getWitnessTable();
  v21 = type metadata accessor for ExpirationComponent(255, v15, v16, v20);
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for DurationGate(255, v21, v22, v23);
  v25 = swift_getWitnessTable();
  v26 = type metadata accessor for ExpirationComponent(255, v24, v25, v20);
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = *(v8 + 16);
  *v7 = v26;
  v7[1] = v27;
  v7[2] = v28;
  v7[3] = v29;
  v30 = type metadata accessor for SeparationDistanceGate(255, v7);
  type metadata accessor for CGPoint(255);
  v32 = v31;
  v33 = swift_getWitnessTable();
  v34 = type metadata accessor for MapComponent(255, v30, v32, v33);
  v35 = swift_getWitnessTable();
  v36 = type metadata accessor for ValueTracker(255, v34, v32, v35);
  v37 = swift_getWitnessTable();
  v7[4] = v36;
  v7[5] = v32;
  v7[6] = v37;
  v7[7] = &protocol witness table for CGPoint;
  v38 = type metadata accessor for MovementGate(255, (v7 + 4));
  v39 = swift_getWitnessTable();
  v41 = type metadata accessor for RepeatComponent(255, v38, v39, v40);
  v42 = swift_getWitnessTable();
  v43 = sub_18E6B04D4();
  v44 = type metadata accessor for ExpirationComponent(255, v41, v42, v43);
  v45 = swift_getWitnessTable();
  v46 = type metadata accessor for MapComponent(255, v44, v32, v45);
  v47 = swift_getWitnessTable();
  v49 = type metadata accessor for DiscreteGate(0, v46, v47, v48);
  v7[10] = v49;
  v50 = *(v49 - 8);
  v7[11] = v50;
  v51 = *(v50 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v7[12] = swift_coroFrameAlloc();
    v52 = swift_coroFrameAlloc();
  }

  else
  {
    v7[12] = malloc(v51);
    v52 = malloc(v51);
  }

  v7[13] = v52;
  TapComponent.upstream.getter(a2, v52, v53);
  return sub_18E6B13A0;
}

void sub_18E6B13A0(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[12];
  v6 = (*a1)[13];
  if (a2)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = v4[8];
    (*(v8 + 16))((*a1)[12], v6, v7);
    TapComponent.upstream.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    TapComponent.upstream.setter((*a1)[13], v4[8], a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

Gestures::GestureTraitCollection_optional __swiftcall TapComponent.traits()()
{
  v2 = v0;
  static GestureTrait.tap(tapCount:pointCount:)(*(v1 + 80), 0, *(v1 + 88), 0, v7);
  v3 = v7[0];
  v4 = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  result.value = GestureTraitCollection.init(traits:)(inited);
  *v2 = v7[2];
  return result;
}

uint64_t static GestureTrait.tap(tapCount:pointCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v8 = MEMORY[0x1E69E7CC8];
  if ((a2 & 1) == 0)
  {
    v9 = result;
    if (qword_1EAC8D920 != -1)
    {
      swift_once();
    }

    v10 = qword_1EAC8E760;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(v9, 1, v10, isUniquelyReferenced_nonNull_native);
  }

  if ((a4 & 1) == 0)
  {
    if (qword_1EAC8D918 != -1)
    {
      swift_once();
    }

    v12 = qword_1EAC8E758;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(a3, 1, v12, v13);
  }

  if (qword_1EAC8D8E0 != -1)
  {
    result = swift_once();
  }

  *a5 = qword_1EAC8E0C0;
  a5[1] = v8;
  return result;
}

void (*sub_18E6B163C(char **a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v6 = v4;
  *a1 = v4;
  v7 = *(a2 + 24);
  v8 = type metadata accessor for EventSource(255, *(a2 + 16), *(v7 + 8), v5);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = *(v7 + 16);
  *v6 = v25;
  *(v6 + 8) = v26;
  *(v6 + 16) = v27;
  *(v6 + 24) = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, v6);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  *(v6 + 32) = v35;
  *(v6 + 40) = v31;
  *(v6 + 48) = v36;
  *(v6 + 56) = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, v6 + 32);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(255, v43, v31, v44);
  v46 = swift_getWitnessTable();
  v48 = type metadata accessor for DiscreteGate(0, v45, v46, v47);
  *(v6 + 96) = v48;
  v49 = *(v48 - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v50 = swift_coroFrameAlloc();
  }

  else
  {
    v50 = malloc(*(v49 + 64));
  }

  v51 = v50;
  *(v6 + 104) = v50;
  *(v6 + 112) = TapComponent.upstream.modify((v6 + 64), a2);
  *(v6 + 120) = v52;
  v53 = *(v49 + 32);
  *(v6 + 128) = v53;
  *(v6 + 136) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v53(v51);
  return sub_18E6B1A6C;
}

void sub_18E6B1A6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  (*(*a1 + 128))(*(*a1 + 120), *(v3 + 104), *(v3 + 96));
  v5 = *(v3 + 104);
  (*(v3 + 112))(v4, a2);
  free(v5);

  free(v3);
}

Gestures::GestureTraitID sub_18E6B1AE4()
{
  v0._countAndFlagsBits = 7364980;
  v0._object = 0xE300000000000000;
  return GestureTraitID.init(_:)(v0);
}

uint64_t static GestureTraitID.tap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EAC8D8E0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EAC8E0C0;
  return result;
}

unint64_t sub_18E6B1B60(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18E68EA90();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_18E70C724();
    result = v19;
    goto LABEL_8;
  }

  sub_18E70ACA0(v16, a4 & 1);
  result = sub_18E68EA90();
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a1;
      v22[1] = a2;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

unint64_t sub_18E6B1C98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18E6EB564(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18E70B760(v14, a3 & 1);
      result = sub_18E6EB564(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_18E70CFD8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 2 * result) = a2;
    v22 = v19[7] + 56 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = *(a1 + 48);
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 56 * result;
  *(v20 + 48) = *(a1 + 48);
  v21 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a1 + 32);
}

unint64_t sub_18E6B1E30(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18E6EBF14();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_18E70D2F0();
    result = v19;
    goto LABEL_8;
  }

  sub_18E70BCD4(v16, a4 & 1);
  result = sub_18E6EBF14();
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = v21[7] + 16 * result;
      *v22 = a1;
      *(v22 + 8) = a2;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = v21[7] + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E6B1FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = MEMORY[0x1E69E5D08] + 64;
  v52 = MEMORY[0x1E69E5D08] + 64;
  v53 = &unk_18E72D7A0;
  v54 = &unk_18E72D7A0;
  v55 = &unk_18E72D7A0;
  v56 = &unk_18E72D7A0;
  v57 = MEMORY[0x1E69E5D08] + 64;
  v58 = MEMORY[0x1E69E5D08] + 64;
  v59 = &unk_18E72D7B8;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for EventSource(255, *(a1 + 16), *(v4 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for DynamicCombinerComponent(255, v5, WitnessTable, v7);
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for TimeoutComponent(255, v8, v9, v10);
  v12 = swift_getWitnessTable();
  v13 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v13, v14, v15);
  v16 = swift_getWitnessTable();
  v17 = type metadata accessor for ExpirationComponent(255, v11, v12, v16);
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for DurationGate(255, v17, v18, v19);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v20, v21, v16);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v4 + 16);
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, &v47);
  type metadata accessor for CGPoint(255);
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = type metadata accessor for MapComponent(255, v26, v28, v29);
  v31 = swift_getWitnessTable();
  v32 = type metadata accessor for ValueTracker(255, v30, v28, v31);
  v33 = swift_getWitnessTable();
  v47 = v32;
  v48 = v28;
  v49 = v33;
  v50 = &protocol witness table for CGPoint;
  v34 = type metadata accessor for MovementGate(255, &v47);
  v35 = swift_getWitnessTable();
  v37 = type metadata accessor for RepeatComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6B04D4();
  v40 = type metadata accessor for ExpirationComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = type metadata accessor for MapComponent(255, v40, v28, v41);
  v43 = swift_getWitnessTable();
  type metadata accessor for DiscreteGate(255, v42, v43, v44);
  result = sub_18E72B438();
  if (v46 <= 0x3F)
  {
    v60 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6B2390(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((((v5 & 0xF8) + 16) & ~v6) + v8) | 2) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = ((((v5 & 0xF8) + 16) & ~v6) + v8) | 2;
  }

  if ((v5 & 0x1000F8) != 0 || (v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8, v13 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8, v15 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8, v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8, v17 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8, ((-98 - v6) | v6) - (((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16) < 0xFFFFFFFFFFFFFFE7))
  {
    v44 = *a2;
    *a1 = *a2;
    a1 = (v44 + ((v6 + 16) & ~v6));
LABEL_77:

    return a1;
  }

  v20 = *a2;
  v19 = a2 + 15;
  *a1 = v20;
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = v31 + 31;
  *v30 = *v31;
  v33 = v30 + 31;
  v34 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;
  *(v34 + 8) = *(v35 + 8);
  v36 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = ((v31 + 31) & 0xFFFFFFFFFFFFFFF8);
  v38 = v9 + 8;
  v39 = ((v37 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*v39 >= 0xFFFFFFFFuLL)
  {
    v40 = *(v37 + v9);
    v41 = v40 - 3;
    if (v40 < 3)
    {
      goto LABEL_28;
    }

    if (v9 <= 3)
    {
      v42 = v9;
    }

    else
    {
      v42 = 4;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v43 = *v37;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v42 == 3)
        {
          v43 = *v37 | (*(v37 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v40 = v43 + 3;
          goto LABEL_28;
        }

        v43 = *v37;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v40 = (v43 | (v41 << (8 * v9))) + 3;
LABEL_28:
      v162 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
      v160 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      v161 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
      v158 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
      v157 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if (v40 == 2)
      {
        *v36 = *v37;
        *(v36 + v9) = 2;

        v38 = v9 + 8;
        v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
LABEL_67:
        v87 = ((v38 + v36) & 0xFFFFFFFFFFFFFFF8);
        v88 = v39[1];
        *v87 = *v39;
        v87[1] = v88;
        v89 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
        v90 = ((v87 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v90 = *v89;
        v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v91 = *v92;
        *(v91 + 8) = *(v92 + 8);
        *(v91 + 9) = *(v92 + 9);
        v93 = v10 + 10 + v36;
        v94 = v37 + v10 + 10;
        *v93 = *v94;
        v93 &= 0xFFFFFFFFFFFFFFF8;
        v94 &= 0xFFFFFFFFFFFFFFF8;
        *(v93 + 8) = *(v94 + 8);
        v95 = ((v93 + 31) & 0xFFFFFFFFFFFFFFF8);
        v96 = ((v94 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v95 = *v96;
        v95[1] = v96[1];
        v97 = ((v95 + 23) & 0xFFFFFFFFFFFFFFF8);
        v98 = ((v96 + 23) & 0xFFFFFFFFFFFFFFF8);
        v99 = v98[1];
        *v97 = *v98;
        v97[1] = v99;
        v100 = &v33[v11 + 16] & 0xFFFFFFFFFFFFFFF8;
        v101 = (v11 + 16 + v32) & 0xFFFFFFFFFFFFFFF8;
        v102 = *(v101 + 48);

        if (v102 == 1)
        {
          v103 = *v101;
          v104 = *(v101 + 16);
          v105 = *(v101 + 32);
          *(v100 + 48) = *(v101 + 48);
          *(v100 + 16) = v104;
          *(v100 + 32) = v105;
          *v100 = v103;
        }

        else
        {
          *v100 = *v101;
          *(v100 + 8) = *(v101 + 8);
          *(v100 + 24) = *(v101 + 24);
          *(v100 + 40) = *(v101 + 40);
          *(v100 + 48) = *(v101 + 48);
        }

        v106 = (&v33[v156 + 56] & 0xFFFFFFFFFFFFFFF8);
        v107 = ((v156 + 56 + v32) & 0xFFFFFFFFFFFFFFF8);
        *v106 = *v107;
        *((v106 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v107 + 23) & 0xFFFFFFFFFFFFFFF8);
        v108 = &v33[v157 + 16] & 0xFFFFFFFFFFFFFFF8;
        v109 = (v157 + 16 + v32) & 0xFFFFFFFFFFFFFFF8;
        if (*(v109 + 48) == 1)
        {
          v110 = *v109;
          v111 = *(v109 + 16);
          v112 = *(v109 + 32);
          *(v108 + 48) = *(v109 + 48);
          *(v108 + 16) = v111;
          *(v108 + 32) = v112;
          *v108 = v110;
        }

        else
        {
          *v108 = *v109;
          *(v108 + 8) = *(v109 + 8);
          *(v108 + 24) = *(v109 + 24);
          *(v108 + 40) = *(v109 + 40);
          *(v108 + 48) = *(v109 + 48);
        }

        *(&v33[v158 + 56] & 0xFFFFFFFFFFFFFFF8) = *((v158 + 56 + v32) & 0xFFFFFFFFFFFFFFF8);
        v113 = (&v33[v159 + 8] & 0xFFFFFFFFFFFFFFF8);
        v114 = ((v159 + 8 + v32) & 0xFFFFFFFFFFFFFFF8);
        v115 = v114[1];
        *v113 = *v114;
        v113[1] = v115;
        v116 = &v33[v160 + 16] & 0xFFFFFFFFFFFFFFF8;
        v117 = (v160 + 16 + v32) & 0xFFFFFFFFFFFFFFF8;
        v118 = *v117;
        v119 = *(v117 + 16);
        *(v116 + 25) = *(v117 + 25);
        *v116 = v118;
        *(v116 + 16) = v119;
        v120 = *(v117 + 56);
        *(v116 + 48) = *(v117 + 48);
        *(v116 + 56) = v120;
        v121 = &v33[v161 + 16] & 0xFFFFFFFFFFFFFFF8;
        v122 = (v161 + 16 + v32) & 0xFFFFFFFFFFFFFFF8;
        *v121 = *v122;
        *(v121 + 8) = *(v122 + 8);
        v123 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
        v124 = v123 + v36;
        v125 = v37 + v123;
        v126 = *(v125 + 7);
        v127 = *(v125 + 23);
        v128 = *(v125 + 39);
        *(v124 + 55) = v125[55];
        *(v124 + 39) = v128;
        *(v124 + 23) = v127;
        *(v124 + 7) = v126;
        *(v124 + 63) = *(v125 + 63);
        *((v124 + 78) & 0xFFFFFFFFFFFFFFF8) = *((v125 + 78) & 0xFFFFFFFFFFFFFFF8);
        v129 = &v33[v162 + 16] & 0xFFFFFFFFFFFFFFF8;
        v130 = (v162 + 16 + v32) & 0xFFFFFFFFFFFFFFF8;
        v131 = *(v130 + 48);

        if (v131 == 1)
        {
          v132 = *v130;
          v133 = *(v130 + 16);
          v134 = *(v130 + 32);
          *(v129 + 48) = *(v130 + 48);
          *(v129 + 16) = v133;
          *(v129 + 32) = v134;
          *v129 = v132;
        }

        else
        {
          *v129 = *v130;
          *(v129 + 8) = *(v130 + 8);
          *(v129 + 24) = *(v130 + 24);
          *(v129 + 40) = *(v130 + 40);
          *(v129 + 48) = *(v130 + 48);
        }

        v135 = ((v163 + 56 + v32) & 0xFFFFFFFFFFFFFFF8);
        v137 = *v135;
        v136 = v135[1];
        v138 = (&v33[v163 + 56] & 0xFFFFFFFFFFFFFFF8);
        *v138 = v137;
        v138[1] = v136;
        goto LABEL_77;
      }

      v45 = v8 | 1;
      if (v40 == 1)
      {
        v46 = *v37;
        *(v36 + 8) = *(v37 + 8);
        *v36 = v46;
        v47 = v30 + 47;
        v48 = ((v30 + 47) & 0xFFFFFFFFFFFFFFF8);
        v49 = v31 + 47;
        v50 = (v49 & 0xFFFFFFFFFFFFFFF8);
        v51 = *((v49 & 0xFFFFFFFFFFFFFFF8) + v8);
        if (v51 > 2)
        {
          v62 = v49 & 0xFFFFFFFFFFFFFFF8;
          v63 = v11;
          v64 = v45;
          v148 = v48;
          memcpy(v48, v50, v45);
          v50 = v62;
          v48 = v148;
          v45 = v64;
          v11 = v63;
          v38 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          if (v51 == 2)
          {
            v152 = v11;
            v144 = v49 & 0xFFFFFFFFFFFFFFF8;
            v146 = v48;
            v142 = v49;
            (*(v4 + 16))(v48);
            v69 = &v47[v7] & 0xFFFFFFFFFFFFFFF8;
            v70 = (v142 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v70 < 0xFFFFFFFFuLL)
            {
              v81 = *(v70 + 16);
              *v69 = *v70;
              *(v69 + 16) = v81;
            }

            else
            {
              *v69 = *v70;
              *(v69 + 8) = *(v70 + 8);
              *(v69 + 16) = *(v70 + 16);
              *(v69 + 24) = *(v70 + 24);
            }

            v11 = v152;
            v38 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v45 = v8 | 1;
            v80 = 2;
          }

          else
          {
            if (v51 != 1)
            {
              *v48 = *v50;
              v71 = v50[1];
              if (v71)
              {
                v48[1] = v71;
                v48[2] = v50[2];
                v48[3] = v50[3];
                v48[4] = v50[4];
                v153 = v11;
                v72 = v48;
                v73 = v49 & 0xFFFFFFFFFFFFFFF8;

                v50 = v73;
                v48 = v72;
                v45 = v8 | 1;
                v11 = v153;
                v38 = v9 + 8;
              }

              else
              {
                v85 = *(v50 + 3);
                *(v48 + 1) = *(v50 + 1);
                *(v48 + 3) = v85;
              }

              v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
              *(v48 + v8) = 0;
              goto LABEL_63;
            }

            v149 = v11;
            v144 = v49 & 0xFFFFFFFFFFFFFFF8;
            v146 = v48;
            v140 = v49;
            (*(v4 + 16))(v48);
            v52 = &v47[v7] & 0xFFFFFFFFFFFFFFF8;
            v53 = (v140 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v53 < 0xFFFFFFFFuLL)
            {
              v79 = *(v53 + 16);
              *v52 = *v53;
              *(v52 + 16) = v79;
            }

            else
            {
              *v52 = *v53;
              *(v52 + 8) = *(v53 + 8);
              *(v52 + 16) = *(v53 + 16);
              *(v52 + 24) = *(v53 + 24);
            }

            v11 = v149;
            v38 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v45 = v8 | 1;
            v80 = 1;
          }

          v50 = v144;
          v48 = v146;
          *(v146 + v8) = v80;
        }

LABEL_63:
        *(v48 + v45) = *(v50 + v45);
        *(v36 + v9) = 1;
        goto LABEL_67;
      }

      v54 = *v37;
      *(v36 + 8) = *(v37 + 8);
      *v36 = v54;
      v55 = v30 + 47;
      v56 = ((v30 + 47) & 0xFFFFFFFFFFFFFFF8);
      v57 = v31 + 47;
      v58 = (v57 & 0xFFFFFFFFFFFFFFF8);
      v59 = *((v57 & 0xFFFFFFFFFFFFFFF8) + v8);
      if (v59 > 2)
      {
        v65 = v57 & 0xFFFFFFFFFFFFFFF8;
        v66 = v11;
        v67 = v45;
        v151 = v36;
        v68 = v56;
        memcpy(v56, v58, v45);
        v58 = v65;
        v56 = v68;
        v36 = v151;
        v38 = v9 + 8;
        v45 = v67;
        v11 = v66;
        v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        if (v59 == 2)
        {
          v154 = v11;
          v145 = v57 & 0xFFFFFFFFFFFFFFF8;
          v147 = v56;
          v143 = v57;
          (*(v4 + 16))(v56);
          v74 = &v55[v7] & 0xFFFFFFFFFFFFFFF8;
          v75 = (v143 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v75 < 0xFFFFFFFFuLL)
          {
            v84 = *(v75 + 16);
            *v74 = *v75;
            *(v74 + 16) = v84;
          }

          else
          {
            *v74 = *v75;
            *(v74 + 8) = *(v75 + 8);
            *(v74 + 16) = *(v75 + 16);
            *(v74 + 24) = *(v75 + 24);
          }

          v11 = v154;
          v38 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v45 = v8 | 1;
          v83 = 2;
        }

        else
        {
          if (v59 != 1)
          {
            *v56 = *v58;
            v76 = v58[1];
            if (v76)
            {
              v56[1] = v76;
              v56[2] = v58[2];
              v56[3] = v58[3];
              v56[4] = v58[4];
              v155 = v11;
              v77 = v56;
              v78 = v57 & 0xFFFFFFFFFFFFFFF8;

              v58 = v78;
              v56 = v77;
              v45 = v8 | 1;
              v11 = v155;
              v38 = v9 + 8;
            }

            else
            {
              v86 = *(v58 + 3);
              *(v56 + 1) = *(v58 + 1);
              *(v56 + 3) = v86;
            }

            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v56 + v8) = 0;
            goto LABEL_66;
          }

          v150 = v11;
          v145 = v57 & 0xFFFFFFFFFFFFFFF8;
          v147 = v56;
          v141 = v57;
          (*(v4 + 16))(v56);
          v60 = &v55[v7] & 0xFFFFFFFFFFFFFFF8;
          v61 = (v141 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v61 < 0xFFFFFFFFuLL)
          {
            v82 = *(v61 + 16);
            *v60 = *v61;
            *(v60 + 16) = v82;
          }

          else
          {
            *v60 = *v61;
            *(v60 + 8) = *(v61 + 8);
            *(v60 + 16) = *(v61 + 16);
            *(v60 + 24) = *(v61 + 24);
          }

          v11 = v150;
          v38 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v45 = v8 | 1;
          v83 = 1;
        }

        v58 = v145;
        v56 = v147;
        *(v147 + v8) = v83;
      }

LABEL_66:
      *(v56 + v45) = *(v58 + v45);
      *(v36 + v9) = 0;
      goto LABEL_67;
    }

    if (!v42)
    {
      goto LABEL_28;
    }

    v43 = *v37;
    if (v9 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  memcpy(((v30 + 31) & 0xFFFFFFFFFFFFFFF8), (v32 & 0xFFFFFFFFFFFFFFF8), ((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return a1;
}

uint64_t sub_18E6B2E74(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = v3 + 16;
  v5 = ~v3 & 0xFFFFFFFFFFFFFFF8;
  v6 = ((v3 + 16 + ((((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v5);
  v7 = (v3 + 16) & v5;
  v8 = *(v2 + 64) + 7;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  if (((v7 + v9) | 2) <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = (v7 + v9) | 2;
  }

  if (*(&v6[v10 + 8] & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
    v11 = v6[v10];
    v12 = v11 - 3;
    if (v11 < 3)
    {
      goto LABEL_22;
    }

    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = *v6;
      if (v10 < 4)
      {
LABEL_31:
        if ((v14 | (v12 << (8 * v10))) == 0xFFFFFFFF)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }
    }

    else if (v13 == 2)
    {
      v14 = *v6;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else if (v13 == 3)
    {
      v14 = *v6 | (v6[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v14 = *v6;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    v11 = v14 + 3;
LABEL_22:
    if (v11 == 2)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_23:
    v15 = &v6[v4] & v5;
    v16 = *(v15 + v9);
    if (v16 <= 2)
    {
      if (v16 == 2 || v16 == 1)
      {
        (*(v2 + 8))(&v6[v4] & v5);
        if (*((v8 + v15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
LABEL_27:

          goto LABEL_32;
        }
      }

      else if (*((&v6[v4] & v5) + 8))
      {
        goto LABEL_27;
      }
    }

LABEL_33:

    v17 = ((((((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = v6 + 16;
    if (*&v6[v17 + 64] != 1)
    {
    }

    v19 = (((((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*&v18[v19 + 48] != 1)
    {
    }

    if (*&v18[((((((((((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48] != 1)
    {
    }
  }

  return result;
}

void *sub_18E6B31E0(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = *(*(a3 + 16) - 8);
  v20 = *(v19 + 80) & 0xF8;
  v21 = v20 + 16;
  v22 = v20 + 16 + v17;
  v23 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 & v23);
  v25 = ((v20 + 16 + v18) & v23);
  v26 = *(v19 + 64) + 7;
  if ((v26 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v27 = 40;
  }

  else
  {
    v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v20 + 16) & v23) + v27) | 2) <= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = (((v20 + 16) & v23) + v27) | 2;
  }

  v29 = (&v25[v28 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v29 < 0xFFFFFFFFuLL)
  {
    memcpy((v22 & v23), v25, (((((((((((((((((((((((((((((((((v28 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return a1;
  }

  v30 = v25[v28];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v28 <= 3)
    {
      v32 = v28;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = *v25;
      if (v28 < 4)
      {
LABEL_38:
        v47 = v33 | (v31 << (8 * v28));
        v30 = v47 + 3;
        if (v47 == -1)
        {
          goto LABEL_39;
        }

LABEL_24:
        v34 = v27 | 1;
        if (v30 == 1)
        {
          v35 = *v25;
          *((v22 & v23) + 8) = v25[8];
          *v24 = v35;
          v36 = ((v24 + v21) & v23);
          v37 = (&v25[v21] & v23);
          v38 = v37[v27];
          if (v38 > 2)
          {
            memcpy(((v24 + v21) & v23), (&v25[v21] & v23), v27 | 1);
            v34 = v27 | 1;
          }

          else if (v38 == 2)
          {
            (*(v19 + 16))((v24 + v21) & v23, &v25[v21] & v23);
            v48 = &v36[v26] & 0xFFFFFFFFFFFFFFF8;
            v49 = &v37[v26] & 0xFFFFFFFFFFFFFFF8;
            if (*v49 < 0xFFFFFFFFuLL)
            {
              v55 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v55;
            }

            else
            {
              *v48 = *v49;
              *(v48 + 8) = *(v49 + 8);
              *(v48 + 16) = *(v49 + 16);
              *(v48 + 24) = *(v49 + 24);
            }

            v34 = v27 | 1;
            v36[v27] = 2;
          }

          else if (v38 == 1)
          {
            (*(v19 + 16))((v24 + v21) & v23, &v25[v21] & v23);
            v39 = &v36[v26] & 0xFFFFFFFFFFFFFFF8;
            v40 = &v37[v26] & 0xFFFFFFFFFFFFFFF8;
            if (*v40 < 0xFFFFFFFFuLL)
            {
              v54 = *(v40 + 16);
              *v39 = *v40;
              *(v39 + 16) = v54;
            }

            else
            {
              *v39 = *v40;
              *(v39 + 8) = *(v40 + 8);
              *(v39 + 16) = *(v40 + 16);
              *(v39 + 24) = *(v40 + 24);
            }

            v34 = v27 | 1;
            v36[v27] = 1;
          }

          else
          {
            *v36 = *v37;
            v50 = *((&v25[v21] & v23) + 8);
            if (v50)
            {
              *(((v24 + v21) & v23) + 8) = v50;
              *(((v24 + v21) & v23) + 0x10) = *((&v25[v21] & v23) + 0x10);
              *(((v24 + v21) & v23) + 0x18) = *((&v25[v21] & v23) + 0x18);
              *(((v24 + v21) & v23) + 0x20) = *((&v25[v21] & v23) + 0x20);

              v34 = v27 | 1;
            }

            else
            {
              v58 = *((&v25[v21] & v23) + 0x18);
              *(((v24 + v21) & v23) + 8) = *((&v25[v21] & v23) + 8);
              *(((v24 + v21) & v23) + 0x18) = v58;
            }

            v36[v27] = 0;
          }

          v36[v34] = v37[v34];
          *(v24 + v28) = 1;
        }

        else
        {
          v41 = *v25;
          *((v22 & v23) + 8) = v25[8];
          *v24 = v41;
          v42 = ((v24 + v21) & v23);
          v43 = (&v25[v21] & v23);
          v44 = v43[v27];
          if (v44 > 2)
          {
            memcpy(((v24 + v21) & v23), (&v25[v21] & v23), v27 | 1);
            v34 = v27 | 1;
          }

          else if (v44 == 2)
          {
            (*(v19 + 16))((v24 + v21) & v23, &v25[v21] & v23);
            v51 = &v42[v26] & 0xFFFFFFFFFFFFFFF8;
            v52 = &v43[v26] & 0xFFFFFFFFFFFFFFF8;
            if (*v52 < 0xFFFFFFFFuLL)
            {
              v57 = *(v52 + 16);
              *v51 = *v52;
              *(v51 + 16) = v57;
            }

            else
            {
              *v51 = *v52;
              *(v51 + 8) = *(v52 + 8);
              *(v51 + 16) = *(v52 + 16);
              *(v51 + 24) = *(v52 + 24);
            }

            v34 = v27 | 1;
            v42[v27] = 2;
          }

          else if (v44 == 1)
          {
            (*(v19 + 16))((v24 + v21) & v23, &v25[v21] & v23);
            v45 = &v42[v26] & 0xFFFFFFFFFFFFFFF8;
            v46 = &v43[v26] & 0xFFFFFFFFFFFFFFF8;
            if (*v46 < 0xFFFFFFFFuLL)
            {
              v56 = *(v46 + 16);
              *v45 = *v46;
              *(v45 + 16) = v56;
            }

            else
            {
              *v45 = *v46;
              *(v45 + 8) = *(v46 + 8);
              *(v45 + 16) = *(v46 + 16);
              *(v45 + 24) = *(v46 + 24);
            }

            v34 = v27 | 1;
            v42[v27] = 1;
          }

          else
          {
            *v42 = *v43;
            v53 = *((&v25[v21] & v23) + 8);
            if (v53)
            {
              *(((v24 + v21) & v23) + 8) = v53;
              *(((v24 + v21) & v23) + 0x10) = *((&v25[v21] & v23) + 0x10);
              *(((v24 + v21) & v23) + 0x18) = *((&v25[v21] & v23) + 0x18);
              *(((v24 + v21) & v23) + 0x20) = *((&v25[v21] & v23) + 0x20);

              v34 = v27 | 1;
            }

            else
            {
              v59 = *((&v25[v21] & v23) + 0x18);
              *(((v24 + v21) & v23) + 8) = *((&v25[v21] & v23) + 8);
              *(((v24 + v21) & v23) + 0x18) = v59;
            }

            v42[v27] = 0;
          }

          v42[v34] = v43[v34];
          *(v24 + v28) = 0;
        }

        goto LABEL_62;
      }
    }

    else if (v32 == 2)
    {
      v33 = *v25;
      if (v28 < 4)
      {
        goto LABEL_38;
      }
    }

    else if (v32 == 3)
    {
      v33 = *v25 | (v25[2] << 16);
      if (v28 < 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v33 = *v25;
      if (v28 < 4)
      {
        goto LABEL_38;
      }
    }

    v30 = v33 + 3;
  }

LABEL_23:
  if (v30 != 2)
  {
    goto LABEL_24;
  }

LABEL_39:
  *v24 = *v25;
  *(v24 + v28) = 2;

LABEL_62:
  v60 = ((v24 + v28 + 8) & 0xFFFFFFFFFFFFFFF8);
  v61 = v29[1];
  *v60 = *v29;
  v60[1] = v61;
  v62 = ((v60 + 23) & 0xFFFFFFFFFFFFFFF8);
  v63 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v62 = *v63;
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v64 = *v65;
  *(v64 + 8) = *(v65 + 8);
  *(v64 + 9) = *(v65 + 9);
  v66 = ((((v28 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = v24 + v66 + 10;
  v68 = &v25[v66 + 10];
  *v67 = *v68;
  v67 &= 0xFFFFFFFFFFFFFFF8;
  v68 &= 0xFFFFFFFFFFFFFFF8;
  *(v67 + 8) = *(v68 + 8);
  v69 = ((v67 + 31) & 0xFFFFFFFFFFFFFFF8);
  v70 = ((v68 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v69 = *v70;
  v69[1] = v70[1];
  v71 = ((v69 + 23) & 0xFFFFFFFFFFFFFFF8);
  v72 = ((v70 + 23) & 0xFFFFFFFFFFFFFFF8);
  v73 = v72[1];
  *v71 = *v72;
  v71[1] = v73;
  v74 = (((((v66 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = v24 + v74 + 16;
  v76 = &v25[v74 + 16];
  v77 = *(v76 + 6);

  if (v77 == 1)
  {
    v78 = *v76;
    v79 = *(v76 + 1);
    v80 = *(v76 + 2);
    *(v75 + 6) = *(v76 + 6);
    *(v75 + 1) = v79;
    *(v75 + 2) = v80;
    *v75 = v78;
  }

  else
  {
    *v75 = *v76;
    *(v75 + 8) = *(v76 + 8);
    *(v75 + 24) = *(v76 + 24);
    *(v75 + 5) = *(v76 + 5);
    *(v75 + 6) = *(v76 + 6);
  }

  v81 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v24 + v81 + 56);
  v83 = &v25[v81 + 56];
  *v82 = *v83;
  *((v82 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v83 + 23) & 0xFFFFFFFFFFFFFFF8);
  v84 = (((v81 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = v24 + v84 + 16;
  v86 = &v25[v84 + 16];
  if (*(v86 + 6) == 1)
  {
    v87 = *v86;
    v88 = *(v86 + 1);
    v89 = *(v86 + 2);
    *(v85 + 6) = *(v86 + 6);
    *(v85 + 1) = v88;
    *(v85 + 2) = v89;
    *v85 = v87;
  }

  else
  {
    *v85 = *v86;
    *(v85 + 8) = *(v86 + 8);
    *(v85 + 24) = *(v86 + 24);
    *(v85 + 5) = *(v86 + 5);
    *(v85 + 6) = *(v86 + 6);
  }

  v90 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v24 + v90 + 56) = *&v25[v90 + 56];
  v91 = (v90 + 63) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v24 + v91 + 8);
  v93 = &v25[v91 + 8];
  v94 = *(v93 + 1);
  *v92 = *v93;
  v92[1] = v94;
  v95 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = v24 + v95 + 16;
  v97 = &v25[v95 + 16];
  v98 = *v97;
  v99 = *(v97 + 1);
  *(v96 + 25) = *(v97 + 25);
  *v96 = v98;
  *(v96 + 1) = v99;
  v100 = *(v97 + 7);
  *(v96 + 6) = *(v97 + 6);
  *(v96 + 7) = v100;
  v101 = (v95 + 71) & 0xFFFFFFFFFFFFFFF8;
  v102 = v24 + v101 + 16;
  v103 = &v25[v101 + 16];
  *v102 = *v103;
  v102[8] = v103[8];
  v104 = ((v101 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v105 = v24 + v104;
  v106 = &v25[v104];
  v107 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = *v108;
  v110 = *(v108 + 16);
  v111 = *(v108 + 32);
  *(v107 + 48) = *(v108 + 48);
  *(v107 + 16) = v110;
  *(v107 + 32) = v111;
  *v107 = v109;
  v112 = ((v105 + 63) & 0xFFFFFFFFFFFFFFF8);
  v113 = ((v106 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v112 = *v113;
  *((v112 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v113 + 15) & 0xFFFFFFFFFFFFFFF8);
  v114 = (((v101 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v115 = v24 + v114 + 16;
  v116 = &v25[v114 + 16];
  v117 = *(v116 + 6);

  if (v117 == 1)
  {
    v118 = *v116;
    v119 = *(v116 + 1);
    v120 = *(v116 + 2);
    *(v115 + 6) = *(v116 + 6);
    *(v115 + 1) = v119;
    *(v115 + 2) = v120;
    *v115 = v118;
  }

  else
  {
    *v115 = *v116;
    *(v115 + 8) = *(v116 + 8);
    *(v115 + 24) = *(v116 + 24);
    *(v115 + 5) = *(v116 + 5);
    *(v115 + 6) = *(v116 + 6);
  }

  v121 = ((v114 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  v123 = *&v25[v121];
  v122 = *&v25[v121 + 8];
  v124 = (v24 + v121);
  *v124 = v123;
  v124[1] = v122;

  return a1;
}

void *sub_18E6B3BE4(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 80) & 0xF8;
  v21 = v20 + 16;
  v22 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v20 + 16 + v16) & v22);
  v24 = ((v20 + 16 + v17) & v22);
  v25 = (v20 + 16) & v22;
  v26 = *(v19 + 64) + 7;
  if ((v26 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v27 = 40;
  }

  else
  {
    v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v28 = v27 | 1;
  if (((v25 + v27) | 2) <= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = (v25 + v27) | 2;
  }

  v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
  v31 = (&v24[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  if (*v30 < 0xFFFFFFFFuLL)
  {
    if (v32 < 0xFFFFFFFF)
    {
      memcpy(v23, v24, (((((((((((((((((((((((((((((((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return a1;
    }

    v37 = v24[v29];
    v38 = v37 - 3;
    if (v37 >= 3)
    {
      if (v29 <= 3)
      {
        v39 = v29;
      }

      else
      {
        v39 = 4;
      }

      if (v39 <= 1)
      {
        if (!v39)
        {
          goto LABEL_46;
        }

        v40 = *v24;
        if (v29 < 4)
        {
LABEL_71:
          v68 = v40 | (v38 << (8 * v29));
          v37 = v68 + 3;
          if (v68 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_47;
        }
      }

      else if (v39 == 2)
      {
        v40 = *v24;
        if (v29 < 4)
        {
          goto LABEL_71;
        }
      }

      else if (v39 == 3)
      {
        v40 = *v24 | (v24[2] << 16);
        if (v29 < 4)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v40 = *v24;
        if (v29 < 4)
        {
          goto LABEL_71;
        }
      }

      v37 = v40 + 3;
    }

LABEL_46:
    if (v37 == 2)
    {
LABEL_72:
      *v23 = *v24;
      v23[v29] = 2;

      v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
      v45 = a1;
LABEL_155:
      v116 = v31[1];
      *v30 = *v31;
      v30[1] = v116;
      v117 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
      v118 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v119 = *v120;
      *(v119 + 8) = *(v120 + 8);
      *(v119 + 9) = *(v120 + 9);
      v121 = ((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v122 = &v23[v121 + 10];
      v123 = &v24[v121 + 10];
      *v122 = *v123;
      v122 &= 0xFFFFFFFFFFFFFFF8;
      v123 &= 0xFFFFFFFFFFFFFFF8;
      *(v122 + 8) = *(v123 + 8);
      v124 = ((v122 + 31) & 0xFFFFFFFFFFFFFFF8);
      v125 = ((v123 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v124 = *v125;
      v124[1] = v125[1];
      v126 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
      v127 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
      v128 = v127[1];
      *v126 = *v127;
      v126[1] = v128;
      v129 = (((((v121 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v130 = &v23[v129 + 16];
      v131 = &v24[v129 + 16];
      v132 = *(v131 + 6);

      if (v132 == 1)
      {
        v133 = *v131;
        v134 = *(v131 + 1);
        v135 = *(v131 + 2);
        *(v130 + 6) = *(v131 + 6);
        *(v130 + 1) = v134;
        *(v130 + 2) = v135;
        *v130 = v133;
      }

      else
      {
        *v130 = *v131;
        *(v130 + 8) = *(v131 + 8);
        *(v130 + 24) = *(v131 + 24);
        *(v130 + 5) = *(v131 + 5);
        *(v130 + 6) = *(v131 + 6);
      }

      v136 = (v129 + 23) & 0xFFFFFFFFFFFFFFF8;
      v137 = &v23[v136 + 56];
      v138 = &v24[v136 + 56];
      *v137 = *v138;
      *((v137 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v138 + 23) & 0xFFFFFFFFFFFFFFF8);
      v139 = (((v136 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v140 = &v23[v139 + 16];
      v141 = &v24[v139 + 16];
      if (*(v141 + 6) == 1)
      {
        v142 = *v141;
        v143 = *(v141 + 1);
        v144 = *(v141 + 2);
        *(v140 + 6) = *(v141 + 6);
        *(v140 + 1) = v143;
        *(v140 + 2) = v144;
        *v140 = v142;
      }

      else
      {
        *v140 = *v141;
        *(v140 + 8) = *(v141 + 8);
        *(v140 + 24) = *(v141 + 24);
        *(v140 + 5) = *(v141 + 5);
        *(v140 + 6) = *(v141 + 6);
      }

      v145 = (v139 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v23[v145 + 56] = *&v24[v145 + 56];
      v146 = (v145 + 63) & 0xFFFFFFFFFFFFFFF8;
      v147 = &v23[v146 + 8];
      v148 = &v24[v146 + 8];
      v149 = *(v148 + 1);
      *v147 = *v148;
      *(v147 + 1) = v149;
      v150 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
      v151 = &v23[v150 + 16];
      v152 = &v24[v150 + 16];
      v153 = *v152;
      v154 = *(v152 + 1);
      *(v151 + 25) = *(v152 + 25);
      *v151 = v153;
      *(v151 + 1) = v154;
      v155 = *(v152 + 7);
      *(v151 + 6) = *(v152 + 6);
      *(v151 + 7) = v155;
      v156 = (v150 + 71) & 0xFFFFFFFFFFFFFFF8;
      v157 = &v23[v156 + 16];
      v158 = &v24[v156 + 16];
      *v157 = *v158;
      v157[8] = v158[8];
      v159 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v160 = &v23[v159];
      v161 = &v24[v159];
      v162 = (v160 + 7) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v161 + 7) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      v165 = *(v163 + 16);
      v166 = *(v163 + 32);
      *(v162 + 48) = *(v163 + 48);
      *(v162 + 16) = v165;
      *(v162 + 32) = v166;
      *v162 = v164;
      v167 = ((v160 + 63) & 0xFFFFFFFFFFFFFFF8);
      v168 = ((v161 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v167 = *v168;
      *((v167 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v168 + 15) & 0xFFFFFFFFFFFFFFF8);
      v169 = (((v156 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v170 = &v23[v169 + 16];
      v171 = &v24[v169 + 16];
      v172 = *(v171 + 6);

      if (v172 == 1)
      {
        v173 = *v171;
        v174 = *(v171 + 1);
        v175 = *(v171 + 2);
        *(v170 + 6) = *(v171 + 6);
        *(v170 + 1) = v174;
        *(v170 + 2) = v175;
        *v170 = v173;
      }

      else
      {
        *v170 = *v171;
        *(v170 + 8) = *(v171 + 8);
        *(v170 + 24) = *(v171 + 24);
        *(v170 + 5) = *(v171 + 5);
        *(v170 + 6) = *(v171 + 6);
      }

      v176 = ((v169 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v178 = *&v24[v176];
      v177 = *&v24[v176 + 8];
      v179 = &v23[v176];
      *v179 = v178;
      *(v179 + 1) = v177;

      return v45;
    }

LABEL_47:
    if (v37 == 1)
    {
      v46 = *v24;
      v23[8] = v24[8];
      *v23 = v46;
      v47 = (&v23[v21] & v22);
      v48 = (&v24[v21] & v22);
      v49 = *(v48 + v27);
      if (v49 > 2)
      {
        v64 = v47;
        memcpy(v47, v48, v28);
        v47 = v64;
        v28 = v27 | 1;
        v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
        v45 = a1;
      }

      else
      {
        v45 = a1;
        if (v49 == 2)
        {
          v73 = v18;
          v74 = v47;
          (*(v19 + 16))(v47, v48, v73);
          v52 = v74;
          v75 = (v74 + v26) & 0xFFFFFFFFFFFFFFF8;
          v76 = (v48 + v26) & 0xFFFFFFFFFFFFFFF8;
          if (*v76 < 0xFFFFFFFFuLL)
          {
            v108 = *(v76 + 16);
            *v75 = *v76;
            *(v75 + 16) = v108;
          }

          else
          {
            *v75 = *v76;
            *(v75 + 8) = *(v76 + 8);
            *(v75 + 16) = *(v76 + 16);
            *(v75 + 24) = *(v76 + 24);
          }

          v28 = v27 | 1;
          v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
          v107 = 2;
        }

        else
        {
          if (v49 != 1)
          {
            *v47 = *v48;
            v77 = v48[1];
            if (v77)
            {
              v47[1] = v77;
              v47[2] = v48[2];
              v47[3] = v48[3];
              v47[4] = v48[4];
              v78 = v47;

              v47 = v78;
              v28 = v27 | 1;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v78 + v27) = 0;
            }

            else
            {
              v184 = *(v48 + 3);
              *(v47 + 1) = *(v48 + 1);
              *(v47 + 3) = v184;
              *(v47 + v27) = 0;
            }

            goto LABEL_144;
          }

          v50 = v18;
          v51 = v47;
          (*(v19 + 16))(v47, v48, v50);
          v52 = v51;
          v53 = (v51 + v26) & 0xFFFFFFFFFFFFFFF8;
          v54 = (v48 + v26) & 0xFFFFFFFFFFFFFFF8;
          if (*v54 < 0xFFFFFFFFuLL)
          {
            v106 = *(v54 + 16);
            *v53 = *v54;
            *(v53 + 16) = v106;
          }

          else
          {
            *v53 = *v54;
            *(v53 + 8) = *(v54 + 8);
            *(v53 + 16) = *(v54 + 16);
            *(v53 + 24) = *(v54 + 24);
          }

          v28 = v27 | 1;
          v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
          v107 = 1;
        }

        v47 = v52;
        *(v52 + v27) = v107;
      }

LABEL_144:
      *(v47 + v28) = *(v48 + v28);
      v23[v29] = 1;
      goto LABEL_155;
    }

    v55 = *v24;
    v23[8] = v24[8];
    *v23 = v55;
    v56 = (&v23[v21] & v22);
    v57 = (&v24[v21] & v22);
    v58 = *(v57 + v27);
    if (v58 > 2)
    {
      v65 = v56;
      memcpy(v56, v57, v28);
      v56 = v65;
      v28 = v27 | 1;
      v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
      v45 = a1;
    }

    else
    {
      v45 = a1;
      if (v58 == 2)
      {
        v79 = v18;
        v80 = v56;
        (*(v19 + 16))(v56, v57, v79);
        v61 = v80;
        v81 = (v80 + v26) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v57 + v26) & 0xFFFFFFFFFFFFFFF8;
        if (*v82 < 0xFFFFFFFFuLL)
        {
          v115 = *(v82 + 16);
          *v81 = *v82;
          *(v81 + 16) = v115;
        }

        else
        {
          *v81 = *v82;
          *(v81 + 8) = *(v82 + 8);
          *(v81 + 16) = *(v82 + 16);
          *(v81 + 24) = *(v82 + 24);
        }

        v28 = v27 | 1;
        v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
        v112 = 2;
      }

      else
      {
        if (v58 != 1)
        {
          *v56 = *v57;
          v83 = v57[1];
          if (v83)
          {
            v56[1] = v83;
            v56[2] = v57[2];
            v56[3] = v57[3];
            v56[4] = v57[4];
            v84 = v56;

            v56 = v84;
            v28 = v27 | 1;
            v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
            *(v84 + v27) = 0;
          }

          else
          {
            v185 = *(v57 + 3);
            *(v56 + 1) = *(v57 + 1);
            *(v56 + 3) = v185;
            *(v56 + v27) = 0;
          }

          goto LABEL_154;
        }

        v59 = v18;
        v60 = v56;
        (*(v19 + 16))(v56, v57, v59);
        v61 = v60;
        v62 = (v60 + v26) & 0xFFFFFFFFFFFFFFF8;
        v63 = (v57 + v26) & 0xFFFFFFFFFFFFFFF8;
        if (*v63 < 0xFFFFFFFFuLL)
        {
          v111 = *(v63 + 16);
          *v62 = *v63;
          *(v62 + 16) = v111;
        }

        else
        {
          *v62 = *v63;
          *(v62 + 8) = *(v63 + 8);
          *(v62 + 16) = *(v63 + 16);
          *(v62 + 24) = *(v63 + 24);
        }

        v28 = v27 | 1;
        v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
        v112 = 1;
      }

      v56 = v61;
      *(v61 + v27) = v112;
    }

LABEL_154:
    *(v56 + v28) = *(v57 + v28);
    v23[v29] = 0;
    goto LABEL_155;
  }

  if (v32 >= 0xFFFFFFFF)
  {
    if (v23 == v24)
    {
LABEL_185:
      v192 = v31[1];
      *v30 = *v31;
      v30[1] = v192;
      v193 = v30;

      v194 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
      v195 = ((v193 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v195 = *v194;
      v196 = (v195 + 15) & 0xFFFFFFFFFFFFFFF8;
      v197 = (v194 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v196 = *v197;
      *(v196 + 8) = *(v197 + 8);
      *(v196 + 9) = *(v197 + 9);
      v198 = ((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v199 = &v23[v198 + 10];
      v200 = &v24[v198 + 10];
      *v199 = *v200;
      v199 &= 0xFFFFFFFFFFFFFFF8;
      v200 &= 0xFFFFFFFFFFFFFFF8;
      *(v199 + 8) = *(v200 + 8);
      *(v199 + 16) = *(v200 + 16);
      v201 = ((v199 + 31) & 0xFFFFFFFFFFFFFFF8);
      v202 = ((v200 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v201 = *v202;
      v201[1] = v202[1];

      v203 = ((v201 + 23) & 0xFFFFFFFFFFFFFFF8);
      v204 = ((v202 + 23) & 0xFFFFFFFFFFFFFFF8);
      v205 = v204[1];
      *v203 = *v204;
      v203[1] = v205;

      v206 = (((((v198 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v207 = &v23[v206 + 16];
      v208 = &v24[v206 + 16];
      v209 = *(v208 + 6);
      if (*(v207 + 6) == 1)
      {
        v45 = a1;
        if (v209 == 1)
        {
          v210 = *v208;
          v211 = *(v208 + 1);
          v212 = *(v208 + 2);
          *(v207 + 6) = *(v208 + 6);
          *(v207 + 1) = v211;
          *(v207 + 2) = v212;
          *v207 = v210;
        }

        else
        {
          *v207 = *v208;
          *(v207 + 8) = *(v208 + 8);
          *(v207 + 24) = *(v208 + 24);
          *(v207 + 5) = *(v208 + 5);
          *(v207 + 6) = *(v208 + 6);
        }
      }

      else
      {
        v45 = a1;
        if (v209 == 1)
        {
          sub_18E6AC114(&v23[v206 + 16]);
          v214 = *(v208 + 1);
          v213 = *(v208 + 2);
          v215 = *v208;
          *(v207 + 6) = *(v208 + 6);
          *(v207 + 1) = v214;
          *(v207 + 2) = v213;
          *v207 = v215;
        }

        else
        {
          *v207 = *v208;
          *(v207 + 1) = *(v208 + 1);
          *(v207 + 2) = *(v208 + 2);
          *(v207 + 3) = *(v208 + 3);
          *(v207 + 4) = *(v208 + 4);
          *(v207 + 5) = *(v208 + 5);
          *(v207 + 6) = *(v208 + 6);
        }
      }

      v216 = (v206 + 23) & 0xFFFFFFFFFFFFFFF8;
      v217 = &v23[v216 + 56];
      v218 = &v24[v216 + 56];
      *v217 = *v218;
      *(v217 + 1) = *(v218 + 1);
      v219 = ((v217 + 23) & 0xFFFFFFFFFFFFFFF8);
      v220 = ((v218 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v219 = *v220;
      v219[1] = v220[1];
      v221 = (((v216 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v222 = &v23[v221 + 16];
      v223 = &v24[v221 + 16];
      v224 = *(v223 + 6);
      if (*(v222 + 6) == 1)
      {
        if (v224 == 1)
        {
          v225 = *v223;
          v226 = *(v223 + 1);
          v227 = *(v223 + 2);
          *(v222 + 6) = *(v223 + 6);
          *(v222 + 1) = v226;
          *(v222 + 2) = v227;
          *v222 = v225;
        }

        else
        {
          *v222 = *v223;
          *(v222 + 8) = *(v223 + 8);
          *(v222 + 24) = *(v223 + 24);
          *(v222 + 5) = *(v223 + 5);
          *(v222 + 6) = *(v223 + 6);
        }
      }

      else if (v224 == 1)
      {
        sub_18E6AC114(&v23[v221 + 16]);
        v229 = *(v223 + 1);
        v228 = *(v223 + 2);
        v230 = *v223;
        *(v222 + 6) = *(v223 + 6);
        *(v222 + 1) = v229;
        *(v222 + 2) = v228;
        *v222 = v230;
      }

      else
      {
        *v222 = *v223;
        *(v222 + 1) = *(v223 + 1);
        *(v222 + 2) = *(v223 + 2);
        *(v222 + 3) = *(v223 + 3);
        *(v222 + 4) = *(v223 + 4);
        *(v222 + 5) = *(v223 + 5);
        *(v222 + 6) = *(v223 + 6);
      }

      v231 = (v221 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v23[v231 + 56] = *&v24[v231 + 56];
      v232 = (v231 + 63) & 0xFFFFFFFFFFFFFFF8;
      v233 = &v23[v232 + 8];
      v234 = &v24[v232 + 8];
      v235 = *(v234 + 1);
      *v233 = *v234;
      *(v233 + 1) = v235;

      v236 = (v232 + 15) & 0xFFFFFFFFFFFFFFF8;
      v237 = &v23[v236 + 16];
      v238 = &v24[v236 + 16];
      v239 = *v238;
      v237[16] = v238[16];
      *v237 = v239;
      v240 = *(v238 + 24);
      v237[40] = v238[40];
      *(v237 + 24) = v240;
      v241 = *(v238 + 7);
      *(v237 + 6) = *(v238 + 6);
      *(v237 + 7) = v241;

      v242 = (v236 + 71) & 0xFFFFFFFFFFFFFFF8;
      v243 = &v23[v242 + 16];
      v244 = &v24[v242 + 16];
      *v243 = *v244;
      v243[8] = v244[8];
      v245 = ((v242 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v246 = &v23[v245];
      v247 = &v24[v245];
      v248 = (v246 + 7) & 0xFFFFFFFFFFFFFFF8;
      v249 = (v247 + 7) & 0xFFFFFFFFFFFFFFF8;
      *v248 = *v249;
      v250 = *(v249 + 8);
      *(v248 + 24) = *(v249 + 24);
      *(v248 + 8) = v250;
      v251 = *(v249 + 32);
      *(v248 + 48) = *(v249 + 48);
      *(v248 + 32) = v251;
      v252 = ((v246 + 63) & 0xFFFFFFFFFFFFFFF8);
      v253 = ((v247 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v252 = *v253;
      v254 = ((v252 + 15) & 0xFFFFFFFFFFFFFFF8);
      v255 = ((v253 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v254 = *v255;
      v254[1] = v255[1];
      v256 = (((v242 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v257 = &v23[v256 + 16];
      v258 = &v24[v256 + 16];
      v259 = *(v258 + 6);
      if (*(v257 + 6) == 1)
      {
        if (v259 == 1)
        {
          v260 = *v258;
          v261 = *(v258 + 1);
          v262 = *(v258 + 2);
          *(v257 + 6) = *(v258 + 6);
          *(v257 + 1) = v261;
          *(v257 + 2) = v262;
          *v257 = v260;
        }

        else
        {
          *v257 = *v258;
          *(v257 + 8) = *(v258 + 8);
          *(v257 + 24) = *(v258 + 24);
          *(v257 + 5) = *(v258 + 5);
          *(v257 + 6) = *(v258 + 6);
        }
      }

      else if (v259 == 1)
      {
        sub_18E6AC114(&v23[v256 + 16]);
        v264 = *(v258 + 1);
        v263 = *(v258 + 2);
        v265 = *v258;
        *(v257 + 6) = *(v258 + 6);
        *(v257 + 1) = v264;
        *(v257 + 2) = v263;
        *v257 = v265;
      }

      else
      {
        *v257 = *v258;
        *(v257 + 1) = *(v258 + 1);
        *(v257 + 2) = *(v258 + 2);
        *(v257 + 3) = *(v258 + 3);
        *(v257 + 4) = *(v258 + 4);
        *(v257 + 5) = *(v258 + 5);
        *(v257 + 6) = *(v258 + 6);
      }

      v266 = ((v256 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v267 = &v23[v266];
      v268 = &v24[v266];
      v269 = *(v268 + 1);
      *v267 = *v268;
      *(v267 + 1) = v269;

      return v45;
    }

    v33 = v23[v29];
    v34 = v33 - 3;
    if (v33 >= 3)
    {
      if (v29 <= 3)
      {
        v35 = v29;
      }

      else
      {
        v35 = 4;
      }

      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_99;
        }

        v36 = *v23;
      }

      else if (v35 == 2)
      {
        v36 = *v23;
      }

      else if (v35 == 3)
      {
        v36 = *v23 | (v23[2] << 16);
      }

      else
      {
        v36 = *v23;
      }

      if (v29 < 4)
      {
        v33 = (v36 | (v34 << (8 * v29))) + 3;
      }

      else
      {
        v33 = v36 + 3;
      }
    }

LABEL_99:
    if (v33 == 2)
    {
      v271 = v27 | 1;
    }

    else
    {
      v85 = *((&v23[v21] & v22) + v27);
      if (v85 > 2)
      {
        goto LABEL_107;
      }

      v271 = v27 | 1;
      if (v85 == 2 || v85 == 1)
      {
        (*(v19 + 8))(&v23[v21] & v22, v18);
        v28 = v27 | 1;
        if (*((v26 + (&v23[v21] & v22)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v28 = v27 | 1;
        if (!*((&v23[v21] & v22) + 8))
        {
LABEL_107:
          v86 = v24[v29];
          v87 = v86 - 3;
          if (v86 < 3)
          {
            goto LABEL_124;
          }

          if (v29 <= 3)
          {
            v88 = v29;
          }

          else
          {
            v88 = 4;
          }

          if (v88 <= 1)
          {
            if (!v88)
            {
              goto LABEL_124;
            }

            v89 = *v24;
          }

          else if (v88 == 2)
          {
            v89 = *v24;
          }

          else if (v88 == 3)
          {
            v89 = *v24 | (v24[2] << 16);
          }

          else
          {
            v89 = *v24;
          }

          if (v29 < 4)
          {
            v86 = (v89 | (v87 << (8 * v29))) + 3;
          }

          else
          {
            v86 = v89 + 3;
          }

LABEL_124:
          if (v86 == 2)
          {
            *v23 = *v24;
            v23[v29] = 2;

            v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
          }

          else if (v86 == 1)
          {
            v90 = *v24;
            v23[8] = v24[8];
            *v23 = v90;
            v91 = (&v23[v21] & v22);
            v92 = (&v24[v21] & v22);
            v93 = *(v92 + v27);
            v94 = v91;
            if (v93 > 2)
            {
              v104 = v28;
              memcpy(v91, v92, v28);
              v91 = v94;
              v28 = v104;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v93 == 2)
            {
              v274 = v28;
              (*(v19 + 16))(v91, v92, v18);
              v109 = (v94 + v26) & 0xFFFFFFFFFFFFFFF8;
              v110 = (v92 + v26) & 0xFFFFFFFFFFFFFFF8;
              if (*v110 < 0xFFFFFFFFuLL)
              {
                v91 = v94;
                v187 = *(v110 + 16);
                *v109 = *v110;
                *(v109 + 16) = v187;
              }

              else
              {
                *v109 = *v110;
                *(v109 + 8) = *(v110 + 8);
                *(v109 + 16) = *(v110 + 16);
                *(v109 + 24) = *(v110 + 24);

                v91 = v94;
              }

              v28 = v274;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v91 + v27) = 2;
            }

            else if (v93 == 1)
            {
              v272 = v28;
              (*(v19 + 16))(v91, v92, v18);
              v95 = (v94 + v26) & 0xFFFFFFFFFFFFFFF8;
              v96 = (v92 + v26) & 0xFFFFFFFFFFFFFFF8;
              if (*v96 < 0xFFFFFFFFuLL)
              {
                v91 = v94;
                v186 = *(v96 + 16);
                *v95 = *v96;
                *(v95 + 16) = v186;
              }

              else
              {
                *v95 = *v96;
                *(v95 + 8) = *(v96 + 8);
                *(v95 + 16) = *(v96 + 16);
                *(v95 + 24) = *(v96 + 24);

                v91 = v94;
              }

              v28 = v272;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v91 + v27) = 1;
            }

            else
            {
              *v91 = *v92;
              v113 = v92[1];
              if (v113)
              {
                v91[1] = v113;
                v91[2] = v92[2];
                v91[3] = v92[3];
                v91[4] = v92[4];
                v114 = v28;

                v91 = v94;
                v28 = v114;
              }

              else
              {
                v190 = *(v92 + 3);
                *(v91 + 1) = *(v92 + 1);
                *(v91 + 3) = v190;
              }

              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v91 + v27) = 0;
            }

            *(v91 + v28) = *(v92 + v28);
            v23[v29] = 1;
          }

          else
          {
            v97 = *v24;
            v23[8] = v24[8];
            *v23 = v97;
            v98 = (&v23[v21] & v22);
            v99 = (&v24[v21] & v22);
            v100 = *(v99 + v27);
            v101 = v98;
            if (v100 > 2)
            {
              v105 = v28;
              memcpy(v98, v99, v28);
              v98 = v101;
              v28 = v105;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v100 == 2)
            {
              v275 = v28;
              (*(v19 + 16))(v98, v99, v18);
              v180 = (v101 + v26) & 0xFFFFFFFFFFFFFFF8;
              v181 = (v99 + v26) & 0xFFFFFFFFFFFFFFF8;
              if (*v181 < 0xFFFFFFFFuLL)
              {
                v98 = v101;
                v189 = *(v181 + 16);
                *v180 = *v181;
                *(v180 + 16) = v189;
              }

              else
              {
                *v180 = *v181;
                *(v180 + 8) = *(v181 + 8);
                *(v180 + 16) = *(v181 + 16);
                *(v180 + 24) = *(v181 + 24);

                v98 = v101;
              }

              v28 = v275;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v98 + v27) = 2;
            }

            else if (v100 == 1)
            {
              v273 = v28;
              (*(v19 + 16))(v98, v99, v18);
              v102 = (v101 + v26) & 0xFFFFFFFFFFFFFFF8;
              v103 = (v99 + v26) & 0xFFFFFFFFFFFFFFF8;
              if (*v103 < 0xFFFFFFFFuLL)
              {
                v98 = v101;
                v188 = *(v103 + 16);
                *v102 = *v103;
                *(v102 + 16) = v188;
              }

              else
              {
                *v102 = *v103;
                *(v102 + 8) = *(v103 + 8);
                *(v102 + 16) = *(v103 + 16);
                *(v102 + 24) = *(v103 + 24);

                v98 = v101;
              }

              v28 = v273;
              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v98 + v27) = 1;
            }

            else
            {
              *v98 = *v99;
              v182 = v99[1];
              if (v182)
              {
                v98[1] = v182;
                v98[2] = v99[2];
                v98[3] = v99[3];
                v98[4] = v99[4];
                v183 = v28;

                v98 = v101;
                v28 = v183;
              }

              else
              {
                v191 = *(v99 + 3);
                *(v98 + 1) = *(v99 + 1);
                *(v98 + 3) = v191;
              }

              v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v98 + v27) = 0;
            }

            *(v98 + v28) = *(v99 + v28);
            v23[v29] = 0;
          }

          goto LABEL_185;
        }
      }
    }

    v28 = v271;
    goto LABEL_107;
  }

  v41 = v23[v29];
  v42 = v41 - 3;
  if (v41 >= 3)
  {
    if (v29 <= 3)
    {
      v43 = v29;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
        goto LABEL_62;
      }

      v44 = *v23;
      if (v29 < 4)
      {
LABEL_74:
        if ((v44 | (v42 << (8 * v29))) == 0xFFFFFFFF)
        {
          goto LABEL_75;
        }

        goto LABEL_63;
      }
    }

    else if (v43 == 2)
    {
      v44 = *v23;
      if (v29 < 4)
      {
        goto LABEL_74;
      }
    }

    else if (v43 == 3)
    {
      v44 = *v23 | (v23[2] << 16);
      if (v29 < 4)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v44 = *v23;
      if (v29 < 4)
      {
        goto LABEL_74;
      }
    }

    v41 = v44 + 3;
  }

LABEL_62:
  if (v41 == 2)
  {
LABEL_75:
    v45 = a1;
    goto LABEL_76;
  }

LABEL_63:
  v66 = &v23[v21] & v22;
  v67 = *(v66 + v27);
  v45 = a1;
  if (v67 <= 2)
  {
    if (v67 == 2 || v67 == 1)
    {
      (*(v19 + 8))(v66, v18);
      if (*((v26 + v66) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
LABEL_67:

LABEL_76:
      }
    }

    else if (*(v66 + 8))
    {
      goto LABEL_67;
    }
  }

  v69 = ((((((((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v23 + 16;
  if (*&v23[v69 + 64] != 1)
  {
  }

  v71 = (((((v69 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*&v70[v71 + 48] != 1)
  {
  }

  v72 = (((((((((((v71 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*&v70[v72 + 48] != 1)
  {
  }

  memcpy(v23, v24, ((((v72 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v45;
}

__n128 sub_18E6B5490(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = *(*(a3 + 16) - 8);
  v19 = *(v18 + 80) & 0xF8;
  v20 = v19 + 16;
  v21 = v19 + 16 + v16;
  v22 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 & v22);
  v24 = ((v19 + 16 + v17) & v22);
  v25 = *(v18 + 64) + 7;
  if ((v25 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v26 = 40;
  }

  else
  {
    v26 = (v25 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v19 + 16) & v22) + v26) | 2) <= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = (((v19 + 16) & v22) + v26) | 2;
  }

  v28 = (&v24[v27 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v28 < 0xFFFFFFFFuLL)
  {
    memcpy((v21 & v22), v24, (((((((((((((((((((((((((((((((((v27 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return result;
  }

  v29 = v24[v27];
  v30 = v29 - 3;
  if (v29 >= 3)
  {
    if (v27 <= 3)
    {
      v31 = v27;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_23;
      }

      v32 = *v24;
      if (v27 < 4)
      {
LABEL_36:
        v49 = v32 | (v30 << (8 * v27));
        v29 = v49 + 3;
        if (v49 == -1)
        {
          goto LABEL_37;
        }

LABEL_24:
        v34 = v26 | 1;
        if (v29 == 1)
        {
          v35 = *v24;
          *((v21 & v22) + 8) = v24[8];
          *v23 = v35;
          v36 = ((v23 + v20) & v22);
          v37 = (&v24[v20] & v22);
          v38 = *(v37 + v26);
          if (v38 > 2)
          {
            memcpy(((v23 + v20) & v22), (&v24[v20] & v22), v26 | 1);
          }

          else if (v38 == 2)
          {
            (*(v18 + 32))((v23 + v20) & v22, &v24[v20] & v22);
            v51 = ((v36 + v25) & 0xFFFFFFFFFFFFFFF8);
            v52 = ((v37 + v25) & 0xFFFFFFFFFFFFFFF8);
            v53 = v52[1];
            *v51 = *v52;
            v51[1] = v53;
            *(v36 + v26) = 2;
          }

          else if (v38 == 1)
          {
            (*(v18 + 32))((v23 + v20) & v22, &v24[v20] & v22);
            v39 = ((v36 + v25) & 0xFFFFFFFFFFFFFFF8);
            v40 = ((v37 + v25) & 0xFFFFFFFFFFFFFFF8);
            v41 = v40[1];
            *v39 = *v40;
            v39[1] = v41;
            *(v36 + v26) = 1;
          }

          else
          {
            v54 = *v37;
            v55 = *((&v24[v20] & v22) + 0x10);
            *(((v23 + v20) & v22) + 0x20) = *((&v24[v20] & v22) + 0x20);
            *v36 = v54;
            *(((v23 + v20) & v22) + 0x10) = v55;
            *(v36 + v26) = 0;
          }

          *(v36 + v34) = *(v37 + v34);
          v50 = 1;
        }

        else
        {
          v42 = *v24;
          *((v21 & v22) + 8) = v24[8];
          *v23 = v42;
          v43 = ((v23 + v20) & v22);
          v44 = (&v24[v20] & v22);
          v45 = *(v44 + v26);
          if (v45 > 2)
          {
            memcpy(((v23 + v20) & v22), (&v24[v20] & v22), v26 | 1);
          }

          else if (v45 == 2)
          {
            (*(v18 + 32))((v23 + v20) & v22, &v24[v20] & v22);
            v56 = ((v43 + v25) & 0xFFFFFFFFFFFFFFF8);
            v57 = ((v44 + v25) & 0xFFFFFFFFFFFFFFF8);
            v58 = v57[1];
            *v56 = *v57;
            v56[1] = v58;
            *(v43 + v26) = 2;
          }

          else if (v45 == 1)
          {
            (*(v18 + 32))((v23 + v20) & v22, &v24[v20] & v22);
            v46 = ((v43 + v25) & 0xFFFFFFFFFFFFFFF8);
            v47 = ((v44 + v25) & 0xFFFFFFFFFFFFFFF8);
            v48 = v47[1];
            *v46 = *v47;
            v46[1] = v48;
            *(v43 + v26) = 1;
          }

          else
          {
            v59 = *v44;
            v60 = *((&v24[v20] & v22) + 0x10);
            *(((v23 + v20) & v22) + 0x20) = *((&v24[v20] & v22) + 0x20);
            *v43 = v59;
            *(((v23 + v20) & v22) + 0x10) = v60;
            *(v43 + v26) = 0;
          }

          v50 = 0;
          *(v43 + v34) = *(v44 + v34);
        }

        goto LABEL_44;
      }
    }

    else if (v31 == 2)
    {
      v32 = *v24;
      if (v27 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v31 == 3)
    {
      v32 = *v24 | (v24[2] << 16);
      if (v27 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v32 = *v24;
      if (v27 < 4)
      {
        goto LABEL_36;
      }
    }

    v29 = v32 + 3;
  }

LABEL_23:
  if (v29 != 2)
  {
    goto LABEL_24;
  }

LABEL_37:
  *v23 = *v24;
  v50 = 2;
LABEL_44:
  *(v23 + v27) = v50;
  v61 = ((v23 + v27 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v61 = *v28;
  v62 = ((v61 + 23) & 0xFFFFFFFFFFFFFFF8);
  v63 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v62 = *v63;
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v64 = *v65;
  *(v64 + 8) = *(v65 + 8);
  *(v64 + 9) = *(v65 + 9);
  v66 = ((((v27 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = v23 + v66 + 10;
  v68 = &v24[v66 + 10];
  *v67 = *v68;
  v67 &= 0xFFFFFFFFFFFFFFF8;
  v68 &= 0xFFFFFFFFFFFFFFF8;
  *(v67 + 8) = *(v68 + 8);
  v69 = ((v67 + 31) & 0xFFFFFFFFFFFFFFF8);
  v70 = ((v68 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v69 = *v70;
  *((v69 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v70 + 23) & 0xFFFFFFFFFFFFFFF8);
  v71 = (((((v66 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = v23 + v71 + 16;
  v73 = &v24[v71 + 16];
  v74 = *v73;
  v75 = *(v73 + 1);
  v76 = *(v73 + 2);
  *(v72 + 6) = *(v73 + 6);
  *(v72 + 1) = v75;
  *(v72 + 2) = v76;
  *v72 = v74;
  v77 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v23 + v77 + 56);
  v79 = &v24[v77 + 56];
  *v78 = *v79;
  *((v78 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v79 + 23) & 0xFFFFFFFFFFFFFFF8);
  v80 = (((v77 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = v23 + v80 + 16;
  v82 = &v24[v80 + 16];
  v83 = *v82;
  v84 = *(v82 + 1);
  v85 = *(v82 + 2);
  *(v81 + 6) = *(v82 + 6);
  *(v81 + 1) = v84;
  *(v81 + 2) = v85;
  *v81 = v83;
  v86 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v23 + v86 + 56) = *&v24[v86 + 56];
  v87 = (v86 + 63) & 0xFFFFFFFFFFFFFFF8;
  *(v23 + v87 + 8) = *&v24[v87 + 8];
  v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v23 + v88 + 16);
  v90 = &v24[v88 + 16];
  v91 = *v90;
  v92 = *(v90 + 1);
  *(v89 + 25) = *(v90 + 25);
  *v89 = v91;
  v89[1] = v92;
  v89[3] = *(v90 + 3);
  v93 = (v88 + 71) & 0xFFFFFFFFFFFFFFF8;
  v94 = v23 + v93 + 16;
  v95 = &v24[v93 + 16];
  *v94 = *v95;
  v94[8] = v95[8];
  v96 = ((v93 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v97 = v23 + v96;
  v98 = &v24[v96];
  v99 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = *v100;
  v102 = *(v100 + 16);
  v103 = *(v100 + 32);
  *(v99 + 48) = *(v100 + 48);
  *(v99 + 16) = v102;
  *(v99 + 32) = v103;
  *v99 = v101;
  v104 = ((v97 + 63) & 0xFFFFFFFFFFFFFFF8);
  v105 = ((v98 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v104 = *v105;
  *((v104 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v105 + 15) & 0xFFFFFFFFFFFFFFF8);
  v106 = (((v93 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = v23 + v106 + 16;
  v108 = &v24[v106 + 16];
  v109 = *v108;
  v110 = *(v108 + 1);
  v111 = *(v108 + 2);
  *(v107 + 6) = *(v108 + 6);
  *(v107 + 1) = v110;
  *(v107 + 2) = v111;
  *v107 = v109;
  v112 = ((v106 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  result = *&v24[v112];
  *(v23 + v112) = result;
  return result;
}

void *sub_18E6B5BA0(void *result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *result = v4;
  v5 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 80) & 0xF8;
  v21 = v20 + 16;
  v22 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v20 + 16 + v16) & v22);
  v24 = ((v20 + 16 + v17) & v22);
  v25 = (v20 + 16) & v22;
  v26 = *(v19 + 64) + 7;
  if ((v26 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v27 = 40;
  }

  else
  {
    v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v28 = v27 | 1;
  if (((v25 + v27) | 2) <= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = (v25 + v27) | 2;
  }

  v30 = (&v23[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
  v31 = (&v24[v29 + 8] & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  if (*v30 < 0xFFFFFFFFuLL)
  {
    if (v32 < 0xFFFFFFFF)
    {
      v45 = result;
      memcpy(v23, v24, (((((((((((((((((((((((((((((((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v45;
    }

    v37 = v24[v29];
    v38 = v37 - 3;
    if (v37 >= 3)
    {
      if (v29 <= 3)
      {
        v39 = v29;
      }

      else
      {
        v39 = 4;
      }

      if (v39 <= 1)
      {
        if (!v39)
        {
          goto LABEL_46;
        }

        v40 = *v24;
        if (v29 < 4)
        {
LABEL_61:
          v66 = v40 | (v38 << (8 * v29));
          v37 = v66 + 3;
          if (v66 == -1)
          {
            goto LABEL_62;
          }

          goto LABEL_47;
        }
      }

      else if (v39 == 2)
      {
        v40 = *v24;
        if (v29 < 4)
        {
          goto LABEL_61;
        }
      }

      else if (v39 == 3)
      {
        v40 = *v24 | (v24[2] << 16);
        if (v29 < 4)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v40 = *v24;
        if (v29 < 4)
        {
          goto LABEL_61;
        }
      }

      v37 = v40 + 3;
    }

LABEL_46:
    if (v37 == 2)
    {
LABEL_62:
      *v23 = *v24;
      v67 = 2;
LABEL_94:
      v23[v29] = v67;
      *v30 = *v31;
      v88 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
      v89 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v88 = *v89;
      v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v90 = *v91;
      *(v90 + 8) = *(v91 + 8);
      *(v90 + 9) = *(v91 + 9);
      v92 = ((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = &v23[v92 + 10];
      v94 = &v24[v92 + 10];
      *v93 = *v94;
      v93 &= 0xFFFFFFFFFFFFFFF8;
      v94 &= 0xFFFFFFFFFFFFFFF8;
      *(v93 + 8) = *(v94 + 8);
      v95 = ((v93 + 31) & 0xFFFFFFFFFFFFFFF8);
      v96 = ((v94 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v95 = *v96;
      *((v95 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v96 + 23) & 0xFFFFFFFFFFFFFFF8);
      v97 = (((((v92 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v98 = &v23[v97 + 16];
      v99 = &v24[v97 + 16];
      v100 = *v99;
      v101 = *(v99 + 1);
      v102 = *(v99 + 2);
      *(v98 + 6) = *(v99 + 6);
      *(v98 + 1) = v101;
      *(v98 + 2) = v102;
      *v98 = v100;
      v103 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
      v104 = &v23[v103 + 56];
      v105 = &v24[v103 + 56];
      *v104 = *v105;
      *((v104 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v105 + 23) & 0xFFFFFFFFFFFFFFF8);
      v106 = (((v103 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v107 = &v23[v106 + 16];
      v108 = &v24[v106 + 16];
      v109 = *v108;
      v110 = *(v108 + 1);
      v111 = *(v108 + 2);
      *(v107 + 6) = *(v108 + 6);
      *(v107 + 1) = v110;
      *(v107 + 2) = v111;
      *v107 = v109;
      v112 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v23[v112 + 56] = *&v24[v112 + 56];
      v113 = (v112 + 63) & 0xFFFFFFFFFFFFFFF8;
      *&v23[v113 + 8] = *&v24[v113 + 8];
      v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
      v115 = &v23[v114 + 16];
      v116 = &v24[v114 + 16];
      v117 = *v116;
      v118 = *(v116 + 1);
      *(v115 + 25) = *(v116 + 25);
      *v115 = v117;
      *(v115 + 1) = v118;
      *(v115 + 3) = *(v116 + 3);
      v119 = (v114 + 71) & 0xFFFFFFFFFFFFFFF8;
      v120 = &v23[v119 + 16];
      v121 = &v24[v119 + 16];
      *v120 = *v121;
      v120[8] = v121[8];
      v122 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v123 = &v23[v122];
      v124 = &v24[v122];
      v125 = (v123 + 7) & 0xFFFFFFFFFFFFFFF8;
      v126 = (v124 + 7) & 0xFFFFFFFFFFFFFFF8;
      v127 = *v126;
      v128 = *(v126 + 16);
      v129 = *(v126 + 32);
      *(v125 + 48) = *(v126 + 48);
      *(v125 + 16) = v128;
      *(v125 + 32) = v129;
      *v125 = v127;
      v130 = ((v123 + 63) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v124 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      *((v130 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v131 + 15) & 0xFFFFFFFFFFFFFFF8);
      v132 = (((v119 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v133 = &v23[v132 + 16];
      v134 = &v24[v132 + 16];
      v135 = *v134;
      v136 = *(v134 + 1);
      v137 = *(v134 + 2);
      *(v133 + 6) = *(v134 + 6);
      *(v133 + 1) = v136;
      *(v133 + 2) = v137;
      *v133 = v135;
      *&v23[((v132 + 23) & 0xFFFFFFFFFFFFFFF8) + 56] = *&v24[((v132 + 23) & 0xFFFFFFFFFFFFFFF8) + 56];
      return result;
    }

LABEL_47:
    v243 = result;
    if (v37 == 1)
    {
      v46 = *v24;
      v23[8] = v24[8];
      *v23 = v46;
      v47 = (&v23[v21] & v22);
      v48 = (&v24[v21] & v22);
      v49 = *(v48 + v27);
      if (v49 > 2)
      {
        v64 = v27 | 1;
        memcpy(v47, v48, v28);
LABEL_87:
        *(v47 + v64) = *(v48 + v64);
        v67 = 1;
LABEL_93:
        result = v243;
        goto LABEL_94;
      }

      if (v49 == 2)
      {
        v76 = v26;
        (*(v19 + 32))(v47, v48);
        v77 = ((v47 + v76) & 0xFFFFFFFFFFFFFFF8);
        v78 = ((v48 + v76) & 0xFFFFFFFFFFFFFFF8);
        v79 = v78[1];
        *v77 = *v78;
        v77[1] = v79;
        v54 = 2;
      }

      else
      {
        if (v49 != 1)
        {
          v80 = *v48;
          v81 = v48[1];
          *(v47 + 4) = *(v48 + 4);
          *v47 = v80;
          v47[1] = v81;
          *(v47 + v27) = 0;
          goto LABEL_86;
        }

        v50 = v26;
        (*(v19 + 32))(v47, v48);
        v51 = ((v47 + v50) & 0xFFFFFFFFFFFFFFF8);
        v52 = ((v48 + v50) & 0xFFFFFFFFFFFFFFF8);
        v53 = v52[1];
        *v51 = *v52;
        v51[1] = v53;
        v54 = 1;
      }

      *(v47 + v27) = v54;
LABEL_86:
      v64 = v27 | 1;
      goto LABEL_87;
    }

    v55 = *v24;
    v23[8] = v24[8];
    *v23 = v55;
    v56 = (&v23[v21] & v22);
    v57 = (&v24[v21] & v22);
    v58 = *(v57 + v27);
    if (v58 > 2)
    {
      v65 = v27 | 1;
      memcpy(v56, v57, v28);
LABEL_92:
      v67 = 0;
      *(v56 + v65) = *(v57 + v65);
      goto LABEL_93;
    }

    if (v58 == 2)
    {
      v82 = v26;
      (*(v19 + 32))(v56, v57);
      v83 = ((v56 + v82) & 0xFFFFFFFFFFFFFFF8);
      v84 = ((v57 + v82) & 0xFFFFFFFFFFFFFFF8);
      v85 = v84[1];
      *v83 = *v84;
      v83[1] = v85;
      v63 = 2;
    }

    else
    {
      if (v58 != 1)
      {
        v86 = *v57;
        v87 = v57[1];
        *(v56 + 4) = *(v57 + 4);
        *v56 = v86;
        v56[1] = v87;
        *(v56 + v27) = 0;
        goto LABEL_91;
      }

      v59 = v26;
      (*(v19 + 32))(v56, v57);
      v60 = ((v56 + v59) & 0xFFFFFFFFFFFFFFF8);
      v61 = ((v57 + v59) & 0xFFFFFFFFFFFFFFF8);
      v62 = v61[1];
      *v60 = *v61;
      v60[1] = v62;
      v63 = 1;
    }

    *(v56 + v27) = v63;
LABEL_91:
    v65 = v27 | 1;
    goto LABEL_92;
  }

  if (v32 < 0xFFFFFFFF)
  {
    v41 = v23[v29];
    v42 = v41 - 3;
    if (v41 < 3)
    {
      goto LABEL_65;
    }

    if (v29 <= 3)
    {
      v43 = v29;
    }

    else
    {
      v43 = 4;
    }

    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v44 = *v23;
        if (v29 >= 4)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v43 == 3)
        {
          v44 = *v23 | (v23[2] << 16);
          if (v29 < 4)
          {
            goto LABEL_64;
          }

LABEL_59:
          v41 = v44 + 3;
          goto LABEL_65;
        }

        v44 = *v23;
        if (v29 >= 4)
        {
          goto LABEL_59;
        }
      }

LABEL_64:
      v41 = (v44 | (v42 << (8 * v29))) + 3;
LABEL_65:
      v68 = result;
      if (v41 == 2)
      {
LABEL_71:

        goto LABEL_72;
      }

      v69 = &v23[v21] & v22;
      v70 = *(v69 + v27);
      if (v70 <= 2)
      {
        if (v70 != 2 && v70 != 1)
        {
          if (!*(v69 + 8))
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        v71 = *(*(v18 - 8) + 64) + 7;
        (*(v19 + 8))(v69, v18);
        if (*((v71 + v69) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
LABEL_70:

          goto LABEL_71;
        }
      }

LABEL_72:

      v72 = ((((((((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v73 = v23 + 16;
      if (*&v23[v72 + 64] != 1)
      {
      }

      v74 = (((((v72 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if (*&v73[v74 + 48] != 1)
      {
      }

      v75 = (((((((((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      if (*&v73[v75 + 48] != 1)
      {
      }

      memcpy(v23, v24, ((((v75 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v68;
    }

    if (!v43)
    {
      goto LABEL_65;
    }

    v44 = *v23;
    if (v29 < 4)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  if (v23 != v24)
  {
    v33 = v23[v29];
    v34 = v33 - 3;
    if (v33 < 3)
    {
      goto LABEL_100;
    }

    if (v29 <= 3)
    {
      v35 = v29;
    }

    else
    {
      v35 = 4;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
        goto LABEL_100;
      }

      v36 = *v23;
    }

    else if (v35 == 2)
    {
      v36 = *v23;
    }

    else if (v35 == 3)
    {
      v36 = *v23 | (v23[2] << 16);
    }

    else
    {
      v36 = *v23;
    }

    if (v29 < 4)
    {
      v33 = (v36 | (v34 << (8 * v29))) + 3;
    }

    else
    {
      v33 = v36 + 3;
    }

LABEL_100:
    v242 = v18;
    v244 = result;
    if (v33 == 2)
    {
      v241 = *(*(v18 - 8) + 64) + 7;
    }

    else
    {
      v138 = &v23[v21] & v22;
      v139 = *(v138 + v27);
      if (v139 > 2)
      {
        goto LABEL_111;
      }

      v241 = *(*(v18 - 8) + 64) + 7;
      if (v139 == 2 || v139 == 1)
      {
        (*(v19 + 8))(&v23[v21] & v22, v18);
        v26 = v241;
        v28 = v27 | 1;
        if (*((v241 + v138) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v28 = v27 | 1;
        if (!*((&v23[v21] & v22) + 8))
        {
          goto LABEL_111;
        }
      }
    }

    v28 = v27 | 1;
    v26 = v241;
LABEL_111:
    v140 = v24[v29];
    v141 = v140 - 3;
    result = v244;
    if (v140 < 3)
    {
      v143 = v242;
      goto LABEL_127;
    }

    if (v29 <= 3)
    {
      v142 = v29;
    }

    else
    {
      v142 = 4;
    }

    v143 = v242;
    if (v142 <= 1)
    {
      if (!v142)
      {
        goto LABEL_127;
      }

      v144 = *v24;
    }

    else if (v142 == 2)
    {
      v144 = *v24;
    }

    else if (v142 == 3)
    {
      v144 = *v24 | (v24[2] << 16);
    }

    else
    {
      v144 = *v24;
    }

    if (v29 < 4)
    {
      v140 = (v144 | (v141 << (8 * v29))) + 3;
    }

    else
    {
      v140 = v144 + 3;
    }

LABEL_127:
    if (v140 == 2)
    {
      *v23 = *v24;
      v154 = 2;
LABEL_151:
      v23[v29] = v154;
      goto LABEL_152;
    }

    if (v140 == 1)
    {
      v145 = *v24;
      v23[8] = v24[8];
      *v23 = v145;
      v146 = (&v23[v21] & v22);
      v147 = (&v24[v21] & v22);
      v148 = *(v147 + v27);
      if (v148 > 2)
      {
        v164 = v28;
        memcpy(v146, v147, v28);
LABEL_144:
        *(v146 + v164) = *(v147 + v164);
        v154 = 1;
LABEL_150:
        result = v244;
        goto LABEL_151;
      }

      if (v148 == 2)
      {
        v166 = v26;
        (*(v19 + 32))(v146, v147, v143);
        v167 = ((v146 + v166) & 0xFFFFFFFFFFFFFFF8);
        v168 = ((v147 + v166) & 0xFFFFFFFFFFFFFFF8);
        v169 = v168[1];
        *v167 = *v168;
        v167[1] = v169;
        v153 = 2;
      }

      else
      {
        if (v148 != 1)
        {
          v170 = *v147;
          v171 = v147[1];
          *(v146 + 4) = *(v147 + 4);
          *v146 = v170;
          v146[1] = v171;
          *(v146 + v27) = 0;
          goto LABEL_143;
        }

        v149 = v26;
        (*(v19 + 32))(v146, v147, v143);
        v150 = ((v146 + v149) & 0xFFFFFFFFFFFFFFF8);
        v151 = ((v147 + v149) & 0xFFFFFFFFFFFFFFF8);
        v152 = v151[1];
        *v150 = *v151;
        v150[1] = v152;
        v153 = 1;
      }

      *(v146 + v27) = v153;
LABEL_143:
      v164 = v27 | 1;
      goto LABEL_144;
    }

    v155 = *v24;
    v23[8] = v24[8];
    *v23 = v155;
    v156 = (&v23[v21] & v22);
    v157 = (&v24[v21] & v22);
    v158 = *(v157 + v27);
    if (v158 > 2)
    {
      v165 = v28;
      memcpy(v156, v157, v28);
LABEL_149:
      v154 = 0;
      *(v156 + v165) = *(v157 + v165);
      goto LABEL_150;
    }

    if (v158 == 2)
    {
      v172 = v26;
      (*(v19 + 32))(v156, v157, v143);
      v173 = ((v156 + v172) & 0xFFFFFFFFFFFFFFF8);
      v174 = ((v157 + v172) & 0xFFFFFFFFFFFFFFF8);
      v175 = v174[1];
      *v173 = *v174;
      v173[1] = v175;
      v163 = 2;
    }

    else
    {
      if (v158 != 1)
      {
        v176 = *v157;
        v177 = v157[1];
        *(v156 + 4) = *(v157 + 4);
        *v156 = v176;
        v156[1] = v177;
        *(v156 + v27) = 0;
        goto LABEL_148;
      }

      v159 = v26;
      (*(v19 + 32))(v156, v157, v143);
      v160 = ((v156 + v159) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v157 + v159) & 0xFFFFFFFFFFFFFFF8);
      v162 = v161[1];
      *v160 = *v161;
      v160[1] = v162;
      v163 = 1;
    }

    *(v156 + v27) = v163;
LABEL_148:
    v165 = v27 | 1;
    goto LABEL_149;
  }

LABEL_152:
  v68 = result;
  v179 = *v31;
  v178 = v31 + 23;
  *v30 = v179;

  v180 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v180 = *(v178 & 0xFFFFFFFFFFFFFFF8);
  v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
  v182 = ((v178 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *v181 = *v182;
  *(v181 + 8) = *(v182 + 8);
  *(v181 + 9) = *(v182 + 9);
  v183 = ((((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v184 = &v23[v183 + 10];
  v185 = &v24[v183 + 10];
  *v184 = *v185;
  v184 &= 0xFFFFFFFFFFFFFFF8;
  v185 &= 0xFFFFFFFFFFFFFFF8;
  *(v184 + 8) = *(v185 + 8);
  *(v184 + 16) = *(v185 + 16);
  v186 = ((v184 + 31) & 0xFFFFFFFFFFFFFFF8);
  v187 = ((v185 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v186 = *v187;
  v186[1] = v187[1];

  *((v186 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v187 + 23) & 0xFFFFFFFFFFFFFFF8);

  v188 = (((((v183 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v189 = &v23[v188 + 16];
  v190 = &v24[v188 + 16];
  if (*(v189 + 6) == 1)
  {
    v191 = *v190;
    v192 = *(v190 + 1);
    v193 = *(v190 + 2);
    *(v189 + 6) = *(v190 + 6);
    *(v189 + 1) = v192;
    *(v189 + 2) = v193;
    *v189 = v191;
  }

  else if (*(v190 + 6) == 1)
  {
    sub_18E6AC114(&v23[v188 + 16]);
    v195 = *(v190 + 1);
    v194 = *(v190 + 2);
    v196 = *v190;
    *(v189 + 6) = *(v190 + 6);
    *(v189 + 1) = v195;
    *(v189 + 2) = v194;
    *v189 = v196;
  }

  else
  {
    *v189 = *v190;
    *(v189 + 1) = *(v190 + 1);
    *(v189 + 2) = *(v190 + 2);
    *(v189 + 3) = *(v190 + 3);
    *(v189 + 4) = *(v190 + 4);
    *(v189 + 5) = *(v190 + 5);
    *(v189 + 6) = *(v190 + 6);
  }

  v197 = (v188 + 23) & 0xFFFFFFFFFFFFFFF8;
  v198 = &v23[v197 + 56];
  v199 = &v24[v197 + 56];
  *v198 = *v199;
  *(v198 + 1) = *(v199 + 1);
  v200 = ((v198 + 23) & 0xFFFFFFFFFFFFFFF8);
  v201 = ((v199 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v200 = *v201;
  v200[1] = v201[1];
  v202 = (((v197 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v203 = &v23[v202 + 16];
  v204 = &v24[v202 + 16];
  if (*(v203 + 6) == 1)
  {
    v205 = *v204;
    v206 = *(v204 + 1);
    v207 = *(v204 + 2);
    *(v203 + 6) = *(v204 + 6);
    *(v203 + 1) = v206;
    *(v203 + 2) = v207;
    *v203 = v205;
  }

  else if (*(v204 + 6) == 1)
  {
    sub_18E6AC114(&v23[v202 + 16]);
    v209 = *(v204 + 1);
    v208 = *(v204 + 2);
    v210 = *v204;
    *(v203 + 6) = *(v204 + 6);
    *(v203 + 1) = v209;
    *(v203 + 2) = v208;
    *v203 = v210;
  }

  else
  {
    *v203 = *v204;
    *(v203 + 1) = *(v204 + 1);
    *(v203 + 2) = *(v204 + 2);
    *(v203 + 3) = *(v204 + 3);
    *(v203 + 4) = *(v204 + 4);
    *(v203 + 5) = *(v204 + 5);
    *(v203 + 6) = *(v204 + 6);
  }

  v211 = (v202 + 23) & 0xFFFFFFFFFFFFFFF8;
  *&v23[v211 + 56] = *&v24[v211 + 56];
  v212 = (v211 + 63) & 0xFFFFFFFFFFFFFFF8;
  *&v23[v212 + 8] = *&v24[v212 + 8];

  v213 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
  v214 = &v23[v213 + 16];
  v215 = &v24[v213 + 16];
  v216 = *v215;
  v214[16] = v215[16];
  *v214 = v216;
  v217 = v215[40];
  *(v214 + 24) = *(v215 + 24);
  v214[40] = v217;
  *(v214 + 3) = *(v215 + 3);

  v218 = (v213 + 71) & 0xFFFFFFFFFFFFFFF8;
  v219 = &v23[v218 + 16];
  v220 = &v24[v218 + 16];
  *v219 = *v220;
  v219[8] = v220[8];
  v221 = ((v218 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v222 = &v23[v221];
  v223 = &v24[v221];
  v224 = (v222 + 7) & 0xFFFFFFFFFFFFFFF8;
  v225 = (v223 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v224 = *v225;
  v226 = *(v225 + 8);
  *(v224 + 24) = *(v225 + 24);
  *(v224 + 8) = v226;
  v227 = *(v225 + 32);
  *(v224 + 48) = *(v225 + 48);
  *(v224 + 32) = v227;
  v228 = ((v223 + 63) & 0xFFFFFFFFFFFFFFF8);
  v229 = ((v222 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v229 = *v228;
  v230 = ((v229 + 15) & 0xFFFFFFFFFFFFFFF8);
  v231 = ((v228 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v230 = *v231;
  v230[1] = v231[1];
  v232 = (((v218 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v233 = &v23[v232 + 16];
  v234 = &v24[v232 + 16];
  if (*(v233 + 6) == 1)
  {
    v235 = *v234;
    v236 = *(v234 + 1);
    v237 = *(v234 + 2);
    *(v233 + 6) = *(v234 + 6);
    *(v233 + 1) = v236;
    *(v233 + 2) = v237;
    *v233 = v235;
  }

  else if (*(v234 + 6) == 1)
  {
    sub_18E6AC114(&v23[v232 + 16]);
    v239 = *(v234 + 1);
    v238 = *(v234 + 2);
    v240 = *v234;
    *(v233 + 6) = *(v234 + 6);
    *(v233 + 1) = v239;
    *(v233 + 2) = v238;
    *v233 = v240;
  }

  else
  {
    *v233 = *v234;
    *(v233 + 1) = *(v234 + 1);
    *(v233 + 2) = *(v234 + 2);
    *(v233 + 3) = *(v234 + 3);
    *(v233 + 4) = *(v234 + 4);
    *(v233 + 5) = *(v234 + 5);
    *(v233 + 6) = *(v234 + 6);
  }

  *&v23[((v232 + 23) & 0xFFFFFFFFFFFFFFF8) + 56] = *&v24[((v232 + 23) & 0xFFFFFFFFFFFFFFF8) + 56];

  return v68;
}

uint64_t sub_18E6B6DE4(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = v6 + ((v4 + 16) & ~(v4 | 7));
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v8 = ((v4 + 104) & ~v5) + ((((((((((((((((((((((((((((((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483645;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_21:
      v15 = v13 - 1;
      if (v9)
      {
        v15 = 0;
        v16 = *a1;
      }

      else
      {
        v16 = 0;
      }

      return (v16 | v15) + 0x7FFFFFFF;
    }

    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  v17 = *((((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_18E6B7000(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 16) & ~(v4 | 7);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = (v4 + 104) & ~v5;
  v9 = v7 + v6;
  if (v7 + v6 <= 8)
  {
    v9 = 8;
  }

  v10 = v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v11 = a3 - 2147483645;
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == -16)
    {
      v14 = a2 - 2147483646;
    }

    else
    {
      v14 = 1;
    }

    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
    {
      v15 = a2 - 0x7FFFFFFF;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v13)
    {
      *(result + v10) = v14;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_31:
        *((((((((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_30:
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (v13 == 2)
    {
      *(result + v10) = 0;
      goto LABEL_30;
    }

    *(result + v10) = 0;
    if (a2)
    {
      goto LABEL_31;
    }
  }

  return result;
}

unint64_t sub_18E6B7274(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18E6EB450(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18E70BF68(v14, a3 & 1);
      result = sub_18E6EB450(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_18E70D450();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_18E6B73C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_18E6EBF14();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_18E70C1D8(v18, a5 & 1);
      result = sub_18E6EBF14();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_18E70D5AC();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v27 = (v23[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  v25 = v24[1];
  v26 = v24[2];
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;

  return sub_18E6826D0(v25, v26);
}

unint64_t sub_18E6B7544(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18E6EB450(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_18E70C4A0(v16, a4 & 1);
      result = sub_18E6EB450(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_18E70D734();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_18E6B76A4(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18E68EA90();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18E69D8D4(v14, a3 & 1);
      result = sub_18E68EA90();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_18E68EDFC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_18E6B77F0(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_18E6B783C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_18E72B438();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_18E6B795C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  if (*(v7 + 84))
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = v11 + 7;
  v14 = ((v11 + 7 + ((v12 + v8 + v10) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v8 | *(v4 + 80) & 0xF8;
  if (v15 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  else
  {
    v19 = ~v8;
    (*(v4 + 16))(a1);
    v21 = (v3 + v9) & ~v8;
    v22 = ((a2 + v9) & ~v8);
    if ((*(v7 + 48))(v22, 1, v6))
    {
      memcpy(((v3 + v9) & v19), v22, v12);
      v23 = *(v7 + 16);
    }

    else
    {
      v30 = *(v7 + 16);
      v30(v21, v22, v6);
      (*(v7 + 56))(v21, 0, 1, v6);
      v23 = v30;
    }

    v24 = (v21 + v8 + v12) & v19;
    v25 = (v22 + v8 + v12) & v19;
    v23(v24, v25, v6);
    v26 = ((v13 + v25) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26[1];
    v28 = ((v13 + v24) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v26;
    v28[1] = v27;
  }

  return v3;
}

uint64_t sub_18E6B7BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + v8) & ~v8;
  v10 = (*(v7 + 48))(v9, 1, v6);
  v11 = *(v7 + 8);
  if (!v10)
  {
    v11(v9, v6);
  }

  v12 = v9 + v8 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v12;
  }

  v11(v12 & ~v8, v6);
}

uint64_t sub_18E6B7CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v28 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
    v17 = *(v8 + 16);
  }

  else
  {
    v17 = *(v8 + 16);
    v17(v12, v13, v7);
    v19 = *(v8 + 56);
    v18 = v8 + 56;
    v19(v12, 0, 1, v7);
    v14 = *(v18 + 28);
    v15 = *(v18 + 8);
  }

  if (v14)
  {
    v20 = v15;
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = (v12 + v9 + v20) & v11;
  v22 = (v13 + v9 + v20) & v11;
  v17(v21, v22, v7);
  v23 = ((v15 + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v23;
  v24 = v23[1];
  v26 = ((v15 + 7 + v21) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v25;
  v26[1] = v24;

  return v28;
}

uint64_t sub_18E6B7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  v15 = v14(v12, 1, v7);
  v16 = v14(v13, 1, v7);
  if (v15)
  {
    if (!v16)
    {
      (*(v8 + 16))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v8 + 24))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  v22 = *(v8 + 24);
  v21 = v8 + 24;
  v20 = v22;
  v23 = *(v21 + 40);
  if (*(v21 + 60))
  {
    v24 = *(v21 + 40);
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = (v12 + v9 + v24) & v11;
  v26 = (v13 + v9 + v24) & v11;
  v20(v25, v26, v7);
  v27 = ((v23 + 7 + v25) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v23 + 7 + v26) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  return a1;
}

uint64_t sub_18E6B80DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v24 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
    v17 = *(v8 + 32);
  }

  else
  {
    v17 = *(v8 + 32);
    v17(v12, v13, v7);
    v19 = *(v8 + 56);
    v18 = v8 + 56;
    v19(v12, 0, 1, v7);
    v14 = *(v18 + 28);
    v15 = *(v18 + 8);
  }

  if (v14)
  {
    v20 = v15;
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = (v12 + v9 + v20) & v11;
  v22 = (v13 + v9 + v20) & v11;
  v17(v21, v22, v7);
  *((v15 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  return v24;
}

uint64_t sub_18E6B8298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  v15 = v14(v12, 1, v7);
  v16 = v14(v13, 1, v7);
  if (v15)
  {
    if (!v16)
    {
      (*(v8 + 32))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v8 + 40))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  v22 = *(v8 + 40);
  v21 = v8 + 40;
  v20 = v22;
  v23 = *(v21 + 24);
  if (*(v21 + 44))
  {
    v24 = *(v21 + 24);
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = (v12 + v9 + v24) & v11;
  v26 = (v13 + v9 + v24) & v11;
  v20(v25, v26, v7);
  *((v23 + 7 + v25) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 7 + v26) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E6B84BC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v9 > v13)
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (v9)
  {
    v14 = *(v8 + 64);
  }

  else
  {
    v14 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v5 - 8) + 64) + v10;
  v16 = v14 + v10;
  v17 = v11 + 7;
  if (v13 < a2)
  {
    v18 = ((v17 + ((v16 + (v15 & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_30:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if (v7 == v13)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  v29 = (a1 + v15) & ~v10;
  if (v12 == v13)
  {
    if (v9 >= 2)
    {
      v32 = (*(v8 + 48))(v29);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = (v16 + v29) & ~v10;
  if (v9 == v13)
  {
    v31 = *(v8 + 48);

    return v31(v30);
  }

  else
  {
    v33 = *((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

_DWORD *sub_18E6B870C(_DWORD *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8)
  {
    v12 = v8 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v8 > v13)
  {
    v13 = *(v7 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v9 + v10;
  v15 = (v9 + v10) & ~v10;
  if (v8)
  {
    v16 = *(v7 + 64);
  }

  else
  {
    v16 = v11 + 1;
  }

  v17 = v16 + v10;
  v18 = v11 + 7;
  v19 = ((v18 + ((v17 + v15) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v18 + ((v17 + v15) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = a3 - v13 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v13 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 > v13)
  {
    if (v19)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v13;
    }

    if (v19)
    {
      v25 = ~v13 + a2;
      v26 = result;
      bzero(result, v19);
      result = v26;
      *v26 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(result + v19) = v24;
      }

      else
      {
        *(result + v19) = v24;
      }
    }

    else if (v23)
    {
      *(result + v19) = v24;
    }

    return result;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      *(result + v19) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v23 == 2)
  {
    *(result + v19) = 0;
    goto LABEL_45;
  }

  *(result + v19) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_46:
  if (v6 == v13)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    result = ((result + v14) & ~v10);
    if (v12 == v13)
    {
      v28 = *(v7 + 56);
      a2 = (a2 + 1);
    }

    else
    {
      result = ((result + v17) & ~v10);
      if (v8 != v13)
      {
        v29 = ((result + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v29 = a2 & 0x7FFFFFFF;
          v29[1] = 0;
        }

        else
        {
          *v29 = (a2 - 1);
        }

        return result;
      }

      v28 = *(v7 + 56);
    }

    return v28(result, a2);
  }
}

uint64_t sub_18E6B89C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v26 = a7;
  v27 = a2;
  v14 = type metadata accessor for ReduceComponent.State(0, a4, a5, a6);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v18 = *(a5 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v8, a4);
  (*(v18 + 16))(v21, a1, a5);
  (*(v18 + 56))(v17, 1, 1, a5);
  sub_18E6B8BD4(v23, v17, v21, v27, a3, a4, a5, a6, v26);
}

uint64_t sub_18E6B8BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for ReduceComponent(0, a6, a7, a8);
  v18 = v17[11];
  v19 = type metadata accessor for ReduceComponent.State(0, a6, a7, a8);
  (*(*(v19 - 8) + 32))(a9 + v18, a2, v19);
  result = (*(*(a7 - 8) + 32))(a9 + v17[12], a3, a7);
  v21 = (a9 + v17[13]);
  *v21 = a4;
  v21[1] = a5;
  return result;
}

uint64_t sub_18E6B8D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6B8DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6B8DFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33[3] = a2;
  v45 = a1;
  v34 = a4;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18E72B438();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v38 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v33 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v44 = v33 - v17;
  v18 = (v4 + *(a3 + 52));
  v19 = *v18;
  v42 = v18[1];
  v43 = v19;
  v20 = *(a3 + 44);
  v40 = v11;
  v41 = v21;
  v22 = *(v11 + 16);
  v36 = v20;
  v37 = v22;
  (v22)(v16, v4 + v20);
  v23 = *(v7 + 48);
  v24 = v23(v16, 1, v6);
  v39 = v4;
  v35 = v23;
  if (v24 == 1)
  {
    (*(v7 + 16))(v9, v4 + *(a3 + 48), v6);
    if (v23(v16, 1, v6) != 1)
    {
      (*(v40 + 8))(v16, v41);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v16, v6);
  }

  v25 = v44;
  v26 = v47;
  v43(v9, v45);
  v27 = *(v7 + 8);
  result = v27(v9, v6);
  if (!v26)
  {
    v47 = v27;
    (*(v7 + 56))(v25, 0, 1, v6);
    v29 = v39;
    v30 = v36;
    v31 = v41;
    (*(v40 + 40))(v39 + v36, v25, v41);
    v32 = v38;
    v37(v38, v29 + v30, v31);
    result = v35(v32, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      memset(v46, 0, sizeof(v46));
      sub_18E6FEC1C(v32, v46, v6, v34);
      return v47(v32, v6);
    }
  }

  return result;
}

uint64_t sub_18E6B9194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for ReduceComponent.State(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18E6B9210(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for ReduceComponent.State(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_18E6B929C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6B92F0(uint64_t a1)
{
  result = sub_18E72B438();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6B9380(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t sub_18E6B94D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_18E6B959C(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_18E6B96AC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *sub_18E6B9838(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_18E6B9948(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t sub_18E6B9AD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18E6B9C54(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_18E6B9E80(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6B9EE4()
{
  v1 = v0;
  v2 = *(*v0 + 240);
  v3 = *(v0 + v2);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for UpdateTracer();
    swift_allocObject();
    v4 = sub_18E6F8BE8();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_18E688410(v5);
  }

  sub_18E69CD28(v3);
  return v4;
}

uint64_t sub_18E6B9F78()
{
  v1 = *(*v0 + 248);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = *(*v0 + 200);
    type metadata accessor for UpdateScheduler();
    v2 = swift_allocObject();
    *(v2 + 32) = MEMORY[0x1E69E7CC8];
    *(v2 + 16) = *(v0 + v3);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t GestureComponentController.__allocating_init(component:timeScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GestureComponentController.init(component:timeScheduler:)(a1, a2, a3);
  return v6;
}

uint64_t *GestureComponentController.init(component:timeScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  *(v3 + *(*v3 + 208)) = MEMORY[0x1E69E7CC8];
  *(v3 + *(*v3 + 216)) = 0;
  v7 = v3 + *(*v3 + 224);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = (v3 + *(*v3 + 232));
  *v8 = 0;
  v8[1] = 0;
  *(v3 + *(*v3 + 240)) = 1;
  *(v3 + *(*v3 + 248)) = 0;
  (*(*(*(v6 + 176) - 8) + 32))(v3 + *(*v3 + 192), a1);
  v9 = (v3 + *(*v3 + 200));
  *v9 = a2;
  v9[1] = a3;
  swift_weakInit();
  return v3;
}

uint64_t GestureComponentController.__allocating_init(component:)(uint64_t a1)
{
  v3 = *(v1 + 176);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  sub_18E6BA350();
  v7 = sub_18E72B408();
  type metadata accessor for DispatchTimeScheduler();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  v8[6] = &type metadata for UptimeTimeSource;
  v8[7] = &protocol witness table for UptimeTimeSource;
  v8[8] = v9;
  v8[9] = 0;
  v8[2] = v7;
  v10 = swift_allocObject();
  GestureComponentController.init(component:timeScheduler:)(v6, v8, &protocol witness table for DispatchTimeScheduler);
  (*(v4 + 8))(a1, v3);
  return v10;
}