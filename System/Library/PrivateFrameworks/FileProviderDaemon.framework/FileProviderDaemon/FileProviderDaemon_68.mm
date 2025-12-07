uint64_t sub_1CF73F858(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  result = sub_1CF9E75D8();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF73F910(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 1;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  if (v6)
  {
    v11 = v7 + v9;
  }

  else
  {
    v11 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
    goto LABEL_30;
  }

  v12 = (v11 & ~v9) + v7;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((a2 - v6 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v6)
      {
LABEL_30:
        if (v8 == v6)
        {
          v19 = (*(v5 + 48))(a1);
          if (v19 >= 2)
          {
            return v19 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v21 = *(v5 + 48);

          return v21((a1 + v10) & ~v9);
        }
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_16:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v17 = v12;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v18 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v18 = *a1;
      }
    }

    else if (v17 == 1)
    {
      v18 = *a1;
    }

    else
    {
      v18 = *a1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v6 + (v18 | v16) + 1;
}

void sub_1CF73FB00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = *(v8 + 80);
  v13 = v10 + v12;
  if (v9)
  {
    v14 = v10 + v12;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = (v14 & ~v12) + v10;
  if (a3 <= v9)
  {
    goto LABEL_17;
  }

  if (v15 <= 3)
  {
    v16 = ((a3 - v9 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v16))
    {
      v7 = 4;
      if (v9 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }

LABEL_17:
    if (v9 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = 1;
  if (v9 >= a2)
  {
LABEL_27:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v15] = 0;
    }

    else if (v7)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    v21 = *(v8 + 56);
    if (v11 == v9)
    {
      v22 = (a2 + 1);
      v23 = a1;
    }

    else
    {
      v23 = (&a1[v13] & ~v12);
      v22 = a2;
    }

    v21(v23, v22);
    return;
  }

LABEL_18:
  v18 = ~v9 + a2;
  if (v15 >= 4)
  {
    bzero(a1, v15);
    *a1 = v18;
    v19 = 1;
    if (v7 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v19 = (v18 >> (8 * v15)) + 1;
  if (!v15)
  {
LABEL_43:
    if (v7 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v20 = v18 & ~(-1 << (8 * v15));
  bzero(a1, v15);
  if (v15 == 3)
  {
    *a1 = v20;
    a1[2] = BYTE2(v20);
    goto LABEL_43;
  }

  if (v15 == 2)
  {
    *a1 = v20;
    if (v7 > 1)
    {
LABEL_47:
      if (v7 == 2)
      {
        *&a1[v15] = v19;
      }

      else
      {
        *&a1[v15] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v7 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v7)
  {
    a1[v15] = v19;
  }
}

uint64_t sub_1CF73FD74(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF73FDF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v13 = *(v6 + 48);

    return v13(a1);
  }

  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v12) + 1;
}

void sub_1CF73FF98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_1CF7401D4(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF740254(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1CF7403E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void sub_1CF740614(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_1CF73E108();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF7406AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xB)
  {
    v8 = 11;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0xB)
    {
      v19 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      v20 = ((v19 >> 2) & 0xFFFFFFF3 | (4 * (v19 & 3))) ^ 0xF;
      if (v20 >= 0xC)
      {
        v20 = -1;
      }

      if (v20 + 1 >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1CF74084C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xB)
  {
    v10 = 11;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0xB)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = 0;
    if (a2 > 0xB)
    {
      v19[1] = 0;
      *v19 = a2 - 12;
    }

    else
    {
      v19[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t sub_1CF740BE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  a4(255, a2, a3);
  swift_getWitnessTable();
  v6 = sub_1CF9E7F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  return (*(v7 + 8))(v9, v6);
}

FileProviderDaemon::EvictionReasons __swiftcall EvictionReasons.init(onDiskValue:)(Swift::UInt32 onDiskValue)
{
  if (onDiskValue >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = onDiskValue;
  }

  *v1 = v2;
  return onDiskValue;
}

FileProviderDaemon::EvictionReasons __swiftcall EvictionReasons.init(stringName:)(Swift::String stringName)
{
  object = stringName._object;
  v8 = v6;
  v9 = 0x6E776F6E6B6E75;
  v10 = stringName._countAndFlagsBits == 0x6E776F6E6B6E75 && stringName._object == 0xE700000000000000;
  if (v10 || (countAndFlagsBits = stringName._countAndFlagsBits, (sub_1CF9E8048() & 1) != 0))
  {
    object, stringName._object, v9, v1, v2, v3, v4, v5;
    v13 = 0;
  }

  else
  {
    v14 = 0xEB00000000657465;
    v15 = 0x6C65446568636163;
    if (countAndFlagsBits == 0x6C65446568636163 && object == 0xEB00000000657465 || (sub_1CF9E8048() & 1) != 0)
    {
      object, stringName._object, v15, v14, v2, v3, v4, v5;
      v13 = 1;
    }

    else if (countAndFlagsBits == 1919251317 && object == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
    {
      object, stringName._object, v15, v14, v2, v3, v4, v5;
      v13 = 2;
    }

    else
    {
      v16 = 0x697461646E756F66;
      if (countAndFlagsBits == 0x697461646E756F66 && object == 0xEA00000000006E6FLL || (sub_1CF9E8048() & 1) != 0)
      {
        object, stringName._object, v16, v14, v2, v3, v4, v5;
        v13 = 3;
      }

      else if (countAndFlagsBits == 28774 && object == 0xE200000000000000 || (sub_1CF9E8048() & 1) != 0 || (v14 = 0xEC00000072656469, v16 = 0x766F7270656C6966, countAndFlagsBits == 0x766F7270656C6966) && object == 0xEC00000072656469 || (sub_1CF9E8048() & 1) != 0)
      {
        object, stringName._object, v16, v14, v2, v3, v4, v5;
        v13 = 4;
      }

      else
      {
        v17 = 0xEC00000065746164;
        v18 = 0x705565746F6D6572;
        if (countAndFlagsBits == 0x705565746F6D6572 && object == 0xEC00000065746164 || (sub_1CF9E8048() & 1) != 0 || countAndFlagsBits == 30066 && object == 0xE200000000000000)
        {
          object, stringName._object, v18, v17, v2, v3, v4, v5;
          v13 = 5;
        }

        else
        {
          v19 = sub_1CF9E8048();
          object, v20, v21, v22, v23, v24, v25, v26;
          if (v19)
          {
            v13 = 5;
          }

          else
          {
            v13 = 0;
          }
        }
      }
    }
  }

  *v8 = v13;
  return result;
}

uint64_t EvictionReasons.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x697461646E756F66;
  v4 = 28774;
  if (v1 != 4)
  {
    v4 = 0x705565746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65446568636163;
  if (v1 != 1)
  {
    v5 = 1919251317;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FileProviderDaemon::EvictionReasons_optional __swiftcall EvictionReasons.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CF7419B0()
{
  result = qword_1EC4C4558;
  if (!qword_1EC4C4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4558);
  }

  return result;
}

uint64_t sub_1CF741A0C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x697461646E756F66;
  v4 = 28774;
  if (v1 != 4)
  {
    v4 = 0x705565746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65446568636163;
  if (v1 != 1)
  {
    v5 = 1919251317;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF741B88()
{
  result = qword_1EC4C4560;
  if (!qword_1EC4C4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4560);
  }

  return result;
}

id static ConcreteFPDPurger.shared()()
{
  if (qword_1EDEA70C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEA70D0;

  return v1;
}

void ConcreteFPDPurger.purgeAsync(at:)(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v6 = fpfs_current_log();
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = v1;
  sub_1CF01001C(v6, "purgeAsync(at:)", 15, 2, sub_1CF7433C0, v8);
}

void sub_1CF741DE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v48 = a6;
  v9 = a4;
  v13 = a1;
  if (!a1)
  {
    v13 = fpfs_current_log();
  }

  v14 = a1;
  v47 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v50 = v15;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v16 = sub_1CF9E7988();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  sub_1CF9E6978();
  v50, v26, v27, v28, v29, v30, v31, v32;
  v33 = __fp_log_fork();

  v46[2] = v46;
  v56 = v33;
  v57 = 0;
  MEMORY[0x1EEE9AC00](v34);
  v42[2] = v13;
  v42[3] = &v56;
  v42[4] = v7;
  v42[5] = a2;
  v42[6] = a3;
  v43 = v9;
  v44 = a5;
  v45 = v48;
  v58 = 1;
  v55 = 0;
  v35 = swift_allocObject();
  v35[2] = &v58;
  v35[3] = sub_1CF2BA13C;
  v35[4] = v42;
  v35[5] = &v55;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1CF2BA170;
  *(v36 + 24) = v35;
  v53 = sub_1CF485970;
  v54 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1CEFFD02C;
  v52 = &block_descriptor_40_1;
  v37 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v7, v37);
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v55)
  {
    swift_willThrow();

    v38 = v47;
    v39 = fpfs_adopt_log();

    return;
  }

  if (v58)
  {
    goto LABEL_10;
  }

  v40 = v47;
  v41 = fpfs_adopt_log();
}

void *sub_1CF7420F0(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = 0;
  return result;
}

uint64_t sub_1CF74216C(uint64_t *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v6);
  v3 = *a1;
  v4 = a1[1];
  *a1 = v6;

  return sub_1CEFF7124(v3, v4);
}

void *sub_1CF742200(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1CF742280(uint64_t a1, void (*a2)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  a2(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_1CF74477C(v7, a1);
}

void *sub_1CF74238C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1CF742440(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  a2(&v9);
  v6 = *a1;
  *a1 = v9;

  return a5(v6);
}

void sub_1CF7424E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, __n128))
{
  v31[2] = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((*(a2 + 8) & 1) == 0)
  {
    sub_1CF9E73C8();
    v30 = v11;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v12 = sub_1CF9E7988();
    v14 = v13;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    sub_1CF9E6978();
    v30, v22, v23, v24, v25, v26, v27, v28;
    __fp_log_adopt();
  }

  (a7)(v31);
  if (v7)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      __fp_leave_section_Debug();
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    __fp_leave_section_Debug();
  }

  v29 = fpfs_adopt_log();
}

uint64_t sub_1CF742688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *__return_ptr))
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((*(a2 + 8) & 1) == 0)
  {
    sub_1CF9E73C8();
    v33 = v11;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v12 = sub_1CF9E7988();
    v14 = v13;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    sub_1CF9E6978();
    v33, v22, v23, v24, v25, v26, v27, v28;
    __fp_log_adopt();
  }

  a7(&v34);
  if (v7)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      __fp_leave_section_Debug();
    }

    v29 = fpfs_adopt_log();
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      __fp_leave_section_Debug();
    }

    v31 = fpfs_adopt_log();

    v30 = v34;
  }

  return v30 & 1;
}

void sub_1CF742834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, __n128))
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log();
  if ((*(a2 + 8) & 1) == 0)
  {
    sub_1CF9E73C8();
    v30 = v11;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v12 = sub_1CF9E7988();
    v14 = v13;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    sub_1CF9E6978();
    v30, v22, v23, v24, v25, v26, v27, v28;
    __fp_log_adopt();
  }

  (a7)(v31);
  if (v7)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      __fp_leave_section_Debug();
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    __fp_leave_section_Debug();
  }

  v29 = fpfs_adopt_log();
}

void ConcreteFPDPurger.purgeAndWait(at:)(uint64_t a1)
{
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEA70E8;
  v4 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v4);
  v37[2] = v1;
  v37[3] = a1;
  v6 = v5;
  if (!v5)
  {
    v6 = fpfs_current_log();
  }

  v38 = v4;
  v39 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v41 = v7;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v8 = sub_1CF9E7988();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1CF9E6978();
  v41, v18, v19, v20, v21, v22, v23, v24;
  v25 = __fp_log_fork();

  v48 = v25;
  v49 = 0;
  MEMORY[0x1EEE9AC00](v26);
  v33[2] = v6;
  v33[3] = &v48;
  v33[4] = v3;
  v33[5] = "purgeAndWait(at:)";
  v33[6] = 17;
  v34 = 2;
  v35 = sub_1CF7445D0;
  v36 = v37;
  v47 = 1;
  v46 = 0;
  v27 = swift_allocObject();
  v27[2] = &v47;
  v27[3] = sub_1CF2B1698;
  v27[4] = v33;
  v27[5] = &v46;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1CF2B16B0;
  *(v28 + 24) = v27;
  v44 = sub_1CEFFD05C;
  v45 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFFD02C;
  v43 = &block_descriptor_38;
  v29 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v3, v29);
  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v46)
  {
    if ((v47 & 1) == 0)
    {

      v30 = v39;
      v31 = fpfs_adopt_log();

      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  swift_willThrow();

  v32 = fpfs_adopt_log();
  __break(1u);
}

id ConcreteFPDPurger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcreteFPDPurger.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConcreteFPDPurger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CF742E1C()
{
  result = [objc_allocWithZone(type metadata accessor for ConcreteFPDPurger()) init];
  qword_1EDEA70D0 = result;
  return result;
}

uint64_t sub_1CF742E4C()
{
  v0 = sub_1CF9E7388();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v20 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CF9E7318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = sub_1CF9E6448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v16 = sub_1CF701F40();
  v19[0] = &unk_1CFA164A0;
  v19[1] = v16;
  sub_1CF9E63E8();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1CF00BD28(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  (*(v10 + 16))(v12, v15, v9);
  (*(v3 + 16))(v5, v8, v2);
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8098], v22);
  v17 = sub_1CF9E73B8();
  (*(v3 + 8))(v8, v2);
  result = (*(v10 + 8))(v15, v9);
  qword_1EDEA70E8 = v17;
  return result;
}

