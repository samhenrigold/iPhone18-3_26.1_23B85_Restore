void sub_225A61F2C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 120) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = ((((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_225A62224(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_225CCEFC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_225A62270(uint64_t a1)
{
  sub_225A62724(319);
  if (v1 <= 0x3F)
  {
    sub_225A62788();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_225A62330(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 144) & ~v6) + v7;
  v11 = 8 * (((v6 - 112) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((((a1 + 5) & 0xFFFFFFFFFFFFFFF8) + 135) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_225A624C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 144) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 112) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 112) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 135) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_225A62724(uint64_t a1)
{
  if (!qword_27D73B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B4A0, &qword_225CD98F8);
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D73B670);
    }
  }
}

void sub_225A62788()
{
  if (!qword_27D73B678)
  {
    v0 = sub_225CCE324();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73B678);
    }
  }
}

uint64_t sub_225A62808(uint64_t a1)
{
  result = sub_225CCEFC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A628A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 120) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v18 = (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 2)
        {
          return v17 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_225A62A64(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 120) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *(a1 + v13) = v19;
              }

              else
              {
                *(a1 + v13) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      *(a1 + v13) = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v13) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_225A62D84(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[120])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A62DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared12HPKEEnvelopeVySDySSAA7AEADKeyVGGSg(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_225A62EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 232))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 128);
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

uint64_t sub_225A62F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 1;
    }
  }

  return result;
}

void sub_225A62FF8(uint64_t a1)
{
  type metadata accessor for SecKey(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SESKeyForHPKE(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_225A63074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225A630C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225A63160(uint64_t a1)
{
  result = sub_225CCEFC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A631E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_225A633A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_225A636CC(uint64_t a1)
{
  sub_225A63790();
  if (v1 <= 0x3F)
  {
    sub_225CCDDB4();
    if (v2 <= 0x3F)
    {
      sub_225A62224(319, &qword_28105B790, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_225A637E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_225A63790()
{
  result = qword_27D73B7A0;
  if (!qword_27D73B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B7A8, &qword_225CDAE48);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D73B7A0);
  }

  return result;
}

void sub_225A637E4(uint64_t a1)
{
  if (!qword_27D73B7B0[0])
  {
    type metadata accessor for HPKEPrivateKey(255);
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, qword_27D73B7B0);
    }
  }
}

unint64_t sub_225A638D8()
{
  result = qword_27D73B9B8;
  if (!qword_27D73B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9B8);
  }

  return result;
}

unint64_t sub_225A6394C()
{
  result = qword_27D73B9C0;
  if (!qword_27D73B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9C0);
  }

  return result;
}

unint64_t sub_225A639A4()
{
  result = qword_27D73B9C8;
  if (!qword_27D73B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9C8);
  }

  return result;
}

unint64_t sub_225A639FC()
{
  result = qword_27D73B9D0;
  if (!qword_27D73B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9D0);
  }

  return result;
}

unint64_t sub_225A63A54()
{
  result = qword_27D73B9D8;
  if (!qword_27D73B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9D8);
  }

  return result;
}

unint64_t sub_225A63B00()
{
  result = qword_27D73B9E0;
  if (!qword_27D73B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9E0);
  }

  return result;
}

unint64_t sub_225A63B58()
{
  result = qword_27D73B9E8;
  if (!qword_27D73B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9E8);
  }

  return result;
}

unint64_t sub_225A63BB0()
{
  result = qword_27D73B9F0;
  if (!qword_27D73B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9F0);
  }

  return result;
}

unint64_t sub_225A63C08()
{
  result = qword_27D73B9F8;
  if (!qword_27D73B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B9F8);
  }

  return result;
}

unint64_t sub_225A63C60()
{
  result = qword_27D73BA00;
  if (!qword_27D73BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA00);
  }

  return result;
}

unint64_t sub_225A63CB8()
{
  result = qword_27D73BA08;
  if (!qword_27D73BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA08);
  }

  return result;
}

unint64_t sub_225A63D10()
{
  result = qword_27D73BA10;
  if (!qword_27D73BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA10);
  }

  return result;
}

unint64_t sub_225A63D68()
{
  result = qword_27D73BA18;
  if (!qword_27D73BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA18);
  }

  return result;
}

unint64_t sub_225A63DF8()
{
  result = qword_27D73BA20;
  if (!qword_27D73BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA20);
  }

  return result;
}

unint64_t sub_225A63E50()
{
  result = qword_27D73BA28;
  if (!qword_27D73BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA28);
  }

  return result;
}

unint64_t sub_225A63F14()
{
  result = qword_27D73BA30;
  if (!qword_27D73BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA30);
  }

  return result;
}

unint64_t sub_225A63F68()
{
  result = qword_27D73BA38;
  if (!qword_27D73BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BA38);
  }

  return result;
}

uint64_t dispatch thunk of HPKESuite.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 24))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 32))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_225A640BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC9E4();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONEncoder;
  v16[0] = sub_225CCC9D4();
  (*(a5 + 24))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_225A6419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC994();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONDecoder;
  v16[0] = sub_225CCC984();
  (*(a5 + 40))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_225A6427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_225CCC9E4();
  swift_allocObject();
  v16[3] = v13;
  v16[4] = &protocol witness table for JSONEncoder;
  v16[0] = sub_225CCC9D4();
  (*(a5 + 32))(a1, a2, v16, a4, a6, a7, a3, a5);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter()
{
  v0 = sub_225CCE214();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x28223BE20](v0);
  v31 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_225CCDB34();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCE0F4();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCE014();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDF14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v35, v17, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = v34;
      (*(v34 + 32))(v10, v17, v8);
      v21 = sub_225CCDFE4();
      (*(v26 + 8))(v10, v8);
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
      v21 = sub_225CCDEE4();
      (*(v12 + 8))(v14, v11);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v22 = v28;
    (*(v28 + 32))(v7, v17, v5);
    v21 = sub_225CCE0C4();
    (*(v22 + 8))(v7, v5);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v20 = v29;
    v19 = v30;
    (*(v29 + 32))(v4, v17, v30);
    v21 = sub_225CCDB04();
    (*(v20 + 8))(v4, v19);
  }

  else
  {
    v23 = v31;
    v24 = v32;
    v25 = v33;
    (*(v32 + 32))(v31, v17, v33);
    v21 = sub_225CCE1E4();
    (*(v24 + 8))(v23, v25);
  }

  return v21;
}

uint64_t sub_225A64868(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = sub_225CCE4D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCE4C4();
  v12 = sub_225CCE484();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a3 = v12;
    *a4 = v14;
    *a5 = 32;
  }

  return result;
}

uint64_t sub_225A649A8(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = sub_225CCE4D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCE4C4();
  v12 = sub_225CCE484();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a3 = v12;
    *a4 = v14;
    *a5 = 16;
  }

  return result;
}

uint64_t sub_225A64AE8()
{
  result = sub_2259D8490(&unk_2838FBBC8);
  qword_27D73BAA8 = result;
  unk_27D73BAB0 = v1;
  return result;
}

uint64_t sub_225A64B14()
{
  result = sub_2259D8490(&unk_2838FBBF0);
  qword_27D73BAB8 = result;
  unk_27D73BAC0 = v1;
  return result;
}

uint64_t ISO18013SessionCryptarch.Role.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

CoreIDVShared::ISO18013SessionCryptarch::Curve_optional __swiftcall ISO18013SessionCryptarch.Curve.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ISO18013SessionCryptarch.Curve.rawValue.getter()
{
  v1 = *v0;
  v2 = 909455952;
  v3 = 825374032;
  v4 = 0x393135353258;
  if (v1 != 3)
  {
    v4 = 942945368;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 876098384;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225A64CB8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A64D78(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A64E24()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A64EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 909455952;
  v5 = 0xE400000000000000;
  v6 = 825374032;
  v7 = 0xE600000000000000;
  v8 = 0x393135353258;
  if (v2 != 3)
  {
    v8 = 942945368;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 876098384;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ISO18013SessionCryptarch.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t ISO18013SessionCryptarch.PublicKey.init(curve:data:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v8 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  v23 = *a1;
  if (v23 <= 1)
  {
    if (*a1)
    {
      v25 = a2;
      v26 = a3;
      result = sub_225CCDFA4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
      v22 = v20;
    }

    else
    {
      v25 = a2;
      v26 = a3;
      result = sub_225CCDE74();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else if (v23 == 2)
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCE084();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v17;
  }

  else if (v23 == 3)
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCDAC4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v14;
  }

  else
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCE1A4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v11;
  }

  return sub_225A66304(v22, v27, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
}

uint64_t ISO18013SessionCryptarch.PublicKey.publicKeyData.getter()
{
  v0 = sub_225CCE1B4();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x28223BE20](v0);
  v34 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_225CCDAD4();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCE094();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCDFB4();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDEA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v38, v17, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = v37;
      v29 = (*(v37 + 32))(v10, v17, v8);
      v21 = MEMORY[0x22AA6C7D0](v29);
      (*(v28 + 8))(v10, v8);
    }

    else
    {
      v22 = (*(v12 + 32))(v14, v17, v11);
      v21 = MEMORY[0x22AA6C6A0](v22);
      (*(v12 + 8))(v14, v11);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v23 = v31;
    v24 = (*(v31 + 32))(v7, v17, v5);
    v21 = MEMORY[0x22AA6C8B0](v24);
    (*(v23 + 8))(v7, v5);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v20 = v32;
    v19 = v33;
    (*(v32 + 32))(v4, v17, v33);
    v21 = sub_225CCDAB4();
    (*(v20 + 8))(v4, v19);
  }

  else
  {
    v25 = v34;
    v26 = v35;
    v27 = v36;
    (*(v35 + 32))(v34, v17, v36);
    v21 = sub_225CCE194();
    (*(v26 + 8))(v25, v27);
  }

  return v21;
}

uint64_t sub_225A6577C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter()
{
  v0 = sub_225CCE1B4();
  v56 = *(v0 - 8);
  v57 = v0;
  MEMORY[0x28223BE20](v0);
  v54 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_225CCE214();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_225CCDAD4();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_225CCDB34();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCE094();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_225CCE0F4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_225CCDFB4();
  v39 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCE014();
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCDEA4();
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCDF14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v60, v23, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v60 = v14;
    v32 = v58;
    if (EnumCaseMultiPayload)
    {
      v35 = v59;
      (*(v59 + 32))(v13, v23, v11);
      v36 = sub_225CCDFD4();
      v29 = MEMORY[0x22AA6C7D0](v36);
      (*(v39 + 8))(v10, v32);
      (*(v35 + 8))(v13, v11);
    }

    else
    {
      (*(v18 + 32))(v20, v23, v17);
      v33 = sub_225CCDEC4();
      v29 = MEMORY[0x22AA6C6A0](v33);
      (*(v38 + 8))(v16, v60);
      (*(v18 + 8))(v20, v17);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = v40;
      v25 = v41;
      v27 = v43;
      (*(v41 + 32))(v40, v23, v43);
      v28 = v42;
      v34 = sub_225CCE0B4();
      v29 = MEMORY[0x22AA6C8B0](v34);
      v31 = v44;
      v30 = v45;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v26 = v46;
      v25 = v47;
      v27 = v49;
      (*(v47 + 32))(v46, v23, v49);
      v28 = v48;
      sub_225CCDAF4();
      v29 = sub_225CCDAB4();
      v31 = v50;
      v30 = v51;
    }

    else
    {
      v26 = v52;
      v25 = v53;
      v27 = v55;
      (*(v53 + 32))(v52, v23, v55);
      v28 = v54;
      sub_225CCE1D4();
      v29 = sub_225CCE194();
      v31 = v56;
      v30 = v57;
    }

    (*(v31 + 8))(v28, v30);
    (*(v25 + 8))(v26, v27);
  }

  return v29;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.init(curve:)(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1)
  {
    if (*a1)
    {
      sub_225CCE004();
    }

    else
    {
      sub_225CCDF04();
    }
  }

  else if (v2 == 2)
  {
    sub_225CCE0E4();
  }

  else if (v2 == 3)
  {
    sub_225CCDB24();
  }

  else
  {
    sub_225CCE204();
  }

  type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ISO18013SessionCryptarch.PrivateKey.init(curve:data:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v8 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  v23 = *a1;
  if (v23 <= 1)
  {
    if (*a1)
    {
      v25 = a2;
      v26 = a3;
      result = sub_225CCDFF4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
      v22 = v20;
    }

    else
    {
      v25 = a2;
      v26 = a3;
      result = sub_225CCDEF4();
      if (v4)
      {
        return result;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else if (v23 == 2)
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCE0D4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v17;
  }

  else if (v23 == 3)
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCDB14();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v14;
  }

  else
  {
    v25 = a2;
    v26 = a3;
    result = sub_225CCE1F4();
    if (v4)
    {
      return result;
    }

    swift_storeEnumTagMultiPayload();
    v22 = v11;
  }

  return sub_225A66304(v22, v27, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
}

uint64_t sub_225A66304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013SessionCryptarch.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v93 = a2;
  v74 = sub_225CCE1B4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_225CCE214();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_225CCDAD4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCDB34();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_225CCE094();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCE0F4();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDFB4();
  v91 = *(v11 - 8);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v90 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCE014();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v87 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage(0);
  v15 = MEMORY[0x28223BE20](v95);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v65 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v65 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v26 = sub_225CCDEA4();
  v65 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_225CCDF14();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225A6577C(v94, v35, type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v78;
      v38 = v79;
      v39 = v80;
      (*(v79 + 32))(v78, v35, v80);
      v50 = v75;
      sub_225A6577C(v96, v75, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v41 = v67;
        v42 = v66;
        v43 = v68;
        (*(v67 + 32))(v66, v50, v68);
        sub_225CCE0A4();
        goto LABEL_11;
      }

      sub_225A678AC(v50, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v99 = 4;
      v58 = 0x8000000225D19FC0;
      v59 = &v99;
      v60 = 0xD00000000000001CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v37 = v81;
      v38 = v82;
      v39 = v83;
      (*(v82 + 32))(v81, v35, v83);
      v40 = v76;
      sub_225A6577C(v96, v76, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v41 = v70;
        v42 = v69;
        v43 = v71;
        (*(v70 + 32))(v69, v40, v71);
        sub_225CCDAE4();
LABEL_11:
        (*(v41 + 8))(v42, v43);
        return (*(v38 + 8))(v37, v39);
      }

      sub_225A678AC(v40, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v100 = 4;
      v60 = 0xD00000000000001FLL;
      v58 = 0x8000000225D19FA0;
      v59 = &v100;
    }

    else
    {
      v37 = v84;
      v38 = v85;
      v39 = v86;
      (*(v85 + 32))(v84, v35, v86);
      v51 = v77;
      sub_225A6577C(v96, v77, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v52 = v73;
        v53 = v72;
        v54 = v74;
        (*(v73 + 32))(v72, v51, v74);
        sub_225CCE1C4();
        (*(v52 + 8))(v53, v54);
        return (*(v38 + 8))(v37, v39);
      }

      sub_225A678AC(v51, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v101 = 4;
      v60 = 0xD00000000000001DLL;
      v58 = 0x8000000225D19F80;
      v59 = &v101;
    }

    ISO18013SessionError(_:code:fromError:)(v60, v58, v59, 0);
    swift_willThrow();
    return (*(v38 + 8))(v37, v39);
  }

  v86 = v28;
  v94 = v26;
  v44 = v30;
  v45 = v90;
  v46 = v91;
  v47 = v92;
  if (EnumCaseMultiPayload)
  {
    v55 = v88;
    v56 = v87;
    v57 = v89;
    (*(v88 + 32))(v87, v35, v89);
    sub_225A6577C(v96, v23, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v46 + 32))(v45, v23, v47);
      sub_225CCDFC4();
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      sub_225A678AC(v23, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v98 = 4;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001CLL, 0x8000000225D19FE0, &v98, 0);
      swift_willThrow();
    }

    return (*(v55 + 8))(v56, v57);
  }

  else
  {
    v48 = v44;
    v49 = v32;
    (*(v44 + 32))(v32, v35, v29);
    sub_225A6577C(v96, v25, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_225A678AC(v25, type metadata accessor for ISO18013SessionCryptarch.PublicKey.Storage);
      v97 = 4;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001CLL, 0x8000000225D1A000, &v97, 0);
      swift_willThrow();
    }

    else
    {
      v62 = v65;
      v63 = v86;
      v64 = v94;
      (*(v65 + 32))(v86, v25, v94);
      sub_225CCDEB4();
      (*(v62 + 8))(v63, v64);
    }

    return (*(v48 + 8))(v49, v29);
  }
}

uint64_t sub_225A66FF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8, &qword_225CDB958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  sub_225A0DE54(a1, &v11[-v5], &qword_27D73BAD8, &qword_225CDB958);
  v7 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
  v12 = v6;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_225A6F704(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  return sub_2259CB640(v6, &qword_27D73BAD8, &qword_225CDB958);
}

void sub_225A67184(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + *a1);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_225A0DE54(v8 + v9, a4, a2, a3);

  os_unfair_lock_unlock((v8 + v10));
}

void sub_225A67238(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *(*a1 + *a2);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_225A0DE54(v8 + v9, a5, a3, a4);

  os_unfair_lock_unlock((v8 + v10));
}

uint64_t sub_225A672F0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  sub_225A0DE54(a1, &v11[-v5], &qword_27D73BAE8, &qword_225CDB960);
  v7 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  v12 = v6;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_225A6F6EC(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  return sub_2259CB640(v6, &qword_27D73BAE8, &qword_225CDB960);
}

uint64_t sub_225A67440(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  sub_225A0DE54(a1, &v11[-v5], &qword_27D73BAE8, &qword_225CDB960);
  v7 = *(*a2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
  v12 = v6;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_225A6F5F8(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  return sub_2259CB640(v6, &qword_27D73BAE8, &qword_225CDB960);
}

uint64_t sub_225A6758C(void *a1)
{
  v2 = *(v1 + *a1);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 5);
  return os_unfair_lock_opaque;
}

BOOL sub_225A675F0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  v9 = *(v2 + *v8);
  v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_225A0DE54(v9 + v10, v7, &qword_27D73BAE8, &qword_225CDB960);
  os_unfair_lock_unlock((v9 + v11));
  v12 = sub_225CCDC44();
  v13 = (*(*(v12 - 8) + 48))(v7, 1, v12) != 1;
  sub_2259CB640(v7, &qword_27D73BAE8, &qword_225CDB960);
  return v13;
}

uint64_t ISO18013SessionCryptarch.publicKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8, &qword_225CDB950);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_225A0DE54(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &v7 - v2, &qword_27D73BAC8, &qword_225CDB950);
  v4 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_2259CB640(v3, &qword_27D73BAC8, &qword_225CDB950);
    return 0;
  }

  else
  {
    v6 = ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter();
    sub_225A678AC(v3, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    return v6;
  }
}

