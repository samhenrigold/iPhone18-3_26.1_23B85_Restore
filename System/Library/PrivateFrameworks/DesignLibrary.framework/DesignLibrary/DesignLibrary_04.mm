void sub_18AED013C()
{
  if (!qword_1EA998850)
  {
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA998850);
    }
  }
}

unint64_t sub_18AED019C()
{
  result = qword_1EA998858;
  if (!qword_1EA998858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998858);
  }

  return result;
}

BOOL sub_18AED01F4()
{
  sub_18AEB2398();
  sub_18AFCC484();
  return v1 > 1u;
}

uint64_t VerticalButtonSizingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AED02E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AED0578();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.verticalButtonSizingBehavior.getter()
{
  sub_18AEB2398();

  return sub_18AFCC484();
}

uint64_t sub_18AED038C@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB2398();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.verticalButtonSizingBehavior.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_18AEB2398();
  sub_18AFCC484();
  return sub_18AED04C8;
}

uint64_t View.verticalButtonSizingBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_18AFCCAA4();
}

unint64_t sub_18AED0578()
{
  result = qword_1EA998860;
  if (!qword_1EA998860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998860);
  }

  return result;
}

unint64_t sub_18AED05DC()
{
  result = qword_1EA998870;
  if (!qword_1EA998870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998868, &qword_18AFD25F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998870);
  }

  return result;
}

unint64_t sub_18AED0674()
{
  result = qword_1EA998878;
  if (!qword_1EA998878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998878);
  }

  return result;
}

unint64_t sub_18AED06CC()
{
  result = qword_1EA998880;
  if (!qword_1EA998880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998880);
  }

  return result;
}

uint64_t WindowControlVariant.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (!v2)
    {
      MEMORY[0x18CFED610](0);
      return sub_18AFCE2B4();
    }

    v3 = 3;
  }

  else if (v2 == 2)
  {
    v3 = 4;
  }

  else
  {
    if (v2 != 3)
    {
      if (v1 == 128)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      return MEMORY[0x18CFED610](v5);
    }

    v3 = 5;
  }

  MEMORY[0x18CFED610](v3);
  v5 = v1 & 1;
  return MEMORY[0x18CFED610](v5);
}

uint64_t WindowControlVariant.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = v1 >> 5;
  if (v1 >> 5 > 1)
  {
    if (v2 == 2)
    {
      v3 = 4;
    }

    else
    {
      if (v2 != 3)
      {
        if (v1 == 128)
        {
          v4 = 1;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_12;
      }

      v3 = 5;
    }

LABEL_11:
    MEMORY[0x18CFED610](v3);
    v4 = v1 & 1;
LABEL_12:
    MEMORY[0x18CFED610](v4);
    return sub_18AFCE2E4();
  }

  if (v2)
  {
    v3 = 3;
    goto LABEL_11;
  }

  MEMORY[0x18CFED610](0);
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AED08C0(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  v3 = v2 >> 5;
  if (v2 >> 5 > 1)
  {
    if (v3 == 2)
    {
      v4 = 4;
    }

    else
    {
      if (v3 != 3)
      {
        if (v2 == 128)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }

        goto LABEL_12;
      }

      v4 = 5;
    }

LABEL_11:
    MEMORY[0x18CFED610](v4);
    v5 = v2 & 1;
LABEL_12:
    MEMORY[0x18CFED610](v5);
    return sub_18AFCE2E4();
  }

  if (v3)
  {
    v4 = 3;
    goto LABEL_11;
  }

  MEMORY[0x18CFED610](0);
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

_BYTE *WindowControl.init(variant:interactionState:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t WindowControl.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v5 = *v1;
  v4 = v2;
  return sub_18AF30748(&v5, &v4, a1);
}

uint64_t sub_18AED09BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v5 = *v1;
  v4 = v2;
  return sub_18AF30748(&v5, &v4, a1);
}