void ConcreteFPDPurger.barrier(completionHandler:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDEA70E8;
  v5 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v5);
  v38[2] = a1;
  v38[3] = a2;
  v7 = v6;
  if (!v6)
  {
    v7 = fpfs_current_log();
  }

  v39 = v5;
  v40 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v42 = v8;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v9 = sub_1CF9E7988();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  sub_1CF9E6978();
  v42, v19, v20, v21, v22, v23, v24, v25;
  v26 = __fp_log_fork();

  v49 = v26;
  v50 = 0;
  MEMORY[0x1EEE9AC00](v27);
  v34[2] = v7;
  v34[3] = &v49;
  v34[4] = v4;
  v34[5] = "barrier(completionHandler:)";
  v34[6] = 27;
  v35 = 2;
  v36 = sub_1CF7445FC;
  v37 = v38;
  v48 = 1;
  v47 = 0;
  v28 = swift_allocObject();
  v28[2] = &v48;
  v28[3] = sub_1CF2BA13C;
  v28[4] = v34;
  v28[5] = &v47;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1CF2BA170;
  *(v29 + 24) = v28;
  v45 = sub_1CF485970;
  v46 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1CEFFD02C;
  v44 = &block_descriptor_18_0;
  v30 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v4, v30);
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v47)
  {
    if ((v48 & 1) == 0)
    {

      v31 = v40;
      v32 = fpfs_adopt_log();

      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  swift_willThrow();

  v33 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF743A30(int *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  v5 = sub_1CF9E6978();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_1CF9E6978();
  v14 = removexattr((v5 + 32), (v13 + 32), 0);

  *a2 = v14;
}

void sub_1CF743ACC(int *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  v5 = sub_1CF9E6978();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_1CF9E6978();
  v14 = removexattr((v5 + 32), (v13 + 32), 0);

  *a2 = v14;
}

void sub_1CF743B68(_DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  sub_1CF9E6978();
  v4, v5, v6, v7, v8, v9, v10, v11;
  LODWORD(v4) = fpfs_clear_file_acl();

  *a2 = v4;
}

uint64_t _s18FileProviderDaemon17ConcreteFPDPurgerC31prepareDomainForSyncRootRemoval3urly10Foundation3URLV_tF_0(uint64_t a1)
{
  v17 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1CF9E6118();
  v16[10] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v18 = a1;
  v13 = sub_1CEFE1894(sub_1CF7457B0);
  v16[8] = v6;
  v16[7] = v8;
  v16[9] = v11;
  v16[6] = v4;
  MEMORY[0x1EEE9AC00](v13);
  v16[-2] = a1;
  v14 = sub_1CEFE1894(sub_1CF7457CC);
  MEMORY[0x1EEE9AC00](v14);
  v16[-2] = a1;
  return sub_1CEFE1894(sub_1CF7457E8);
}

uint64_t objectdestroyTm_7()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF74471C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF74480C(v2);
}

uint64_t sub_1CF74477C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CF7447EC(_TtC18FileProviderDaemon8FSTester *self, SEL x1_0, int64_t x2_0, int64_t x3_0, id x4_0, id x5_0, uint64_t w6_0, id x7_0)
{
  if (self != 1)
  {
    self, x1_0, x2_0, x3_0, x4_0, x5_0, w6_0, x7_0;
  }
}

double sub_1CF7447FC(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1CF74480C(uint64_t a1)
{
  v241 = a1;
  v260 = *MEMORY[0x1E69E9840];
  v235 = sub_1CF9E53C8();
  v1 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v234 = &v228 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v254 = (&v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v239 = &v228 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v228 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v244 = &v228 - v12;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v230 = &v228 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v229 = &v228 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v247 = &v228 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v251 = &v228 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v228 - v26;
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7288();
  v31 = os_log_type_enabled(v29, v30);
  v248 = v10;
  if (v31)
  {
    v32 = v3;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Started purging...", v33, 2u);
    v34 = v33;
    v3 = v32;
    v10 = v248;
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  v249 = *(v14 + 8);
  v250 = v14 + 8;
  v249(v27, v13);
  v35 = [objc_opt_self() defaultManager];
  v36 = v241;
  sub_1CF9E5A18();
  v38 = v37;
  v39 = sub_1CF9E6888();
  v38, v40, v41, v42, v43, v44, v45, v46;
  v258 = 0;
  v47 = [v35 contentsOfDirectoryAtPath:v39 error:&v258];

  v48 = v258;
  if (!v47)
  {
    v162 = v258;
    v163 = sub_1CF9E57F8();

    swift_willThrow();
    v164 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v165 = v254;
    (*(v4 + 16))(v254, v36, v3);
    v166 = sub_1CF9E6108();
    v167 = sub_1CF9E72A8();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v258 = v253;
      *v168 = 136446210;
      v169 = sub_1CF9E5928();
      v170 = v3;
      v171 = [v169 fp_shortDescription];

      v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v252 = v13;
      v174 = v173;

      (*(v4 + 8))(v165, v170);
      v175 = sub_1CEFD0DF0(v172, v174, &v258);
      v174, v176, v177, v178, v179, v180, v181, v182;
      *(v168 + 4) = v175;
      _os_log_impl(&dword_1CEFC7000, v166, v167, "Failed to get contents for URL %{public}s", v168, 0xCu);
      v183 = v253;
      __swift_destroy_boxed_opaque_existential_1(v253);
      MEMORY[0x1D386CDC0](v183, -1, -1);
      MEMORY[0x1D386CDC0](v168, -1, -1);

      v161 = v16;
      v184 = v252;
      return (v249)(v161, v184);
    }

    (*(v4 + 8))(v165, v3);
    v161 = v16;
LABEL_31:
    v184 = v13;
    return (v249)(v161, v184);
  }

  v49 = sub_1CF9E6D48();
  v50 = v48;

  v52 = v49;
  v53 = v244;
  v243 = *(v49 + 16);
  if (!v243)
  {
LABEL_24:
    v140 = fpfs_current_or_default_log();
    v141 = v230;
    sub_1CF9E6128();

    v142 = v52;
    v143 = sub_1CF9E6108();
    v144 = sub_1CF9E7288();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 134217984;
      v146 = *v142->tree;
      v142, v147, v148, v149, v150, v151, v152, v153;
      *(v145 + 4) = v146;
      v142, v154, v155, v156, v157, v158, v159, v160;
      _os_log_impl(&dword_1CEFC7000, v143, v144, "Finished purging %ld files.", v145, 0xCu);
      MEMORY[0x1D386CDC0](v145, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v161 = v141;
    goto LABEL_31;
  }

  v246 = (v4 + 16);
  v254 = (v4 + 8);
  v238 = 9939394;
  v233 = (v1 + 8);
  v54 = 0;
  v55 = (v49 + 40);
  *&v51 = 136446210;
  v240 = v51;
  *&v51 = 136315394;
  v232 = v51;
  v242 = v49;
  v231 = v3;
  while (1)
  {
    if (v54 >= *v52->tree)
    {
      __break(1u);
    }

    v57 = *v55;

    sub_1CF9E5968();
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65 = fpfs_current_or_default_log();
    v66 = v251;
    sub_1CF9E6128();
    v245 = *v246;
    v245(v10, v53, v3);
    v67 = sub_1CF9E6108();
    v68 = sub_1CF9E7288();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v252 = v54;
      v70 = v69;
      v71 = swift_slowAlloc();
      v258 = v71;
      *v70 = v240;
      v72 = sub_1CF9E5928();
      v73 = v13;
      v74 = v3;
      v75 = [v72 fp_shortDescription];

      v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v78 = v77;

      v3 = v74;
      v13 = v73;
      v253 = *v254;
      (v253)(v248, v3);
      v79 = sub_1CEFD0DF0(v76, v78, &v258);
      v80 = v78;
      v10 = v248;
      v80, v81, v82, v83, v84, v85, v86, v87;
      *(v70 + 4) = v79;
      _os_log_impl(&dword_1CEFC7000, v67, v68, "Purging: %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      v88 = v70;
      v54 = v252;
      MEMORY[0x1D386CDC0](v88, -1, -1);

      v89 = v251;
      v90 = v73;
    }

    else
    {

      v253 = *v254;
      (v253)(v10, v3);
      v89 = v66;
      v90 = v13;
    }

    v249(v89, v90);
    v53 = v244;
    sub_1CF9E5A18();
    v92 = v91;
    v93 = sub_1CF9E6978();
    v92, v94, v95, v96, v97, v98, v99, v100;
    v101 = removefile((v93 + 32), 0, 0x101u);

    if (v101 < 0)
    {
      break;
    }

    v56 = v253;
LABEL_7:
    ++v54;
    v56(v53, v3);
    v55 += 2;
    v52 = v242;
    if (v243 == v54)
    {
      goto LABEL_24;
    }
  }

  if (MEMORY[0x1D38683F0](v102))
  {
    v103 = MEMORY[0x1D38683F0]();
    v252 = v54;
    if (v103 == v238)
    {
      v104 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v105 = sub_1CF9E6138();
      if ((v105 & 0x100000000) != 0)
      {
        LODWORD(v258) = 22;
      }

      else
      {
        LODWORD(v258) = v105;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BD28(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v106 = v234;
      v107 = v235;
      sub_1CF9E57D8();
      v104 = sub_1CF9E53A8();
      (*v233)(v106, v107);
    }

    swift_willThrow();
    v108 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v109 = v239;
    v245(v239, v53, v3);
    v110 = v104;
    v111 = sub_1CF9E6108();
    v112 = v3;
    v113 = sub_1CF9E72A8();

    if (os_log_type_enabled(v111, v113))
    {
      v114 = v109;
      v115 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v258 = v245;
      *v115 = v232;
      v236 = v113;
      v116 = v112;
      v117 = sub_1CF9E5928();
      v118 = [v117 fp_shortDescription];

      v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v120 = v13;
      v122 = v121;

      v123 = v114;
      v53 = v244;
      v124 = v116;
      v125 = v253;
      (v253)(v123, v124);
      v126 = sub_1CEFD0DF0(v119, v122, &v258);
      v127 = v122;
      v13 = v120;
      v127, v128, v129, v130, v131, v132, v133, v134;
      *(v115 + 4) = v126;
      *(v115 + 12) = 2112;
      swift_getErrorValue();
      v135 = Error.prettyDescription.getter(v256, v257);
      *(v115 + 14) = v135;
      v136 = v237;
      *v237 = v135;
      _os_log_impl(&dword_1CEFC7000, v111, v236, "Failed to unlink URL %s, error: %@", v115, 0x16u);
      sub_1CF19CAB0(v136);
      MEMORY[0x1D386CDC0](v136, -1, -1);
      v137 = v245;
      __swift_destroy_boxed_opaque_existential_1(v245);
      MEMORY[0x1D386CDC0](v137, -1, -1);
      v138 = v115;
      v56 = v125;
      MEMORY[0x1D386CDC0](v138, -1, -1);

      v249(v247, v120);
      v3 = v231;
    }

    else
    {

      v139 = v109;
      v56 = v253;
      (v253)(v139, v112);
      v249(v247, v13);
      v3 = v112;
    }

    v10 = v248;
    v54 = v252;
    goto LABEL_7;
  }

  v258 = 0;
  v259 = 0xE000000000000000;
  sub_1CF9E7948();
  v259, v186, v187, v188, v189, v190, v191, v192;
  v258 = 0xD00000000000001ALL;
  v259 = 0x80000001CFA2DF30;
  v255 = v101;
  v193 = sub_1CF9E7F98();
  v195 = v194;
  MEMORY[0x1D3868CC0](v193);
  v195, v196, v197, v198, v199, v200, v201, v202;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v203 = v258;
  v204 = v259;
  v205 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v206 = sub_1CF9E6108();
  v207 = sub_1CF9E72B8();
  v204, v208, v209, v210, v211, v212, v213, v214;
  if (os_log_type_enabled(v206, v207))
  {
    v215 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v258 = v216;
    *v215 = 136315650;
    v217 = sub_1CF9E7988();
    v219 = v218;
    v220 = sub_1CEFD0DF0(v217, v218, &v258);
    v219, v221, v222, v223, v224, v225, v226, v227;
    *(v215 + 4) = v220;
    *(v215 + 12) = 2048;
    *(v215 + 14) = 315;
    *(v215 + 22) = 2080;
    *(v215 + 24) = sub_1CEFD0DF0(v203, v204, &v258);
    _os_log_impl(&dword_1CEFC7000, v206, v207, "[ASSERT] ‼️  %s:%lu: %s", v215, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v216, -1, -1);
    MEMORY[0x1D386CDC0](v215, -1, -1);
  }

  v249(v229, v13);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FPFSPendingSetAnchor(uint64_t a1)
{
  result = qword_1EC4C45D0;
  if (!qword_1EC4C45D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF745900(uint64_t a1)
{
  result = sub_1CF9E5D98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF745988(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45E0, &qword_1CFA16578);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7460A4();
  sub_1CF9E82A8();
  v12 = 0;
  sub_1CF9E5D98();
  sub_1CF342AD0(&qword_1EDEAECC8, MEMORY[0x1E69695B0]);
  sub_1CF9E7F08();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FPFSPendingSetAnchor(0) + 20));
    v10[15] = 1;
    sub_1CF1C5234();
    sub_1CF9E7F08();
    v10[14] = 2;
    sub_1CF9E7EE8();
    v10[13] = 3;
    sub_1CF9E7EC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF745BA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1CF9E5D98();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45F0, &qword_1CFA16580);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for FPFSPendingSetAnchor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7460A4();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v24;
  v32 = 0;
  sub_1CF342AD0(&qword_1EDEAECB8, MEMORY[0x1E69695D0]);
  v14 = v26;
  sub_1CF9E7D88();
  v15 = v4;
  v16 = *(v13 + 32);
  v17 = v12;
  v18 = v27;
  v27 = v15;
  v16(v12, v18, v15);
  v31 = 1;
  sub_1CF1C51E0();
  sub_1CF9E7D88();
  *&v12[v9[5]] = v28;
  v30 = 2;
  v19 = sub_1CF9E7D78();
  v20 = v25;
  *(v17 + v9[6]) = v19;
  v29 = 3;
  v21 = sub_1CF9E7D58();
  (*(v20 + 8))(v8, v14);
  *(v17 + v9[7]) = v21 & 1;
  sub_1CF7460F8(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF74615C(v17);
}

unint64_t sub_1CF745F4C()
{
  v1 = 0x53676E69646E6570;
  v2 = 0x74657366666FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF745FD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF7462D0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF745FFC(uint64_t a1)
{
  v2 = sub_1CF7460A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF746038(uint64_t a1)
{
  v2 = sub_1CF7460A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF7460A4()
{
  result = qword_1EC4C45E8;
  if (!qword_1EC4C45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C45E8);
  }

  return result;
}

uint64_t sub_1CF7460F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSPendingSetAnchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF74615C(uint64_t a1)
{
  v2 = type metadata accessor for FPFSPendingSetAnchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CF7461CC()
{
  result = qword_1EC4C45F8;
  if (!qword_1EC4C45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C45F8);
  }

  return result;
}

unint64_t sub_1CF746224()
{
  result = qword_1EC4C4600;
  if (!qword_1EC4C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4600);
  }

  return result;
}

unint64_t sub_1CF74627C()
{
  result = qword_1EC4C4608;
  if (!qword_1EC4C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4608);
  }

  return result;
}

uint64_t sub_1CF7462D0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xEE00444955557465;
  v11 = a1 == 0x53676E69646E6570 && a2 == 0xEE00444955557465;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000001CFA59C50;
    if (a1 == 0xD000000000000015 && 0x80000001CFA59C50 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001CFA59C70 == a2)
    {
      a2, 0x80000001CFA59C70, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v14 = sub_1CF9E8048();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

uint64_t sub_1CF746444()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPCKWharfResource(uint64_t a1)
{
  result = qword_1EDEA6F20;
  if (!qword_1EDEA6F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF746510(_BYTE *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FPFileTree(0);
  v6 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource(0);
  inited = swift_initStackObject();
  v33[3] = type metadata accessor for DocumentWharf(0);
  v33[4] = &off_1F4C2E638;
  v33[0] = v6;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v33, inited + 16);
  v8 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v9 = [v8 init];
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(inited + 80) = v9;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v10 = *(inited + 80);
  sub_1CF4DF514(a1);
  *(inited + 80) = v10;
  *(inited + 72) = 1;

  sub_1CF7F2C08();
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = a1;
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E7288();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v2;
    v17 = v16;
    v32 = v16;
    *v15 = 136315138;
    v31 = v12[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v18 = FPCKPhase.description.getter();
    v20 = v19;
    v21 = sub_1CEFD0DF0(v18, v19, &v32);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v15 + 4) = v21;
    _os_log_impl(&dword_1CEFC7000, v13, v14, "🧹 Successfully saved telemetry report update for phase %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D386CDC0](v17, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);

    return (*(v3 + 8))(v5, v30);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1CF746824(void *a1)
{
  type metadata accessor for FPFileTree(0);
  v2 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource(0);
  inited = swift_initStackObject();
  v20[3] = type metadata accessor for DocumentWharf(0);
  v20[4] = &off_1F4C2E638;
  v20[0] = v2;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v20, inited + 16);
  v4 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v5 = [v4 init];
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(inited + 80) = v5;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v6 = *(inited + 80);
  v7 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = *&v8[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error];
  *&v8[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = a1;
  v10 = v6;
  v11 = v8;
  v12 = a1;

  *(inited + 80) = v10;
  *(inited + 72) = 1;

  sub_1CF7F2C08();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  *(inited + 64), v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_1CF7469D8()
{
  type metadata accessor for FPFileTree(0);
  v0 = *(swift_dynamicCastClassUnconditional() + 136);
  type metadata accessor for FPCKWharfResource(0);
  inited = swift_initStackObject();
  v14[3] = type metadata accessor for DocumentWharf(0);
  v14[4] = &off_1F4C2E638;
  v14[0] = v0;
  *(inited + 72) = 0;
  sub_1CF1A91AC(v14, inited + 16);
  v2 = objc_allocWithZone(type metadata accessor for FPCKReport());

  v3 = [v2 init];
  __swift_destroy_boxed_opaque_existential_1(v14);
  *(inited + 80) = v3;
  *(inited + 56) = 1801678950;
  *(inited + 64) = 0xE400000000000000;

  sub_1CF7F3FC8();
  swift_beginAccess();
  v4 = *(inited + 80);

  v5 = sub_1CF4DFA80();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  *(inited + 64), v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

BOOL sub_1CF746CA0()
{
  result = sub_1CF746CC4();
  byte_1EDEBB9E8 = result;
  return result;
}

BOOL sub_1CF746CC4()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v6 = domain_answer == sub_1CF9E61A8() && v12[0] == 4;
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E7288();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "🧲 Device eligible for embeddings: %{BOOL}d", v10, 8u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_1CF746E80(void *a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] = 0;
  v7 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] = 0;
  result = [a1 provider];
  if (result)
  {
    v10 = result;
    v11 = [result asAppExtensionBackedProvider];

    v13.receiver = v3;
    v13.super_class = type metadata accessor for FPFSIndexer(0);
    v12 = objc_msgSendSuper2(&v13, sel_initWithExtension_domain_enabled_supportingIndexAll_, v11, a1, a2 & 1, a3 & 1);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1CF746FA8(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 queue];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v10 = a2;

  v11 = a1;
  sub_1CF01001C(0, "setIndexingEnabled(_:completionHandler:)", 40, 2, sub_1CF75BC68, v9);

  return result;
}

uint64_t sub_1CF747080(char *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

  v12 = a4;
  sub_1CF7515B8(v10, 0, a1, a2, a3, a4);

  return sub_1CEFCCC44(v10, &qword_1EC4C46C0, &unk_1CFA16798);
}

void sub_1CF747300(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer);
  if (v8)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v10 = v8;
    v11 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v12 = sub_1CF9E6D28();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v15[4] = sub_1CF74F980;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CF00A468;
    v15[3] = &block_descriptor_39;
    v14 = _Block_copy(v15);

    [v10 indexOutOfBandUpdatedItems:v11 deletedItems:v12 indexReason:a6 completionHandler:v14];
    _Block_release(v14);
  }

  else
  {
    (a2)(0, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1CF747490(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CF0892D0;
  v8[3] = &block_descriptor_331;
  v6 = _Block_copy(v8);
  [a2 signalChangesWithCompletionHandler_];
  _Block_release(v6);
  return a3(a1);
}

uint64_t sub_1CF7475E0()
{
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if ((*(*(Strong + 16) + 82) & 4) == 0)
      {
        goto LABEL_13;
      }

      if (qword_1EDEAA3F8 != -1)
      {
        swift_once();
      }

      if (byte_1EDEBB9E8 == 1)
      {
        type metadata accessor for FPFileTree(0);
        v2 = *(swift_dynamicCastClassUnconditional() + 280);
        v3 = [v2 pathComponents];
        v4 = sub_1CF9E6D48();

        v5 = *v4->tree;
        v4, v6, v7, v8, v9, v10, v11, v12;
        v13 = v2;
        if (v5 >= 2)
        {
          v13 = [v2 stringByDeletingLastPathComponent];
          if (!v13)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v15 = v14;
            v13 = sub_1CF9E6888();
            v15, v16, v17, v18, v19, v20, v21, v22;
          }
        }

        v23 = [v13 fp_isiCloudDriveIdentifier];

        if (v23)
        {
          return 1;
        }
      }

      else
      {
LABEL_13:
      }
    }
  }

  return 0;
}

uint64_t sub_1CF747778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(*(Strong + 16) + 64);
      *v12 = v14;
      (*(v10 + 104))(v12, *MEMORY[0x1E69E8018], v9);
      v15 = v14;
      LOBYTE(v14) = sub_1CF9E64D8();

      (*(v10 + 8))(v12, v9);
      if ((v14 & 1) == 0)
      {
        __break(1u);
      }
    }
  }

  v16 = [objc_opt_self() wellKnownPhotoLibraryURLForIdentifier_];
  sub_1CF9E59D8();

  v17 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v18 = sub_1CF9E5928();
  v19 = [v17 initWithPhotoLibraryURL_];

  v20 = sub_1CF9E6888();
  v21 = sub_1CF9E6888();
  v27[0] = 0;
  v22 = [v19 ingestItemWithSpotlightUniqueIdentifier:v20 bundleID:v21 purgeUrgency:2 error:v27];

  if (v22)
  {
    v23 = v27[0];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v25 = v27[0];
    sub_1CF9E57F8();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1CF747AA4(unint64_t a1, void *a2, char *a3, void (*a4)(void, void *, uint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v231 = a7;
  v232 = a6;
  v234 = a5;
  v233 = a4;
  v239 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v229 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v230 = &v213 - v14;
  v225 = type metadata accessor for ChangeEnumeratorAnchor(0);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v16 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1CF9E6118();
  v17 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v228 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v223 = &v213 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v213 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v213 - v25;
  *&v28 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v30 = &v213 - v29;
  v235 = a3;
  v31 = [a3 domain];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 log];
  }

  else
  {
    v33 = 0;
  }

  v34 = fpfs_adopt_log();

  if (!a2)
  {
    v220 = v34;
    v55 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA27C(v231, v16, type metadata accessor for ChangeEnumeratorAnchor);
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E7288();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v240 = v17;
      v60 = v59;
      v245 = v59;
      *v58 = 136315138;
      v61 = sub_1CF7D9BAC();
      v63 = v62;
      sub_1CF75B008(v16, type metadata accessor for ChangeEnumeratorAnchor);
      v64 = sub_1CEFD0DF0(v61, v63, &v245);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v58 + 4) = v64;
      _os_log_impl(&dword_1CEFC7000, v56, v57, "🧲  batch indexation succeeded for anchor %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v72 = v60;
      v17 = v240;
      MEMORY[0x1D386CDC0](v72, -1, -1);
      MEMORY[0x1D386CDC0](v58, -1, -1);
    }

    else
    {

      sub_1CF75B008(v16, type metadata accessor for ChangeEnumeratorAnchor);
    }

    v221 = *(v17 + 8);
    v221(v30, v237);
    v74 = sub_1CF7475E0();
    v34 = v220;
    if ((v74 & 1) != 0 && v239)
    {
      v75 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v76 = sub_1CF9E6108();
      v77 = sub_1CF9E7288();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_1CEFC7000, v76, v77, "🧲 starting media ingestion", v78, 2u);
        MEMORY[0x1D386CDC0](v78, -1, -1);
      }

      v218 = v17 + 8;
      v221(v23, v237);
      v80 = (v239 & 0xFFFFFFFFFFFFFF8);
      if (v239 >> 62)
      {
        goto LABEL_60;
      }

      for (i = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
      {
        v227 = v80;
        v219 = 0;
        v217 = 0;
        v82 = 0;
        v222 = 0;
        v238 = v239 & 0xC000000000000001;
        v226 = v239 + 32;
        v83 = a8 + 56;
        *&v79 = 136315650;
        v215 = v79;
        v236 = i;
        while (1)
        {
          if (v238)
          {
            v91 = MEMORY[0x1D3869C30](v82, v239);
          }

          else
          {
            if (v82 >= v227[2])
            {
              goto LABEL_58;
            }

            v91 = *(v226 + 8 * v82);
          }

          v80 = v91;
          v92 = __OFADD__(v82++, 1);
          if (v92)
          {
            break;
          }

          v93 = [v91 attributeSet];
          v94 = [v93 eligibleForPhotosProcessing];

          if (v94)
          {
            v95 = [v94 BOOLValue];
          }

          else
          {
            v95 = 0;
          }

          v96 = [v80 bundleID];
          if (v96)
          {
            v97 = v96;
            v240 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v99 = v98;
          }

          else
          {
            v240 = 0;
            v99 = 0;
          }

          v100 = [v80 uniqueIdentifier];
          v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v103 = v102;

          if (*(a8 + 16))
          {
            sub_1CF9E81D8();
            sub_1CF9E69C8();
            v111 = sub_1CF9E8228();
            v119 = -1 << *(a8 + 32);
            v120 = v111 & ~v119;
            if (((*(v83 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
            {
              goto LABEL_48;
            }

            v121 = ~v119;
            while (1)
            {
              v122 = (*(a8 + 48) + 16 * v120);
              v112 = v122[1];
              v123 = *v122 == v101 && v112 == v103;
              if (v123 || (sub_1CF9E8048() & 1) != 0)
              {
                break;
              }

              v120 = (v120 + 1) & v121;
              if (((*(v83 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            if ((v95 & 1) == 0)
            {
LABEL_48:
              v103, v112, v113, v114, v115, v116, v117, v118;

              v99, v180, v181, v182, v183, v184, v185, v186;
LABEL_49:
              i = v236;
              goto LABEL_21;
            }

            v124 = v222;
            if (!v99)
            {
              v103, v112, v113, v114, v115, v116, v117, v118;

              goto LABEL_49;
            }

            sub_1CF747778(v101, v103, v240, v99);
            if (v124)
            {
              v132 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v133 = v124;
              v134 = sub_1CF9E6108();
              v135 = sub_1CF9E72A8();
              v99, v136, v137, v138, v139, v140, v141, v142;
              v103, v143, v144, v145, v146, v147, v148, v149;

              v216 = v135;
              if (os_log_type_enabled(v134, v135))
              {
                v157 = swift_slowAlloc();
                v214 = v134;
                v222 = v124;
                v158 = v157;
                v213 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                v245 = v159;
                *v158 = v215;
                v160 = sub_1CEFD0DF0(v101, v103, &v245);
                v103, v161, v162, v163, v164, v165, v166, v167;
                *(v158 + 4) = v160;
                *(v158 + 12) = 2080;
                v168 = sub_1CEFD0DF0(v240, v99, &v245);
                v99, v169, v170, v171, v172, v173, v174, v175;
                *(v158 + 14) = v168;
                *(v158 + 22) = 2112;
                v176 = v222;
                swift_getErrorValue();
                v177 = Error.prettyDescription.getter(v243, v244);
                *(v158 + 24) = v177;
                v178 = v213;
                *v213 = v177;
                v179 = v214;
                _os_log_impl(&dword_1CEFC7000, v214, v216, "🧲 cannot ingest media item %s %s: %@", v158, 0x20u);
                sub_1CEFCCC44(v178, &qword_1EC4BE350, &unk_1CF9FC3B0);
                MEMORY[0x1D386CDC0](v178, -1, -1);
                swift_arrayDestroy();
                MEMORY[0x1D386CDC0](v159, -1, -1);
                MEMORY[0x1D386CDC0](v158, -1, -1);
              }

              else
              {
                v99, v150, v151, v152, v153, v154, v155, v156;
                v103, v194, v195, v196, v197, v198, v199, v200;
              }

              v221(v228, v237);
              v92 = __OFADD__(v219++, 1);
              i = v236;
              if (v92)
              {
                goto LABEL_59;
              }

              v222 = 0;
            }

            else
            {
              v222 = 0;
              v103, v125, v126, v127, v128, v129, v130, v131;
              v99, v187, v188, v189, v190, v191, v192, v193;

              v92 = __OFADD__(v217++, 1);
              i = v236;
              if (v92)
              {
                __break(1u);
                return;
              }
            }
          }

          else
          {
            v103, v104, v105, v106, v107, v108, v109, v110;

            v99, v84, v85, v86, v87, v88, v89, v90;
          }

LABEL_21:
          if (v82 == i)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        ;
      }

      v219 = 0;
      v217 = 0;
LABEL_62:
      v201 = fpfs_current_or_default_log();
      v202 = v223;
      sub_1CF9E6128();
      v203 = sub_1CF9E6108();
      v204 = sub_1CF9E7288();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        *v205 = 134218240;
        *(v205 + 4) = v217;
        *(v205 + 12) = 2048;
        *(v205 + 14) = v219;
        _os_log_impl(&dword_1CEFC7000, v203, v204, "🧲 ingested %ld media items (%ld errors)", v205, 0x16u);
        MEMORY[0x1D386CDC0](v205, -1, -1);
      }

      v221(v202, v237);
      v34 = v220;
    }

    v206 = v230;
    sub_1CEFDA27C(v231, v230, type metadata accessor for ChangeEnumeratorAnchor);
    (*(v224 + 56))(v206, 0, 1, v225);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    (*(*(v207 - 8) + 56))(v206, 0, 1, v207);
    v208 = v229;
    sub_1CEFCCBDC(v206, v229, &qword_1EC4C46C0, &unk_1CFA16798);
    v209 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v210 = v235;
    swift_beginAccess();
    v211 = v234;

    sub_1CF75B0B0(v208, &v210[v209]);
    swift_endAccess();
    sub_1CF754620(v206, 0, v210, v233, v211, v232 & 1);

    v54 = v206;
    goto LABEL_66;
  }

  v35 = a2;
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v37 = a2;
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E72A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    swift_getErrorValue();
    v42 = Error.prettyDescription.getter(v241, v242);
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "🧲  indexing failed: %@", v40, 0xCu);
    sub_1CEFCCC44(v41, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v40, -1, -1);
  }

  (*(v17 + 8))(v26, v237);
  type metadata accessor for Code(0);
  v245 = -1006;
  v43 = a2;
  sub_1CF75B5B0(&unk_1EDEA3690, type metadata accessor for Code, &unk_1CF9F9B64);
  v44 = sub_1CF9E5658();

  if (v44)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    v46 = v230;
    (*(*(v45 - 8) + 56))(v230, 1, 1, v45);
    v47 = v34;
    v48 = v229;
    sub_1CEFCCBDC(v46, v229, &qword_1EC4C46C0, &unk_1CFA16798);
    v49 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v50 = v235;
    swift_beginAccess();
    v51 = a2;
    v52 = v234;

    v53 = v48;
    v34 = v47;
    sub_1CF75B0B0(v53, &v50[v49]);
    swift_endAccess();
    sub_1CF752DF4(v46, 0, v50, v233, v52, v232 & 1, a2);

    v54 = v46;
LABEL_66:
    sub_1CEFCCC44(v54, &qword_1EC4C46C0, &unk_1CFA16798);
    goto LABEL_67;
  }

  v73 = a2;
  (v233)(v232 & 1, a2, 10);

LABEL_67:
  v212 = fpfs_adopt_log();
}

void sub_1CF748AC4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3668, 0x1E6964E80);
    v4 = sub_1CF9E6D48();
  }

  v6 = a3;
  v5(v4, a3);

  v4, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1CF748B68(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (a1)
  {
    v14 = a1;
    a2(a1);
  }

  v15 = type metadata accessor for ChangeEnumeratorAnchor(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_1CEFCCBDC(v13, v10, &qword_1EC4C46C0, &unk_1CFA16798);
  v17 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  swift_beginAccess();
  v18 = a1;

  sub_1CF75B0B0(v10, &a4[v17]);
  swift_endAccess();
  sub_1CF755E54(v13, 1, a4, a2, a3, a1);

  return sub_1CEFCCC44(v13, &qword_1EC4C46C0, &unk_1CFA16798);
}

uint64_t sub_1CF748D78(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v29 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v29 - v22);
  if (a3)
  {
    *v11 = a3;
    swift_storeEnumTagMultiPayload();
    v24 = a3;
    v23 = v11;
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      v25 = type metadata accessor for ChangeEnumeratorAnchor(0);
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    }

    else
    {
      v30 = a4;
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CEFE42D4(a1, a2);
      sub_1CF9E5678();
      v26 = type metadata accessor for ChangeEnumeratorAnchor(0);
      sub_1CF75B5B0(&qword_1EDEA5668, type metadata accessor for ChangeEnumeratorAnchor, &unk_1CFA178E0);
      sub_1CF9E5668();
      (*(*(v26 - 8) + 56))(v14, 0, 1, v26);

      sub_1CEFE48D8(a1, a2);
      a4 = v30;
    }

    swift_storeEnumTagMultiPayload();
    sub_1CEFE55D0(v14, v17, &qword_1EC4C46B8, &qword_1CFA16790);
    sub_1CEFE55D0(v17, v20, &qword_1EC4C46B8, &qword_1CFA16790);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v20;
      type metadata accessor for NSFileProviderError(0);
      v32 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();

      *v23 = v33;
    }

    else
    {
      sub_1CEFE55D0(v20, v23, &unk_1EC4C4AE0, qword_1CFA17B10);
    }

    swift_storeEnumTagMultiPayload();
  }

  a4(v23);
  return sub_1CEFCCC44(v23, &qword_1EC4C46B8, &qword_1CFA16790);
}

double sub_1CF749170(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1CF9E5B88();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1CEFE48D8(v4, v8);

  return result;
}

void sub_1CF749244(char *a1, void (*a2)(void **), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - v7);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isIndexingEnabled])
  {
    v14 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
    v15 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
    if (v15)
    {
LABEL_3:

      v16 = v15;
      sub_1CF757A54(v16, a1, a2, a3);

      return;
    }

    v19 = [a1 domain];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 provider];
      if (v21)
      {
        v33 = v21;
        v32 = [v21 providerDomainForDomain_];
        v31 = [v20 nsDomainOrNilForDefault];
        v30 = [v20 log];
        v22 = [v20 supportURL];
        v34 = a2;
        v23 = v22;
        sub_1CF9E59D8();

        v29 = objc_allocWithZone(MEMORY[0x1E6967420]);
        v24 = sub_1CF9E5928();
        (*(v10 + 8))(v13, v9);
        v25 = v30;
        v27 = v31;
        v26 = v32;
        v29 = [v29 initWithDomain:v31 providerDomain:v32 log:v30 supportURL:v24 dropIndexDelegate:a1];

        a2 = v34;
        v28 = *&a1[v14];
        *&a1[v14] = v29;

        v15 = *&a1[v14];
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    type metadata accessor for NSFileProviderError(0);
    v35 = -2013;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    *v8 = v36;
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48);
    v18 = type metadata accessor for ChangeEnumeratorAnchor(0);
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    *(v8 + v17) = 0;
  }

  swift_storeEnumTagMultiPayload();
  a2(v8);
  sub_1CEFCCC44(v8, &qword_1EC4C46A0, &unk_1CFA16780);
}

uint64_t sub_1CF749624(uint64_t a1, void (*a2)(void **))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - v11);
  sub_1CEFCCBDC(a1, &v20 - v11, &qword_1EC4C46B8, &qword_1CFA16790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    *v9 = *v12;
    swift_storeEnumTagMultiPayload();
    v14 = v13;
    a2(v9);

    v15 = &qword_1EC4C46A0;
    v16 = &unk_1CFA16780;
    v17 = v9;
  }

  else
  {
    sub_1CEFE55D0(v12, v6, &unk_1EC4C4AE0, qword_1CFA17B10);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48);
    sub_1CEFCCBDC(v6, v9, &unk_1EC4C4AE0, qword_1CFA17B10);
    *(v9 + v18) = 1;
    swift_storeEnumTagMultiPayload();
    a2(v9);
    sub_1CEFCCC44(v9, &qword_1EC4C46A0, &unk_1CFA16780);
    v17 = v6;
    v15 = &unk_1EC4C4AE0;
    v16 = qword_1CFA17B10;
  }

  return sub_1CEFCCC44(v17, v15, v16);
}

double sub_1CF74987C(void *a1)
{
  v22 = sub_1CF9E6388();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF9E6498();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v10;

  v13 = a1;
  v14 = v10;
  sub_1CF74921C(sub_1CF74F9A8, v12);

  sub_1CF9E6478();
  *v3 = 1;
  v15 = v20;
  v16 = v22;
  (*(v20 + 104))(v3, *MEMORY[0x1E69E7F48], v22);
  MEMORY[0x1D3868740](v6, v3);
  (*(v15 + 8))(v3, v16);
  v17 = *(v4 + 8);
  v18 = v21;
  v17(v6, v21);
  sub_1CF9E72E8();

  v17(v9, v18);
  swift_beginAccess();
  *(v11 + 16) = 0;

  return result;
}

void sub_1CF749B28(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v72[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v72[-1] - v15);
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    sub_1CEFCCBDC(a1, v16, &qword_1EC4C46A0, &unk_1CFA16780);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v16;
      v72[0] = 0;
      v72[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6E61202020202020, 0xEE00203A726F6863);
      v71 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v18 = v72[1];

      MEMORY[0x1D3868CC0](10, 0xE100000000000000);
      v18, v19, v20, v21, v22, v23, v24, v25;
      v26 = v72[1];
      v27 = sub_1CF9E6888();
      v26, v28, v29, v30, v31, v32, v33, v34;
      [a3 put_];
    }

    else
    {
      sub_1CEFE55D0(v16, v13, &unk_1EC4C4AE0, qword_1CFA17B10);
      v72[0] = 0;
      v72[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v72[1], v35, v36, v37, v38, v39, v40, v41;
      strcpy(v72, "      anchor: ");
      HIBYTE(v72[1]) = -18;
      sub_1CEFCCBDC(v13, v10, &unk_1EC4C4AE0, qword_1CFA17B10);
      v42 = type metadata accessor for ChangeEnumeratorAnchor(0);
      if ((*(*(v42 - 8) + 48))(v10, 1, v42) == 1)
      {
        sub_1CEFCCC44(v10, &unk_1EC4C4AE0, qword_1CFA17B10);
        v43 = 0xE500000000000000;
        v44 = 0x3E6C696E3CLL;
      }

      else
      {
        v45 = sub_1CF7D9BAC();
        v43 = v46;
        sub_1CF75B008(v10, type metadata accessor for ChangeEnumeratorAnchor);
        v44 = v45;
      }

      MEMORY[0x1D3868CC0](v44, v43);
      v43, v47, v48, v49, v50, v51, v52, v53;
      v54 = v72[1];

      MEMORY[0x1D3868CC0](10, 0xE100000000000000);
      v54, v55, v56, v57, v58, v59, v60, v61;
      v62 = v72[1];
      v63 = sub_1CF9E6888();
      v62, v64, v65, v66, v67, v68, v69, v70;
      [a3 put_];

      sub_1CEFCCC44(v13, &unk_1EC4C4AE0, qword_1CFA17B10);
    }
  }

  dispatch_group_leave(a4);
}