uint64_t sub_225A678AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013SessionCryptarch.__allocating_init(role:curve:variant:localKey:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  ISO18013SessionCryptarch.init(role:curve:variant:localKey:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ISO18013SessionCryptarch.init(role:curve:variant:localKey:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v45[2] = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8, &qword_225CDB950);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8, &qword_225CDB958);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v45 - v15;
  v17 = *a1;
  v48 = *a2;
  v49 = *a3;
  v50 = v17;
  v18 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey;
  v19 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB08, &qword_225CDB968);
  v20 = swift_allocObject();
  *(v20 + ((*(*v20 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v21 = MEMORY[0x277D841D0];
  sub_2259D88EC(v16, v20 + *(*v20 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAD8, &qword_225CDB958);
  v45[3] = v18;
  *(v5 + v18) = v20;
  v22 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  v23 = sub_225CCDC44();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB10, &qword_225CDB970);
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v13, v25 + *(*v25 + *v21 + 16), &qword_27D73BAE8, &qword_225CDB960);
  v26 = v22;
  v45[1] = v22;
  v27 = v47;
  *(v47 + v26) = v25;
  v28 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  v24(v13, 1, 1, v23);
  v29 = swift_allocObject();
  *(v29 + ((*(*v29 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v13, v29 + *(*v29 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAE8, &qword_225CDB960);
  *(v27 + v28) = v29;
  v30 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB18, &unk_225CDB978);
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  *(v27 + v30) = v31;
  v32 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter;
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = 1;
  *(v27 + v32) = v33;
  *(v27 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve) = v34;
  v35 = v49;
  *(v27 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role) = v50;
  *(v27 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) = v35;
  if (v35)
  {
    sub_2259BEF00(v53, v52);
    v36 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey;
    v37 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
    (*(*(v37 - 8) + 56))(v27 + v36, 1, 1, v37);
  }

  else
  {
    v55 = v34;
    v39 = v52;
    v38 = v53;
    sub_2259CB710(v53, v52);
    v40 = v46;
    v41 = v51;
    ISO18013SessionCryptarch.PrivateKey.init(curve:data:)(&v55, v38, v39, v46);
    if (v41)
    {
      v54 = 3;
      v42 = v41;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000024, 0x8000000225D1A020, &v54, v41);

      swift_willThrow();
      sub_2259BEF00(v53, v39);

      swift_deallocPartialClassInstance();
    }

    else
    {
      sub_2259BEF00(v53, v39);
      v43 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
      (*(*(v43 - 8) + 56))(v40, 0, 1, v43);
      sub_2259D88EC(v40, v27 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8, &qword_225CDB950);
    }
  }

  return v27;
}

uint64_t ISO18013SessionCryptarch.__allocating_init(role:variant:curve:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = swift_allocObject();
  ISO18013SessionCryptarch.init(role:variant:curve:)(a1, a2, a3);
  return v6;
}

uint64_t ISO18013SessionCryptarch.init(role:variant:curve:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8, &qword_225CDB950);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8, &qword_225CDB958);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = *a1;
  v42 = *a2;
  v43 = v17;
  v41 = *a3;
  v18 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey;
  v19 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB08, &qword_225CDB968);
  v20 = swift_allocObject();
  *(v20 + ((*(*v20 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v21 = MEMORY[0x277D841D0];
  sub_2259D88EC(v16, v20 + *(*v20 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAD8, &qword_225CDB958);
  *(v3 + v18) = v20;
  v22 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  v23 = sub_225CCDC44();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB10, &qword_225CDB970);
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v13, v25 + *(*v25 + *v21 + 16), &qword_27D73BAE8, &qword_225CDB960);
  *(v3 + v22) = v25;
  v26 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  v24(v13, 1, 1, v23);
  v27 = swift_allocObject();
  *(v27 + ((*(*v27 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2259D88EC(v13, v27 + *(*v27 + *MEMORY[0x277D841D0] + 16), &qword_27D73BAE8, &qword_225CDB960);
  *(v3 + v26) = v27;
  v28 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BB18, &unk_225CDB978);
  v29 = swift_allocObject();
  *(v29 + 16) = 1;
  *(v3 + v28) = v29;
  v30 = OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter;
  v31 = swift_allocObject();
  v32 = v41;
  *(v31 + 16) = 1;
  *(v3 + v30) = v31;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve) = v32;
  v33 = v42;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role) = v43;
  *(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) = v33;
  if (v33)
  {
    (*(v44 + 56))(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, 1, 1, v45);
  }

  else
  {
    v34 = v39;
    v35 = v40;
    v37 = v44;
    v36 = v45;
    if (v32 <= 1)
    {
      if (v32)
      {
        sub_225CCE004();
      }

      else
      {
        sub_225CCDF04();
      }
    }

    else if (v32 == 2)
    {
      sub_225CCE0E4();
    }

    else if (v32 == 3)
    {
      sub_225CCDB24();
    }

    else
    {
      sub_225CCE204();
    }

    type metadata accessor for ISO18013SessionCryptarch.PrivateKey.Storage(0);
    swift_storeEnumTagMultiPayload();
    sub_225A66304(v35, v34, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    (*(v37 + 56))(v34, 0, 1, v36);
    sub_2259D88EC(v34, v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8, &qword_225CDB950);
  }

  return v3;
}

void ISO18013SessionCryptarch.setRemoteKey(_:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8, &qword_225CDB958);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8, &qword_225CDB950);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant))
  {
    v25 = 1;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000021, 0x8000000225D1A050, &v25, 0);
    swift_willThrow();
    return;
  }

  sub_2259CB710(a1, a2);
  sub_225A6D1FC(a1, a2);
  sub_2259BEF00(a1, a2);
  sub_225A0DE54(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, v12, &qword_27D73BAC8, &qword_225CDB950);
  v13 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_2259CB640(v12, &qword_27D73BAC8, &qword_225CDB950);
  if (v14 == 1)
  {
    v24 = 4;
    v4 = ISO18013SessionError(_:code:fromError:)(0xD000000000000023, 0x8000000225D1A080, &v24, 0);
    swift_willThrow();
LABEL_6:
    v23 = 4;
    v15 = v4;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000023, 0x8000000225D1A0B0, &v23, v4);

    swift_willThrow();
    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_curve);
  sub_2259CB710(a1, a2);
  ISO18013SessionCryptarch.PublicKey.init(curve:data:)(&v22, a1, a2, v9);
  if (v3)
  {
    goto LABEL_6;
  }

  v16 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  v17 = (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v18 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
  MEMORY[0x28223BE20](v17);
  *(&v21 - 2) = v9;
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v18 + v20));
  sub_225A6D5AC(v18 + v19);
  os_unfair_lock_unlock((v18 + v20));
  sub_2259CB640(v9, &qword_27D73BAD8, &qword_225CDB958);
}

void ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a3;
  v43 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAD8, &qword_225CDB958);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for ISO18013SessionCryptarch.PublicKey(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAC8, &qword_225CDB950);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = v4;
  if (*(v4 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant))
  {
    if (*(v4 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_variant) == 1)
    {
      v19 = v43;
      if (v43 >> 60 == 15)
      {
        v48 = 2;
        v20 = 0xD000000000000031;
        v21 = 0x8000000225D1A100;
        v22 = &v48;
LABEL_14:
        ISO18013SessionError(_:code:fromError:)(v20, v21, v22, 0);
        swift_willThrow();
        return;
      }

      v25 = v41;
      sub_2259CB710(v41, v43);
      sub_225A6D618(v25, v19);
      if (a4 >> 60 == 15)
      {
        v47 = 2;
        ISO18013SessionError(_:code:fromError:)(0xD000000000000022, 0x8000000225D1A140, &v47, 0);
        swift_willThrow();
      }

      else
      {
        v30 = v40;
        sub_2259CB6FC(v40, a4);
        sub_225A6D9C0(v30, a4, 0x203A4D4B49, 0xE500000000000000);
        sub_2259B97A8(v30, a4);
        sub_225A69BEC(v25, v19, v30, a4);
      }

      sub_2259B97A8(v25, v19);
    }

    else
    {
      if (a4 >> 60 == 15)
      {
        v49 = 2;
        v21 = 0x8000000225D1A0E0;
        v22 = &v49;
        v20 = 0xD000000000000018;
        goto LABEL_14;
      }

      v29 = v40;
      sub_2259CB6FC(v40, a4);
      sub_225A6D9C0(v29, a4, 0x203A4D4B49, 0xE500000000000000);
      sub_2259B97A8(v29, a4);
      sub_225A6A40C(v29, a4);
    }
  }

  else
  {
    v39 = v9;
    v40 = v10;
    v23 = v8;
    v38 = v12;
    v24 = v43;
    if (v43 >> 60 == 15)
    {
      v46 = 2;
      v20 = 0xD000000000000037;
      v21 = 0x8000000225D1A170;
      v22 = &v46;
      goto LABEL_14;
    }

    v26 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v41;
    sub_2259CB6FC(v41, v43);
    sub_225A6D618(v27, v24);
    sub_2259B97A8(v27, v24);
    v28 = v42;
    sub_225A0DE54(v42 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, v15, &qword_27D73BAC8, &qword_225CDB950);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_2259CB640(v15, &qword_27D73BAC8, &qword_225CDB950);
      v45 = 4;
      v20 = 0xD000000000000023;
      v21 = 0x8000000225D1A080;
      v22 = &v45;
      goto LABEL_14;
    }

    v31 = sub_225A66304(v15, v26, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
    MEMORY[0x28223BE20](v31);
    *(&v37 - 2) = v26;
    sub_225A6E8B8(sub_225A6DDC0);
    v32 = *(v28 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__remoteKey);
    v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v32 + v34));
    sub_225A0DE54(v32 + v33, v23, &qword_27D73BAD8, &qword_225CDB958);
    os_unfair_lock_unlock((v32 + v34));
    if ((*(v40 + 48))(v23, 1, v39) == 1)
    {
      sub_2259CB640(v23, &qword_27D73BAD8, &qword_225CDB958);
      v44 = 1;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000038, 0x8000000225D1A1B0, &v44, 0);
      swift_willThrow();
    }

    else
    {
      v35 = v38;
      v36 = sub_225A66304(v23, v38, type metadata accessor for ISO18013SessionCryptarch.PublicKey);
      MEMORY[0x28223BE20](v36);
      *(&v37 - 2) = v35;
      sub_225A6E8B8(sub_225A6EC18);
      sub_225A69404(v41, v43, v26, v35);
      sub_225A678AC(v35, type metadata accessor for ISO18013SessionCryptarch.PublicKey);
    }

    sub_225A678AC(v26, type metadata accessor for ISO18013SessionCryptarch.PrivateKey);
  }
}

unint64_t sub_225A691B4()
{
  sub_225CCF204();

  v0 = ISO18013SessionCryptarch.PrivateKey.publicKeyData.getter();
  v2 = v1;
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v3 = sub_225CCE384();
  v5 = v4;
  sub_2259BEF00(v0, v2);

  MEMORY[0x22AA6CE70](v3, v5);

  return 0xD000000000000012;
}

unint64_t sub_225A692DC()
{
  sub_225CCF204();

  v0 = ISO18013SessionCryptarch.PublicKey.publicKeyData.getter();
  v2 = v1;
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v3 = sub_225CCE384();
  v5 = v4;
  sub_2259BEF00(v0, v2);

  MEMORY[0x22AA6CE70](v3, v5);

  return 0xD000000000000013;
}

void sub_225A69404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v56 = a1;
  v52 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v59 = sub_225CCE164();
  v53 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_225CCDBA4();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCDC04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v64;
  v20 = ISO18013SessionCryptarch.PrivateKey.sharedSecretFromKeyAgreement(with:)(a4, v18);
  if (v19)
  {
    LOBYTE(v62) = 5;
    v21 = v19;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000015, 0x8000000225D1A560, &v62, v19);

    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v16;
    v50 = v15;
    v51 = v9;
    v64 = v4;
    MEMORY[0x28223BE20](v20);
    sub_225A6E8B8(sub_225A6F664);
    v22 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v23 = v59;
    sub_225CCDB94();
    v24 = v56;
    v25 = v58;
    sub_2259CB710(v56, v58);
    sub_2259DB138(v24, v25, v13);
    v52 = 0;
    sub_2259BEF00(v24, v25);
    v26 = v54;
    sub_225CCDB84();
    (*(v53 + 8))(v13, v23);
    sub_2259DB380(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v27 = v57;
    v28 = sub_225CCE154();
    v30 = sub_2259D732C(v28, v29);

    v31 = sub_2259D8490(v30);
    v33 = v32;

    v55[1](v26, v27);
    sub_2259CB710(v31, v33);
    sub_225A6D9C0(v31, v33, 0x203A746C6153, 0xE600000000000000);
    sub_2259BEF00(v31, v33);
    v62 = v31;
    v63 = v33;
    v58 = v33;
    if (qword_27D739F00 != -1)
    {
      swift_once();
    }

    v60 = qword_27D73BA48;
    v61 = qword_27D73BA50;
    sub_2259CB710(qword_27D73BA48, qword_27D73BA50);
    sub_2259DB42C();
    v34 = v48;
    v56 = v22;
    v57 = v18;
    sub_225CCDBF4();
    sub_2259BEF00(v60, v61);
    v35 = sub_225CCDC44();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v54 = (v36 + 56);
    v55 = v37;
    v38 = (v37)(v34, 0, 1, v35);
    v39 = *(v64 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
    MEMORY[0x28223BE20](v38);
    v40 = *(*v39 + *MEMORY[0x277D841D0] + 16);
    v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v39 + v41));
    v42 = v52;
    sub_225A6F6EC(v39 + v40);
    if (v42)
    {
      goto LABEL_10;
    }

    v53 = 0;
    os_unfair_lock_unlock((v39 + v41));
    sub_2259CB640(v34, &qword_27D73BAE8, &qword_225CDB960);
    v62 = v31;
    v63 = v58;
    v43 = v51;
    if (qword_27D739F08 != -1)
    {
      swift_once();
    }

    v60 = qword_27D73BA60;
    v61 = *algn_27D73BA68;
    sub_2259CB710(qword_27D73BA60, *algn_27D73BA68);
    v44 = v57;
    sub_225CCDBF4();
    sub_2259BEF00(v60, v61);
    v45 = (v55)(v43, 0, 1, v35);
    v39 = *(v64 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
    MEMORY[0x28223BE20](v45);
    v46 = *(*v39 + *MEMORY[0x277D841D0] + 16);
    v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v39 + v41));
    v47 = v53;
    sub_225A6F6EC(v39 + v46);
    if (v47)
    {
LABEL_10:
      os_unfair_lock_unlock((v39 + v41));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v39 + v41));
      sub_2259BEF00(v31, v58);
      sub_2259CB640(v43, &qword_27D73BAE8, &qword_225CDB960);
      (*(v49 + 8))(v44, v50);
    }
  }
}

uint64_t sub_225A69BEC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v67 = *v4;
  v68 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v66 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = v59 - v11;
  v12 = sub_225CCE164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_225CCDBA4();
  v16 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_225CCDC44();
  v72 = *(v62 - 8);
  v19 = MEMORY[0x28223BE20](v62);
  v65 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v59 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v59 - v24;
  v75 = a3;
  v76 = a4;
  sub_2259CB710(a3, a4);
  v70 = v25;
  sub_225CCDC24();
  v26 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_225CCDB94();
  v27 = v68;
  sub_2259CB710(a1, v68);
  sub_2259DB138(a1, v27, v15);
  v28 = a1;
  v29 = v26;
  v30 = v12;
  sub_2259BEF00(v28, v27);
  sub_225CCDB84();
  (*(v13 + 8))(v15, v12);
  sub_2259DB380(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v31 = v69;
  v32 = sub_225CCE154();
  v34 = sub_2259D732C(v32, v33);

  v35 = sub_2259D8490(v34);
  v37 = v36;

  (*(v16 + 8))(v18, v31);
  v68 = v37;
  v69 = v35;
  v75 = v35;
  v76 = v37;
  if (qword_27D739F10 != -1)
  {
    swift_once();
  }

  v73 = qword_27D73BA78;
  v74 = qword_27D73BA80;
  sub_2259CB710(qword_27D73BA78, qword_27D73BA80);
  sub_2259DB42C();
  sub_225CCDD84();
  sub_2259BEF00(v73, v74);
  v38 = v72;
  v39 = *(v72 + 16);
  v40 = v63;
  v64 = v23;
  v59[2] = v29;
  v41 = v62;
  v61 = v39;
  v39(v63, v23, v62);
  v59[1] = v30;
  v60 = *(v38 + 56);
  v42 = v60(v40, 0, 1, v41);
  v59[0] = v59;
  v43 = *(v71 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  MEMORY[0x28223BE20](v42);
  v44 = *(*v43 + *MEMORY[0x277D841D0] + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v43 + v45));
  sub_225A6F6EC(v43 + v44);
  os_unfair_lock_unlock((v43 + v45));
  sub_2259CB640(v40, &qword_27D73BAE8, &qword_225CDB960);
  v75 = v69;
  v76 = v68;
  v46 = v41;
  if (qword_27D739F18 != -1)
  {
    swift_once();
  }

  v73 = qword_27D73BA90;
  v74 = *algn_27D73BA98;
  sub_2259CB710(qword_27D73BA90, *algn_27D73BA98);
  v47 = v65;
  v48 = v70;
  sub_225CCDD84();
  sub_2259BEF00(v73, v74);
  v49 = v66;
  v61(v66, v47, v46);
  v50 = v60(v49, 0, 1, v46);
  v51 = *(v71 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
  MEMORY[0x28223BE20](v50);
  v52 = *(*v51 + *MEMORY[0x277D841D0] + 16);
  v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v51 + v53));
  sub_225A6F6EC(v51 + v52);
  os_unfair_lock_unlock((v51 + v53));
  v54 = sub_2259CB640(v49, &qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v54);
  v55 = v64;
  sub_225A6E8B8(sub_225A6F66C);
  MEMORY[0x28223BE20](v56);
  sub_225A6E8B8(sub_225A6F698);
  sub_2259BEF00(v69, v68);
  v57 = *(v72 + 8);
  v57(v48, v46);
  v57(v47, v46);
  return (v57)(v55, v46);
}