BOOL _s13DesignLibrary20WindowControlVariantO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (!v4)
    {
      if (v3 < 0x20)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if ((v3 & 0xE0) == 0x20)
    {
      return ((v3 ^ v2) & 1) == 0;
    }
  }

  else
  {
    if (v4 == 2)
    {
      if ((v3 & 0xE0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v4 == 3)
    {
      if ((v3 & 0xE0) != 0x60)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_18AED0AA8()
{
  result = qword_1EA998888;
  if (!qword_1EA998888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998888);
  }

  return result;
}

unint64_t sub_18AED0B00()
{
  result = qword_1EA998890;
  if (!qword_1EA998890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998890);
  }

  return result;
}

unint64_t sub_18AED0B58()
{
  result = qword_1EA998898;
  if (!qword_1EA998898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowControlVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 132;
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

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for WindowControlVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18AED0D24(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return v1 & 1 | 4u;
  }
}

_BYTE *sub_18AED0D50(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowControl(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18AED0F00()
{
  result = qword_1EA9988A0[0];
  if (!qword_1EA9988A0[0])
  {
    type metadata accessor for MacWindowControlElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9988A0);
  }

  return result;
}

void sub_18AED0F68(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AED16C0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AED16C0(319, &qword_1EA998928, MEMORY[0x1E697F990]);
      if (v3 <= 0x3F)
      {
        sub_18AEB31C4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AED1068(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(sub_18AFCC664() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 80) & 0xF8 | 7;
  if (v10 >= a2)
  {
    goto LABEL_37;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((v12 + ((v9 + v16 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15) + 1) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v10 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_37;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v20 || (v21 = a1[v17]) == 0)
  {
LABEL_37:
    v25 = &a1[v13 + 1] & ~v13;
    if (v7 < 0xFE)
    {
      v27 = *(((v25 + v14 + v15) & ~v15) + v9);
      if (v27 >= 2)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v26 = *(v6 + 48);

      return v26(v25, v7, v5);
    }
  }

  v23 = v17 > 3;
  if (v17 <= 3)
  {
    v24 = (v21 - 1) << (8 * v17);
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v28 = *a1;
  }

  else
  {
    v28 = *a1;
  }

  return v10 + (v28 | v24) + 1;
}

void sub_18AED132C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v31 = *(a4 + 16);
  v7 = *(v31 - 8);
  v32 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_18AFCC5C4() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(sub_18AFCC664() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v10 + 1;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = ((v13 + ((v10 + 1 + v18 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 >= a3)
  {
    v22 = 0;
    if (v11 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v11 + 255) >> 8) + 1;
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

    if (v11 >= a2)
    {
LABEL_23:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v25 = &a1[v14 + 1] & ~v14;
      if (v8 < 0xFE)
      {
        v27 = ((v25 + v15 + v16) & ~v16);
        if (a2 > 0xFE)
        {
          if (v17 <= 3)
          {
            v28 = ~(-1 << (8 * v17));
          }

          else
          {
            v28 = -1;
          }

          if (v10 != -1)
          {
            v29 = v28 & (a2 - 255);
            if (v17 <= 3)
            {
              v30 = v10 + 1;
            }

            else
            {
              v30 = 4;
            }

            bzero(v27, v17);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                *v27 = v29;
                v27[2] = BYTE2(v29);
              }

              else
              {
                *v27 = v29;
              }
            }

            else if (v30 == 1)
            {
              *v27 = v29;
            }

            else
            {
              *v27 = v29;
            }
          }
        }

        else
        {
          v27[v10] = -a2;
        }
      }

      else
      {
        v26 = *(v32 + 56);

        v26(v25, a2, v8, v31);
      }

      return;
    }
  }

  v23 = ~v11 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_33:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_18AED16C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AED1758@<X0>(_BYTE *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v7 = type metadata accessor for BadgeDrawing(0, a3, a4, a3);
  a2();
  v8 = v7[10];
  *&a5[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v9 = v7[11];
  *&a5[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998978, &qword_18AFD29D8);
  swift_storeEnumTagMultiPayload();
  v10 = &a5[v7[12]];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  return result;
}

uint64_t sub_18AED1840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v58 = sub_18AFCC474();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v55 - v5;
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v8 = sub_18AFCC044();
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v11 = sub_18AFCC044();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  v13 = sub_18AFCC044();
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v55 - v14;
  v15 = sub_18AFCC044();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v55 - v16;
  v70 = v17;
  v18 = sub_18AFCC044();
  v73 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v55 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998948, &qword_18AFD29D0);
  v74 = v18;
  v20 = sub_18AFCC044();
  v75 = *(v20 - 8);
  v76 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v55 - v23;
  sub_18AFCC924();
  v24 = sub_18AFCC8F4();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_18AFCC954();
  sub_18AED2A4C(v6);
  v25 = *(a1 + 24);
  v26 = v60;
  v61 = v10;
  v77 = v7;
  v27 = v25;
  sub_18AFCCBA4();

  v28 = v26 + *(a1 + 48);
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    sub_18AFCE024();
    v31 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v32 = v56;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v29, 0);
    (*(v57 + 8))(v32, v58);
    if (v91 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = sub_18AED22E0();
    goto LABEL_6;
  }

  if (v29)
  {
    goto LABEL_5;
  }

LABEL_3:
  LODWORD(v91) = sub_18AFCC6E4();
  v30 = sub_18AFCBCD4();
LABEL_6:
  v91 = v30;
  v33 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v59 = v27;
  v89 = v27;
  v90 = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = v62;
  v36 = v61;
  sub_18AFCCB44();

  (*(v64 + 8))(v36, v8);
  sub_18AFCC844();
  v37 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v87 = WitnessTable;
  v88 = v37;
  v38 = swift_getWitnessTable();
  v39 = v63;
  sub_18AFCCC24();
  (*(v66 + 8))(v35, v11);
  sub_18AFCC8B4();
  v40 = MEMORY[0x1E697E5D8];
  v85 = v38;
  v86 = MEMORY[0x1E697E5D8];
  v41 = swift_getWitnessTable();
  v42 = v65;
  sub_18AFCCC24();
  (*(v67 + 8))(v39, v13);
  sub_18AFCDB44();
  v83 = v41;
  v84 = v40;
  v43 = v70;
  v54 = swift_getWitnessTable();
  v44 = v68;
  sub_18AFCCBC4();
  v45 = (*(v69 + 8))(v42, v43);
  v70 = &v55;
  MEMORY[0x1EEE9AC00](v45);
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  v81 = v54;
  v82 = MEMORY[0x1E697EBF8];
  v46 = v74;
  v47 = swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998968, &qword_1EA998960, &unk_18AFD8820, MEMORY[0x1E697DB78]);
  v48 = v71;
  sub_18AFCCA64();
  (*(v73 + 8))(v44, v46);
  v49 = sub_18AE95F54(&qword_1EA998970, &qword_1EA998948, &qword_18AFD29D0, MEMORY[0x1E697F940]);
  v79 = v47;
  v80 = v49;
  v50 = v76;
  swift_getWitnessTable();
  v51 = v72;
  sub_18AEADA5C();
  v52 = *(v75 + 8);
  v52(v48, v50);
  sub_18AEADA5C();
  return (v52)(v51, v50);
}

uint64_t sub_18AED22E0()
{
  v1 = sub_18AFCC664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  if (*v0 == 2 || (sub_18AED2C48(&qword_1EA998978, &qword_18AFD29D8, MEMORY[0x1E697F990], (&v11 - v6)), sub_18AFCC654(), v8 = sub_18AFCC634(), v9 = *(v2 + 8), v9(v4, v1), v9(v7, v1), (v8 & 1) != 0))
  {
    v12 = sub_18AFCCD94();
  }

  else
  {
    LODWORD(v12) = sub_18AFCC6F4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AED2474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v15 + 28);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_18AFCC534();
  (*(*(v18 - 8) + 104))(&v14->i8[v16], v17, v18);
  *v14 = vdupq_n_s64(0x408F380000000000uLL);
  v20 = type metadata accessor for BadgeDrawing(0, a2, a3, v19);
  v23 = a1 + *(v20 + 48);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {
    v26 = v20;

    sub_18AFCE024();
    v27 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v24, 0);
    (*(v9 + 8))(v11, v8);
    v20 = v26;
    if (v30[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = sub_18AED26FC();
    goto LABEL_6;
  }

  if (v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = sub_18AED2918(v20, v21, v22);
LABEL_6:
  v28 = v25;
  sub_18AED3088(v14, a4, MEMORY[0x1E697EAF0]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  *(a4 + *(result + 52)) = v28;
  *(a4 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_18AED26FC()
{
  v1 = sub_18AFCC664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  if (*v0 == 2)
  {
    sub_18AED2C48(&qword_1EA998978, &qword_18AFD29D8, MEMORY[0x1E697F990], (&v14 - v6));
    sub_18AFCC654();
    v10 = sub_18AFCC634();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    if ((v10 & 1) == 0)
    {
      v12 = sub_18AFCCD24();
      goto LABEL_7;
    }

LABEL_6:
    v12 = sub_18AFCCD74();
LABEL_7:
    v15 = v12;
    return sub_18AFCBCD4();
  }

  if (!*v0)
  {
    goto LABEL_6;
  }

  sub_18AED2C48(&qword_1EA998978, &qword_18AFD29D8, MEMORY[0x1E697F990], (&v14 - v6));
  sub_18AFCC654();
  v8 = sub_18AFCC634();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    goto LABEL_6;
  }

  LODWORD(v15) = sub_18AFCC6D4();
  return sub_18AFCBCD4();
}

uint64_t sub_18AED2918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 2)
  {
    sub_18AFCC6D4();
  }

  else
  {
    sub_18AFCCD74();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AED2980(uint64_t a1)
{
  v2 = sub_18AFCC664();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18AFCC324();
}

uint64_t sub_18AED2A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AED2ADC(uint64_t a1, char a2)
{
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[15];
  }

  return a1;
}

uint64_t sub_18AED2C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_18AE83A40(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_18AED2E98@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_18AE83A40(v2, &v13 - v9, &qword_1EA998520, &qword_18AFD2FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_18AED3088(v10, a1, type metadata accessor for ResolvedButtonBorderShape);
  }

  sub_18AFCE024();
  v12 = sub_18AFCC7D4();
  sub_18AFCBA64();

  sub_18AFCC464();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18AED3088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AED30F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_18AED3138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18AED31A4@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_18AFCDB44();
  v9 = v8;
  sub_18AED3360(a1, a2 & 1, &v18);
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v48[12] = v30;
  v48[13] = v31;
  v48[14] = v32;
  v48[8] = v26;
  v48[9] = v27;
  v48[10] = v28;
  v48[11] = v29;
  v48[4] = v22;
  v48[5] = v23;
  v48[6] = v24;
  v48[7] = v25;
  v48[0] = v18;
  v48[1] = v19;
  v48[2] = v20;
  v48[3] = v21;
  sub_18AE83A40(&v33, &v17, &qword_1EA998988, &qword_18AFD2B40);
  sub_18AE7BA80(v48, &qword_1EA998988, &qword_18AFD2B40);

  *a3 = v7;
  *(a3 + 8) = v9;
  v10 = v46;
  *(a3 + 208) = v45;
  *(a3 + 224) = v10;
  *(a3 + 240) = v47;
  v11 = v42;
  *(a3 + 144) = v41;
  *(a3 + 160) = v11;
  v12 = v44;
  *(a3 + 176) = v43;
  *(a3 + 192) = v12;
  v13 = v38;
  *(a3 + 80) = v37;
  *(a3 + 96) = v13;
  v14 = v40;
  *(a3 + 112) = v39;
  *(a3 + 128) = v14;
  v15 = v34;
  *(a3 + 16) = v33;
  *(a3 + 32) = v15;
  result = v36;
  *(a3 + 48) = v35;
  *(a3 + 64) = result;
  return result;
}

uint64_t sub_18AED3360@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v35 = a2;
  v34 = a1;
  v4 = sub_18AFCCCF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v37 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A48, &qword_18AFCED98);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18AFD2A70;
  v9 = *MEMORY[0x1E69814D8];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  *(v8 + 32) = sub_18AFCCF44();
  *(v8 + 40) = sub_18AFCCD14();
  *(v8 + 48) = sub_18AFCCD14();
  *(v8 + 56) = sub_18AFCCD14();
  *(v8 + 64) = sub_18AFCCD14();
  v33 = v10;
  v10(v7, v9, v4);
  *(v8 + 72) = sub_18AFCCF44();
  MEMORY[0x18CFEC880](v8);
  sub_18AFCDD04();
  sub_18AFCBEB4();
  LOBYTE(v8) = v35;
  sub_18AFCBB94();
  *(v88 + 7) = v92;
  *(&v88[1] + 7) = v93;
  *(&v88[2] + 7) = v94;
  v36 = sub_18AFCCD74();
  *&v38 = sub_18AFCDB44();
  *(&v38 + 1) = v11;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  if (v8)
  {
    v67 = v34;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998990, &qword_18AFD2B48);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18AFCEB10;
    v13 = v33;
    v33(v7, v9, v4);
    sub_18AFCCF44();
    *(v12 + 32) = sub_18AFCD4F4();
    *(v12 + 40) = v14;
    v13(v7, v9, v4);
    sub_18AFCCF44();
    *(v12 + 48) = sub_18AFCD4F4();
    *(v12 + 56) = v15;
    sub_18AFCD504();
    sub_18AFCDD04();
    sub_18AFCBEB4();
  }

  v16 = sub_18AFCBCD4();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v81[6] = v95;
  *&v81[22] = v96;
  *&v81[38] = v97;
  v17 = v36;
  *&v54 = v36;
  WORD4(v54) = 256;
  *(&v54 + 10) = v90;
  HIWORD(v54) = v91;
  LOBYTE(v55[0]) = 0;
  *(v55 + 1) = v88[0];
  *(&v55[1] + 1) = v88[1];
  *&v56 = v87;
  v55[2] = *(&v88[1] + 15);
  v55[3] = v85;
  v55[4] = v86;
  BYTE8(v56) = 1;
  *(&v56 + 9) = *v89;
  HIDWORD(v56) = *&v89[3];
  v57 = v38;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v39 = v54;
  v40 = v55[0];
  v43 = v85;
  v44 = v86;
  v41 = v55[1];
  v42 = *(&v88[1] + 15);
  v47 = v82;
  v48 = v83;
  v45 = v56;
  v46 = v38;
  *&v61[0] = v16;
  WORD4(v61[0]) = 256;
  *(v61 + 10) = *v81;
  v18 = *v81;
  v19 = *&v81[16];
  *(&v61[1] + 10) = *&v81[16];
  *(&v61[2] + 10) = *&v81[32];
  *(&v61[3] + 1) = *(&v97 + 1);
  v20 = v61[0];
  v49 = v84;
  v50 = v61[0];
  v51 = v61[1];
  v52 = v61[2];
  v53 = v61[3];
  v21 = v55[0];
  *a3 = v54;
  a3[1] = v21;
  v22 = v41;
  v23 = v42;
  v24 = v44;
  a3[4] = v43;
  a3[5] = v24;
  a3[2] = v22;
  a3[3] = v23;
  v25 = v45;
  v26 = v46;
  v27 = v48;
  a3[8] = v47;
  a3[9] = v27;
  a3[6] = v25;
  a3[7] = v26;
  v28 = v53;
  a3[13] = v52;
  a3[14] = v28;
  v29 = v49;
  v30 = v51;
  a3[11] = v20;
  a3[12] = v30;
  a3[10] = v29;
  v62 = v16;
  v63 = 256;
  v64 = v18;
  v65 = v19;
  *v66 = *&v81[32];
  *&v66[14] = *&v81[46];
  sub_18AE83A40(&v54, &v67, &qword_1EA998998, &qword_18AFD2B50);
  sub_18AE83A40(v61, &v67, &qword_1EA9989A0, &qword_18AFD2B58);
  sub_18AE7BA80(&v62, &qword_1EA9989A0, &qword_18AFD2B58);
  v67 = v17;
  v68 = 256;
  v69 = v90;
  v70 = v91;
  v71 = 0;
  v72 = v88[0];
  *v73 = v88[1];
  *&v73[31] = v85;
  *&v73[47] = v86;
  v74 = v87;
  *&v73[15] = *(&v88[1] + 15);
  v75 = 1;
  *&v76[3] = *&v89[3];
  *v76 = *v89;
  v77 = v38;
  v78 = v82;
  v79 = v83;
  v80 = v84;
  sub_18AE7BA80(&v67, &qword_1EA998998, &qword_18AFD2B50);
}

double sub_18AED39EC@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = sub_18AFCDB44();
  v8 = v7;
  sub_18AED31A4(v4, v5, &v19);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v51[12] = v31;
  v51[13] = v32;
  v51[14] = v33;
  v51[15] = v34;
  v51[8] = v27;
  v51[9] = v28;
  v51[10] = v29;
  v51[11] = v30;
  v51[4] = v23;
  v51[5] = v24;
  v51[6] = v25;
  v51[7] = v26;
  v51[0] = v19;
  v51[1] = v20;
  v51[2] = v21;
  v51[3] = v22;
  sub_18AE83A40(&v35, &v18, &qword_1EA998980, &qword_18AFD2B38);
  sub_18AE7BA80(v51, &qword_1EA998980, &qword_18AFD2B38);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v48;
  *(a2 + 208) = v47;
  *(a2 + 224) = v9;
  v10 = v50;
  *(a2 + 240) = v49;
  *(a2 + 256) = v10;
  v11 = v44;
  *(a2 + 144) = v43;
  *(a2 + 160) = v11;
  v12 = v46;
  *(a2 + 176) = v45;
  *(a2 + 192) = v12;
  v13 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v13;
  v14 = v42;
  *(a2 + 112) = v41;
  *(a2 + 128) = v14;
  v15 = v36;
  *(a2 + 16) = v35;
  *(a2 + 32) = v15;
  result = *&v37;
  v17 = v38;
  *(a2 + 48) = v37;
  *(a2 + 64) = v17;
  return result;
}

unint64_t sub_18AED3B40()
{
  result = qword_1EA9989A8;
  if (!qword_1EA9989A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9989B0, &qword_18AFD2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9989A8);
  }

  return result;
}

uint64_t sub_18AED3BA4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18AED3C40(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFB)
  {
    v13 = 251;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFB)
      {
        v24 = &a1[v9 + 2] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (v23 >= 5)
        {
          return v23 - 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_18AED3E64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFB)
  {
    v14 = 251;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
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

  else if (v18)
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
  if (v13 > 0xFB)
  {
    v24 = &a1[v10 + 2] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 4;
  }
}

uint64_t sub_18AED41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  type metadata accessor for iOSStepperButton(255);
  v3 = *(a1 + 24);
  sub_18AFCC044();
  v4 = *(a1 + 16);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A38, &qword_18AFD2BE0);
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A40, &qword_18AFD2BE8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  v14[4] = v4;
  v14[5] = v3;
  v15 = *(a1 + 32);
  v16 = v14[0];
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_18AEADA5C();
  return (v12)(v11, v5);
}

uint64_t sub_18AED449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v25 = a6;
  type metadata accessor for iOSStepperButton(255);
  v21 = a3;
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A38, &qword_18AFD2BE0);
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A40, &qword_18AFD2BE8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v8 = sub_18AFCD1F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v16 = v21;
  *(&v20 - 6) = a2;
  *(&v20 - 5) = v16;
  v17 = v24;
  *(&v20 - 4) = v23;
  *(&v20 - 3) = v17;
  *(&v20 - 2) = v22;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_18AEADA5C();
  v18(v14, v8);
}

uint64_t sub_18AED47EC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a4;
  v72 = a5;
  v68 = a1;
  v67 = a6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40, &qword_18AFD2BE8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v52 - v10;
  v60 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for iOSStepperButton(255);
  v70 = a3;
  sub_18AFCC044();
  v69 = a2;
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v12 = sub_18AFCD134();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A38, &qword_18AFD2BE0);
  v15 = sub_18AFCC044();
  v58 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v57 = sub_18AFCC044();
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v52 - v21;
  sub_18AFCDF14();
  v63 = sub_18AFCDF04();
  sub_18AFCDED4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v23 = v70;
  *(&v52 - 6) = v69;
  *(&v52 - 5) = v23;
  v24 = v72;
  *(&v52 - 4) = v71;
  *(&v52 - 3) = v24;
  *(&v52 - 2) = v68;
  sub_18AFCC504();
  sub_18AFCD124();
  v54 = *MEMORY[0x1E697F468];
  v25 = v54;
  v26 = sub_18AFCC534();
  v27 = *(v26 - 8);
  v53 = *(v27 + 104);
  v55 = v27 + 104;
  v28 = v59;
  v53(v59, v25, v26);
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x1E6981998];
  sub_18AED58A0(&qword_1EA998A48, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  sub_18AFCCC74();
  sub_18AED58E8(v28, v30);
  (*(v56 + 8))(v14, v12);
  sub_18AFCDB44();
  v31 = sub_18AE95F54(&qword_1EA998A50, &qword_1EA998A38, &qword_18AFD2BE0, MEMORY[0x1E697DDB0]);
  v76[4] = WitnessTable;
  v76[5] = v31;
  v32 = swift_getWitnessTable();
  sub_18AFCCBB4();
  (*(v58 + 8))(v17, v15);
  v76[2] = v32;
  v76[3] = MEMORY[0x1E697E040];
  v33 = v57;
  v34 = swift_getWitnessTable();
  v35 = v62;
  sub_18AEADA5C();
  v36 = v61;
  v37 = *(v61 + 8);
  v37(v19, v33);
  v38 = sub_18AFCC184();
  v39 = v65;
  v53(&v65[*(v38 + 20)], v54, v26);
  __asm { FMOV            V0.2D, #8.0 }

  *v39 = _Q0;
  v45 = sub_18AED55BC(v68);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  *(v39 + *(v46 + 52)) = v45;
  *(v39 + *(v46 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v47 = v64;
  v48 = (v39 + *(v64 + 36));
  v49 = v78;
  *v48 = v77;
  v48[1] = v49;
  v48[2] = v79;
  (*(v36 + 16))(v19, v35, v33);
  v76[0] = v19;
  v50 = v66;
  sub_18AED56E0(v39, v66);
  v76[1] = v50;
  v75[0] = v33;
  v75[1] = v47;
  v73 = v34;
  v74 = sub_18AED5750();
  sub_18AEB70B8(v76, 2uLL, v75);
  sub_18AED5808(v39);
  v37(v35, v33);
  sub_18AED5808(v50);
  v37(v19, v33);
}

uint64_t sub_18AED4FF8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v67 = a4;
  v65 = a6;
  v9 = type metadata accessor for iOSStepperButton(255);
  v66 = sub_18AFCC044();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18AFCC044();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v52 - v20;
  sub_18AFCDF14();
  v61 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a1[1];
  *v15 = 0x73756E696DLL;
  *(v15 + 1) = 0xE500000000000000;
  v15[16] = v21;
  v22 = *(v9 + 24);
  *&v15[v22] = swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v23 = &v15[*(v9 + 28)];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v72 = a2;
  v73 = a3;
  v24 = a3;
  v25 = v59;
  v74 = v67;
  v75 = v59;
  v26 = type metadata accessor for iOSStepper(0, &v72);
  v55 = a2;
  v54 = v26;
  v27 = *(v26 + 60);
  v28 = sub_18AED58A0(&qword_1EA998A60, type metadata accessor for iOSStepperButton, &unk_18AFD2C64);
  MEMORY[0x18CFEBFA0](&a1[v27], v9, v24, v28);
  sub_18AED58E8(v15, type metadata accessor for iOSStepperButton);
  v71[4] = v28;
  v71[5] = v25;
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C();
  v29 = v16;
  v53 = v16;
  v30 = v60;
  v31 = v18;
  v32 = *(v60 + 8);
  v58 = v60 + 8;
  v59 = v32;
  v32(v18, v29);
  v33 = *a1;
  *v15 = 1937075312;
  *(v15 + 1) = 0xE400000000000000;
  v15[16] = v33;
  v34 = *(v9 + 24);
  *&v15[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = &v15[*(v9 + 28)];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v64;
  MEMORY[0x18CFEBFA0](&a1[*(v54 + 56)], v9, v55, v28);
  sub_18AED58E8(v15, type metadata accessor for iOSStepperButton);
  v71[2] = v28;
  v71[3] = v67;
  v37 = v66;
  v38 = swift_getWitnessTable();
  v39 = v63;
  sub_18AEADA5C();
  v40 = v62;
  v41 = *(v62 + 8);
  v41(v36, v37);
  v42 = *(v30 + 16);
  v43 = v31;
  v44 = v31;
  v45 = v68;
  v46 = v53;
  v42(v44, v68, v53);
  v72 = v43;
  (*(v40 + 16))(v36, v39, v37);
  v73 = v36;
  v71[0] = v46;
  v71[1] = v37;
  v69 = WitnessTable;
  v70 = v38;
  sub_18AEB70B8(&v72, 2uLL, v71);
  v41(v39, v37);
  v47 = v45;
  v48 = v46;
  v49 = v46;
  v50 = v59;
  v59(v47, v48);
  v41(v36, v37);
  v50(v43, v49);
}

uint64_t sub_18AED55BC(_BYTE *a1)
{
  if (*a1 == 1)
  {

    return sub_18AED5614(a1);
  }

  else
  {
    sub_18AFCC6E4();
    return sub_18AFCBCD4();
  }
}

uint64_t sub_18AED5614(uint64_t a1)
{
  if (*(a1 + 1) == 1)
  {
    sub_18AFCC6B4();
  }

  else
  {
    sub_18AFCC6E4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AED56E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40, &qword_18AFD2BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AED5750()
{
  result = qword_1EA998A58;
  if (!qword_1EA998A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A40, &qword_18AFD2BE8);
    sub_18AE95F54(&qword_1EA998968, &qword_1EA998960, &unk_18AFD8820, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998A58);
  }

  return result;
}

uint64_t sub_18AED5808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40, &qword_18AFD2BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AED5870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC344();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AED58A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AED58E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for iOSStepperButton(uint64_t a1)
{
  result = qword_1EA998A68;
  if (!qword_1EA998A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AED59BC(uint64_t a1)
{
  sub_18AED5A58(319);
  if (v1 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18AED5A58(uint64_t a1)
{
  if (!qword_1EA998418)
  {
    sub_18AFCC5C4();
    v1 = sub_18AFCBB64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA998418);
    }
  }
}

double sub_18AED5ACC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_18AFCDB44();
  v7 = v6;
  sub_18AED5C58(a1, &v16);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v40[8] = v24;
  v40[9] = v25;
  v40[10] = v26;
  v40[11] = v27;
  v40[4] = v20;
  v40[5] = v21;
  v40[6] = v22;
  v40[7] = v23;
  v40[0] = v16;
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v19;
  sub_18AE83A40(&v28, &v15, &qword_1EA998A80, &unk_18AFD2CC0);
  sub_18AE7BA80(v40, &qword_1EA998A80, &unk_18AFD2CC0);

  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v37;
  *(a2 + 144) = v36;
  *(a2 + 160) = v8;
  v9 = v39;
  *(a2 + 176) = v38;
  *(a2 + 192) = v9;
  v10 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v10;
  v11 = v35;
  *(a2 + 112) = v34;
  *(a2 + 128) = v11;
  v12 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v12;
  result = *&v30;
  v14 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v14;
  *(a2 + 208) = 256;
  return result;
}

uint64_t sub_18AED5C58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - v5;
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v35 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + 16);
  v11 = a1 + *(type metadata accessor for iOSStepperButton(0) + 28);
  v12 = *v11;
  if (v11[8] == 1)
  {
    v63 = v12 & 1;
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v12, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v12) = v63;
  }

  LODWORD(v40[0]) = sub_18AFCC6D4();
  v14 = sub_18AFCBCD4();
  v15 = sub_18AEF38D4(v10);
  v16 = sub_18AFCDB44();
  v18 = v17;
  v33 = sub_18AEF3A80(v10, v12 & 1);
  *&v48 = v15;
  WORD4(v48) = 256;
  *&v49 = v14;
  WORD4(v49) = 256;
  *&v50 = v16;
  *(&v50 + 1) = v18;
  sub_18AFCBB94();
  *&v64[7] = v48;
  *&v64[23] = v49;
  *&v64[39] = v50;
  v51 = v15;
  v52 = 256;
  v53 = v14;
  v54 = 256;
  v55 = v16;
  v56 = v18;
  sub_18AE83A40(&v48, v40, &qword_1EA998A88, &qword_18AFD2CD0);
  sub_18AE7BA80(&v51, &qword_1EA998A88, &qword_18AFD2CD0);
  sub_18AFCDB44();
  sub_18AFCBCC4();

  v19 = sub_18AFCCFA4();
  v20 = sub_18AED61E8(a1);
  sub_18AFCC924();
  v21 = sub_18AFCC8F4();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  v23 = sub_18AFCC954();
  sub_18AE7BA80(v22, &qword_1EA998930, &qword_18AFD35E0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v36) = 0;
  *(&v36 + 1) = v65[0];
  DWORD1(v36) = *(v65 + 3);
  v25 = v33;
  *(&v36 + 1) = v33;
  v37 = v60;
  v38 = v61;
  *&v39[0] = v62;
  BYTE8(v39[0]) = 1;
  *(v39 + 9) = *v64;
  *(&v39[2] + 9) = *&v64[32];
  *(&v39[1] + 9) = *&v64[16];
  *(&v39[3] + 1) = *&v64[47];
  v26 = v57;
  v27 = v58;
  v39[4] = v57;
  v39[5] = v58;
  v28 = v59;
  v39[6] = v59;
  v29 = v39[2];
  *(a2 + 64) = v39[1];
  *(a2 + 80) = v29;
  v30 = v39[0];
  *(a2 + 32) = v38;
  *(a2 + 48) = v30;
  *(a2 + 128) = v27;
  *(a2 + 144) = v28;
  *(a2 + 96) = v39[3];
  *(a2 + 112) = v26;
  v31 = v37;
  *a2 = v36;
  *(a2 + 16) = v31;
  *(a2 + 160) = v19;
  *(a2 + 168) = v20;
  *(a2 + 176) = KeyPath;
  *(a2 + 184) = v23;
  sub_18AE83A40(&v36, v40, &qword_1EA998A90, &qword_18AFD2D08);
  LOBYTE(v40[0]) = 0;
  *(v40 + 1) = v65[0];
  HIDWORD(v40[0]) = *(v65 + 3);
  v40[1] = v25;
  v41 = v60;
  v42 = v61;
  v43 = v62;
  v44 = 1;
  *&v47[15] = *&v64[47];
  *v47 = *&v64[32];
  v46 = *&v64[16];
  v45 = *v64;
  *&v47[23] = v57;
  *&v47[39] = v58;
  *&v47[55] = v59;
  sub_18AE7BA80(v40, &qword_1EA998A90, &qword_18AFD2D08);
}

uint64_t sub_18AED61E8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u && *(a1 + 16))
  {
    sub_18AFCC6E4();
  }

  else
  {
    sub_18AFCC6C4();
  }

  return sub_18AFCBCD4();
}