void sub_1CF749EF0(char a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, void *a6, void *a7)
{
  if (a2 && (_s3__C4CodeOMa_1(0), v21[0] = -1002, v14 = a2, sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0), v15 = sub_1CF9E5658(), a2, (v15 & 1) != 0))
  {
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a2;
    v17 = swift_allocObject();
    v17[2] = sub_1CF75C0A0;
    v17[3] = v16;
    v17[4] = a6;
    v21[4] = sub_1CF75C0AC;
    v21[5] = v17;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1CF00A468;
    v21[3] = &block_descriptor_318_0;
    v18 = _Block_copy(v21);
    v19 = a2;

    v20 = a6;

    [a7 dropIndexWithDropReason:a3 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    (a4)(a1 & 1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1CF74A0F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, void *a6)
{
  v190 = a6;
  v194 = a5;
  v199 = a3;
  v200 = a4;
  v197 = a1;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  MEMORY[0x1EEE9AC00](v173);
  v174 = (&v168 - v7);
  v172 = sub_1CF9E63D8();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v185 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v168 - v12;
  v183 = sub_1CF9E6068();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v178 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v176 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v192 = &v168 - v17;
  v177 = type metadata accessor for Signpost(0);
  v179 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v184 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v168 - v20;
  v180 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v168 - v23;
  v189 = sub_1CF9E6118();
  v186 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v188 = *(v26 - 8);
  v27 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v175 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v187 = (&v168 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v168 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v168 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v168 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  *&v42 = MEMORY[0x1EEE9AC00](v41).n128_u64[0];
  v44 = (&v168 - v43);
  v191 = a2;
  v45 = [a2 domain];
  if (v45)
  {
    v46 = v40;
    v47 = v45;
    v48 = [v45 log];

    v40 = v46;
  }

  else
  {
    v48 = 0;
  }

  v196 = fpfs_adopt_log();

  sub_1CEFCCBDC(v197, v44, &qword_1EC4C46B8, &qword_1CFA16790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v44;
    v50 = *v44;
    (v199)(0, v49, 7);

LABEL_25:
    v166 = v196;
    v167 = fpfs_adopt_log();

    return;
  }

  sub_1CEFE55D0(v44, v40, &unk_1EC4C4AE0, qword_1CFA17B10);
  v51 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v40, v37, &unk_1EC4C4AE0, qword_1CFA17B10);
  v52 = sub_1CF9E6108();
  v53 = sub_1CF9E7288();
  v54 = os_log_type_enabled(v52, v53);
  v169 = v40;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&aBlock = v56;
    *v55 = 136315138;
    sub_1CEFCCBDC(v37, v34, &unk_1EC4C4AE0, qword_1CFA17B10);
    v57 = type metadata accessor for ChangeEnumeratorAnchor(0);
    if ((*(*(v57 - 8) + 48))(v34, 1, v57) == 1)
    {
      sub_1CEFCCC44(v34, &unk_1EC4C4AE0, qword_1CFA17B10);
      v58 = 0xE500000000000000;
      v59 = 0x3E6C696E3CLL;
    }

    else
    {
      v59 = sub_1CF7D9BAC();
      v58 = v60;
      sub_1CF75B008(v34, type metadata accessor for ChangeEnumeratorAnchor);
    }

    sub_1CEFCCC44(v37, &unk_1EC4C4AE0, qword_1CFA17B10);
    v61 = sub_1CEFD0DF0(v59, v58, &aBlock);
    v58, v62, v63, v64, v65, v66, v67, v68;
    *(v55 + 4) = v61;
    _os_log_impl(&dword_1CEFC7000, v52, v53, "🧲  indexing from %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1D386CDC0](v56, -1, -1);
    MEMORY[0x1D386CDC0](v55, -1, -1);

    (*(v186 + 8))(v25, v189);
    v40 = v169;
  }

  else
  {

    sub_1CEFCCC44(v37, &unk_1EC4C4AE0, qword_1CFA17B10);
    (*(v186 + 8))(v25, v189);
  }

  v69 = v198;
  v70 = v187;
  sub_1CEFCCBDC(v40, v187, &unk_1EC4C4AE0, qword_1CFA17B10);
  sub_1CEFCCBDC(v70, v69, &unk_1EC4C4AE0, qword_1CFA17B10);
  v71 = *(v188 + 80);
  v72 = (v71 + 40) & ~v71;
  v197 = v27 + 7;
  v73 = (v27 + 7 + v72) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v191;
  v77 = v199;
  v76 = v200;
  v74[2] = v191;
  v74[3] = v77;
  v74[4] = v76;
  v78 = v74 + v72;
  v79 = v74;
  sub_1CEFE55D0(v70, v78, &unk_1EC4C4AE0, qword_1CFA17B10);
  v80 = v40;
  v81 = v190;
  *(v79 + v73) = v190;
  Strong = swift_weakLoadStrong();
  v83 = v81;

  v84 = v75;
  if (Strong)
  {
    sub_1CEFCCC44(v198, &unk_1EC4C4AE0, qword_1CFA17B10);
    v199 = *(Strong + 16);
    v85 = v175;
    sub_1CEFCCBDC(v80, v175, &unk_1EC4C4AE0, qword_1CFA17B10);
    v86 = (v71 + 24) & ~v71;
    v87 = (v197 + v86) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    *(v89 + 16) = Strong;
    sub_1CEFE55D0(v85, v89 + v86, &unk_1EC4C4AE0, qword_1CFA17B10);
    v90 = (v89 + v87);
    *v90 = sub_1CF75C124;
    v90[1] = v79;
    *(v89 + v88) = 200;
    v191 = v89;
    *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v194;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1CF75C124;
    *(v91 + 24) = v79;
    v200 = v91;
    v198 = v79;
    swift_retain_n();
    v197 = Strong;

    v194 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v92 = qword_1EDEBBE40;
    v93 = v182;
    v94 = v192;
    v95 = v183;
    (*(v182 + 56))(v192, 1, 1, v183);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v96 = sub_1CF9E7988();
    v98 = v97;
    MEMORY[0x1D3868CC0](v96);
    v98, v99, v100, v101, v102, v103, v104, v105;
    v106 = aBlock;
    v107 = v94;
    v108 = v176;
    sub_1CEFCCBDC(v107, v176, &unk_1EC4BED20, &unk_1CFA00700);
    v109 = *(v93 + 48);
    v110 = v109(v108, 1, v95);
    v111 = v178;
    if (v110 == 1)
    {
      v112 = v92;
      sub_1CF9E6048();
      if (v109(v108, 1, v95) != 1)
      {
        sub_1CEFCCC44(v108, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v93 + 32))(v178, v108, v95);
    }

    v117 = v193;
    (*(v93 + 16))(v193, v111, v95);
    v118 = v177;
    *(v117 + *(v177 + 20)) = v92;
    v119 = v117 + *(v118 + 24);
    *v119 = "DB queue wait";
    *(v119 + 8) = 13;
    *(v119 + 16) = 2;
    v120 = v92;
    v121 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1CF9FA450;
    *(v122 + 56) = MEMORY[0x1E69E6158];
    *(v122 + 64) = sub_1CEFD51C4();
    *(v122 + 32) = v106;
    sub_1CF9E6028(v121, &dword_1CEFC7000, v120, "DB queue wait", 13, 2, v117, "%s", 2);
    v122, v123, v124, v125, v126, v127, v128, v129;
    (*(v93 + 8))(v111, v95);
    sub_1CEFCCC44(v192, &unk_1EC4BED20, &unk_1CFA00700);
    v190 = *(v199 + 168);
    v192 = *(v199 + 64);
    v130 = sub_1CF9E6448();
    v131 = *(v130 - 8);
    v188 = v130;
    v189 = v131;
    (*(v131 + 56))(v195, 1, 1, v130);
    v132 = v181;
    sub_1CEFDA27C(v117, v181, type metadata accessor for Signpost);
    v133 = (*(v179 + 80) + 16) & ~*(v179 + 80);
    v134 = (v180 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1CEFD9FF4(v132, v135 + v133, type metadata accessor for Signpost);
    v136 = (v135 + v134);
    v187 = sub_1CF75C098;
    v137 = v200;
    *v136 = sub_1CF75C098;
    v136[1] = v137;
    v138 = v184;
    sub_1CEFDA27C(v117, v184, type metadata accessor for Signpost);
    v139 = (v134 + 23) & 0xFFFFFFFFFFFFFFF8;
    v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
    v141 = (v140 + 25) & 0xFFFFFFFFFFFFFFF8;
    v142 = (v141 + 23) & 0xFFFFFFFFFFFFFFF8;
    v143 = swift_allocObject();
    v144 = v143 + v133;
    v145 = v188;
    sub_1CEFD9FF4(v138, v144, type metadata accessor for Signpost);
    v146 = (v143 + v134);
    *v146 = sub_1CF045408;
    v146[1] = 0;
    v147 = v200;
    *(v143 + v139) = v199;
    v148 = v143 + v140;
    *v148 = "enumerateChanges(fromAnchor:suggestedBatchSize:reply:)";
    *(v148 + 8) = 54;
    *(v148 + 16) = 2;
    v149 = (v143 + v141);
    v150 = v189;
    *v149 = v187;
    v149[1] = v147;
    v151 = (v143 + v142);
    v152 = v191;
    *v151 = sub_1CF75C144;
    v151[1] = v152;
    v153 = swift_allocObject();
    v153[2] = sub_1CF75C120;
    v153[3] = v135;
    v154 = v190;
    v153[4] = v190;
    swift_retain_n();

    v199 = v135;

    v155 = fpfs_current_log();
    v190 = v154[2];
    v156 = v185;
    sub_1CEFCCBDC(v195, v185, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v150 + 48))(v156, 1, v145) == 1)
    {
      sub_1CEFCCC44(v156, &unk_1EC4BE370, qword_1CFA01B30);
      v157 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v158 = v170;
      sub_1CF9E6438();
      (*(v150 + 8))(v156, v145);
      v157 = sub_1CF9E63C8();
      (*(v171 + 8))(v158, v172);
    }

    v159 = v169;
    v160 = swift_allocObject();
    v160[2] = v155;
    v160[3] = sub_1CF4858EC;
    v160[4] = v143;
    v204 = sub_1CF2BA17C;
    v205 = v160;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v202 = sub_1CEFCA444;
    v203 = &block_descriptor_304_0;
    v161 = _Block_copy(&aBlock);
    v162 = v155;

    v204 = sub_1CF2BA180;
    v205 = v153;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v202 = sub_1CEFCA444;
    v203 = &block_descriptor_307;
    v163 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v190, v192, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v157, v161, v163);
    _Block_release(v163);
    _Block_release(v161);

    sub_1CEFCCC44(v195, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF75B008(v193, type metadata accessor for Signpost);
    v164 = v194;
    v165 = fpfs_adopt_log();

    sub_1CEFCCC44(v159, &unk_1EC4C4AE0, qword_1CFA17B10);

    goto LABEL_25;
  }

  v113 = v84;
  v114 = FPDomainUnavailableError();
  if (v114)
  {
    v115 = v174;
    *v174 = v114;
    swift_storeEnumTagMultiPayload();
    v116 = v198;
    sub_1CF74B450(v115, v113, v77, v76, v198, v83);

    sub_1CEFCCC44(v115, &qword_1EC4C46C8, &unk_1CFA167A8);
    sub_1CEFCCC44(v116, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCC44(v80, &unk_1EC4C4AE0, qword_1CFA17B10);
    goto LABEL_25;
  }

  sub_1CEFCCC44(v198, &unk_1EC4C4AE0, qword_1CFA17B10);
  __break(1u);
}

void sub_1CF74B450(uint64_t a1, void *a2, void (*a3)(void, void *, uint64_t), uint64_t a4, uint64_t a5, char **a6)
{
  v171 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v172 = &v159[-v12];
  v173 = type metadata accessor for ChangeEnumeratorAnchor(0);
  v174 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v175 = v13;
  v176 = &v159[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v159[-v15];
  v17 = sub_1CF9E6118();
  v179 = *(v17 - 8);
  v180 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v159[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v159[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v159[-v24];
  v26 = [a2 domain];
  v177 = a2;
  if (v26)
  {
    v27 = v26;
    v28 = [v26 log];
  }

  else
  {
    v28 = 0;
  }

  v29 = fpfs_adopt_log();

  sub_1CEFCCBDC(a1, v25, &qword_1EC4C46C8, &unk_1CFA167A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *v25;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v33 = v31;
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E72A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v29;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      swift_getErrorValue();
      v39 = Error.prettyDescription.getter(v182, v183);
      *(v36 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "🧲  enumeration error: %@", v36, 0xCu);
      sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v40 = v38;
      v29 = v37;
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    (*(v179 + 8))(v21, v180);
    v41 = v31;
    a3(0, v31, 9);

    goto LABEL_53;
  }

  v166 = v29;
  v181 = v31;
  v42 = *(v25 + 1);
  v164 = *(v25 + 2);
  v169 = v25[24];
  v43 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8) + 96)];
  v170 = v16;
  sub_1CEFD9FF4(v43, v16, type metadata accessor for ChangeEnumeratorAnchor);
  v186 = v42;
  v44 = v181;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v162 = (v181 >> 62);
  v168 = a4;
  v167 = a3;
  v45 = v181 & 0xFFFFFFFFFFFFFF8;
  if (v181 >> 62)
  {
LABEL_56:
    v46 = sub_1CF9E7818();
  }

  else
  {
    v46 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v165 = a6;
  v47 = v44 & 0xC000000000000001;
  if (!v46)
  {
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  a6 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  do
  {
    v163 = v49;
    v50 = v48;
    while (1)
    {
      if (v47)
      {
        v51 = MEMORY[0x1D3869C30](v50, v44);
      }

      else
      {
        if (v50 >= *(v45 + 16))
        {
          goto LABEL_55;
        }

        v51 = *(v44 + 8 * v50 + 32);
      }

      v52 = v51;
      v48 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if ([v51 isKnownByTheProvider])
      {
        v53 = [v52 itemID];
        v54 = [v53 isDiskIdentifier];

        v44 = v181;
        if (v54)
        {
          break;
        }
      }

LABEL_14:
      ++v50;
      if (v48 == v46)
      {
        v49 = v163;
        goto LABEL_30;
      }
    }

    v55 = [v52 itemID];

    if (!v55)
    {
      goto LABEL_14;
    }

    MEMORY[0x1D3868FA0]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
      v44 = v181;
    }

    sub_1CF9E6DE8();
    v49 = aBlock[0];
  }

  while (v48 != v46);
LABEL_30:
  sub_1CF1E90BC(v49);
  v56 = v186;
  v57 = fpfs_current_or_default_log();
  v58 = v178;
  sub_1CF9E6128();

  v59 = sub_1CF9E6108();
  v60 = sub_1CF9E7288();
  v163 = v56;
  v56, v61, v62, v63, v64, v65, v66, v67;
  v44, v68, v69, v70, v71, v72, v73, v74;
  if (os_log_type_enabled(v59, v60))
  {
    v75 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock[0] = v161;
    *v75 = 136315650;
    if (v162)
    {
      v76 = sub_1CF9E7818();
    }

    else
    {
      v76 = *(v45 + 16);
    }

    v82 = MEMORY[0x1E69E7CC0];
    v77 = v170;
    if (v76)
    {
      v184 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v76 & ~(v76 >> 63), 0);
      if (v76 < 0)
      {
        __break(1u);
        v158 = v75;
        sub_1CF513A38("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 38, v75);
      }

      v160 = v60;
      v162 = v59;
      v82 = v184;
      if (v47)
      {
        for (i = 0; i != v76; ++i)
        {
          MEMORY[0x1D3869C30](i, v181);
          v84 = [swift_unknownObjectRetain() itemID];
          v85 = [v84 identifier];
          swift_unknownObjectRelease_n();

          v184 = v82;
          v87 = *v82->tree;
          v86 = *v82->tester;
          if (v87 >= v86 >> 1)
          {
            sub_1CF680D2C((v86 > 1), v87 + 1, 1);
            v82 = v184;
          }

          *v82->tree = v87 + 1;
          *(&v82[1].super.isa + v87) = v85;
        }
      }

      else
      {
        v88 = (v44 + 32);
        do
        {
          v89 = *v88;
          v90 = [v89 itemID];
          v91 = [v90 identifier];

          v184 = v82;
          v93 = *v82->tree;
          v92 = *v82->tester;
          if (v93 >= v92 >> 1)
          {
            sub_1CF680D2C((v92 > 1), v93 + 1, 1);
            v82 = v184;
          }

          *v82->tree = v93 + 1;
          *(&v82[1].super.isa + v93) = v91;
          ++v88;
          --v76;
        }

        while (v76);
      }

      v58 = v178;
      v59 = v162;
      LOBYTE(v60) = v160;
    }

    type metadata accessor for NSFileProviderItemIdentifier(0);
    v95 = MEMORY[0x1D3868FE0](v82, v94);
    v97 = v96;
    v82, v96, v98, v99, v100, v101, v102, v103;
    v104 = sub_1CEFD0DF0(v95, v97, aBlock);
    v97, v105, v106, v107, v108, v109, v110, v111;
    *(v75 + 1) = v104;
    *(v75 + 6) = 2080;
    v112 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v81 = v163;
    v113 = MEMORY[0x1D3868FE0](v163, v112);
    v115 = v114;
    v116 = sub_1CEFD0DF0(v113, v114, aBlock);
    v115, v117, v118, v119, v120, v121, v122, v123;
    *(v75 + 14) = v116;
    *(v75 + 11) = 1024;
    v75[6] = v169;
    _os_log_impl(&dword_1CEFC7000, v59, v60, "🧲  pushing batch: updating=%s, deleting=%s hasMore=%{BOOL}d", v75, 0x1Cu);
    v124 = v161;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v124, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    (*(v179 + 8))(v58, v180);
    v78 = v174;
    v44 = v181;
    v79 = v173;
    v80 = v172;
  }

  else
  {

    (*(v179 + 8))(v58, v180);
    v77 = v170;
    v78 = v174;
    v79 = v173;
    v80 = v172;
    v81 = v163;
  }

  sub_1CEFCCBDC(v171, v80, &unk_1EC4C4AE0, qword_1CFA17B10);
  if ((*(v78 + 48))(v80, 1, v79) == 1)
  {
    sub_1CEFCCC44(v80, &unk_1EC4C4AE0, qword_1CFA17B10);
    v181 = 0;
  }

  else
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor, &unk_1CFA178B8);
    v125 = sub_1CF9E56A8();
    v127 = v126;

    sub_1CF75B008(v80, type metadata accessor for ChangeEnumeratorAnchor);
    v181 = sub_1CF9E5B48();
    sub_1CEFE4714(v125, v127);
  }

  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor, &unk_1CFA178B8);
  v128 = sub_1CF9E56A8();
  v130 = v129;

  v131 = sub_1CF9E5B48();
  sub_1CEFE4714(v128, v130);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v132 = sub_1CF9E6D28();
  v44, v133, v134, v135, v136, v137, v138, v139;
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v140 = sub_1CF9E6D28();
  v81, v141, v142, v143, v144, v145, v146, v147;
  v148 = v176;
  sub_1CEFDA27C(v77, v176, type metadata accessor for ChangeEnumeratorAnchor);
  v149 = (*(v78 + 80) + 41) & ~*(v78 + 80);
  v150 = (v175 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  v152 = v177;
  v153 = v167;
  *(v151 + 16) = v177;
  *(v151 + 24) = v153;
  *(v151 + 32) = v168;
  *(v151 + 40) = v169;
  sub_1CEFD9FF4(v148, v151 + v149, type metadata accessor for ChangeEnumeratorAnchor);
  *(v151 + v150) = v164;
  aBlock[4] = sub_1CF75C140;
  aBlock[5] = v151;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF748AC4;
  aBlock[3] = &block_descriptor_273;
  v154 = _Block_copy(aBlock);
  v155 = v152;

  v156 = v181;
  [v165 indexOneBatchFromAnchor:v181 toAnchor:v131 updatedItems:v132 deletedItems:v140 completionHandler:v154];
  _Block_release(v154);

  sub_1CF75B008(v170, type metadata accessor for ChangeEnumeratorAnchor);
  v29 = v166;
LABEL_53:
  v157 = fpfs_adopt_log();
}

double sub_1CF74C2D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CF9E6888();
  v39.receiver = v3;
  v39.super_class = type metadata accessor for FPFSIndexer(0);
  objc_msgSendSuper2(&v39, sel_dumpStateTo_withName_, a1, v5);

  v6 = sub_1CF9E6888();
  [a1 put_];

  [*&v3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] dumpStateTo_];
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  if (qword_1EDEAA3F8 != -1)
  {
    swift_once();
  }

  if (byte_1EDEBB9E8)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (byte_1EDEBB9E8)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v14, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  0x80000001CFA59F00, v23, v24, v25, v26, v27, v28, v29;
  v30 = sub_1CF9E6888();
  0x80000001CFA59F00, v31, v32, v33, v34, v35, v36, v37;
  [a1 put_];

  return sub_1CF74987C(a1);
}