void sub_225A6A40C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = sub_225CCDC44();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v51 - v20;
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_19;
    }

    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (!v25)
    {
      if (v26 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

LABEL_19:
      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v66 = 0xD000000000000019;
      *(&v66 + 1) = 0x8000000225D1A5E0;
      if (v22 > 1)
      {
        v46 = 0;
        if (v22 != 2)
        {
          goto LABEL_28;
        }

        v48 = *(a1 + 16);
        v47 = *(a1 + 24);
        v25 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (!v25)
        {
          goto LABEL_28;
        }

        __break(1u);
      }

      else if (!v22)
      {
        v46 = BYTE6(a2);
LABEL_28:
        v64 = v46;
        v49 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v49);

        v50 = v66;
        LOBYTE(v66) = 5;
        ISO18013SessionError(_:code:fromError:)(v50, *(&v66 + 1), &v66, 0);

        swift_willThrow();
        return;
      }

      LODWORD(v46) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v46 = v46;
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_19;
  }

LABEL_8:
  v56 = v9;
  v59 = v19;
  v27 = v18;
  v62 = v5;
  *&v66 = a1;
  *(&v66 + 1) = a2;
  sub_2259CB710(a1, a2);
  sub_225CCDC24();
  v51 = xmmword_225CD4150;
  v66 = xmmword_225CD4150;
  if (qword_27D739F00 != -1)
  {
    swift_once();
  }

  v64 = qword_27D73BA48;
  v65 = qword_27D73BA50;
  sub_2259CB710(qword_27D73BA48, qword_27D73BA50);
  v28 = sub_225CCE164();
  v29 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_2259DB42C();
  v57 = v21;
  v54 = v29;
  v55 = v28;
  sub_225CCDD84();
  sub_2259BEF00(v64, v65);
  v30 = *(v13 + 16);
  v58 = v17;
  v53 = v30;
  v30(v11, v17, v27);
  v60 = v13;
  v61 = v27;
  v31 = *(v13 + 56);
  v13 += 56;
  v52 = v31;
  v32 = v31(v11, 0, 1, v27);
  a2 = *(v67 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey);
  MEMORY[0x28223BE20](v32);
  v33 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v21 = ((*(*a2 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock(&v21[a2]);
  v34 = v63;
  sub_225A6F6EC(a2 + v33);
  if (!v34)
  {
    os_unfair_lock_unlock(&v21[a2]);
    sub_2259CB640(v11, &qword_27D73BAE8, &qword_225CDB960);
    v66 = v51;
    v35 = v56;
    if (qword_27D739F18 != -1)
    {
      swift_once();
    }

    v63 = 0;
    v64 = qword_27D73BA90;
    v65 = *algn_27D73BA98;
    sub_2259CB710(qword_27D73BA90, *algn_27D73BA98);
    v36 = v61;
    v37 = v59;
    if (qword_27D739F08 != -1)
    {
      swift_once();
    }

    v38 = v57;
    sub_225CCDD84();
    sub_2259BEF00(v64, v65);
    v53(v35, v37, v36);
    v39 = v52(v35, 0, 1, v36);
    a2 = *(v67 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey);
    MEMORY[0x28223BE20](v39);
    v40 = *(*a2 + *MEMORY[0x277D841D0] + 16);
    v13 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((a2 + v13));
    v41 = v63;
    sub_225A6F6EC(a2 + v40);
    if (!v41)
    {
      os_unfair_lock_unlock((a2 + v13));
      v42 = sub_2259CB640(v35, &qword_27D73BAE8, &qword_225CDB960);
      MEMORY[0x28223BE20](v42);
      v43 = v58;
      sub_225A6E8B8(sub_225A6F6E0);
      MEMORY[0x28223BE20](v44);
      sub_225A6E8B8(sub_225A6F6E4);
      v45 = *(v60 + 8);
      v45(v38, v36);
      v45(v37, v36);
      v45(v43, v36);
      return;
    }

    goto LABEL_33;
  }

LABEL_32:
  os_unfair_lock_unlock(&v21[a2]);
  __break(1u);
LABEL_33:
  os_unfair_lock_unlock((a2 + v13));
  __break(1u);
}

uint64_t sub_225A6ABCC()
{
  sub_225CCF204();

  sub_225CCDBE4();
  MEMORY[0x22AA6CE70]();

  return 0x7320646572616853;
}

uint64_t sub_225A6ACE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_225CCDC14();
  MEMORY[0x22AA6CE70]();

  return a3;
}

void ISO18013SessionCryptarch.decrypt(data:)(unint64_t a1, char *a2)
{
  v55 = a1;
  v59 = a2;
  v49 = *v2;
  v3 = sub_225CCDD74();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCDD34();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_225CCDC44();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v17 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  }

  else
  {
    v17 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  }

  v18 = *(v2 + *v17);
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v18 + v20));
  sub_225A0DE54(v18 + v19, v12, &qword_27D73BAE8, &qword_225CDB960);
  v21 = (v18 + v20);
  v22 = v13;
  v23 = v14;
  os_unfair_lock_unlock(v21);
  if ((v14[6])(v12, 1, v22) == 1)
  {
    sub_2259CB640(v12, &qword_27D73BAE8, &qword_225CDB960);
    LOBYTE(v58[0]) = 1;
    ISO18013SessionError(_:code:fromError:)(0xD00000000000002ALL, 0x8000000225D1A1F0, v58, 0);
    swift_willThrow();
  }

  else
  {
    (v14[4])(v16, v12, v22);
    v24 = v55;
    v25 = v59;
    sub_2259CB710(v55, v59);
    sub_225A6E550(v24, v25, sub_225A6B4F4);
    sub_2259BEF00(v24, v25);
    v26 = v54;
    sub_225A6B604();
    if (v26)
    {
      v23[1](v16, v22);
    }

    else
    {
      v27 = sub_225A6EC20(v24, v25);
      v59 = v16;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      sub_225A6DDC8(v34, sub_225A6B8A8);

      v46 = v9;
      MEMORY[0x28223BE20](v35);
      v36 = v49;
      *(&v46 - 2) = v37;
      *(&v46 - 1) = v36;
      sub_225A6E8B8(sub_225A6EDF4);
      sub_2259CB710(v27, v31);
      sub_225A6E550(v27, v31, sub_225A6BA94);
      sub_2259BEF00(v27, v31);
      sub_2259CB710(v29, v33);
      sub_225A6E128(v29, v33, 0x6974707972636544);
      sub_2259BEF00(v29, v33);
      (*(v52 + 16))(v50, v46, v53);
      v58[0] = v27;
      v58[1] = v31;
      v56 = v29;
      v57 = v33;
      v54 = v27;
      v55 = v31;
      sub_2259CB710(v27, v31);
      v38 = v29;
      v49 = v33;
      sub_2259CB710(v29, v33);
      sub_2259DB42C();
      v39 = v51;
      sub_225CCDD64();
      v50 = v23;
      v40 = sub_225CCDCC4();
      v42 = v41;
      (*(v47 + 8))(v39, v48);
      sub_2259CB710(v40, v42);
      sub_225A6E550(v40, v42, sub_225A6BBA4);
      sub_2259BEF00(v40, v42);
      v43 = *(v2 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
      os_unfair_lock_lock(v43 + 5);
      LODWORD(v29) = v43[4];
      os_unfair_lock_unlock(v43 + 5);
      v44 = __CFADD__(v29, 1);
      v45 = v29 + 1;
      if (v44)
      {
        __break(1u);
      }

      else
      {
        os_unfair_lock_lock(v43 + 5);
        v43[4]._os_unfair_lock_opaque = v45;
        os_unfair_lock_unlock(v43 + 5);
        sub_2259BEF00(v38, v49);
        sub_2259BEF00(v54, v55);
        (*(v50 + 1))(v59, v22);
        (*(v52 + 8))(v46, v53);
      }
    }
  }
}

unint64_t sub_225A6B4F4(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000010;
}

uint64_t sub_225A6B604()
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    if (qword_27D739F20 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAA8;
  }

  else
  {
    if (qword_27D739F28 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAB8;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
  sub_2259CB710(*v2, v3);
  os_unfair_lock_lock(v5 + 5);
  os_unfair_lock_opaque = v5[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque == -1)
  {
    LOBYTE(v15) = 7;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000026, 0x8000000225D1A510, &v15, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock(v5 + 5);
    v7 = v5[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 5);
    v13 = bswap32(v7);
    v8 = sub_225A6D08C(&v13, &v14);
    v10 = v9;
    v15 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    v11 = v15;
    v14 = v15;
    sub_2259CB710(v15, *(&v15 + 1));
    sub_2259DB42C();
    sub_225CCDD14();
    if (v1)
    {
      LOBYTE(v14) = 7;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000020, 0x8000000225D1A450, &v14, 0);
      swift_willThrow();
      sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
      sub_2259BEF00(v4, v3);

      return sub_2259BEF00(v11, *(&v11 + 1));
    }

    sub_2259BEF00(v11, *(&v11 + 1));
    sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
  }

  return sub_2259BEF00(v4, v3);
}

unint64_t sub_225A6B8A8(uint64_t a1)
{
  sub_225CCF204();

  v2 = *(a1 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__receivedMessageCounter);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_unlock(v2 + 5);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  return 0xD000000000000024;
}

unint64_t sub_225A6B95C()
{
  sub_225CCF204();

  sub_225CCDD04();
  MEMORY[0x22AA6CE70]();

  return 0xD000000000000011;
}

unint64_t sub_225A6BA94(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A6BBA4(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000015;
}

char *ISO18013SessionCryptarch.encrypt(data:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v67 = a1;
  v68 = a2;
  v65 = *v2;
  v4 = sub_225CCD954();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BA40, &unk_225CDB920);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v59 - v7;
  v8 = sub_225CCDD74();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v59 - v11;
  v12 = sub_225CCDD34();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BAE8, &qword_225CDB960);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_225CCDC44();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    v23 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__deviceSymmetricKey;
  }

  else
  {
    v23 = &OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__readerSymmetricKey;
  }

  v24 = *v23;
  v74 = v3;
  v25 = *(v3 + v24);
  v26 = *(*v25 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_225A0DE54(v25 + v26, v18, &qword_27D73BAE8, &qword_225CDB960);
  os_unfair_lock_unlock((v25 + v27));
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v22, v18, v19);
    v18 = v74;
    v28 = v72;
    sub_225A6C688();
    if (v28)
    {
      (*(v20 + 8))(v22, v19);
      return v18;
    }

    v30 = v15;

    sub_225A6DDC8(v31, sub_225A6C92C);

    MEMORY[0x28223BE20](v32);
    v33 = v65;
    *(&v59 - 2) = v15;
    *(&v59 - 1) = v33;
    sub_225A6E8B8(sub_225A6EDFC);
    v35 = v67;
    v34 = v68;
    sub_2259CB710(v67, v68);
    sub_225A6E550(v35, v34, sub_225A6CA94);
    sub_2259BEF00(v35, v34);
    v73[0] = v35;
    v73[1] = v34;
    v37 = v70;
    v36 = v71;
    v38 = v69;
    (*(v71 + 16))(v69, v30, v70);
    (*(v36 + 56))(v38, 0, 1, v37);
    sub_2259DB42C();
    v39 = v66;
    sub_225CCDCF4();
    v65 = v22;
    v67 = v20;
    v68 = v19;
    v72 = v30;
    sub_2259CB640(v38, &qword_27D73BA40, &unk_225CDB920);
    (*(v63 + 32))(v62, v39, v64);
    v40 = sub_225CCDD44();
    v42 = v41;
    v43 = sub_225CCDD54();
    v45 = v44;
    v46 = sub_225A6EE04(v40, v42, v43, v44);
    v48 = v47;
    sub_2259CB710(v40, v42);
    sub_225A6E550(v40, v42, sub_225A6CBA4);
    sub_2259BEF00(v40, v42);
    sub_2259CB710(v43, v45);
    sub_225A6E128(v43, v45, 0x6974707972636E45);
    sub_2259BEF00(v43, v45);
    sub_2259CB710(v46, v48);
    sub_225A6E550(v46, v48, sub_225A6CCB4);
    v66 = v46;
    v69 = v48;
    sub_2259BEF00(v46, v48);
    v49 = *&v74[OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter];
    os_unfair_lock_lock(v49 + 5);
    LODWORD(v46) = v49[4];
    os_unfair_lock_unlock(v49 + 5);
    v50 = __CFADD__(v46, 1);
    v51 = v46 + 1;
    if (v50)
    {
      __break(1u);
    }

    else
    {
      os_unfair_lock_lock(v49 + 5);
      v49[4]._os_unfair_lock_opaque = v51;
      os_unfair_lock_unlock(v49 + 5);
      if ((_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000002DLL, 0x8000000225D15710) & 1) == 0)
      {
        sub_2259BEF00(v40, v42);
        sub_2259BEF00(v43, v45);
        v18 = v66;
LABEL_16:
        (*(v63 + 8))(v62, v64);
        (*(v67 + 8))(v65, v68);
        (*(v36 + 8))(v72, v37);
        return v18;
      }

      if (qword_28105B910 == -1)
      {
LABEL_12:
        v52 = off_28105B918;
        v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v54));
        (*(v60 + 16))(v59, &v52[v53], v61);
        os_unfair_lock_unlock(&v52[v54]);
        v55 = sub_225CCD934();
        v56 = sub_225CCED04();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_2259A7000, v55, v56, "Returning random data due to user defaults setting: force improperly encrypted mdoc request", v57, 2u);
          v58 = v57;
          v37 = v70;
          MEMORY[0x22AA6F950](v58, -1, -1);
        }

        (*(v60 + 8))(v59, v61);
        v18 = randomData(numBytes:)(0x32uLL);
        sub_2259BEF00(v40, v42);
        sub_2259BEF00(v43, v45);
        sub_2259BEF00(v66, v69);
        v36 = v71;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  sub_2259CB640(v18, &qword_27D73BAE8, &qword_225CDB960);
  LOBYTE(v73[0]) = 1;
  ISO18013SessionError(_:code:fromError:)(0xD00000000000002ALL, 0x8000000225D1A240, v73, 0);
  swift_willThrow();
  return v18;
}