double sub_18AED624C@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18AFCDB44();
  v7 = v6;
  sub_18AED5ACC(v3, &v16);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v30 = v16;
  v31 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v44[12] = v28;
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v43 = v29;
  v45 = v29;
  v44[0] = v16;
  v44[1] = v17;
  sub_18AE83A40(&v30, &v15, &qword_1EA998A78, &qword_18AFD2CB8);
  sub_18AE7BA80(v44, &qword_1EA998A78, &qword_18AFD2CB8);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v41;
  *(a2 + 176) = v40;
  *(a2 + 192) = v8;
  *(a2 + 208) = v42;
  *(a2 + 224) = v43;
  v9 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v9;
  v10 = v39;
  *(a2 + 144) = v38;
  *(a2 + 160) = v10;
  v11 = v33;
  *(a2 + 48) = v32;
  *(a2 + 64) = v11;
  v12 = v35;
  *(a2 + 80) = v34;
  *(a2 + 96) = v12;
  result = *&v30;
  v14 = v31;
  *(a2 + 16) = v30;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_18AED639C()
{
  result = qword_1EA998A98;
  if (!qword_1EA998A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998AA0, &unk_18AFD2D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacButtonArrows(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
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

_WORD *storeEnumTagSinglePayload for MacButtonArrows(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_18AED6570@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  *a2 = 0xD000000000000017;
  a2[1] = 0x800000018AFE4440;
  v5 = type metadata accessor for MacButtonSymbolSecondary(0);
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = 1;
  *(a2 + v5[8]) = v2;
  *(a2 + v5[9]) = v4;
  v8 = v5[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AED66A0@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_18AFCDB44();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998AA8, &qword_18AFD2DC8);
  return sub_18AED6570(v4, (a2 + *(v6 + 44)));
}

unint64_t sub_18AED66F0()
{
  result = qword_1EA998AB0;
  if (!qword_1EA998AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA998AB8, &qword_18AFD3380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998AB0);
  }

  return result;
}

void sub_18AED6764(uint64_t a1)
{
  sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AED6878(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_18AFCC5C4() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 & 0xF8 | 7;
  v17 = v10 + v14 + 5;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16)) & ~v14) + *(v11 + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v27 = *(v11 + 48);

        return v27((v17 + ((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 9) & ~v16)) & ~v14);
      }

      else
      {
        v26 = *(a1 + v7);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

void sub_18AED6B0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_18AFCC5C4() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = v15 & 0xF8 | 7;
  v19 = v12 + v16 + 5;
  v20 = ((v19 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v18 + 17) & ~v18)) & ~v16) + *(v13 + 64);
  if (a3 <= v17)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v17 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_61:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v20] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    goto LABEL_36;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v27 = v9 + 1;
  if (v14 > 0xFE)
  {
    v28 = *(v13 + 56);

    v28((v19 + (((&a1[v27 + 7] & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18)) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v27 <= 3)
    {
      v29 = ~(-1 << (8 * v27));
    }

    else
    {
      v29 = -1;
    }

    if (v9 != -1)
    {
      v30 = v29 & (a2 - 255);
      if (v27 <= 3)
      {
        v31 = v9 + 1;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v27);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else
        {
          *a1 = v30;
        }
      }

      else if (v31 == 1)
      {
        *a1 = v30;
      }

      else
      {
        *a1 = v30;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_18AED6EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AED6F1C@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v15 = *a1;
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for MacButtonDestructive(0, a6, a7, v16);
  v18 = a8 + v17[9];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v17[10];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  v20 = swift_storeEnumTagMultiPayload();
  *(a8 + v17[11]) = v15;
  *(a8 + v17[12]) = a2;
  *(a8 + v17[13]) = a3;
  *(a8 + v17[14]) = a4;
  return a5(v20);
}

double sub_18AED7048(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520, &qword_18AFD2FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD3088;
  if (v13 == 2)
  {
    v14 = &unk_18AFD3108;
  }

  return v14[*(v1 + *(a1 + 52))];
}

double sub_18AED729C(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520, &qword_18AFD2FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD30C8;
  if (v13 == 2)
  {
    v14 = &unk_18AFD3108;
  }

  return v14[*(v1 + *(a1 + 52))];
}

uint64_t sub_18AED74F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v64 - v5;
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v8 = sub_18AFCC044();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v64 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v10 = sub_18AFCC044();
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v64 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  v12 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v66 = v10;
  v13 = sub_18AFCBDC4();
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v64 - v14;
  v71 = v15;
  v16 = sub_18AFCC044();
  v73 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v64 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  v18 = v89;
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v12);
  v74 = sub_18AFCBDC4();
  v19 = sub_18AFCC624();
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v64 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B68, &qword_18AFD2FA0);
  v77 = v19;
  v21 = sub_18AFCC044();
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v64 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  v82 = v21;
  v84 = sub_18AFCC044();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v64 - v25;
  v65 = *(v18 + *(a1 + 52));
  sub_18AFCC934();
  v26 = sub_18AFCC8F4();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_18AFCC954();
  sub_18AE7BA80(v6, &qword_1EA998930, &qword_18AFD35E0);
  sub_18AFCC8E4();

  v27 = *(a1 + 24);
  v28 = v64;
  sub_18AFCCBA4();

  v91 = a1;
  v30 = *(v18 + *(a1 + 48)) == 1;
  v85 = v7;
  if (v30)
  {
    v108 = sub_18AFCCD24();
    v31 = sub_18AFCBCD4();
  }

  else
  {
    v31 = sub_18AED81F8(v18, v7, v27, v29);
  }

  v108 = v31;
  v32 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v106 = v27;
  v107 = v32;
  WitnessTable = swift_getWitnessTable();
  v34 = v68;
  sub_18AFCCB44();

  (*(v67 + 8))(v28, v8);
  v35 = v91;
  v36 = sub_18AED7048(v91);
  v37 = sub_18AED729C(v35);
  v38 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v104 = WitnessTable;
  v105 = v38;
  v39 = v66;
  v40 = swift_getWitnessTable();
  sub_18AFC385C(0, 0, v39, v40, v36, v37, v90);
  (*(v69 + 8))(v34, v39);
  sub_18AFCC8B4();
  v41 = *(v18 + *(v35 + 56));
  v42 = v72;
  v102 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v103 = v40;
  v43 = v71;
  v44 = swift_getWitnessTable();
  v45 = v90;
  sub_18AFCCC24();
  (*(v70 + 8))(v45, v43);
  if (v41)
  {
    v46 = qword_18AFD31C8[v65];
    v47 = qword_18AFD3208[v65];
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v100 = v44;
  v101 = MEMORY[0x1E697E5D8];
  v90 = MEMORY[0x1E697E858];
  v48 = swift_getWitnessTable();
  v49 = v75;
  sub_18AFC2B18(v47, v41 ^ 1, v46, v41 ^ 1, v16, v48, v75);
  v50 = (*(v73 + 8))(v42, v16);
  MEMORY[0x1EEE9AC00](v50);
  *(&v64 - 4) = v85;
  *(&v64 - 3) = v27;
  *(&v64 - 2) = v89;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998B80, &qword_18AFD2FB0);
  v98 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  v99 = v48;
  v96 = swift_getWitnessTable();
  v97 = v48;
  v51 = v77;
  v52 = swift_getWitnessTable();
  sub_18AED89C4();
  v53 = v78;
  sub_18AFCCA64();
  (*(v76 + 8))(v49, v51);
  v54 = v86;
  sub_18AED2E98(v86);
  v55 = sub_18AE95F54(&qword_1EA998BA8, &qword_1EA998B68, &qword_18AFD2FA0, MEMORY[0x1E697F940]);
  v94 = v52;
  v95 = v55;
  v56 = v82;
  v57 = swift_getWitnessTable();
  sub_18AED8A7C();
  v58 = v79;
  sub_18AFCCAC4();
  sub_18AED8AD4(v54);
  (*(v80 + 8))(v53, v56);
  v59 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  v92 = v57;
  v93 = v59;
  v60 = v84;
  swift_getWitnessTable();
  v61 = v81;
  sub_18AEADA5C();
  v62 = *(v83 + 8);
  v62(v58, v60);
  sub_18AEADA5C();
  return (v62)(v61, v60);
}

uint64_t sub_18AED81F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *(type metadata accessor for MacButtonDestructive(0, a2, a3, a4) + 44));
  sub_18AFCCD24();
  if (v4 == 1)
  {
    sub_18AFCCDA4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AED8278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BA0, &qword_18AFD2FB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v19 = type metadata accessor for MacButtonDestructive(0, a2, a3, v18);
  sub_18AED2E98(v14);
  v20 = *(a1 + v19[11]);
  v21 = a1 + v19[9];
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {
    v29 = *(a1 + v19[11]);

    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    v28 = v8;
    v24 = a4;
    v25 = v23;
    sub_18AFCBA64();

    a4 = v24;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v22, 0);
    (*(v9 + 8))(v11, v28);
    v20 = v29;
    LOBYTE(v22) = v30;
  }

  sub_18AED8524(v20, v22 & 1, v17);
  sub_18AED8AD4(v14);
  if (*(a1 + v19[12]))
  {
    v26 = 0.5;
  }

  else
  {
    v26 = 0.0;
  }

  sub_18AE9A768(v17, a4, &qword_1EA998BA0, &qword_18AFD2FB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998B80, &qword_18AFD2FB0);
  *(a4 + *(result + 36)) = v26;
  return result;
}

double sub_18AED8524@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC0, &unk_18AFD2FC0);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8, &qword_18AFD8610);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BD0, &qword_18AFD2FD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_18AEF4060(a1);
  sub_18AED8B30(v4, v12);
  *&v12[*(v10 + 60)] = v16;
  *&v12[*(v10 + 64)] = 256;
  v19 = sub_18AEF40E8(a1, v17, v18);
  sub_18AED8B30(v12, v15);
  *&v15[*(v10 + 60)] = v19;
  *&v15[*(v10 + 64)] = 256;
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BD8, &qword_18AFD2FD8) + 36)];
  sub_18AE83A40(v12, v20, &qword_1EA998BC8, &qword_18AFD8610);
  v21 = sub_18AFCDB44();
  v23 = v22;
  sub_18AE7BA80(v12, &qword_1EA998BC8, &qword_18AFD8610);
  v24 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BE0, &qword_18AFD2FE0) + 36));
  *v24 = v21;
  v24[1] = v23;
  if (v37)
  {
    v25 = sub_18AFCC6C4();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BE8, &qword_18AFD2FE8) + 36);
    v27 = *MEMORY[0x1E6981DA0];
    v28 = sub_18AFCDBC4();
    (*(*(v28 - 8) + 104))(&v8[v26], v27, v28);
    *v8 = v25;
    *&v8[*(v36 + 36)] = 1059481190;
    sub_18AE95F54(&qword_1EA998BF0, &qword_1EA998BC0, &unk_18AFD2FC0, MEMORY[0x1E697F5B8]);
  }

  else
  {
    sub_18AFCCD74();
    v29 = sub_18AFCCDA4();

    *&v38 = v29;
  }

  v30 = sub_18AFCBCD4();
  sub_18AFCBB94();
  sub_18AED8B30(v15, a3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BA0, &qword_18AFD2FB8);
  sub_18AE9A768(v15, a3 + v31[21], &qword_1EA998BD0, &qword_18AFD2FD0);
  *(a3 + v31[18]) = v30;
  *(a3 + v31[17]) = 0;
  v32 = a3 + v31[19];
  result = *&v38;
  v34 = v39;
  *v32 = v38;
  *(v32 + 16) = v34;
  *(v32 + 32) = v40;
  *(a3 + v31[20]) = 1;
  return result;
}

uint64_t sub_18AED88DC@<X0>(uint64_t *a2@<X8>)
{
  if (v2[1] == 1)
  {
    sub_18AFCCD24();
  }

  else
  {
    v4 = *v2;
    sub_18AFCCD24();
    if (v4 == 1)
    {
      sub_18AFCCDA4();
    }
  }

  result = sub_18AFCBCD4();
  *a2 = result;
  return result;
}

unint64_t sub_18AED89C4()
{
  result = qword_1EA998B90;
  if (!qword_1EA998B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B80, &qword_18AFD2FB0);
    sub_18AE95F54(&qword_1EA998B98, &qword_1EA998BA0, &qword_18AFD2FB8, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998B90);
  }

  return result;
}