double sub_1CF74C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v6 = v5;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E6448();
  v13 = *(v24 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v6 queue];
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v6;

  sub_1CF9E63F8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1CF75B5B0(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v16, v12, v19);
  _Block_release(v19);

  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);

  return result;
}

void sub_1CF74C888(char *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer])
  {
LABEL_2:
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = a1;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7298();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = a3;
      v53 = v6;
      v22 = a2;
      v23 = v21;
      v24 = v7;
      v25 = swift_slowAlloc();
      *v23 = 138412290;
      v26 = [v18 domain];
      *(v23 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "🧲 pausing indexing for %@", v23, 0xCu);
      sub_1CEFCCC44(v25, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v27 = v25;
      v7 = v24;
      MEMORY[0x1D386CDC0](v27, -1, -1);
      v28 = v23;
      a2 = v22;
      v6 = v53;
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    [*&a1[v16] pause];
    (a2)(0);
    return;
  }

  v51 = v12;
  v29 = [a1 domain];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 provider];
    if (v31)
    {
      v49 = v31;
      v48 = [v31 providerDomainForDomain_];
      v46 = [v30 nsDomainOrNilForDefault];
      v45 = [v30 log];
      v32 = [v30 supportURL];
      v50 = v7;
      v33 = v32;
      sub_1CF9E59D8();

      v34 = objc_allocWithZone(MEMORY[0x1E6967420]);
      v35 = sub_1CF9E5928();
      v52 = a3;
      v53 = v6;
      v47 = a2;
      v36 = v35;
      (*(v11 + 8))(v15, v51);
      v37 = v34;
      v7 = v50;
      v39 = v45;
      v38 = v46;
      v40 = v48;
      v41 = [v37 initWithDomain:v46 providerDomain:v48 log:v45 supportURL:v36 dropIndexDelegate:a1];

      a2 = v47;
      a3 = v52;
      v6 = v53;

      v42 = *&a1[v16];
      *&a1[v16] = v41;

      goto LABEL_2;
    }
  }

  v53 = FPDomainUnavailableError();
  a2();
  v43 = v53;
}

uint64_t sub_1CF74CDA0(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = a1;
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = [v9 domain];
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "🧲 resuming indexing for %@", v12, 0xCu);
    sub_1CEFCCC44(v13, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v13, -1, -1);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [*&v9[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] resume];
  return a2(0);
}

id sub_1CF74D0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1CF74D164(char a1, char a2, void (*a3)(unint64_t *), uint64_t a4)
{
  v5 = v4;
  v10 = [v5 domain];
  if (!v10)
  {
    v100 = FPDomainUnavailableError();
    if (v100)
    {
      v101 = v100;
      aBlock = v100;
      v160 = 1;
      a3(&aBlock);

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 identifier];
  if (!v12)
  {
    v102 = FPDomainUnavailableError();
    if (v102)
    {
      v103 = v102;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = [v11 provider];
  if (!v17)
  {
    v113 = FPDomainUnavailableError();
    if (!v113)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v103 = v113;
    v16, v114, v115, v116, v117, v118, v119, v120;
LABEL_16:
    aBlock = v103;
    v160 = 1;
    a3(&aBlock);

    return;
  }

  v18 = v17;
  if (!*&v5[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] || (Strong = swift_weakLoadStrong()) == 0)
  {
    v104 = FPDomainUnavailableError();
    if (v104)
    {
      v112 = v104;
      v16, v105, v106, v107, v108, v109, v110, v111;
      aBlock = v112;
      v160 = 1;
      a3(&aBlock);

      return;
    }

    goto LABEL_21;
  }

  v153 = *(Strong + 16);

  v20 = swift_allocObject();
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 16) = a1 & 1;
  if (a2)
  {
    v140 = v20;
    v146 = a1 & 1;
    v151 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
    v21 = [v18 descriptor];
    v22 = [v21 topLevelBundleIdentifier];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v141 = v18;
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
    v27 = sub_1CF9E6D28();
    v26, v28, v29, v30, v31, v32, v33, v34;
    [v151 setBundleIDs_];

    sub_1CF9E7948();
    0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](v14, v16);
    v16, v42, v43, v44, v45, v46, v47, v48;
    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA5A0B0);
    0x80000001CFA5A0B0, v49, v50, v51, v52, v53, v54, v55;
    v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v56;
    v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v59 = v58;
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1CFA001F0;
    *(v60 + 32) = 0xD00000000000001ELL;
    *(v60 + 40) = 0x80000001CFA5A0D0;
    *(v60 + 48) = 0xD00000000000001CLL;
    *(v60 + 56) = 0x80000001CFA5A0F0;
    *(v60 + 64) = 0xD000000000000016;
    *(v60 + 72) = 0x80000001CFA5A110;
    *(v60 + 80) = v135;
    *(v60 + 88) = v57;
    v131 = v59;
    v132 = v57;
    *(v60 + 96) = v133;
    *(v60 + 104) = v59;
    *(v60 + 112) = 0xD000000000000013;
    *(v60 + 120) = 0x80000001CFA5A130;

    v61 = sub_1CF9E6D28();
    v60, v62, v63, v64, v65, v66, v67, v68;
    [v151 setFetchAttributes_];

    [v151 setDisableSemanticSearch_];
    [v151 setDisableNLP_];

    v138 = swift_allocObject();
    v69 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v70 = v151;
    v71 = sub_1CF9E6888();
    0x80000001CFA5A080, v72, v73, v74, v75, v76, v77, v78;
    v139 = v70;
    v130 = [v69 initWithQueryString:v71 queryContext:v70];

    *(v138 + 16) = v130;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v82 = v81;
    v152 = v81;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    v84 = v83;
    v149 = v83;
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    v86 = v85;
    v148 = v85;
    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v86;
    *(v88 + 32) = 1;
    *(v88 + 40) = v135;
    *(v88 + 48) = v132;
    *(v88 + 56) = v133;
    *(v88 + 64) = v131;
    *(v88 + 72) = v153;
    *(v88 + 80) = v79;
    *(v88 + 88) = v150;
    *(v88 + 96) = v82;
    *(v88 + 104) = v84;
    *(v88 + 112) = v146;
    *(v88 + 120) = v144;
    *(v88 + 128) = v143;
    v145 = v80;
    *(v88 + 136) = v80;
    *(v88 + 144) = v142;
    v158 = sub_1CF75BE94;
    v159 = v88;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v156 = sub_1CF74EA64;
    v157 = &block_descriptor_417;
    v136 = _Block_copy(&aBlock);

    v89 = v130;

    [v89 setFoundItemsHandler_];
    _Block_release(v136);

    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91 = swift_allocObject();
    v91[2] = v90;
    v91[3] = v148;
    v91[4] = v138;
    v91[5] = a3;
    v91[6] = a4;
    v158 = sub_1CF75BEF0;
    v159 = v91;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v156 = sub_1CF02C160;
    v157 = &block_descriptor_424;
    v92 = _Block_copy(&aBlock);
    v93 = objc_opt_self();

    v137 = [v93 timerWithTimeInterval:0 repeats:v92 block:5.0];
    _Block_release(v92);

    swift_beginAccess();
    v134 = *(v138 + 16);
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = swift_allocObject();
    v96[2] = v95;
    v96[3] = v148;
    v96[4] = v94;
    v96[5] = a3;
    v96[6] = a4;
    v96[7] = v140;
    v96[8] = v138;
    v96[9] = v150;
    v96[10] = v152;
    v96[11] = v149;
    v96[12] = v144;
    v96[13] = v143;
    v96[14] = v145;
    v96[15] = v142;
    v158 = sub_1CF75BF00;
    v159 = v96;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v156 = sub_1CF00A468;
    v157 = &block_descriptor_434_0;
    v147 = _Block_copy(&aBlock);

    v97 = v134;

    [v97 setCompletionHandler_];
    _Block_release(v147);

    v98 = [objc_opt_self() currentRunLoop];
    [v98 addTimer:v137 forMode:*MEMORY[0x1E695D918]];

    v99 = *(v138 + 16);
    [v99 start];

    return;
  }

  v121 = FPDomainUnavailableError();
  if (v121)
  {
    v129 = v121;
    v16, v122, v123, v124, v125, v126, v127, v128;
    aBlock = v129;
    v160 = 1;
    a3(&aBlock);

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1CF74DD78(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v144 = a7;
  v145 = a8;
  v146 = a5;
  v147 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v133 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v124 - v24;
  v139 = sub_1CF9E5CF8();
  v25 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
LABEL_100:
    v28 = sub_1CF9E7818();
    if (!v28)
    {
      return;
    }
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      return;
    }
  }

  v149 = v28;
  if (v28 < 1)
  {
    goto LABEL_105;
  }

  v150 = a14;
  v131 = a18;
  v138 = a17;
  v153 = a1 & 0xC000000000000001;
  v151 = " && FPDomainIdentifier == ";
  v127 = a9;
  swift_beginAccess();
  v152 = a11;
  swift_beginAccess();
  v142 = a12;
  swift_beginAccess();
  v134 = a13;
  swift_beginAccess();
  v137 = a15;
  swift_beginAccess();
  v130 = a16;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v29 = 0;
  v132 = (v25 + 56);
  v128 = (v25 + 48);
  v129 = "_kMDItemPhotoEmbedding";
  v125 = (v25 + 16);
  v126 = (v25 + 32);
  v124 = (v25 + 8);
  v140 = "_kMDItemPrimaryTextEmbedding";
  v141 = "_kMDItemTextContentIndexExists";
  v30 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  v143 = a4;
  v148 = a1;
  while (1)
  {
    if (v153)
    {
      v31 = MEMORY[0x1D3869C30](v29, a1);
      if (a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *(a1 + 8 * v29 + 32);
      if (a4)
      {
LABEL_11:
        v25 = [v31 v30[352]];
        v32 = [v25 filename];

        if (!v32)
        {
          goto LABEL_23;
        }

        v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v34 = v33;

        goto LABEL_20;
      }
    }

    v35 = [v31 v30[352]];
    a1 = sub_1CF9E6888();
    v25 = [v35 attributeForKey_];

    if (v25)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v156 = 0u;
      v157 = 0u;
    }

    v158 = v156;
    v159 = v157;
    if (!*(&v157 + 1))
    {
      sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_23:
      v45 = 0;
      goto LABEL_61;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = v154;
    v34 = v155;
LABEL_20:
    a1 = [v31 v30[352]];
    v36 = sub_1CF9E6888();
    v37 = [a1 attributeForKey_];

    if (v37)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v156 = 0u;
      v157 = 0u;
    }

    v158 = v156;
    v159 = v157;
    v30 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
    if (!*(&v157 + 1))
    {
      v34, v38, v39, v40, v41, v42, v43, v44;
      sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_31:
      v45 = 0;
      a4 = v143;
      goto LABEL_61;
    }

    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v34, v46, v47, v48, v49, v50, v51, v52;
      goto LABEL_31;
    }

    a1 = v154;
    v53 = [v31 attributeSet];
    v54 = sub_1CF9E6888();
    v55 = [v53 attributeForKey_];

    if (v55)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v156 = 0u;
      v157 = 0u;
    }

    v158 = v156;
    v159 = v157;
    if (!*(&v157 + 1))
    {

      v34, v67, v68, v69, v70, v71, v72, v73;
      sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v56 = v136;
      (*v132)(v136, 1, 1, v139);
      goto LABEL_37;
    }

    v56 = v136;
    v57 = v139;
    v58 = swift_dynamicCast();
    v59 = *v132;
    (*v132)(v56, v58 ^ 1u, 1, v57);
    if ((*v128)(v56, 1, v57) != 1)
    {
      break;
    }

    v34, v60, v61, v62, v63, v64, v65, v66;
LABEL_37:
    sub_1CEFCCC44(v56, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v45 = 0;
    a4 = v143;
LABEL_60:
    v30 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
LABEL_61:
    v98 = *(a10 + 16);
    v99 = __CFADD__(v98, 1);
    v100 = v98 + 1;
    v101 = v152;
    if (v99)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *(a10 + 16) = v100;
    if (v45)
    {
      v102 = *(v101 + 16);
      v99 = __CFADD__(v102, 1);
      v103 = v102 + 1;
      if (v99)
      {
        goto LABEL_93;
      }

      *(v101 + 16) = v103;
    }

    v104 = [v31 v30[352]];
    a1 = sub_1CF9E6888();
    v105 = [v104 attributeForKey_];

    if (v105)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
    }

    else
    {
      v156 = 0u;
      v157 = 0u;
    }

    v158 = v156;
    v159 = v157;
    if (!*(&v157 + 1))
    {
      sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_72:
      sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v25 = sub_1CF9E7548();
      goto LABEL_73;
    }

    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_72;
    }

    v25 = v154;
LABEL_73:
    if ([v25 BOOLValue])
    {
      v106 = *(v142 + 16);
      v99 = __CFADD__(v106, 1);
      v107 = v106 + 1;
      if (v99)
      {
        goto LABEL_94;
      }

      *(v142 + 16) = v107;
      if (v45)
      {
        v108 = *(v134 + 16);
        v99 = __CFADD__(v108, 1);
        v109 = v108 + 1;
        if (v99)
        {
          goto LABEL_97;
        }

        *(v134 + 16) = v109;
      }
    }

    if (v150)
    {
      a1 = [v31 v30[352]];
      v110 = sub_1CF9E6888();
      v111 = [a1 attributeForKey_];

      if (v111)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v112 = *(v137 + 16);
        v113 = __OFADD__(v112, 1);
        v114 = v112 + 1;
        if (v113)
        {
          goto LABEL_95;
        }

        *(v137 + 16) = v114;
        v115 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        if (v45)
        {
          v116 = *(v130 + 16);
          v113 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v113)
          {
            goto LABEL_98;
          }

          *(v130 + 16) = v117;
        }
      }

      else
      {
        v158 = 0u;
        v159 = 0u;
        sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v115 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      }

      a1 = [v31 v115[352]];
      v118 = sub_1CF9E6888();
      v119 = [a1 attributeForKey_];

      if (v119)
      {
        sub_1CF9E7728();

        swift_unknownObjectRelease();
        sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v120 = *(v138 + 16);
        v113 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v113)
        {
          goto LABEL_96;
        }

        *(v138 + 16) = v121;
        v30 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        if (v45)
        {
          v122 = *(v131 + 16);
          v113 = __OFADD__(v122, 1);
          v123 = v122 + 1;
          if (v113)
          {
            goto LABEL_99;
          }

          *(v131 + 16) = v123;
        }
      }

      else
      {

        v158 = 0u;
        v159 = 0u;
        sub_1CEFCCC44(&v158, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v30 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      }
    }

    else
    {
    }

    ++v29;
    a1 = v148;
    if (v149 == v29)
    {
      return;
    }
  }

  (*v126)(v135, v56, v57);
  [a1 doubleValue];
  if (v143)
  {
    [a1 doubleValue];
    v76 = v75 * 1000.0 * 1000.0;
  }

  else
  {
    v76 = v74;
  }

  v77 = v139;
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v76 <= -9.22337204e18)
    {
      goto LABEL_103;
    }

    if (v76 >= 9.22337204e18)
    {
      goto LABEL_104;
    }

    v78 = v133;
    (*v125)(v133, v135, v139);
    v59(v78, 0, 1, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v79 = swift_dynamicCastClass();
    if (v79 && *(*(v79 + 32) + qword_1EDEBBB18))
    {

      v25 = sub_1CF3A8798(v25, v34, v133);
      v34, v87, v88, v89, v90, v91, v92, v93;
      if (v25)
      {
        a4 = v143;
        if ((*(v127 + 82) & 8) == 0 && (v94 = swift_dynamicCastClass()) != 0 && (v95 = *(*(v94 + 32) + qword_1EDEBBB18)) != 0)
        {
          v25 = v76;
          v96 = *(v95 + qword_1EDEBB7B0);

          v45 = v76 > 0 && v96 >= v25;
        }

        else
        {

          v45 = 1;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v34, v80, v81, v82, v83, v84, v85, v86;
    }

    v45 = 0;
    a4 = v143;
LABEL_59:
    sub_1CEFCCC44(v133, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (*v124)(v135, v139);
    goto LABEL_60;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void sub_1CF74EA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1CEFD57E0(0, &unk_1EDEA3668, 0x1E6964E80);
  v3 = sub_1CF9E6D48();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

double sub_1CF74EAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    v12 = v11;
    if (objc_sync_enter(v12))
    {
      swift_unknownObjectRetain();

      sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v12);
    }

    sub_1CF74EC04((a3 + 16), (a4 + 16), a5);
    if (objc_sync_exit(v12))
    {
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v12);
    }
  }

  return result;
}

void sub_1CF74EC04(_BYTE *a1, id *a2, void (*a3)(id *))
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    *a1 = 1;
    swift_beginAccess();
    [*a2 cancel];
    v10 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "Query to spotlight taking too long, cancelling it", v13, 2u);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v14 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    v18 = 1;
    v16[0] = v14;
    v17 = 1;
    a3(v16);
  }
}

void sub_1CF74EE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49[1] = a6;
  v50 = a5;
  v20 = sub_1CF9E6118();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = objc_sync_enter(v25);
    if (!v26)
    {
      sub_1CF74F3BC((a3 + 16), a4);
      v27 = objc_sync_exit(v25);
      if (v27)
      {
        MEMORY[0x1EEE9AC00](v27);
        v49[-2] = v25;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v49[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      if (a1)
      {
        v28 = a1;
        v29 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v30 = a1;
        v31 = sub_1CF9E6108();
        v32 = sub_1CF9E72A8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = a1;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_1CEFC7000, v31, v32, "Cannot query spotlight for telemetry data: %@", v33, 0xCu);
          sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v34, -1, -1);
          MEMORY[0x1D386CDC0](v33, -1, -1);
        }

        (*(v21 + 8))(v23, v20);
        v55 = 1;
        *v57 = a1;
        *&v57[8] = v51;
        *&v57[24] = v52;
        *&v57[40] = v53;
        *&v57[56] = v54;
        v58 = 1;
        v37 = a1;
        v50(v57);

        goto LABEL_10;
      }

      swift_beginAccess();
      v26 = [*(a8 + 16) foundItemCount];
      if ((v26 & 0x8000000000000000) == 0)
      {
        v38 = v26;
        v49[0] = a15;
        swift_beginAccess();
        *(a7 + 24) = v38;
        swift_beginAccess();
        v39 = *(a9 + 16);
        swift_beginAccess();
        *(a7 + 32) = v39;
        swift_beginAccess();
        v40 = *(a10 + 16);
        swift_beginAccess();
        *(a7 + 40) = v40;
        swift_beginAccess();
        v41 = *(a11 + 16);
        swift_beginAccess();
        *(a7 + 48) = v41;
        swift_beginAccess();
        v42 = *(a12 + 16);
        swift_beginAccess();
        *(a7 + 56) = v42;
        swift_beginAccess();
        v43 = *(a13 + 16);
        swift_beginAccess();
        *(a7 + 64) = v43;
        swift_beginAccess();
        v44 = *(a14 + 16);
        swift_beginAccess();
        *(a7 + 72) = v44;
        v45 = v49[0];
        swift_beginAccess();
        v46 = *(v45 + 16);
        swift_beginAccess();
        *(a7 + 80) = v46;
        swift_beginAccess();
        v47 = *(a7 + 64);
        *&v57[32] = *(a7 + 48);
        *&v57[48] = v47;
        *&v57[64] = *(a7 + 80);
        v48 = *(a7 + 32);
        *v57 = *(a7 + 16);
        *&v57[16] = v48;
        v56 = 0;
        v58 = 0;
        v50(v57);
LABEL_10:

        return;
      }

      __break(1u);
    }

    MEMORY[0x1EEE9AC00](v26);
    v49[-2] = v25;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v49[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }
}

void sub_1CF74F3BC(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*a1)
  {
    v7 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v8 = sub_1CF9E6108();
    v9 = sub_1CF9E7288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CEFC7000, v8, v9, "Query to spotlight for telemetry was cancelled because it took too long", v10, 2u);
      MEMORY[0x1D386CDC0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_beginAccess();
    *a1 = 1;
  }
}

void sub_1CF74F5AC(void *a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 domain];
  if (!v6)
  {
    v10 = FPDomainUnavailableError();
    if (v10)
    {
LABEL_13:
      v11 = v10;
      v12[0] = v10;
      v13 = 1;
      a2(v12);

      return;
    }

    __break(1u);
LABEL_12:
    v10 = FPDomainUnavailableError();
    if (!v10)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  if (![a1 isIndexingEnabled])
  {
    goto LABEL_12;
  }

  v12[0] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v9 = domain_answer == sub_1CF9E61A8() && v12[0] == 4;
  sub_1CF74D164(v9, 1, a2, a3);
}

uint64_t FPIndexDropReason.description.getter(uint64_t a1)
{
  v1 = FPHumanReadableDropReason();
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v2;
}

uint64_t sub_1CF74F794()
{
  v0 = FPHumanReadableDropReason();
  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v1;
}