uint64_t sub_225A6C688()
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_role))
  {
    if (qword_27D739F28 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAB8;
  }

  else
  {
    if (qword_27D739F20 != -1)
    {
      swift_once();
    }

    v2 = &qword_27D73BAA8;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter);
  sub_2259CB710(*v2, v3);
  os_unfair_lock_lock(v5 + 5);
  os_unfair_lock_opaque = v5[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque == -1)
  {
    LOBYTE(v15) = 6;
    ISO18013SessionError(_:code:fromError:)(0xD000000000000022, 0x8000000225D1A420, &v15, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock(v5 + 5);
    v7 = v5[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 5);
    v13 = bswap32(v7);
    v8 = sub_225A6D08C(&v13, &v14);
    v10 = v9;
    v15 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    v11 = v15;
    v14 = v15;
    sub_2259CB710(v15, *(&v15 + 1));
    sub_2259DB42C();
    sub_225CCDD14();
    if (v1)
    {
      LOBYTE(v14) = 6;
      ISO18013SessionError(_:code:fromError:)(0xD000000000000020, 0x8000000225D1A450, &v14, 0);
      swift_willThrow();
      sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
      sub_2259BEF00(v4, v3);

      return sub_2259BEF00(v11, *(&v11 + 1));
    }

    sub_2259BEF00(v11, *(&v11 + 1));
    sub_2259BEF00(v8, v10 & 0xFFFFFFFFFFFFFFLL);
  }

  return sub_2259BEF00(v4, v3);
}

unint64_t sub_225A6C92C(uint64_t a1)
{
  sub_225CCF204();

  v2 = *(a1 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch__sentMessageCounter);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_unlock(v2 + 5);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  return 0xD000000000000020;
}

unint64_t sub_225A6C9E0()
{
  sub_225CCF204();

  sub_225CCDD04();
  MEMORY[0x22AA6CE70]();

  return 0xD000000000000011;
}

unint64_t sub_225A6CA94(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000015;
}

unint64_t sub_225A6CBA4(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A6CCB4(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000012;
}

uint64_t sub_225A6CDC4@<X0>(uint64_t *a1@<X8>, _BYTE *a2@<X0>, _BYTE *a3@<X1>)
{
  v4 = sub_225A6D010(a2, a3);
  v5 = sub_2259D8490(v4);
  v7 = v6;

  sub_225B34448(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v8 = sub_225CCE384();
  v10 = v9;
  sub_2259BEF00(v5, v7);

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t ISO18013SessionCryptarch.deinit()
{
  sub_2259CB640(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8, &qword_225CDB950);

  return v0;
}

uint64_t ISO18013SessionCryptarch.__deallocating_deinit()
{
  sub_2259CB640(v0 + OBJC_IVAR____TtC13CoreIDVShared24ISO18013SessionCryptarch_localKey, &qword_27D73BAC8, &qword_225CDB950);

  return swift_deallocClassInstance();
}

void *sub_225A6D010(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_225C0060C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_225A6D08C(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_225C0217C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_225A6D14C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_225A6D08C(a1, &a1[a2]);
  }

  sub_225CCCA94();
  swift_allocObject();
  sub_225CCCA34();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_225CCCF14();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_225A6D1FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  if (byte_28105B9F8 == 1)
  {
    v21 = v6;
    v7 = sub_225CCE444();
    v8 = [v21 BOOLForKey_];

    if (v8)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_225CCF204();

      v22 = 0xD000000000000018;
      v23 = 0x8000000225D1A600;
      v9 = sub_225CCCF84();
      MEMORY[0x22AA6CE70](v9);

      v11 = v22;
      v10 = v23;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v12 = off_28105B918;
      v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v14));
      (*(v3 + 16))(v5, &v12[v13], v2);
      os_unfair_lock_unlock(&v12[v14]);

      v15 = sub_225CCD934();
      v16 = sub_225CCED04();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_2259BE198(v11, v10, &v22);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2259A7000, v15, v16, "ISO18013SessionCryptarch: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AA6F950](v18, -1, -1);
        MEMORY[0x22AA6F950](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }
}

uint64_t sub_225A6D5AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2259CB640(a1, &qword_27D73BAD8, &qword_225CDB958);
  return sub_225A0DE54(v3, a1, &qword_27D73BAD8, &qword_225CDB958);
}

void sub_225A6D618(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  if (byte_28105B9F8 == 1)
  {
    v21 = v6;
    v7 = sub_225CCE444();
    v8 = [v21 BOOLForKey_];

    if (v8)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_225CCF204();

      v22 = 0xD000000000000014;
      v23 = 0x8000000225D1A5C0;
      v9 = sub_225CCCF84();
      MEMORY[0x22AA6CE70](v9);

      v11 = v22;
      v10 = v23;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v12 = off_28105B918;
      v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v14));
      (*(v3 + 16))(v5, &v12[v13], v2);
      os_unfair_lock_unlock(&v12[v14]);

      v15 = sub_225CCD934();
      v16 = sub_225CCED04();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_2259BE198(v11, v10, &v22);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2259A7000, v15, v16, "ISO18013SessionCryptarch: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AA6F950](v18, -1, -1);
        MEMORY[0x22AA6F950](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }
}

void sub_225A6D9C0(unint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v29 = v12;
    swift_once();
    v12 = v29;
  }

  if (byte_28105B9F8 == 1)
  {
    v29 = v12;
    v13 = sub_225CCE444();
    v14 = [v29 BOOLForKey_];

    if (v14)
    {
      v31 = a3;
      v32 = a4;
      v30 = sub_225B34448(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
      v15 = sub_225CCE384();
      v17 = v16;

      MEMORY[0x22AA6CE70](v15, v17);

      v19 = v31;
      v18 = v32;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v20 = off_28105B918;
      v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v22));
      (*(v9 + 16))(v11, &v20[v21], v8);
      os_unfair_lock_unlock(&v20[v22]);

      v23 = sub_225CCD934();
      v24 = sub_225CCED04();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        v27 = sub_2259BE198(v19, v18, &v31);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_2259A7000, v23, v24, "ISO18013SessionCryptarch: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AA6F950](v26, -1, -1);
        MEMORY[0x22AA6F950](v25, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
  }
}

void sub_225A6DDC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v22 = v8;
    swift_once();
    v8 = v22;
  }

  if (byte_28105B9F8 == 1)
  {
    v22 = v8;
    v9 = sub_225CCE444();
    v10 = [v22 BOOLForKey_];

    if (v10)
    {
      v11 = a2(a1);
      v13 = v12;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v14 = off_28105B918;
      v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v16));
      (*(v5 + 16))(v7, &v14[v15], v4);
      os_unfair_lock_unlock(&v14[v16]);

      v17 = sub_225CCD934();
      v18 = sub_225CCED04();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23 = v20;
        *v19 = 136315138;
        v21 = sub_2259BE198(v11, v13, &v23);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_2259A7000, v17, v18, "ISO18013SessionCryptarch: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AA6F950](v20, -1, -1);
        MEMORY[0x22AA6F950](v19, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
  }
}

void sub_225A6E128(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v27 = v10;
    swift_once();
    v10 = v27;
  }

  if (byte_28105B9F8 == 1)
  {
    v27 = v10;
    v11 = sub_225CCE444();
    v12 = [v27 BOOLForKey_];

    if (v12)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_225CCF204();

      v29 = a3;
      v30 = 0xEF20676174206E6FLL;
      v28 = sub_225B34448(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
      v13 = sub_225CCE384();
      v15 = v14;

      MEMORY[0x22AA6CE70](v13, v15);

      v17 = v29;
      v16 = v30;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v18 = off_28105B918;
      v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v20));
      (*(v7 + 16))(v9, &v18[v19], v6);
      os_unfair_lock_unlock(&v18[v20]);

      v21 = sub_225CCD934();
      v22 = sub_225CCED04();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v24;
        *v23 = 136315138;
        v25 = sub_2259BE198(v17, v16, &v29);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_2259A7000, v21, v22, "ISO18013SessionCryptarch: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA6F950](v24, -1, -1);
        MEMORY[0x22AA6F950](v23, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
  }
}

void sub_225A6E550(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v24 = v10;
    swift_once();
    v10 = v24;
  }

  if (byte_28105B9F8 == 1)
  {
    v24 = v10;
    v11 = sub_225CCE444();
    v12 = [v24 BOOLForKey_];

    if (v12)
    {
      v13 = a3(a1, a2);
      v15 = v14;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v16 = off_28105B918;
      v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v18));
      (*(v7 + 16))(v9, &v16[v17], v6);
      os_unfair_lock_unlock(&v16[v18]);

      v19 = sub_225CCD934();
      v20 = sub_225CCED04();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25 = v22;
        *v21 = 136315138;
        v23 = sub_2259BE198(v13, v15, &v25);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_2259A7000, v19, v20, "ISO18013SessionCryptarch: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AA6F950](v22, -1, -1);
        MEMORY[0x22AA6F950](v21, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
  }
}

void sub_225A6E8B8(uint64_t (*a1)(void))
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v6;
    swift_once();
    v6 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v20 = v6;
    v7 = sub_225CCE444();
    v8 = [v20 BOOLForKey_];

    if (v8)
    {
      v9 = a1();
      v11 = v10;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v12 = off_28105B918;
      v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v14));
      (*(v3 + 16))(v5, &v12[v13], v2);
      os_unfair_lock_unlock(&v12[v14]);

      v15 = sub_225CCD934();
      v16 = sub_225CCED04();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v21 = v18;
        *v17 = 136315138;
        v19 = sub_2259BE198(v9, v11, &v21);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2259A7000, v15, v16, "ISO18013SessionCryptarch: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AA6F950](v18, -1, -1);
        MEMORY[0x22AA6F950](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }
}

uint64_t sub_225A6EC20(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < 16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      v15 = 7;
      ISO18013SessionError(_:code:fromError:)(0xD00000000000001ELL, 0x8000000225D19DB0, &v15, 0);
      swift_willThrow();
      return v2;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (HIDWORD(result) - result < 16)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v3 == 2)
  {
    v10 = *(result + 16);
    v9 = *(result + 24);
    v6 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v6)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v8 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v8) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v8;
LABEL_19:
  v6 = __OFSUB__(v8, 16);
  v11 = v8 - 16;
  if (v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v11 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v3)
  {
    goto LABEL_29;
  }

  if (v3 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
LABEL_29:
      v2 = sub_225CCCFD4();
      sub_225CCCFD4();
      return v2;
    }

    goto LABEL_38;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!__OFSUB__(v14, 16))
  {
    if (v14 >= v14 - 16)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_225A6EE04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_21;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v8 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v8)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
LABEL_21:
    result = v5 + v10;
    if (!__OFADD__(v5, v10))
    {
      v13 = sub_2259D856C(result);
      sub_225CCCFC4();
      sub_225CCCFC4();
      return v13;
    }

    __break(1u);
    goto LABEL_24;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v10 = v10;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_225A6EF1C()
{
  result = qword_27D73BB20;
  if (!qword_27D73BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB20);
  }

  return result;
}

unint64_t sub_225A6EF74()
{
  result = qword_27D73BB28;
  if (!qword_27D73BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB28);
  }

  return result;
}

unint64_t sub_225A6F010()
{
  result = qword_27D73BB40;
  if (!qword_27D73BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BB40);
  }

  return result;
}

void keypath_get_6Tm(void *a1@<X0>, void *a2@<X3>, uint32_t *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  os_unfair_lock_lock(v4 + 5);
  os_unfair_lock_opaque = v4[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v4 + 5);
  *a3 = os_unfair_lock_opaque;
}

void keypath_set_7Tm(uint32_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(*a2 + *a5);
  os_unfair_lock_lock(v6 + 5);
  v6[4]._os_unfair_lock_opaque = v5;

  os_unfair_lock_unlock(v6 + 5);
}

void sub_225A6F124(uint64_t a1)
{
  sub_225A6F23C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_225A6F23C(uint64_t a1)
{
  if (!qword_27D73BB58)
  {
    type metadata accessor for ISO18013SessionCryptarch.PrivateKey(255);
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D73BB58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_225A6F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A6F498(uint64_t a1)
{
  result = sub_225CCDEA4();
  if (v2 <= 0x3F)
  {
    result = sub_225CCDFB4();
    if (v3 <= 0x3F)
    {
      result = sub_225CCE094();
      if (v4 <= 0x3F)
      {
        result = sub_225CCDAD4();
        if (v5 <= 0x3F)
        {
          result = sub_225CCE1B4();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_225A6F548(uint64_t a1)
{
  result = sub_225CCDF14();
  if (v2 <= 0x3F)
  {
    result = sub_225CCE014();
    if (v3 <= 0x3F)
    {
      result = sub_225CCE0F4();
      if (v4 <= 0x3F)
      {
        result = sub_225CCDB34();
        if (v5 <= 0x3F)
        {
          result = sub_225CCE214();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_225A6F5F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2259CB640(a1, &qword_27D73BAE8, &qword_225CDB960);
  return sub_225A0DE54(v3, a1, &qword_27D73BAE8, &qword_225CDB960);
}

id ISO18013SessionError(_:code:fromError:)(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v7 = *a3;
  sub_225B2C92C(MEMORY[0x277D84F90]);
  if (a2)
  {
    v8 = sub_225CCE474();
    v10 = v9;
    v30 = MEMORY[0x277D837D0];
    *&v29 = a1;
    *(&v29 + 1) = a2;
    sub_2259B9624(&v29, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v26, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v12 = sub_225CCE474();
    v14 = v13;
    swift_getErrorValue();
    v15 = v27;
    v16 = v28;
    v30 = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    sub_2259B9624(&v29, v26);
    v18 = a4;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v26, v12, v14, v19);
  }

  v20 = qword_225CDBD10[v7];
  v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v22 = sub_225CCE444();
  v23 = sub_225CCE2B4();

  v24 = [v21 initWithDomain:v22 code:v20 userInfo:v23];

  return v24;
}

CoreIDVShared::ISO18013SessionErrorCode_optional __swiftcall ISO18013SessionErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > -2002)
  {
    if (rawValue > -1002)
    {
      if (rawValue == -1001)
      {
        *v1 = 1;
        return rawValue;
      }

      if (rawValue == -1000)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -2001)
      {
        *v1 = 3;
        return rawValue;
      }

      if (rawValue == -1002)
      {
        *v1 = 2;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > -3001)
  {
    if (rawValue == -3000)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == -2002)
    {
      *v1 = 4;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (rawValue == -6000)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != -5000)
  {
    goto LABEL_20;
  }

  *v1 = 6;
  return rawValue;
}

uint64_t sub_225A6FA64()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDBD10[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225A6FAEC()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDBD10[v1]);
  return sub_225CCFC24();
}

unint64_t sub_225A6FB5C()
{
  result = qword_27D73BBA0;
  if (!qword_27D73BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBA0);
  }

  return result;
}

CoreIDVShared::KeyAuthorizationCOSE_Sign1Payload::KeyPurpose_optional __swiftcall KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.rawValue.getter()
{
  v1 = 0x4954505952434E45;
  v2 = 0x4D544E4553455250;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (!*v0)
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

uint64_t sub_225A6FCC8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A6FDB0(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A6FE84()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A6FF74(unint64_t *a1@<X8>)
{
  v2 = 0xEE0059454B5F4E4FLL;
  v3 = 0x4954505952434E45;
  v4 = 0xEF59454B5F544E45;
  v5 = 0x4D544E4553455250;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001DLL;
    v4 = 0x8000000225D0AB70;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000225D0AB30;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

CoreIDVShared::KeyAuthorizationCOSE_Sign1Payload::AuthorizerType_optional __swiftcall KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x595449544E454449;
  }
}

uint64_t sub_225A7018C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = 0x8000000225D0AB30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000225D0AB30;
  }

  else
  {
    v6 = 0x8000000225D0AB70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x595449544E454449;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000059454B5FLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001DLL;
    v4 = 0x8000000225D0AB70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x595449544E454449;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000059454B5FLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A70270()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A70320(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A703BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A70474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000059454B5FLL;
  v4 = 0xD000000000000015;
  v5 = 0x8000000225D0AB30;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v5 = 0x8000000225D0AB70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x595449544E454449;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD494();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.keyPurpose.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(uint64_t a1)
{
  result = qword_27D73BC00;
  if (!qword_27D73BC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.authorizerType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_225CCD494();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_225A70734()
{
  v1 = 0x6F7072755079656BLL;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_225A707A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A71348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A707CC(uint64_t a1)
{
  v2 = sub_225A70A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A70808(uint64_t a1)
{
  v2 = sub_225A70A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BBA8, &qword_225CDBD50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A70A48();
  sub_225CCFCE4();
  v11[15] = 0;
  sub_225CCD494();
  sub_225A70ED8(&qword_27D73BBB8, MEMORY[0x277CF39B0]);
  sub_225CCF7E4();
  if (!v2)
  {
    v9 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
    v11[14] = *(v3 + *(v9 + 20));
    v11[13] = 1;
    sub_225A70A9C();
    sub_225CCF7E4();
    v11[12] = *(v3 + *(v9 + 24));
    v11[11] = 2;
    sub_225A70AF0();
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_225A70A48()
{
  result = qword_27D73BBB0;
  if (!qword_27D73BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBB0);
  }

  return result;
}

unint64_t sub_225A70A9C()
{
  result = qword_27D73BBC0;
  if (!qword_27D73BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBC0);
  }

  return result;
}

unint64_t sub_225A70AF0()
{
  result = qword_27D73BBC8;
  if (!qword_27D73BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBC8);
  }

  return result;
}

uint64_t KeyAuthorizationCOSE_Sign1Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_225CCD494();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BBD0, &qword_225CDBD58);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A70A48();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v20;
  v28 = 0;
  sub_225A70ED8(&qword_27D73BBD8, MEMORY[0x277CF39B8]);
  v14 = v22;
  sub_225CCF6E4();
  v15 = *(v13 + 32);
  v16 = v23;
  v23 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  sub_225A70F1C();
  sub_225CCF6E4();
  *(v12 + *(v9 + 20)) = v27;
  v24 = 2;
  sub_225A70F70();
  sub_225CCF6E4();
  (*(v21 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v25;
  sub_225A70FC4(v12, v19);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A71028(v12);
}

uint64_t sub_225A70ED8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_225CCD494();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A70F1C()
{
  result = qword_27D73BBE0;
  if (!qword_27D73BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBE0);
  }

  return result;
}

unint64_t sub_225A70F70()
{
  result = qword_27D73BBE8;
  if (!qword_27D73BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBE8);
  }

  return result;
}

uint64_t sub_225A70FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A71028(uint64_t a1)
{
  v2 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225A71088()
{
  result = qword_27D73BBF0;
  if (!qword_27D73BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBF0);
  }

  return result;
}

unint64_t sub_225A710E0()
{
  result = qword_27D73BBF8;
  if (!qword_27D73BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BBF8);
  }

  return result;
}

uint64_t sub_225A7118C(uint64_t a1)
{
  result = sub_225CCD494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225A71244()
{
  result = qword_27D73BC10;
  if (!qword_27D73BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC10);
  }

  return result;
}

unint64_t sub_225A7129C()
{
  result = qword_27D73BC18;
  if (!qword_27D73BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC18);
  }

  return result;
}

unint64_t sub_225A712F4()
{
  result = qword_27D73BC20;
  if (!qword_27D73BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC20);
  }

  return result;
}

uint64_t sub_225A71348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7072755079656BLL && a2 == 0xEA00000000006573 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00657079547265)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_225A71478()
{
  result = qword_27D73BC28;
  if (!qword_27D73BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC28);
  }

  return result;
}

unint64_t sub_225A714CC()
{
  result = qword_27D73BC30;
  if (!qword_27D73BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC30);
  }

  return result;
}

uint64_t static KeystoreKeychainProtocol.queryKeychainCertificate(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v58[0] = 0;
  v13 = sub_225CCE474();
  (*(a4 + 32))(a1, a2, v13, v14, v58, a3, a4);
  if (v5)
  {
  }

  else
  {

    if (v58[0])
    {
      v16 = swift_unknownObjectRetain();
      v17 = CFGetTypeID(v16);
      if (v17 == SecCertificateGetTypeID())
      {
        type metadata accessor for SecCertificate(0);
        v4 = swift_dynamicCastUnknownClassUnconditional();
        swift_unknownObjectRelease();
        return v4;
      }

      v55 = 0;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000026, 0x8000000225D1A620);
      MEMORY[0x22AA6CE70](a1, a2);
      MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D1A6B0);
      v35 = v56;
      v4 = v57;
      v53 = 0x8000000225D1A680;
      v54 = 0x8000000225D1A650;
      v36 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v38 = v37;
      v39 = sub_225CCE954();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v12, 1, 1, v39);
      LODWORD(v39) = (*(v40 + 48))(v12, 1, v39);
      sub_2259DB318(v12);
      if (v39)
      {
        v41 = 243;
      }

      else
      {
        v41 = 23;
      }

      v42 = MEMORY[0x277D84F90];
      v43 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v43;
      sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v56);

      v45 = v56;
      v46 = sub_225B29AA0(0, 1, 1, v42);
      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v48 + 1;
      v49 = &v46[56 * v48];
      *(v49 + 4) = v35;
      *(v49 + 5) = v4;
      v50 = v54;
      *(v49 + 6) = 0xD00000000000002CLL;
      *(v49 + 7) = v50;
      v51 = v53;
      *(v49 + 8) = 0xD000000000000020;
      *(v49 + 9) = v51;
      *(v49 + 10) = 39;
      *v38 = v41;
      *(v38 + 8) = v46;
      *(v38 + 16) = v35;
      *(v38 + 24) = v4;
      *(v38 + 32) = v45;
      *(v38 + 40) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_225CCF204();

      v56 = 0xD000000000000026;
      v57 = 0x8000000225D1A620;
      MEMORY[0x22AA6CE70](a1, a2);
      v18 = v56;
      v4 = v57;
      v54 = 0x8000000225D1A680;
      v55 = 0x8000000225D1A650;
      v19 = MEMORY[0x277D84F90];
      v20 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v22 = v21;
      v23 = sub_225CCE954();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v12, 1, 1, v23);
      LODWORD(v23) = (*(v24 + 48))(v12, 1, v23);
      sub_2259DB318(v12);
      if (v23)
      {
        v25 = 243;
      }

      else
      {
        v25 = 23;
      }

      v26 = sub_225B2C374(v19);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v26;
      sub_225B2C4A0(v20, sub_225B2AC40, 0, v27, &v56);

      v28 = v56;
      v29 = sub_225B29AA0(0, 1, 1, v19);
      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[56 * v31];
      *(v32 + 4) = v18;
      *(v32 + 5) = v4;
      v33 = v55;
      *(v32 + 6) = 0xD00000000000002CLL;
      *(v32 + 7) = v33;
      v34 = v54;
      *(v32 + 8) = 0xD000000000000020;
      *(v32 + 9) = v34;
      *(v32 + 10) = 34;
      *v22 = v25;
      *(v22 + 8) = v29;
      *(v22 + 16) = v18;
      *(v22 + 24) = v4;
      *(v22 + 32) = v28;
      *(v22 + 40) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t SESKeyForHPKE.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SESKeyForHPKE(0) + 28);
  v4 = sub_225CCDEA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SESKeyForHPKE(uint64_t a1)
{
  result = qword_27D73BC40;
  if (!qword_27D73BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SESKeyForHPKE.init(keyBlob:sesKeystore:externalizedLAContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v57 - v14;
  v15 = sub_225CCDEA4();
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = a3;
  a6[1] = a1;
  a6[2] = a2;
  a6[3] = a4;
  v65 = a6;
  a6[4] = a5;
  v18 = *(*a3 + 104);

  sub_2259CB710(a1, a2);
  v19 = v18(a1, a2);
  if (v6)
  {

    sub_2259BEF00(a1, a2);
    v63 = 0;
    v62 = "e returned from keychain.";
    v61 = "CoreIDVShared/SESKey+HPKE.swift";
    v24 = v6;
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    swift_getErrorValue();
    v29 = v73;
    v30 = v6;
    sub_225B21FAC(v29, &v67);

    v31 = v68;
    v64 = v26;
    if (v68)
    {
      v60 = v67;
      v58 = v69;
      v59 = v70;
      v32 = v71;
      v57 = v72;
    }

    else
    {
      v67 = v6;
      v33 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v34 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v36 = [v34 code];
        v37 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v37;
        *(inited + 40) = v36;
        v32 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v38 = v6;
        v59 = 0;
        v58 = 0;
        v60 = 0;
        v31 = MEMORY[0x277D84F90];
      }

      else
      {
        v67 = v6;
        v39 = v6;
        v40 = sub_225CCE954();
        v41 = v60;
        v42 = swift_dynamicCast();
        v43 = *(v40 - 8);
        (*(v43 + 56))(v41, v42 ^ 1u, 1, v40);
        LODWORD(v43) = (*(v43 + 48))(v41, 1, v40);
        sub_2259CB640(v41, &unk_27D73B050, &unk_225CD3AD0);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = 23;
        }

        v60 = v44;
        v31 = MEMORY[0x277D84F90];
        v32 = sub_225B2C374(MEMORY[0x277D84F90]);
        v45 = v6;
        v59 = 0;
        v58 = 0;
      }

      v57 = v6;
    }

    v46 = v62 | 0x8000000000000000;
    v62 = v61 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v32;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v67);

    v48 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_225B29AA0(0, *(v31 + 2) + 1, 1, v31);
    }

    v50 = *(v31 + 2);
    v49 = *(v31 + 3);
    if (v50 >= v49 >> 1)
    {
      v31 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v31);
    }

    *(v31 + 2) = v50 + 1;
    v51 = &v31[56 * v50];
    *(v51 + 4) = 0;
    *(v51 + 5) = 0;
    *(v51 + 6) = 0xD00000000000001FLL;
    *(v51 + 7) = v46;
    v52 = v62;
    *(v51 + 8) = 0xD000000000000030;
    *(v51 + 9) = v52;
    *(v51 + 10) = 37;
    *v28 = v60;
    v53 = v58;
    *(v28 + 8) = v31;
    *(v28 + 16) = v53;
    *(v28 + 24) = v59;
    *(v28 + 32) = v48;
    *(v28 + 40) = v57;
    swift_willThrow();

    v54 = v65;
    sub_2259BEF00(v65[1], v65[2]);
    return sub_2259BEF00(v54[3], v54[4]);
  }

  else
  {
    v21 = v19;
    v22 = v20;
    v23 = v64;

    sub_2259BEF00(a1, a2);
    v67 = v21;
    v68 = v22;
    sub_225CCDE94();
    v55 = type metadata accessor for SESKeyForHPKE(0);
    return (*(v23 + 32))(v65 + *(v55 + 28), v17, v15);
  }
}