unint64_t sub_18AED8A7C()
{
  result = qword_1EA998BB0;
  if (!qword_1EA998BB0)
  {
    type metadata accessor for ResolvedButtonBorderShape(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998BB0);
  }

  return result;
}

uint64_t sub_18AED8AD4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedButtonBorderShape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AED8B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedButtonBorderShape(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AED8B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedButtonBorderShape(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MacButtonDisclosure(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButtonDisclosure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_18AED8D44@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  v3 = 0xEC0000006E776F64;
  if (a1)
  {
    v3 = 0xEA00000000007075;
  }

  v4 = HIWORD(a1);
  v5 = a1 >> 8;
  *a2 = 0x2E6E6F7276656863;
  a2[1] = v3;
  v6 = type metadata accessor for MacButtonSymbolSecondary(0);
  v7 = v6[5];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[7]) = 1;
  *(a2 + v6[8]) = v5;
  *(a2 + v6[9]) = v4;
  v9 = v6[10];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AED8E88@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = sub_18AFCDB44();
  a2[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998AA8, &qword_18AFD2DC8);
  return sub_18AED8D44(v4 | (v5 << 8) | (v6 << 16), (a2 + *(v8 + 44)));
}

uint64_t sub_18AED8F18@<X0>(uint64_t a1@<X8>)
{
  sub_18AFCC224();
  sub_18AEB23EC();
  sub_18AFCC484();
  result = type metadata accessor for ResolvedButtonBorderShape(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_18AED8F78@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  strcpy(a2, "questionmark");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  v5 = type metadata accessor for MacButtonSymbolSecondary(0);
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = 1;
  *(a2 + v5[8]) = v2;
  *(a2 + v5[9]) = v4;
  v8 = v5[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C00, &qword_18AFD34C0);
  v11 = a2 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 2;
  return result;
}

uint64_t sub_18AED90D8@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_18AFCDB44();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BF8, &qword_18AFD3408);
  return sub_18AED8F78(v4, a2 + *(v6 + 44));
}

unint64_t sub_18AED9128()
{
  result = qword_1EA998C08;
  if (!qword_1EA998C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C10, &qword_18AFD34C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C08);
  }

  return result;
}

uint64_t type metadata accessor for MacButtonSymbolSecondary(uint64_t a1)
{
  result = qword_1EA998C20;
  if (!qword_1EA998C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AED9200(uint64_t a1)
{
  sub_18AED931C(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
  if (v1 <= 0x3F)
  {
    sub_18AED931C(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AED931C(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18AED931C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AED938C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v31 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C38, &qword_18AFD3558);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;

  v36 = sub_18AFCCFA4();
  v35 = sub_18AED974C();
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for MacButtonSymbolSecondary(0);
  v12 = *(v11 + 28);
  v13 = *(v11 + 32);
  v33 = *(v2 + v13);
  v32 = *(v2 + v12);
  sub_18AFCDB44();
  sub_18AFCC194();
  *&v38[53] = v42;
  *&v38[69] = v43;
  *&v38[85] = v44;
  *&v38[101] = v45;
  *&v38[5] = v39;
  *&v38[21] = v40;
  *&v38[37] = v41;
  v14 = sub_18AFCDB44();
  v16 = v15;
  sub_18AED2E98(v6);
  *(v6 + v4[11]) = *(v2 + v13);
  *(v6 + v4[12]) = 0;
  *(v6 + v4[13]) = 0;
  v17 = v6 + v4[14];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v32;
  if (v32)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = &v10[*(v8 + 44)];
  sub_18AE9A768(v6, v20, &qword_1EA998C30, &qword_18AFD3550);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0) + 36)) = v19;
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C48, &unk_18AFD49D0) + 36));
  *v21 = v14;
  v21[1] = v16;
  v22 = *&v38[32];
  *(v10 + 75) = *&v38[48];
  *(v10 + 59) = v22;
  v23 = *v38;
  *(v10 + 43) = *&v38[16];
  *(v10 + 27) = v23;
  *(v10 + 17) = *&v38[109];
  v24 = *&v38[80];
  *(v10 + 123) = *&v38[96];
  v25 = *&v38[64];
  *(v10 + 107) = v24;
  v26 = KeyPath;
  *v10 = v36;
  *(v10 + 1) = v26;
  *(v10 + 2) = v35;
  *(v10 + 12) = v33;
  v10[26] = v18;
  *(v10 + 91) = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C50, &unk_18AFD35D0);
  v28 = v37;
  v29 = (v37 + *(v27 + 36));
  sub_18AED2E98(v29);
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998B70, &qword_18AFD2FA8) + 36)) = 0;
  return sub_18AE9A768(v10, v28, &qword_1EA998C38, &qword_18AFD3558);
}

uint64_t sub_18AED974C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_18AFCBB54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MacButtonSymbolSecondary(0);
  sub_18AED2C20(v6);
  v7 = (*(v4 + 88))(v6, v3);
  v8 = *MEMORY[0x1E697DC08];
  sub_18AFCC924();
  v9 = sub_18AFCC8F4();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_18AFCC954();
  sub_18AED2A4C(v2);
  if (v7 != v8)
  {
    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

unint64_t sub_18AED9944()
{
  result = qword_1EA998C58;
  if (!qword_1EA998C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C50, &unk_18AFD35D0);
    sub_18AED99FC();
    sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C58);
  }

  return result;
}

unint64_t sub_18AED99FC()
{
  result = qword_1EA998C60;
  if (!qword_1EA998C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C38, &qword_18AFD3558);
    sub_18AED9AB4();
    sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48, &unk_18AFD49D0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C60);
  }

  return result;
}

unint64_t sub_18AED9AB4()
{
  result = qword_1EA998C68;
  if (!qword_1EA998C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C70, &qword_18AFD35E8);
    sub_18AED9B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C68);
  }

  return result;
}

unint64_t sub_18AED9B40()
{
  result = qword_1EA998C78;
  if (!qword_1EA998C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C80, &qword_18AFD35F0);
    sub_18AED9BF8();
    sub_18AE95F54(&qword_1EA998C98, &qword_1EA998CA0, &unk_18AFD3608, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C78);
  }

  return result;
}

unint64_t sub_18AED9BF8()
{
  result = qword_1EA998C88;
  if (!qword_1EA998C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C90, &unk_18AFD35F8);
    sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998C88);
  }

  return result;
}

uint64_t type metadata accessor for MacCheckboxAndRadio(uint64_t a1)
{
  result = qword_1EA998CB0;
  if (!qword_1EA998CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AED9D24(uint64_t a1)
{
  sub_18AEB1A48(319, &qword_1EA997810, MEMORY[0x1E69E7DE0]);
  if (v1 <= 0x3F)
  {
    sub_18AED5A58(319);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_18AED9E28()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    return *(v0 + 8);
  }

  sub_18AFCE024();
  v7 = sub_18AFCC7D4();
  sub_18AFCBA64();

  sub_18AFCC464();
  swift_getAtKeyPath();
  sub_18AE9B234(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

void *sub_18AED9F74@<X0>(void *a1@<X8>)
{
  v23 = a1;
  v2 = sub_18AFCBEE4();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D38, &unk_18AFD3710);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998DA0, &qword_18AFD3768);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D20, &qword_18AFD3708);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998DA8, &qword_18AFD3770);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  if (*(v1 + 2) == 2)
  {
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_18AEDB3B8();
    sub_18AEDB40C();
    return sub_18AFCC614();
  }

  else
  {
    v20[1] = v10;
    if (*(v1 + 1))
    {
      v24 = sub_18AFCCFA4();
      sub_18AFCBED4();
      v20[0] = v1;
      sub_18AFCCAF4();
      (*(v21 + 8))(v4, v2);

      v17 = sub_18AEDA3C0(v20[0]);
      KeyPath = swift_getKeyPath();
      v19 = &v6[*(v22 + 36)];
      *v19 = KeyPath;
      v19[1] = v17;
      sub_18AE83A40(v6, v9, &qword_1EA998D38, &unk_18AFD3710);
      swift_storeEnumTagMultiPayload();
      sub_18AEDB498();
      sub_18AEDB4EC();
      sub_18AFCC614();
      sub_18AE7BA80(v6, &qword_1EA998D38, &unk_18AFD3710);
    }

    else
    {
      *v9 = swift_getKeyPath();
      v9[8] = 0;
      swift_storeEnumTagMultiPayload();
      sub_18AEDB498();
      sub_18AEDB4EC();
      sub_18AFCC614();
    }

    sub_18AE83A40(v12, v15, &qword_1EA998D20, &qword_18AFD3708);
    swift_storeEnumTagMultiPayload();
    sub_18AEDB3B8();
    sub_18AEDB40C();
    sub_18AFCC614();
    return sub_18AE7BA80(v12, &qword_1EA998D20, &qword_18AFD3708);
  }
}

uint64_t sub_18AEDA3C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(a1 + 3);
  if (v5 <= 3)
  {
    if (*(a1 + 3) > 1u && v5 != 2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_18AFCC914();
    goto LABEL_9;
  }

  if (v5 != 4)
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_18AFCC904();
LABEL_9:
  v6 = sub_18AFCC8F4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_18AFCC954();
  sub_18AE7BA80(v4, &qword_1EA998930, &qword_18AFD35E0);
  return v7;
}

uint64_t sub_18AEDA524@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v75 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v75);
  v76 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_18AFCC1B4();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MacCheckboxAndRadio(0);
  v73 = *(v6 - 8);
  v72 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CC0, &qword_18AFD36C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v63 - v9);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CC8, &qword_18AFD36D0);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v63 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CD0, &qword_18AFD36D8);
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CD8, &qword_18AFD36E0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CE0, &qword_18AFD36E8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CE8, &qword_18AFD36F0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v63 - v24;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CF0, &qword_18AFD36F8) - 8;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998CF8, &qword_18AFD3700);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v63 - v28;
  sub_18AED9F74(v10);
  v29 = v2;
  v30 = qword_18AFD39E0[v2[2]];
  sub_18AE9A768(v10, v12, &qword_1EA998CC0, &qword_18AFD36C8);
  *&v12[*(v67 + 36)] = v30;
  sub_18AEDB2A0();
  v31 = v63;
  sub_18AFCCB84();
  sub_18AE7BA80(v12, &qword_1EA998CC8, &qword_18AFD36D0);
  LOBYTE(v12) = *v2 == 1;
  (*(v66 + 32))(v17, v31, v69);
  v17[*(v15 + 44)] = v12;
  v32 = v2[3];
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v17, v21, &qword_1EA998CD8, &qword_18AFD36E0);
  v33 = &v21[*(v19 + 44)];
  v34 = v81;
  *v33 = v80;
  *(v33 + 1) = v34;
  *(v33 + 2) = v82;
  v35 = sub_18AFCDB44();
  v37 = v36;
  v38 = v64;
  v39 = &v64[*(v23 + 44)];
  sub_18AEDAD24(v29);
  v40 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D40, &unk_18AFD3720) + 36)];
  *v40 = v35;
  v40[1] = v37;
  sub_18AE9A768(v21, v38, &qword_1EA998CE0, &qword_18AFD36E8);
  v41 = sub_18AFCC4C4();
  v42 = v71;
  sub_18AEDBAAC(v29, v71);
  v43 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v44 = swift_allocObject();
  v45 = v42;
  v46 = v65;
  sub_18AEDBB80(v45, v44 + v43, type metadata accessor for MacCheckboxAndRadio);
  v47 = v70;
  sub_18AE9A768(v38, v70, &qword_1EA998CE8, &qword_18AFD36F0);
  v48 = (v47 + *(v68 + 44));
  *v48 = v41;
  v48[1] = sub_18AEDBB10;
  v48[2] = v44;
  v49 = sub_18AFCC4B4();
  sub_18AE9A768(v47, v46, &qword_1EA998CF0, &qword_18AFD36F8);
  v50 = *(v27 + 44);
  v51 = v74;
  v52 = (v46 + v50);
  *v52 = v49;
  v52[1] = sub_18AEDB274;
  v52[2] = 0;
  sub_18AFCC1A4();
  if (v29[1] == 1)
  {
    v53 = qword_18AFD3A38[v32];
  }

  else
  {
    v53 = 0x408F380000000000;
  }

  v54 = *(v75 + 20);
  v55 = *MEMORY[0x1E697F468];
  v56 = sub_18AFCC534();
  v57 = v76;
  (*(*(v56 - 8) + 104))(v76 + v54, v55, v56);
  *v57 = v53;
  v57[1] = v53;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D48, &qword_18AFD3730);
  v59 = v79;
  v60 = v79 + *(v58 + 36);
  sub_18AEDBB80(v57, v60, MEMORY[0x1E697EAF0]);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D50, &qword_18AFD3738);
  (*(v77 + 32))(v60 + *(v61 + 40), v51, v78);
  *(v60 + *(v61 + 36)) = 0;
  return sub_18AE9A768(v46, v59, &qword_1EA998CF8, &qword_18AFD3700);
}

uint64_t sub_18AEDAD24(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D58, &qword_18AFD3740);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D60, &qword_18AFD3748);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D68, &unk_18AFD3750);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v31 - v8;
  v9 = sub_18AFCC474();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1[1] == 1)
  {
    v16 = qword_18AFD3A38[a1[3]];
  }

  else
  {
    v16 = 0x408F380000000000;
  }

  v17 = *(v13 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  *v15 = v16;
  v15[1] = v16;
  v20 = *a1;
  v21 = a1[2];
  v22 = &a1[*(type metadata accessor for MacCheckboxAndRadio(0) + 40)];
  v23 = *v22;
  if (v22[8] != 1)
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    v32 = v7;
    v25 = v24;
    sub_18AFCBA64();

    v7 = v32;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v23, 0);
    (*(v33 + 8))(v11, v34);
    LOBYTE(v23) = v38;
  }

  if (v21 && (v23 & 1) != 0)
  {
    v26 = v35;
    sub_18AF1A8CC(v20, 1, v35);
    v27 = &qword_1EA998D68;
    v28 = &unk_18AFD3750;
    sub_18AE83A40(v26, v7, &qword_1EA998D68, &unk_18AFD3750);
    swift_storeEnumTagMultiPayload();
    sub_18AEDBBE8();
    sub_18AEDBCA0();
    sub_18AFCC614();
    v29 = v26;
  }

  else
  {
    sub_18AF1C614(v20, v21 != 0, v5);
    v27 = &qword_1EA998D58;
    v28 = &qword_18AFD3740;
    sub_18AE83A40(v5, v7, &qword_1EA998D58, &qword_18AFD3740);
    swift_storeEnumTagMultiPayload();
    sub_18AEDBBE8();
    sub_18AEDBCA0();
    sub_18AFCC614();
    v29 = v5;
  }

  sub_18AE7BA80(v29, v27, v28);
  return sub_18AEDC368(v15, MEMORY[0x1E697EAF0]);
}

void sub_18AEDB1A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 3);
  v3 = sub_18AFCC4F4();
  MEMORY[0x18CFEB2B0](v3);
  if (v2 == 6)
  {
    sub_18AED9E28();
  }
}

unint64_t sub_18AEDB2A0()
{
  result = qword_1EA998D00;
  if (!qword_1EA998D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CC8, &qword_18AFD36D0);
    sub_18AEDB32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D00);
  }

  return result;
}

unint64_t sub_18AEDB32C()
{
  result = qword_1EA998D08;
  if (!qword_1EA998D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CC0, &qword_18AFD36C8);
    sub_18AEDB3B8();
    sub_18AEDB40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D08);
  }

  return result;
}

unint64_t sub_18AEDB3B8()
{
  result = qword_1EA998D10;
  if (!qword_1EA998D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D10);
  }

  return result;
}

unint64_t sub_18AEDB40C()
{
  result = qword_1EA998D18;
  if (!qword_1EA998D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998D20, &qword_18AFD3708);
    sub_18AEDB498();
    sub_18AEDB4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D18);
  }

  return result;
}