uint64_t type metadata accessor for FPFSIndexer(uint64_t a1)
{
  result = qword_1EDEAA3E0;
  if (!qword_1EDEAA3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF74F880(uint64_t a1)
{
  sub_1CF74F91C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CF74F91C(uint64_t a1)
{
  if (!qword_1EDEA5620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA5620);
    }
  }
}

uint64_t sub_1CF74F9C0(uint64_t is_cancelled, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = *(is_cancelled + 16);
  if ((*(v6 + 152) & 1) == 0 && (fp_task_tracker_is_cancelled(*(*(v6 + 168) + 16)) & 1) == 0 && (*(v6 + 152) & 1) == 0)
  {
    sub_1CF80378C(a4, a5 & 0x1FF);
  }

  return a2();
}

void sub_1CF74FA40(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  (*(**(*(v11 + 32) + 16) + 96))(&v29, v8);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = v13 * 1000000000.0;
  if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v11;
  v27 = a3;
  v28 = v14;
  v16 = v15;
  v17 = v29;
  v18 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
  v19 = swift_allocObject();
  *(v19 + 152) = v18;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 1;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0;
  *(v19 + 120) = 0;
  *(v19 + 128) = v16;
  *(v19 + 136) = 0;
  *(v19 + 144) = v17;
  *(v19 + 96) = xmmword_1CFA04E50;
  *(v19 + 112) = 0;
  v21 = a1[3];
  v20 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v7 + 16))(v10, v27, v6);
  sub_1CF9E5C98();
  v24 = v23;
  v28(v10, v6);
  v25 = v24 * 1000000000.0;
  if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v25 < 9.22337204e18)
  {
    sub_1CF5215C0(v19, v25, v22, v21, v20);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1CF74FD10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v141 = a7;
  v156 = a6;
  v144 = a5;
  v145 = a4;
  v155 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  MEMORY[0x1EEE9AC00](v143);
  v135 = (&v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v142 = (&v133 - v11);
  v149 = sub_1CF9E5D98();
  v151 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v137 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v133 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v139 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v133 - v25;
  v27 = type metadata accessor for ChangeEnumeratorAnchor(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v133 - v31;
  v140 = a2;
  v33 = *(a2 + 16);
  v35 = v34;
  v154 = a3;
  v36 = a3;
  v37 = v35;
  sub_1CEFCCBDC(v36, v26, &unk_1EC4C4AE0, qword_1CFA17B10);
  v38 = *(v28 + 48);
  v152 = v28 + 48;
  v39 = v38(v26, 1, v37);
  v153 = v33;
  v159 = v37;
  v146 = v38;
  if (v39 == 1)
  {
    sub_1CEFCCC44(v26, &unk_1EC4C4AE0, qword_1CFA17B10);
    goto LABEL_12;
  }

  sub_1CEFD9FF4(v26, v32, type metadata accessor for ChangeEnumeratorAnchor);
  v40 = v151;
  v41 = v157;
  v42 = v149;
  (*(v151 + 16))(v157, v32, v149);
  (*(v40 + 56))(v41, 0, 1, v42);
  v43 = qword_1EDEBBDA8;
  swift_beginAccess();
  v44 = *(v148 + 48);
  v45 = v41;
  v46 = v147;
  sub_1CEFCCBDC(v45, v147, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v33 + v43, v46 + v44, &unk_1EC4BEDE0, qword_1CF9FA390);
  v47 = *(v40 + 48);
  v48 = v32;
  if (v47(v46, 1, v42) != 1)
  {
    v49 = v138;
    sub_1CEFCCBDC(v46, v138, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v47(v46 + v44, 1, v42) != 1)
    {
      v51 = v151;
      v52 = v49;
      v53 = v137;
      (*(v151 + 32))(v137, v46 + v44, v42);
      sub_1CF75B5B0(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v148) = sub_1CF9E6868();
      v54 = *(v51 + 8);
      v54(v53, v42);
      sub_1CEFCCC44(v157, &unk_1EC4BEDE0, qword_1CF9FA390);
      v54(v52, v42);
      sub_1CEFCCC44(v46, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v148)
      {
        goto LABEL_11;
      }

LABEL_9:
      type metadata accessor for NSFileProviderError(0);
      v163 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v50 = v142;
      *v142 = v160[0];
      swift_storeEnumTagMultiPayload();
      v145(v50);
      sub_1CEFCCC44(v50, &qword_1EC4C46C8, &unk_1CFA167A8);
      sub_1CF75B008(v48, type metadata accessor for ChangeEnumeratorAnchor);
      return;
    }

    sub_1CEFCCC44(v157, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v151 + 8))(v49, v42);
LABEL_8:
    sub_1CEFCCC44(v46, &qword_1EC4C1108, &qword_1CFA18060);
    goto LABEL_9;
  }

  sub_1CEFCCC44(v157, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v47(v46 + v44, 1, v42) != 1)
  {
    goto LABEL_8;
  }

  sub_1CEFCCC44(v46, &unk_1EC4BEDE0, qword_1CF9FA390);
LABEL_11:
  sub_1CF75B008(v48, type metadata accessor for ChangeEnumeratorAnchor);
  v38 = v146;
LABEL_12:
  type metadata accessor for FPFileTree(0);
  v55 = *(swift_dynamicCastClassUnconditional() + 280);
  v56 = v156;
  v57 = v150;
  if (v156 < 1)
  {
    goto LABEL_27;
  }

  if (v156 >= 0x1F4)
  {
    v132 = v55;
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 99);
  }

  v163 = MEMORY[0x1E69E7CC0];
  v162 = MEMORY[0x1E69E7CC0];
  v161 = MEMORY[0x1E69E7CD0];
  v58 = v155[3];
  v59 = v155[4];
  v60 = __swift_project_boxed_opaque_existential_1(v155, v58);
  sub_1CEFCCBDC(v154, v57, &unk_1EC4C4AE0, qword_1CFA17B10);
  v61 = v159;
  if (v38(v57, 1, v159) == 1)
  {
    v62 = v55;

    v63 = sub_1CEFCCC44(v57, &unk_1EC4C4AE0, qword_1CFA17B10);
    v64 = 0;
  }

  else
  {
    v64 = *(v57 + *(v61 + 24));
    v65 = v55;

    v63 = sub_1CF75B008(v57, type metadata accessor for ChangeEnumeratorAnchor);
  }

  MEMORY[0x1EEE9AC00](v63);
  *(&v133 - 2) = &v162;
  *(&v133 - 1) = v55;
  v66 = v158;
  v67 = sub_1CF24E150(v64, v56, v60, sub_1CF75B13C, &v133 - 32, v58, v59);
  v69 = v68;

  if (!v66)
  {
    v150 = v67;
    LODWORD(v157) = v69;
    v158 = v55;
    v70 = v139;
    sub_1CEFCCBDC(v154, v139, &unk_1EC4C4AE0, qword_1CFA17B10);
    v71 = v159;
    if (v146(v70, 1, v159) == 1)
    {
      sub_1CEFCCC44(v70, &unk_1EC4C4AE0, qword_1CFA17B10);
      v72 = 0;
    }

    else
    {
      v72 = *(v70 + *(v71 + 20));
      sub_1CF75B008(v70, type metadata accessor for ChangeEnumeratorAnchor);
    }

    v73 = v153;
    v74 = v155;
    v75 = v155[3];
    v76 = v155[4];
    v77 = __swift_project_boxed_opaque_existential_1(v155, v75);
    MEMORY[0x1EEE9AC00](v77);
    *(&v133 - 8) = v141;
    *(&v133 - 7) = v74;
    *(&v133 - 6) = v140;
    *(&v133 - 5) = v72;
    *(&v133 - 4) = &v161;
    *(&v133 - 3) = &v163;
    *(&v133 - 2) = v158;
    *(&v133 - 1) = &v162;
    v78 = *(v76 + 8);

    sub_1CF24DBF4(v72, v156, v77, sub_1CF75B144, (&v133 - 10), v75, v78);
    v80 = v79;
    v82 = v81;

    v105 = v82;
    v106 = qword_1EDEBBDA8;
    swift_beginAccess();
    v107 = v136;
    sub_1CEFCCBDC(v73 + v106, v136, &unk_1EC4BEDE0, qword_1CF9FA390);
    v55 = v151;
    v108 = v149;
    if ((*(v151 + 48))(v107, 1, v149) != 1)
    {
      v109 = v134;
      (v55)[4](v134, v107, v108);
      v110 = v159;
      *(v109 + *(v159 + 20)) = v80;
      *(v109 + *(v110 + 24)) = v150;
      v111 = v163;
      v112 = v161;
      v113 = v162;
      v114 = v135;
      *v135 = v163;
      *(v114 + 8) = v113;
      *(v114 + 16) = v112;
      v115 = v105 | v157;
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8) + 96);
      *(v114 + 24) = v115 & 1;
      sub_1CEFDA27C(v109, v114 + v116, type metadata accessor for ChangeEnumeratorAnchor);
      swift_storeEnumTagMultiPayload();

      v145(v114);

      sub_1CEFCCC44(v114, &qword_1EC4C46C8, &unk_1CFA167A8);
      sub_1CF75B008(v109, type metadata accessor for ChangeEnumeratorAnchor);
      v111, v117, v118, v119, v120, v121, v122, v123;
      v113, v124, v125, v126, v127, v128, v129, v130;
      v104 = v112;
      goto LABEL_23;
    }

    __break(1u);
LABEL_27:
    v131 = v55;
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 98);
  }

  MEMORY[0x1E69E7CD0], v83, v84, v85, v86, v87, v88, v89;
  v162, v90, v91, v92, v93, v94, v95, v96;
  v104 = v163;