void SESKeyForHPKE.sharedSecretFromKeyAgreement(with:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v44 - v4;
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = MEMORY[0x22AA6C6C0](v3);
  v10 = v9;
  v11 = (*(*v5 + 184))(v6, v7, v8, v9, v0[3], v0[4]);
  if (v1)
  {
    sub_2259BEF00(v8, v10);
    v47 = "lizedLAContext:)";
    v13 = v1;
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v48 = swift_allocError();
    v16 = v15;
    swift_getErrorValue();
    v17 = v56;
    v18 = v1;
    sub_225B21FAC(v17, &v50);

    v19 = v51;
    if (v51)
    {
      v46 = v50;
      v44 = v52;
      v45 = v53;
      v21 = v54;
      v20 = v55;
    }

    else
    {
      v50 = v1;
      v24 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v25 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v27 = [v25 code];
        v28 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v28;
        *(inited + 40) = v27;
        v21 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v29 = v1;
        v45 = 0;
        v44 = 0;
        v46 = 0;
        v19 = MEMORY[0x277D84F90];
      }

      else
      {
        v50 = v1;
        v30 = v1;
        v31 = sub_225CCE954();
        v32 = v46;
        v33 = swift_dynamicCast();
        v34 = *(v31 - 8);
        (*(v34 + 56))(v32, v33 ^ 1u, 1, v31);
        LODWORD(v34) = (*(v34 + 48))(v32, 1, v31);
        sub_2259CB640(v32, &unk_27D73B050, &unk_225CD3AD0);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 23;
        }

        v46 = v35;
        v19 = MEMORY[0x277D84F90];
        v21 = sub_225B2C374(MEMORY[0x277D84F90]);
        v36 = v1;
        v45 = 0;
        v44 = 0;
      }

      v20 = v1;
    }

    v37 = v47 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v50);

    v39 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_225B29AA0(0, *(v19 + 2) + 1, 1, v19);
    }

    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    if (v41 >= v40 >> 1)
    {
      v19 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v19);
    }

    *(v19 + 2) = v41 + 1;
    v42 = &v19[56 * v41];
    *(v42 + 4) = 0;
    *(v42 + 5) = 0;
    *(v42 + 6) = 0xD00000000000001FLL;
    *(v42 + 7) = 0x8000000225D1A6E0;
    *(v42 + 8) = 0xD000000000000023;
    *(v42 + 9) = v37;
    *(v42 + 10) = 52;
    *v16 = v46;
    v43 = v44;
    *(v16 + 8) = v19;
    *(v16 + 16) = v43;
    *(v16 + 24) = v45;
    *(v16 + 32) = v39;
    *(v16 + 40) = v20;
    swift_willThrow();
  }

  else
  {
    v22 = v11;
    v23 = v12;
    sub_2259BEF00(v8, v10);
    v50 = v22;
    v51 = v23;
    sub_225CCDBD4();
  }
}

uint64_t sub_225A72998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_225CCDEA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_225A72A28()
{
  result = qword_27D73BC38;
  if (!qword_27D73BC38)
  {
    type metadata accessor for SESKeyForHPKE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC38);
  }

  return result;
}

uint64_t sub_225A72AB4(uint64_t a1)
{
  result = type metadata accessor for SESKeystore();
  if (v2 <= 0x3F)
  {
    result = sub_225CCDEA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SESKeystore.SignatureOutputFormat.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

char *sub_225A72BEC(unint64_t a1)
{
  v137 = a1;
  v151 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v129 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v130 = &v127 - v5;
  MEMORY[0x28223BE20](v4);
  v128 = &v127 - v6;
  v136 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v136);
  v135 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v127 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v127 - v17;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  v131 = *(v12 + 16);
  v132 = v20;
  v140 = v11;
  v131(v18, &v19[v20], v11);
  os_unfair_lock_unlock(&v19[v21]);
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  v24 = os_log_type_enabled(v22, v23);
  v139 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2259A7000, v22, v23, "SESKeystore createKey", v25, 2u);
    v26 = v25;
    v10 = v139;
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  v133 = *(v12 + 8);
  v134 = v12 + 8;
  (v133)(v18, v140);
  if (qword_27D73A718 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v136, qword_27D7417A8);
  v28 = v135;
  sub_2259CB588(v27, v135);
  DIPSignpost.init(_:)(v28, v10);
  v145 = 0;
  v29 = SESKeyCreate();
  v30 = v145;
  v31 = v145;
  v32 = v31;
  if (!v29)
  {
    v36 = v138;
    if (v31)
    {
      v137 = v30;
      v33 = 0;
      v35 = 0xF000000000000000;
      goto LABEL_12;
    }

LABEL_18:
    v140 = 0x8000000225D1A7B0;
    v59 = MEMORY[0x277D84F90];
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v61 = swift_allocError();
    v63 = v62;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    v66 = v130;
    (*(v65 + 56))(v130, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v66, 1, v64);
    sub_2259CB640(v66, &unk_27D73B050, &unk_225CD3AD0);
    if (v64)
    {
      v67 = 199;
    }

    else
    {
      v67 = 23;
    }

    v68 = sub_225B2C374(v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v68;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v145);

    v70 = v145;
    v71 = sub_225B29AA0(0, 1, 1, v59);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD000000000000032;
    *(v74 + 5) = 0x8000000225D1A770;
    *(v74 + 6) = 0xD00000000000001FLL;
    *(v74 + 7) = v140;
    *(v74 + 8) = 0x654B657461657263;
    *(v74 + 9) = 0xEF293A6C63612879;
    *(v74 + 10) = 70;
    *v63 = v67;
    *(v63 + 8) = v71;
    *(v63 + 16) = 0xD000000000000032;
    *(v63 + 24) = 0x8000000225D1A770;
    *(v63 + 32) = v70;
    *(v63 + 40) = 0;
    swift_willThrow();
    goto LABEL_36;
  }

  v137 = v30;
  v33 = sub_225CCCFA4();
  v35 = v34;

  if (!v32)
  {
    if (v35 >> 60 != 15)
    {
      os_unfair_lock_lock(&v19[v21]);
      v81 = v127;
      v82 = v140;
      v131(v127, &v19[v132], v140);
      os_unfair_lock_unlock(&v19[v21]);
      sub_2259CB6FC(v33, v35);
      sub_225B431A4(v81, v33, v35);
      sub_2259B97A8(v33, v35);
      (v133)(v81, v82);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v10);
      return v33;
    }

    goto LABEL_18;
  }

  v36 = v138;
LABEL_12:
  os_unfair_lock_lock(&v19[v21]);
  v131(v36, &v19[v132], v140);
  os_unfair_lock_unlock(&v19[v21]);
  v37 = v32;
  v38 = sub_225CCD934();
  v39 = sub_225CCED14();

  v40 = os_log_type_enabled(v38, v39);
  v135 = v33;
  v130 = v35;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v145 = v42;
    *v41 = 136446210;
    v43 = [v37 debugDescription];
    v44 = sub_225CCE474();
    v46 = v45;

    v47 = sub_2259BE198(v44, v46, &v145);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_2259A7000, v38, v39, "Error from SESKeyCreate: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA6F950](v42, -1, -1);
    MEMORY[0x22AA6F950](v41, -1, -1);

    v48 = v138;
  }

  else
  {

    v48 = v36;
  }

  (v133)(v48, v140);
  v49 = 0x8000000225D1A7D0;
  v140 = "sponse or an error";
  v50 = v37;
  v134 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v51 = swift_allocError();
  v53 = v52;
  swift_getErrorValue();
  v54 = v142;
  v55 = v50;
  sub_225B21FAC(v54, &v145);

  v56 = v146;
  v136 = v51;
  v138 = 0x8000000225D1A7D0;
  if (v146)
  {
    v133 = v145;
    v57 = v147;
    v49 = v148;
    v58 = v149;
    v137 = v150;
  }

  else
  {
    v145 = v55;
    v75 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v76 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v78 = [v76 code];
      v79 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v79;
      *(inited + 40) = v78;
      v58 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v80 = v75;
      v49 = 0;
      v57 = 0;
      v56 = MEMORY[0x277D84F90];
      v133 = 199;
    }

    else
    {
      v145 = v75;
      v83 = sub_225CCE954();
      v84 = v75;
      v85 = v128;
      v86 = swift_dynamicCast();
      v87 = *(v83 - 8);
      (*(v87 + 56))(v85, v86 ^ 1u, 1, v83);
      LODWORD(v87) = (*(v87 + 48))(v85, 1, v83);
      sub_2259CB640(v85, &unk_27D73B050, &unk_225CD3AD0);
      if (v87)
      {
        v88 = 199;
      }

      else
      {
        v88 = 23;
      }

      v133 = v88;
      v56 = MEMORY[0x277D84F90];
      v58 = sub_225B2C374(MEMORY[0x277D84F90]);
      v89 = v84;
      v57 = 0xD000000000000017;
    }
  }

  v140 |= 0x8000000000000000;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v58;
  sub_225B2C4A0(v134, sub_225B2AC40, 0, v90, &v145);

  v91 = v145;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
  }

  v93 = *(v56 + 2);
  v92 = *(v56 + 3);
  if (v93 >= v92 >> 1)
  {
    v56 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v56);
  }

  *(v56 + 2) = v93 + 1;
  v94 = &v56[56 * v93];
  v95 = v138;
  *(v94 + 4) = 0xD000000000000017;
  *(v94 + 5) = v95;
  v96 = v140;
  *(v94 + 6) = 0xD00000000000001FLL;
  *(v94 + 7) = v96;
  *(v94 + 8) = 0x654B657461657263;
  *(v94 + 9) = 0xEF293A6C63612879;
  *(v94 + 10) = 67;
  *v53 = v133;
  *(v53 + 8) = v56;
  *(v53 + 16) = v57;
  *(v53 + 24) = v49;
  *(v53 + 32) = v91;
  v61 = v136;
  *(v53 + 40) = v137;
  swift_willThrow();

  sub_2259B97A8(v135, v130);