unint64_t sub_18AEDB498()
{
  result = qword_1EA998D28;
  if (!qword_1EA998D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D28);
  }

  return result;
}

unint64_t sub_18AEDB4EC()
{
  result = qword_1EA998D30;
  if (!qword_1EA998D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998D38, &unk_18AFD3710);
    swift_getOpaqueTypeConformance2();
    sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D30);
  }

  return result;
}

uint64_t sub_18AEDB5D4@<X0>(uint64_t a1@<X8>)
{
  sub_18AED2ADC(*v1, *(v1 + 8));
  sub_18AFCDD04();
  sub_18AEDC3C8();
  sub_18AFCD084();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E18, &qword_18AFD39C8);
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_18AEDB680@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = sub_18AFCC474();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E00, &qword_18AFD39B8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_18AFCC534();
  (*(*(v16 - 8) + 104))(v10, v15, v16);
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v17 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v5 + 8))(v7, v22);
  }

  sub_18AFCDD04();
  sub_18AEDC310(v18);
  sub_18AFCD084();
  sub_18AEDC368(v10, MEMORY[0x1E6981998]);
  v19 = v23;
  (*(v12 + 32))(v23, v14, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E08, &qword_18AFD39C0);
  *(v19 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_18AEDB9B0@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (sub_18AFCC274())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E20, &unk_18AFD39D0);
    sub_18AE95F54(&qword_1EA998E28, &qword_1EA998E20, &unk_18AFD39D0, MEMORY[0x1E697F5B8]);
  }

  else if (a1)
  {
    sub_18AFCC6E4();
  }

  else
  {
    sub_18AFCC6C4();
  }

  result = sub_18AFCBCD4();
  *a2 = result;
  return result;
}

uint64_t sub_18AEDBAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacCheckboxAndRadio(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18AEDBB10(uint64_t a1)
{
  v3 = *(type metadata accessor for MacCheckboxAndRadio(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_18AEDB1A4(a1, v4);
}

uint64_t sub_18AEDBB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AEDBBE8()
{
  result = qword_1EA998D70;
  if (!qword_1EA998D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998D58, &qword_18AFD3740);
    sub_18AE95F54(&qword_1EA998D78, &qword_1EA998D80, &qword_18AFD88C0, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D70);
  }

  return result;
}

unint64_t sub_18AEDBCA0()
{
  result = qword_1EA998D88;
  if (!qword_1EA998D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998D68, &unk_18AFD3750);
    sub_18AE95F54(&qword_1EA998D90, &qword_1EA998D98, &qword_18AFD3760, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacCheckBoxAndRadioGlyphStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18AEDBE18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AEDBE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_18AEDBEB4()
{
  result = qword_1EA998DB0;
  if (!qword_1EA998DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998D48, &qword_18AFD3730);
    sub_18AEDBF6C();
    sub_18AE95F54(&qword_1EA998DF8, &qword_1EA998D50, &qword_18AFD3738, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DB0);
  }

  return result;
}

unint64_t sub_18AEDBF6C()
{
  result = qword_1EA998DB8;
  if (!qword_1EA998DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CF8, &qword_18AFD3700);
    sub_18AEDBFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DB8);
  }

  return result;
}

unint64_t sub_18AEDBFF8()
{
  result = qword_1EA998DC0;
  if (!qword_1EA998DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CF0, &qword_18AFD36F8);
    sub_18AEDC084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DC0);
  }

  return result;
}

unint64_t sub_18AEDC084()
{
  result = qword_1EA998DC8;
  if (!qword_1EA998DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CE8, &qword_18AFD36F0);
    sub_18AEDC13C();
    sub_18AE95F54(&qword_1EA998DF0, &qword_1EA998D40, &unk_18AFD3720, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DC8);
  }

  return result;
}

unint64_t sub_18AEDC13C()
{
  result = qword_1EA998DD0;
  if (!qword_1EA998DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CE0, &qword_18AFD36E8);
    sub_18AEDC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DD0);
  }

  return result;
}

unint64_t sub_18AEDC1C8()
{
  result = qword_1EA998DD8;
  if (!qword_1EA998DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CD8, &qword_18AFD36E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CC8, &qword_18AFD36D0);
    sub_18AEDB2A0();
    swift_getOpaqueTypeConformance2();
    sub_18AE95F54(&qword_1EA998DE0, &qword_1EA998DE8, qword_18AFD38C0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998DD8);
  }

  return result;
}

unint64_t sub_18AEDC310(__n128 a1)
{
  result = qword_1EA998A48;
  if (!qword_1EA998A48)
  {
    sub_18AFCD4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998A48);
  }

  return result;
}

uint64_t sub_18AEDC368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AEDC3C8()
{
  result = qword_1EA998E10;
  if (!qword_1EA998E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998E10);
  }

  return result;
}

void sub_18AEDC424(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
      if (v3 <= 0x3F)
      {
        sub_18AEDCEE0(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          sub_18AEDCEE0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
          if (v5 <= 0x3F)
          {
            sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
            if (v6 <= 0x3F)
            {
              sub_18AEB1A48(319, &qword_1EA997C48, &type metadata for ButtonBorderShape);
              if (v7 <= 0x3F)
              {
                sub_18AEDCEE0(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18AEDC5D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v34 = *(a3 + 16);
  v35 = *(a3 + 24);
  v4 = *(v35 - 8);
  v5 = *(v4 + 84);
  v6 = *(v34 - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  v37 = *(sub_18AFCBB34() - 8);
  v10 = *(v37 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v38 = v10;
  v11 = *(sub_18AFCC5C4() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v36 = v12;
  v13 = *(sub_18AFCBB54() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v4 + 80);
  v16 = *(v4 + 64);
  v17 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = *(v6 + 64) + 7;
  if (a2 <= v9)
  {
    goto LABEL_36;
  }

  v19 = *(v37 + 80) & 0xF8 | 7;
  v20 = (v19 + ((v18 + ((v16 + v17 + ((v15 + 2) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19;
  v21 = *(v11 + 80) & 0xF8 | 7;
  v22 = *(v13 + 80) & 0xF8 | 7;
  v23 = v14 + ((v22 + ((v36 + ((v38 + v21 + v20 + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_17;
  }

  v27 = ((a2 - v9 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_36;
      }

LABEL_17:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

LABEL_25:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 > 3)
        {
          LODWORD(v23) = 4;
        }

        if (v23 > 2)
        {
          if (v23 == 3)
          {
            LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v23) = *a1;
          }
        }

        else if (v23 == 1)
        {
          LODWORD(v23) = *a1;
        }

        else
        {
          LODWORD(v23) = *a1;
        }
      }

      return v9 + (v23 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_25;
    }
  }

LABEL_36:
  v29 = (a1 + v15 + 2) & ~v15;
  if (v5 == v9)
  {
    v30 = *(v4 + 48);
    v31 = v5;
    v32 = v35;

    return v30(v29, v31, v32);
  }

  v29 = (v29 + v16 + v17) & ~v17;
  if (v7 == v9)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v32 = v34;

    return v30(v29, v31, v32);
  }

  v33 = *(((v18 + v29) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v33 > 1)
  {
    return (v33 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_18AEDCA00(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 16) - 8);
  v36 = v6;
  v35 = v5;
  v34 = *(v6 + 84);
  if (v5 <= v34)
  {
    v5 = *(v6 + 84);
  }

  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(sub_18AFCBB34() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCC5C4() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v6 + 64) + 7;
  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = (v18 + ((v17 + ((v15 + v16 + ((v14 + 2) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18;
  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v12 + 80) & 0xF8 | 7;
  v22 = v13 + ((v21 + ((v11 + ((v9 + v20 + v19 + 1) & ~v20) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21) + 1;
  if (a3 <= v7)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v22 <= 3)
    {
      v28 = ((a3 - v7 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v28))
      {
        v25 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v25 = v29;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v7 >= v24)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        *&v23[v22] = 0;
        if (!v24)
        {
          return;
        }

LABEL_42:
        v31 = &v23[v14 + 2] & ~v14;
        if (v35 == v7)
        {
          v32 = *(v4 + 56);
        }

        else
        {
          v31 = (v31 + v15 + v16) & ~v16;
          if (v34 != v7)
          {
            v33 = (v17 + v31) & 0xFFFFFFFFFFFFFFF8;
            if (v24 > 0xFE)
            {
              *(v33 + 8) = 0;
              *v33 = v24 - 255;
            }

            else
            {
              *(v33 + 8) = -v24;
            }

            return;
          }

          v32 = *(v36 + 56);
        }

        v32(v31);
        return;
      }

      *&v23[v22] = 0;
    }

    else if (v25)
    {
      v23[v22] = 0;
      if (!v24)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!v24)
    {
      return;
    }

    goto LABEL_42;
  }

  v26 = ~v7 + v24;
  if (v22 < 4)
  {
    v27 = (v26 >> (8 * v22)) + 1;
    if (v22)
    {
      v30 = v26 & ~(-1 << (8 * v22));
      bzero(v23, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *v23 = v30;
          if (v25 > 1)
          {
LABEL_60:
            if (v25 == 2)
            {
              *&v23[v22] = v27;
            }

            else
            {
              *&v23[v22] = v27;
            }

            return;
          }
        }

        else
        {
          *v23 = v26;
          if (v25 > 1)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_57;
      }

      *v23 = v30;
      v23[2] = BYTE2(v30);
    }

    if (v25 > 1)
    {
      goto LABEL_60;
    }
  }

  else
  {
    bzero(v23, v22);
    *v23 = v26;
    v27 = 1;
    if (v25 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v25)
  {
    v23[v22] = v27;
  }
}

void sub_18AEDCEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AEDCF78@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9)
{
  v13 = *a2;
  *a8 = *a1;
  a8[1] = v13;
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a9;
  v14 = type metadata accessor for MacCombobox(0, v23);
  v15 = (*(*(a6 - 8) + 32))(&a8[v14[14]], a3, a6);
  a4(v15);
  v16 = &a8[v14[16]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v14[17];
  *&a8[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v18 = v14[18];
  *&a8[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v19 = &a8[v14[19]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &a8[v14[20]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v14[21];
  *&a8[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AEDD134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_18AFCC474();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_18AEB51F8(v2 + *(a1 + 84), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_18AFCE024();
    v15 = sub_18AFCC7D4();
    v23 = v13;
    v16 = v15;
    sub_18AFCBA64();

    v13 = v23;
    v17 = v24;
    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v17);
  }

  v18 = v2 + *(v14 + 80);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v26 = *v18;
  }

  else
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v4 + 8))(v6, v24);
    LOBYTE(v19) = v26;
  }

  v21 = v25;
  (*(v11 + 32))(v25, v13, v10);
  result = type metadata accessor for ResolvedTextFieldBorderShape(0);
  *(v21 + *(result + 20)) = v19;
  return result;
}

uint64_t sub_18AEDD47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v38 = sub_18AFCC474();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v48 = *(a1 + 16);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  v5 = *(a1 + 24);
  sub_18AFCC044();
  v6 = sub_18AEDF4E4();
  v7 = *(a1 + 40);
  v57 = v6;
  v58 = v7;
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v8 = sub_18AFCD134();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_18AFCC044();
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998EC8, &qword_18AFD3B70);
  v44 = v11;
  v43 = sub_18AFCC044();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v35 - v16;
  *&v17 = *(a1 + 32);
  *(&v17 + 1) = v7;
  *&v18 = v48;
  *(&v18 + 1) = v5;
  v39 = v18;
  v50 = v18;
  v51 = v17;
  v40 = v17;
  v52 = v2;
  sub_18AFCC504();
  sub_18AFCD124();
  v19 = *(a1 + 64);
  v48 = v2;
  v20 = v2 + v19;
  v21 = *v20;
  if (*(v20 + 8) != 1)
  {

    sub_18AFCE024();
    v22 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v23 = v36;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v21, 0);
    (*(v37 + 8))(v23, v38);
  }

  sub_18AFCDB44();
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCBB4();
  v25 = (*(v42 + 8))(v10, v8);
  MEMORY[0x1EEE9AC00](v25);
  v26 = v40;
  *(&v35 - 3) = v39;
  *(&v35 - 2) = v26;
  *(&v35 - 2) = v48;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998ED0, &qword_18AFD3B78);
  v55 = WitnessTable;
  v56 = MEMORY[0x1E697E040];
  v27 = v44;
  v28 = swift_getWitnessTable();
  sub_18AEDF568();
  v29 = v41;
  sub_18AFCCA64();
  (*(v46 + 8))(v13, v27);
  v30 = sub_18AE95F54(&qword_1EA998F00, &qword_1EA998EC8, &qword_18AFD3B70, MEMORY[0x1E697F940]);
  v53 = v28;
  v54 = v30;
  v31 = v43;
  swift_getWitnessTable();
  v32 = v45;
  sub_18AEADA5C();
  v33 = *(v47 + 8);
  v33(v29, v31);
  sub_18AEADA5C();
  return (v33)(v32, v31);
}

uint64_t sub_18AEDDBD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a4;
  v93 = a1;
  v92 = a6;
  v9 = sub_18AFCC044();
  v119 = sub_18AEDF4E4();
  v120 = a5;
  v80 = v9;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_18AFCD134();
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v70 - v11;
  v83 = v12;
  v13 = sub_18AFCC044();
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v70 - v14;
  v85 = v15;
  v91 = sub_18AFCC044();
  v86 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v70 - v20;
  v73 = sub_18AFCC474();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v23 = sub_18AFCC044();
  v75 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = sub_18AFCC044();
  v76 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v70 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v96 = sub_18AFCBDC4();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v77 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v95 = &v70 - v33;
  v98 = a2;
  v115 = a2;
  v116 = a3;
  v88 = a3;
  v117 = v97;
  v118 = a5;
  v89 = a5;
  v34 = type metadata accessor for MacCombobox(0, &v115);
  v35 = v93 + *(v34 + 64);
  v36 = *v35;
  if (*(v35 + 8) != 1)
  {

    sub_18AFCE024();
    v37 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v38 = v71;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v36, 0);
    (*(v72 + 8))(v38, v73);
  }

  v39 = sub_18AFCC8F4();
  (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
  sub_18AFCC954();
  sub_18AED2A4C(v21);
  v40 = v97;
  sub_18AFCCBA4();

  sub_18AFCDB54();
  v41 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v113 = v40;
  v114 = v41;
  v73 = MEMORY[0x1E697E858];
  v69 = swift_getWitnessTable();
  v42 = v74;
  sub_18AFCCBC4();
  (*(v75 + 8))(v25, v23);
  v111 = v69;
  v112 = MEMORY[0x1E697EBF8];
  v43 = swift_getWitnessTable();
  sub_18AFC3944(3.0, 6.0, 1, 0, v26, v43, v31);
  v76[1](v42, v26);
  v109 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v110 = v43;
  v44 = v96;
  v74 = swift_getWitnessTable();
  sub_18AEADA5C();
  v45 = *(v94 + 8);
  v75 = v94 + 8;
  v76 = v45;
  (v45)(v31, v44);
  v46 = v93;
  v47 = v98;
  v48 = v88;
  v49 = v89;
  v72 = sub_18AEDE8B4(v93, v98, v88, v40, v89);
  LODWORD(v71) = v50;
  MEMORY[0x1EEE9AC00](v72);
  sub_18AFCC504();
  v51 = v79;
  sub_18AFCD124();
  sub_18AFCC8A4();
  sub_18AEDEC70(v46, v47, v48, v40, v49);
  v52 = v83;
  v53 = swift_getWitnessTable();
  v54 = v82;
  sub_18AFCCC24();
  (*(v81 + 8))(v51, v52);
  sub_18AFCC874();
  sub_18AEDEE00(v46, v98, v48, v97, v49);
  v55 = MEMORY[0x1E697E5D8];
  v107 = v53;
  v108 = MEMORY[0x1E697E5D8];
  v56 = v85;
  v57 = swift_getWitnessTable();
  v58 = v90;
  sub_18AFCCC24();
  (*(v84 + 8))(v54, v56);
  v105 = v57;
  v106 = v55;
  v59 = v91;
  v60 = swift_getWitnessTable();
  v61 = v87;
  sub_18AEADA5C();
  v62 = v86;
  v63 = *(v86 + 8);
  v63(v58, v59);
  v64 = v77;
  v65 = v95;
  v66 = v96;
  (*(v94 + 16))(v77, v95, v96);
  v103 = v72;
  v104 = v71 & 1;
  v115 = v64;
  v116 = &v103;
  (*(v62 + 16))(v58, v61, v59);
  v117 = v58;
  v102[0] = v66;
  v102[1] = MEMORY[0x1E6981840];
  v102[2] = v59;
  v99 = v74;
  v100 = MEMORY[0x1E6981838];
  v101 = v60;
  sub_18AEB70B8(&v115, 3uLL, v102);
  v63(v61, v59);
  v67 = v76;
  (v76)(v65, v66);
  v63(v58, v59);
  return (v67)(v64, v66);
}

uint64_t sub_18AEDE8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = a1 + *(type metadata accessor for MacCombobox(0, v18) + 64);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v15) = v18[0];
  }

  if (v15 <= 6u && ((1 << v15) & 0x63) != 0)
  {
    return 0x4008000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AEDEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[0] = a4;
  v25[1] = a6;
  v10 = sub_18AFCC044();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = *(a1 + 1);
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v26[3] = a5;
  v27 = KeyPath;
  v28 = 0;
  v29 = v19;
  v30 = 0;
  v31 = v17;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = v25[0];
  v20 = *(type metadata accessor for MacCombobox(0, v26) + 56);
  v21 = sub_18AEDF4E4();
  MEMORY[0x18CFEBFA0](a1 + v20, &type metadata for MacFieldButton, a3, v21);
  v22 = v29;
  LOBYTE(a3) = v30;
  sub_18AE9B234(v27, v28);
  sub_18AE9B234(v22, a3);
  v25[2] = v21;
  v25[3] = a5;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v23 = *(v11 + 8);
  v23(v13, v10);
  sub_18AEADA5C();
  return (v23)(v16, v10);
}

uint64_t sub_18AEDEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = a1 + *(type metadata accessor for MacCombobox(0, v18) + 64);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v15) = v18[0];
  }

  return qword_18AFD3D58[v15];
}

uint64_t sub_18AEDEE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = a1 + *(type metadata accessor for MacCombobox(0, v18) + 64);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v15) = v18[0];
  }

  return qword_18AFD3D98[v15];
}

uint64_t sub_18AEDEF90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v50 = a6;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F08, &qword_18AFDAC50);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = sub_18AFCC474();
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFCBB34();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998EE8, &qword_18AFD3B80);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  *&v55 = v46;
  *(&v55 + 1) = v49;
  v23 = type metadata accessor for MacCombobox(0, &v54);
  sub_18AEDD134(v23, v19);
  LODWORD(v46) = *a1;
  sub_18AED2E48(v16);
  v24 = *(v23 + 76);
  v49 = a1;
  v25 = &a1[v24];
  v26 = *v25;
  if (v25[8] != 1)
  {

    sub_18AFCE024();
    v43 = v12;
    v27 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v28 = v44;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v26, 0);
    (*(v45 + 8))(v28, v43);
    LOBYTE(v26) = v54;
  }

  v29 = sub_18AEF3BD4(v16, v46);
  v30 = &v11[v9[21]];
  sub_18AEDF64C(v19, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F10, &qword_18AFD3B90);
  *(v30 + *(v31 + 52)) = v29;
  *(v30 + *(v31 + 56)) = 256;
  v32 = sub_18AEF3D90(v26 & 1, v16);
  sub_18AFCBB94();
  sub_18AEDF64C(v30, v11);
  *&v11[v9[18]] = v32;
  v11[v9[17]] = 2;
  v33 = &v11[v9[19]];
  v34 = v52;
  *v33 = v51;
  *(v33 + 1) = v34;
  *(v33 + 4) = v53;
  v11[v9[20]] = 1;
  if (v26)
  {
    sub_18AFCCDB4();
    v35 = sub_18AFCCDA4();
  }

  else
  {
    v35 = sub_18AFCCD74();
  }

  sub_18AFCBB94();
  (*(v47 + 8))(v16, v48);
  sub_18AEDF6B0(v19);
  sub_18AEDF64C(v11, v22);
  sub_18AE9A768(v11, &v22[v20[21]], &qword_1EA998F08, &qword_18AFDAC50);
  *&v22[v20[18]] = v35;
  v22[v20[17]] = 2;
  v36 = &v22[v20[19]];
  v37 = v55;
  *v36 = v54;
  *(v36 + 1) = v37;
  *(v36 + 4) = v56;
  v22[v20[20]] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998ED0, &qword_18AFD3B78);
  v39 = v50;
  v40 = v50 + *(v38 + 36);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998EF8, &qword_18AFD3B88);
  sub_18AFCC1A4();
  sub_18AEDD134(v23, v40);
  *(v40 + *(v41 + 36)) = 0;
  return sub_18AE9A768(v22, v39, &qword_1EA998EE8, &qword_18AFD3B80);
}

unint64_t sub_18AEDF4E4()
{
  result = qword_1EA998EC0;
  if (!qword_1EA998EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998EC0);
  }

  return result;
}

unint64_t sub_18AEDF568()
{
  result = qword_1EA998ED8;
  if (!qword_1EA998ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998ED0, &qword_18AFD3B78);
    sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8, &qword_18AFD3B80, &unk_18AFE35F0);
    sub_18AE95F54(&qword_1EA998EF0, &qword_1EA998EF8, &qword_18AFD3B88, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998ED8);
  }

  return result;
}

uint64_t sub_18AEDF64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEDF6B0(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MacDial(uint64_t a1)
{
  result = qword_1EA998F18;
  if (!qword_1EA998F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEDF7B0(uint64_t a1)
{
  sub_18AED5A58(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_18AEDF860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F28, &qword_18AFD3E40);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v35 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F30, &qword_18AFD3E48);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  sub_18AEDFE20(*(v2 + 1), 0, v36);
  v11 = sub_18AFCDB44();
  v13 = v12;
  v14 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F38, &qword_18AFD3E50) + 36);
  sub_18AEDFB90(v2, v14);
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F40, &qword_18AFD3E58) + 36));
  *v15 = v11;
  v15[1] = v13;
  v16 = v36[3];
  v7[2] = v36[2];
  v7[3] = v16;
  v17 = v36[1];
  *v7 = v36[0];
  v7[1] = v17;
  v18 = v36[7];
  v7[6] = v36[6];
  v7[7] = v18;
  v19 = *(v2 + 8) * 360.0 * 0.0174532925;
  v20 = v36[5];
  v7[4] = v36[4];
  v7[5] = v20;
  sub_18AFCDD04();
  v22 = v21;
  v24 = v23;
  v25 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F48, &qword_18AFD3E60) + 36);
  *v25 = v19;
  *(v25 + 1) = v22;
  *(v25 + 2) = v24;
  KeyPath = swift_getKeyPath();
  v27 = (v7 + *(v5 + 44));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F50, &qword_18AFD3E98) + 28);
  v29 = *MEMORY[0x1E697E7D0];
  v30 = sub_18AFCC024();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = KeyPath;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v7, v10, &qword_1EA998F28, &qword_18AFD3E40);
  v31 = &v10[*(v8 + 36)];
  v32 = v35[1];
  *v31 = v35[0];
  *(v31 + 1) = v32;
  *(v31 + 2) = v35[2];
  v33 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F58, &qword_18AFD3EA0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F60, &qword_18AFD3EA8);
  sub_18AFCC1A4();
  *v33 = 0;
  return sub_18AE9A768(v10, a1, &qword_1EA998F30, &qword_18AFD3E48);
}