LABEL_23:
  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1CF750A54(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v133 = a8;
  v134 = a7;
  v131 = a6;
  v132 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v142 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v140 = *(v16 - 8);
  v141 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v137 = (&v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v135 = (&v128 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v128 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v138 = (&v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  v144 = objc_autoreleasePoolPush();
  v143 = type metadata accessor for PendingIndexingItemRow(0);
  v139 = *(a1 + *(v143 + 28));
  if ((v139 & 0xFFFFFFFFFFFFFFEFLL) != 0)
  {
    goto LABEL_10;
  }

  v130 = v26;
  v32 = a4;
  if (!sub_1CF75B358(a1))
  {
    goto LABEL_9;
  }

  v33 = a3[3];
  v129 = a3[4];
  v34 = __swift_project_boxed_opaque_existential_1(a3, v33);
  v35 = sub_1CF75B5B0(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v36 = v147;
  v37 = sub_1CF7DA990(a1, v32, v34, v33, v35, &off_1F4BF8588, v129);
  if (v36)
  {
    objc_autoreleasePoolPop(v144);
    return;
  }

  v147 = 0;
  if (!v37)
  {
LABEL_9:
    v26 = v130;
    goto LABEL_10;
  }

  v38 = a1 + *(v143 + 32);
  v26 = v130;
  if ((*(v38 + 8) & 1) == 0)
  {
    v129 = v37;
    v39 = *v38;
    sub_1CEFCCBDC(a1, v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      v40 = &qword_1EC4C1B40;
      v41 = &unk_1CF9FCB70;
      v42 = v25;
LABEL_51:
      sub_1CEFCCC44(v42, v40, v41);
      v37 = v129;
      goto LABEL_52;
    }

    sub_1CEFE55D0(v25, v31, &unk_1EC4BE360, &qword_1CF9FE650);
    v112 = &v31[*(v26 + 48)];
    if ((v112[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) != 0 || v39 == 0x7FFFFFFFFFFFFFFFLL || v39 <= v132)
    {
      v40 = &unk_1EC4BE360;
      v41 = &qword_1CF9FE650;
      v42 = v31;
      goto LABEL_51;
    }

    v113 = [v129 coreSpotlightIdentifier];
    v132 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v115 = v114;

    sub_1CF6E9AF0(v146, v132, v115);
    v146[1], v116, v117, v118, v119, v120, v121, v122;
    sub_1CEFCCC44(v31, &unk_1EC4BE360, &qword_1CF9FE650);
    v37 = v129;
  }

LABEL_52:
  v123 = v37;
  v124 = v134;
  MEMORY[0x1D3868FA0]();
  if (*((*v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();

LABEL_10:
  objc_autoreleasePoolPop(v144);
  sub_1CEFCCBDC(a1, v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v43 = (*(v27 + 48))(v22, 1, v26);
  v44 = v143;
  if (v43 == 1)
  {
    sub_1CEFCCC44(v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v46 = v141;
    v45 = v142;
    v47 = v140;
    if (!v139)
    {
      return;
    }

    goto LABEL_27;
  }

  v48 = v138;
  sub_1CEFE55D0(v22, v138, &unk_1EC4BE360, &qword_1CF9FE650);
  v49 = v136;
  sub_1CEFCCBDC(a1 + *(v44 + 20), v136, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v47 = v140;
  v46 = v141;
  if ((*(v140 + 48))(v49, 1, v141) == 1)
  {
    sub_1CEFCCC44(v48, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v49, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v45 = v142;
    if (!v139)
    {
      return;
    }

    goto LABEL_27;
  }

  v50 = v135;
  sub_1CEFE55D0(v49, v135, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  memcpy(v146, (a1 + *(v44 + 24)), 0x378uLL);
  v51 = sub_1CEFF7450(v146);
  v45 = v142;
  if (v51 == 1)
  {
    goto LABEL_25;
  }

  memcpy(v145, v146, sizeof(v145));
  if (sub_1CEFF755C() == 1 || !v145[31])
  {
    v50 = v135;
LABEL_25:
    v54 = v50;
    goto LABEL_26;
  }

  v52 = *v138;
  v53 = *(v138 + 8);
  if (v53 == 2 && !v52)
  {
LABEL_58:
    v54 = v135;
    goto LABEL_26;
  }

  v54 = v135;
  if (v53 != 2 || v52 != 1)
  {
    v125 = *v135;
    v126 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v127 = [v126 initWithProviderDomainID:v133 itemIdentifier:v125];
    MEMORY[0x1D3868FA0]();
    if (*((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
      v44 = v143;
    }

    sub_1CF9E6DE8();

    goto LABEL_58;
  }

LABEL_26:
  sub_1CEFCCC44(v54, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCC44(v138, &unk_1EC4BE360, &qword_1CF9FE650);
  if (!v139)
  {
    return;
  }

LABEL_27:
  sub_1CEFCCBDC(a1 + *(v44 + 20), v45, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    v58 = v137;
    sub_1CEFE55D0(v45, v137, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v59 = *v58;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v62 = v61;
    v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v70 = v63;
    if (v60 != v64 || v62 != v63)
    {
      v78 = sub_1CF9E8048();
      v62, v79, v80, v81, v82, v83, v84, v85;
      v70, v86, v87, v88, v89, v90, v91, v92;
      if (v78)
      {
        goto LABEL_35;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v62 = v94;
      v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v70 = v63;
      if (v93 != v64 || v62 != v63)
      {
        v95 = sub_1CF9E8048();
        v62, v96, v97, v98, v99, v100, v101, v102;
        v70, v103, v104, v105, v106, v107, v108, v109;
        if ((v95 & 1) == 0)
        {
          v110 = objc_allocWithZone(MEMORY[0x1E69673A0]);
          v111 = [v110 initWithProviderDomainID:v133 itemIdentifier:v59];
          MEMORY[0x1D3868FA0]();
          if (*((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CF9E6D88();
          }

          sub_1CF9E6DE8();
        }

        goto LABEL_35;
      }
    }

    v62, v63, v64, v65, v66, v67, v68, v69;
    v70, v71, v72, v73, v74, v75, v76, v77;
LABEL_35:
    v55 = &unk_1EC4BFBD0;
    v56 = &unk_1CF9FCBC0;
    v57 = v137;
    goto LABEL_36;
  }

  v55 = &unk_1EC4BFBB0;
  v56 = &qword_1CF9FCB90;
  v57 = v45;
LABEL_36:
  sub_1CEFCCC44(v57, v55, v56);
}

uint64_t sub_1CF751480(uint64_t a1, void *a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a2;
  swift_storeEnumTagMultiPayload();
  v8 = a2;
  a3(v7);
  return sub_1CEFCCC44(v7, &qword_1EC4C46C8, &unk_1CFA167A8);
}

void sub_1CF75154C(int a1, id a2, void (*a3)(id *))
{
  v6 = a2;
  v7 = 1;
  v5 = a2;
  a3(&v6);
}

void sub_1CF7515B8(uint64_t a1, int a2, char *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  LODWORD(v236) = a2;
  v223 = a1;
  v207 = sub_1CF9E63D8();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v219 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v201 - v14;
  v218 = sub_1CF9E6068();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v213 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v211 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v226 = &v201 - v20;
  v212 = type metadata accessor for Signpost(0);
  v214 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v22 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v216 = &v201 - v24;
  v215 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v228 = &v201 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v224 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v225 = (&v201 - v31);
  v235 = sub_1CF9E5CF8();
  v231 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v210 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v227 = &v201 - v34;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v230 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v208 = &v201 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v201 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v220 = &v201 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v201 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v201 - v47;
  v49 = sub_1CF9E6118();
  v232 = *(v49 - 8);
  v233 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v229 = &v201 - v53;
  v54 = swift_allocObject();
  v54[2] = a4;
  v54[3] = a5;
  v237 = v54;
  v54[4] = a6;
  v234 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v202 = v22;
      v203 = v15;
      v56 = *(*(Strong + 16) + 80);
      v57 = Strong;

      v58 = a6;
      if ((v56 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v204 = v57;
      v60 = v234;
      if (([v234 isIndexingEnabled] & 1) == 0)
      {
        v72 = [v60 domain];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 isHidden];

          if (v74)
          {
            v75 = 3;
          }

          else
          {
            v75 = 1;
          }
        }

        else
        {
          v75 = 3;
        }

        v76 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v77 = sub_1CF9E6108();
        v78 = sub_1CF9E7298();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *&aBlock = v80;
          *v79 = 67109378;
          *(v79 + 4) = v236 & 1;
          *(v79 + 8) = 2080;
          v81 = sub_1CF5B6A1C(v75, 1);
          v83 = v82;
          v84 = sub_1CEFD0DF0(v81, v82, &aBlock);
          v85 = v83;
          v60 = v234;
          v85, v86, v87, v88, v89, v90, v91, v92;
          *(v79 + 10) = v84;
          _os_log_impl(&dword_1CEFC7000, v77, v78, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v79, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v80);
          MEMORY[0x1D386CDC0](v80, -1, -1);
          MEMORY[0x1D386CDC0](v79, -1, -1);
        }

        (v232)[1](v51, v233);
        v93 = v204;
        v94 = *(*(v204 + 16) + qword_1EDEBBD08);
        v95 = swift_allocObject();
        *(v95 + 16) = v93;
        *(v95 + 24) = sub_1CF75BC74;
        *(v95 + 32) = v237;
        *(v95 + 40) = v75;
        *(v95 + 48) = 1;

        v96 = v94;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v95);

        goto LABEL_29;
      }

      v61 = fpfs_current_or_default_log();
      v62 = v229;
      sub_1CF9E6128();
      v63 = v223;
      sub_1CEFCCBDC(v223, v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();
      if (!os_log_type_enabled(v64, v65))
      {

        sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
        (v232)[1](v62, v233);
        v67 = v221;
LABEL_27:
        v109 = v220;
        sub_1CEFCCBDC(v63, v220, &qword_1EC4C46C0, &unk_1CFA16798);
        v110 = (*(v230 + 48))(v109, 1, v67);
        v111 = v237;
        v112 = v222;
        if (v110 != 1)
        {
          v123 = v208;
          sub_1CEFE55D0(v109, v208, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v123, v112, &unk_1EC4C4AE0, qword_1CFA17B10);
          v124 = type metadata accessor for ChangeEnumeratorAnchor(0);
          if ((*(*(v124 - 8) + 48))(v112, 1, v124) == 1)
          {
            sub_1CEFCCC44(v112, &unk_1EC4C4AE0, qword_1CFA17B10);
            v125 = 0;
          }

          else
          {
            v125 = *(v112 + *(v124 + 20));
            sub_1CF75B008(v112, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v154 = v204;
          v155 = *(*(v204 + 16) + qword_1EDEBBD08);
          v156 = swift_allocObject();
          *(v156 + 16) = v154;
          *(v156 + 24) = sub_1CF75BC74;
          *(v156 + 32) = v111;
          *(v156 + 40) = v125;
          *(v156 + 48) = 0;

          v157 = v155;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v156);

          sub_1CEFCCC44(v123, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v236 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v117 = [v60 state];
          v118 = [v117 lastDropDate];

          if (v118)
          {
            v119 = v224;
            sub_1CF9E5CB8();

            v120 = 0;
            v121 = v231;
            v122 = v225;
          }

          else
          {
            v120 = 1;
            v121 = v231;
            v122 = v225;
            v119 = v224;
          }

          v126 = v235;
          (*(v121 + 56))(v119, v120, 1, v235);
          sub_1CEFE55D0(v119, v122, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v121 + 48))(v122, 1, v126) == 1)
          {

            sub_1CEFCCC44(v122, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_8;
          }

          v127 = *(v121 + 32);
          v128 = v227;
          v127(v227, v122, v126);
          v129 = v204;
          v130 = *(v204 + 16);
          v131 = v210;
          (*(v121 + 16))(v210, v128, v235);
          v132 = (*(v121 + 80) + 24) & ~*(v121 + 80);
          v133 = swift_allocObject();
          *(v133 + 16) = v129;
          v236 = v133;
          v127((v133 + v132), v131, v235);
          v234 = v130;

          v233 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v134 = qword_1EDEBBE40;
          v135 = v217;
          v136 = v226;
          v137 = v218;
          (*(v217 + 56))(v226, 1, 1, v218);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v138 = sub_1CF9E7988();
          v140 = v139;
          MEMORY[0x1D3868CC0](v138);
          v140, v141, v142, v143, v144, v145, v146, v147;
          v148 = aBlock;
          v149 = v136;
          v150 = v211;
          sub_1CEFCCBDC(v149, v211, &unk_1EC4BED20, &unk_1CFA00700);
          v151 = *(v135 + 48);
          if (v151(v150, 1, v137) == 1)
          {
            v152 = v134;
            v153 = v213;
            sub_1CF9E6048();
            if (v151(v150, 1, v137) != 1)
            {
              sub_1CEFCCC44(v150, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v153 = v213;
            (*(v135 + 32))(v213, v150, v137);
          }

          v158 = v228;
          (*(v135 + 16))(v228, v153, v137);
          v159 = v212;
          *(v158 + *(v212 + 20)) = v134;
          v160 = v158 + *(v159 + 24);
          *v160 = "DB queue wait";
          *(v160 + 8) = 13;
          *(v160 + 16) = 2;
          v161 = v134;
          v162 = sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v163 = swift_allocObject();
          *(v163 + 16) = xmmword_1CF9FA450;
          *(v163 + 56) = MEMORY[0x1E69E6158];
          *(v163 + 64) = sub_1CEFD51C4();
          *(v163 + 32) = v148;
          sub_1CF9E6028(v162, &dword_1CEFC7000, v161, "DB queue wait", 13, 2, v158, "%s", 2);
          v163, v164, v165, v166, v167, v168, v169, v170;
          (*(v135 + 8))(v153, v137);
          sub_1CEFCCC44(v226, &unk_1EC4BED20, &unk_1CFA00700);
          v230 = *(v234 + 21);
          v232 = *(v234 + 8);
          v229 = sub_1CF9E6448();
          v226 = *(v229 - 1);
          (*(v226 + 56))(v203, 1, 1, v229);
          v171 = v216;
          sub_1CEFDA27C(v158, v216, type metadata accessor for Signpost);
          v172 = (*(v214 + 80) + 16) & ~*(v214 + 80);
          v173 = (v215 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
          v174 = swift_allocObject();
          sub_1CEFD9FF4(v171, &v174[v172], type metadata accessor for Signpost);
          v175 = &v174[v173];
          v225 = nullsub_1;
          *v175 = nullsub_1;
          v175[1] = 0;
          v176 = v202;
          sub_1CEFDA27C(v158, v202, type metadata accessor for Signpost);
          v177 = (v173 + 23) & 0xFFFFFFFFFFFFFFF8;
          v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v178 + 25) & 0xFFFFFFFFFFFFFFF8;
          v180 = swift_allocObject();
          sub_1CEFD9FF4(v176, v180 + v172, type metadata accessor for Signpost);
          v181 = (v180 + v173);
          *v181 = sub_1CF045408;
          v181[1] = 0;
          *(v180 + v177) = v234;
          v182 = v180 + v178;
          *v182 = "reactToIndexDrop(dropDate:)";
          *(v182 + 8) = 27;
          *(v182 + 16) = 2;
          v183 = (v180 + v179);
          *v183 = v225;
          v183[1] = 0;
          v184 = (v180 + ((v179 + 23) & 0xFFFFFFFFFFFFFFF8));
          v185 = v226;
          v186 = v236;
          *v184 = sub_1CF75C128;
          v184[1] = v186;
          v187 = swift_allocObject();
          v187[2] = sub_1CF75C120;
          v187[3] = v174;
          v188 = v230;
          v187[4] = v230;

          v234 = v174;
          v189 = v229;

          v190 = fpfs_current_log();
          v191 = *(v188 + 16);
          v192 = v219;
          sub_1CEFCCBDC(v203, v219, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v185 + 48))(v192, 1, v189) == 1)
          {
            sub_1CEFCCC44(v192, &unk_1EC4BE370, qword_1CFA01B30);
            v193 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v194 = v205;
            sub_1CF9E6438();
            (*(v185 + 8))(v192, v189);
            v193 = sub_1CF9E63C8();
            (*(v206 + 8))(v194, v207);
          }

          v195 = swift_allocObject();
          v195[2] = v190;
          v195[3] = sub_1CF4858EC;
          v195[4] = v180;
          v241 = sub_1CF2BA17C;
          v242 = v195;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v239 = sub_1CEFCA444;
          v240 = &block_descriptor_374;
          v196 = _Block_copy(&aBlock);
          v197 = v190;

          v241 = sub_1CF2BA180;
          v242 = v187;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v239 = sub_1CEFCA444;
          v240 = &block_descriptor_377;
          v198 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v191, v232, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v193, v196, v198);
          _Block_release(v198);
          _Block_release(v196);

          sub_1CEFCCC44(v203, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v228, type metadata accessor for Signpost);
          v199 = v233;
          v200 = fpfs_adopt_log();

          (*(v231 + 8))(v227, v235);
LABEL_50:

          goto LABEL_8;
        }

        v113 = v204;
        v114 = *(*(v204 + 16) + qword_1EDEBBD08);
        v115 = swift_allocObject();
        *(v115 + 16) = v113;
        *(v115 + 24) = sub_1CF75BC74;
        *(v115 + 32) = v111;
        *(v115 + 40) = 0;
        *(v115 + 48) = 256;

        v116 = v114;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v115);

LABEL_29:

        if ((v236 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v66 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *&aBlock = v201;
      *v66 = 67109378;
      *(v66 + 4) = v236 & 1;
      *(v66 + 8) = 2080;
      sub_1CEFCCBDC(v48, v45, &qword_1EC4C46C0, &unk_1CFA16798);
      v67 = v221;
      if ((*(v230 + 48))(v45, 1, v221) == 1)
      {
        v68 = 0x6F68636E61206F6ELL;
        v69 = &qword_1EC4C46C0;
        v70 = &unk_1CFA16798;
        v71 = v45;
      }

      else
      {
        sub_1CEFE55D0(v45, v40, &unk_1EC4C4AE0, qword_1CFA17B10);
        v97 = type metadata accessor for ChangeEnumeratorAnchor(0);
        if ((*(*(v97 - 8) + 48))(v40, 1, v97) != 1)
        {
          v68 = sub_1CF7D9BAC();
          v98 = v99;
          sub_1CF75B008(v40, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v68 = 0x6F68636E61206F6ELL;
        v69 = &unk_1EC4C4AE0;
        v70 = qword_1CFA17B10;
        v71 = v40;
      }

      sub_1CEFCCC44(v71, v69, v70);
      v98 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v100 = sub_1CEFD0DF0(v68, v98, &aBlock);
      v98, v101, v102, v103, v104, v105, v106, v107;
      *(v66 + 10) = v100;
      _os_log_impl(&dword_1CEFC7000, v64, v65, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v66, 0x12u);
      v108 = v201;
      __swift_destroy_boxed_opaque_existential_1(v201);
      MEMORY[0x1D386CDC0](v108, -1, -1);
      MEMORY[0x1D386CDC0](v66, -1, -1);

      (v232)[1](v229, v233);
      goto LABEL_27;
    }
  }

  v59 = a6;
LABEL_6:
  a4(a6);

LABEL_8:
}

void sub_1CF752DF4(uint64_t a1, int a2, char *a3, void (*a4)(void, void *, uint64_t, __n128), uint64_t a5, int a6, void *a7)
{
  LODWORD(v240) = a6;
  LODWORD(v239) = a2;
  v226 = a1;
  v210 = sub_1CF9E63D8();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v222 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v205 - v15;
  v221 = sub_1CF9E6068();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v216 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v214 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v205 - v21;
  v215 = type metadata accessor for Signpost(0);
  v217 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v23 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v219 = &v205 - v25;
  v218 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v231 = &v205 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v227 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v228 = (&v205 - v32);
  v238 = sub_1CF9E5CF8();
  v234 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v213 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v230 = &v205 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v232 = *(v36 - 8);
  v233 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v211 = &v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v225 = &v205 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v207 = &v205 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v224 = &v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v205 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v223 = &v205 - v48;
  v49 = sub_1CF9E6118();
  v235 = *(v49 - 8);
  v236 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v205 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v205 - v53;
  v55 = swift_allocObject();
  v56 = a4;
  *(v55 + 16) = a4;
  *(v55 + 24) = a5;
  v57 = v240;
  *(v55 + 32) = v240;
  v241 = v55;
  *(v55 + 40) = a7;
  v237 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v205 = v23;
      v206 = v16;
      v59 = *(*(Strong + 16) + 80);
      v60 = Strong;

      v61 = a7;
      if ((v59 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v240 = v60;
      v63 = v237;
      if (([v237 isIndexingEnabled] & 1) == 0)
      {
        v75 = [v63 domain];
        if (v75)
        {
          v76 = v75;
          v77 = [v75 isHidden];

          if (v77)
          {
            v78 = 3;
          }

          else
          {
            v78 = 1;
          }
        }

        else
        {
          v78 = 3;
        }

        v79 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v80 = sub_1CF9E6108();
        v81 = sub_1CF9E7298();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&aBlock = v83;
          *v82 = 67109378;
          *(v82 + 4) = v239 & 1;
          *(v82 + 8) = 2080;
          v84 = sub_1CF5B6A1C(v78, 1);
          v86 = v85;
          v87 = sub_1CEFD0DF0(v84, v85, &aBlock);
          v86, v88, v89, v90, v91, v92, v93, v94;
          *(v82 + 10) = v87;
          v63 = v237;
          _os_log_impl(&dword_1CEFC7000, v80, v81, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v82, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v83);
          MEMORY[0x1D386CDC0](v83, -1, -1);
          MEMORY[0x1D386CDC0](v82, -1, -1);
        }

        (v235)[1](v51, v236);
        v95 = v240;
        v96 = *(*(v240 + 16) + qword_1EDEBBD08);
        v97 = swift_allocObject();
        *(v97 + 16) = v95;
        *(v97 + 24) = sub_1CF75B5F8;
        *(v97 + 32) = v241;
        *(v97 + 40) = v78;
        *(v97 + 48) = 1;

        v98 = v96;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v97);

        goto LABEL_29;
      }

      v64 = fpfs_current_or_default_log();
      v65 = v54;
      sub_1CF9E6128();
      v66 = v226;
      v67 = v223;
      sub_1CEFCCBDC(v226, v223, &qword_1EC4C46C0, &unk_1CFA16798);
      v68 = sub_1CF9E6108();
      v69 = sub_1CF9E7298();
      if (!os_log_type_enabled(v68, v69))
      {

        sub_1CEFCCC44(v67, &qword_1EC4C46C0, &unk_1CFA16798);
LABEL_27:
        (v235)[1](v65, v236);
        v112 = v241;
        v113 = v224;
        sub_1CEFCCBDC(v66, v224, &qword_1EC4C46C0, &unk_1CFA16798);
        if ((*(v232 + 48))(v113, 1, v233) != 1)
        {
          v124 = v113;
          v125 = v225;
          sub_1CEFE55D0(v124, v225, &unk_1EC4C4AE0, qword_1CFA17B10);
          v126 = v125;
          v127 = v211;
          sub_1CEFCCBDC(v126, v211, &unk_1EC4C4AE0, qword_1CFA17B10);
          v128 = type metadata accessor for ChangeEnumeratorAnchor(0);
          if ((*(*(v128 - 8) + 48))(v127, 1, v128) == 1)
          {
            sub_1CEFCCC44(v127, &unk_1EC4C4AE0, qword_1CFA17B10);
            v129 = 0;
          }

          else
          {
            v129 = *(v127 + *(v128 + 20));
            sub_1CF75B008(v127, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v158 = v240;
          v159 = *(*(v240 + 16) + qword_1EDEBBD08);
          v160 = swift_allocObject();
          *(v160 + 16) = v158;
          *(v160 + 24) = sub_1CF75B5F8;
          *(v160 + 32) = v112;
          *(v160 + 40) = v129;
          *(v160 + 48) = 0;

          v161 = v159;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v160);

          sub_1CEFCCC44(v225, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v239 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v118 = [v63 state];
          v119 = [v118 lastDropDate];

          if (v119)
          {
            v120 = v227;
            sub_1CF9E5CB8();

            v121 = 0;
            v122 = v234;
            v123 = v228;
          }

          else
          {
            v121 = 1;
            v122 = v234;
            v123 = v228;
            v120 = v227;
          }

          v130 = v238;
          (*(v122 + 56))(v120, v121, 1, v238);
          sub_1CEFE55D0(v120, v123, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v122 + 48))(v123, 1, v130) == 1)
          {

            sub_1CEFCCC44(v123, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_8;
          }

          v131 = *(v122 + 32);
          v132 = v230;
          v131(v230, v123, v130);
          v133 = v240;
          v134 = *(v240 + 16);
          v135 = v213;
          (*(v122 + 16))(v213, v132, v238);
          v136 = (*(v122 + 80) + 24) & ~*(v122 + 80);
          v137 = swift_allocObject();
          *(v137 + 16) = v133;
          v239 = v137;
          v131((v137 + v136), v135, v238);
          v237 = v134;

          v236 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v138 = qword_1EDEBBE40;
          v139 = v220;
          v140 = v229;
          v141 = v221;
          (*(v220 + 56))(v229, 1, 1, v221);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v142 = sub_1CF9E7988();
          v144 = v143;
          MEMORY[0x1D3868CC0](v142);
          v144, v145, v146, v147, v148, v149, v150, v151;
          v152 = aBlock;
          v153 = v140;
          v154 = v214;
          sub_1CEFCCBDC(v153, v214, &unk_1EC4BED20, &unk_1CFA00700);
          v155 = *(v139 + 48);
          if (v155(v154, 1, v141) == 1)
          {
            v156 = v138;
            v157 = v216;
            sub_1CF9E6048();
            if (v155(v154, 1, v141) != 1)
            {
              sub_1CEFCCC44(v154, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v157 = v216;
            (*(v139 + 32))(v216, v154, v141);
          }

          v162 = v231;
          (*(v139 + 16))(v231, v157, v141);
          v163 = v215;
          *(v162 + *(v215 + 20)) = v138;
          v164 = v162 + *(v163 + 24);
          *v164 = "DB queue wait";
          *(v164 + 8) = 13;
          *(v164 + 16) = 2;
          v165 = v138;
          v166 = sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v167 = swift_allocObject();
          *(v167 + 16) = xmmword_1CF9FA450;
          *(v167 + 56) = MEMORY[0x1E69E6158];
          *(v167 + 64) = sub_1CEFD51C4();
          *(v167 + 32) = v152;
          sub_1CF9E6028(v166, &dword_1CEFC7000, v165, "DB queue wait", 13, 2, v162, "%s", 2);
          v167, v168, v169, v170, v171, v172, v173, v174;
          (*(v139 + 8))(v157, v141);
          sub_1CEFCCC44(v229, &unk_1EC4BED20, &unk_1CFA00700);
          v233 = v237[21];
          v235 = v237[8];
          v232 = sub_1CF9E6448();
          v229 = *(v232 - 8);
          (*(v229 + 56))(v206, 1, 1, v232);
          v175 = v219;
          sub_1CEFDA27C(v162, v219, type metadata accessor for Signpost);
          v176 = (*(v217 + 80) + 16) & ~*(v217 + 80);
          v177 = (v218 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
          v178 = swift_allocObject();
          sub_1CEFD9FF4(v175, &v178[v176], type metadata accessor for Signpost);
          v179 = &v178[v177];
          v228 = nullsub_1;
          *v179 = nullsub_1;
          v179[1] = 0;
          v180 = v205;
          sub_1CEFDA27C(v162, v205, type metadata accessor for Signpost);
          v181 = (v177 + 23) & 0xFFFFFFFFFFFFFFF8;
          v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
          v183 = (v182 + 25) & 0xFFFFFFFFFFFFFFF8;
          v184 = swift_allocObject();
          sub_1CEFD9FF4(v180, v184 + v176, type metadata accessor for Signpost);
          v185 = (v184 + v177);
          *v185 = sub_1CF045408;
          v185[1] = 0;
          *(v184 + v181) = v237;
          v186 = v184 + v182;
          *v186 = "reactToIndexDrop(dropDate:)";
          *(v186 + 8) = 27;
          *(v186 + 16) = 2;
          v187 = (v184 + v183);
          *v187 = v228;
          v187[1] = 0;
          v188 = (v184 + ((v183 + 23) & 0xFFFFFFFFFFFFFFF8));
          v189 = v229;
          v190 = v239;
          *v188 = sub_1CF75C128;
          v188[1] = v190;
          v191 = swift_allocObject();
          v191[2] = sub_1CF75C120;
          v191[3] = v178;
          v192 = v233;
          v191[4] = v233;

          v237 = v178;
          v193 = v232;

          v194 = fpfs_current_log();
          v195 = *(v192 + 16);
          v196 = v222;
          sub_1CEFCCBDC(v206, v222, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v189 + 48))(v196, 1, v193) == 1)
          {
            sub_1CEFCCC44(v196, &unk_1EC4BE370, qword_1CFA01B30);
            v197 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v198 = v208;
            sub_1CF9E6438();
            (*(v189 + 8))(v196, v193);
            v197 = sub_1CF9E63C8();
            (*(v209 + 8))(v198, v210);
          }

          v199 = swift_allocObject();
          v199[2] = v194;
          v199[3] = sub_1CF4858EC;
          v199[4] = v184;
          v245 = sub_1CF2BA17C;
          v246 = v199;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v243 = sub_1CEFCA444;
          v244 = &block_descriptor_214;
          v200 = _Block_copy(&aBlock);
          v201 = v194;

          v245 = sub_1CF2BA180;
          v246 = v191;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v243 = sub_1CEFCA444;
          v244 = &block_descriptor_217;
          v202 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v195, v235, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v197, v200, v202);
          _Block_release(v202);
          _Block_release(v200);

          sub_1CEFCCC44(v206, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v231, type metadata accessor for Signpost);
          v203 = v236;
          v204 = fpfs_adopt_log();

          (*(v234 + 8))(v230, v238);
LABEL_50:

          goto LABEL_8;
        }

        v114 = v240;
        v115 = *(*(v240 + 16) + qword_1EDEBBD08);
        v116 = swift_allocObject();
        *(v116 + 16) = v114;
        *(v116 + 24) = sub_1CF75B5F8;
        *(v116 + 32) = v112;
        *(v116 + 40) = 0;
        *(v116 + 48) = 256;

        v117 = v115;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v116);

LABEL_29:

        if ((v239 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&aBlock = v71;
      *v70 = 67109378;
      *(v70 + 4) = v239 & 1;
      *(v70 + 8) = 2080;
      sub_1CEFCCBDC(v67, v46, &qword_1EC4C46C0, &unk_1CFA16798);
      if ((*(v232 + 48))(v46, 1, v233) == 1)
      {
        v72 = 0x6F68636E61206F6ELL;
        v73 = &qword_1EC4C46C0;
        v74 = &unk_1CFA16798;
      }

      else
      {
        v99 = v46;
        v46 = v207;
        sub_1CEFE55D0(v99, v207, &unk_1EC4C4AE0, qword_1CFA17B10);
        v100 = type metadata accessor for ChangeEnumeratorAnchor(0);
        if ((*(*(v100 - 8) + 48))(v46, 1, v100) != 1)
        {
          v72 = sub_1CF7D9BAC();
          v102 = v46;
          v101 = v103;
          sub_1CF75B008(v102, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v72 = 0x6F68636E61206F6ELL;
        v73 = &unk_1EC4C4AE0;
        v74 = qword_1CFA17B10;
      }

      sub_1CEFCCC44(v46, v73, v74);
      v101 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v67, &qword_1EC4C46C0, &unk_1CFA16798);
      v104 = sub_1CEFD0DF0(v72, v101, &aBlock);
      v101, v105, v106, v107, v108, v109, v110, v111;
      *(v70 + 10) = v104;
      _os_log_impl(&dword_1CEFC7000, v68, v69, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v70, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v70, -1, -1);

      goto LABEL_27;
    }
  }

  v62 = a7;
LABEL_6:
  (v56)(v57 & 1, a7, 10);

LABEL_8:
}

void sub_1CF754620(uint64_t a1, int a2, char *a3, void (*a4)(void, void, void, __n128), uint64_t a5, char a6)
{
  LODWORD(v234) = a2;
  v221 = a1;
  v205 = sub_1CF9E63D8();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v203 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v217 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v199 - v14;
  v216 = sub_1CF9E6068();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v211 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v209 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v224 = &v199 - v20;
  v210 = type metadata accessor for Signpost(0);
  v212 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v22 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v214 = &v199 - v24;
  v213 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v226 = &v199 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v222 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v223 = (&v199 - v31);
  v233 = sub_1CF9E5CF8();
  v229 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v208 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v225 = &v199 - v34;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v228 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v206 = &v199 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v199 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v218 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v199 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v199 - v47;
  v49 = sub_1CF9E6118();
  v230 = *(v49 - 8);
  v231 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v199 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v227 = &v199 - v53;
  v54 = swift_allocObject();
  *(v54 + 16) = a4;
  *(v54 + 24) = a5;
  v235 = v54;
  *(v54 + 32) = a6;
  v232 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v200 = v22;
      v201 = v15;
      v56 = *(*(Strong + 16) + 80);
      v57 = Strong;

      if ((v56 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v202 = v57;
      v58 = v232;
      if (([v232 isIndexingEnabled] & 1) == 0)
      {
        v70 = [v58 domain];
        if (v70)
        {
          v71 = v70;
          v72 = [v70 isHidden];

          if (v72)
          {
            v73 = 3;
          }

          else
          {
            v73 = 1;
          }
        }

        else
        {
          v73 = 3;
        }

        v74 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v75 = sub_1CF9E6108();
        v76 = sub_1CF9E7298();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&aBlock = v78;
          *v77 = 67109378;
          *(v77 + 4) = v234 & 1;
          *(v77 + 8) = 2080;
          v79 = sub_1CF5B6A1C(v73, 1);
          v81 = v80;
          v82 = sub_1CEFD0DF0(v79, v80, &aBlock);
          v83 = v81;
          v58 = v232;
          v83, v84, v85, v86, v87, v88, v89, v90;
          *(v77 + 10) = v82;
          _os_log_impl(&dword_1CEFC7000, v75, v76, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v77, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1D386CDC0](v78, -1, -1);
          MEMORY[0x1D386CDC0](v77, -1, -1);
        }

        (v230)[1](v51, v231);
        v91 = v202;
        v92 = *(*(v202 + 16) + qword_1EDEBBD08);
        v93 = swift_allocObject();
        *(v93 + 16) = v91;
        *(v93 + 24) = sub_1CF75B630;
        *(v93 + 32) = v235;
        *(v93 + 40) = v73;
        *(v93 + 48) = 1;

        v94 = v92;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v93);

        goto LABEL_29;
      }

      v59 = fpfs_current_or_default_log();
      v60 = v227;
      sub_1CF9E6128();
      v61 = v221;
      sub_1CEFCCBDC(v221, v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v62 = sub_1CF9E6108();
      v63 = sub_1CF9E7298();
      if (!os_log_type_enabled(v62, v63))
      {

        sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
        (v230)[1](v60, v231);
        v65 = v219;
LABEL_27:
        v107 = v218;
        sub_1CEFCCBDC(v61, v218, &qword_1EC4C46C0, &unk_1CFA16798);
        v108 = (*(v228 + 48))(v107, 1, v65);
        v109 = v235;
        v110 = v220;
        if (v108 != 1)
        {
          v121 = v206;
          sub_1CEFE55D0(v107, v206, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v121, v110, &unk_1EC4C4AE0, qword_1CFA17B10);
          v122 = type metadata accessor for ChangeEnumeratorAnchor(0);
          if ((*(*(v122 - 8) + 48))(v110, 1, v122) == 1)
          {
            sub_1CEFCCC44(v110, &unk_1EC4C4AE0, qword_1CFA17B10);
            v123 = 0;
          }

          else
          {
            v123 = *(v110 + *(v122 + 20));
            sub_1CF75B008(v110, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v152 = v202;
          v153 = *(*(v202 + 16) + qword_1EDEBBD08);
          v154 = swift_allocObject();
          *(v154 + 16) = v152;
          *(v154 + 24) = sub_1CF75B630;
          *(v154 + 32) = v109;
          *(v154 + 40) = v123;
          *(v154 + 48) = 0;

          v155 = v153;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v154);

          sub_1CEFCCC44(v121, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v234 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v115 = [v58 state];
          v116 = [v115 lastDropDate];

          if (v116)
          {
            v117 = v222;
            sub_1CF9E5CB8();

            v118 = 0;
            v119 = v229;
            v120 = v223;
          }

          else
          {
            v118 = 1;
            v119 = v229;
            v120 = v223;
            v117 = v222;
          }

          v124 = v233;
          (*(v119 + 56))(v117, v118, 1, v233);
          sub_1CEFE55D0(v117, v120, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v119 + 48))(v120, 1, v124) == 1)
          {

            sub_1CEFCCC44(v120, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_8;
          }

          v125 = *(v119 + 32);
          v126 = v225;
          v125(v225, v120, v124);
          v127 = v202;
          v128 = *(v202 + 16);
          v129 = v208;
          (*(v119 + 16))(v208, v126, v233);
          v130 = (*(v119 + 80) + 24) & ~*(v119 + 80);
          v131 = swift_allocObject();
          *(v131 + 16) = v127;
          v234 = v131;
          v125((v131 + v130), v129, v233);
          v232 = v128;

          v231 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v132 = qword_1EDEBBE40;
          v133 = v215;
          v134 = v224;
          v135 = v216;
          (*(v215 + 56))(v224, 1, 1, v216);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v136 = sub_1CF9E7988();
          v138 = v137;
          MEMORY[0x1D3868CC0](v136);
          v138, v139, v140, v141, v142, v143, v144, v145;
          v146 = aBlock;
          v147 = v134;
          v148 = v209;
          sub_1CEFCCBDC(v147, v209, &unk_1EC4BED20, &unk_1CFA00700);
          v149 = *(v133 + 48);
          if (v149(v148, 1, v135) == 1)
          {
            v150 = v132;
            v151 = v211;
            sub_1CF9E6048();
            if (v149(v148, 1, v135) != 1)
            {
              sub_1CEFCCC44(v148, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v151 = v211;
            (*(v133 + 32))(v211, v148, v135);
          }

          v156 = v226;
          (*(v133 + 16))(v226, v151, v135);
          v157 = v210;
          *(v156 + *(v210 + 20)) = v132;
          v158 = v156 + *(v157 + 24);
          *v158 = "DB queue wait";
          *(v158 + 8) = 13;
          *(v158 + 16) = 2;
          v159 = v132;
          v160 = sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v161 = swift_allocObject();
          *(v161 + 16) = xmmword_1CF9FA450;
          *(v161 + 56) = MEMORY[0x1E69E6158];
          *(v161 + 64) = sub_1CEFD51C4();
          *(v161 + 32) = v146;
          sub_1CF9E6028(v160, &dword_1CEFC7000, v159, "DB queue wait", 13, 2, v156, "%s", 2);
          v161, v162, v163, v164, v165, v166, v167, v168;
          (*(v133 + 8))(v151, v135);
          sub_1CEFCCC44(v224, &unk_1EC4BED20, &unk_1CFA00700);
          v228 = *(v232 + 21);
          v230 = *(v232 + 8);
          v227 = sub_1CF9E6448();
          v224 = *(v227 - 1);
          (*(v224 + 56))(v201, 1, 1, v227);
          v169 = v214;
          sub_1CEFDA27C(v156, v214, type metadata accessor for Signpost);
          v170 = (*(v212 + 80) + 16) & ~*(v212 + 80);
          v171 = (v213 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
          v172 = swift_allocObject();
          sub_1CEFD9FF4(v169, &v172[v170], type metadata accessor for Signpost);
          v173 = &v172[v171];
          v223 = nullsub_1;
          *v173 = nullsub_1;
          v173[1] = 0;
          v174 = v200;
          sub_1CEFDA27C(v156, v200, type metadata accessor for Signpost);
          v175 = (v171 + 23) & 0xFFFFFFFFFFFFFFF8;
          v176 = (v175 + 15) & 0xFFFFFFFFFFFFFFF8;
          v177 = (v176 + 25) & 0xFFFFFFFFFFFFFFF8;
          v178 = swift_allocObject();
          sub_1CEFD9FF4(v174, v178 + v170, type metadata accessor for Signpost);
          v179 = (v178 + v171);
          *v179 = sub_1CF045408;
          v179[1] = 0;
          *(v178 + v175) = v232;
          v180 = v178 + v176;
          *v180 = "reactToIndexDrop(dropDate:)";
          *(v180 + 8) = 27;
          *(v180 + 16) = 2;
          v181 = (v178 + v177);
          *v181 = v223;
          v181[1] = 0;
          v182 = (v178 + ((v177 + 23) & 0xFFFFFFFFFFFFFFF8));
          v183 = v224;
          v184 = v234;
          *v182 = sub_1CF75C128;
          v182[1] = v184;
          v185 = swift_allocObject();
          v185[2] = sub_1CF75C120;
          v185[3] = v172;
          v186 = v228;
          v185[4] = v228;

          v232 = v172;
          v187 = v227;

          v188 = fpfs_current_log();
          v189 = *(v186 + 16);
          v190 = v217;
          sub_1CEFCCBDC(v201, v217, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v183 + 48))(v190, 1, v187) == 1)
          {
            sub_1CEFCCC44(v190, &unk_1EC4BE370, qword_1CFA01B30);
            v191 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v192 = v203;
            sub_1CF9E6438();
            (*(v183 + 8))(v190, v187);
            v191 = sub_1CF9E63C8();
            (*(v204 + 8))(v192, v205);
          }

          v193 = swift_allocObject();
          v193[2] = v188;
          v193[3] = sub_1CF4858EC;
          v193[4] = v178;
          v239 = sub_1CF2BA17C;
          v240 = v193;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v237 = sub_1CEFCA444;
          v238 = &block_descriptor_255_0;
          v194 = _Block_copy(&aBlock);
          v195 = v188;

          v239 = sub_1CF2BA180;
          v240 = v185;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v237 = sub_1CEFCA444;
          v238 = &block_descriptor_258_2;
          v196 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v189, v230, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v191, v194, v196);
          _Block_release(v196);
          _Block_release(v194);

          sub_1CEFCCC44(v201, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v226, type metadata accessor for Signpost);
          v197 = v231;
          v198 = fpfs_adopt_log();

          (*(v229 + 8))(v225, v233);
LABEL_50:

          goto LABEL_8;
        }

        v111 = v202;
        v112 = *(*(v202 + 16) + qword_1EDEBBD08);
        v113 = swift_allocObject();
        *(v113 + 16) = v111;
        *(v113 + 24) = sub_1CF75B630;
        *(v113 + 32) = v109;
        *(v113 + 40) = 0;
        *(v113 + 48) = 256;

        v114 = v112;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v113);

LABEL_29:

        if ((v234 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v64 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&aBlock = v199;
      *v64 = 67109378;
      *(v64 + 4) = v234 & 1;
      *(v64 + 8) = 2080;
      sub_1CEFCCBDC(v48, v45, &qword_1EC4C46C0, &unk_1CFA16798);
      v65 = v219;
      if ((*(v228 + 48))(v45, 1, v219) == 1)
      {
        v66 = 0x6F68636E61206F6ELL;
        v67 = &qword_1EC4C46C0;
        v68 = &unk_1CFA16798;
        v69 = v45;
      }

      else
      {
        sub_1CEFE55D0(v45, v40, &unk_1EC4C4AE0, qword_1CFA17B10);
        v95 = type metadata accessor for ChangeEnumeratorAnchor(0);
        if ((*(*(v95 - 8) + 48))(v40, 1, v95) != 1)
        {
          v66 = sub_1CF7D9BAC();
          v96 = v97;
          sub_1CF75B008(v40, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v66 = 0x6F68636E61206F6ELL;
        v67 = &unk_1EC4C4AE0;
        v68 = qword_1CFA17B10;
        v69 = v40;
      }

      sub_1CEFCCC44(v69, v67, v68);
      v96 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v98 = sub_1CEFD0DF0(v66, v96, &aBlock);
      v96, v99, v100, v101, v102, v103, v104, v105;
      *(v64 + 10) = v98;
      _os_log_impl(&dword_1CEFC7000, v62, v63, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v64, 0x12u);
      v106 = v199;
      __swift_destroy_boxed_opaque_existential_1(v199);
      MEMORY[0x1D386CDC0](v106, -1, -1);
      MEMORY[0x1D386CDC0](v64, -1, -1);

      (v230)[1](v227, v231);
      goto LABEL_27;
    }
  }

LABEL_6:
  (a4)(a6 & 1, 0, 0);

LABEL_8:
}

void sub_1CF755E54(uint64_t a1, int a2, char *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  LODWORD(v236) = a2;
  v223 = a1;
  v207 = sub_1CF9E63D8();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v219 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v201 - v14;
  v218 = sub_1CF9E6068();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v213 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v211 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v226 = &v201 - v20;
  v212 = type metadata accessor for Signpost(0);
  v214 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v22 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v216 = &v201 - v24;
  v215 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v228 = &v201 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v224 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v225 = (&v201 - v31);
  v235 = sub_1CF9E5CF8();
  v231 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v210 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v227 = &v201 - v34;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v230 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v208 = &v201 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v201 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v220 = &v201 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v201 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v201 - v47;
  v49 = sub_1CF9E6118();
  v232 = *(v49 - 8);
  v233 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v229 = &v201 - v53;
  v54 = swift_allocObject();
  v54[2] = a4;
  v54[3] = a5;
  v237 = v54;
  v54[4] = a6;
  v234 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v202 = v22;
      v203 = v15;
      v56 = *(*(Strong + 16) + 80);
      v57 = Strong;

      v58 = a6;
      if ((v56 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v204 = v57;
      v60 = v234;
      if (([v234 isIndexingEnabled] & 1) == 0)
      {
        v72 = [v60 domain];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 isHidden];

          if (v74)
          {
            v75 = 3;
          }

          else
          {
            v75 = 1;
          }
        }

        else
        {
          v75 = 3;
        }

        v76 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v77 = sub_1CF9E6108();
        v78 = sub_1CF9E7298();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *&aBlock = v80;
          *v79 = 67109378;
          *(v79 + 4) = v236 & 1;
          *(v79 + 8) = 2080;
          v81 = sub_1CF5B6A1C(v75, 1);
          v83 = v82;
          v84 = sub_1CEFD0DF0(v81, v82, &aBlock);
          v85 = v83;
          v60 = v234;
          v85, v86, v87, v88, v89, v90, v91, v92;
          *(v79 + 10) = v84;
          _os_log_impl(&dword_1CEFC7000, v77, v78, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v79, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v80);
          MEMORY[0x1D386CDC0](v80, -1, -1);
          MEMORY[0x1D386CDC0](v79, -1, -1);
        }

        (v232)[1](v51, v233);
        v93 = v204;
        v94 = *(*(v204 + 16) + qword_1EDEBBD08);
        v95 = swift_allocObject();
        *(v95 + 16) = v93;
        *(v95 + 24) = sub_1CF75C160;
        *(v95 + 32) = v237;
        *(v95 + 40) = v75;
        *(v95 + 48) = 1;

        v96 = v94;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75B120, v95);

        goto LABEL_29;
      }

      v61 = fpfs_current_or_default_log();
      v62 = v229;
      sub_1CF9E6128();
      v63 = v223;
      sub_1CEFCCBDC(v223, v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();
      if (!os_log_type_enabled(v64, v65))
      {

        sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
        (v232)[1](v62, v233);
        v67 = v221;
LABEL_27:
        v109 = v220;
        sub_1CEFCCBDC(v63, v220, &qword_1EC4C46C0, &unk_1CFA16798);
        v110 = (*(v230 + 48))(v109, 1, v67);
        v111 = v237;
        v112 = v222;
        if (v110 != 1)
        {
          v123 = v208;
          sub_1CEFE55D0(v109, v208, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v123, v112, &unk_1EC4C4AE0, qword_1CFA17B10);
          v124 = type metadata accessor for ChangeEnumeratorAnchor(0);
          if ((*(*(v124 - 8) + 48))(v112, 1, v124) == 1)
          {
            sub_1CEFCCC44(v112, &unk_1EC4C4AE0, qword_1CFA17B10);
            v125 = 0;
          }

          else
          {
            v125 = *(v112 + *(v124 + 20));
            sub_1CF75B008(v112, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v154 = v204;
          v155 = *(*(v204 + 16) + qword_1EDEBBD08);
          v156 = swift_allocObject();
          *(v156 + 16) = v154;
          *(v156 + 24) = sub_1CF75C160;
          *(v156 + 32) = v111;
          *(v156 + 40) = v125;
          *(v156 + 48) = 0;

          v157 = v155;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v156);

          sub_1CEFCCC44(v123, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v236 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v117 = [v60 state];
          v118 = [v117 lastDropDate];

          if (v118)
          {
            v119 = v224;
            sub_1CF9E5CB8();

            v120 = 0;
            v121 = v231;
            v122 = v225;
          }

          else
          {
            v120 = 1;
            v121 = v231;
            v122 = v225;
            v119 = v224;
          }

          v126 = v235;
          (*(v121 + 56))(v119, v120, 1, v235);
          sub_1CEFE55D0(v119, v122, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v121 + 48))(v122, 1, v126) == 1)
          {

            sub_1CEFCCC44(v122, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_8;
          }

          v127 = *(v121 + 32);
          v128 = v227;
          v127(v227, v122, v126);
          v129 = v204;
          v130 = *(v204 + 16);
          v131 = v210;
          (*(v121 + 16))(v210, v128, v235);
          v132 = (*(v121 + 80) + 24) & ~*(v121 + 80);
          v133 = swift_allocObject();
          *(v133 + 16) = v129;
          v236 = v133;
          v127((v133 + v132), v131, v235);
          v234 = v130;

          v233 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v134 = qword_1EDEBBE40;
          v135 = v217;
          v136 = v226;
          v137 = v218;
          (*(v217 + 56))(v226, 1, 1, v218);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v138 = sub_1CF9E7988();
          v140 = v139;
          MEMORY[0x1D3868CC0](v138);
          v140, v141, v142, v143, v144, v145, v146, v147;
          v148 = aBlock;
          v149 = v136;
          v150 = v211;
          sub_1CEFCCBDC(v149, v211, &unk_1EC4BED20, &unk_1CFA00700);
          v151 = *(v135 + 48);
          if (v151(v150, 1, v137) == 1)
          {
            v152 = v134;
            v153 = v213;
            sub_1CF9E6048();
            if (v151(v150, 1, v137) != 1)
            {
              sub_1CEFCCC44(v150, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v153 = v213;
            (*(v135 + 32))(v213, v150, v137);
          }

          v158 = v228;
          (*(v135 + 16))(v228, v153, v137);
          v159 = v212;
          *(v158 + *(v212 + 20)) = v134;
          v160 = v158 + *(v159 + 24);
          *v160 = "DB queue wait";
          *(v160 + 8) = 13;
          *(v160 + 16) = 2;
          v161 = v134;
          v162 = sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v163 = swift_allocObject();
          *(v163 + 16) = xmmword_1CF9FA450;
          *(v163 + 56) = MEMORY[0x1E69E6158];
          *(v163 + 64) = sub_1CEFD51C4();
          *(v163 + 32) = v148;
          sub_1CF9E6028(v162, &dword_1CEFC7000, v161, "DB queue wait", 13, 2, v158, "%s", 2);
          v163, v164, v165, v166, v167, v168, v169, v170;
          (*(v135 + 8))(v153, v137);
          sub_1CEFCCC44(v226, &unk_1EC4BED20, &unk_1CFA00700);
          v230 = *(v234 + 21);
          v232 = *(v234 + 8);
          v229 = sub_1CF9E6448();
          v226 = *(v229 - 1);
          (*(v226 + 56))(v203, 1, 1, v229);
          v171 = v216;
          sub_1CEFDA27C(v158, v216, type metadata accessor for Signpost);
          v172 = (*(v214 + 80) + 16) & ~*(v214 + 80);
          v173 = (v215 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
          v174 = swift_allocObject();
          sub_1CEFD9FF4(v171, &v174[v172], type metadata accessor for Signpost);
          v175 = &v174[v173];
          v225 = nullsub_1;
          *v175 = nullsub_1;
          v175[1] = 0;
          v176 = v202;
          sub_1CEFDA27C(v158, v202, type metadata accessor for Signpost);
          v177 = (v173 + 23) & 0xFFFFFFFFFFFFFFF8;
          v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v178 + 25) & 0xFFFFFFFFFFFFFFF8;
          v180 = swift_allocObject();
          sub_1CEFD9FF4(v176, v180 + v172, type metadata accessor for Signpost);
          v181 = (v180 + v173);
          *v181 = sub_1CF045408;
          v181[1] = 0;
          *(v180 + v177) = v234;
          v182 = v180 + v178;
          *v182 = "reactToIndexDrop(dropDate:)";
          *(v182 + 8) = 27;
          *(v182 + 16) = 2;
          v183 = (v180 + v179);
          *v183 = v225;
          v183[1] = 0;
          v184 = (v180 + ((v179 + 23) & 0xFFFFFFFFFFFFFFF8));
          v185 = v226;
          v186 = v236;
          *v184 = sub_1CF75B124;
          v184[1] = v186;
          v187 = swift_allocObject();
          v187[2] = sub_1CF75C120;
          v187[3] = v174;
          v188 = v230;
          v187[4] = v230;

          v234 = v174;
          v189 = v229;

          v190 = fpfs_current_log();
          v191 = *(v188 + 16);
          v192 = v219;
          sub_1CEFCCBDC(v203, v219, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v185 + 48))(v192, 1, v189) == 1)
          {
            sub_1CEFCCC44(v192, &unk_1EC4BE370, qword_1CFA01B30);
            v193 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v194 = v205;
            sub_1CF9E6438();
            (*(v185 + 8))(v192, v189);
            v193 = sub_1CF9E63C8();
            (*(v206 + 8))(v194, v207);
          }

          v195 = swift_allocObject();
          v195[2] = v190;
          v195[3] = sub_1CF4858EC;
          v195[4] = v180;
          v241 = sub_1CF2BA17C;
          v242 = v195;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v239 = sub_1CEFCA444;
          v240 = &block_descriptor_152;
          v196 = _Block_copy(&aBlock);
          v197 = v190;

          v241 = sub_1CF2BA180;
          v242 = v187;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v239 = sub_1CEFCA444;
          v240 = &block_descriptor_155;
          v198 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v191, v232, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v193, v196, v198);
          _Block_release(v198);
          _Block_release(v196);

          sub_1CEFCCC44(v203, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v228, type metadata accessor for Signpost);
          v199 = v233;
          v200 = fpfs_adopt_log();

          (*(v231 + 8))(v227, v235);
LABEL_50:

          goto LABEL_8;
        }

        v113 = v204;
        v114 = *(*(v204 + 16) + qword_1EDEBBD08);
        v115 = swift_allocObject();
        *(v115 + 16) = v113;
        *(v115 + 24) = sub_1CF75C160;
        *(v115 + 32) = v111;
        *(v115 + 40) = 0;
        *(v115 + 48) = 256;

        v116 = v114;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v115);

LABEL_29:

        if ((v236 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v66 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *&aBlock = v201;
      *v66 = 67109378;
      *(v66 + 4) = v236 & 1;
      *(v66 + 8) = 2080;
      sub_1CEFCCBDC(v48, v45, &qword_1EC4C46C0, &unk_1CFA16798);
      v67 = v221;
      if ((*(v230 + 48))(v45, 1, v221) == 1)
      {
        v68 = 0x6F68636E61206F6ELL;
        v69 = &qword_1EC4C46C0;
        v70 = &unk_1CFA16798;
        v71 = v45;
      }

      else
      {
        sub_1CEFE55D0(v45, v40, &unk_1EC4C4AE0, qword_1CFA17B10);
        v97 = type metadata accessor for ChangeEnumeratorAnchor(0);
        if ((*(*(v97 - 8) + 48))(v40, 1, v97) != 1)
        {
          v68 = sub_1CF7D9BAC();
          v98 = v99;
          sub_1CF75B008(v40, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v68 = 0x6F68636E61206F6ELL;
        v69 = &unk_1EC4C4AE0;
        v70 = qword_1CFA17B10;
        v71 = v40;
      }

      sub_1CEFCCC44(v71, v69, v70);
      v98 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v48, &qword_1EC4C46C0, &unk_1CFA16798);
      v100 = sub_1CEFD0DF0(v68, v98, &aBlock);
      v98, v101, v102, v103, v104, v105, v106, v107;
      *(v66 + 10) = v100;
      _os_log_impl(&dword_1CEFC7000, v64, v65, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v66, 0x12u);
      v108 = v201;
      __swift_destroy_boxed_opaque_existential_1(v201);
      MEMORY[0x1D386CDC0](v108, -1, -1);
      MEMORY[0x1D386CDC0](v66, -1, -1);

      (v232)[1](v229, v233);
      goto LABEL_27;
    }
  }

  v59 = a6;
LABEL_6:
  a4(a6);

LABEL_8:
}

void sub_1CF757690(void *a1, char *a2, void *a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
  v12 = *&a2[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
  _Block_copy(a3);
  if (v12)
  {
LABEL_2:
    v13 = *&a2[v11];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = sub_1CF067718;
    v14[4] = v10;
    if (v13)
    {
      aBlock[4] = sub_1CF75BC50;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_328;
      v15 = _Block_copy(aBlock);
      v16 = a2;

      v17 = v13;

      [v17 dropIndexWithDropReason:a1 completionHandler:v15];

      _Block_release(v15);
    }

    else
    {
      v30 = a2;
    }

    return;
  }

  v18 = [a2 domain];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 provider];
    if (v20)
    {
      v37 = v20;
      v36 = [v20 providerDomainForDomain_];
      v35 = [v19 nsDomainOrNilForDefault];
      v21 = [v19 log];
      v22 = [v19 supportURL];
      sub_1CF9E59D8();

      v23 = objc_allocWithZone(MEMORY[0x1E6967420]);
      v24 = sub_1CF9E5928();
      v38 = a1;
      v25 = v24;
      (*(v7 + 8))(v9, v6);
      v27 = v35;
      v26 = v36;
      v28 = [v23 initWithDomain:v35 providerDomain:v36 log:v21 supportURL:v25 dropIndexDelegate:a2];

      a1 = v38;
      v29 = *&a2[v11];
      *&a2[v11] = v28;

      goto LABEL_2;
    }
  }

  v31 = FPDomainUnavailableError();
  if (v31)
  {
    v32 = sub_1CF9E57E8();
  }

  else
  {
    v32 = 0;
  }

  v33 = a3[2];
  v38 = v32;
  v33(a3);

  v34 = v38;
}

double sub_1CF757A54(void *a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v32 = a1;
  v7 = sub_1CF9E6118();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = swift_allocObject();
  v29 = a3;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  swift_beginAccess();
  sub_1CEFCCBDC(a2 + v20, v14, &qword_1EC4C46C0, &unk_1CFA16798);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_1CEFCCC44(v14, &qword_1EC4C46C0, &unk_1CFA16798);
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "🧲  current anchor is unknown, fetching from spotlight", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v30 + 8))(v9, v31);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1CF757EC4;
    *(v25 + 24) = v19;
    aBlock[4] = sub_1CF757ECC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF749170;
    aBlock[3] = &block_descriptor_49_1;
    v26 = _Block_copy(aBlock);

    [v32 fetchCurrentIndexingAnchorWithCompletionHandler_];
    _Block_release(v26);
  }

  else
  {
    sub_1CEFE55D0(v14, v18, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCBDC(v18, v11, &unk_1EC4C4AE0, qword_1CFA17B10);
    swift_storeEnumTagMultiPayload();

    sub_1CF749624(v11, v29);
    sub_1CEFCCC44(v11, &qword_1EC4C46B8, &qword_1CFA16790);
    sub_1CEFCCC44(v18, &unk_1EC4C4AE0, qword_1CFA17B10);
  }

  return result;
}

void sub_1CF757EEC(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6, void *a7, void *a8)
{
  v183 = a4;
  v176 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v177 = &v166 - v15;
  v178 = type metadata accessor for ChangeEnumeratorAnchor(0);
  v179 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v181 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v166 - v18;
  v19 = sub_1CF9E6118();
  v186 = *(v19 - 8);
  v187 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v185 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v166 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v166 - v25;
  v27 = swift_allocObject();
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v184 = a6;

  v174 = a7;
  v175 = a8;
  v182 = a2;
  v28 = [a2 domain];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 log];
  }

  else
  {
    v30 = 0;
  }

  v31 = fpfs_adopt_log();

  sub_1CEFCCBDC(a1, v26, &qword_1EC4C46C8, &unk_1CFA167A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = *v26;
  v189 = *v26;
  if (EnumCaseMultiPayload == 1)
  {
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = v33;
    v36 = sub_1CF9E6108();
    v37 = v33;
    v38 = sub_1CF9E72A8();

    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_getErrorValue();
      v41 = Error.prettyDescription.getter(v190, v191);
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&dword_1CEFC7000, v36, v38, "🧲  enumeration error: %@", v39, 0xCu);
      sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v186 + 8))(v23, v187);
    _s3__C4CodeOMa_1(0);
    aBlock = -1002;
    v42 = v37;
    v43 = v37;
    sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v44 = sub_1CF9E5658();

    if (v44)
    {
      v45 = swift_allocObject();
      v46 = v184;
      v45[2] = a5;
      v45[3] = v46;
      v45[4] = v189;
      v47 = swift_allocObject();
      v47[2] = sub_1CF75C0A0;
      v47[3] = v45;
      v48 = v174;
      v47[4] = v174;
      v197 = sub_1CF75C0AC;
      v198 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v194 = 1107296256;
      v195 = sub_1CF00A468;
      v196 = &block_descriptor_184_0;
      v49 = _Block_copy(&aBlock);
      v37 = v189;

      v50 = v48;
      v51 = v37;

      [v175 dropIndexWithDropReason:9 completionHandler:v49];
      _Block_release(v49);
    }

    else
    {
      a5(0, v37);
    }

    v64 = fpfs_adopt_log();
    goto LABEL_56;
  }

  v52 = *(v26 + 1);
  v170 = *(v26 + 2);
  v173 = v26[24];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8);
  sub_1CEFD9FF4(&v26[*(v53 + 96)], v188, type metadata accessor for ChangeEnumeratorAnchor);
  v199 = v52;
  aBlock = MEMORY[0x1E69E7CC0];
  v168 = (v33 >> 62);
  v172 = v27;
  v54 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
LABEL_59:
    v55 = sub_1CF9E7818();
  }

  else
  {
    v55 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = v31;
  v56 = v33 & 0xC000000000000001;
  if (!v55)
  {
    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v31 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  do
  {
    v169 = v57;
    v58 = v31;
    while (1)
    {
      if (v56)
      {
        v59 = MEMORY[0x1D3869C30](v58, v33);
      }

      else
      {
        if (v58 >= *(v54 + 16))
        {
          goto LABEL_58;
        }

        v59 = *(v33 + 8 * v58 + 32);
      }

      v60 = v59;
      v31 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ([v59 isKnownByTheProvider])
      {
        v61 = [v60 itemID];
        v62 = [v61 isDiskIdentifier];

        v33 = v189;
        if (v62)
        {
          break;
        }
      }

LABEL_15:
      ++v58;
      if (v31 == v55)
      {
        v57 = v169;
        goto LABEL_33;
      }
    }

    v63 = [v60 itemID];

    if (!v63)
    {
      goto LABEL_15;
    }

    MEMORY[0x1D3868FA0]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    v57 = aBlock;
  }

  while (v31 != v55);
LABEL_33:
  sub_1CF1E90BC(v57);
  v65 = v199;
  v66 = fpfs_current_or_default_log();
  v67 = v185;
  sub_1CF9E6128();

  v68 = sub_1CF9E6108();
  v69 = sub_1CF9E7288();
  v169 = v65;
  v65, v70, v71, v72, v73, v74, v75, v76;
  v33, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v68, v69))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock = v85;
    *v84 = 136315650;
    if (v168)
    {
      v86 = sub_1CF9E7818();
    }

    else
    {
      v86 = *(v54 + 16);
    }

    v92 = MEMORY[0x1E69E7CC0];
    if (v86)
    {
      v192 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v86 & ~(v86 >> 63), 0);
      if (v86 < 0)
      {
        __break(1u);
        v165 = v84;

        sub_1CF513A38("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 38, v84);
      }

      v166 = v85;
      v167 = v69;
      v168 = v68;
      v92 = v192;
      if (v56)
      {
        for (i = 0; i != v86; ++i)
        {
          MEMORY[0x1D3869C30](i, v189);
          v94 = [swift_unknownObjectRetain() itemID];
          v95 = [v94 identifier];
          swift_unknownObjectRelease_n();

          v192 = v92;
          v97 = *v92->tree;
          v96 = *v92->tester;
          if (v97 >= v96 >> 1)
          {
            sub_1CF680D2C((v96 > 1), v97 + 1, 1);
            v92 = v192;
          }

          *v92->tree = v97 + 1;
          *(&v92[1].super.isa + v97) = v95;
        }
      }

      else
      {
        v98 = (v33 + 32);
        do
        {
          v99 = *v98;
          v100 = [v99 itemID];
          v101 = [v100 identifier];

          v192 = v92;
          v103 = *v92->tree;
          v102 = *v92->tester;
          if (v103 >= v102 >> 1)
          {
            sub_1CF680D2C((v102 > 1), v103 + 1, 1);
            v92 = v192;
          }

          *v92->tree = v103 + 1;
          *(&v92[1].super.isa + v103) = v101;
          ++v98;
          --v86;
        }

        while (v86);
      }

      v67 = v185;
      v68 = v168;
      LOBYTE(v69) = v167;
      v85 = v166;
    }

    type metadata accessor for NSFileProviderItemIdentifier(0);
    v105 = MEMORY[0x1D3868FE0](v92, v104);
    v107 = v106;
    v92, v106, v108, v109, v110, v111, v112, v113;
    v114 = sub_1CEFD0DF0(v105, v107, &aBlock);
    v107, v115, v116, v117, v118, v119, v120, v121;
    *(v84 + 1) = v114;
    *(v84 + 6) = 2080;
    v122 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v91 = v169;
    v123 = MEMORY[0x1D3868FE0](v169, v122);
    v125 = v124;
    v126 = sub_1CEFD0DF0(v123, v124, &aBlock);
    v125, v127, v128, v129, v130, v131, v132, v133;
    *(v84 + 14) = v126;
    *(v84 + 11) = 1024;
    v84[6] = v173;
    _os_log_impl(&dword_1CEFC7000, v68, v69, "🧲  pushing batch: updating=%s, deleting=%s hasMore=%{BOOL}d", v84, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v85, -1, -1);
    MEMORY[0x1D386CDC0](v84, -1, -1);

    (*(v186 + 8))(v67, v187);
    v87 = v188;
    v33 = v189;
    v88 = v179;
    v89 = v178;
    v90 = v177;
  }

  else
  {

    (*(v186 + 8))(v67, v187);
    v87 = v188;
    v88 = v179;
    v89 = v178;
    v90 = v177;
    v91 = v169;
  }

  sub_1CEFCCBDC(v176, v90, &unk_1EC4C4AE0, qword_1CFA17B10);
  if ((*(v88 + 48))(v90, 1, v89) == 1)
  {
    sub_1CEFCCC44(v90, &unk_1EC4C4AE0, qword_1CFA17B10);
    v189 = 0;
  }

  else
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor, &unk_1CFA178B8);
    v134 = sub_1CF9E56A8();
    v136 = v135;

    sub_1CF75B008(v90, type metadata accessor for ChangeEnumeratorAnchor);
    v189 = sub_1CF9E5B48();
    sub_1CEFE4714(v134, v136);
  }

  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor, &unk_1CFA178B8);
  v137 = sub_1CF9E56A8();
  v139 = v138;

  v140 = sub_1CF9E5B48();
  sub_1CEFE4714(v137, v139);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v141 = sub_1CF9E6D28();
  v33, v142, v143, v144, v145, v146, v147, v148;
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v149 = sub_1CF9E6D28();
  v91, v150, v151, v152, v153, v154, v155, v156;
  v157 = v181;
  sub_1CEFDA27C(v87, v181, type metadata accessor for ChangeEnumeratorAnchor);
  v158 = (*(v88 + 80) + 41) & ~*(v88 + 80);
  v159 = (v180 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
  v160 = swift_allocObject();
  v161 = v182;
  *(v160 + 16) = v182;
  *(v160 + 24) = sub_1CF75C0A8;
  *(v160 + 32) = v172;
  *(v160 + 40) = v173;
  sub_1CEFD9FF4(v157, v160 + v158, type metadata accessor for ChangeEnumeratorAnchor);
  *(v160 + v159) = v170;
  v197 = sub_1CF75B5AC;
  v198 = v160;
  aBlock = MEMORY[0x1E69E9820];
  v194 = 1107296256;
  v195 = sub_1CF748AC4;
  v196 = &block_descriptor_173;
  v162 = _Block_copy(&aBlock);
  v163 = v161;

  v164 = v189;
  [v183 indexOneBatchFromAnchor:v189 toAnchor:v140 updatedItems:v141 deletedItems:v149 completionHandler:v162];
  _Block_release(v162);

  sub_1CF75B008(v188, type metadata accessor for ChangeEnumeratorAnchor);
  v31 = v171;
  v64 = fpfs_adopt_log();
LABEL_56:
}

void sub_1CF758F38(id a1, void *a2, char *a3, void *a4, void (*a5)(void, void *), uint64_t a6, void *a7, void *a8)
{
  v210 = a4;
  v215 = a3;
  v217 = a1;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  MEMORY[0x1EEE9AC00](v192);
  v193 = (&v189 - v13);
  v191 = sub_1CF9E63D8();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v205 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v216 = &v189 - v18;
  v203 = sub_1CF9E6068();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v198 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v196 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v212 = &v189 - v23;
  v197 = type metadata accessor for Signpost(0);
  v199 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v204 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v189 - v26;
  v200 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v189 - v29;
  v209 = sub_1CF9E6118();
  v208 = *(v209 - 1);
  MEMORY[0x1EEE9AC00](v209);
  v218 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v206 = *(v31 - 8);
  v32 = *(v206 + 8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v195 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v219 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v207 = &v189 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v189 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v189 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v222 = &v189 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v189 - v46);
  v48 = swift_allocObject();
  v214 = a5;
  v48[2] = a5;
  v48[3] = a6;
  v48[4] = a7;
  v48[5] = a8;
  v223 = v48;
  v221 = a6;
  swift_retain_n();
  v49 = a7;
  v50 = a8;
  v51 = v49;
  v220 = v50;
  v211 = a2;
  v52 = [a2 domain];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 log];
  }

  else
  {
    v54 = 0;
  }

  v55 = fpfs_adopt_log();

  sub_1CEFCCBDC(v217, v47, &qword_1EC4C46B8, &qword_1CFA16790);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v218;
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *v47;
    _s3__C4CodeOMa_1(0);
    *&aBlock = -1002;
    v59 = v58;
    v60 = v58;
    sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v61 = sub_1CF9E5658();

    if (v61)
    {
      v62 = swift_allocObject();
      v63 = v221;
      v62[2] = v214;
      v62[3] = v63;
      v62[4] = v58;
      v64 = swift_allocObject();
      v64[2] = sub_1CF75B068;
      v64[3] = v62;
      v64[4] = v51;
      v227 = sub_1CF75B0A4;
      v228 = v64;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v225 = sub_1CF00A468;
      v226 = &block_descriptor_124;
      v65 = _Block_copy(&aBlock);

      v66 = v51;
      v67 = v58;

      v68 = v220;
      [v220 dropIndexWithDropReason:7 completionHandler:v65];
      _Block_release(v65);
    }

    else
    {
      v214(0, v58);
      v68 = v220;
    }

    goto LABEL_29;
  }

  v217 = v55;
  v69 = v47;
  v70 = v222;
  sub_1CEFE55D0(v69, v222, &unk_1EC4C4AE0, qword_1CFA17B10);
  v71 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v70, v42, &unk_1EC4C4AE0, qword_1CFA17B10);
  v72 = sub_1CF9E6108();
  v73 = sub_1CF9E7288();
  v74 = os_log_type_enabled(v72, v73);
  v194 = v51;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&aBlock = v76;
    *v75 = 136315138;
    sub_1CEFCCBDC(v42, v39, &unk_1EC4C4AE0, qword_1CFA17B10);
    v77 = type metadata accessor for ChangeEnumeratorAnchor(0);
    if ((*(*(v77 - 8) + 48))(v39, 1, v77) == 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4C4AE0, qword_1CFA17B10);
      v78 = 0xE500000000000000;
      v79 = 0x3E6C696E3CLL;
    }

    else
    {
      v79 = sub_1CF7D9BAC();
      v78 = v80;
      sub_1CF75B008(v39, type metadata accessor for ChangeEnumeratorAnchor);
    }

    sub_1CEFCCC44(v42, &unk_1EC4C4AE0, qword_1CFA17B10);
    v81 = sub_1CEFD0DF0(v79, v78, &aBlock);
    v78, v82, v83, v84, v85, v86, v87, v88;
    *(v75 + 4) = v81;
    _os_log_impl(&dword_1CEFC7000, v72, v73, "🧲  indexing from %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1D386CDC0](v76, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);
  }

  else
  {

    sub_1CEFCCC44(v42, &unk_1EC4C4AE0, qword_1CFA17B10);
  }

  (*(v208 + 8))(v57, v209);
  v89 = v219;
  v90 = v222;
  v91 = v207;
  sub_1CEFCCBDC(v222, v207, &unk_1EC4C4AE0, qword_1CFA17B10);
  sub_1CEFCCBDC(v91, v89, &unk_1EC4C4AE0, qword_1CFA17B10);
  v92 = *(v206 + 80);
  v93 = (v92 + 40) & ~v92;
  v218 = (v32 + 7);
  v94 = swift_allocObject();
  v95 = v211;
  v94[2] = v211;
  v94[3] = sub_1CF75C0A8;
  v94[4] = v223;
  sub_1CEFE55D0(v91, v94 + v93, &unk_1EC4C4AE0, qword_1CFA17B10);
  v96 = v210;
  *(v94 + ((v32 + 7 + v93) & 0xFFFFFFFFFFFFFFF8)) = v210;
  Strong = swift_weakLoadStrong();
  v98 = v96;

  v99 = v95;
  if (Strong)
  {
    v100 = v94;
    sub_1CEFCCC44(v219, &unk_1EC4C4AE0, qword_1CFA17B10);
    v101 = *(Strong + 16);
    v102 = v195;
    sub_1CEFCCBDC(v90, v195, &unk_1EC4C4AE0, qword_1CFA17B10);
    v103 = Strong;
    v104 = (v92 + 24) & ~v92;
    v105 = &v218[v104] & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
    v107 = swift_allocObject();
    *(v107 + 16) = v103;
    sub_1CEFE55D0(v102, v107 + v104, &unk_1EC4C4AE0, qword_1CFA17B10);
    v108 = (v107 + v105);
    *v108 = sub_1CF75AFE4;
    v108[1] = v100;
    *(v107 + v106) = 200;
    v218 = v107;
    *(v107 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8)) = v215;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1CF75AFE4;
    *(v109 + 24) = v100;
    v219 = v109;
    v214 = v101;
    v211 = v100;
    swift_retain_n();
    v210 = v103;

    v215 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v110 = qword_1EDEBBE40;
    v111 = v202;
    v112 = v212;
    v113 = v203;
    (*(v202 + 56))(v212, 1, 1, v203);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v114 = sub_1CF9E7988();
    v116 = v115;
    MEMORY[0x1D3868CC0](v114);
    v116, v117, v118, v119, v120, v121, v122, v123;
    v124 = aBlock;
    v125 = v112;
    v126 = v196;
    sub_1CEFCCBDC(v125, v196, &unk_1EC4BED20, &unk_1CFA00700);
    v127 = *(v111 + 48);
    v128 = v127(v126, 1, v113);
    v129 = v198;
    if (v128 == 1)
    {
      v130 = v110;
      sub_1CF9E6048();
      if (v127(v126, 1, v113) != 1)
      {
        sub_1CEFCCC44(v126, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v111 + 32))(v198, v126, v113);
    }

    v141 = v213;
    (*(v111 + 16))(v213, v129, v113);
    v142 = v197;
    *(v141 + *(v197 + 20)) = v110;
    v143 = v141 + *(v142 + 24);
    *v143 = "DB queue wait";
    *(v143 + 8) = 13;
    *(v143 + 16) = 2;
    v144 = v110;
    v145 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_1CF9FA450;
    *(v146 + 56) = MEMORY[0x1E69E6158];
    *(v146 + 64) = sub_1CEFD51C4();
    *(v146 + 32) = v124;
    sub_1CF9E6028(v145, &dword_1CEFC7000, v144, "DB queue wait", 13, 2, v141, "%s", 2);
    v146, v147, v148, v149, v150, v151, v152, v153;
    (*(v111 + 8))(v129, v113);
    sub_1CEFCCC44(v212, &unk_1EC4BED20, &unk_1CFA00700);
    v209 = *(v214 + 21);
    v212 = *(v214 + 8);
    v207 = sub_1CF9E6448();
    v208 = *(v207 - 8);
    (*(v208 + 56))(v216, 1, 1, v207);
    v154 = v201;
    sub_1CEFDA27C(v141, v201, type metadata accessor for Signpost);
    v155 = (*(v199 + 80) + 16) & ~*(v199 + 80);
    v156 = (v200 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
    v157 = swift_allocObject();
    sub_1CEFD9FF4(v154, v157 + v155, type metadata accessor for Signpost);
    v158 = (v157 + v156);
    v206 = sub_1CF75B000;
    v159 = v219;
    *v158 = sub_1CF75B000;
    v158[1] = v159;
    v160 = v204;
    sub_1CEFDA27C(v141, v204, type metadata accessor for Signpost);
    v161 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
    v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
    v163 = (v162 + 25) & 0xFFFFFFFFFFFFFFF8;
    v164 = (v163 + 23) & 0xFFFFFFFFFFFFFFF8;
    v165 = swift_allocObject();
    sub_1CEFD9FF4(v160, v165 + v155, type metadata accessor for Signpost);
    v166 = (v165 + v156);
    *v166 = sub_1CF045408;
    v166[1] = 0;
    *(v165 + v161) = v214;
    v167 = v165 + v162;
    v168 = v207;
    *v167 = "enumerateChanges(fromAnchor:suggestedBatchSize:reply:)";
    *(v167 + 8) = 54;
    *(v167 + 16) = 2;
    v169 = (v165 + v163);
    v170 = v218;
    v171 = v219;
    *v169 = v206;
    v169[1] = v171;
    v172 = (v165 + v164);
    *v172 = sub_1CF75AFE8;
    v172[1] = v170;
    v173 = swift_allocObject();
    v173[2] = sub_1CF5526E8;
    v173[3] = v157;
    v174 = v209;
    v173[4] = v209;
    swift_retain_n();

    v214 = v157;
    v175 = v208;

    v176 = fpfs_current_log();
    v209 = v174[2];
    v177 = v205;
    sub_1CEFCCBDC(v216, v205, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v175 + 48))(v177, 1, v168) == 1)
    {
      sub_1CEFCCC44(v177, &unk_1EC4BE370, qword_1CFA01B30);
      v178 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v179 = v189;
      sub_1CF9E6438();
      (*(v175 + 8))(v177, v168);
      v178 = sub_1CF9E63C8();
      (*(v190 + 8))(v179, v191);
    }

    v180 = v222;
    v181 = swift_allocObject();
    v181[2] = v176;
    v181[3] = sub_1CF48100C;
    v181[4] = v165;
    v227 = sub_1CEFCA438;
    v228 = v181;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v225 = sub_1CEFCA444;
    v226 = &block_descriptor_112_0;
    v182 = _Block_copy(&aBlock);
    v183 = v176;

    v227 = sub_1CF2AF9E8;
    v228 = v173;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v225 = sub_1CEFCA444;
    v226 = &block_descriptor_115;
    v184 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v209, v212, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v178, v182, v184);
    _Block_release(v184);
    _Block_release(v182);

    sub_1CEFCCC44(v216, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF75B008(v213, type metadata accessor for Signpost);
    v185 = v215;
    v186 = fpfs_adopt_log();

    sub_1CEFCCC44(v180, &unk_1EC4C4AE0, qword_1CFA17B10);

    v68 = v220;
    v51 = v194;
    goto LABEL_28;
  }

  v131 = v90;
  v132 = v99;
  v133 = FPDomainUnavailableError();
  v134 = v194;
  if (v133)
  {
    v135 = v193;
    *v193 = v133;
    swift_storeEnumTagMultiPayload();
    v136 = v221;

    v137 = v134;
    v68 = v220;
    v138 = v220;
    v139 = v219;
    sub_1CF757EEC(v135, v132, v219, v98, v214, v136, v137, v138);

    sub_1CEFCCC44(v135, &qword_1EC4C46C8, &unk_1CFA167A8);
    v140 = v139;
    v51 = v194;
    sub_1CEFCCC44(v140, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCC44(v131, &unk_1EC4C4AE0, qword_1CFA17B10);
LABEL_28:
    v55 = v217;
LABEL_29:
    v187 = fpfs_adopt_log();

    return;
  }

  v188 = v220;

  sub_1CEFCCC44(v219, &unk_1EC4C4AE0, qword_1CFA17B10);
  __break(1u);
}

void sub_1CF75A564(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_1CF9E6118();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v82 - v11;
  v12 = sub_1CF9E5A58();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  _Block_copy(a2);
  *v18 = [a1 queue];
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = sub_1CF9E64D8();
  (*(v16 + 8))(v18, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v21 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator];
  if (v21)
  {

    v22 = [a1 domain];
    v97 = v19;
    if (v22)
    {
      v23 = v22;
      v24 = [v22 provider];
      if (v24)
      {
        v87 = v24;
        v25 = [v24 providerDomainForDomain_];
        v26 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
        v27 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
        v86 = v25;
        v85 = v27;
        if (v27)
        {
          v28 = v27;
          v29 = [v23 nsDomainOrNilForDefault];
          [v28 setDomain_];

          [v28 setProviderDomain_];
        }

        else
        {
          v84 = [v23 nsDomainOrNilForDefault];
          v83 = v25;
          v34 = [v23 log];
          v35 = [v23 supportURL];
          sub_1CF9E59D8();

          v36 = v23;
          v37 = objc_allocWithZone(MEMORY[0x1E6967420]);
          v38 = sub_1CF9E5928();
          (*(v88 + 8))(v14, v12);
          v39 = v37;
          v23 = v36;
          v40 = v84;
          v41 = v83;
          v42 = [v39 initWithDomain:v84 providerDomain:v83 log:v34 supportURL:v38 dropIndexDelegate:a1];

          v43 = *&a1[v26];
          *&a1[v26] = v42;
          v28 = v42;
        }

        v44 = swift_allocObject();
        v45 = v97;
        v44[2] = sub_1CF75AFC0;
        v44[3] = v45;
        v44[4] = a1;
        v44[5] = v28;
        v46 = swift_allocObject();
        v46[2] = a1;
        v46[3] = sub_1CF75AFC8;
        v46[4] = v44;
        v46[5] = v21;
        v46[6] = v28;
        v47 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
        swift_beginAccess();
        sub_1CEFCCBDC(&a1[v47], v9, &qword_1EC4C46C0, &unk_1CFA16798);
        if ((*(v94 + 48))(v9, 1, v95) == 1)
        {
          v48 = v85;
          v49 = a1;
          v50 = v28;
          swift_retain_n();

          v51 = v49;
          v52 = v50;
          v53 = v51;
          v54 = v52;
          swift_retain_n();
          v55 = v53;
          v56 = v54;
          v57 = v55;
          v58 = v56;
          sub_1CEFCCC44(v9, &qword_1EC4C46C0, &unk_1CFA16798);
          v59 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v60 = sub_1CF9E6108();
          v61 = sub_1CF9E7298();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v95 = v58;
            v63 = v23;
            v64 = v62;
            *v62 = 0;
            _os_log_impl(&dword_1CEFC7000, v60, v61, "🧲  current anchor is unknown, fetching from spotlight", v62, 2u);
            v65 = v64;
            v23 = v63;
            v58 = v95;
            MEMORY[0x1D386CDC0](v65, -1, -1);
          }

          (*(v92 + 8))(v96, v93);
          v66 = swift_allocObject();
          *(v66 + 16) = sub_1CF75AFD4;
          *(v66 + 24) = v46;
          aBlock[4] = sub_1CF75C15C;
          aBlock[5] = v66;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CF749170;
          aBlock[3] = &block_descriptor_84_0;
          v67 = _Block_copy(aBlock);

          [v58 fetchCurrentIndexingAnchorWithCompletionHandler_];
          _Block_release(v67);
        }

        else
        {
          v68 = v90;
          sub_1CEFE55D0(v9, v90, &unk_1EC4C4AE0, qword_1CFA17B10);
          v69 = v91;
          sub_1CEFCCBDC(v68, v91, &unk_1EC4C4AE0, qword_1CFA17B10);
          swift_storeEnumTagMultiPayload();
          v70 = v85;
          v71 = a1;
          v72 = v28;
          v96 = v23;
          v73 = v72;
          swift_retain_n();

          v74 = v71;
          v75 = v73;
          v76 = v74;
          v77 = v75;
          swift_retain_n();
          v78 = v76;
          v79 = v77;
          v80 = v78;
          v81 = v79;
          v23 = v96;
          sub_1CF758F38(v69, v80, v21, v81, sub_1CF75AFC0, v97, v80, v81);
          sub_1CEFCCC44(v69, &qword_1EC4C46B8, &qword_1CFA16790);
          sub_1CEFCCC44(v68, &unk_1EC4C4AE0, qword_1CFA17B10);
        }

        return;
      }
    }

    v32 = FPDomainUnavailableError();
    if (v32)
    {
      v33 = sub_1CF9E57E8();
    }

    else
    {
      v33 = 0;
    }

    (a2)[2](a2, 0, v33);
  }

  else
  {
    v30 = FPDomainUnavailableError();
    if (v30)
    {
      v31 = sub_1CF9E57E8();
    }

    else
    {
      v31 = 0;
    }

    (a2)[2](a2, 0, v31);
  }
}