LABEL_36:
  v138 = 0;
  v97 = v139;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v97);
  v98 = v61;
  v99 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v141 = swift_allocError();
  v101 = v100;
  swift_getErrorValue();
  v102 = v144;
  v103 = v61;
  sub_225B21FAC(v102, &v145);

  v104 = v146;
  if (v146)
  {
    v139 = v145;
    v105 = v148;
    v137 = v147;
    v107 = v149;
    v106 = v150;
  }

  else
  {
    v145 = v61;
    v108 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v109 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v110 = swift_initStackObject();
      *(v110 + 16) = xmmword_225CD30F0;
      v106 = v61;
      *(v110 + 32) = 20;
      v111 = [v109 code];
      v112 = MEMORY[0x277D83BF8];
      *(v110 + 64) = MEMORY[0x277D83B88];
      *(v110 + 72) = v112;
      *(v110 + 40) = v111;
      v107 = sub_225B2C374(v110);
      swift_setDeallocating();
      sub_2259CB640(v110 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v113 = v61;
      v137 = 0;
      v139 = 0;
      v105 = 0;
      v104 = MEMORY[0x277D84F90];
    }

    else
    {
      v145 = v61;
      v114 = v61;
      v115 = sub_225CCE954();
      v116 = v129;
      v117 = swift_dynamicCast();
      v118 = *(v115 - 8);
      (*(v118 + 56))(v116, v117 ^ 1u, 1, v115);
      LODWORD(v118) = (*(v118 + 48))(v116, 1, v115);
      sub_2259CB640(v116, &unk_27D73B050, &unk_225CD3AD0);
      if (v118)
      {
        v119 = 0;
      }

      else
      {
        v119 = 23;
      }

      v139 = v119;
      v104 = MEMORY[0x277D84F90];
      v107 = sub_225B2C374(MEMORY[0x277D84F90]);
      v120 = v61;
      v106 = v61;
      v137 = 0;
      v105 = 0;
    }
  }

  v121 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v107;
  sub_225B2C4A0(v99, sub_225B2AC40, 0, v121, &v145);

  v33 = v145;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v104 = sub_225B29AA0(0, *(v104 + 2) + 1, 1, v104);
  }

  v123 = *(v104 + 2);
  v122 = *(v104 + 3);
  if (v123 >= v122 >> 1)
  {
    v104 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v104);
  }

  *(v104 + 2) = v123 + 1;
  v124 = &v104[56 * v123];
  *(v124 + 4) = 0;
  *(v124 + 5) = 0;
  *(v124 + 6) = 0xD00000000000001FLL;
  *(v124 + 7) = v140;
  *(v124 + 8) = 0x654B657461657263;
  *(v124 + 9) = 0xEF293A6C63612879;
  *(v124 + 10) = 76;
  *v101 = v139;
  v125 = v137;
  *(v101 + 8) = v104;
  *(v101 + 16) = v125;
  *(v101 + 24) = v105;
  *(v101 + 32) = v33;
  *(v101 + 40) = v106;
  swift_willThrow();

  return v33;
}

unint64_t sub_225A73C30(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000016;
}

unint64_t sub_225A73D14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 *a7, void *a8)
{
  v188 = a8;
  v189 = a6;
  v186 = a5;
  v191 = a1;
  v203 = *MEMORY[0x277D85DE8];
  v167 = sub_225CCDF54();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v168 = v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v172 = v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v169 = v165 - v16;
  v182 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v182);
  v181 = v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v18 - 8);
  v192 = v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCD954();
  v21 = *(v20 - 1);
  v22 = MEMORY[0x28223BE20](v20);
  v171 = v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v184 = v165 - v25;
  MEMORY[0x28223BE20](v24);
  v187 = v165 - v26;
  v170 = *a7;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v30 = *(v21 + 16);
  v176 = v28;
  v193 = v21;
  v177 = v21 + 16;
  v175 = v30;
  v30(v187, &v27[v28], v20);
  v179 = v27;
  v178 = v29;
  os_unfair_lock_unlock(&v27[v29]);
  v31 = v191;
  sub_2259CB710(v191, a2);
  sub_2259CB710(a3, a4);
  v32 = a3;
  v190 = a4;
  v33 = v186;
  v34 = v189;
  sub_2259CB710(v186, v189);
  v35 = v188;
  v36 = sub_225CCD934();
  v185 = v20;
  v37 = v36;
  v38 = sub_225CCED04();
  sub_2259BEF00(v31, a2);
  v39 = v190;
  sub_2259BEF00(v32, v190);
  sub_2259BEF00(v33, v34);
  v174 = v35;

  v173 = v38;
  v180 = v37;
  v40 = os_log_type_enabled(v37, v38);
  v41 = v193;
  v183 = v32;
  if (v40)
  {
    v42 = v39;
    v43 = v32;
    v44 = swift_slowAlloc();
    v165[0] = swift_slowAlloc();
    v197 = v165[0];
    *v44 = 136315906;
    v45 = v194;
    v196 = sub_225B34448(v31, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259CB764();
    v46 = sub_225CCE384();
    v165[1] = a2;
    v48 = v47;

    v49 = sub_2259BE198(v46, v48, &v197);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v196 = sub_225B34448(v43, v42);
    v50 = sub_225CCE384();
    v52 = v51;

    v53 = sub_2259BE198(v50, v52, &v197);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2080;
    v54 = sub_225B34448(v186, v189);
    v194 = v45;
    v196 = v54;
    v55 = v192;
    v56 = sub_225CCE384();
    v58 = v57;

    v59 = sub_2259BE198(v56, v58, &v197);

    *(v44 + 24) = v59;
    *(v44 + 32) = 2080;
    v60 = v188;
    v196 = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC50, &qword_225CDC258);
    v61 = sub_225CCEFB4();
    v63 = sub_2259BE198(v61, v62, &v197);

    *(v44 + 34) = v63;
    v64 = v180;
    _os_log_impl(&dword_2259A7000, v180, v173, "SESKeystore signDigest digest = %s, keyBlob = %s, externalizedLAContext = %s, seAccessEndpoint = %s", v44, 0x2Au);
    v65 = v165[0];
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v65, -1, -1);
    MEMORY[0x22AA6F950](v44, -1, -1);

    v66 = v187;
    v67 = v185;
    v187 = *(v193 + 8);
    (v187)(v66, v185);
    v68 = v60;
  }

  else
  {

    v69 = v187;
    v67 = v185;
    v187 = *(v41 + 8);
    (v187)(v69, v185);
    v55 = v192;
    v68 = v188;
  }

  if (qword_27D73A720 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v182, qword_27D7417C0);
  v71 = v181;
  sub_2259CB588(v70, v181);
  DIPSignpost.init(_:)(v71, v55);
  v72 = *MEMORY[0x277CDC2B8];
  if (v68)
  {
    v73 = v174;
    v74 = v72;
    v75 = sub_225CCCF74();
    v76 = sub_225CCCF74();
    v77 = sub_225CCCF74();
    v197 = 0;
    v78 = SESKeySignPrecomputedDigestWithListenerEndpoint();

    if (v78)
    {
      v79 = v197;
      v80 = sub_225CCCFA4();
      v82 = v81;

      goto LABEL_16;
    }

    v79 = v197;
  }

  else
  {
    v83 = v72;
    v84 = sub_225CCCF74();
    v85 = sub_225CCCF74();
    v78 = sub_225CCCF74();
    v197 = 0;
    v86 = SESKeySignPrecomputedDigest();

    if (v86)
    {
      v79 = v197;
      v80 = sub_225CCCFA4();
      v82 = v87;

      goto LABEL_16;
    }

    v79 = v197;
  }

  v80 = 0;
  v82 = 0xF000000000000000;
LABEL_16:
  v88 = v184;
  v89 = v194;
  if (v79)
  {
    v190 = v80;
    v90 = v179;
    v91 = v178;
    os_unfair_lock_lock(&v179[v178]);
    v175(v88, &v90[v176], v67);
    os_unfair_lock_unlock(&v90[v91]);
    v92 = v79;
    v93 = sub_225CCD934();
    v94 = sub_225CCED14();

    v95 = os_log_type_enabled(v93, v94);
    v194 = v89;
    v189 = v82;
    v191 = v79;
    if (v95)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v197 = v97;
      *v96 = 136446210;
      v98 = [v92 debugDescription];
      v99 = sub_225CCE474();
      v100 = v88;
      v102 = v101;

      v103 = sub_2259BE198(v99, v102, &v197);

      *(v96 + 4) = v103;
      _os_log_impl(&dword_2259A7000, v93, v94, "Error from SESKeySignPrecomputedDigest: %{public}s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AA6F950](v97, -1, -1);
      MEMORY[0x22AA6F950](v96, -1, -1);

      v104 = v100;
      v105 = v185;
    }

    else
    {

      v104 = v88;
      v105 = v67;
    }

    (v187)(v104, v105);
    v193 = 0x8000000225D1A890;
    v187 = "nature or an error";
    v122 = v92;
    v123 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v188 = swift_allocError();
    v125 = v124;
    swift_getErrorValue();
    v126 = v195;
    v78 = v122;
    sub_225B21FAC(v126, &v197);

    v127 = v198;
    if (v198)
    {
      v186 = v197;
      v128 = v200;
      v185 = v199;
      v130 = v201;
      v129 = v202;
      v131 = &v205;
    }

    else
    {
      v197 = v78;
      v132 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (!swift_dynamicCast())
      {
        v197 = v132;
        v152 = sub_225CCE954();
        v185 = v132;
        v153 = v169;
        v154 = swift_dynamicCast();
        v155 = *(v152 - 8);
        (*(v155 + 56))(v153, v154 ^ 1u, 1, v152);
        v156 = (*(v155 + 48))(v153, 1, v152);
        sub_2259CB640(v153, &unk_27D73B050, &unk_225CD3AD0);
        if (v156)
        {
          v157 = 200;
        }

        else
        {
          v157 = 23;
        }

        v186 = v157;
        v127 = MEMORY[0x277D84F90];
        v130 = sub_225B2C374(MEMORY[0x277D84F90]);
        v158 = v185;
        v185 = 0xD000000000000026;
        v128 = v193;
        goto LABEL_32;
      }

      v133 = v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v135 = [v133 code];
      v136 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v136;
      *(inited + 40) = v135;
      v130 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v137 = v132;
      v185 = 0;
      v128 = 0;
      v127 = MEMORY[0x277D84F90];
      v129 = 200;
      v131 = &v204;
    }

    *(v131 - 32) = v129;
LABEL_32:
    v138 = v187 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v197 = v130;
    sub_225B2C4A0(v123, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v197);

    v140 = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_225B29AA0(0, *(v127 + 2) + 1, 1, v127);
    }

    v142 = *(v127 + 2);
    v141 = *(v127 + 3);
    if (v142 >= v141 >> 1)
    {
      v127 = sub_225B29AA0((v141 > 1), v142 + 1, 1, v127);
    }

    *(v127 + 2) = v142 + 1;
    v143 = &v127[56 * v142];
    v144 = v193;
    *(v143 + 4) = 0xD000000000000026;
    *(v143 + 5) = v144;
    *(v143 + 6) = 0xD00000000000001FLL;
    *(v143 + 7) = 0x8000000225D1A7B0;
    *(v143 + 8) = 0xD00000000000004ALL;
    *(v143 + 9) = v138;
    *(v143 + 10) = 111;
    *v125 = v186;
    v145 = v185;
    *(v125 + 8) = v127;
    *(v125 + 16) = v145;
    *(v125 + 24) = v128;
    *(v125 + 32) = v140;
    *(v125 + 40) = v191;
    swift_willThrow();
    sub_2259B97A8(v190, v189);

    goto LABEL_37;
  }

  if (v82 >> 60 == 15)
  {
    v193 = 0x8000000225D1A7B0;
    v191 = 0x8000000225D1A840;
    v106 = MEMORY[0x277D84F90];
    v107 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v109 = v108;
    v110 = sub_225CCE954();
    v111 = *(v110 - 8);
    v112 = v172;
    (*(v111 + 56))(v172, 1, 1, v110);
    LODWORD(v110) = (*(v111 + 48))(v112, 1, v110);
    sub_2259CB640(v112, &unk_27D73B050, &unk_225CD3AD0);
    if (v110)
    {
      v113 = 200;
    }

    else
    {
      v113 = 23;
    }

    v114 = sub_225B2C374(v106);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v197 = v114;
    sub_225B2C4A0(v107, sub_225B2AC40, 0, v115, &v197);

    v116 = v197;
    v117 = sub_225B29AA0(0, 1, 1, v106);
    v78 = *(v117 + 2);
    v118 = *(v117 + 3);
    if (v78 >= v118 >> 1)
    {
      v117 = sub_225B29AA0((v118 > 1), v78 + 1, 1, v117);
    }

    *(v117 + 2) = v78 + 1;
    v119 = &v117[56 * v78];
    *(v119 + 4) = 0xD000000000000042;
    *(v119 + 5) = 0x8000000225D1A7F0;
    v120 = v193;
    *(v119 + 6) = 0xD00000000000001FLL;
    *(v119 + 7) = v120;
    v121 = v191;
    *(v119 + 8) = 0xD00000000000004ALL;
    *(v119 + 9) = v121;
    *(v119 + 10) = 114;
    *v109 = v113;
    *(v109 + 8) = v117;
    *(v109 + 16) = 0xD000000000000042;
    *(v109 + 24) = 0x8000000225D1A7F0;
    *(v109 + 32) = v116;
    *(v109 + 40) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  if (v170)
  {
    v148 = v179;
    v149 = v178;
    os_unfair_lock_lock(&v179[v178]);
    v150 = v171;
    v175(v171, &v148[v176], v67);
    os_unfair_lock_unlock(&v148[v149]);
    sub_2259CB6FC(v80, v82);
    sub_225B431D4(v150, v80, v82);
    v151 = v67;
    v78 = v80;
LABEL_48:
    sub_2259B97A8(v80, v82);
    (v187)(v150, v151);
    v164 = v192;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v164);
    return v78;
  }

  v197 = v80;
  v198 = v82;
  sub_2259CB710(v80, v82);
  sub_2259DB42C();
  v159 = v168;
  sub_225CCDF24();
  v150 = v171;
  if (!v89)
  {
    v151 = v67;
    v78 = sub_225CCDF34();
    v161 = v160;
    (*(v166 + 8))(v159, v167);
    v162 = v179;
    v163 = v178;
    os_unfair_lock_lock(&v179[v178]);
    v175(v150, &v162[v176], v151);
    os_unfair_lock_unlock(&v162[v163]);
    sub_2259CB710(v78, v161);
    sub_225B431BC(v150, v78, v161);
    sub_2259BEF00(v78, v161);
    goto LABEL_48;
  }

  sub_2259B97A8(v80, v82);
LABEL_37:
  v146 = v192;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v146);
  return v78;
}

unint64_t sub_225A7517C(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000002ALL;
}

unint64_t sub_225A75260(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000002ALL;
}

unint64_t sub_225A75344(uint64_t a1, void *a2)
{
  v106 = a2;
  v105 = a1;
  v118 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v98 = &v98 - v5;
  v104 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v104);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v98 - v15;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v20 = *(v12 + 16);
  v101 = v18;
  v109 = v11;
  v100 = v20;
  v20(v16, &v18[v17], v11);
  os_unfair_lock_unlock((v17 + v19));
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  v23 = os_log_type_enabled(v21, v22);
  v108 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2259A7000, v21, v22, "SESKeystore getPublicKey", v24, 2u);
    v25 = v24;
    v10 = v108;
    MEMORY[0x22AA6F950](v25, -1, -1);
  }

  v26 = *(v12 + 8);
  v27 = v109;
  v103 = v12 + 8;
  v102 = v26;
  (v26)(v16, v109);
  if (qword_27D73A728 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v104, qword_27D7417D8);
  sub_2259CB588(v28, v7);
  DIPSignpost.init(_:)(v7, v10);
  v29 = sub_225CCCF74();
  v112 = 0;
  v30 = SESKeyPublicKey();

  v31 = v112;
  v32 = v112;
  v33 = v32;
  if (v30)
  {
    v34 = sub_225CCCFA4();
    v36 = v35;

    if (v33)
    {
      v105 = v34;
      v27 = v109;
      v37 = v107;
      goto LABEL_12;
    }

    if (v36 >> 60 != 15)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v10);
      return v34;
    }

LABEL_18:
    v109 = 0x8000000225D1A7B0;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v63;
    v65 = sub_225CCE954();
    v66 = *(v65 - 8);
    v67 = v99;
    (*(v66 + 56))(v99, 1, 1, v65);
    LODWORD(v65) = (*(v66 + 48))(v67, 1, v65);
    sub_2259CB640(v67, &unk_27D73B050, &unk_225CD3AD0);
    if (v65)
    {
      v68 = 202;
    }

    else
    {
      v68 = 23;
    }

    v69 = sub_225B2C374(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v69;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v112);

    v34 = v112;
    v71 = sub_225B29AA0(0, 1, 1, v61);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD000000000000029;
    *(v74 + 5) = 0x8000000225D1A8C0;
    *(v74 + 6) = 0xD00000000000001FLL;
    *(v74 + 7) = v109;
    *(v74 + 8) = 0xD000000000000011;
    *(v74 + 9) = 0x8000000225D1A8F0;
    *(v74 + 10) = 150;
    *v64 = v68;
    *(v64 + 8) = v71;
    *(v64 + 16) = 0xD000000000000029;
    *(v64 + 24) = 0x8000000225D1A8C0;
    *(v64 + 32) = v34;
    *(v64 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  v37 = v107;
  if (!v32)
  {
    goto LABEL_18;
  }

  v105 = 0;
  v36 = 0xF000000000000000;
LABEL_12:
  os_unfair_lock_lock((v17 + v19));
  v100(v37, &v101[v17], v27);
  os_unfair_lock_unlock((v17 + v19));
  v38 = v33;
  v39 = sub_225CCD934();
  v40 = v27;
  v41 = sub_225CCED14();

  v42 = os_log_type_enabled(v39, v41);
  v104 = v36;
  v106 = v31;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v112 = v44;
    *v43 = 136315138;
    v45 = [v38 localizedDescription];
    v46 = sub_225CCE474();
    v48 = v47;

    v49 = sub_2259BE198(v46, v48, &v112);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2259A7000, v39, v41, "Error from SESKeyPublicKey: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AA6F950](v44, -1, -1);
    MEMORY[0x22AA6F950](v43, -1, -1);

    v50 = v107;
  }

  else
  {

    v50 = v37;
  }

  (v102)(v50, v40);
  v109 = 0x8000000225D1A910;
  v102 = "returned a nil public key";
  v51 = v38;
  v103 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v107 = swift_allocError();
  v53 = v52;
  swift_getErrorValue();
  v54 = v111;
  v55 = v51;
  sub_225B21FAC(v54, &v112);

  v56 = v113;
  if (v113)
  {
    v101 = v112;
    v57 = v115;
    v100 = v114;
    v59 = v116;
    v58 = v117;
    v60 = &v120;
  }

  else
  {
    v112 = v55;
    v75 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
      v112 = v75;
      v91 = sub_225CCE954();
      v92 = v75;
      v93 = v98;
      v94 = swift_dynamicCast();
      v95 = *(v91 - 8);
      (*(v95 + 56))(v93, v94 ^ 1u, 1, v91);
      LODWORD(v95) = (*(v95 + 48))(v93, 1, v91);
      sub_2259CB640(v93, &unk_27D73B050, &unk_225CD3AD0);
      if (v95)
      {
        v96 = 202;
      }

      else
      {
        v96 = 23;
      }

      v101 = v96;
      v56 = MEMORY[0x277D84F90];
      v59 = sub_225B2C374(MEMORY[0x277D84F90]);
      v97 = v92;
      v100 = 0xD00000000000001ALL;
      v57 = v109;
      goto LABEL_27;
    }

    v76 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v78 = [v76 code];
    v79 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v79;
    *(inited + 40) = v78;
    v59 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

    v80 = v75;
    v57 = 0;
    v100 = 0;
    v56 = MEMORY[0x277D84F90];
    v58 = 202;
    v60 = &v119;
  }

  *(v60 - 32) = v58;