uint64_t sub_18AEDFB90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68, &qword_18AFD86F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F70, &qword_18AFD3EB0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_18AFCC534();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  if (a1[1] == 1)
  {
    v16 = sub_18AFCC6E4();
  }

  else
  {
    v16 = sub_18AFCC6C4();
  }

  v18 = v16;
  sub_18AEE00B8(v7, v10, v17);
  *&v10[*(v8 + 52)] = v18;
  *&v10[*(v8 + 56)] = 256;
  v19 = *a1;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v10, v13, &qword_1EA998F68, &qword_18AFD86F0);
  v20 = &v13[*(v11 + 36)];
  v21 = v25[1];
  *v20 = v25[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v25[2];
  v22 = -6.0;
  if (v19 <= 7)
  {
    v22 = dbl_18AFD3F58[v19];
  }

  sub_18AE9A768(v13, a2, &qword_1EA998F70, &qword_18AFD3EB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F78, &qword_18AFD3EB8);
  v24 = (a2 + *(result + 36));
  *v24 = 0.0;
  v24[1] = v22;
  return result;
}

uint64_t sub_18AEDFE20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (a2)
  {
    v5 = sub_18AFCC6B4();
  }

  else
  {
    v5 = sub_18AFCC6D4();
  }

  v6 = v5;
  v7 = sub_18AFCDB44();
  v9 = v8;
  if (v3 >= 3u)
  {
    if (v3 == 3)
    {
      v10 = sub_18AFCC6B4();
    }

    else
    {
      v10 = sub_18AFCC6E4();
    }

    *v30 = v10;
  }

  else
  {
    *v30 = sub_18AFCCD74();
  }

  v11 = sub_18AFCBCD4();
  v12 = sub_18AFCDB44();
  v14 = v13;
  *&v37 = v11;
  WORD4(v37) = 256;
  LOWORD(v38) = 256;
  DWORD2(v38) = v6;
  WORD6(v38) = 256;
  *&v39 = v7;
  *(&v39 + 1) = v9;
  *&v40 = v12;
  *(&v40 + 1) = v13;
  sub_18AFCBB94();
  *&v50[7] = v37;
  *&v50[23] = v38;
  *&v50[39] = v39;
  *&v50[55] = v40;
  *&v51[7] = v52;
  *&v51[23] = v53;
  *&v51[39] = v54;
  v41 = v11;
  v42 = 256;
  v43 = 256;
  v44 = v6;
  v45 = 256;
  v46 = v7;
  v47 = v9;
  v48 = v12;
  v49 = v14;
  sub_18AE83A40(&v37, v30, &qword_1EA998F80, &qword_18AFD3EC0);
  sub_18AE7BA80(&v41, &qword_1EA998F80, &qword_18AFD3EC0);
  LOBYTE(v28[0]) = 0;
  v15 = 0.5;
  if (v3 != 1)
  {
    v15 = 1.0;
  }

  *(v28 + 1) = *v51;
  v16 = *v51;
  v17 = *&v51[16];
  *(&v28[1] + 1) = *&v51[16];
  v28[2] = *&v51[31];
  v29[0] = 1;
  v18 = *&v50[16];
  *&v29[33] = *&v50[32];
  v19 = *v50;
  *&v29[17] = *&v50[16];
  *&v29[1] = *v50;
  v20 = *&v50[32];
  *&v29[49] = *&v50[48];
  v21 = *&v29[32];
  v22 = *&v29[48];
  v23 = *v29;
  *(a3 + 64) = *&v29[16];
  *(a3 + 80) = v21;
  *(a3 + 96) = v22;
  v24 = v28[1];
  v25 = v28[2];
  *a3 = v28[0];
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  *(a3 + 48) = v23;
  *(a3 + 120) = v15;
  *&v31[15] = *&v51[31];
  *v31 = v17;
  *&v30[1] = v16;
  *&v29[64] = *&v50[63];
  *(a3 + 112) = *&v50[63];
  v30[0] = 0;
  v32 = 1;
  v33 = v19;
  *&v36[15] = *&v50[63];
  *v36 = *&v50[48];
  v35 = v20;
  v34 = v18;
  sub_18AE83A40(v28, v27, &qword_1EA998F88, &qword_18AFD3EC8);
  return sub_18AE7BA80(v30, &qword_1EA998F88, &qword_18AFD3EC8);
}

uint64_t sub_18AEE00B8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_18AFCD4A4();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AEE011C()
{
  result = qword_1EA998F90;
  if (!qword_1EA998F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F58, &qword_18AFD3EA0);
    sub_18AEE01D4();
    sub_18AE95F54(&qword_1EA998FE0, &qword_1EA998F60, &qword_18AFD3EA8, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998F90);
  }

  return result;
}

unint64_t sub_18AEE01D4()
{
  result = qword_1EA998F98;
  if (!qword_1EA998F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F30, &qword_18AFD3E48);
    sub_18AEE0260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998F98);
  }

  return result;
}

unint64_t sub_18AEE0260()
{
  result = qword_1EA998FA0;
  if (!qword_1EA998FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F28, &qword_18AFD3E40);
    sub_18AEE0318();
    sub_18AE95F54(&qword_1EA998FD8, &qword_1EA998F50, &qword_18AFD3E98, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998FA0);
  }

  return result;
}

unint64_t sub_18AEE0318()
{
  result = qword_1EA998FA8;
  if (!qword_1EA998FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F48, &qword_18AFD3E60);
    sub_18AEE03A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998FA8);
  }

  return result;
}

unint64_t sub_18AEE03A4()
{
  result = qword_1EA998FB0;
  if (!qword_1EA998FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F38, &qword_18AFD3E50);
    sub_18AEE045C();
    sub_18AE95F54(&qword_1EA998FD0, &qword_1EA998F40, &qword_18AFD3E58, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998FB0);
  }

  return result;
}

unint64_t sub_18AEE045C()
{
  result = qword_1EA998FB8;
  if (!qword_1EA998FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998FC0, &qword_18AFD3ED0);
    sub_18AE95F54(&qword_1EA998FC8, &qword_1EA998F88, &qword_18AFD3EC8, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998FB8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_18AEE0528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AEE0570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_18AEE05E4@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  v49 = *(v1 + 24);
  v12 = *(v1 + 25);
  v46 = sub_18AFCCFA4();
  if (v11 != 1)
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    v48 = v6;
    v14 = v13;
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v10, 0);
    (*(v7 + 8))(v9, v48);
  }

  v57 = v11;
  v15 = v49;
  v56 = v49;
  LODWORD(v48) = v12 << 8;
  sub_18AEE0A50(v10, v11);
  v16 = sub_18AFCC8F4();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_18AFCC954();
  sub_18AED2A4C(v5);
  v44 = sub_18AFCC8E4();

  KeyPath = swift_getKeyPath();
  v43 = sub_18AFCC844();
  v55 = v11;
  v54 = v15;
  sub_18AEE0BD8(v10, v11);
  v18 = v17;
  v19 = 0uLL;
  v47 = 0u;
  v20 = 0uLL;
  if ((v17 & 1) == 0)
  {
    sub_18AFCBAA4();
    *(&v20 + 1) = v21;
    *(&v19 + 1) = v22;
  }

  v40 = v20;
  v41 = v19;
  v45 = v12;
  v23 = v18 & 1;
  v58 = v18 & 1;
  v24 = sub_18AFCC8B4();
  v53 = v11;
  v52 = v49;
  sub_18AEE0D2C(v10, v11);
  v26 = v25;
  v27 = 0uLL;
  if ((v25 & 1) == 0)
  {
    sub_18AFCBAA4();
    *(&v27 + 1) = v28;
    *(&v30 + 1) = v29;
    v47 = v30;
  }

  v39 = v27;
  v31 = v26 & 1;
  v59 = v26 & 1;
  v32 = sub_18AFCDB44();
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998FE8, &qword_18AFD40E8) + 36);
  v51 = v11;
  v50 = v49;
  sub_18AEE0E80(v10, v11, v48 | v49, v35);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998FF0, &qword_18AFD40F0) + 36));
  *v36 = v32;
  v36[1] = v34;
  v37 = KeyPath;
  *a1 = v46;
  *(a1 + 8) = v37;
  *(a1 + 16) = v44;
  *(a1 + 24) = v45;
  *(a1 + 25) = 1;
  *(a1 + 32) = v43;
  *(a1 + 56) = v40;
  *(a1 + 40) = v41;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  *(a1 + 104) = v39;
  result = *&v47;
  *(a1 + 88) = v47;
  *(a1 + 120) = v31;
  return result;
}

