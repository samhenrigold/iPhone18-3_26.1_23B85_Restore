uint64_t sub_264499284(uint64_t a1, uint64_t a2)
{
  v4 = sub_26449A02C(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_26449931C(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_2644993C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_26449963C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_264499958(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264499A18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_264499CD8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 >= v11)
  {
    v23 = *(v8 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26449A068(uint64_t a1)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v28 = a1;
  v29 = a1;

  sub_26448DE0C(&qword_27FF6E298, &qword_2644ACCB8);
  sub_26448DE0C(&qword_27FF6E2A0, &qword_2644ACCC0);
  if (swift_dynamicCast())
  {
    sub_26448EF14(v30, v32);
    v3 = sub_26448B580(v32, v32[3]);
    MEMORY[0x28223BE20](v3);
    v27 = v1;
    sub_2644AB2B0();
    return sub_26448B5C4(v32);
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_26449C528(v30);
  v5 = *(a1 + 16);
  v6 = *v1;
  v7 = v1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    v10 = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v9 = *(v11 + 8);
    v10 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    v10 = BYTE6(v7);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_56;
  }

  v10 = HIDWORD(v6) - v6;
  v9 = v6 >> 32;
LABEL_12:
  if (__OFADD__(v9, v5))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v9 + v5 < v9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v9 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v12 = sub_2644AB3D0();
  MEMORY[0x28223BE20](v12);
  v26[2] = v10;
  v26[3] = v5;
  v27 = &v29;
  v13 = sub_26448D468(sub_26449C590, v26);
  v16 = v13;
  if (v15 != v5)
  {
    v20 = 0;
    v18 = *v1;
    v21 = v1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v20 = *(v18 + 16);
      }
    }

    else if (v22)
    {
      v20 = v18;
    }

    v23 = __OFADD__(v20, v10);
    v24 = v20 + v10;
    if (!v23)
    {
      v13 = v24 + v15;
      if (!__OFADD__(v24, v15))
      {
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v25 = *(v18 + 24);
          }

          else
          {
            v25 = 0;
          }

LABEL_42:
          if (v25 >= v13)
          {
            sub_2644AB3E0();
          }

          goto LABEL_55;
        }

        if (!v22)
        {
          v25 = BYTE6(v21);
          goto LABEL_42;
        }

LABEL_40:
        v25 = v18 >> 32;
        goto LABEL_42;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v17 = v14;
  memset(v32, 0, 15);
  if (v14)
  {
    v18 = v14 - 1;
    if (!__OFSUB__(v14, 1))
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        LOBYTE(v18) = 0;
        while (1)
        {
          v19 = v17 - 1;
          if ((v17 - 1) >= *(v16 + 16))
          {
            break;
          }

          *(v32 + v18) = *(v16 + v17 + 31);
          v18 = v18 + 1;
          if ((v18 & 0x100) != 0)
          {
            goto LABEL_47;
          }

          if (v18 == 14)
          {
            *&v30[0] = v32[0];
            *(v30 + 6) = *(v32 + 6);
            v13 = sub_2644AB3F0();
            if (v17 == 1)
            {
            }

            v18 = 0;
          }

          else if (v17 == 1)
          {
            goto LABEL_48;
          }

          --v17;
          if (v19 < 1)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        *&v30[0] = v32[0];
        *(v30 + 6) = *(v32 + 6);
        sub_2644AB3F0();
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_50;
  }
}

void OID.init(derRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2644AB4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_26448B480(a1, a2);
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = sub_2644AB410();
  sub_26448DE0C(&qword_27FF6E390, &qword_2644ACD78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2644ACDA0;
  *(v12 + 32) = v11 / 0x28u;
  *(v12 + 40) = v11 % 0x28u;
  sub_26448B42C(a1, a2);
  sub_26448CEE8(1uLL, a1, a2, &v18);
  sub_2644AB4C0();
LABEL_10:
  v13 = 0;
  while (1)
  {
    v14 = sub_2644AB4A0();
    if ((v14 & 0x100) != 0)
    {
      break;
    }

    v15 = v14 & 0x7F | (v13 << 7);
    v13 = v15;
    if ((v14 & 0x80) == 0)
    {
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_264491794((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 8 * v17 + 32) = v15;
      goto LABEL_10;
    }
  }

  (*(v7 + 8))(v9, v6);
  sub_26448B480(a1, a2);
  if (v13)
  {

    goto LABEL_18;
  }

LABEL_19:
  *a3 = v12;
}

SPRCore::OID_optional __swiftcall OID.init(dotRepresentation:)(Swift::String dotRepresentation)
{
  v27 = v1;
  v31 = 46;
  v32 = 0xE100000000000000;
  v29 = &v31;
  v2 = sub_26449AD3C(0x7FFFFFFFFFFFFFFFLL, 0, sub_26449BF60, v28, dotRepresentation._countAndFlagsBits, dotRepresentation._object, &v31);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = (v2 + 56 + 32 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          swift_bridgeObjectRetain_n();

          __break(1u);
          return result;
        }

        v8 = *(v6 - 3);
        v9 = *(v6 - 2);
        if (!((v9 ^ v8) >> 14))
        {
          goto LABEL_12;
        }

        v10 = *(v6 - 1);
        v11 = *v6;
        if ((*v6 & 0x1000000000000000) == 0)
        {
          break;
        }

        v25 = *(v6 - 2);
        v16 = *(v6 - 3);
        v17 = *(v6 - 1);

        v13 = sub_26449B224(v16, v25, v17, v11, 10);
        LOBYTE(v17) = v18;

        if ((v17 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        ++v7;
        v6 += 4;
        if (v3 == v7)
        {
          goto LABEL_24;
        }
      }

      if ((v11 & 0x2000000000000000) != 0)
      {
        v31 = *(v6 - 1);
        v32 = v11 & 0xFFFFFFFFFFFFFFLL;
        v12 = &v31;
      }

      else if ((v10 & 0x1000000000000000) != 0)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v24 = *(v6 - 3);
        v26 = *(v6 - 2);
        v19 = *(v6 - 1);
        v12 = sub_2644ABB90();
        v10 = v19;
        v8 = v24;
        v9 = v26;
      }

      v13 = sub_26449BFB8(v12, v8, v9, v10, v11, 10);
      v30 = v14 & 1;

      v15 = v30;

      if (v15)
      {
        goto LABEL_12;
      }

LABEL_17:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_264491794(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      if (v21 >= v20 >> 1)
      {
        v5 = sub_264491794((v20 > 1), v21 + 1, 1, v5);
      }

      v4 = v7 + 1;
      *(v5 + 2) = v21 + 1;
      *&v5[8 * v21 + 32] = v13;
      if (v3 - 1 == v7)
      {
        goto LABEL_24;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_24:
  v22 = *(v2 + 16);

  if (v22 != *(v5 + 2))
  {

    v5 = 0;
  }

  *v27 = v5;
  return result;
}

void OID.derRepresentation.getter()
{
  v1 = *v0;
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2644ACBD0;
  v3 = v1[2];
  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v1 + 4;
  v4 = v1[4];
  if (!is_mul_ok(v4, 0x28uLL))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = 40 * v4;
  v7 = v1[5];
  v8 = __CFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v9 <= 0xFF)
  {
    *(v2 + 32) = v9;
    v10 = sub_26448EC78(v2);
    v12 = v11;

    v13 = v1[2];
    sub_26448B42C(v10, v12);
    if (v13 < 3)
    {
LABEL_18:
      sub_26448B480(v10, v12);
      return;
    }

    v14 = 2;
    v15 = MEMORY[0x277D84F90];
    while (v14 != v13)
    {
      v16 = v5[v14];
      v17 = sub_26449168C(0, 1, 1, v15);
      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_26449168C((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v17[v19 + 32] = v16 & 0x7F;
      if (v16 >= 0x80)
      {
        v20 = v19 + 33;
        do
        {
          v21 = *(v17 + 3);
          if (v20 - 32 >= v21 >> 1)
          {
            v17 = sub_26449168C((v21 > 1), v20 - 31, 1, v17);
          }

          v22 = v16 >> 14;
          v16 >>= 7;
          *(v17 + 2) = v20 - 31;
          v17[v20++] = v16 | 0x80;
        }

        while (v22);
      }

      ++v14;
      sub_26449A068(v17);

      if (v14 == v13)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t OID.dotRepresentation.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_26449BC9C(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      v4 += 8;
      v5 = sub_2644ABC70();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_26449BC9C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  sub_26448DE0C(&qword_27FF6E568, &qword_2644AD098);
  sub_26449C424();
  v12 = sub_2644AB640();

  return v12;
}

uint64_t static OID.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26449ACD4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26449AD3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2644AB830();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2644918A4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2644918A4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2644AB800();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2644AB770();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2644AB770();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2644AB830();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2644918A4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2644AB830();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2644918A4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2644918A4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2644AB770();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_26449B0FC(void *result, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!a2)
  {
    v17 = *(a4 + 16);
    v4 = 0;
LABEL_24:
    *result = a4;
    result[1] = v17;

    return v4;
  }

  if (!a3)
  {
    v17 = *(a4 + 16);
LABEL_23:
    v4 = a3;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (!v4)
    {
      v17 = 0;
      goto LABEL_24;
    }

    v5 = v4 - 1;
    if (v4 - 1 >= (a3 - 1))
    {
      v6 = a3 - 1;
    }

    else
    {
      v6 = v4 - 1;
    }

    v7 = v6 + 1;
    if (v7 <= 0x10)
    {
      goto LABEL_25;
    }

    if (v5 >= a3 - 1)
    {
      v5 = a3 - 1;
    }

    if (a4 + v4 + 32 > a2 && v4 - v5 + a4 + 31 < a2->u64 + v5 + 1)
    {
LABEL_25:
      v10 = 1;
      v11 = a2;
      v12 = *(a4 + 16);
    }

    else
    {
      v8 = v7 & 0xF;
      if ((v7 & 0xF) == 0)
      {
        v8 = 16;
      }

      v9 = v7 - v8;
      v10 = v7 - v8 + 1;
      v11 = (a2 + v7 - v8);
      v12 = v4 - v9;
      v13 = (v4 + a4 + 16);
      do
      {
        v14 = *v13--;
        v15 = vrev64q_s8(v14);
        *a2++ = vextq_s8(v15, v15, 8uLL);
        v9 -= 16;
      }

      while (v9);
    }

    v16 = a3 - v10;
    while (1)
    {
      v17 = v12 - 1;
      v11->i8[0] = *(a4 + 31 + v12);
      if (!v16)
      {
        goto LABEL_23;
      }

      v11 = (v11 + 1);
      --v16;
      --v12;
      if (!v17)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_26449B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_26449C664();

  result = sub_2644AB820();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26449B7B4(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2644ABB90();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_26449B7B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2644AB830();
  v6 = sub_26449B834(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26449B834(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2644ABA70();
    if (!v9 || (v10 = v9, v11 = sub_26449B98C(v9, 0), v12 = sub_26449BA00(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2644AB730();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2644AB730();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2644ABB90();
LABEL_4:

  return sub_2644AB730();
}

void *sub_26449B98C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26449BA00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26449BC20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2644AB7E0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2644ABB90();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26449BC20(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2644AB7B0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_26449BC20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2644AB7F0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2667387A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_26449BC9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26449BCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26449BCBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26449BDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26449BCDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26448DE0C(&qword_27FF6E578, &qword_2644AD0F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26449BDE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26448DE0C(&qword_27FF6E380, &qword_2644ACD68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26449BF08(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2644ABC90() & 1;
  }
}

uint64_t sub_26449BF60(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2644ABC90() & 1;
  }
}

uint64_t sub_26449BFB8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_26449BC20(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2644AB7D0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_26449BC20(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_26449BC20(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_2644AB7D0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_26449C424()
{
  result = qword_27FF6E570;
  if (!qword_27FF6E570)
  {
    sub_26448F36C(&qword_27FF6E568, &qword_2644AD098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E570);
  }

  return result;
}

uint64_t sub_26449C494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26449C4DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26449C528(uint64_t a1)
{
  v2 = sub_26448DE0C(&qword_27FF6E2A8, &qword_2644ACCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26449C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26449C5E8(a1, a2, *(v3 + 16), **(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_26449C5E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (__OFSUB__(a2 - result, a3))
    {
      __break(1u);
    }

    else
    {
      sub_26449B0FC(&v5, (a3 + result), a2 - result - a3, a4);
      return v5;
    }
  }

  else
  {

    return a4;
  }

  return result;
}

unint64_t sub_26449C664()
{
  result = qword_27FF6E580;
  if (!qword_27FF6E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E580);
  }

  return result;
}

uint64_t Range.include(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2644AB680())
  {
    return sub_2644AB670() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateRef.derRepresentation.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_2644AB450();

  return v2;
}

unint64_t SecCertificateRef.pemRepresentation.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_2644AB450();
  v4 = v3;

  v5 = sub_2644AB440();
  v7 = v6;
  sub_26448B480(v2, v4);
  MEMORY[0x266738770](v5, v7);

  MEMORY[0x266738770](10, 0xE100000000000000);
  MEMORY[0x266738770](0xD000000000000019, 0x80000002644AD6B0);
  return 0xD00000000000001CLL;
}

uint64_t SecCertificateRef.fingerprint.getter()
{
  v1 = sub_2644AB5C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2644AB5B0();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = SecCertificateCopyData(v0);
  v9 = sub_2644AB450();
  v11 = v10;

  sub_264491AD0(&qword_27FF6E1D8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_2644AB5A0();
  sub_26448B42C(v9, v11);
  sub_26448B24C(v9, v11, v4);
  sub_26448B480(v9, v11);
  sub_2644AB590();
  (*(v2 + 8))(v4, v1);
  v20 = v5;
  v21 = sub_264491AD0(&qword_27FF6E1E0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v12 = sub_26448B51C(v19);
  v13 = v17;
  (*(v17 + 16))(v12, v7, v5);
  sub_26448B580(v19, v20);
  sub_2644AB2B0();
  (*(v13 + 8))(v7, v5);
  v14 = v18;
  sub_26448B5C4(v19);
  sub_26448B480(v9, v11);
  return v14;
}

SecCertificateRef static SecCertificateRef.parse(derRepresentation:)(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = sub_2644AB430();
  v4 = SecCertificateCreateWithData(v2, v3);

  return v4;
}

SecCertificateRef static SecCertificateRef.parse(base64Encoded:)(uint64_t a1)
{
  v1 = sub_2644AB3B0();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = v1;
  v6 = v2;
  v7 = sub_2644AB430();
  v8 = SecCertificateCreateWithData(v4, v7);

  sub_26449013C(v5, v6);
  return v8;
}

unint64_t static SecCertificateRef.parse(pemRepresentation:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2644AB200();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = a1;
  v47[1] = a2;
  sub_2644AB1F0();
  sub_26449D2A8();
  v8 = sub_2644ABAA0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = sub_2644AB760();
  v12 = sub_2644AB760();
  result = sub_2644AB760();
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= (v12 + result))
  {

    v14 = sub_2644AB760();
    v15 = sub_26449D2FC(v14, v8, v10);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    LOBYTE(v15) = sub_26449D398(v15, v17, v19, v21, 0xD00000000000001BLL, 0x80000002644AD690);

    if (v15)
    {

      v22 = sub_2644AB760();
      v23 = sub_26449D410(v22, v8, v10);
      v25 = v24;
      v27 = v26;
      v29 = v28;

      LOBYTE(v23) = sub_26449D398(v23, v25, v27, v29, 0xD000000000000019, 0x80000002644AD6B0);

      if (v23)
      {
        v30 = sub_2644AB760();
        v31 = sub_26448EF4C(v30, v8, v10);

        result = sub_2644AB760();
        if ((result & 0x8000000000000000) == 0)
        {
          result = sub_2644ABA60();
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = result;
          }

          if (v33 >> 14 >= v31 >> 14)
          {
            v34 = sub_2644ABA80();
            v36 = v35;
            v38 = v37;
            v40 = v39;

            MEMORY[0x266738700](v34, v36, v38, v40);

            v41 = sub_2644AB3B0();
            v43 = v42;

            if (v43 >> 60 != 15)
            {
              v44 = *MEMORY[0x277CBECE8];
              v45 = sub_2644AB430();
              v46 = SecCertificateCreateWithData(v44, v45);

              sub_26449013C(v41, v43);
              return v46;
            }

            return 0;
          }

LABEL_17:
          __break(1u);
          return result;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }
  }

  return 0;
}

uint64_t static SecCertificateRef.parseList(pemRepresentation:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2644AB200();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v7 = sub_2644AB6A0();
  v8 = [v6 initWithString_];

  sub_2644AB1F0();
  v9 = sub_2644AB1E0();
  (*(v3 + 8))(v5, v2);
  [v8 setCharactersToBeSkipped_];

  v10 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  if ([v8 isAtEnd])
  {
LABEL_2:
  }

  else
  {
    v11 = *MEMORY[0x277CBECE8];
    while (1)
    {
      sub_2644ABA30();
      if (!v12)
      {
        goto LABEL_13;
      }

      sub_2644ABA40();
      if (!v13)
      {

        return 0;
      }

      v14 = sub_2644AB3B0();
      v16 = v15;

      if (v16 >> 60 == 15 || (v17 = sub_2644AB430(), v18 = SecCertificateCreateWithData(v11, v17), v17, sub_26449013C(v14, v16), !v18))
      {
LABEL_13:

        goto LABEL_16;
      }

      sub_2644ABA30();
      if (!v19)
      {
        break;
      }

      v20 = v18;
      MEMORY[0x2667388A0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2644AB8D0();
      }

      sub_2644AB8F0();

      v10 = v23;
      if ([v8 isAtEnd])
      {
        goto LABEL_2;
      }
    }

LABEL_16:
    return 0;
  }

  return v10;
}

unint64_t sub_26449D2A8()
{
  result = qword_27FF6E588;
  if (!qword_27FF6E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E588);
  }

  return result;
}

uint64_t sub_26449D2FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2644AB780();

    return sub_2644AB830();
  }

  return result;
}

uint64_t sub_26449D398(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2644ABC60() & 1;
  }
}

unint64_t sub_26449D410(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_2644AB780();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2644AB830();
}

uint64_t Set<>.init(rawValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v33 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v25 - v7;
  v30 = swift_checkMetadataState();
  v9 = *(v30 - 8);
  v10 = MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v29 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27 = *(a3 + 24);
  v28 = &v25 - v16;
  v17 = 0;
  v37 = sub_2644AB5D0();
  v25 = (v9 + 8);
  v26 = (v13 + 16);
  v18 = (v13 + 8);
  v19 = (v6 + 8);
  do
  {
    if ((v34 >> v17))
    {
      sub_2644ABB80();
      v36 = v17;
      v20 = AssociatedTypeWitness;
      swift_dynamicCast();
      v21 = v30;
      v22 = sub_2644AB9C0();
      (*v26)(v29);
      v22(v35, 0);
      (*v25)(v12, v21);
      sub_2644AB990();
      v23 = v28;
      sub_2644AB970();
      (*v18)(v23, a2);
      (*v19)(v8, v20);
    }

    ++v17;
  }

  while (v17 != 64);
  return v37;
}

uint64_t Set<>.rawValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v27 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = sub_2644ABA50();
  v28 = *(v34 - 8);
  v8 = MEMORY[0x28223BE20](v34);
  v33 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v26 - v10);
  v32 = a3;
  v26[1] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v26 - v13;
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v30 = sub_2644ABC30();
  MEMORY[0x28223BE20](v30);
  v36 = sub_2644ABC20();
  v29 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v17 = (v26 - v16);
  sub_2644ABB80();
  MEMORY[0x266738830](AssociatedTypeWitness, v15);
  v35[1](v14, AssociatedTypeWitness);
  v35 = v17;
  sub_2644ABC00();
  v30 = 0;
  v18 = (v28 + 32);
  v19 = (v27 + 32);
  v20 = (v27 + 8);
  while (1)
  {
    v21 = v33;
    sub_2644ABC10();
    (*v18)(v11, v21, v34);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *v11;
    (*v19)(v6, v11 + *(TupleTypeMetadata2 + 48), a2);
    v23 = sub_2644AB980();
    (*v20)(v6, a2);
    if (v23)
    {
      v24 = 1 << v22;
      if (v22 >= 0x40)
      {
        v24 = 0;
      }

      if (v22 > 0x40)
      {
        v24 = 0;
      }

      v30 |= v24;
    }
  }

  (*(v29 + 8))(v35, v36);
  return v30;
}

uint64_t static Set<>.all.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_2644ABB80();
  swift_getAssociatedConformanceWitness();
  return sub_2644AB9A0();
}

Swift::String __swiftcall String.redactedToken()()
{
  v2 = v1;
  v3 = v0;
  v25 = 46;
  v26 = 0xE100000000000000;
  v24[2] = &v25;

  v5 = sub_26449AD3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26449E29C, v24, v3, v2, v4);
  v6 = v5;
  if (v5[2] == 3)
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[7];

    v11 = MEMORY[0x266738700](v7, v8, v9, v10);
    v13 = v12;

    v25 = v11;
    v26 = v13;
    v14 = MEMORY[0x266738770](46, 0xE100000000000000);
    if (v6[2] < 2uLL)
    {
      __break(1u);
      goto LABEL_7;
    }

    v16 = v6[8];
    v17 = v6[9];
    v18 = v6[10];
    v19 = v6[11];

    v20 = MEMORY[0x266738700](v16, v17, v18, v19);
    v22 = v21;

    MEMORY[0x266738770](v20, v22);

    v3 = v25;
    v2 = v26;
  }

  else
  {
  }

  v14 = v3;
  v15 = v2;
LABEL_7:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String_optional __swiftcall String.fromBase64()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2644AB700();
  MEMORY[0x28223BE20](v4 - 8);

  v5 = Data.init(base64urlEncoded:options:)(v3, v2);
  v7 = 0;
  v8 = 0;
  if (v6 >> 60 != 15)
  {
    v9 = v5;
    v10 = v6;
    sub_2644AB6F0();
    v11 = sub_2644AB6D0();
    v8 = v12;
    sub_26449013C(v9, v10);
    v7 = v11;
  }

  v13 = v7;
  v14 = v8;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall String.redactedTokenFromBase64()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2644AB700();
  MEMORY[0x28223BE20](v4 - 8);
  v41 = 46;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v6 = sub_26449AD3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26449E2BC, v39, v3, v2, v5);
  v7 = v6;
  if (v6[2] == 3)
  {
    v8 = v6[4];
    v9 = v6[5];
    v10 = v6[6];
    v11 = v6[7];

    v12 = MEMORY[0x266738700](v8, v9, v10, v11);
    v14 = v13;

    if (v7[2] < 2uLL)
    {
      __break(1u);
      goto LABEL_13;
    }

    v17 = v7[8];
    v18 = v7[9];
    v19 = v7[10];
    v20 = v7[11];

    v21 = MEMORY[0x266738700](v17, v18, v19, v20);
    v23 = v22;

    v41 = 0;
    v42 = 0xE000000000000000;

    v24 = Data.init(base64urlEncoded:options:)(v12, v14);
    if (v25 >> 60 != 15)
    {
      v26 = v24;
      v27 = v25;
      sub_2644AB6F0();
      v28 = sub_2644AB6D0();
      v30 = v29;
      sub_26449013C(v26, v27);
      if (v30)
      {

        v12 = v28;
        v14 = v30;
      }
    }

    MEMORY[0x266738770](v12, v14);

    MEMORY[0x266738770](46, 0xE100000000000000);

    v31 = Data.init(base64urlEncoded:options:)(v21, v23);
    if (v32 >> 60 != 15)
    {
      v33 = v31;
      v34 = v32;
      sub_2644AB6F0();
      v35 = sub_2644AB6D0();
      v37 = v36;
      sub_26449013C(v33, v34);
      if (v37)
      {

        v21 = v35;
        v23 = v37;
      }
    }

    MEMORY[0x266738770](v21, v23);

    v3 = v41;
    v2 = v42;
  }

  else
  {
  }

  v15 = v3;
  v16 = v2;
LABEL_13:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::Bool __swiftcall String.isValidUrl()()
{
  sub_26449E3D8();
  sub_26448DE0C(&qword_27FF6E598, &qword_2644AD110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2644ACBD0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_26449E424();
  *(v0 + 32) = 0xD000000000000093;
  *(v0 + 40) = 0x80000002644AD700;
  v1 = sub_2644AB9D0();
  v2 = sub_2644AB6A0();
  v3 = [v1 evaluateWithObject_];

  return v3;
}

unint64_t sub_26449E3D8()
{
  result = qword_27FF6E590;
  if (!qword_27FF6E590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF6E590);
  }

  return result;
}

unint64_t sub_26449E424()
{
  result = qword_27FF6E5A0;
  if (!qword_27FF6E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5A0);
  }

  return result;
}

Swift::Bool __swiftcall String.isValidBase64()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_26448DE0C(&qword_27FF6E5A8, &qword_2644AD118);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v11[2] = v3;
  v11[3] = v2;
  v11[0] = 0xD000000000000016;
  v11[1] = 0x80000002644AD7A0;
  v7 = sub_2644AB500();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26449D2A8();
  sub_2644ABAB0();
  v9 = v8;
  sub_26449E5BC(v6);
  return (v9 & 1) == 0 && (sub_2644AB760() & 3) == 0;
}

uint64_t sub_26449E5BC(uint64_t a1)
{
  v2 = sub_26448DE0C(&qword_27FF6E5A8, &qword_2644AD118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26449E624@<X0>(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  result = sub_26449E8E0();
  if (!v2)
  {
    if ((result & 0x100) != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 1;
      return result;
    }

    v5 = result;
    if ((~result & 0x1F) != 0)
    {
      v6 = result;
LABEL_9:
      *a1 = v6;
      *(a1 + 8) = 0;
    }

    else
    {
      while (1)
      {
        v8 = 0;
        result = [v1 read:&v8 maxLength:1];
        if (result != 1)
        {
          break;
        }

        v6 = v8 | (v5 << 8);
        v5 = v6;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      if (result == -1)
      {
        result = [v1 streamError];
        if (!result)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_264495A70();
        swift_allocError();
        *v7 = 0;
      }

      return swift_willThrow();
    }
  }

  return result;
}

id sub_26449E760()
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sub_26449E8E0();
  if (v2)
  {
    return v0;
  }

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v4 = v3;
  if ((v3 & 0x80) == 0)
  {
    return (v3 & 0x7F);
  }

  if (v3 == 128)
  {
    sub_264495A70();
    v0 = swift_allocError();
    *v6 = 2;
LABEL_18:
    swift_willThrow();
    return v0;
  }

  v0 = 0;
  v7 = 128;
  while (1)
  {
    if (v7 >= v4)
    {
      __break(1u);
    }

    v10 = 0;
    v8 = [v1 read:&v10 maxLength:1];
    if (v8 != 1)
    {
      break;
    }

    ++v7;
    v0 = v10 | (v0 << 8);
    if (v7 == v4)
    {
      return v0;
    }
  }

  if (v8 != -1)
  {
    sub_264495A70();
    v0 = swift_allocError();
    *v9 = 0;
    goto LABEL_18;
  }

  result = [v1 streamError];
  if (result)
  {
    v0 = result;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_26449E8E0()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v1 = [v0 read:&v3 maxLength:1];
  if (v1 == 1)
  {
    return v3;
  }

  if (v1 != -1)
  {
    return 256;
  }

  result = [v0 streamError];
  if (result)
  {
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_26449E9AC(unint64_t a1)
{
  *&v20[23] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14 = bswap64(a1);
    v1 = sub_26448CE88(__clz(a1) >> 3, &v14, v15);
    v3 = v2;
    v5 = v4;
    v7 = v6;
    swift_beginAccess();
    v8 = sub_26448DE0C(&qword_27FF6E458, &unk_2644ACF60);
    v17 = v8;
    v18 = sub_2644A4310();
    v9 = swift_allocObject();
    v16[0] = v9;
    v9[2] = v1;
    v9[3] = v3;
    v9[4] = v5;
    v9[5] = v7;
    v10 = sub_26448B580(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v12 = v11[1];
    v15[0] = *v11;
    v15[1] = v12;
    sub_2644ABD70();
    sub_26448B5C4(v16);
  }

  else
  {
    v19 = 0;
    swift_beginAccess();
    v17 = MEMORY[0x277D838B0];
    v18 = MEMORY[0x277CC9C18];
    v16[0] = &v19;
    v16[1] = v20;
    sub_26448B580(v16, MEMORY[0x277D838B0]);
    sub_2644AB3F0();
    sub_26448B5C4(v16);
  }

  return swift_endAccess();
}

uint64_t sub_26449EB9C(int64_t a1)
{
  *&v23[23] = *MEMORY[0x277D85DE8];
  if (a1 > 127)
  {
    v1 = __clz(a1) >> 3;
    LOBYTE(v17[0]) = -120 - v1;
    swift_beginAccess();
    v20 = MEMORY[0x277D838B0];
    v21 = MEMORY[0x277CC9C18];
    v18 = v17;
    v19 = v17 + 1;
    sub_26448B580(&v18, MEMORY[0x277D838B0]);
    sub_2644AB3F0();
    sub_26448B5C4(&v18);
    v16 = bswap64(a1);
    v3 = sub_26448CE88(v1, &v16, v17);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = sub_26448DE0C(&qword_27FF6E458, &unk_2644ACF60);
    v20 = v10;
    v21 = sub_2644A4310();
    v11 = swift_allocObject();
    v18 = v11;
    *(v11 + 2) = v3;
    *(v11 + 3) = v5;
    *(v11 + 4) = v7;
    *(v11 + 5) = v9;
    v12 = sub_26448B580(&v18, v10);
    v13 = MEMORY[0x28223BE20](v12);
    v14 = v13[1];
    v17[0] = *v13;
    v17[1] = v14;
    sub_2644ABD70();
    sub_26448B5C4(&v18);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    v22 = a1;
    swift_beginAccess();
    v20 = MEMORY[0x277D838B0];
    v21 = MEMORY[0x277CC9C18];
    v18 = &v22;
    v19 = v23;
    sub_26448B580(&v18, MEMORY[0x277D838B0]);
    sub_2644AB3F0();
    sub_26448B5C4(&v18);
  }

  return swift_endAccess();
}

void sub_26449EDE0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  sub_26449E9AC(a1);
  if (!v4)
  {
    v18 = a1;
    v19 = a2;
    v20 = a3;
    TLV.length.getter();
    sub_26449EB9C(v9);
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13 = *(a2 + 16);
      sub_264497534(a2, a3);
      if (v13)
      {
        v14 = (a2 + 48);
        do
        {
          v16 = *(v14 - 1);
          v15 = *v14;
          v17 = *(v14 - 2);
          sub_264497534(v16, *v14);
          sub_26449EDE0(v17, v16, v15);
          v14 += 3;
          sub_264497540(v16, v15);
          --v13;
        }

        while (v13);
      }

      sub_264497540(a2, a3);
    }

    else
    {
      swift_beginAccess();
      v21 = MEMORY[0x277CC9318];
      v22 = MEMORY[0x277CC9300];
      v18 = a2;
      v19 = a3;
      v10 = sub_26448B580(&v18, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      sub_264497534(a2, a3);
      sub_26448DE54(v11, v12, v5 + 16);
      sub_26448B5C4(&v18);
      swift_endAccess();
    }
  }
}

void TLV.length.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 != 2)
      {
        goto LABEL_4;
      }

      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        return;
      }

      __break(1u);
    }

    else if (!v3)
    {
LABEL_4:
      sub_264497540(*(v0 + 8), *(v0 + 16));
      return;
    }

    if (__OFSUB__(HIDWORD(v1), v1))
    {
      goto LABEL_27;
    }

    return;
  }

  v4 = *(v1 + 16);

  v5 = 0;
  v6 = v1 + 48;
  v7 = -1;
  while (1)
  {
    if (v7 - v4 == -1)
    {
      goto LABEL_17;
    }

    if (++v7 >= *(v1 + 16))
    {
      break;
    }

    v14 = *(v6 - 16);
    TLV.length.getter();
    if (v14)
    {
      v9 = 8 - (__clz(v14) >> 3);
      if (v8 > 127)
      {
        goto LABEL_12;
      }

      v10 = 1;
    }

    else
    {
      v10 = 1;
      v9 = 1;
      if (v8 >= 128)
      {
LABEL_12:
        v10 = 9 - (__clz(v8) >> 3);
      }
    }

    v11 = v9 + v10;
    v12 = __OFADD__(v11, v8);
    v13 = v11 + v8;
    if (v12)
    {
      goto LABEL_26;
    }

    v6 += 24;
    v12 = __OFADD__(v5, v13);
    v5 += v13;
    if (v12)
    {
      __break(1u);
LABEL_17:
      sub_264497540(v1, v2);
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void *TLV.init(tag:children:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  a3[2] = 0x2000000000000000;
  return result;
}

void TLV.init(dataRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  sub_26448B42C(a1, a2);
  v8 = sub_2644AB430();
  v9 = [v7 initWithData_];

  sub_26448B480(a1, a2);
  [v9 open];
  sub_26449E624(&v19);
  if (v3)
  {
    goto LABEL_5;
  }

  if ((v20 & 1) != 0 || (v11 = v19, v12 = sub_26449E760(), (v13 & 1) != 0 || (NSInputStream.read(exactly:)(v12), v15 >> 60 == 15)))
  {
    sub_264495A70();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
LABEL_5:
    sub_26448B480(a1, a2);
LABEL_6:

    return;
  }

  v16 = v14;
  v17 = v15;
  if ((sub_26449E8E0() & 0x100) == 0)
  {
    sub_264495A70();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    sub_26448B480(a1, a2);
    sub_26449013C(v16, v17);
    goto LABEL_6;
  }

  [v9 close];
  sub_26448B480(a1, a2);

  *a3 = v11;
  a3[1] = v16;
  a3[2] = v17;
}

unint64_t TLV.derSize.getter()
{
  v7 = *v0;
  TLV.length.getter();
  if (v7)
  {
    v2 = 8 - (__clz(v7) >> 3);
    if (v1 < 128)
    {
      v3 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 1;
    v3 = 1;
    if (v1 < 128)
    {
      goto LABEL_6;
    }
  }

  v3 = 9 - (__clz(v1) >> 3);
LABEL_6:
  v4 = v2 + v3;
  v5 = __OFADD__(v4, v1);
  result = v4 + v1;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t TLV.hexStringValue.getter()
{
  result = TLV.octetStringValue.getter();
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_11:
      v10 = MEMORY[0x28223BE20](result);
      v8 = v7;
      v9 = sub_2644AB740();
      sub_26448B480(v10, v8);
      return v9;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_13;
  }

  v3 = v3;
LABEL_10:
  if (v3 + 0x4000000000000000 >= 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *TLV.children.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_264497534(v1, v2);
    v3 = sub_2644A3E98(v1, v2);
    sub_264497540(v1, v2);
    return v3;
  }

  return v1;
}

uint64_t TLV.dataRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  TLV.length.getter();
  if (v1)
  {
    v5 = 8 - (__clz(v1) >> 3);
    if (v4 <= 127)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
    v5 = 1;
    if (v4 < 128)
    {
      goto LABEL_6;
    }
  }

  v6 = 9 - (__clz(v4) >> 3);
LABEL_6:
  v7 = v5 + v6;
  v8 = v7 + v4;
  if (__OFADD__(v7, v4))
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v8);
    *(inited + 24) = v10;
    sub_26449EDE0(v1, v2, v3);
    swift_beginAccess();
    v11 = *(inited + 16);
    v12 = *(inited + 24);
    swift_setDeallocating();
    v14 = *(inited + 16);
    v13 = *(inited + 24);
    sub_26448B42C(v11, v12);
    sub_26448B480(v14, v13);
    return v11;
  }

  return result;
}

char *TLV.childrenIterator.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_264497534(v1, v2);
    v3 = sub_2644A3E98(v1, v2);
    sub_264497540(v1, v2);
    return v3;
  }

  return v1;
}

void TLV.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x266738D80](*v1);
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = *(v3 + 16);
    if (!v5)
    {
      return;
    }

    v6 = v3 + 48;
    do
    {
      TLV.hash(into:)(a1);
      v6 += 24;
      --v5;
    }

    while (v5);
  }

  else
  {
    sub_26448B42C(v3, v4);
    sub_2644AB460();
  }

  sub_264497540(v3, v4);
}

uint64_t TLV.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v10 = *(v1 + 16);
    if (v10)
    {
      v33 = MEMORY[0x277D84F90];

      sub_26449BC9C(0, v10, 0);
      v11 = v33;
      v12 = v1 + 48;
      do
      {
        v13 = TLV.debugDescription.getter();
        v34 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          v32 = v13;
          v18 = v14;
          sub_26449BC9C((v15 > 1), v16 + 1, 1);
          v14 = v18;
          v13 = v32;
          v11 = v34;
        }

        *(v11 + 16) = v16 + 1;
        v17 = v11 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 24;
        --v10;
      }

      while (v10);
      sub_264497540(v1, v3);
    }

    sub_26448DE0C(&qword_27FF6E568, &qword_2644AD098);
    sub_26449C424();
    v19 = sub_2644AB640();
    v21 = v20;

    sub_2644ABB70();

    sub_26448DE0C(&qword_27FF6E598, &qword_2644AD110);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D83E88];
    *(v22 + 16) = xmmword_2644ACBD0;
    v24 = MEMORY[0x277D83ED0];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v2;
    v25 = sub_2644AB6E0();
    MEMORY[0x266738770](v25);

    MEMORY[0x266738770](0x72646C696863202CLL, 0xEE00205B203A6E65);
    MEMORY[0x266738770](v19, v21);

    MEMORY[0x266738770](2099272992, 0xE400000000000000);
    return 0x203A676174207BLL;
  }

  sub_26448B42C(v1, v3);
  sub_2644ABB70();

  sub_26448DE0C(&qword_27FF6E598, &qword_2644AD110);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83E88];
  *(v4 + 16) = xmmword_2644ACBD0;
  v6 = MEMORY[0x277D83ED0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_2644AB6E0();
  MEMORY[0x266738770](v7);

  result = MEMORY[0x266738770](0x6874676E656C202CLL, 0xEA0000000000203ALL);
  v9 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v9 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_17:
  v26 = sub_2644ABC70();
  MEMORY[0x266738770](v26);

  result = MEMORY[0x266738770](0x3A65756C6176202CLL, 0xE900000000000020);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_28;
    }

    v29 = *(v1 + 16);
    v28 = *(v1 + 24);
    v30 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (!v30)
    {
LABEL_26:
      if (v27 + 0x4000000000000000 >= 0)
      {
LABEL_29:
        MEMORY[0x28223BE20](2 * v27);
        v31 = sub_2644AB740();
        MEMORY[0x266738770](v31);

        MEMORY[0x266738770](32032, 0xE200000000000000);
        sub_264497540(v1, v3);
        return 0x203A676174207BLL;
      }

      __break(1u);
LABEL_28:
      v27 = 0;
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v27 = BYTE6(v3);
    goto LABEL_26;
  }

  LODWORD(v27) = HIDWORD(v1) - v1;
  if (!__OFSUB__(HIDWORD(v1), v1))
  {
    v27 = v27;
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
  return result;
}

BOOL static TLV.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = TLV.octetStringValue.getter();
  v4 = v3;
  v5 = TLV.octetStringValue.getter();
  v7 = v6;
  v8 = sub_26448E938(v2, v4, v5, v6);
  sub_26448B480(v2, v4);
  sub_26448B480(v5, v7);
  return v8;
}

uint64_t TLV.firstChild(tag:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  if ((v5 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_264497534(*(v2 + 8), *(v2 + 16));
    v7 = sub_2644A3E98(v6, v5);
    sub_264497540(v6, v5);
    v6 = v7;
  }

  v8 = (v6 + 32);
  v9 = *(v6 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 3;
    v11 = *v8;
    v8 += 3;
    if (v11 == v4)
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      sub_264497534(v12, v13);

      *a2 = v4;
      a2[1] = v12;
      a2[2] = v13;
      return result;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0x3000000000000000;
  return result;
}

void TLV.filterChildren(tag:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if ((v4 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_264497534(v3, v4);
    v5 = sub_2644A3E98(v3, v4);
    sub_264497540(v3, v4);
    v3 = v5;
  }

  v6 = 0;
  v7 = *(v3 + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = (v3 + 32 + 24 * v6);
  while (1)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v10 = v9 + 3;
    v11 = *v9;
    v9 += 3;
    if (v11 == v2)
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      sub_264497534(v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26449BCBC(0, *(v8 + 16) + 1, 1);
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26449BCBC((v14 > 1), v15 + 1, 1);
      }

      *(v8 + 16) = v15 + 1;
      v16 = (v8 + 24 * v15);
      v16[4] = v2;
      v16[5] = v12;
      v16[6] = v13;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t TLV.init(tag:uint8:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2644ACBD0;
  *(v6 + 32) = a2;
  v7 = sub_26448EC78(v6);
  v9 = v8;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  return result;
}

uint64_t TLV.init(tag:uint16:)@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7 = bswap32(a2) >> 16;
  result = sub_26448C87C(&v7, &v8);
  *a3 = v4;
  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t TLV.init(tag:uint32:)@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7 = bswap32(a2);
  result = sub_26448C87C(&v7, &v8);
  *a3 = v4;
  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t TLV.init(tag:uint64:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7 = bswap64(a2);
  result = sub_26448C87C(&v7, &v8);
  *a3 = v4;
  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t TLV.uint8Value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) == 0)
  {
    sub_264497534(*(v0 + 8), *(v0 + 16));
    goto LABEL_8;
  }

  sub_264497534(v1, v2);
  TLV.length.getter();
  v4 = v3;
  type metadata accessor for DERMemoryWriter();
  inited = swift_initStackObject();
  *(inited + 16) = sub_26449546C(v4);
  *(inited + 24) = v6;
  v7 = *(v1 + 16);
  if (!v7)
  {
LABEL_7:
    sub_264497540(v1, v2);
    swift_beginAccess();
    v1 = *(inited + 16);
    v2 = *(inited + 24);
    swift_setDeallocating();
    v14 = *(inited + 16);
    v13 = *(inited + 24);
    sub_26448B42C(v1, v2);
    sub_26448B480(v14, v13);
LABEL_8:
    v15 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v15 == 2 && *(v1 + 16) != *(v1 + 24))
      {
        goto LABEL_14;
      }
    }

    else if (v15)
    {
      if (v1 != v1 >> 32)
      {
LABEL_14:
        v16 = sub_2644AB410();
        v17 = 0;
LABEL_17:
        sub_26448B480(v1, v2);
        return v16 | (v17 << 8);
      }
    }

    else if ((v2 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

    v16 = 0;
    v17 = 1;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = (v1 + 48);
  while (v8 < *(v1 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 2);
    sub_264497534(v11, *v9);
    sub_26449EDE0(v12, v11, v10);
    ++v8;
    sub_264497540(v11, v10);
    v9 += 3;
    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TLV.uint16Value.getter()
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v53 = *v0;
    *&v56 = *v0;
    *(&v56 + 1) = v1;
    v57 = v3;
    sub_264497534(v1, v3);
    TLV.length.getter();
    v7 = v6;
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v7);
    *(inited + 24) = v9;
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v1 + 48);
      while (v11 < *(v1 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = *(v12 - 2);
        sub_264497534(v14, *v12);
        sub_26449EDE0(v15, v14, v13);
        ++v11;
        sub_264497540(v14, v13);
        v12 += 3;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_7:
    sub_264497540(v1, v3);
    swift_beginAccess();
    v4 = *(inited + 16);
    v5 = *(inited + 24);
    swift_setDeallocating();
    v17 = *(inited + 16);
    v16 = *(inited + 24);
    sub_26448B42C(v4, v5);
    sub_26448B480(v17, v16);
    v2 = v53;
  }

  else
  {
    sub_264497534(v0[1], v0[2]);
    v4 = v1;
    v5 = v3;
  }

  v18 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_26448B480(v4, v5);
      goto LABEL_22;
    }

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    sub_26448B480(v4, v5);
    if (!__OFSUB__(v19, v20))
    {
      if (v19 - v20 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    goto LABEL_60;
  }

  if (!v18)
  {
    sub_26448B480(v4, v5);
    if (BYTE6(v5) != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  sub_26448B480(v4, v5);
  if (__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (HIDWORD(v4) - v4 == 2)
  {
LABEL_18:
    v60 = v2;
    v61 = v1;
    v62 = v3;
    v21 = TLV.octetStringValue.getter();
    v23 = v22;
    v58 = MEMORY[0x277CC9318];
    v59 = MEMORY[0x277CC9300];
    *&v56 = v21;
    *(&v56 + 1) = v22;
    v24 = sub_26448B580(&v56, MEMORY[0x277CC9318]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v27 != 2)
      {
        memset(v54, 0, 14);
        sub_26448B42C(v21, v23);
        v28 = v54;
        v29 = v54;
        goto LABEL_42;
      }

      v32 = *(v25 + 16);
      v33 = *(v25 + 24);
      sub_26448B42C(v21, v23);
      v34 = sub_2644AB250();
      if (v34)
      {
        v35 = sub_2644AB280();
        v25 = v32 - v35;
        if (__OFSUB__(v32, v35))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v34 += v25;
      }

      v36 = __OFSUB__(v33, v32);
      v37 = v33 - v32;
      if (!v36)
      {
LABEL_34:
        v41 = sub_2644AB270();
        if (v41 >= v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v41;
        }

        v43 = (v42 + v34);
        if (v34)
        {
          v29 = v43;
        }

        else
        {
          v29 = 0;
        }

        v28 = v34;
        goto LABEL_42;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v54[0] = *v24;
      LOWORD(v54[1]) = v26;
      BYTE2(v54[1]) = BYTE2(v26);
      BYTE3(v54[1]) = BYTE3(v26);
      BYTE4(v54[1]) = BYTE4(v26);
      BYTE5(v54[1]) = BYTE5(v26);
      sub_26448B42C(v21, v23);
      v28 = v54;
      v29 = v54 + BYTE6(v26);
LABEL_42:
      sub_26448B1B8(v28, v29, v55);
      v45 = v55[0];
      v44 = v55[1];
      sub_26448B5C4(&v56);
      v46 = v44 >> 62;
      if ((v44 >> 62) > 1)
      {
        if (v46 != 2)
        {
          *(&v56 + 6) = 0;
          *&v56 = 0;
          goto LABEL_56;
        }

        v47 = *(v45 + 16);
        v48 = sub_2644AB250();
        if (!v48)
        {
          goto LABEL_54;
        }

        v49 = sub_2644AB280();
        v50 = v47 - v49;
        if (!__OFSUB__(v47, v49))
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else if (!v46)
      {
        *&v56 = v45;
        WORD4(v56) = v44;
        BYTE10(v56) = BYTE2(v44);
        BYTE11(v56) = BYTE3(v44);
        BYTE12(v56) = BYTE4(v44);
        BYTE13(v56) = BYTE5(v44);
LABEL_56:
        v30 = sub_264494AB0(&v56);
        goto LABEL_57;
      }

      if (v45 <= v45 >> 32)
      {
        v48 = sub_2644AB250();
        if (v48)
        {
          v51 = sub_2644AB280();
          v50 = v45 - v51;
          if (!__OFSUB__(v45, v51))
          {
LABEL_53:
            v48 = (v48 + v50);
            goto LABEL_54;
          }

LABEL_66:
          __break(1u);
        }

LABEL_54:
        sub_2644AB270();
        v30 = sub_264494AB0(v48);
        sub_26448B480(v45, v44);
LABEL_57:
        sub_26448B480(v21, v23);
        v31 = 0;
        return v30 | (v31 << 16);
      }

      goto LABEL_63;
    }

    v38 = v25;
    v39 = v25 >> 32;
    v37 = v39 - v38;
    if (v39 >= v38)
    {
      sub_26448B42C(v21, v23);
      v34 = sub_2644AB250();
      if (v34)
      {
        v40 = sub_2644AB280();
        if (__OFSUB__(v38, v40))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v34 += v38 - v40;
      }

      goto LABEL_34;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_22:
  v30 = 0;
  v31 = 1;
  return v30 | (v31 << 16);
}

unint64_t TLV.uint32Value.getter()
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v54 = *v0;
    *&v57 = *v0;
    *(&v57 + 1) = v1;
    v58 = v3;
    sub_264497534(v1, v3);
    TLV.length.getter();
    v7 = v6;
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v7);
    *(inited + 24) = v9;
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v1 + 48);
      while (v11 < *(v1 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = *(v12 - 2);
        sub_264497534(v14, *v12);
        sub_26449EDE0(v15, v14, v13);
        ++v11;
        sub_264497540(v14, v13);
        v12 += 3;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_7:
    sub_264497540(v1, v3);
    swift_beginAccess();
    v4 = *(inited + 16);
    v5 = *(inited + 24);
    swift_setDeallocating();
    v17 = *(inited + 16);
    v16 = *(inited + 24);
    sub_26448B42C(v4, v5);
    sub_26448B480(v17, v16);
    v2 = v54;
  }

  else
  {
    sub_264497534(v0[1], v0[2]);
    v4 = v1;
    v5 = v3;
  }

  v18 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_26448B480(v4, v5);
      goto LABEL_22;
    }

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    sub_26448B480(v4, v5);
    if (!__OFSUB__(v19, v20))
    {
      if (v19 - v20 != 4)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    goto LABEL_60;
  }

  if (!v18)
  {
    sub_26448B480(v4, v5);
    if (BYTE6(v5) != 4)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  sub_26448B480(v4, v5);
  if (__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (HIDWORD(v4) - v4 == 4)
  {
LABEL_18:
    v61 = v2;
    v62 = v1;
    v63 = v3;
    v21 = TLV.octetStringValue.getter();
    v23 = v22;
    v59 = MEMORY[0x277CC9318];
    v60 = MEMORY[0x277CC9300];
    *&v57 = v21;
    *(&v57 + 1) = v22;
    v24 = sub_26448B580(&v57, MEMORY[0x277CC9318]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v27 != 2)
      {
        memset(v55, 0, 14);
        sub_26448B42C(v21, v23);
        v28 = v55;
        v29 = v55;
        goto LABEL_42;
      }

      v32 = *(v25 + 16);
      v33 = *(v25 + 24);
      sub_26448B42C(v21, v23);
      v34 = sub_2644AB250();
      if (v34)
      {
        v35 = sub_2644AB280();
        v25 = v32 - v35;
        if (__OFSUB__(v32, v35))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v34 += v25;
      }

      v36 = __OFSUB__(v33, v32);
      v37 = v33 - v32;
      if (!v36)
      {
LABEL_34:
        v41 = sub_2644AB270();
        if (v41 >= v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v41;
        }

        v43 = (v42 + v34);
        if (v34)
        {
          v29 = v43;
        }

        else
        {
          v29 = 0;
        }

        v28 = v34;
        goto LABEL_42;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v55[0] = *v24;
      LOWORD(v55[1]) = v26;
      BYTE2(v55[1]) = BYTE2(v26);
      BYTE3(v55[1]) = BYTE3(v26);
      BYTE4(v55[1]) = BYTE4(v26);
      BYTE5(v55[1]) = BYTE5(v26);
      sub_26448B42C(v21, v23);
      v28 = v55;
      v29 = v55 + BYTE6(v26);
LABEL_42:
      sub_26448B1B8(v28, v29, v56);
      v45 = v56[0];
      v44 = v56[1];
      sub_26448B5C4(&v57);
      v46 = v44 >> 62;
      if ((v44 >> 62) > 1)
      {
        if (v46 != 2)
        {
          *(&v57 + 6) = 0;
          *&v57 = 0;
          goto LABEL_56;
        }

        v47 = *(v45 + 16);
        v48 = sub_2644AB250();
        if (!v48)
        {
          goto LABEL_54;
        }

        v49 = sub_2644AB280();
        v50 = v47 - v49;
        if (!__OFSUB__(v47, v49))
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else if (!v46)
      {
        *&v57 = v45;
        WORD4(v57) = v44;
        BYTE10(v57) = BYTE2(v44);
        BYTE11(v57) = BYTE3(v44);
        BYTE12(v57) = BYTE4(v44);
        BYTE13(v57) = BYTE5(v44);
LABEL_56:
        v52 = sub_264494AC8(&v57);
        goto LABEL_57;
      }

      if (v45 <= v45 >> 32)
      {
        v48 = sub_2644AB250();
        if (v48)
        {
          v51 = sub_2644AB280();
          v50 = v45 - v51;
          if (!__OFSUB__(v45, v51))
          {
LABEL_53:
            v48 = (v48 + v50);
            goto LABEL_54;
          }

LABEL_66:
          __break(1u);
        }

LABEL_54:
        sub_2644AB270();
        v52 = sub_264494AC8(v48);
        sub_26448B480(v45, v44);
LABEL_57:
        sub_26448B480(v21, v23);
        v31 = 0;
        v30 = v52;
        goto LABEL_58;
      }

      goto LABEL_63;
    }

    v38 = v25;
    v39 = v25 >> 32;
    v37 = v39 - v38;
    if (v39 >= v38)
    {
      sub_26448B42C(v21, v23);
      v34 = sub_2644AB250();
      if (v34)
      {
        v40 = sub_2644AB280();
        if (__OFSUB__(v38, v40))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v34 += v38 - v40;
      }

      goto LABEL_34;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_22:
  v30 = 0;
  v31 = 1;
LABEL_58:
  LOBYTE(v57) = v31;
  return v30 | (v31 << 32);
}

unint64_t TLV.uint64Value.getter()
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v52 = *v0;
    *&v55 = *v0;
    *(&v55 + 1) = v1;
    v56 = v3;
    sub_264497534(v1, v3);
    TLV.length.getter();
    v7 = v6;
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v7);
    *(inited + 24) = v9;
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v1 + 48);
      while (v11 < *(v1 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = *(v12 - 2);
        sub_264497534(v14, *v12);
        sub_26449EDE0(v15, v14, v13);
        ++v11;
        sub_264497540(v14, v13);
        v12 += 3;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_7:
    sub_264497540(v1, v3);
    swift_beginAccess();
    v4 = *(inited + 16);
    v5 = *(inited + 24);
    swift_setDeallocating();
    v17 = *(inited + 16);
    v16 = *(inited + 24);
    sub_26448B42C(v4, v5);
    sub_26448B480(v17, v16);
    v2 = v52;
  }

  else
  {
    sub_264497534(v0[1], v0[2]);
    v4 = v1;
    v5 = v3;
  }

  v18 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_26448B480(v4, v5);
      return 0;
    }

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    sub_26448B480(v4, v5);
    if (!__OFSUB__(v19, v20))
    {
      if (v19 - v20 != 8)
      {
        return 0;
      }

      goto LABEL_18;
    }

    goto LABEL_59;
  }

  if (v18)
  {
    sub_26448B480(v4, v5);
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 == 8)
      {
        goto LABEL_18;
      }

      return 0;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_26448B480(v4, v5);
  if (BYTE6(v5) != 8)
  {
    return 0;
  }

LABEL_18:
  v59 = v2;
  v60 = v1;
  v61 = v3;
  v21 = TLV.octetStringValue.getter();
  v23 = v22;
  v57 = MEMORY[0x277CC9318];
  v58 = MEMORY[0x277CC9300];
  *&v55 = v21;
  *(&v55 + 1) = v22;
  v24 = sub_26448B580(&v55, MEMORY[0x277CC9318]);
  v25 = *v24;
  v26 = v24[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v27)
    {
      v53[0] = *v24;
      LOWORD(v53[1]) = v26;
      BYTE2(v53[1]) = BYTE2(v26);
      BYTE3(v53[1]) = BYTE3(v26);
      BYTE4(v53[1]) = BYTE4(v26);
      BYTE5(v53[1]) = BYTE5(v26);
      sub_26448B42C(v21, v23);
      v28 = v53;
      v29 = v53 + BYTE6(v26);
      goto LABEL_42;
    }

LABEL_30:
    v37 = v25;
    v38 = v25 >> 32;
    v36 = v38 - v37;
    if (v38 >= v37)
    {
      sub_26448B42C(v21, v23);
      v33 = sub_2644AB250();
      if (v33)
      {
        v39 = sub_2644AB280();
        if (__OFSUB__(v37, v39))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v33 += v37 - v39;
      }

      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v27 != 2)
  {
    memset(v53, 0, 14);
    sub_26448B42C(v21, v23);
    v28 = v53;
    v29 = v53;
    goto LABEL_42;
  }

  v31 = *(v25 + 16);
  v32 = *(v25 + 24);
  sub_26448B42C(v21, v23);
  v33 = sub_2644AB250();
  if (v33)
  {
    v34 = sub_2644AB280();
    v25 = v31 - v34;
    if (__OFSUB__(v31, v34))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v33 += v25;
  }

  v35 = __OFSUB__(v32, v31);
  v36 = v32 - v31;
  if (v35)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_34:
  v40 = sub_2644AB270();
  if (v40 >= v36)
  {
    v41 = v36;
  }

  else
  {
    v41 = v40;
  }

  v42 = (v41 + v33);
  if (v33)
  {
    v29 = v42;
  }

  else
  {
    v29 = 0;
  }

  v28 = v33;
LABEL_42:
  sub_26448B1B8(v28, v29, v54);
  v44 = v54[0];
  v43 = v54[1];
  sub_26448B5C4(&v55);
  v45 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v45 != 2)
    {
      *(&v55 + 6) = 0;
      *&v55 = 0;
      goto LABEL_56;
    }

    v46 = *(v44 + 16);
    v47 = sub_2644AB250();
    if (!v47)
    {
      goto LABEL_54;
    }

    v48 = sub_2644AB280();
    v49 = v46 - v48;
    if (!__OFSUB__(v46, v48))
    {
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (!v45)
  {
    *&v55 = v44;
    WORD4(v55) = v43;
    BYTE10(v55) = BYTE2(v43);
    BYTE11(v55) = BYTE3(v43);
    BYTE12(v55) = BYTE4(v43);
    BYTE13(v55) = BYTE5(v43);
LABEL_56:
    v51 = sub_264494ADC(&v55);
    goto LABEL_57;
  }

  if (v44 > v44 >> 32)
  {
    goto LABEL_62;
  }

  v47 = sub_2644AB250();
  if (v47)
  {
    v50 = sub_2644AB280();
    v49 = v44 - v50;
    if (!__OFSUB__(v44, v50))
    {
LABEL_53:
      v47 = (v47 + v49);
      goto LABEL_54;
    }

LABEL_65:
    __break(1u);
  }

LABEL_54:
  sub_2644AB270();
  v51 = sub_264494ADC(v47);
  sub_26448B480(v44, v43);
LABEL_57:
  sub_26448B480(v21, v23);
  return v51;
}

double sub_2644A1358()
{
  *&result = 5;
  xmmword_27FF6E5B0 = xmmword_2644AD120;
  qword_27FF6E5C0 = 0xC000000000000000;
  return result;
}

void static TLV.null.getter(void *a1@<X8>)
{
  if (qword_27FF6E168 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&xmmword_27FF6E5B0 + 1);
  v3 = qword_27FF6E5C0;
  *a1 = xmmword_27FF6E5B0;
  a1[1] = v2;
  a1[2] = v3;

  sub_264497534(v2, v3);
}

uint64_t TLV.init(tag:BOOLean:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2644ACBD0;
  *(v6 + 32) = a2;
  v7 = sub_26448EC78(v6);
  v9 = v8;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  return result;
}

uint64_t TLV.init<A>(tag:integer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, unint64_t)@<X8>)
{
  v9 = *(a4 + 8);
  v65 = *(*(v9 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v63 = &v54 - v11;
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v62 = &v54 - v21;
  v54 = *a1;
  v22 = sub_2644ABB50();
  v66 = v20;
  v56 = a5;
  v57 = v9;
  if (v22)
  {
    if (sub_2644ABB40() < 64)
    {
      (*(v12 + 16))(v20, a2, a3);
LABEL_11:
      sub_2644ABB30();
      (*(v12 + 8))(v20, a3);
      goto LABEL_15;
    }

    v69 = 0;
    sub_2644A4110();
    goto LABEL_8;
  }

  v23 = sub_2644ABB50();
  v24 = sub_2644ABB40();
  if (v23)
  {
    if (v24 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_2644ABCD0();
      v25 = v66;
      sub_2644ABC80();
      v26 = sub_2644AB660();
      v27 = *(v12 + 8);
      v27(v25, a3);
      if ((v26 & 1) == 0)
      {
        v28 = v66;
        (*(v12 + 16))(v66, a2, a3);
        sub_2644ABB30();
        v27(v28, a3);
      }

      goto LABEL_15;
    }

    v69 = 0;
    sub_2644A4110();
    v20 = v66;
LABEL_8:
    sub_2644ABAC0();
    sub_2644AB660();
    (*(v12 + 8))(v20, a3);
    goto LABEL_15;
  }

  if (v24 < 64)
  {
    v20 = v66;
    (*(v12 + 16))(v66, a2, a3);
    goto LABEL_11;
  }

LABEL_15:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2644ABCD0();
  sub_2644ABC80();
  v30 = *(v12 + 16);
  v55 = a2;
  v30(v17, a2, a3);
  v61 = (v12 + 8);
  v31 = MEMORY[0x277D84F90];
  v58 = a3;
  v59 = v17;
  v67 = AssociatedConformanceWitness;
  do
  {
    v68 = v31;
    v31 = v63;
    v32 = AssociatedTypeWitness;
    sub_2644ABCD0();
    v33 = v66;
    sub_2644ABC80();
    v34 = v60;
    sub_2644ABAD0();
    v35 = v61;
    v36 = *v61;
    (*v61)(v33, a3);
    if (sub_2644ABB50())
    {
      sub_2644ABCD0();
      sub_2644ABC80();
      v37 = sub_2644AB670();
      LOBYTE(v38) = (v36)(v33, a3);
      if ((v37 & 1) == 0)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v40 = sub_2644ABB40();
    v35 = v67;
    v31 = v68;
    if (v40 > 7)
    {
      LOBYTE(v69) = -1;
      v41 = sub_2644ABB50();
      v42 = sub_2644ABB40();
      if (v41)
      {
        if (v42 <= 8)
        {
          v32 = v63;
          sub_2644ABCD0();
          v44 = v66;
          a3 = v58;
          sub_2644ABC80();
          v45 = sub_2644AB650();
          v36(v44, a3);
          if ((v45 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_27:
          sub_2644ABB30();
          goto LABEL_28;
        }

        sub_2644A4164();
        v32 = v66;
        v37 = v58;
        sub_2644ABAC0();
        v43 = sub_2644AB660();
        a3 = v37;
        LOBYTE(v38) = (v36)(v32, v37);
        if (v43)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v42 < 9)
        {
          goto LABEL_27;
        }

        sub_2644A4164();
        v32 = v66;
        sub_2644ABAC0();
        v37 = sub_2644AB660();
        a3 = v58;
        LOBYTE(v38) = (v36)(v32, v58);
        if (v37)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_28:
    v46 = sub_2644ABB30();
    v36(v34, a3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_26449168C(0, *(v31 + 2) + 1, 1, v31);
    }

    v48 = *(v31 + 2);
    v47 = *(v31 + 3);
    if (v48 >= v47 >> 1)
    {
      v31 = sub_26449168C((v47 > 1), v48 + 1, 1, v31);
    }

    *(v31 + 2) = v48 + 1;
    v31[v48 + 32] = v46;
    v69 = 8;
    sub_2644A4110();
    v34 = v59;
    sub_2644ABB20();
  }

  while ((sub_2644AB690() & 1) == 0);
  v38 = sub_2644ABB30();
  v37 = *(v31 + 2);
  if (!v37)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v53 = v38;
    v31 = sub_26449168C((v39 > 1), v32, 1, v31);
    LOBYTE(v38) = v53;
    goto LABEL_37;
  }

  v35 = v36;
  if (((v31[v37 + 31] ^ v38) & 0x80) == 0)
  {
    v36 = v56;
    goto LABEL_38;
  }

  v39 = *(v31 + 3);
  v32 = v37 + 1;
  v36 = v56;
  if (v37 >= v39 >> 1)
  {
    goto LABEL_42;
  }

LABEL_37:
  *(v31 + 2) = v32;
  v31[v37 + 32] = v38;
LABEL_38:
  v49 = sub_26448C938(v31);
  v51 = v50;
  v35(v55, a3);
  v35(v34, a3);
  result = (v35)(v62, a3);
  *v36 = v54;
  *(v36 + 1) = v49;
  *(v36 + 2) = v51;
  return result;
}

void TLV.init(tag:bitString:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = BitString.derRepresentation.getter();
  v9 = v8;
  sub_26448B480(v5, v6);
  *a3 = v4;
  a3[1] = v7;
  a3[2] = v9;
}

void *TLV.init(tag:octetString:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TLV.init(tag:oid:)@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  OID.derRepresentation.getter();
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  return result;
}

uint64_t TLV.init(tag:string:)@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v6 = sub_2644AB700();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_2644AB6F0();
  v11 = sub_2644AB6C0();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    *a4 = v10;
    a4[1] = v11;
    a4[2] = v13;
  }

  return result;
}

uint64_t TLV.isNull.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) == 0)
  {
    sub_264497534(*(v0 + 8), *(v0 + 16));
LABEL_8:
    v15 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v16 = *(v1 + 16);
        v17 = *(v1 + 24);
        sub_26448B480(v1, v2);
      }

      else
      {
        sub_26448B480(v1, v2);
        v17 = 0;
        v16 = 0;
      }
    }

    else if (v15)
    {
      sub_26448B480(v1, v2);
      v16 = v1;
      v17 = v1 >> 32;
    }

    else
    {
      sub_26448B480(v1, v2);
      v16 = 0;
      v17 = BYTE6(v2);
    }

    return v16 == v17;
  }

  sub_264497534(v1, v2);
  TLV.length.getter();
  v4 = v3;
  type metadata accessor for DERMemoryWriter();
  inited = swift_initStackObject();
  *(inited + 16) = sub_26449546C(v4);
  *(inited + 24) = v6;
  v7 = *(v1 + 16);
  if (!v7)
  {
LABEL_7:
    sub_264497540(v1, v2);
    swift_beginAccess();
    v1 = *(inited + 16);
    v2 = *(inited + 24);
    swift_setDeallocating();
    v14 = *(inited + 16);
    v13 = *(inited + 24);
    sub_26448B42C(v1, v2);
    sub_26448B480(v14, v13);
    goto LABEL_8;
  }

  v8 = 0;
  v9 = (v1 + 48);
  while (v8 < *(v1 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 2);
    sub_264497534(v11, *v9);
    sub_26449EDE0(v12, v11, v10);
    ++v8;
    sub_264497540(v11, v10);
    v9 += 3;
    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TLV.BOOLeanValue.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  if ((v1 & 0x2000000000000000) != 0)
  {
    sub_264497534(v2, v1);
    TLV.length.getter();
    v4 = v3;
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v4);
    *(inited + 24) = v6;
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v2 + 48);
      while (v8 < *(v2 + 16))
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v12 = *(v9 - 2);
        sub_264497534(v11, *v9);
        sub_26449EDE0(v12, v11, v10);
        ++v8;
        sub_264497540(v11, v10);
        v9 += 3;
        if (v7 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

LABEL_7:
    sub_264497540(v2, v1);
    swift_beginAccess();
    v2 = *(inited + 16);
    v1 = *(inited + 24);
    swift_setDeallocating();
    v14 = *(inited + 16);
    v13 = *(inited + 24);
    sub_26448B42C(v2, v1);
    sub_26448B480(v14, v13);
  }

  else
  {
    sub_264497534(*(v0 + 8), *(v0 + 16));
  }

  v15 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v15 == 2 && *(v2 + 16) != *(v2 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    if (v2 != v2 >> 32)
    {
LABEL_14:
      v16 = sub_2644AB410();
      sub_26448B480(v2, v1);
      return v16 != 0;
    }
  }

  else if ((v1 & 0xFF000000000000) != 0)
  {
    goto LABEL_14;
  }

  sub_26448B480(v2, v1);
  return 2;
}

uint64_t TLV.integerValue.getter()
{
  v1 = sub_2644AB4B0();
  v45 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  if ((v6 & 0x2000000000000000) != 0)
  {
    v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v1;
    v41 = v6;
    v42 = v5;
    v48 = v5;
    v49 = v4;
    v50 = v6;
    sub_264497534(v4, v6);
    TLV.length.getter();
    v10 = v9;
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v10);
    *(inited + 24) = v12;
    v13 = *(v4 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = (v4 + 48);
      while (v14 < *(v4 + 16))
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v18 = *(v15 - 2);
        sub_264497534(v17, *v15);
        sub_26449EDE0(v18, v17, v16);
        ++v14;
        sub_264497540(v17, v16);
        v15 += 3;
        if (v13 == v14)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_7:
    v19 = v41;
    sub_264497540(v4, v41);
    swift_beginAccess();
    v7 = *(inited + 16);
    v8 = *(inited + 24);
    swift_setDeallocating();
    v21 = *(inited + 16);
    v20 = *(inited + 24);
    sub_26448B42C(v7, v8);
    v22 = v20;
    v6 = v19;
    sub_26448B480(v21, v22);
    v3 = v43;
    v1 = v44;
    v5 = v42;
  }

  else
  {
    sub_264497534(v4, v6);
    v7 = v4;
    v8 = v6;
  }

  v23 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v23 == 2 && *(v7 + 16) != *(v7 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (!v23)
  {
    if ((v8 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    sub_26448B480(v7, v8);
    return 0;
  }

  if (v7 == v7 >> 32)
  {
    goto LABEL_19;
  }

LABEL_14:
  v24 = sub_2644AB410();
  sub_26448B480(v7, v8);
  v48 = v5;
  v49 = v4;
  v25 = v6;
  v50 = v6;
  v26 = TLV.octetStringValue.getter();
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      sub_26448B480(v26, v27);
LABEL_30:
      v48 = v5;
      v49 = v4;
      v50 = v25;
      v36 = TLV.octetStringValue.getter();
      v38 = v37;
      v30 = v24 >> 7;
      sub_26448B42C(v36, v37);
      sub_2644AB4C0();
      sub_26448F124();
      sub_2644ABA90();
      if ((v47 & 1) == 0)
      {
        do
        {
          v30 = v46 | (v30 << 8);
          sub_2644ABA90();
        }

        while (v47 != 1);
      }

      sub_26448B480(v36, v38);
      (*(v45 + 8))(v3, v1);
      return v30;
    }

    v31 = v5;
    v5 = v3;
    v32 = *(v26 + 16);
    v3 = *(v26 + 24);
    sub_26448B480(v26, v27);
    v33 = &v3[-v32];
    if (!__OFSUB__(v3, v32))
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(v27);
    sub_26448B480(v26, v27);
    if (v29 <= 7uLL)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v31 = v5;
  v5 = v3;
  v34 = HIDWORD(v26);
  v35 = v26;
  sub_26448B480(v26, v27);
  LODWORD(v33) = v34 - v35;
  if (!__OFSUB__(v34, v35))
  {
    v33 = v33;
LABEL_27:
    v3 = v5;
    v5 = v31;
    if (v33 <= 7)
    {
      goto LABEL_30;
    }

    return 0;
  }

LABEL_35:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TLV.bitStringValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if ((v3 & 0x2000000000000000) == 0)
  {
    sub_264497534(*(v1 + 8), *(v1 + 16));
    v5 = a1;
    return BitString.init(derRepresentation:)(v2, v3, v5);
  }

  sub_264497534(v2, v3);
  TLV.length.getter();
  v7 = v6;
  type metadata accessor for DERMemoryWriter();
  inited = swift_initStackObject();
  *(inited + 16) = sub_26449546C(v7);
  *(inited + 24) = v9;
  v10 = *(v2 + 16);
  if (!v10)
  {
LABEL_7:
    sub_264497540(v2, v3);
    swift_beginAccess();
    v2 = *(inited + 16);
    v3 = *(inited + 24);
    swift_setDeallocating();
    v17 = *(inited + 16);
    v16 = *(inited + 24);
    sub_26448B42C(v2, v3);
    sub_26448B480(v17, v16);
    v5 = a1;
    return BitString.init(derRepresentation:)(v2, v3, v5);
  }

  v11 = 0;
  v12 = (v2 + 48);
  while (v11 < *(v2 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;
    v15 = *(v12 - 2);
    sub_264497534(v14, *v12);
    sub_26449EDE0(v15, v14, v13);
    ++v11;
    sub_264497540(v14, v13);
    v12 += 3;
    if (v10 == v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TLV.octetStringValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((v2 & 0x2000000000000000) == 0)
  {
    sub_264497534(*(v0 + 8), *(v0 + 16));
    return v1;
  }

  sub_264497534(v1, v2);
  TLV.length.getter();
  v4 = v3;
  type metadata accessor for DERMemoryWriter();
  inited = swift_initStackObject();
  *(inited + 16) = sub_26449546C(v4);
  *(inited + 24) = v6;
  v7 = *(v1 + 16);
  if (!v7)
  {
LABEL_7:
    sub_264497540(v1, v2);
    swift_beginAccess();
    v1 = *(inited + 16);
    v13 = *(inited + 24);
    swift_setDeallocating();
    v15 = *(inited + 16);
    v14 = *(inited + 24);
    sub_26448B42C(v1, v13);
    sub_26448B480(v15, v14);
    return v1;
  }

  v8 = 0;
  v9 = (v1 + 48);
  while (v8 < *(v1 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 2);
    sub_264497534(v11, *v9);
    sub_26449EDE0(v12, v11, v10);
    ++v8;
    sub_264497540(v11, v10);
    v9 += 3;
    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void TLV.oidValue.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if ((v3 & 0x2000000000000000) == 0)
  {
    sub_264497534(*(v1 + 8), *(v1 + 16));
    v5 = a1;
LABEL_8:
    OID.init(derRepresentation:)(v2, v3, v5);
    return;
  }

  sub_264497534(v2, v3);
  TLV.length.getter();
  v7 = v6;
  type metadata accessor for DERMemoryWriter();
  inited = swift_initStackObject();
  *(inited + 16) = sub_26449546C(v7);
  *(inited + 24) = v9;
  v10 = *(v2 + 16);
  if (!v10)
  {
LABEL_7:
    sub_264497540(v2, v3);
    swift_beginAccess();
    v2 = *(inited + 16);
    v3 = *(inited + 24);
    swift_setDeallocating();
    v17 = *(inited + 16);
    v16 = *(inited + 24);
    sub_26448B42C(v2, v3);
    sub_26448B480(v17, v16);
    v5 = a1;
    goto LABEL_8;
  }

  v11 = 0;
  v12 = (v2 + 48);
  while (v11 < *(v2 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;
    v15 = *(v12 - 2);
    sub_264497534(v14, *v12);
    sub_26449EDE0(v15, v14, v13);
    ++v11;
    sub_264497540(v14, v13);
    v12 += 3;
    if (v10 == v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t TLV.stringValue.getter()
{
  v0 = sub_2644AB700();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = TLV.octetStringValue.getter();
  v3 = v2;
  sub_2644AB6F0();
  v4 = sub_2644AB6D0();
  sub_26448B480(v1, v3);
  return v4;
}

uint64_t TLV.hashValue.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_2644ABD90();
  TLV.hash(into:)(v3);
  return sub_2644ABDB0();
}

BOOL sub_2644A2D8C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = TLV.octetStringValue.getter();
  v4 = v3;
  v5 = TLV.octetStringValue.getter();
  v7 = v6;
  v8 = sub_26448E938(v2, v4, v5, v6);
  sub_26448B480(v2, v4);
  sub_26448B480(v5, v7);
  return v8;
}

uint64_t sub_2644A2E44()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_2644ABD90();
  TLV.hash(into:)(v3);
  return sub_2644ABDB0();
}

uint64_t sub_2644A2E9C()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_2644ABD90();
  TLV.hash(into:)(v3);
  return sub_2644ABDB0();
}

void sub_2644A2F5C(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  TLV.length.getter();
  if (v3)
  {
    v7 = 8 - (__clz(v3) >> 3);
    if (v6 <= 127)
    {
      v8 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 1;
    v7 = 1;
    if (v6 < 128)
    {
      goto LABEL_6;
    }
  }

  v8 = 9 - (__clz(v6) >> 3);
LABEL_6:
  v9 = v7 + v8;
  v10 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DERMemoryWriter();
    inited = swift_initStackObject();
    *(inited + 16) = sub_26449546C(v10);
    *(inited + 24) = v12;
    sub_26449EDE0(v3, v4, v5);
    if (!v2)
    {
      swift_beginAccess();
      v13 = *(inited + 16);
      v14 = *(inited + 24);
      swift_setDeallocating();
      v16 = *(inited + 16);
      v15 = *(inited + 24);
      sub_26448B42C(v13, v14);
      sub_26448B480(v16, v15);
      sub_2644AB480();
      sub_26448B480(v13, v14);
      return;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t Collection<>.filter(tag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v10 = v6;
  return sub_2644AB890();
}

uint64_t IteratorProtocol<>.next(tag:)@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  sub_2644ABA90();
  if ((~v10 & 0x3000000000000000) != 0)
  {
    result = v8;
    if (v8 == v5)
    {
      *a4 = v5;
      a4[1] = v9;
      a4[2] = v10;
      return result;
    }

    sub_2644A41CC(v8, v9, v10);
  }

  sub_264495A70();
  swift_allocError();
  *v7 = 3;
  return swift_willThrow();
}

uint64_t IteratorProtocol<>.nextValue(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = *a1;
  IteratorProtocol<>.next(tag:)(v8, &v9);
  if (!v4)
  {
    v5 = v10;
    v6 = v11;
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    v3 = TLV.octetStringValue.getter();
    sub_264497540(v5, v6);
  }

  return v3;
}

uint64_t IteratorProtocol<>.nextUInt8(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = *a1;
  IteratorProtocol<>.next(tag:)(v12, &v13);
  if (!v4)
  {
    v5 = v14;
    v6 = v15;
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v7 = TLV.octetStringValue.getter();
    v9 = v8;
    v3 = sub_26448CE00(v7, v8);
    sub_264497540(v5, v6);
    sub_26448B480(v7, v9);
    if ((v3 & 0x100) != 0)
    {
      sub_264495A70();
      v3 = swift_allocError();
      *v10 = 4;
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t IteratorProtocol<>.nextUInt16(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  IteratorProtocol<>.next(tag:)(v9, &v10);
  if (!v4)
  {
    v5 = v11;
    v6 = v12;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v3 = TLV.uint16Value.getter();
    sub_264497540(v5, v6);
    if ((v3 & 0x10000) != 0)
    {
      sub_264495A70();
      v3 = swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  return v3;
}

unint64_t IteratorProtocol<>.nextUInt32(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  IteratorProtocol<>.next(tag:)(v9, &v10);
  if (!v4)
  {
    v5 = v11;
    v6 = v12;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v3 = TLV.uint32Value.getter();
    sub_264497540(v5, v6);
    if ((v3 & 0x100000000) != 0)
    {
      sub_264495A70();
      v3 = swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  return v3;
}

char *IteratorProtocol<>.nextString(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2644AB700();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *a1;
  IteratorProtocol<>.next(tag:)(v17, &v18);
  if (!v3)
  {
    v8 = v19;
    v9 = v20;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v10 = TLV.octetStringValue.getter();
    v12 = v11;
    sub_2644AB6F0();
    v7 = sub_2644AB6D0();
    v14 = v13;
    sub_264497540(v8, v9);
    sub_26448B480(v10, v12);
    if (!v14)
    {
      sub_264495A70();
      v7 = swift_allocError();
      *v16 = 4;
      swift_willThrow();
    }
  }

  return v7;
}

void IteratorProtocol<>.nextNull(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = *a1;
  IteratorProtocol<>.next(tag:)(v8, &v9);
  if (!v3)
  {
    v4 = v10;
    v5 = v11;
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    v6 = TLV.isNull.getter();
    sub_264497540(v4, v5);
    if ((v6 & 1) == 0)
    {
      sub_264495A70();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }
}

BOOL IteratorProtocol<>.nextBoolean(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = *a1;
  IteratorProtocol<>.next(tag:)(v13, &v14);
  if (!v3)
  {
    v5 = v15;
    v6 = v16;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v7 = TLV.octetStringValue.getter();
    v9 = v8;
    v10 = sub_26448CE00(v7, v8);
    sub_264497540(v5, v6);
    sub_26448B480(v7, v9);
    if ((v10 & 0x100) != 0)
    {
      sub_264495A70();
      swift_allocError();
      *v11 = 4;
      swift_willThrow();
    }

    else
    {
      return v10 != 0;
    }
  }

  return v4;
}

uint64_t (*sub_2644A38CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t)))(uint64_t)
{
  v13[0] = *a1;
  v6 = IteratorProtocol<>.next(tag:)(v13, &v14);
  if (!v4)
  {
    v7 = v15;
    v8 = v16;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    a4 = a4(v6);
    v10 = v9;
    sub_264497540(v7, v8);
    if (v10)
    {
      sub_264495A70();
      a4 = swift_allocError();
      *v11 = 4;
      swift_willThrow();
    }
  }

  return a4;
}

void IteratorProtocol<>.nextBitString(tag:)(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v15[0] = *a1;
  IteratorProtocol<>.next(tag:)(v15, &v16);
  if (!v4)
  {
    v6 = v17;
    v7 = v18;
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    TLV.bitStringValue.getter(&v12);
    v8 = v13;
    if (v13 >> 60 == 15)
    {
      sub_264497540(v6, v7);
      sub_264495A70();
      swift_allocError();
      *v9 = 4;
      swift_willThrow();
    }

    else
    {
      v10 = v14;
      v11 = v12;
      sub_264497540(v6, v7);
      *a4 = v11;
      *(a4 + 8) = v8;
      *(a4 + 16) = v10;
    }
  }
}

uint64_t IteratorProtocol<>.nextOctetString(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11[0] = *a1;
  IteratorProtocol<>.next(tag:)(v11, &v12);
  if (!v4)
  {
    v5 = v13;
    v6 = v14;
    v11[0] = v12;
    v11[1] = v13;
    v11[2] = v14;
    v3 = TLV.octetStringValue.getter();
    v8 = v7;
    sub_264497540(v5, v6);
    if (v8 >> 60 == 15)
    {
      sub_264495A70();
      v3 = swift_allocError();
      *v9 = 4;
      swift_willThrow();
    }
  }

  return v3;
}

void IteratorProtocol<>.nextOID(tag:)(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v10[0] = *a1;
  IteratorProtocol<>.next(tag:)(v10, &v11);
  if (!v4)
  {
    v6 = v12;
    v7 = v13;
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    TLV.oidValue.getter(&v14);
    v8 = v14;
    if (v14)
    {
      sub_264497540(v6, v7);
      *a4 = v8;
    }

    else
    {
      sub_264497540(v6, v7);
      sub_264495A70();
      swift_allocError();
      *v9 = 4;
      swift_willThrow();
    }
  }
}

char *IteratorProtocol<>.nextConstructed(tag:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  IteratorProtocol<>.next(tag:)(&v8, &v9);
  if (!v4)
  {
    v3 = v10;
    v5 = v11;
    if ((v11 & 0x2000000000000000) == 0)
    {
      sub_264497534(v10, v11);
      v6 = sub_2644A3E98(v3, v5);
      sub_264497540(v3, v5);
      sub_264497540(v3, v5);
      return v6;
    }
  }

  return v3;
}

void IteratorProtocol<>.skip(count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      while (1)
      {
        sub_2644ABA90();
        if ((~v7 & 0x3000000000000000) == 0)
        {
          break;
        }

        sub_2644A41CC(v5, v6, v7);
        if (!--v3)
        {
          return;
        }
      }

      sub_264495A70();
      swift_allocError();
      *v4 = 4;
      swift_willThrow();
    }
  }
}

void SHA256.update(tlv:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      return;
    }

    v5 = (v2 + 48);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 1);
      v8 = v6;
      SHA256.update(tlv:)(&v7);
      v5 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    sub_26448B42C(*(a1 + 8), v3);
    sub_26448B24C(v2, v3, v1);
  }

  sub_264497540(v2, v3);
}

char *sub_2644A3E98(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v4 = sub_2644AB430();
  v5 = [v3 initWithData_];

  [v5 open];
  v6 = sub_26449E8E0();
  v7 = MEMORY[0x277D84F90];
  if (v2)
  {
LABEL_20:

LABEL_21:

    return v7;
  }

  else
  {
    while (1)
    {
      if ((v6 & 0x100) != 0)
      {
        [v5 close];
        goto LABEL_21;
      }

      v8 = v6;
      if ((~v6 & 0x1F) == 0)
      {
        break;
      }

      v10 = v6;
LABEL_8:
      v11 = sub_26449E760();
      if (v12)
      {
        goto LABEL_18;
      }

      NSInputStream.read(exactly:)(v11);
      v15 = v14;
      if (v14 >> 60 == 15)
      {
        goto LABEL_18;
      }

      v16 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2644919B0(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_2644919B0((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v19 = &v7[24 * v18];
      *(v19 + 4) = v10;
      *(v19 + 5) = v16;
      *(v19 + 6) = v15;
      v6 = sub_26449E8E0();
    }

    while (1)
    {
      v22 = 0;
      v9 = [v5 read:&v22 maxLength:1];
      if (v9 != 1)
      {
        break;
      }

      v10 = v22 | (v8 << 8);
      v8 = v10;
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    if (v9 != -1)
    {
LABEL_18:
      sub_264495A70();
      swift_allocError();
      *v21 = 0;
LABEL_19:
      swift_willThrow();
      goto LABEL_20;
    }

    result = [v5 streamError];
    if (result)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2644A4110()
{
  result = qword_27FF6E5C8;
  if (!qword_27FF6E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5C8);
  }

  return result;
}

unint64_t sub_2644A4164()
{
  result = qword_27FF6E5D0;
  if (!qword_27FF6E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5D0);
  }

  return result;
}

void sub_2644A41CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((~a3 & 0x3000000000000000) != 0)
  {
    sub_264497540(a2, a3);
  }
}

unint64_t sub_2644A41EC()
{
  result = qword_27FF6E5D8;
  if (!qword_27FF6E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5D8);
  }

  return result;
}

__n128 sub_2644A424C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2644A4260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2644A42B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_2644A4310()
{
  result = qword_27FF6E5E0;
  if (!qword_27FF6E5E0)
  {
    sub_26448F36C(&qword_27FF6E458, &unk_2644ACF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5E0);
  }

  return result;
}

uint64_t TLVError.hashValue.getter()
{
  v1 = *v0;
  sub_2644ABD90();
  MEMORY[0x266738D80](v1);
  return sub_2644ABDB0();
}

unint64_t sub_2644A4498()
{
  result = qword_27FF6E5E8;
  if (!qword_27FF6E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6E5E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLVError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TLVError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TLVTag.description.getter()
{
  v1 = *v0;
  sub_26448DE0C(&qword_27FF6E598, &qword_2644AD110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2644ACBD0;
  v3 = MEMORY[0x277D83ED0];
  *(v2 + 56) = MEMORY[0x277D83E88];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2644AB6E0();
}

uint64_t TLVTag.dataRepresentation.getter()
{
  v1 = *v0;
  v2 = sub_26449168C(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v2 + 2);
  do
  {
    v4 = *(v2 + 3);
    if (v3 >= v4 >> 1)
    {
      v2 = sub_26449168C((v4 > 1), v3 + 1, 1, v2);
    }

    *(v2 + 2) = v3 + 1;
    v2[v3++ + 32] = v1;
    v5 = v1 > 0xFF;
    v1 >>= 8;
  }

  while (v5);

  return sub_26448C938(v2);
}

uint64_t sub_2644A4B2C()
{
  result = _s10Foundation4DataV7SPRCoreE9hexStringACSgSS_tcfC_0(0x3030303030303030, 0xEC00000030303030);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_27FF6E5F0 = result;
    *algn_27FF6E5F8 = v1;
  }

  return result;
}

uint64_t static TLVTag.TAG_9F03_DEFAULT.getter()
{
  if (qword_27FF6E170 != -1)
  {
    swift_once();
  }

  v0 = qword_27FF6E5F0;
  sub_26448B42C(qword_27FF6E5F0, *algn_27FF6E5F8);
  return v0;
}

unint64_t _s7SPRCore6TLVTagV11application13isConstructedACSu_SbtcfC_0@<X0>(unint64_t result@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v3 = 64;
  if (a2)
  {
    v3 = 96;
  }

  if (result > 0x1F)
  {
    v4 = v3 | 0x1F;
    if (result >= 0x80)
    {
      do
      {
        v4 = result & 0x7F | (v4 << 8) | 0x80;
        v5 = result >> 7;
        v6 = result >= 0x4000;
        result >>= 7;
      }

      while (v6);
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | (v4 << 8);
  }

  else
  {
    *a3 = v3 | result;
  }

  return result;
}

unint64_t _s7SPRCore6TLVTagV15contextSpecific13isConstructedACSu_SbtcfC_0@<X0>(unint64_t result@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v3 = 128;
  if (a2)
  {
    v3 = 160;
  }

  if (result > 0x1F)
  {
    v4 = v3 | 0x1F;
    if (result >= 0x80)
    {
      do
      {
        v4 = result & 0x7F | (v4 << 8) | 0x80;
        v5 = result >> 7;
        v6 = result >= 0x4000;
        result >>= 7;
      }

      while (v6);
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | (v4 << 8);
  }

  else
  {
    *a3 = v3 | result;
  }

  return result;
}

unint64_t _s7SPRCore6TLVTagV7private13isConstructedACSu_SbtcfC_0@<X0>(unint64_t result@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v3 = 192;
  if (a2)
  {
    v3 = 224;
  }

  if (result > 0x1F)
  {
    v4 = v3 | 0x1F;
    if (result >= 0x80)
    {
      do
      {
        v4 = result & 0x7F | (v4 << 8) | 0x80;
        v5 = result >> 7;
        v6 = result >= 0x4000;
        result >>= 7;
      }

      while (v6);
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | (v4 << 8);
  }

  else
  {
    *a3 = v3 | result;
  }

  return result;
}

uint64_t sub_2644A4DE0()
{
  v1 = *v0;
  sub_26448DE0C(&qword_27FF6E598, &qword_2644AD110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2644ACBD0;
  v3 = MEMORY[0x277D83ED0];
  *(v2 + 56) = MEMORY[0x277D83E88];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2644AB6E0();
}

uint64_t getEnumTagSinglePayload for TLVTag(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLVTag(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

Swift::Void __swiftcall UnsignedInteger.clearBit(_:)(Swift::Int a1)
{
  v16 = a1;
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  swift_getAssociatedConformanceWitness();
  sub_2644ABCD0();
  sub_2644ABC80();
  v17 = v16;
  sub_2644A4110();
  sub_2644ABB10();
  v14 = *(v5 + 8);
  v14(v8, v2);
  sub_2644ABAE0();
  v14(v11, v2);
  sub_2644ABB00();
  v14(v13, v2);
}

uint64_t sub_2644A5194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, char *, uint64_t, uint64_t))
{
  v18 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  swift_getAssociatedConformanceWitness();
  sub_2644ABCD0();
  sub_2644ABC80();
  v19 = a1;
  sub_2644A4110();
  sub_2644ABB10();
  v15 = *(v9 + 8);
  v15(v12, a2);
  v18(v17[1], v14, a2, v6);
  return (v15)(v14, a2);
}

Swift::Bool __swiftcall UnsignedInteger.readBit(_:)(Swift::Int a1)
{
  v27 = a1;
  v3 = v1;
  v4 = *(*(*(v2 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = *(v3 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v26[1] = swift_getAssociatedConformanceWitness();
  sub_2644ABCD0();
  v26[2] = v4;
  sub_2644ABC80();
  v29 = v27;
  v27 = sub_2644A4110();
  sub_2644ABB10();
  v16 = *(v7 + 8);
  v16(v10, v3);
  sub_2644ABAD0();
  v28 = v16;
  v16(v13, v3);
  if (sub_2644ABB50())
  {
    if (sub_2644ABB40() >= 64)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v17 = sub_2644ABB50();
  v18 = sub_2644ABB40();
  if (v17)
  {
    if (v18 <= 64)
    {
      sub_2644ABCD0();
      sub_2644ABC80();
      v19 = sub_2644AB670();
      v20 = v13;
      v21 = v28;
      v28(v20, v3);
      if ((v19 & 1) == 0)
      {
        v21(v15, v3);
        v23 = 0;
        return (v23 & 1) == 0;
      }

      v22 = sub_2644ABB30();
      v21(v15, v3);
      goto LABEL_10;
    }

LABEL_11:
    v29 = 0;
    sub_2644ABAC0();
    v23 = sub_2644AB690();
    v24 = v28;
    v28(v13, v3);
    v24(v15, v3);
    return (v23 & 1) == 0;
  }

  if (v18 >= 64)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = sub_2644ABB30();
  v28(v15, v3);
LABEL_10:
  v23 = v22 == 0;
  return (v23 & 1) == 0;
}

uint64_t UnsignedInteger.digitsAsBytes()(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v68 = &v57 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v70 = &v57 - v13;
  v83 = xmmword_2644ACBC0;
  v69 = v14;
  v15 = *(v14 + 8);
  v16 = sub_2644ABB50();
  v75 = v15;
  v17 = sub_2644ABB40();
  if (v16)
  {
    if (v17 > 64)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (sub_2644ABB30() <= 0xE8D4A50FFFLL)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v17 <= 63)
  {
    goto LABEL_28;
  }

LABEL_3:
  v81[0] = 0xE8D4A50FFFLL;
  sub_2644A4110();
  v18 = v70;
  sub_2644ABAC0();
  v19 = sub_2644AB660();
  (*(v4 + 8))(v18, v3);
  if ((v19 & 1) == 0)
  {
LABEL_4:
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v21(v12, v2, v3);
    v66 = sub_2644A4110();
    v22 = 0;
    v67 = (v20 - 8);
    v23 = (v20 + 16);
    v24 = 100000000000;
    v72 = 11;
    v65 = xmmword_2644ACBD0;
    v59 = v3;
    v64 = v7;
    v63 = v12;
    v62 = (v20 + 16);
    while (1)
    {
      v71 = v24;
      *&v78 = v24;
      v25 = v70;
      sub_2644ABB60();
      v26 = v68;
      sub_2644ABAF0();
      v27 = *v67;
      (*v67)(v25, v3);
      v79 = v3;
      v80 = v69;
      v28 = sub_26448B51C(&v78);
      v29 = *v23;
      (*v23)(v28, v26, v3);
      v61 = v27;
      v27(v12, v3);
      if (v22)
      {
        sub_26448B5C4(v81);
      }

      sub_26448EF14(&v78, v81);
      v29(v12, v7, v3);
      sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
      v74 = swift_allocObject();
      *(v74 + 16) = v65;
      v30 = v82;
      v31 = sub_26448B580(v81, v82);
      v73 = &v57;
      v32 = *(v30 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
      (*(v32 + 16))(&v57 - v34);
      if (sub_2644ABB50())
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v60 = &v57;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v36 = sub_2644ABCD0();
        MEMORY[0x28223BE20](v36);
        v3 = v59;
        sub_2644ABC80();
        v37 = sub_2644AB670();
        (*(v32 + 8))(&v57 - v34, v30);
        if ((v37 & 1) == 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
        }
      }

      if (sub_2644ABB40() > 7)
      {
        LOBYTE(v78) = -1;
        v38 = sub_2644ABB50();
        v39 = sub_2644ABB40();
        if ((v38 & 1) == 0)
        {
          if (v39 < 9)
          {
LABEL_17:
            sub_2644ABB30();
            goto LABEL_18;
          }

LABEL_15:
          MEMORY[0x28223BE20](v39);
          sub_2644A4164();
          sub_2644ABAC0();
          v43 = sub_2644AB660();
          (*(v32 + 8))(&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
          if (v43)
          {
            goto LABEL_33;
          }

          goto LABEL_18;
        }

        if (v39 > 8)
        {
          goto LABEL_15;
        }

        v40 = swift_getAssociatedTypeWitness();
        MEMORY[0x28223BE20](v40);
        swift_getAssociatedConformanceWitness();
        v41 = sub_2644ABCD0();
        MEMORY[0x28223BE20](v41);
        v3 = v59;
        sub_2644ABC80();
        v42 = sub_2644AB650();
        (*(v32 + 8))(&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        if (v42)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v44 = sub_2644ABB30();
      (*(v32 + 8))(&v57 - v34, v30);
      v45 = v74;
      *(v74 + 32) = v44;
      v46 = sub_26448DE0C(&qword_27FF6E300, &qword_2644ACD18);
      v79 = v46;
      v80 = sub_26448F308();
      *&v78 = v45;
      v47 = sub_26448B580(&v78, v46);
      v48 = *v47;
      v49 = *(*v47 + 16);
      if (v49)
      {
        v7 = v64;
        v12 = v63;
        v23 = v62;
        if (v49 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v77 = v49;
          memcpy(__dst, (v48 + 32), v49);
          v52 = *__dst;
          v53 = v58 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v77 << 16)) << 32);
          v58 = v53;
        }

        else
        {
          sub_2644AB2A0();
          swift_allocObject();
          v50 = sub_2644AB240();
          v51 = v50;
          if (v49 >= 0x7FFFFFFF)
          {
            sub_2644AB3C0();
            v52 = swift_allocObject();
            *(v52 + 16) = 0;
            *(v52 + 24) = v49;
            v53 = v51 | 0x8000000000000000;
          }

          else
          {
            v52 = v49 << 32;
            v53 = v50 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v52 = 0;
        v53 = 0xC000000000000000;
        v7 = v64;
        v12 = v63;
        v23 = v62;
      }

      v54 = v72;
      sub_26448B5C4(&v78);
      sub_2644AB480();
      sub_26448B480(v52, v53);
      if (!v54)
      {
        v61(v12, v3);
        v55 = v83;
        sub_26448B5C4(v81);
        return v55;
      }

      v24 = v71 / 10;
      v72 = v54 - 1;
      v22 = 1;
    }
  }

  return 0;
}

uint64_t static SPRLogger.logger(category:)(uint64_t a1, uint64_t a2)
{

  return sub_2644AB550();
}

uint64_t sub_2644A64DC()
{
  v0 = sub_2644AB560();
  sub_264493400(v0, qword_27FF6E690);
  sub_264493318(v0, qword_27FF6E690);
  return sub_2644AB550();
}

uint64_t sub_2644A65D0()
{
  v0 = sub_2644AB560();
  sub_264493400(v0, qword_27FF6E6A8);
  sub_264493318(v0, qword_27FF6E6A8);
  return sub_2644AB550();
}

uint64_t sub_2644A6758()
{
  v0 = sub_2644AB560();
  sub_264493400(v0, qword_27FF6E6D8);
  sub_264493318(v0, qword_27FF6E6D8);
  return sub_2644AB550();
}

uint64_t sub_2644A6824(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2644AB560();
  sub_264493400(v5, a2);
  sub_264493318(v5, a2);
  return sub_2644AB550();
}

uint64_t sub_2644A68C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2644AB560();
  v7 = sub_264493318(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2644A6958()
{
  v0 = sub_2644AB560();
  sub_264493400(v0, qword_27FF6E708);
  v1 = sub_264493318(v0, qword_27FF6E708);
  if (qword_2814C0F50 != -1)
  {
    swift_once();
  }

  v2 = sub_264493318(v0, qword_2814C0F58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2644A6A34(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 24))
  {
    sub_2644ABBF0();
    __break(1u);
  }

  else if (*(v3 + 16))
  {
    os_unfair_lock_unlock((v3 + 32));

    [a1 endSession];
  }

  else
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = a1;
    swift_unknownObjectRetain();

    os_unfair_lock_unlock((v3 + 32));
  }
}

uint64_t sub_2644A6B1C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t NFHardwareManager.startSecureElementManagerSession(timeout:)(double a1)
{
  *(v2 + 56) = v1;
  *(v2 + 48) = a1;
  sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2644A6C48, 0, 0);
}

uint64_t sub_2644A6C48()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_2644AB940();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = v2;
  v8 = sub_2644A80A8(0, 0, v1, &unk_2644AD468, v6, &qword_27FF6E728, 0x277D2C878);
  v0[9] = v8;
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v8;

  v0[10] = sub_2644A7E0C(0, 0, v1, &unk_2644AD478, v9);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = sub_2644AA5D0(0, &qword_27FF6E728, 0x277D2C878);
  v12 = sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  v0[12] = v12;
  *v10 = v0;
  v10[1] = sub_2644A6E64;
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v8, v11, v12, v13);
}

uint64_t sub_2644A6E64()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2644A70D4;
  }

  else
  {
    v2 = sub_2644A6F78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2644A6F78()
{
  v1 = *(v0 + 16);
  sub_2644AB960();
  if (qword_27FF6E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2644AB560();
  sub_264493318(v2, qword_27FF6E708);
  v3 = sub_2644AB540();
  v4 = sub_2644ABA10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264488000, v3, v4, "NFSecureElementManagerSession started", v5, 2u);
    MEMORY[0x266739510](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_2644A70D4()
{
  v1 = *(v0 + 104);
  type metadata accessor for Code(0);
  *(v0 + 24) = 54;
  v2 = v1;
  sub_2644AA63C(&qword_27FF6E238, type metadata accessor for Code, &unk_2644ACABC);
  v3 = sub_2644AB2D0();

  if (v3)
  {

    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v4 = sub_2644AB560();
    sub_264493318(v4, qword_27FF6E708);
    v5 = sub_2644AB540();
    v6 = sub_2644ABA00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_264488000, v5, v6, "NFSecureElementManagerSession timed out", v7, 2u);
      MEMORY[0x266739510](v7, -1, -1);
    }

    type metadata accessor for NFFrameworkError(0);
    *(v0 + 40) = 5;
    sub_264498610(MEMORY[0x277D84F90]);
    sub_2644AA63C(&qword_27FF6E258, type metadata accessor for NFFrameworkError, &unk_2644ACA50);
    sub_2644AB340();
    swift_willThrow();
  }

  else
  {
    sub_2644AB960();
    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v9 = sub_2644AB560();
    sub_264493318(v9, qword_27FF6E708);
    v10 = v8;
    v11 = sub_2644AB540();
    v12 = sub_2644ABA00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_264488000, v11, v12, "NFSecureElementManagerSession failed to start: %@", v14, 0xCu);
      sub_26448F2A8(v15, &qword_27FF6E3D0, &qword_2644ACDC0);
      MEMORY[0x266739510](v15, -1, -1);
      MEMORY[0x266739510](v14, -1, -1);
    }

    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2644A7474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_2644A7494, 0, 0);
}

uint64_t sub_2644A7494()
{
  v1 = v0[11];
  type metadata accessor for NFSessionCancelState();
  inited = swift_initStackObject();
  v0[12] = inited;
  sub_26448DE0C(&qword_27FF6E748, &qword_2644AD4E0);
  v3 = swift_initStackObject();
  v0[13] = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = inited;
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = sub_2644AA5D0(0, &qword_27FF6E728, 0x277D2C878);
  *v5 = v0;
  v5[1] = sub_2644A75E4;
  v7 = v0[10];

  return MEMORY[0x282200830](v7, &unk_2644AD508, v4, sub_2644AA974, inited, 0, 0, v6);
}

uint64_t sub_2644A75E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2644A7770;
  }

  else
  {

    v2 = sub_2644A7700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2644A7700()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A7770()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A77EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2644AAB98;

  return sub_2644A7474(a1, v4, v5, v6);
}

uint64_t sub_2644A78A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2644A78C4, 0, 0);
}

uint64_t sub_2644A78C4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2644AA5D0(0, &qword_27FF6E728, 0x277D2C878);
  *v2 = v0;
  v2[1] = sub_2644A79D0;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000002ALL, 0x80000002644AD960, sub_2644AA990, v1, v3);
}

uint64_t sub_2644A79D0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644A7B0C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2644A7B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A7B70(uint64_t a1, void *a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E758, qword_2644AD510);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2644AAA1C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644AABA0;
  aBlock[3] = &unk_2875F4218;
  v10 = _Block_copy(aBlock);

  v11 = [a2 startSecureElementManagerSession_];
  _Block_release(v10);
  if (([v11 isFirstInQueue] & 1) == 0)
  {
    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v12 = sub_2644AB560();
    sub_264493318(v12, qword_27FF6E708);
    v13 = sub_2644AB540();
    v14 = sub_2644ABA10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_264488000, v13, v14, "Waiting for NFSecureElementManagerSession...", v15, 2u);
      MEMORY[0x266739510](v15, -1, -1);
    }
  }

  sub_2644A6A34(v11);
  return swift_unknownObjectRelease();
}

uint64_t sub_2644A7E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2644AA684(a3, v22 - v9);
  v11 = sub_2644AB940();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26448F2A8(v10, &qword_27FF6E720, &qword_2644AD458);
  }

  else
  {
    sub_2644AB930();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2644AB900();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2644AB710() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26448F2A8(a3, &qword_27FF6E720, &qword_2644AD458);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26448F2A8(a3, &qword_27FF6E720, &qword_2644AD458);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2644A80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, void *a7)
{
  v26[0] = a4;
  v12 = sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  sub_2644AA684(a3, v26 - v13);
  v15 = sub_2644AB940();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_26448F2A8(v14, &qword_27FF6E720, &qword_2644AD458);
  }

  else
  {
    sub_2644AB930();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2644AB900();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_2644AB710() + 32;
      sub_2644AA5D0(0, a6, a7);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_26448F2A8(a3, &qword_27FF6E720, &qword_2644AD458);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26448F2A8(a3, &qword_27FF6E720, &qword_2644AD458);
  sub_2644AA5D0(0, a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2644A835C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_2644ABBB0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2644A8420, 0, 0);
}

uint64_t sub_2644A8420()
{
  v1 = sub_2644ABDC0();
  v3 = v2;
  sub_2644ABD00();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2644A84FC;

  return sub_2644A9F20(v1, v3, 0, 0, 1);
}

uint64_t sub_2644A84FC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2644A8728;
  }

  else
  {
    v5 = sub_2644A866C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2644A866C()
{
  sub_2644AA5D0(0, &qword_27FF6E728, 0x277D2C878);
  sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  sub_2644AB960();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A8728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A878C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2644AAB98;

  return sub_2644A835C(v6, a1, v4, v5, v7);
}

id sub_2644A88A4(uint64_t a1, SEL *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2644AB350();

    swift_willThrow();
  }

  return v3;
}

uint64_t NFHardwareManager.startSecureElementReaderSession(timeout:)(double a1)
{
  *(v2 + 56) = v1;
  *(v2 + 48) = a1;
  sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2644A8A0C, 0, 0);
}

uint64_t sub_2644A8A0C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_2644AB940();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = v2;
  v8 = sub_2644A80A8(0, 0, v1, &unk_2644AD4A0, v6, &qword_27FF6E730, 0x277D2C880);
  v0[9] = v8;
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v8;

  v0[10] = sub_2644A7E0C(0, 0, v1, &unk_2644AD4B0, v9);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  v12 = sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  v0[12] = v12;
  *v10 = v0;
  v10[1] = sub_2644A8C28;
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v8, v11, v12, v13);
}

uint64_t sub_2644A8C28()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2644A8E98;
  }

  else
  {
    v2 = sub_2644A8D3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2644A8D3C()
{
  v1 = *(v0 + 16);
  sub_2644AB960();
  if (qword_27FF6E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2644AB560();
  sub_264493318(v2, qword_27FF6E708);
  v3 = sub_2644AB540();
  v4 = sub_2644ABA10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264488000, v3, v4, "NFSecureElementReaderSession started", v5, 2u);
    MEMORY[0x266739510](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_2644A8E98()
{
  v1 = *(v0 + 104);
  type metadata accessor for Code(0);
  *(v0 + 24) = 54;
  v2 = v1;
  sub_2644AA63C(&qword_27FF6E238, type metadata accessor for Code, &unk_2644ACABC);
  v3 = sub_2644AB2D0();

  if (v3)
  {

    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v4 = sub_2644AB560();
    sub_264493318(v4, qword_27FF6E708);
    v5 = sub_2644AB540();
    v6 = sub_2644ABA00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_264488000, v5, v6, "NFSecureElementReaderSession timeout", v7, 2u);
      MEMORY[0x266739510](v7, -1, -1);
    }

    type metadata accessor for NFFrameworkError(0);
    *(v0 + 40) = 5;
    sub_264498610(MEMORY[0x277D84F90]);
    sub_2644AA63C(&qword_27FF6E258, type metadata accessor for NFFrameworkError, &unk_2644ACA50);
    sub_2644AB340();
    swift_willThrow();
  }

  else
  {
    sub_2644AB960();
    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v9 = sub_2644AB560();
    sub_264493318(v9, qword_27FF6E708);
    v10 = v8;
    v11 = sub_2644AB540();
    v12 = sub_2644ABA00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_264488000, v11, v12, "NFSecureElementReaderSession failed to start: %@", v14, 0xCu);
      sub_26448F2A8(v15, &qword_27FF6E3D0, &qword_2644ACDC0);
      MEMORY[0x266739510](v15, -1, -1);
      MEMORY[0x266739510](v14, -1, -1);
    }

    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2644A9238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_2644A9258, 0, 0);
}

uint64_t sub_2644A9258()
{
  v1 = v0[11];
  type metadata accessor for NFSessionCancelState();
  inited = swift_initStackObject();
  v0[12] = inited;
  sub_26448DE0C(&qword_27FF6E748, &qword_2644AD4E0);
  v3 = swift_initStackObject();
  v0[13] = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = inited;
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  *v5 = v0;
  v5[1] = sub_2644A93A8;
  v7 = v0[10];

  return MEMORY[0x282200830](v7, &unk_2644AD4F0, v4, sub_2644AAB90, inited, 0, 0, v6);
}

uint64_t sub_2644A93A8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2644AAB8C;
  }

  else
  {

    v2 = sub_2644AABA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2644A94C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2644A94E8, 0, 0);
}

uint64_t sub_2644A94E8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  *v2 = v0;
  v2[1] = sub_2644A95F4;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000029, 0x80000002644AD890, sub_2644AA7A0, v1, v3);
}

uint64_t sub_2644A95F4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644AABA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2644A9730(uint64_t a1, void *a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E750, &qword_2644AD4F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2644AA7A8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644AABA0;
  aBlock[3] = &unk_2875F41C8;
  v10 = _Block_copy(aBlock);

  v11 = [a2 startSecureElementReaderSession_];
  _Block_release(v10);
  if (([v11 isFirstInQueue] & 1) == 0)
  {
    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v12 = sub_2644AB560();
    sub_264493318(v12, qword_27FF6E708);
    v13 = sub_2644AB540();
    v14 = sub_2644ABA10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_264488000, v13, v14, "Waiting for NFSecureElementReaderSession...", v15, 2u);
      MEMORY[0x266739510](v15, -1, -1);
    }
  }

  sub_2644A6A34(v11);
  return swift_unknownObjectRelease();
}

void *sub_2644A99CC(void *result, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (result)
  {
    v7 = result;
    sub_26448DE0C(a4, a5);
    return sub_2644AB920();
  }

  else if (a2)
  {
    v8 = a2;
    sub_26448DE0C(a4, a5);
    return sub_2644AB910();
  }

  return result;
}

void sub_2644A9A54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2644A9AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 16) = 1;
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    [v2 endSession];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2644A9B54(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_2644ABBB0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2644A9C18, 0, 0);
}

uint64_t sub_2644A9C18()
{
  v1 = sub_2644ABDC0();
  v3 = v2;
  sub_2644ABD00();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2644A9CF4;

  return sub_2644A9F20(v1, v3, 0, 0, 1);
}

uint64_t sub_2644A9CF4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2644AAB94;
  }

  else
  {
    v5 = sub_2644A9E64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2644A9E64()
{
  sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  sub_2644AB960();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644A9F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2644ABBA0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2644AA020, 0, 0);
}

uint64_t sub_2644AA020()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2644ABBB0();
  v5 = sub_2644AA63C(&qword_27FF6E738, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2644ABCE0();
  sub_2644AA63C(&qword_27FF6E740, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2644ABBC0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2644AA1B0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2644AA1B0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644AA36C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2644AA36C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644AA3D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644AA418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2644AAB98;

  return sub_2644A9238(a1, v4, v5, v6);
}

uint64_t sub_2644AA4CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644AA50C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2644AAB98;

  return sub_2644A9B54(v6, a1, v4, v5, v7);
}

uint64_t sub_2644AA5D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2644AA63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644AA684(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644AA6F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2644AAB98;

  return sub_2644A94C4(a1, v5, v4);
}

uint64_t sub_2644AA7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2644AA7D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2644AA880;

  return sub_2644A78A0(a1, v5, v4);
}

uint64_t sub_2644AA880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2644AA998(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_26448DE0C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

__n128 sub_2644AAAC0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2644AAACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2644AAB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t Data.init(uuid:)(uint64_t a1)
{
  v1 = sub_2644AB4E0();
  v2 = v1;
  v4 = v3;
  v5 = v1 >> 8;
  v6 = v1 >> 16;
  v7 = v1 >> 24;
  v8 = HIDWORD(v1);
  v9 = v1 >> 40;
  v10 = HIWORD(v1);
  v11 = HIBYTE(v1);
  v16 = v3 >> 8;
  v17 = v3 >> 16;
  v18 = v3 >> 24;
  v19 = HIDWORD(v3);
  v20 = v3 >> 40;
  v21 = HIWORD(v3);
  v22 = HIBYTE(v3);
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2644AD540;
  *(v12 + 32) = v2;
  *(v12 + 33) = v5;
  *(v12 + 34) = v6;
  *(v12 + 35) = v7;
  *(v12 + 36) = v8;
  *(v12 + 37) = v9;
  *(v12 + 38) = v10;
  *(v12 + 39) = v11;
  *(v12 + 40) = v4;
  *(v12 + 41) = v16;
  *(v12 + 42) = v17;
  *(v12 + 43) = v18;
  *(v12 + 44) = v19;
  *(v12 + 45) = v20;
  *(v12 + 46) = v21;
  *(v12 + 47) = v22;
  v13 = sub_26448EC78(v12);

  v14 = sub_2644AB4F0();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

uint64_t Data.uuid.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB4D0();
  v9 = 0;
LABEL_12:
  v10 = sub_2644AB4F0();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}