LABEL_27:
  v34 = 0x8000000225D1A7B0;
  v81 = v102 | 0x8000000000000000;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v59;
  sub_225B2C4A0(v103, sub_225B2AC40, 0, v82, &v112);

  v83 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
  }

  v85 = *(v56 + 2);
  v84 = *(v56 + 3);
  if (v85 >= v84 >> 1)
  {
    v56 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v56);
  }

  *(v56 + 2) = v85 + 1;
  v86 = &v56[56 * v85];
  v87 = v109;
  *(v86 + 4) = 0xD00000000000001ALL;
  *(v86 + 5) = v87;
  *(v86 + 6) = 0xD00000000000001FLL;
  *(v86 + 7) = 0x8000000225D1A7B0;
  *(v86 + 8) = 0xD000000000000011;
  *(v86 + 9) = v81;
  *(v86 + 10) = 147;
  *v53 = v101;
  v88 = v100;
  *(v53 + 8) = v56;
  *(v53 + 16) = v88;
  *(v53 + 24) = v57;
  *(v53 + 32) = v83;
  *(v53 + 40) = v106;
  swift_willThrow();

  sub_2259B97A8(v105, v104);
LABEL_32:
  v89 = v108;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v89);
  return v34;
}

uint64_t sub_225A7600C()
{
  v125 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v109 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v106 = &v105 - v3;
  v116 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v116);
  v115 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v105 - v13;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  v18 = *(v9 + 16);
  v113 = v16;
  v112 = v9 + 16;
  v111 = v18;
  (v18)(v14, &v15[v16], v8);
  v114 = v17;
  os_unfair_lock_unlock(&v15[v17]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v12;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "SESKeystore getCASDCertificate", v25, 2u);
    v26 = v25;
    v7 = v24;
    v8 = v23;
    v9 = v22;
    v12 = v21;
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  v29 = *(v9 + 8);
  v27 = v9 + 8;
  v28 = v29;
  v29(v14, v8);
  if (qword_27D73A730 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v116, qword_27D7417F0);
  v31 = v115;
  sub_2259CB588(v30, v115);
  v116 = v7;
  DIPSignpost.init(_:)(v31, v7);
  v119 = 0;
  v32 = SESKeyGetPTAttestationCASD();
  v33 = v119;
  v34 = v119;
  v35 = v34;
  if (v32)
  {
    v110 = v27;
    v36 = sub_225CCCFA4();
    v38 = v37;

    if (v35)
    {
      v107 = v28;
      goto LABEL_12;
    }

    if (v38 >> 60 != 15)
    {
      v97 = v116;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v97);
      return v36;
    }

LABEL_18:
    v115 = 0x8000000225D1A7B0;
    v66 = MEMORY[0x277D84F90];
    v67 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v69 = v68;
    v70 = sub_225CCE954();
    v71 = *(v70 - 8);
    v72 = v109;
    (*(v71 + 56))(v109, 1, 1, v70);
    LODWORD(v70) = (*(v71 + 48))(v72, 1, v70);
    sub_2259CB640(v72, &unk_27D73B050, &unk_225CD3AD0);
    if (v70)
    {
      v73 = 204;
    }

    else
    {
      v73 = 23;
    }

    v74 = sub_225B2C374(v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v74;
    sub_225B2C4A0(v67, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v119);

    v76 = v119;
    v77 = sub_225B29AA0(0, 1, 1, v66);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v77);
    }

    v36 = v116;
    *(v77 + 2) = v79 + 1;
    v80 = &v77[56 * v79];
    *(v80 + 4) = 0xD000000000000029;
    *(v80 + 5) = 0x8000000225D1A8C0;
    *(v80 + 6) = 0xD00000000000001FLL;
    *(v80 + 7) = v115;
    *(v80 + 8) = 0xD000000000000014;
    *(v80 + 9) = 0x8000000225D1A930;
    *(v80 + 10) = 174;
    *v69 = v73;
    *(v69 + 8) = v77;
    *(v69 + 16) = 0xD000000000000029;
    *(v69 + 24) = 0x8000000225D1A8C0;
    *(v69 + 32) = v76;
    *(v69 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  if (!v34)
  {
    goto LABEL_18;
  }

  v107 = v28;
  v110 = v27;
  v36 = 0;
  v38 = 0xF000000000000000;
LABEL_12:
  v39 = v114;
  os_unfair_lock_lock(&v15[v114]);
  (v111)(v12, &v15[v113], v8);
  os_unfair_lock_unlock(&v15[v39]);
  v40 = v35;
  v41 = sub_225CCD934();
  v42 = sub_225CCED14();

  v43 = os_log_type_enabled(v41, v42);
  v109 = v36;
  v108 = v38;
  v115 = v33;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v114 = v8;
    v45 = v44;
    v46 = swift_slowAlloc();
    v119 = v46;
    *v45 = 136315138;
    v47 = [v40 localizedDescription];
    v48 = sub_225CCE474();
    v49 = v12;
    v51 = v50;

    v52 = sub_2259BE198(v48, v51, &v119);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_2259A7000, v41, v42, "Error from getCASDCertificate: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA6F950](v46, -1, -1);
    MEMORY[0x22AA6F950](v45, -1, -1);

    v53 = v49;
    v54 = v114;
  }

  else
  {

    v53 = v12;
    v54 = v8;
  }

  v107(v53, v54);
  v114 = 0x8000000225D1A950;
  v112 = "sponse or an error";
  v111 = "error from SESKeyPublicKey";
  v55 = v40;
  v56 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v113 = swift_allocError();
  v58 = v57;
  swift_getErrorValue();
  v59 = v118;
  v60 = v55;
  sub_225B21FAC(v59, &v119);

  v61 = v120;
  if (v120)
  {
    v110 = v119;
    v62 = v122;
    v107 = v121;
    v64 = v123;
    v63 = v124;
    v65 = &v127;
  }

  else
  {
    v119 = v60;
    v81 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
      v119 = v81;
      v98 = sub_225CCE954();
      v99 = v81;
      v100 = v106;
      v101 = swift_dynamicCast();
      v102 = *(v98 - 8);
      (*(v102 + 56))(v100, v101 ^ 1u, 1, v98);
      LODWORD(v98) = (*(v102 + 48))(v100, 1, v98);
      sub_2259CB640(v100, &unk_27D73B050, &unk_225CD3AD0);
      if (v98)
      {
        v103 = 204;
      }

      else
      {
        v103 = 23;
      }

      v110 = v103;
      v61 = MEMORY[0x277D84F90];
      v64 = sub_225B2C374(MEMORY[0x277D84F90]);
      v104 = v99;
      v107 = 0xD00000000000001DLL;
      v62 = v114;
      goto LABEL_27;
    }

    v82 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v84 = [v82 code];
    v85 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v85;
    *(inited + 40) = v84;
    v64 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

    v86 = v81;
    v62 = 0;
    v107 = 0;
    v61 = MEMORY[0x277D84F90];
    v63 = 204;
    v65 = &v126;
  }

  *(v65 - 32) = v63;
LABEL_27:
  v87 = v112 | 0x8000000000000000;
  v88 = v111 | 0x8000000000000000;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v64;
  sub_225B2C4A0(v56, sub_225B2AC40, 0, v89, &v119);

  v90 = v119;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_225B29AA0(0, *(v61 + 2) + 1, 1, v61);
  }

  v92 = *(v61 + 2);
  v91 = *(v61 + 3);
  if (v92 >= v91 >> 1)
  {
    v61 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v61);
  }

  *(v61 + 2) = v92 + 1;
  v93 = &v61[56 * v92];
  v94 = v114;
  *(v93 + 4) = 0xD00000000000001DLL;
  *(v93 + 5) = v94;
  *(v93 + 6) = 0xD00000000000001FLL;
  *(v93 + 7) = v87;
  *(v93 + 8) = 0xD000000000000014;
  *(v93 + 9) = v88;
  *(v93 + 10) = 171;
  *v58 = v110;
  v95 = v107;
  *(v58 + 8) = v61;
  *(v58 + 16) = v95;
  *(v58 + 24) = v62;
  *(v58 + 32) = v90;
  *(v58 + 40) = v115;
  swift_willThrow();

  sub_2259B97A8(v109, v108);
  v36 = v116;
LABEL_32:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v36);
  return v36;
}

unint64_t sub_225A76CE4(uint64_t a1, void *a2)
{
  v106 = a2;
  v105 = a1;
  v118 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v98 = &v98 - v5;
  v104 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v104);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v98 - v15;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v20 = *(v12 + 16);
  v101 = v18;
  v109 = v11;
  v100 = v20;
  v20(v16, &v18[v17], v11);
  os_unfair_lock_unlock((v17 + v19));
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  v23 = os_log_type_enabled(v21, v22);
  v108 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2259A7000, v21, v22, "SESKeystore getACLConstraints", v24, 2u);
    v25 = v24;
    v10 = v108;
    MEMORY[0x22AA6F950](v25, -1, -1);
  }

  v26 = *(v12 + 8);
  v27 = v109;
  v103 = v12 + 8;
  v102 = v26;
  (v26)(v16, v109);
  if (qword_27D73A738 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v104, qword_27D741808);
  sub_2259CB588(v28, v7);
  DIPSignpost.init(_:)(v7, v10);
  v29 = sub_225CCCF74();
  v112 = 0;
  v30 = SESKeyGetAccessControlConstraints();

  v31 = v112;
  v32 = v112;
  v33 = v32;
  if (v30)
  {
    v34 = sub_225CCCFA4();
    v36 = v35;

    if (v33)
    {
      v105 = v34;
      v27 = v109;
      v37 = v107;
      goto LABEL_12;
    }

    if (v36 >> 60 != 15)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v10);
      return v34;
    }

LABEL_18:
    v109 = 0x8000000225D1A7B0;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v63;
    v65 = sub_225CCE954();
    v66 = *(v65 - 8);
    v67 = v99;
    (*(v66 + 56))(v99, 1, 1, v65);
    LODWORD(v65) = (*(v66 + 48))(v67, 1, v65);
    sub_2259CB640(v67, &unk_27D73B050, &unk_225CD3AD0);
    if (v65)
    {
      v68 = 205;
    }

    else
    {
      v68 = 23;
    }

    v69 = sub_225B2C374(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v69;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v112);

    v34 = v112;
    v71 = sub_225B29AA0(0, 1, 1, v61);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD000000000000029;
    *(v74 + 5) = 0x8000000225D1A970;
    *(v74 + 6) = 0xD00000000000001FLL;
    *(v74 + 7) = v109;
    *(v74 + 8) = 0xD000000000000016;
    *(v74 + 9) = 0x8000000225D1A9A0;
    *(v74 + 10) = 199;
    *v64 = v68;
    *(v64 + 8) = v71;
    *(v64 + 16) = 0xD000000000000029;
    *(v64 + 24) = 0x8000000225D1A970;
    *(v64 + 32) = v34;
    *(v64 + 40) = 0;
    swift_willThrow();
    goto LABEL_32;
  }

  v37 = v107;
  if (!v32)
  {
    goto LABEL_18;
  }

  v105 = 0;
  v36 = 0xF000000000000000;
LABEL_12:
  os_unfair_lock_lock((v17 + v19));
  v100(v37, &v101[v17], v27);
  os_unfair_lock_unlock((v17 + v19));
  v38 = v33;
  v39 = sub_225CCD934();
  v40 = v27;
  v41 = sub_225CCED14();

  v42 = os_log_type_enabled(v39, v41);
  v104 = v36;
  v106 = v31;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v112 = v44;
    *v43 = 136315138;
    v45 = [v38 localizedDescription];
    v46 = sub_225CCE474();
    v48 = v47;

    v49 = sub_2259BE198(v46, v48, &v112);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2259A7000, v39, v41, "Error form SESKeyGetAccessControlConstraints: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AA6F950](v44, -1, -1);
    MEMORY[0x22AA6F950](v43, -1, -1);

    v50 = v107;
  }

  else
  {

    v50 = v37;
  }

  (v102)(v50, v40);
  v109 = 0x8000000225D1A9C0;
  v102 = "ontrol returned a nil ACL";
  v51 = v38;
  v103 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v107 = swift_allocError();
  v53 = v52;
  swift_getErrorValue();
  v54 = v111;
  v55 = v51;
  sub_225B21FAC(v54, &v112);

  v56 = v113;
  if (v113)
  {
    v101 = v112;
    v57 = v115;
    v100 = v114;
    v59 = v116;
    v58 = v117;
    v60 = &v120;
  }

  else
  {
    v112 = v55;
    v75 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
      v112 = v75;
      v91 = sub_225CCE954();
      v92 = v75;
      v93 = v98;
      v94 = swift_dynamicCast();
      v95 = *(v91 - 8);
      (*(v95 + 56))(v93, v94 ^ 1u, 1, v91);
      LODWORD(v95) = (*(v95 + 48))(v93, 1, v91);
      sub_2259CB640(v93, &unk_27D73B050, &unk_225CD3AD0);
      if (v95)
      {
        v96 = 205;
      }

      else
      {
        v96 = 23;
      }

      v101 = v96;
      v56 = MEMORY[0x277D84F90];
      v59 = sub_225B2C374(MEMORY[0x277D84F90]);
      v97 = v92;
      v100 = 0xD00000000000002CLL;
      v57 = v109;
      goto LABEL_27;
    }

    v76 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v78 = [v76 code];
    v79 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v79;
    *(inited + 40) = v78;
    v59 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

    v80 = v75;
    v57 = 0;
    v100 = 0;
    v56 = MEMORY[0x277D84F90];
    v58 = 205;
    v60 = &v119;
  }

  *(v60 - 32) = v58;
LABEL_27:
  v34 = 0x8000000225D1A7B0;
  v81 = v102 | 0x8000000000000000;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v59;
  sub_225B2C4A0(v103, sub_225B2AC40, 0, v82, &v112);

  v83 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
  }

  v85 = *(v56 + 2);
  v84 = *(v56 + 3);
  if (v85 >= v84 >> 1)
  {
    v56 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v56);
  }

  *(v56 + 2) = v85 + 1;
  v86 = &v56[56 * v85];
  v87 = v109;
  *(v86 + 4) = 0xD00000000000002CLL;
  *(v86 + 5) = v87;
  *(v86 + 6) = 0xD00000000000001FLL;
  *(v86 + 7) = 0x8000000225D1A7B0;
  *(v86 + 8) = 0xD000000000000016;
  *(v86 + 9) = v81;
  *(v86 + 10) = 196;
  *v53 = v101;
  v88 = v100;
  *(v53 + 8) = v56;
  *(v53 + 16) = v88;
  *(v53 + 24) = v57;
  *(v53 + 32) = v83;
  *(v53 + 40) = v106;
  swift_willThrow();

  sub_2259B97A8(v105, v104);
LABEL_32:
  v89 = v108;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v89);
  return v34;
}