double sub_18AEE0A50(uint64_t a1, char a2)
{
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  if (a1 <= 3u)
  {
    if (a1 <= 2u)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_18AFCC904();
    return result;
  }

  if (a1 == 4)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_18AFCC914();
  return result;
}

uint64_t sub_18AEE0BD8(uint64_t a1, char a2)
{
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return qword_18AFD4180[a1];
}

uint64_t sub_18AEE0D2C(uint64_t a1, char a2)
{
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return qword_18AFD41C0[a1];
}

uint64_t sub_18AEE0E80@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v15 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(a1, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a1) = v25[15];
  }

  v16 = qword_18AFD4200[a1];
  v17 = a3 >> 8;
  v18 = *(v12 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_18AFCC534();
  v21.n128_f64[0] = (*(*(v20 - 8) + 104))(&v14[v18], v19, v20);
  *v14 = v16;
  *(v14 + 1) = v16;
  sub_18AEE10E8(v14, a4, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998FF8, &qword_18AFD6C60);
  *(a4 + v22[9]) = v17;
  *(a4 + v22[10]) = 0;
  *(a4 + v22[11]) = 0;
  v23 = a4 + v22[12];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  return result;
}

uint64_t sub_18AEE10E8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_18AFCC184();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AEE114C()
{
  result = qword_1EA999000;
  if (!qword_1EA999000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998FE8, &qword_18AFD40E8);
    sub_18AEE1260(&qword_1EA999008, &qword_1EA999010, &qword_18AFD4128, sub_18AEE1230);
    sub_18AE95F54(qword_1EA999048, &qword_1EA998FF0, &qword_18AFD40F0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999000);
  }

  return result;
}

uint64_t sub_18AEE1260(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18AEE12E4()
{
  result = qword_1EA999028;
  if (!qword_1EA999028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999030, &qword_18AFD4138);
    sub_18AED9BF8();
    sub_18AE95F54(&qword_1EA999038, &qword_1EA999040, &unk_18AFD49C0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999028);
  }

  return result;
}

uint64_t sub_18AEE139C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AEE1434(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 > v7)
  {
    v9 = ((v6 + 41) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_7;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 >= 2)
    {
LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }
  }

LABEL_25:
  v14 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (v5 > 0xFE)
  {
    return (*(v4 + 48))((v14 + v6 + 9) & ~v6);
  }

  v15 = *(v14 + 8);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_18AEE15CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 41) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  v19 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0xFE)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 9) & ~v9);
  }

  else
  {
    *(v19 + 8) = a2 + 1;
  }
}

uint64_t sub_18AEE1878@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  *(a5 + 32) = a10;
  *(a5 + 40) = a1;
  type metadata accessor for MacGroupBox(0, a3, a4, a3);
  return a2();
}

uint64_t sub_18AEE18D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v51 = a2;
  v49 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_18AFCC044();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D0, &qword_18AFD42B8);
  v11 = sub_18AFCC044();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D8, &qword_18AFD42C0);
  v44 = sub_18AFCC044();
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v40 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E0, &unk_18AFDA770);
  v43 = sub_18AFCC044();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v40 - v17;
  v18 = *(a1 + 24);
  sub_18AFCCC14();
  v52 = v7;
  v53 = v18;
  v54 = v4;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9990E8, &qword_18AFD42C8);
  v61 = v18;
  v62 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_18AEE1F4C();
  sub_18AFCCA64();
  (*(v42 + 8))(v10, v8);
  v20 = sub_18AE95F54(&qword_1EA999108, &qword_1EA9990D0, &qword_18AFD42B8, MEMORY[0x1E697F940]);
  v59 = WitnessTable;
  v60 = v20;
  v21 = swift_getWitnessTable();
  sub_18AEE1FFC();
  v22 = v40;
  sub_18AFCCC74();
  (*(v45 + 8))(v13, v11);
  v23 = *(v4 + 32);
  v24 = *(v49 + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  v27 = v50;
  (*(*(v26 - 8) + 104))(&v50[v24], v25, v26);
  *v27 = v23;
  v27[1] = v23;
  v28 = v27;
  v29 = sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8, &qword_18AFD42C0, MEMORY[0x1E697DDB0]);
  v57 = v21;
  v58 = v29;
  v30 = v44;
  v31 = swift_getWitnessTable();
  sub_18AEE2050(v32);
  v33 = v41;
  sub_18AFCCB24();
  sub_18AEE20A8(v28, v34);
  (*(v47 + 8))(v22, v30);
  v35 = sub_18AE95F54(qword_1EA999128, &qword_1EA9990E0, &unk_18AFDA770, MEMORY[0x1E6980CF8]);
  v55 = v31;
  v56 = v35;
  v36 = v43;
  swift_getWitnessTable();
  v37 = v46;
  sub_18AEADA5C();
  v38 = *(v48 + 8);
  v38(v33, v36);
  sub_18AEADA5C();
  return (v38)(v37, v36);
}

void sub_18AEE1F2C(__int16 *a1@<X8>)
{
  if (*(*(v1 + 32) + 40))
  {
    v2 = 2;
  }

  else
  {
    v2 = 256;
  }

  *a1 = v2;
}

unint64_t sub_18AEE1F4C()
{
  result = qword_1EA9990F0;
  if (!qword_1EA9990F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E8, &qword_18AFD42C8);
    sub_18AE95F54(&qword_1EA9990F8, &qword_1EA999100, &unk_18AFD42D0, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9990F0);
  }

  return result;
}

unint64_t sub_18AEE1FFC()
{
  result = qword_1EA999110;
  if (!qword_1EA999110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999110);
  }

  return result;
}

unint64_t sub_18AEE2050(__n128 a1)
{
  result = qword_1EA999120;
  if (!qword_1EA999120)
  {
    sub_18AFCC184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999120);
  }

  return result;
}

uint64_t sub_18AEE20A8(uint64_t a1, __n128 a2)
{
  v3 = sub_18AFCC184();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AEE2104(uint64_t a1)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_18AEADA5C();
  return (v12)(v10, v4);
}

uint64_t sub_18AEE2370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v6 = sub_18AFCD134();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_18AFCC504();
  sub_18AFCD124();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AEE25B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v49 = sub_18AFCC044();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v45 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v10 = sub_18AFCC044();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v45 - v15;
  v16 = type metadata accessor for MacCheckboxAndRadio(0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = a1[2];
  v22 = a1[1];
  v23 = *a1;
  v24 = a1[3];
  KeyPath = swift_getKeyPath();
  *v20 = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  *(v20 + 1) = KeyPath;
  v20[16] = 0;
  v46 = v16;
  v26 = *(v16 + 36);
  *&v20[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v27 = &v20[*(v16 + 40)];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v48;
  type metadata accessor for MacLabeledCheckboxAndRadio(0, a2, v48, v29);
  v30 = sub_18AFCC8F4();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_18AFCC954();
  sub_18AED2A4C(v8);
  v31 = v45;
  sub_18AFCCBA4();

  v59[0] = sub_18AEE2B70(a1);
  v32 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v59[4] = v28;
  v59[5] = v32;
  v33 = v49;
  WitnessTable = swift_getWitnessTable();
  v35 = v47;
  sub_18AFCCB44();

  (*(v52 + 8))(v31, v33);
  v36 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v59[2] = WitnessTable;
  v59[3] = v36;
  v37 = swift_getWitnessTable();
  v38 = v51;
  sub_18AEADA5C();
  v39 = v53;
  v40 = *(v53 + 8);
  v40(v35, v10);
  v41 = v50;
  sub_18AEDBAAC(v20, v50);
  v59[0] = v41;
  v42 = *(v39 + 16);
  v43 = v54;
  v42(v54, v38, v10);
  v59[1] = v43;
  v58[0] = v46;
  v58[1] = v10;
  v56 = sub_18AEE3118();
  v57 = v37;
  sub_18AEB70B8(v59, 2uLL, v58);
  v40(v38, v10);
  sub_18AEE3170(v20);
  v40(v43, v10);
  return sub_18AEE3170(v41);
}

uint64_t sub_18AEE2B70(uint64_t a1)
{
  if (*(a1 + 2) <= 1u && *(a1 + 2))
  {
    sub_18AFCC6E4();
  }

  else
  {
    sub_18AFCC6C4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEE2BD4@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v10 = *a3;
  *a8 = a1;
  a8[1] = a2 & 1;
  a8[2] = v10;
  a8[3] = a4;
  type metadata accessor for MacLabeledCheckboxAndRadio(0, a6, a7, a4);
  return a5();
}

uint64_t sub_18AEE2C54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AEE2CF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_18AEE2E74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 4) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 4] & ~v9;

    v19(v20);
  }

  else
  {
    a1[1] = a2 + 1;
  }
}

unint64_t sub_18AEE3118()
{
  result = qword_1EA9991B0[0];
  if (!qword_1EA9991B0[0])
  {
    type metadata accessor for MacCheckboxAndRadio(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9991B0);
  }

  return result;
}

uint64_t sub_18AEE3170(uint64_t a1)
{
  v2 = type metadata accessor for MacCheckboxAndRadio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEE31CC(uint64_t a1)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_18AEADA5C();
  return (v12)(v10, v4);
}

uint64_t sub_18AEE3438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v6 = sub_18AFCD1D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_18AFCC5D4();
  sub_18AFCD1C4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AEE367C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v49 = sub_18AFCC044();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v45 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v10 = sub_18AFCC044();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v45 - v15;
  v16 = type metadata accessor for MacCheckboxAndRadio(0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = a1[2];
  v22 = a1[1];
  v23 = *a1;
  v24 = a1[3];
  KeyPath = swift_getKeyPath();
  *v20 = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  *(v20 + 1) = KeyPath;
  v20[16] = 0;
  v46 = v16;
  v26 = *(v16 + 36);
  *&v20[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v27 = &v20[*(v16 + 40)];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v48;
  type metadata accessor for MacLabeledCheckboxAndRadioAbove(0, a2, v48, v29);
  v30 = sub_18AFCC8F4();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_18AFCC954();
  sub_18AED2A4C(v8);
  v31 = v45;
  sub_18AFCCBA4();

  v59[0] = sub_18AEE2B70(a1);
  v32 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v59[4] = v28;
  v59[5] = v32;
  v33 = v49;
  WitnessTable = swift_getWitnessTable();
  v35 = v47;
  sub_18AFCCB44();

  (*(v52 + 8))(v31, v33);
  v36 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v59[2] = WitnessTable;
  v59[3] = v36;
  v37 = swift_getWitnessTable();
  v38 = v51;
  sub_18AEADA5C();
  v39 = v53;
  v40 = *(v53 + 8);
  v40(v35, v10);
  v41 = v50;
  sub_18AEDBAAC(v20, v50);
  v59[0] = v41;
  v42 = *(v39 + 16);
  v43 = v54;
  v42(v54, v38, v10);
  v59[1] = v43;
  v58[0] = v46;
  v58[1] = v10;
  v56 = sub_18AEE3118();
  v57 = v37;
  sub_18AEB70B8(v59, 2uLL, v58);
  v40(v38, v10);
  sub_18AEE3170(v20);
  v40(v43, v10);
  return sub_18AEE3170(v41);
}

uint64_t sub_18AEE3C38@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v10 = *a3;
  *a8 = a1;
  a8[1] = a2 & 1;
  a8[2] = v10;
  a8[3] = a4;
  type metadata accessor for MacLabeledCheckboxAndRadioAbove(0, a6, a7, a4);
  return a5();
}

uint64_t sub_18AEE3D18(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_18AEADA5C();
  return (v12)(v10, v4);
}

uint64_t sub_18AEE3F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v6 = sub_18AFCD1D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_18AFCC5D4();
  sub_18AFCD1C4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AEE41C8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v49 = type metadata accessor for MacCheckboxAndRadio(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v14 = sub_18AFCC044();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v16 = sub_18AFCC044();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v22 = a1[3];
  v44 = &v41 - v23;
  v45 = v22;
  type metadata accessor for MacLabeledCheckboxAndRadioBelow(0, a2, a3, v24);
  v25 = sub_18AFCC8F4();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  sub_18AFCC954();
  sub_18AED2A4C(v13);
  v43 = a1;
  v26 = v42;
  sub_18AFCCBA4();

  v55[0] = sub_18AEE2B70(a1);
  v27 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v55[4] = a3;
  v55[5] = v27;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCB44();

  (*(v46 + 8))(v26, v14);
  v29 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v55[2] = WitnessTable;
  v55[3] = v29;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_18AEADA5C();
  v32 = v47;
  v33 = *(v47 + 8);
  v33(v20, v16);
  LOBYTE(v26) = v43[2];
  LOBYTE(v20) = v43[1];
  LOBYTE(a1) = *v43;
  KeyPath = swift_getKeyPath();
  *v10 = v26;
  v10[1] = v20;
  v10[2] = a1;
  v10[3] = v45;
  *(v10 + 1) = KeyPath;
  v10[16] = 0;
  v35 = v49;
  v36 = *(v49 + 36);
  *&v10[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v37 = &v10[*(v35 + 40)];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = v48;
  (*(v32 + 16))(v48, v31, v16);
  v55[0] = v38;
  v39 = v50;
  sub_18AEDBAAC(v10, v50);
  v55[1] = v39;
  v54[0] = v16;
  v54[1] = v35;
  v52 = v30;
  v53 = sub_18AEE3118();
  sub_18AEB70B8(v55, 2uLL, v54);
  sub_18AEE3170(v10);
  v33(v31, v16);
  sub_18AEE3170(v39);
  return (v33)(v38, v16);
}

uint64_t sub_18AEE4778@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v10 = *a3;
  *a8 = a1;
  a8[1] = a2 & 1;
  a8[2] = v10;
  a8[3] = a4;
  type metadata accessor for MacLabeledCheckboxAndRadioBelow(0, a6, a7, a4);
  return a5();
}

uint64_t sub_18AEE4858(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_18AEADA5C();
  return (v12)(v10, v4);
}

uint64_t sub_18AEE4AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v6 = sub_18AFCD134();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_18AFCC504();
  sub_18AFCD124();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AEE4D08@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v49 = type metadata accessor for MacCheckboxAndRadio(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v14 = sub_18AFCC044();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v16 = sub_18AFCC044();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v22 = a1[3];
  v44 = &v41 - v23;
  v45 = v22;
  type metadata accessor for MacLabeledCheckboxAndRadioTrailing(0, a2, a3, v24);
  v25 = sub_18AFCC8F4();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  sub_18AFCC954();
  sub_18AED2A4C(v13);
  v43 = a1;
  v26 = v42;
  sub_18AFCCBA4();

  v55[0] = sub_18AEE2B70(a1);
  v27 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v55[4] = a3;
  v55[5] = v27;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCB44();

  (*(v46 + 8))(v26, v14);
  v29 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v55[2] = WitnessTable;
  v55[3] = v29;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_18AEADA5C();
  v32 = v47;
  v33 = *(v47 + 8);
  v33(v20, v16);
  LOBYTE(v26) = v43[2];
  LOBYTE(v20) = v43[1];
  LOBYTE(a1) = *v43;
  KeyPath = swift_getKeyPath();
  *v10 = v26;
  v10[1] = v20;
  v10[2] = a1;
  v10[3] = v45;
  *(v10 + 1) = KeyPath;
  v10[16] = 0;
  v35 = v49;
  v36 = *(v49 + 36);
  *&v10[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v37 = &v10[*(v35 + 40)];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = v48;
  (*(v32 + 16))(v48, v31, v16);
  v55[0] = v38;
  v39 = v50;
  sub_18AEDBAAC(v10, v50);
  v55[1] = v39;
  v54[0] = v16;
  v54[1] = v35;
  v52 = v30;
  v53 = sub_18AEE3118();
  sub_18AEB70B8(v55, 2uLL, v54);
  sub_18AEE3170(v10);
  v33(v31, v16);
  sub_18AEE3170(v39);
  return (v33)(v38, v16);
}

uint64_t sub_18AEE52B8@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v10 = *a3;
  *a8 = a1;
  a8[1] = a2 & 1;
  a8[2] = v10;
  a8[3] = a4;
  type metadata accessor for MacLabeledCheckboxAndRadioTrailing(0, a6, a7, a4);
  return a5();
}