unint64_t sub_225A779B0(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, char *a5)
{
  v127 = a5;
  v131 = a4;
  v130 = a3;
  v129 = a2;
  v128 = a1;
  v142 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v120 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v116 - v8;
  v9 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v132 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v116 - v18;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  v23 = *(v15 + 16);
  v123 = v21;
  v122 = v15 + 16;
  v121 = v23;
  v23(v19, &v20[v21], v14);
  v124 = v22;
  os_unfair_lock_unlock(&v20[v22]);
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v15;
    v27 = v14;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2259A7000, v24, v25, "SESKeystore getAttestation", v28, 2u);
    v29 = v28;
    v14 = v27;
    v15 = v26;
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  v31 = *(v15 + 8);
  v30 = (v15 + 8);
  v125 = v31;
  v31(v19, v14);
  if (qword_27D73A740 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v9, qword_27D741820);
  sub_2259CB588(v32, v11);
  DIPSignpost.init(_:)(v11, v133);
  v33 = v127;
  v34 = *(v127 + 16);
  v126 = v30;
  if (v34)
  {
    v119 = v14;
    v136 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v34, 0);
    v35 = v136;
    v36 = v33 + 32;
    do
    {
      ++v36;
      v37 = sub_225CCE474();
      v136 = v35;
      v40 = v35[2];
      v39 = v35[3];
      if (v40 >= v39 >> 1)
      {
        v127 = v37;
        v117 = v38;
        sub_2259D52A4((v39 > 1), v40 + 1, 1);
        v37 = v127;
        v38 = v117;
        v35 = v136;
      }

      v35[2] = v40 + 1;
      v41 = &v35[2 * v40];
      v41[4] = v37;
      v41[5] = v38;
      --v34;
    }

    while (v34);
    v14 = v119;
  }

  v42 = sub_225CCCF74();
  v43 = sub_225CCE444();
  v44 = sub_225CCE7F4();
  v136 = 0;
  v45 = SESKeyCreatePTAttestation();

  v46 = v136;
  v47 = v136;
  v48 = v47;
  if (v45)
  {
    v49 = sub_225CCCFA4();
    v51 = v50;

    if (v48)
    {
      v131 = v46;
      v52 = v132;
      goto LABEL_18;
    }

    if (v51 >> 60 != 15)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v52 = v132;
    if (v47)
    {
      v131 = v46;
      v49 = 0;
      v51 = 0xF000000000000000;
LABEL_18:
      v53 = v124;
      os_unfair_lock_lock(&v20[v124]);
      v121(v52, &v20[v123], v14);
      os_unfair_lock_unlock(&v20[v53]);

      v54 = v48;
      v55 = sub_225CCD934();
      v56 = sub_225CCED14();

      v57 = os_log_type_enabled(v55, v56);
      v130 = v49;
      v129 = v51;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v136 = v59;
        *v58 = 136315138;
        v60 = v14;
        v61 = [v54 localizedDescription];
        v62 = sub_225CCE474();
        v64 = v63;

        v65 = sub_2259BE198(v62, v64, &v136);

        *(v58 + 4) = v65;
        _os_log_impl(&dword_2259A7000, v55, v56, "Error from SESKeyCreatePTAttestation: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x22AA6F950](v59, -1, -1);
        MEMORY[0x22AA6F950](v58, -1, -1);

        v125(v132, v60);
      }

      else
      {

        v125(v52, v14);
      }

      v132 = 0x8000000225D1AA50;
      v127 = "sponse or an error";
      v126 = "tesation returned a nil result";
      v66 = v54;
      v67 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v128 = swift_allocError();
      v69 = v68;
      swift_getErrorValue();
      v70 = v135;
      v71 = v66;
      sub_225B21FAC(v70, &v136);

      v72 = v137;
      if (v137)
      {
        v125 = v136;
        v73 = v139;
        v124 = v138;
        v75 = v140;
        v74 = v141;
        v76 = &v144;
      }

      else
      {
        v136 = v71;
        v77 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
        if (!swift_dynamicCast())
        {
          v136 = v77;
          v109 = sub_225CCE954();
          v110 = v77;
          v111 = v118;
          v112 = swift_dynamicCast();
          v113 = *(v109 - 8);
          (*(v113 + 56))(v111, v112 ^ 1u, 1, v109);
          LODWORD(v113) = (*(v113 + 48))(v111, 1, v109);
          sub_2259CB640(v111, &unk_27D73B050, &unk_225CD3AD0);
          if (v113)
          {
            v114 = 202;
          }

          else
          {
            v114 = 23;
          }

          v125 = v114;
          v72 = MEMORY[0x277D84F90];
          v75 = sub_225B2C374(MEMORY[0x277D84F90]);
          v115 = v110;
          v124 = 0xD000000000000024;
          v73 = v132;
          goto LABEL_28;
        }

        v78 = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v80 = [v78 code];
        v81 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v81;
        *(inited + 40) = v80;
        v75 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v82 = v77;
        v73 = 0;
        v124 = 0;
        v72 = MEMORY[0x277D84F90];
        v74 = 202;
        v76 = &v143;
      }

      *(v76 - 32) = v74;
LABEL_28:
      v49 = v127 | 0x8000000000000000;
      v83 = v126 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v75;
      sub_225B2C4A0(v67, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v136);

      v85 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_225B29AA0(0, *(v72 + 2) + 1, 1, v72);
      }

      v87 = *(v72 + 2);
      v86 = *(v72 + 3);
      if (v87 >= v86 >> 1)
      {
        v72 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v72);
      }

      *(v72 + 2) = v87 + 1;
      v88 = &v72[56 * v87];
      v89 = v132;
      *(v88 + 4) = 0xD000000000000024;
      *(v88 + 5) = v89;
      *(v88 + 6) = 0xD00000000000001FLL;
      *(v88 + 7) = v49;
      *(v88 + 8) = 0xD00000000000002BLL;
      *(v88 + 9) = v83;
      *(v88 + 10) = 222;
      *v69 = v125;
      v90 = v124;
      *(v69 + 8) = v72;
      *(v69 + 16) = v90;
      *(v69 + 24) = v73;
      *(v69 + 32) = v85;
      *(v69 + 40) = v131;
      swift_willThrow();

      sub_2259B97A8(v130, v129);
      goto LABEL_40;
    }
  }

  v49 = 0x8000000225D1A9F0;
  v132 = 0x8000000225D1A7B0;
  v91 = MEMORY[0x277D84F90];
  v92 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v94 = v93;
  v95 = sub_225CCE954();
  v96 = *(v95 - 8);
  v97 = v120;
  (*(v96 + 56))(v120, 1, 1, v95);
  LODWORD(v95) = (*(v96 + 48))(v97, 1, v95);
  sub_2259CB640(v97, &unk_27D73B050, &unk_225CD3AD0);
  if (v95)
  {
    v98 = 202;
  }

  else
  {
    v98 = 23;
  }

  v99 = sub_225B2C374(v91);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v99;
  sub_225B2C4A0(v92, sub_225B2AC40, 0, v100, &v136);

  v101 = v136;
  v102 = sub_225B29AA0(0, 1, 1, v91);
  v104 = *(v102 + 2);
  v103 = *(v102 + 3);
  if (v104 >= v103 >> 1)
  {
    v102 = sub_225B29AA0((v103 > 1), v104 + 1, 1, v102);
  }

  *(v102 + 2) = v104 + 1;
  v105 = &v102[56 * v104];
  *(v105 + 4) = 0xD00000000000002ELL;
  *(v105 + 5) = 0x8000000225D1A9F0;
  v106 = v132;
  *(v105 + 6) = 0xD00000000000001FLL;
  *(v105 + 7) = v106;
  *(v105 + 8) = 0xD00000000000002BLL;
  *(v105 + 9) = 0x8000000225D1AA20;
  *(v105 + 10) = 225;
  *v94 = v98;
  *(v94 + 8) = v102;
  *(v94 + 16) = 0xD00000000000002ELL;
  *(v94 + 24) = 0x8000000225D1A9F0;
  *(v94 + 32) = v101;
  *(v94 + 40) = 0;
  swift_willThrow();
LABEL_40:
  v107 = v133;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v107);
  return v49;
}

uint64_t sub_225A78810(unint64_t a1, void *a2)
{
  v90 = a2;
  v89 = a1;
  v100 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v79 - v3;
  v88 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v88);
  v87 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - v12;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  v17 = *(v9 + 16);
  v83 = v15;
  v82 = v17;
  v17(v13, &v14[v15], v8);
  v84 = v16;
  os_unfair_lock_unlock(&v14[v16]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v86 = v9;
    v21 = v7;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_2259A7000, v18, v19, "SESKeystore deleteKey", v20, 2u);
    v23 = v22;
    v7 = v21;
    v9 = v86;
    MEMORY[0x22AA6F950](v23, -1, -1);
  }

  v25 = *(v9 + 8);
  v24 = v9 + 8;
  v85 = v25;
  v25(v13, v8);
  if (qword_27D73A748 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v88, qword_27D741838);
  v27 = v87;
  sub_2259CB588(v26, v87);
  DIPSignpost.init(_:)(v27, v7);
  v28 = sub_225CCCF74();
  v94 = 0;
  SESKeyDelete();

  v29 = v91;
  if (!v94)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v46 = v7;
    return sub_2259CB6A0(v46);
  }

  v90 = v94;
  v30 = v94;
  v31 = v84;
  os_unfair_lock_lock(&v14[v84]);
  v82(v29, &v14[v83], v8);
  os_unfair_lock_unlock(&v14[v31]);
  v32 = v30;
  v33 = v8;
  v34 = v32;
  v35 = sub_225CCD934();
  v36 = sub_225CCED14();

  v37 = os_log_type_enabled(v35, v36);
  v81 = v7;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    v40 = [v34 localizedDescription];
    v89 = v33;
    v41 = v40;
    v42 = sub_225CCE474();
    v86 = v24;
    v44 = v43;

    v45 = sub_2259BE198(v42, v44, &v94);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_2259A7000, v35, v36, "Error from SESKeyDelete: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA6F950](v39, -1, -1);
    MEMORY[0x22AA6F950](v38, -1, -1);

    v85(v91, v89);
  }

  else
  {

    v85(v29, v33);
  }

  v47 = v34;
  v88 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v91 = swift_allocError();
  v49 = v48;
  swift_getErrorValue();
  v50 = v93;
  v51 = v47;
  sub_225B21FAC(v50, &v94);

  v52 = v95;
  v89 = 0x8000000225D1AA80;
  if (v95)
  {
    v87 = v94;
    v54 = v96;
    v53 = v97;
    v56 = v98;
    v55 = v99;
    v57 = &v102;
  }

  else
  {
    v94 = v51;
    v58 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
      v94 = v58;
      v72 = sub_225CCE954();
      v73 = v58;
      v74 = v80;
      v75 = swift_dynamicCast();
      v76 = *(v72 - 8);
      (*(v76 + 56))(v74, v75 ^ 1u, 1, v72);
      LODWORD(v76) = (*(v76 + 48))(v74, 1, v72);
      sub_2259CB640(v74, &unk_27D73B050, &unk_225CD3AD0);
      if (v76)
      {
        v77 = 201;
      }

      else
      {
        v77 = 23;
      }

      v87 = v77;
      v52 = MEMORY[0x277D84F90];
      v56 = sub_225B2C374(MEMORY[0x277D84F90]);
      v78 = v73;
      v53 = 0x8000000225D1AA80;
      v54 = 0xD000000000000017;
      goto LABEL_17;
    }

    v59 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v61 = [v59 code];
    v62 = MEMORY[0x277D83BF8];
    *(inited + 64) = MEMORY[0x277D83B88];
    *(inited + 72) = v62;
    *(inited + 40) = v61;
    v56 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

    v63 = v58;
    v53 = 0;
    v54 = 0;
    v52 = MEMORY[0x277D84F90];
    v55 = 201;
    v57 = &v101;
  }

  *(v57 - 32) = v55;
LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v56;
  sub_225B2C4A0(v88, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v94);

  v65 = v94;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = sub_225B29AA0(0, *(v52 + 2) + 1, 1, v52);
  }

  v67 = *(v52 + 2);
  v66 = *(v52 + 3);
  if (v67 >= v66 >> 1)
  {
    v52 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v52);
  }

  *(v52 + 2) = v67 + 1;
  v68 = &v52[56 * v67];
  v69 = v89;
  *(v68 + 4) = 0xD000000000000017;
  *(v68 + 5) = v69;
  *(v68 + 6) = 0xD00000000000001FLL;
  *(v68 + 7) = 0x8000000225D1A7B0;
  strcpy(v68 + 64, "deleteKey(_:)");
  *(v68 + 39) = -4864;
  *(v68 + 10) = 245;
  *v49 = v87;
  *(v49 + 8) = v52;
  *(v49 + 16) = v54;
  *(v49 + 24) = v53;
  *(v49 + 32) = v65;
  *(v49 + 40) = v90;
  swift_willThrow();

  v70 = v81;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v46 = v70;
  return sub_2259CB6A0(v46);
}

unint64_t sub_225A79248(unint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = a3;
  v119 = a2;
  v118 = a1;
  v130 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v110 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v108 - v9;
  v117 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  v23 = *(v14 + 16);
  v113 = v21;
  v112 = v14 + 16;
  v111 = v23;
  v23(v19, &v20[v21], v13);
  v114 = v22;
  os_unfair_lock_unlock(&v20[v22]);
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v108 = a4;
    v27 = v17;
    v28 = v14;
    v29 = v13;
    v30 = v26;
    *v26 = 0;
    _os_log_impl(&dword_2259A7000, v24, v25, "SESKeystore changeACL", v26, 2u);
    v31 = v30;
    v13 = v29;
    v14 = v28;
    v17 = v27;
    MEMORY[0x22AA6F950](v31, -1, -1);
  }

  v34 = *(v14 + 8);
  v33 = v14 + 8;
  v32 = v34;
  v115 = v13;
  v34(v19, v13);
  if (qword_27D73A750 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v117, qword_27D741850);
  v36 = v116;
  sub_2259CB588(v35, v116);
  DIPSignpost.init(_:)(v36, v121);
  v37 = sub_225CCCF74();
  v38 = sub_225CCCF74();
  v124 = 0;
  v39 = SESKeyUpdateACL();

  v40 = v124;
  v41 = v124;
  v42 = v41;
  if (v39)
  {
    v119 = v32;
    v43 = sub_225CCCFA4();
    v45 = v44;

    if (!v42)
    {
      if (v45 >> 60 != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v41)
    {
LABEL_18:
      v120 = 0x8000000225D1A7B0;
      v70 = MEMORY[0x277D84F90];
      v71 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v73 = v72;
      v74 = sub_225CCE954();
      v75 = *(v74 - 8);
      v76 = v110;
      (*(v75 + 56))(v110, 1, 1, v74);
      LODWORD(v74) = (*(v75 + 48))(v76, 1, v74);
      sub_2259CB640(v76, &unk_27D73B050, &unk_225CD3AD0);
      if (v74)
      {
        v77 = 206;
      }

      else
      {
        v77 = 23;
      }

      v78 = sub_225B2C374(v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v78;
      sub_225B2C4A0(v71, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v124);

      v80 = v124;
      v81 = sub_225B29AA0(0, 1, 1, v70);
      v43 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v43 >= v82 >> 1)
      {
        v81 = sub_225B29AA0((v82 > 1), v43 + 1, 1, v81);
      }

      *(v81 + 2) = v43 + 1;
      v83 = &v81[56 * v43];
      *(v83 + 4) = 0xD000000000000025;
      *(v83 + 5) = 0x8000000225D1AAA0;
      *(v83 + 6) = 0xD00000000000001FLL;
      *(v83 + 7) = v120;
      *(v83 + 8) = 0xD000000000000026;
      *(v83 + 9) = 0x8000000225D1AAD0;
      *(v83 + 10) = 271;
      *v73 = v77;
      *(v73 + 8) = v81;
      *(v73 + 16) = 0xD000000000000025;
      *(v73 + 24) = 0x8000000225D1AAA0;
      *(v73 + 32) = v80;
      *(v73 + 40) = 0;
      swift_willThrow();
      goto LABEL_36;
    }

    v119 = v32;
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  v46 = v114;
  os_unfair_lock_lock(&v114[v20]);
  v47 = v115;
  v111(v17, &v20[v113], v115);
  os_unfair_lock_unlock(&v46[v20]);
  v48 = v42;
  v49 = sub_225CCD934();
  v50 = sub_225CCED14();

  v51 = os_log_type_enabled(v49, v50);
  v118 = v43;
  v117 = v45;
  v120 = v40;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v116 = v33;
    v54 = v53;
    v124 = v53;
    *v52 = 136315138;
    v55 = [v48 localizedDescription];
    v56 = sub_225CCE474();
    v57 = v17;
    v59 = v58;

    v60 = sub_2259BE198(v56, v59, &v124);

    *(v52 + 4) = v60;
    _os_log_impl(&dword_2259A7000, v49, v50, "Error from SESKeyUpdateACL: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x22AA6F950](v54, -1, -1);
    MEMORY[0x22AA6F950](v52, -1, -1);

    v119(v57, v115);
  }

  else
  {

    v119(v17, v47);
  }

  v115 = "returned a nil result";
  v61 = v48;
  v62 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v119 = swift_allocError();
  v64 = v63;
  swift_getErrorValue();
  v65 = v123;
  v66 = v61;
  sub_225B21FAC(v65, &v124);

  v67 = v125;
  v116 = 0x8000000225D1AB00;
  if (v125)
  {
    v114 = v124;
    v68 = v127;
    v113 = v126;
    v69 = v128;
    v120 = v129;
  }

  else
  {
    v112 = v62;
    v124 = v66;
    v84 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v85 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v87 = [v85 code];
      v88 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v88;
      *(inited + 40) = v87;
      v69 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v89 = v84;
      v68 = 0;
      v113 = 0;
      v67 = MEMORY[0x277D84F90];
      v90 = 206;
      v91 = &v132;
    }

    else
    {
      v124 = v84;
      v92 = sub_225CCE954();
      v93 = v84;
      v94 = v109;
      v95 = swift_dynamicCast();
      v96 = *(v92 - 8);
      (*(v96 + 56))(v94, v95 ^ 1u, 1, v92);
      LODWORD(v96) = (*(v96 + 48))(v94, 1, v92);
      sub_2259CB640(v94, &unk_27D73B050, &unk_225CD3AD0);
      if (v96)
      {
        v97 = 206;
      }

      else
      {
        v97 = 23;
      }

      v114 = v97;
      v67 = MEMORY[0x277D84F90];
      v69 = sub_225B2C374(MEMORY[0x277D84F90]);
      v98 = v93;
      v68 = 0x8000000225D1AB00;
      v90 = 0xD00000000000001ALL;
      v91 = &v131;
    }

    *(v91 - 32) = v90;
    v62 = v112;
  }

  v99 = v115 | 0x8000000000000000;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v69;
  sub_225B2C4A0(v62, sub_225B2AC40, 0, v100, &v124);

  v43 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_225B29AA0(0, *(v67 + 2) + 1, 1, v67);
  }

  v102 = *(v67 + 2);
  v101 = *(v67 + 3);
  if (v102 >= v101 >> 1)
  {
    v67 = sub_225B29AA0((v101 > 1), v102 + 1, 1, v67);
  }

  *(v67 + 2) = v102 + 1;
  v103 = &v67[56 * v102];
  v104 = v116;
  *(v103 + 4) = 0xD00000000000001ALL;
  *(v103 + 5) = v104;
  *(v103 + 6) = 0xD00000000000001FLL;
  *(v103 + 7) = 0x8000000225D1A7B0;
  *(v103 + 8) = 0xD000000000000026;
  *(v103 + 9) = v99;
  *(v103 + 10) = 268;
  *v64 = v114;
  v105 = v113;
  *(v64 + 8) = v67;
  *(v64 + 16) = v105;
  *(v64 + 24) = v68;
  *(v64 + 32) = v43;
  *(v64 + 40) = v120;
  swift_willThrow();

  sub_2259B97A8(v118, v117);
LABEL_36:
  v106 = v121;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v106);
  return v43;
}