uint64_t sub_18AEE5398@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, void (*a8)(void)@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = *a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v14 = type metadata accessor for MacPopupButton(0, a11, a12, a4);
  a8();
  v15 = &a9[v14[16]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v14[17];
  *&a9[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v17 = v14[18];
  *&a9[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);

  return swift_storeEnumTagMultiPayload();
}

void sub_18AEE54C8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEE55EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCC5C4() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_18AFCBB54() - 8);
  v12 = *(v11 + 64);
  if ((v12 + 1) > 8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 8;
  }

  v14 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v15 = *(v9 + 80) & 0xF8 | 7;
    v16 = *(v11 + 80) & 0xF8 | 7;
    v17 = v13 + ((v10 + v16 + ((v15 + ((*(v6 + 64) + ((v14 + 7) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 1) & ~v16) + 1;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_13;
    }

    v20 = ((a2 - v8 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 >= 2)
    {
LABEL_13:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

LABEL_20:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 > 3)
        {
          LODWORD(v17) = 4;
        }

        if (v17 > 2)
        {
          if (v17 == 3)
          {
            LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v17) = *a1;
          }
        }

        else if (v17 == 1)
        {
          LODWORD(v17) = *a1;
        }

        else
        {
          LODWORD(v17) = *a1;
        }
      }

      v25 = v8 + (v17 | v21);
      return (v25 + 1);
    }
  }

LABEL_31:
  if (v7 <= 0xFE)
  {
    v22 = *(a1 + 1);
    if (v22 < 2)
    {
      return 0;
    }

    v25 = (v22 + 2147483646) & 0x7FFFFFFF;
    return (v25 + 1);
  }

  v24 = *(v6 + 48);

  return v24((a1 + v14 + 7) & ~v14, v7, v5);
}

void sub_18AEE58E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v27 = *(a4 + 16);
  v7 = *(v27 - 8);
  v28 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_18AFCC5C4() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  v13 = *(v12 + 64);
  if ((v13 + 1) > 8)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 8;
  }

  v15 = *(v7 + 80);
  v16 = *(v10 + 80) & 0xF8 | 7;
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = v14 + ((v11 + v17 + ((v16 + ((*(v7 + 64) + ((v15 + 7) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16) + 1) & ~v17) + 1;
  if (a3 <= v9)
  {
    v20 = 0;
    v19 = a1;
  }

  else
  {
    v19 = a1;
    if (v18 <= 3)
    {
      v23 = ((a3 - v9 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v23))
      {
        v20 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  if (v9 < a2)
  {
    v21 = ~v9 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << (8 * v18));
        bzero(v19, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v19 = v25;
            if (v20 > 1)
            {
LABEL_50:
              if (v20 == 2)
              {
                *&v19[v18] = v22;
              }

              else
              {
                *&v19[v18] = v22;
              }

              return;
            }
          }

          else
          {
            *v19 = v21;
            if (v20 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v19 = v25;
        v19[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(v19, v18);
      *v19 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v20)
    {
      v19[v18] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&v19[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v19[v18] = 0;
  }

  else if (v20)
  {
    v19[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 > 0xFE)
  {
    v26 = *(v28 + 56);

    v26(&v19[v15 + 7] & ~v15, a2, v8, v27);
  }

  else
  {
    v19[1] = a2 + 1;
  }
}

uint64_t sub_18AEE5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v79);
  v78 = (v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = v57 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  v6 = *(a1 + 16);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993B8, &qword_18AFD49B8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  v57[1] = swift_getWitnessTable();
  v7 = sub_18AFCD134();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v57 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999040, &unk_18AFD49C0);
  v11 = sub_18AFCC044();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v57 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v14 = sub_18AFCC044();
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v57 - v15;
  v16 = sub_18AFCC044();
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v57 - v17;
  v61 = v18;
  v19 = sub_18AFCC044();
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v66 = v57 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48, &unk_18AFD49D0);
  v68 = v19;
  v21 = sub_18AFCC044();
  v72 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v69 = v57 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  v73 = v21;
  v75 = sub_18AFCC044();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v71 = v57 - v25;
  sub_18AFCC504();
  v77 = a1;
  v26 = *(a1 + 24);
  v76 = v6;
  v82 = v6;
  v83 = v26;
  v59 = v26;
  v27 = v81;
  v84 = v81;
  sub_18AFCD124();
  v97 = *v27;
  v98 = 1;
  WitnessTable = swift_getWitnessTable();
  sub_18AEB11A4();
  sub_18AFCCB44();
  (*(v8 + 8))(v10, v7);
  sub_18AFCC934();
  v29 = sub_18AFCC8F4();
  v30 = v62;
  (*(*(v29 - 8) + 56))(v62, 1, 1, v29);
  sub_18AFCC954();
  sub_18AE7BA80(v30, &qword_1EA998930, &qword_18AFD35E0);
  sub_18AFCC8E4();

  v31 = sub_18AE95F54(&qword_1EA999038, &qword_1EA999040, &unk_18AFD49C0, MEMORY[0x1E6980490]);
  v95 = WitnessTable;
  v96 = v31;
  v32 = swift_getWitnessTable();
  v33 = v58;
  sub_18AFCCBA4();

  (*(v60 + 8))(v13, v11);
  sub_18AFCDB44();
  v34 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v93 = v32;
  v94 = v34;
  v35 = swift_getWitnessTable();
  v36 = v64;
  sub_18AFCCBB4();
  (*(v63 + 8))(v33, v14);
  sub_18AFCC8A4();
  v37 = v27;
  v38 = v76;
  v39 = v59;
  sub_18AEE7400(v37);
  v91 = v35;
  v92 = MEMORY[0x1E697E040];
  v40 = v61;
  v41 = swift_getWitnessTable();
  v42 = v66;
  sub_18AFCCC24();
  v43 = (v65[1])(v36, v40);
  v65 = v57;
  MEMORY[0x1EEE9AC00](v43);
  v57[-4] = v38;
  v57[-3] = v39;
  v57[-2] = v81;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0);
  v89 = v41;
  v90 = MEMORY[0x1E697E5D8];
  v44 = v68;
  v45 = swift_getWitnessTable();
  sub_18AEE7560();
  v46 = v69;
  sub_18AFCCA64();
  (*(v67 + 8))(v42, v44);
  v47 = v78;
  sub_18AED2E98(v78);
  v48 = sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48, &unk_18AFD49D0, MEMORY[0x1E697F940]);
  v87 = v45;
  v88 = v48;
  v49 = v73;
  v50 = swift_getWitnessTable();
  sub_18AED8A7C();
  v51 = v70;
  sub_18AFCCAC4();
  sub_18AEE7F68(v47, type metadata accessor for ResolvedButtonBorderShape);
  (*(v72 + 8))(v46, v49);
  v52 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  v85 = v50;
  v86 = v52;
  v53 = v75;
  swift_getWitnessTable();
  v54 = v71;
  sub_18AEADA5C();
  v55 = *(v74 + 8);
  v55(v51, v53);
  sub_18AEADA5C();
  return (v55)(v54, v53);
}

uint64_t sub_18AEE68EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v87 = a4;
  v6 = sub_18AFCBA54();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993D0, &qword_18AFD49E0);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v65 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993D8, &qword_18AFD49E8);
  MEMORY[0x1EEE9AC00](v70);
  v88 = &v65 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993E0, &qword_18AFD49F0);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v65 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993E8, &qword_18AFD49F8);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v65 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993B8, &qword_18AFD49B8);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v65 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v17 = sub_18AFCBDC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v65 - v19;
  v66 = sub_18AFCC044();
  v89 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v80 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v65 - v26;
  v27 = a1[5];
  v28 = dbl_18AFD4C48[v27];
  v29 = dbl_18AFD4C88[v27];
  v30 = v91;
  v67 = type metadata accessor for MacPopupButton(0, a2, v91, v31);
  v32 = a1[4];
  v86 = a2;
  sub_18AFC385C(0, v32, a2, v30, v29, v28, v20);
  sub_18AFCC8B4();
  v114 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v115 = v91;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCC24();
  (*(v18 + 8))(v20, v17);
  v112 = WitnessTable;
  v113 = MEMORY[0x1E697E5D8];
  v34 = v66;
  v68 = swift_getWitnessTable();
  sub_18AEADA5C();
  v69 = *(v89 + 8);
  v69(v24, v34);
  if (a1[1] == 1)
  {
    if (qword_1EA997998 != -1)
    {
      swift_once();
    }

    v35 = qword_1EA9B0160;
  }

  else
  {
    if (qword_1EA997990 != -1)
    {
      swift_once();
    }

    v35 = qword_1EA9B0148;
  }

  v36 = v73;
  v37 = __swift_project_value_buffer(v73, v35);
  (*(v72 + 16))(v71, v37, v36);
  *&v108[0] = sub_18AFCD014();
  sub_18AFCC944();
  v38 = v75;
  sub_18AFCCA74();

  v39 = v88;
  v40 = (v88 + *(v70 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993F0, &qword_18AFD4A00) + 28);
  v42 = a1[5];
  v43 = sub_18AFCCFF4();
  (*(*(v43 - 8) + 104))(v40 + v41, **(&unk_1E71DA7C0 + v42), v43);
  *v40 = swift_getKeyPath();
  (*(v76 + 32))(v39, v38, v78);
  v44 = 1.0;
  if ((a1[2] & 1) == 0)
  {
    if (a1[3])
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }
  }

  v45 = v79;
  sub_18AE9A768(v88, v79, &qword_1EA9993D8, &qword_18AFD49E8);
  *(v45 + *(v74 + 36)) = v44;
  sub_18AEE730C();
  sub_18AEE730C();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v46 = v45;
  v47 = v81;
  sub_18AE9A768(v46, v81, &qword_1EA9993E0, &qword_18AFD49F0);
  v48 = (v47 + *(v77 + 36));
  v49 = v116[1];
  *v48 = v116[0];
  v48[1] = v49;
  v48[2] = v116[2];
  v50 = sub_18AFCDB44();
  v52 = v51;
  sub_18AEE732C(a1, &v99);
  v95 = v99;
  v96 = v100;
  v97 = v101;
  v98 = v102;
  v103 = v99;
  v104 = v100;
  v105 = v101;
  *&v106 = v102;
  *(&v106 + 1) = v50;
  v107 = v52;
  v53 = v47;
  v54 = v82;
  sub_18AE9A768(v53, v82, &qword_1EA9993E8, &qword_18AFD49F8);
  v55 = v84;
  v56 = v54 + *(v84 + 36);
  v57 = v106;
  *(v56 + 32) = v105;
  *(v56 + 48) = v57;
  *(v56 + 64) = v107;
  v58 = v104;
  *v56 = v103;
  *(v56 + 16) = v58;
  v108[1] = v96;
  v108[2] = v97;
  v108[0] = v95;
  v109 = v98;
  v110 = v50;
  v111 = v52;
  sub_18AEE7A38(&v103, v94);
  sub_18AE7BA80(v108, &qword_1EA9993F8, &qword_18AFD4A38);
  v59 = v83;
  sub_18AE9A768(v54, v83, &qword_1EA9993B8, &qword_18AFD49B8);
  v60 = v90;
  v61 = v80;
  (*(v89 + 16))(v80, v90, v34);
  v94[0] = v61;
  v62 = v85;
  sub_18AE9FF7C(v59, v85);
  v94[1] = v62;
  *&v95 = v34;
  *(&v95 + 1) = v55;
  v92 = v68;
  v93 = sub_18AEE7AA8();
  sub_18AEB70B8(v94, 2uLL, &v95);
  sub_18AE9FFEC(v59);
  v63 = v69;
  v69(v60, v34);
  sub_18AE9FFEC(v62);
  return v63(v61, v34);
}

uint64_t sub_18AEE732C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = 0x4000000000000000;
  if ((v3 - 5) >= 2)
  {
    v4 = 0x4008000000000000;
  }

  v5 = 0x408F380000000000;
  if ((v3 - 2) >= 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (a1[5] <= 4u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (a1[5] <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v10 = *a1;
  v13 = v8;
  result = swift_getKeyPath();
  v12 = 0.0;
  if (a1[2])
  {
    v12 = 1.0;
    if (a1[3])
    {
      v12 = 0.0;
    }
  }

  *a2 = v7;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 25) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_18AEE7418@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  type metadata accessor for MacPopupButton(0, a2, a3, v12);
  sub_18AED2E98(v11);
  *(v11 + v9[11]) = *a1;
  *(v11 + v9[12]) = 0;
  *(v11 + v9[13]) = 0;
  v13 = v11 + v9[14];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  if (a1[3])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  sub_18AEE79C8(v11, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0);
  *(a4 + *(result + 36)) = v14;
  return result;
}

unint64_t sub_18AEE7560()
{
  result = qword_1EA9993C0;
  if (!qword_1EA9993C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C40, &unk_18AFD35C0);
    sub_18AE95F54(&qword_1EA9993C8, &qword_1EA998C30, &qword_18AFD3550, &unk_18AFDA2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9993C0);
  }

  return result;
}

double sub_18AEE7618@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  result = *(v2 + 16) + a2;
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = result;
  return result;
}

void *sub_18AEE7638@<X0>(uint64_t a1@<X8>)
{
  v7 = sub_18AFCC174();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[2];
  if (v5[1])
  {
    result = sub_18AFCD114();
    v12 = v21;
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = *(sub_18AFCC184() + 20);
    v17 = *MEMORY[0x1E697F468];
    v18 = sub_18AFCC534();
    (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
    *v9 = v15;
    *(v9 + 1) = v15;
    *&v9[*(v7 + 20)] = v10;
    sub_18AFCC164();
    v19 = v22;
    v20 = v21;
    v14 = v23;
    result = sub_18AEE7F68(v9, MEMORY[0x1E697EAB8]);
    v13 = v19;
    v12 = v20;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t (*sub_18AEE77E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

void sub_18AEE786C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_18AEE78B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEE7EBC();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AEE7918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEE7EBC();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AEE797C(uint64_t a1)
{
  v2 = sub_18AEE7EBC();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_18AEE79C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEE7A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993F8, &qword_18AFD4A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEE7AA8()
{
  result = qword_1EA999400;
  if (!qword_1EA999400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993B8, &qword_18AFD49B8);
    sub_18AEE7B60();
    sub_18AE95F54(&qword_1EA999428, &qword_1EA9993F8, &qword_18AFD4A38, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999400);
  }

  return result;
}

unint64_t sub_18AEE7B60()
{
  result = qword_1EA999408;
  if (!qword_1EA999408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993E8, &qword_18AFD49F8);
    sub_18AEE7BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999408);
  }

  return result;
}

unint64_t sub_18AEE7BEC()
{
  result = qword_1EA999410;
  if (!qword_1EA999410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993E0, &qword_18AFD49F0);
    sub_18AEE7C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999410);
  }

  return result;
}

unint64_t sub_18AEE7C78()
{
  result = qword_1EA999418;
  if (!qword_1EA999418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993D8, &qword_18AFD49E8);
    swift_getOpaqueTypeConformance2();
    sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0, &qword_18AFD4A00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999418);
  }

  return result;
}